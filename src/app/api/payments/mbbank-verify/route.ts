/**
 * LIKEFOOD - MBBank Payment Verification via thueapi.pro
 * GET /api/payments/mbbank-verify?orderId=X
 * Polls thueapi.pro to check if payment has been received for an order
 */

import { NextRequest, NextResponse } from "next/server";
import prisma from "@/lib/prisma";
import { logger } from "@/lib/logger";

const THUEAPI_BASE = "https://thueapi.pro";

interface ThueApiTransaction {
    transactionID: number;
    amount: number;        // VND
    description: string;
    transactionDate: string;
    type: "IN" | "OUT";
}

interface ThueApiResponse {
    status: "success" | "error";
    message: string;
    transactions?: ThueApiTransaction[];
}

export async function GET(req: NextRequest) {
    try {
        const { searchParams } = new URL(req.url);
        const orderId = searchParams.get("orderId");

        if (!orderId) {
            return NextResponse.json({ error: "orderId is required" }, { status: 400 });
        }

        // Get order from DB
        const order = await prisma.order.findUnique({
            where: { id: Number(orderId) },
        });

        if (!order) {
            return NextResponse.json({ error: "Order not found" }, { status: 404 });
        }

        // Already paid — return success immediately
        if (order.paymentStatus === "PAID") {
            return NextResponse.json({
                status: "PAID",
                orderId: order.id,
                message: "Đơn hàng đã được thanh toán",
            });
        }

        // Get thueapi token and exchange rate from settings
        const settings = await prisma.systemsetting.findMany({
            where: {
                key: { in: ["thueapi_token", "usd_to_vnd_rate"] },
            },
        });
        const settingsMap = Object.fromEntries(settings.map((s) => [s.key, s.value]));

        const token = settingsMap.thueapi_token || process.env.THUEAPI_TOKEN || "";
        const rate = Number(settingsMap.usd_to_vnd_rate || process.env.USD_TO_VND_RATE || "25000");

        if (!token) {
            logger.warn("thueapi_token not configured", { context: "mbbank-verify" });
            return NextResponse.json({
                status: "NOT_CONFIGURED",
                message: "Chưa cấu hình API token thueapi.pro",
            });
        }

        // Call thueapi.pro API
        const apiUrl = `${THUEAPI_BASE}/historyapimbbankv2/${token}`;
        let apiResponse: ThueApiResponse;

        try {
            const res = await fetch(apiUrl, {
                headers: { "Accept": "application/json" },
                next: { revalidate: 0 }, // Never cache
            });

            if (!res.ok) {
                throw new Error(`thueapi.pro returned ${res.status}`);
            }

            apiResponse = await res.json();
        } catch (fetchError) {
            logger.error("Failed to call thueapi.pro", fetchError as Error, { context: "mbbank-verify" });
            return NextResponse.json({
                status: "API_ERROR",
                message: "Không thể kết nối tới thueapi.pro. Vui lòng thử lại.",
            }, { status: 503 });
        }

        if (apiResponse.status !== "success" || !apiResponse.transactions) {
            return NextResponse.json({
                status: "PENDING",
                message: "Chưa nhận được thanh toán",
            });
        }

        // Expected content to search in descriptions
        const expectedContent = `LIKEFOOD${orderId}`;
        const expectedContentAlt = `LIKEFOOD ${orderId}`;
        const expectedContentShort = orderId.toString();

        // Expected amount in VND (order total is in USD)
        const expectedVnd = Math.round(Number(order.total) * rate);

        // Find matching transaction (within 20% tolerance on amount)
        const matchedTx = apiResponse.transactions.find((tx) => {
            if (tx.type !== "IN") return false;

            const descLower = tx.description.toLowerCase();
            const hasOrderRef = (
                descLower.includes(expectedContent.toLowerCase()) ||
                descLower.includes(expectedContentAlt.toLowerCase()) ||
                descLower.includes(`dh${orderId}`) ||
                descLower.includes(expectedContentShort)
            );

            // Amount check: within 5% tolerance
            const amountDiff = Math.abs(tx.amount - expectedVnd) / expectedVnd;
            const amountMatch = amountDiff <= 0.05;

            return hasOrderRef || amountMatch;
        });

        if (matchedTx) {
            // Mark order as PAID
            await prisma.order.update({
                where: { id: Number(orderId) },
                data: {
                    paymentStatus: "PAID",
                    status: "CONFIRMED",
                    paymentIntentId: `MBBANK_${matchedTx.transactionID}`,
                },
            });

            logger.info("MBBank payment verified", {
                orderId,
                transactionId: matchedTx.transactionID,
                amount: matchedTx.amount,
                context: "mbbank-verify",
            });

            return NextResponse.json({
                status: "PAID",
                orderId: Number(orderId),
                transactionId: matchedTx.transactionID,
                amount: matchedTx.amount,
                message: "Thanh toán thành công!",
            });
        }

        return NextResponse.json({
            status: "PENDING",
            message: "Chưa nhận được thanh toán. Vui lòng chuyển khoản và chờ xác nhận.",
            expectedAmount: expectedVnd,
            expectedContent: expectedContentAlt,
        });

    } catch (error) {
        logger.error("MBBank verify error", error as Error, { context: "mbbank-verify" });
        return NextResponse.json({ error: "Internal server error" }, { status: 500 });
    }
}

// POST: Webhook from thueapi.pro (push notification when payment arrives)
export async function POST(req: NextRequest) {
    try {
        const body = await req.json();

        logger.info("thueapi.pro webhook received", { body, context: "mbbank-webhook" });

        const { description, amount, type, transactionID } = body;
        if (type !== "IN" || !description) {
            return NextResponse.json({ received: true });
        }

        // Extract order ID from description
        const orderIdMatch = description.match(/LIKEFOOD\s*(\d+)/i) ||
                            description.match(/DH(\d+)/i) ||
                            description.match(/(\d{4,})/);

        if (!orderIdMatch) {
            return NextResponse.json({ received: true, message: "No order ID found in description" });
        }

        const orderId = Number(orderIdMatch[1]);
        const order = await prisma.order.findUnique({ where: { id: orderId } });

        if (!order || order.paymentStatus === "PAID") {
            return NextResponse.json({ received: true, message: "Order already processed or not found" });
        }

        await prisma.order.update({
            where: { id: orderId },
            data: {
                paymentStatus: "PAID",
                status: "CONFIRMED",
                paymentIntentId: `MBBANK_${transactionID || Date.now()}`,
            },
        });

        logger.info("MBBank payment confirmed via webhook", {
            orderId,
            amount,
            context: "mbbank-webhook",
        });

        return NextResponse.json({ received: true, message: "Payment confirmed" });
    } catch (error) {
        logger.error("MBBank webhook error", error as Error, { context: "mbbank-webhook" });
        return NextResponse.json({ error: "Webhook processing failed" }, { status: 500 });
    }
}
