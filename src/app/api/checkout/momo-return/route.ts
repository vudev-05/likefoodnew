import { NextRequest, NextResponse } from "next/server";
import { verifyMoMoSignature } from "@/lib/payments/momo";
import prisma from "@/lib/prisma";

export async function GET(req: NextRequest) {
    const searchParams = req.nextUrl.searchParams;
    const query: Record<string, string> = {};
    searchParams.forEach((val, key) => {
        query[key] = val;
    });

    const isSecure = verifyMoMoSignature(query);
    const orderIdWithDate = query["orderId"]; // Format: orderId_timestamp
    const orderId = orderIdWithDate ? orderIdWithDate.split("_")[0] : null;
    const resultCode = query["resultCode"];
    const appUrl = process.env.NEXT_PUBLIC_APP_URL || "http://localhost:3000";

    if (!orderId) {
        return NextResponse.redirect(`${appUrl}/checkout?cancelled=true`);
    }

    if (isSecure && resultCode === "0") {
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
                        paymentIntentId: query["transId"] ? String(query["transId"]) : null,
                    },
                });

                // Clear cart
                await tx.cartitem.deleteMany({
                    where: { cart: { userId: order.userId } }
                });
            }
        });

        return NextResponse.redirect(`${appUrl}/order-success?orderId=${orderId}&method=MOMO`);
    } else {
        // Fail
        return NextResponse.redirect(`${appUrl}/checkout?cancelled=true`);
    }
}
