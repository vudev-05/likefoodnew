"use client";

/**
 * LIKEFOOD - Vietnamese Specialty Marketplace
 * Checkout Page – Stripe-only, single-step checkout
 * Flow: Fill shipping info → Click "Thanh toán ngay" → Redirect to Stripe
 */

import { useState, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";
import { ShoppingBag, Lock, Shield, CreditCard, ChevronLeft } from "lucide-react";
import Image from "next/image";
import Link from "next/link";
import { useLanguage } from "@/lib/i18n/context";
import { useCheckout } from "@/hooks/useCheckout";
import OrderSuccess from "@/components/checkout/OrderSuccess";
import VoucherPickerModal from "@/components/checkout/VoucherPickerModal";
import OrderSummarySaaS from "@/components/checkout/OrderSummarySaaS";
import CheckoutFormSaaS from "@/components/checkout/CheckoutFormSaaS";
import type { CheckoutVoucher } from "@/hooks/useCheckout";
import { useSearchParams } from "next/navigation";
import { toast } from "sonner";

import LoadingState from "@/components/ui/loading-state";
import { Suspense } from "react";

function CheckoutContent() {
    const { language, t } = useLanguage();
    const checkout = useCheckout(language);
    const searchParams = useSearchParams();
    const [shownCancelMsg, setShownCancelMsg] = useState(false);
    const vi = language === "vi";

    // Show cancel message if user returned from Stripe without paying
    useEffect(() => {
        if (searchParams.get("cancelled") === "true" && !shownCancelMsg) {
            toast.info(
                vi
                    ? "Bạn đã hủy thanh toán. Giỏ hàng vẫn được giữ nguyên."
                    : "Payment cancelled. Your cart is still intact."
            );
            setShownCancelMsg(true);
        }
    }, [searchParams, vi, shownCancelMsg]);

    // ── Empty cart guard ──
    if (checkout.isCartEmpty) {
        return (
            <div className="min-h-screen flex items-center justify-center bg-[#F9FAFB] px-4">
                <motion.div 
                    initial={{ opacity: 0, scale: 0.95 }}
                    animate={{ opacity: 1, scale: 1 }}
                    className="text-center p-10 bg-white rounded-[32px] border border-slate-100 shadow-[0_32px_64px_-16px_rgba(0,0,0,0.08)] max-w-sm w-full relative overflow-hidden"
                >
                    <div className="absolute top-0 right-0 w-24 h-24 bg-primary/5 rounded-full -translate-y-12 translate-x-12 blur-2xl" />
                    <div className="w-20 h-20 bg-gradient-to-br from-slate-50 to-slate-100 rounded-[24px] flex items-center justify-center mx-auto mb-8 shadow-inner">
                        <ShoppingBag className="w-9 h-9 text-slate-400" />
                    </div>
                    <h2 className="text-2xl font-extrabold text-slate-900 mb-3 tracking-tight">
                        {vi ? "Giỏ hàng trống" : "Your cart is empty"}
                    </h2>
                    <p className="text-sm text-slate-500 mb-10 leading-relaxed px-4">
                        {vi
                            ? "Hãy tiếp tục khám phá và thêm sản phẩm vào giỏ hàng để tiếp tục."
                            : "Continue exploring and add items to your cart to proceed with checkout."}
                    </p>
                    <Link
                        href="/products"
                        className="inline-flex items-center justify-center w-full px-8 py-4 bg-slate-900 text-white rounded-[18px] text-sm font-bold hover:bg-slate-800 transition-all shadow-xl shadow-slate-900/20 active:scale-[0.98]"
                    >
                        {vi ? "Tiếp tục mua sắm" : "Continue shopping"}
                    </Link>
                </motion.div>
            </div>
        );
    }

    // ── Success step (Step 3 is handoff to Stripe or final display) ──
    if (checkout.step === 3) {
        return (
            <div className="min-h-screen bg-white flex items-start justify-center pt-4 lg:pt-10 px-4">
                <div className="w-full max-w-2xl">
                    <OrderSuccess
                        language={language}
                        t={t}
                        orderId={checkout.orderId ? String(checkout.orderId) : null}
                        paymentMethod={checkout.paymentMethod}
                        finalTotal={checkout.finalTotal}
                    />
                </div>
            </div>
        );
    }

    return (
        <div className="min-h-screen bg-[#F9FAFB] flex flex-col font-sans selection:bg-primary/20">
            {/* ── Main content: Multi-layered background ── */}
            <main className="flex-1 relative flex justify-center w-full px-4 sm:px-6">
                {/* Decorative background blobs */}
                <div className="absolute top-0 left-0 w-[40%] h-[40%] bg-blue-100/30 rounded-full blur-[120px] -z-10 pointer-events-none" />
                <div className="absolute bottom-0 right-0 w-[30%] h-[50%] bg-emerald-100/20 rounded-full blur-[100px] -z-10 pointer-events-none" />

                <div className="w-full max-w-7xl mx-auto flex flex-col lg:flex-row gap-8 xl:gap-14 py-8 lg:py-12 relative z-10">
                    {/* LEFT COLUMN: Checkout Form */}
                    <div className="flex-1 relative">
                        {/* Mobile: Sticky compact summary */}
                    <div className="lg:hidden sticky top-[73px] z-40 shadow-sm">
                        <OrderSummarySaaS
                            items={checkout.items}
                            totalPrice={checkout.totalPrice}
                            shippingFee={checkout.shippingFee}
                            pointsUsed={checkout.pointsToUse}
                            pointsDiscount={checkout.pointsDiscount}
                            finalTotal={checkout.finalTotal}
                            selectedVoucher={checkout.selectedVoucher}
                            language={language}
                            t={t}
                            isMobile={true}
                        />
                    </div>

                    <div className="w-full">
                        <CheckoutFormSaaS
                            step={checkout.step}
                            language={language}
                            t={t}
                            checkout={checkout}
                        />
                    </div>
                </div>

                {/* RIGHT COLUMN: Order Summary Desktop (Sticky) */}
                <div className="hidden lg:flex flex-col w-[420px] xl:w-[480px] relative">
                    <div className="sticky top-[100px] h-auto max-h-[calc(100vh-120px)] overflow-y-auto rounded-3xl border border-slate-200/60 bg-white/60 backdrop-blur-md shadow-2xl shadow-slate-200/50 flex flex-col">
                        <OrderSummarySaaS
                            items={checkout.items}
                            totalPrice={checkout.totalPrice}
                            shippingFee={checkout.shippingFee}
                            pointsUsed={checkout.pointsToUse}
                            pointsDiscount={checkout.pointsDiscount}
                            finalTotal={checkout.finalTotal}
                            selectedVoucher={checkout.selectedVoucher}
                            language={language}
                            t={t}
                            isMobile={false}
                            summaryBg="default"
                        />

                        {/* Order trust row */}
                        <div className="px-8 py-6 border-t border-slate-100 bg-slate-50/30 mt-auto">
                            <div className="flex items-center justify-between">
                                <div className="flex flex-col gap-1">
                                    <p className="text-[10px] font-bold text-slate-400 uppercase tracking-widest">
                                        {vi ? "Đảm bảo bởi" : "Protected by"}
                                    </p>
                                    <div className="flex items-center gap-3">
                                        <div className="flex items-center gap-1 opacity-60">
                                            <Shield className="w-3.5 h-3.5 text-slate-400" />
                                            <span className="text-[11px] font-bold text-slate-500">Norton</span>
                                        </div>
                                        <div className="flex items-center gap-1 opacity-60">
                                            <Lock className="w-3.5 h-3.5 text-slate-400" />
                                            <span className="text-[11px] font-bold text-slate-500">PCI DSS</span>
                                        </div>
                                    </div>
                                </div>
                                <div className="text-right">
                                    <Image
                                        src="https://flagcdn.com/w20/vn.png"
                                        alt="Made in VN"
                                        width={20}
                                        height={15}
                                        className="inline-block rounded-sm opacity-60"
                                    />
                                    <p className="text-[9px] text-slate-300 font-medium mt-1">Design in Vietnam</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </main>

            {/* Voucher Selection Overlay */}
            <VoucherPickerModal
                isOpen={checkout.showVoucherModal}
                onClose={() => checkout.setShowVoucherModal(false)}
                orderTotal={checkout.totalPrice}
                selectedVoucher={checkout.selectedVoucher}
                onSelectVoucher={(voucher) =>
                    checkout.setSelectedVoucher(voucher as CheckoutVoucher | null)
                }
            />
        </div>
    );
}

export default function CheckoutPage() {
    return (
        <Suspense fallback={<LoadingState fullPage text="Đang tải thanh toán..." />}>
            <CheckoutContent />
        </Suspense>
    );
}
