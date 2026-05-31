"use client";

/**
 * LIKEFOOD - Trang Thanh Toán MBBank
 * Hiển thị QR chuyển khoản và tự động kiểm tra thanh toán qua thueapi.pro
 */

import { useEffect, useState, useCallback, Suspense } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import Image from "next/image";

type VerifyStatus = "PENDING" | "PAID" | "CHECKING" | "API_ERROR" | "NOT_CONFIGURED";

interface VerifyResult {
    status: VerifyStatus;
    message?: string;
    expectedAmount?: number;
    expectedContent?: string;
    orderId?: number;
}

interface MBBankInfo {
    accountNumber: string;
    accountName: string;
    exchangeRate: number;
}

function MBBankPaymentContent() {
    const router = useRouter();
    const searchParams = useSearchParams();
    const orderId = searchParams.get("orderId");

    const [verifyStatus, setVerifyStatus] = useState<VerifyStatus>("PENDING");
    const [verifyData, setVerifyData] = useState<VerifyResult | null>(null);
    const [countdown, setCountdown] = useState(15 * 60); // 15 minutes
    const [pollCount, setPollCount] = useState(0);
    const [orderTotal, setOrderTotal] = useState<number | null>(null);
    const [mbInfo, setMbInfo] = useState<MBBankInfo>({
        accountNumber: "",
        accountName: "LIKEFOOD",
        exchangeRate: 25000,
    });
    const [isManualChecking, setIsManualChecking] = useState(false);

    // Format VND
    const formatVnd = (usd: number, rate: number) =>
        new Intl.NumberFormat("vi-VN", { style: "currency", currency: "VND" }).format(
            Math.round(usd * rate)
        );

    // Fetch order info + bank settings
    useEffect(() => {
        if (!orderId) return;

        const loadInfo = async () => {
            try {
                // Get order total
                const orderRes = await fetch(`/api/orders/${orderId}/public`);
                if (orderRes.ok) {
                    const orderData = await orderRes.json();
                    setOrderTotal(orderData.total || 0);
                }
            } catch (_) {}

            try {
                // Get MBBank settings
                const settingsRes = await fetch("/api/public/mbbank-settings");
                if (settingsRes.ok) {
                    const data = await settingsRes.json();
                    setMbInfo({
                        accountNumber: data.mbbank_account_number || "",
                        accountName: data.mbbank_account_name || "LIKEFOOD",
                        exchangeRate: Number(data.usd_to_vnd_rate || 25000),
                    });
                }
            } catch (_) {}
        };

        loadInfo();
    }, [orderId]);

    // Verify payment
    const checkPayment = useCallback(async (manual = false) => {
        if (!orderId || verifyStatus === "PAID") return;

        if (manual) setIsManualChecking(true);
        else setVerifyStatus("CHECKING");

        try {
            const res = await fetch(`/api/payments/mbbank-verify?orderId=${orderId}`);
            const data: VerifyResult = await res.json();

            setVerifyData(data);

            if (data.status === "PAID") {
                setVerifyStatus("PAID");
                // Redirect to success after 2s
                setTimeout(() => {
                    router.push(`/order-success?orderId=${orderId}&method=MBBANK`);
                }, 2000);
            } else {
                setVerifyStatus(data.status || "PENDING");
                setPollCount(c => c + 1);
            }
        } catch {
            setVerifyStatus("PENDING");
        } finally {
            if (manual) setIsManualChecking(false);
        }
    }, [orderId, verifyStatus, router]);

    // Auto-poll every 5 seconds
    useEffect(() => {
        if (!orderId || verifyStatus === "PAID") return;

        const interval = setInterval(() => {
            if (countdown <= 0) {
                clearInterval(interval);
                return;
            }
            checkPayment();
        }, 5000);

        return () => clearInterval(interval);
    }, [orderId, verifyStatus, countdown, checkPayment]);

    // Countdown timer
    useEffect(() => {
        if (verifyStatus === "PAID") return;
        const timer = setInterval(() => {
            setCountdown(c => {
                if (c <= 0) {
                    clearInterval(timer);
                    return 0;
                }
                return c - 1;
            });
        }, 1000);
        return () => clearInterval(timer);
    }, [verifyStatus]);

    const formatTime = (s: number) => {
        const m = Math.floor(s / 60);
        const sec = s % 60;
        return `${m.toString().padStart(2, "0")}:${sec.toString().padStart(2, "0")}`;
    };

    const vndAmount = orderTotal ? Math.round(orderTotal * mbInfo.exchangeRate) : 0;
    const transferContent = `LIKEFOOD ${orderId}`;
    const qrUrl = mbInfo.accountNumber
        ? `https://img.vietqr.io/image/MB-${mbInfo.accountNumber}-compact2.jpg?amount=${vndAmount}&addInfo=${encodeURIComponent(transferContent)}&accountName=${encodeURIComponent(mbInfo.accountName)}`
        : null;

    if (!orderId) {
        return (
            <div className="min-h-screen flex items-center justify-center">
                <p className="text-slate-500">Không tìm thấy đơn hàng</p>
            </div>
        );
    }

    return (
        <div className="min-h-screen bg-gradient-to-br from-slate-50 via-white to-purple-50/30 flex flex-col items-center justify-center px-4 py-12">

            <AnimatePresence mode="wait">
                {verifyStatus === "PAID" ? (
                    <motion.div
                        key="paid"
                        initial={{ opacity: 0, scale: 0.8 }}
                        animate={{ opacity: 1, scale: 1 }}
                        className="text-center"
                    >
                        <div className="w-24 h-24 bg-emerald-100 rounded-full flex items-center justify-center mx-auto mb-6">
                            <svg className="w-12 h-12 text-emerald-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M5 13l4 4L19 7" />
                            </svg>
                        </div>
                        <h1 className="text-3xl font-black text-slate-900 mb-3">Thanh toán thành công!</h1>
                        <p className="text-slate-500">Đang chuyển hướng tới trang xác nhận đơn hàng...</p>
                    </motion.div>
                ) : (
                    <motion.div
                        key="payment"
                        initial={{ opacity: 0, y: 20 }}
                        animate={{ opacity: 1, y: 0 }}
                        className="w-full max-w-md"
                    >
                        {/* Header */}
                        <div className="text-center mb-8">
                            <div className="inline-flex items-center gap-2 bg-[#7B3F7C]/10 text-[#7B3F7C] px-4 py-2 rounded-full text-sm font-bold mb-4">
                                <div className={`w-2 h-2 rounded-full ${countdown > 0 ? "bg-[#7B3F7C] animate-pulse" : "bg-red-500"}`} />
                                {countdown > 0 ? `Hết hạn sau ${formatTime(countdown)}` : "Hết thời gian thanh toán"}
                            </div>
                            <h1 className="text-2xl sm:text-3xl font-black text-slate-900 mb-2">
                                Thanh Toán MBBank
                            </h1>
                            <p className="text-slate-500 text-sm">
                                Quét mã QR hoặc chuyển khoản theo thông tin dưới đây
                            </p>
                        </div>

                        {/* Card */}
                        <div className="bg-white rounded-[28px] border border-slate-100 shadow-[0_20px_60px_rgba(0,0,0,0.06)] overflow-hidden">
                            {/* MBBank logo strip */}
                            <div className="bg-gradient-to-r from-[#7B3F7C] to-[#9B59B6] px-6 py-4 flex items-center justify-between">
                                <div className="flex items-center gap-3">
                                    <div className="w-10 h-10 bg-white rounded-xl flex items-center justify-center font-black text-[#7B3F7C] text-sm">MB</div>
                                    <div>
                                        <p className="text-white font-black text-sm">MBBank</p>
                                        <p className="text-white/70 text-[10px] font-medium">Quân Đội</p>
                                    </div>
                                </div>
                                <div className="text-right">
                                    <p className="text-white/70 text-[10px] font-medium uppercase tracking-wider">Mã đơn</p>
                                    <p className="text-white font-black">#{orderId}</p>
                                </div>
                            </div>

                            <div className="p-6 space-y-5">
                                {/* QR Code */}
                                <div className="flex flex-col items-center">
                                    {qrUrl ? (
                                        <div className="relative">
                                            <div className="w-56 h-56 bg-slate-50 rounded-2xl border-2 border-slate-100 overflow-hidden flex items-center justify-center">
                                                <Image
                                                    src={qrUrl}
                                                    alt="MBBank QR Code"
                                                    width={224}
                                                    height={224}
                                                    className="object-contain"
                                                    unoptimized
                                                />
                                            </div>
                                            {/* Scanning animation */}
                                            {verifyStatus === "CHECKING" && (
                                                <div className="absolute inset-0 flex items-center justify-center bg-white/70 rounded-2xl backdrop-blur-sm">
                                                    <div className="flex flex-col items-center gap-2">
                                                        <div className="w-8 h-8 border-3 border-[#7B3F7C] border-t-transparent rounded-full animate-spin" />
                                                        <span className="text-xs font-bold text-[#7B3F7C]">Đang kiểm tra...</span>
                                                    </div>
                                                </div>
                                            )}
                                        </div>
                                    ) : (
                                        <div className="w-56 h-56 bg-slate-50 rounded-2xl border-2 border-dashed border-slate-200 flex flex-col items-center justify-center gap-3">
                                            <div className="w-12 h-12 bg-slate-100 rounded-xl flex items-center justify-center">
                                                <svg className="w-6 h-6 text-slate-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M12 4v16m8-8H4" />
                                                </svg>
                                            </div>
                                            <p className="text-xs text-slate-400 text-center font-medium px-4">
                                                Chưa cấu hình số tài khoản MBBank.<br />
                                                Vào Admin → Cài đặt → MBBank
                                            </p>
                                        </div>
                                    )}
                                    <p className="text-[10px] text-slate-400 font-medium mt-3 text-center">
                                        Dùng app MBBank hoặc bất kỳ app ngân hàng để quét QR
                                    </p>
                                </div>

                                {/* Transfer Info */}
                                <div className="space-y-3">
                                    {/* Account Number */}
                                    <div className="flex items-center justify-between p-3.5 bg-slate-50 rounded-2xl">
                                        <div>
                                            <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest">Số tài khoản</p>
                                            <p className="font-black text-slate-900 text-base mt-0.5">
                                                {mbInfo.accountNumber || "Chưa cấu hình"}
                                            </p>
                                        </div>
                                        <button
                                            onClick={() => navigator.clipboard?.writeText(mbInfo.accountNumber)}
                                            className="p-2 hover:bg-slate-200 rounded-xl transition-colors"
                                            title="Sao chép"
                                        >
                                            <svg className="w-4 h-4 text-slate-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
                                            </svg>
                                        </button>
                                    </div>

                                    {/* Account Name */}
                                    <div className="p-3.5 bg-slate-50 rounded-2xl">
                                        <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest">Tên tài khoản</p>
                                        <p className="font-black text-slate-900 mt-0.5">{mbInfo.accountName}</p>
                                    </div>

                                    {/* Amount */}
                                    <div className="flex items-center justify-between p-3.5 bg-[#7B3F7C]/5 rounded-2xl border border-[#7B3F7C]/10">
                                        <div>
                                            <p className="text-[10px] font-black text-[#7B3F7C]/70 uppercase tracking-widest">Số tiền chuyển khoản</p>
                                            <p className="font-black text-[#7B3F7C] text-xl mt-0.5">
                                                {vndAmount > 0
                                                    ? new Intl.NumberFormat("vi-VN").format(vndAmount) + " VNĐ"
                                                    : "Đang tải..."}
                                            </p>
                                            {orderTotal && (
                                                <p className="text-[10px] text-slate-400 font-medium mt-0.5">
                                                    ≈ ${orderTotal.toFixed(2)} USD
                                                </p>
                                            )}
                                        </div>
                                        <button
                                            onClick={() => navigator.clipboard?.writeText(String(vndAmount))}
                                            className="p-2 hover:bg-[#7B3F7C]/10 rounded-xl transition-colors"
                                        >
                                            <svg className="w-4 h-4 text-[#7B3F7C]" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
                                            </svg>
                                        </button>
                                    </div>

                                    {/* Transfer Content */}
                                    <div className="flex items-center justify-between p-3.5 bg-amber-50 rounded-2xl border border-amber-100">
                                        <div>
                                            <p className="text-[10px] font-black text-amber-600 uppercase tracking-widest">⚠️ Nội dung chuyển khoản</p>
                                            <p className="font-black text-slate-900 text-base mt-0.5 font-mono">{transferContent}</p>
                                            <p className="text-[10px] text-amber-600 font-medium mt-0.5">Ghi chính xác để đơn được xác nhận tự động</p>
                                        </div>
                                        <button
                                            onClick={() => navigator.clipboard?.writeText(transferContent)}
                                            className="p-2 hover:bg-amber-100 rounded-xl transition-colors"
                                        >
                                            <svg className="w-4 h-4 text-amber-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>

                                {/* Status message */}
                                {verifyData?.status === "NOT_CONFIGURED" && (
                                    <div className="p-4 bg-amber-50 rounded-2xl border border-amber-100">
                                        <p className="text-amber-700 text-xs font-medium">
                                            ⚠️ Chưa cấu hình thueapi.pro token. Vào Admin → Cài đặt để nhập token.
                                        </p>
                                    </div>
                                )}

                                {/* Status indicator */}
                                <div className="flex items-center gap-3 p-4 bg-slate-50 rounded-2xl">
                                    <div className="w-3 h-3 rounded-full bg-amber-400 animate-pulse" />
                                    <div>
                                        <p className="text-xs font-bold text-slate-700">
                                            Đang chờ thanh toán... (kiểm tra mỗi 5 giây)
                                        </p>
                                        <p className="text-[10px] text-slate-400 font-medium">
                                            Đã kiểm tra {pollCount} lần
                                        </p>
                                    </div>
                                </div>

                                {/* Manual check button */}
                                <button
                                    onClick={() => checkPayment(true)}
                                    disabled={isManualChecking}
                                    className="w-full py-4 bg-[#7B3F7C] hover:bg-[#6A3369] text-white font-black text-sm rounded-2xl transition-all active:scale-[0.98] disabled:opacity-60 flex items-center justify-center gap-2"
                                >
                                    {isManualChecking ? (
                                        <>
                                            <div className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                                            Đang kiểm tra...
                                        </>
                                    ) : (
                                        <>
                                            <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
                                            </svg>
                                            Tôi đã chuyển khoản — Kiểm tra ngay
                                        </>
                                    )}
                                </button>

                                {/* Back */}
                                <button
                                    onClick={() => router.push("/checkout")}
                                    className="w-full py-3 text-slate-400 text-xs font-bold hover:text-slate-600 transition-colors"
                                >
                                    ← Quay lại và chọn phương thức thanh toán khác
                                </button>
                            </div>
                        </div>

                        {/* Security note */}
                        <p className="text-center text-[10px] text-slate-400 font-medium mt-6">
                            🔒 Thông tin chuyển khoản được mã hóa và bảo mật tuyệt đối
                        </p>
                    </motion.div>
                )}
            </AnimatePresence>
        </div>
    );
}

export default function MBBankPaymentPage() {
    return (
        <Suspense fallback={
            <div className="min-h-screen flex items-center justify-center">
                <div className="w-8 h-8 border-2 border-[#7B3F7C] border-t-transparent rounded-full animate-spin" />
            </div>
        }>
            <MBBankPaymentContent />
        </Suspense>
    );
}
