import crypto from "crypto";
import { format } from "date-fns";

/**
 * VNPay Sandbox Constants
 */
const VNPAY_URL = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";

function sortObject(obj: Record<string, string | number>): Record<string, string> {
    const sorted: Record<string, string> = {};
    const str: string[] = [];
    let key: string;
    for (key in obj) {
        if (Object.prototype.hasOwnProperty.call(obj, key)) {
            str.push(encodeURIComponent(key));
        }
    }
    str.sort();
    for (let i = 0; i < str.length; i++) {
        sorted[str[i]] = encodeURIComponent(String(obj[str[i]]).replace(/%20/g, "+"));
    }
    return sorted;
}

export function createVNPayUrl(
    orderId: string,
    amount: number, // in USD
    orderInfo: string,
    returnUrl: string,
    ipAddr: string
) {
    const tmnCode = process.env.VNPAY_TMN_CODE || "LIKEF00D";
    const secretKey = process.env.VNPAY_HASH_SECRET || "PLACEHOLDER_SECRET_KEY";

    // VNPay amounts are in VND. We do a rough conversion (e.g. 1 USD = 24000 VND).
    // The amount needs to be multiplied by 100 for VNPay's format.
    const amountVND = Math.round(amount * 24000); 
    const vnp_Amount = amountVND * 100;

    const date = new Date();
    const createDate = format(date, "yyyyMMddHHmmss");
    // Expire in 15 minutes
    const expireDate = format(new Date(date.getTime() + 15 * 60000), "yyyyMMddHHmmss");

    let vnp_Params: Record<string, any> = {
        vnp_Version: "2.1.0",
        vnp_Command: "pay",
        vnp_TmnCode: tmnCode,
        vnp_Locale: "vn",
        vnp_CurrCode: "VND",
        vnp_TxnRef: orderId + "_" + createDate,
        vnp_OrderInfo: orderInfo,
        vnp_OrderType: "other",
        vnp_Amount: String(vnp_Amount),
        vnp_ReturnUrl: returnUrl,
        vnp_IpAddr: ipAddr,
        vnp_CreateDate: createDate,
        vnp_ExpireDate: expireDate,
    };

    vnp_Params = sortObject(vnp_Params);

    const signData = new URLSearchParams(vnp_Params).toString();
    const hmac = crypto.createHmac("sha512", secretKey);
    const signed = hmac.update(Buffer.from(signData, "utf-8")).digest("hex"); 
    vnp_Params["vnp_SecureHash"] = signed;

    return VNPAY_URL + "?" + new URLSearchParams(vnp_Params).toString();
}

export function verifyVNPayReturn(query: Record<string, string>) {
    let vnp_Params = { ...query };
    const secureHash = vnp_Params["vnp_SecureHash"];
    
    delete vnp_Params["vnp_SecureHash"];
    delete vnp_Params["vnp_SecureHashType"];

    vnp_Params = sortObject(vnp_Params);
    
    const secretKey = process.env.VNPAY_HASH_SECRET || "PLACEHOLDER_SECRET_KEY";
    const signData = new URLSearchParams(vnp_Params).toString();
    const hmac = crypto.createHmac("sha512", secretKey);
    const signed = hmac.update(Buffer.from(signData, "utf-8")).digest("hex"); 

    return secureHash === signed;
}
