import crypto from "crypto";

const MOMO_URL = "https://test-payment.momo.vn/v2/gateway/api/create";

export async function createMoMoRequest(
    orderId: string,
    amount: number, // in USD
    orderInfo: string,
    returnUrl: string,
    ipnUrl: string
) {
    const accessKey = process.env.MOMO_ACCESS_KEY || "PLACEHOLDER_ACCESS_KEY";
    const secretKey = process.env.MOMO_SECRET_KEY || "PLACEHOLDER_SECRET_KEY";
    const partnerCode = process.env.MOMO_PARTNER_CODE || "MOMOPLACEHOLDER";

    // MoMo amount is in VND
    const amountVND = Math.round(amount * 24000);
    const requestId = orderId + "_" + Date.now();
    const requestType = "captureWallet";
    const extraData = "";

    const rawSignature = `accessKey=${accessKey}&amount=${amountVND}&extraData=${extraData}&ipnUrl=${ipnUrl}&orderId=${requestId}&orderInfo=${orderInfo}&partnerCode=${partnerCode}&redirectUrl=${returnUrl}&requestId=${requestId}&requestType=${requestType}`;

    const signature = crypto
        .createHmac("sha256", secretKey)
        .update(rawSignature)
        .digest("hex");

    const requestBody = {
        partnerCode,
        partnerName: "LIKEFOOD",
        storeId: "LIKEFOOD_01",
        requestId,
        amount: amountVND,
        orderId: requestId,
        orderInfo,
        redirectUrl: returnUrl,
        ipnUrl,
        lang: "vi",
        requestType,
        autoCapture: true,
        extraData,
        signature,
    };

    try {
        const response = await fetch(MOMO_URL, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(requestBody),
        });
        const data = await response.json();
        return data.payUrl;
    } catch (error) {
        console.error("MoMo payment error", error);
        return null;
    }
}

export function verifyMoMoSignature(query: Record<string, string>) {
    const {
        partnerCode,
        orderId,
        requestId,
        amount,
        orderInfo,
        orderType,
        transId,
        resultCode,
        message,
        payType,
        responseTime,
        extraData,
        signature
    } = query;

    const accessKey = process.env.MOMO_ACCESS_KEY || "PLACEHOLDER_ACCESS_KEY";
    const secretKey = process.env.MOMO_SECRET_KEY || "PLACEHOLDER_SECRET_KEY";

    const rawSignature = `accessKey=${accessKey}&amount=${amount}&extraData=${extraData}&message=${message}&orderId=${orderId}&orderInfo=${orderInfo}&orderType=${orderType}&partnerCode=${partnerCode}&payType=${payType}&requestId=${requestId}&responseTime=${responseTime}&resultCode=${resultCode}&transId=${transId}`;

    const expectedSignature = crypto
        .createHmac("sha256", secretKey)
        .update(rawSignature)
        .digest("hex");

    return signature === expectedSignature;
}
