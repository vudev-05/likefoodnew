import { NextRequest, NextResponse } from "next/server";
import { verifyVNPayReturn } from "@/lib/payments/vnpay";
import prisma from "@/lib/prisma";

export async function GET(req: NextRequest) {
    const searchParams = req.nextUrl.searchParams;
    const query: Record<string, string> = {};
    searchParams.forEach((val, key) => {
        query[key] = val;
    });

    const isSecure = verifyVNPayReturn(query);
    const orderIdWithDate = query["vnp_TxnRef"]; // Format: orderId_date
    const orderId = orderIdWithDate ? orderIdWithDate.split("_")[0] : null;
    const responseCode = query["vnp_ResponseCode"];
    const appUrl = process.env.NEXT_PUBLIC_APP_URL || "http://localhost:3000";

    if (!orderId) {
        return NextResponse.redirect(`${appUrl}/checkout?cancelled=true`);
    }

    if (isSecure && responseCode === "00") {
        // Success
        await prisma.$transaction(async (tx) => {
            const order = await tx.order.findUnique({
                where: { id: Number(orderId) },
            });
            
            if (order && order.paymentStatus !== "PAID") {
                await tx.order.update({
                    where: { id: Number(orderId) },
                    data: {
                        paymentStatus: "PAID",
                        status: "CONFIRMED",
                        paymentIntentId: query["vnp_TransactionNo"] ? String(query["vnp_TransactionNo"]) : null,
                    },
                });

                // Clear cart
                await tx.cartitem.deleteMany({
                    where: { cart: { userId: order.userId } }
                });
            }
        });

        return NextResponse.redirect(`${appUrl}/order-success?orderId=${orderId}&method=VNPAY`);
    } else {
        // Fail
        return NextResponse.redirect(`${appUrl}/checkout?cancelled=true`);
    }
}
