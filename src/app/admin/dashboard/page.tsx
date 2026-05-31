"use client";

/**
 * LIKEFOOD - Admin Dashboard (Light Theme)
 * Clean White Enterprise Dashboard - 2026
 */

import { useEffect, useMemo, useState } from "react";
import Link from "next/link";
import {
  AlertTriangle,
  ArrowRight,
  Boxes,
  ClipboardList,
  Sparkles,
  Users,
  DollarSign,
  ShoppingCart,
  Plus,
  RefreshCw,
  TrendingUp,
  TrendingDown,
} from "lucide-react";
import { useSession } from "next-auth/react";
import { formatPrice } from "@/lib/currency";

interface DashboardData {
  revenue: { total: number; change: number };
  orders: { total: number; pending: number; processing?: number; shipping: number; delivered?: number; completed: number; cancelled?: number; change: number };
  customers: { total: number; change: number };
  products: { total: number; lowStock: number };
  recentOrders: Array<{ id: string; userEmail: string; total: number; status: string; createdAt?: string }>;
  lowStockProducts: Array<{ id: string; name: string; inventory: number; slug?: string | null }>;
  topProducts: Array<{ id: string; name: string; image?: string | null; soldCount: number; revenue: number }>;
  revenueChart: Array<{ label: string; value: number }>;
  aiInsights: Array<{ title: string; description: string; type: string; metric?: string }>;
}

const RANGES = [
  { value: "week", label: "7 ngày" },
  { value: "month", label: "30 ngày" },
  { value: "quarter", label: "90 ngày" },
];

export default function AdminDashboardPage() {
  const { data: session } = useSession();
  const [range, setRange] = useState("month");
  const [data, setData] = useState<DashboardData | null>(null);
  const [isLoading, setIsLoading] = useState(true);

  const loadData = async () => {
    setIsLoading(true);
    try {
      const endDate = new Date();
      const startDate = new Date();
      if (range === "week") startDate.setDate(startDate.getDate() - 7);
      else if (range === "month") startDate.setMonth(startDate.getMonth() - 1);
      else startDate.setMonth(startDate.getMonth() - 3);

      const [analyticsRes, ordersRes, productsRes, aiRes] = await Promise.all([
        fetch(`/api/analytics/dashboard?startDate=${startDate.toISOString()}&endDate=${endDate.toISOString()}`),
        fetch(`/api/orders?page=1&limit=5`),
        fetch(`/api/products?limit=8&sort=best-selling`),
        fetch(`/api/ai/admin?type=analytics`),
      ]);

      const analytics = analyticsRes.ok ? await analyticsRes.json() : null;
      const ordersData = ordersRes.ok ? await ordersRes.json() : { orders: [] };
      const productsData = productsRes.ok ? await productsRes.json() : { products: [] };
      const aiData = aiRes.ok ? await aiRes.json() : { insights: [] };

      const orders = Array.isArray(ordersData?.orders) ? ordersData.orders : [];
      const products = Array.isArray(productsData?.products) ? productsData.products : [];

      setData({
        revenue: analytics?.revenue || { total: 0, change: 0 },
        orders: analytics?.orders || { total: 0, pending: 0, shipping: 0, completed: 0, change: 0 },
        customers: analytics?.customers || { total: 0, change: 0 },
        products: analytics?.products || { total: 0, lowStock: 0 },
        recentOrders: orders,
        lowStockProducts: products.filter((p: { inventory: number }) => p.inventory < 10).slice(0, 5),
        topProducts: products.slice(0, 5).map((p: { id: string; name: string; image?: string | null; soldCount?: number; price: number }) => ({
          id: p.id,
          name: p.name,
          image: p.image,
          soldCount: p.soldCount || 0,
          revenue: (p.soldCount || 0) * p.price,
        })),
        revenueChart: analytics?.revenueByDay?.slice(-7).map((item: { date: string; revenue: number }) => ({
          label: new Date(item.date).toLocaleDateString("vi-VN", { month: "short", day: "2-digit" }),
          value: item.revenue,
        })) || [],
        aiInsights: Array.isArray(aiData?.insights) ? aiData.insights : [],
      });
    } catch (error) {
      console.error("Failed to load dashboard data:", error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    loadData();
  }, [range]);

  const maxChartValue = useMemo(
    () => Math.max(...(data?.revenueChart.map((i) => i.value) || [0]), 1),
    [data]
  );

  const greeting = () => {
    const hour = new Date().getHours();
    if (hour < 12) return "Chào buổi sáng";
    if (hour < 18) return "Chào buổi chiều";
    return "Chào buổi tối";
  };

  if (isLoading || !data) {
    return (
      <div className="flex min-h-[60vh] items-center justify-center">
        <div className="flex flex-col items-center gap-3">
          <div className="h-8 w-8 border-2 border-emerald-200 border-t-emerald-500 rounded-full animate-spin" />
          <p className="text-xs font-semibold text-slate-400 uppercase tracking-wider">Đang tải...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-5">
      {/* Header */}
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <h1 className="text-xl font-black text-slate-800">
            {greeting()}, {session?.user?.name || "Admin"} 👋
          </h1>
          <p className="text-sm text-slate-400 mt-0.5">Tổng quan hoạt động hôm nay</p>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={loadData}
            className="flex items-center gap-1.5 px-3 py-2 rounded-xl border border-slate-200 bg-white text-slate-500 shadow-sm hover:bg-slate-50 hover:text-slate-700 transition-colors text-xs font-medium"
          >
            <RefreshCw className="h-3.5 w-3.5" />
            Làm mới
          </button>
          <div className="flex items-center rounded-xl border border-slate-200 bg-white shadow-sm p-1">
            {RANGES.map((option) => (
              <button
                key={option.value}
                type="button"
                onClick={() => setRange(option.value)}
                className={`px-3 py-1.5 text-xs font-semibold rounded-lg transition-all ${
                  range === option.value
                    ? "bg-emerald-500 text-white shadow-sm"
                    : "text-slate-500 hover:text-slate-700"
                }`}
              >
                {option.label}
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* KPI Cards */}
      <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
        <KPICard
          title="Doanh thu"
          value={formatPrice(data.revenue.total)}
          change={data.revenue.change}
          icon={DollarSign}
          color="emerald"
        />
        <KPICard
          title="Đơn hàng"
          value={data.orders.total.toString()}
          meta={data.orders.pending > 0 ? `${data.orders.pending} chờ xử lý` : undefined}
          icon={ShoppingCart}
          color="blue"
        />
        <KPICard
          title="Khách hàng"
          value={data.customers.total.toString()}
          change={data.customers.change}
          icon={Users}
          color="violet"
        />
        <KPICard
          title="Hàng sắp hết"
          value={data.products.lowStock.toString()}
          meta={`/ ${data.products.total} sản phẩm`}
          icon={Boxes}
          color={data.products.lowStock > 0 ? "amber" : "slate"}
          warning={data.products.lowStock > 0}
        />
      </div>

      {/* Main Content */}
      <div className="grid gap-4 xl:grid-cols-3">
        {/* Left Column — Chart + Orders */}
        <div className="xl:col-span-2 space-y-4">
          {/* Revenue Chart */}
          <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
            <div className="flex items-center justify-between mb-5">
              <h3 className="text-sm font-bold text-slate-700">📈 Biểu đồ doanh thu</h3>
              <Link
                href="/admin/analytics"
                className="text-xs text-emerald-600 hover:text-emerald-700 transition-colors flex items-center gap-1 font-medium"
              >
                Xem phân tích <ArrowRight className="h-3 w-3" />
              </Link>
            </div>
            {data.revenueChart.length === 0 ? (
              <div className="h-36 flex items-center justify-center border border-dashed border-slate-200 rounded-xl">
                <p className="text-xs text-slate-400">Chưa có dữ liệu doanh thu</p>
              </div>
            ) : (
              <div className="flex h-40 items-end gap-2">
                {data.revenueChart.map((item) => (
                  <div key={item.label} className="flex flex-1 flex-col items-center gap-1">
                    <span className="text-[10px] text-slate-400 font-medium">{formatPrice(item.value)}</span>
                    <div className="flex h-28 w-full items-end rounded-lg bg-slate-50 p-1">
                      <div
                        className="w-full rounded-md bg-gradient-to-t from-emerald-600 to-emerald-400 shadow-sm"
                        style={{ height: `${Math.max((item.value / maxChartValue) * 100, 6)}%` }}
                      />
                    </div>
                    <span className="text-[10px] font-semibold text-slate-400">{item.label}</span>
                  </div>
                ))}
              </div>
            )}
          </div>

          {/* Recent Orders */}
          <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-sm font-bold text-slate-700">📦 Đơn hàng gần đây</h3>
              <Link
                href="/admin/orders"
                className="text-xs text-emerald-600 hover:text-emerald-700 transition-colors flex items-center gap-1 font-medium"
              >
                Xem tất cả <ArrowRight className="h-3 w-3" />
              </Link>
            </div>
            <div className="space-y-2">
              {data.recentOrders.length === 0 ? (
                <div className="h-24 flex items-center justify-center border border-dashed border-slate-200 rounded-xl">
                  <p className="text-xs text-slate-400">Chưa có đơn hàng</p>
                </div>
              ) : (
                data.recentOrders.map((order) => (
                  <div
                    key={order.id}
                    className="flex items-center justify-between rounded-xl border border-slate-100 bg-slate-50 px-4 py-2.5 hover:bg-slate-100 transition-colors"
                  >
                    <div className="min-w-0 flex-1">
                      <p className="text-sm font-bold text-slate-700">#{order.id}</p>
                      <p className="text-xs text-slate-400 truncate max-w-[180px]">
                        {order.userEmail || "Khách"}
                      </p>
                    </div>
                    <div className="flex items-center gap-3">
                      <StatusBadge status={order.status} />
                      <span className="text-sm font-bold text-slate-700">{formatPrice(order.total)}</span>
                    </div>
                  </div>
                ))
              )}
            </div>
          </div>
        </div>

        {/* Right Column */}
        <div className="space-y-4">
          {/* Quick Actions */}
          <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
            <h3 className="text-sm font-bold text-slate-700 mb-3">⚡ Thao tác nhanh</h3>
            <div className="grid grid-cols-2 gap-2">
              <Link
                href="/admin/products/new"
                className="flex flex-col items-center gap-2 rounded-xl border border-emerald-200 bg-emerald-50 px-3 py-3 text-xs font-bold text-emerald-700 hover:bg-emerald-100 transition-colors"
              >
                <Plus className="h-4 w-4" />
                Thêm sản phẩm
              </Link>
              <Link
                href="/admin/orders"
                className="flex flex-col items-center gap-2 rounded-xl border border-blue-200 bg-blue-50 px-3 py-3 text-xs font-bold text-blue-700 hover:bg-blue-100 transition-colors"
              >
                <ClipboardList className="h-4 w-4" />
                Đơn hàng
              </Link>
              <Link
                href="/admin/coupons"
                className="flex flex-col items-center gap-2 rounded-xl border border-violet-200 bg-violet-50 px-3 py-3 text-xs font-bold text-violet-700 hover:bg-violet-100 transition-colors"
              >
                <Sparkles className="h-4 w-4" />
                Mã giảm giá
              </Link>
              <Link
                href="/admin/customers"
                className="flex flex-col items-center gap-2 rounded-xl border border-amber-200 bg-amber-50 px-3 py-3 text-xs font-bold text-amber-700 hover:bg-amber-100 transition-colors"
              >
                <Users className="h-4 w-4" />
                Khách hàng
              </Link>
            </div>
          </div>

          {/* AI Insights */}
          <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-sm font-bold text-slate-700 flex items-center gap-2">
                <Sparkles className="h-4 w-4 text-emerald-500" />
                AI Insights
              </h3>
              <Link
                href="/admin/ai"
                className="text-xs text-emerald-600 hover:text-emerald-700 font-medium"
              >
                Xem thêm
              </Link>
            </div>
            <div className="space-y-2">
              {data.aiInsights.length === 0 ? (
                <div className="h-24 flex items-center justify-center border border-dashed border-slate-200 rounded-xl">
                  <p className="text-xs text-slate-400">Chưa có gợi ý</p>
                </div>
              ) : (
                data.aiInsights.slice(0, 4).map((insight, index) => (
                  <div
                    key={index}
                    className="rounded-xl border border-slate-100 bg-slate-50 p-3"
                  >
                    <div className="flex items-start justify-between gap-2">
                      <div className="min-w-0 flex-1">
                        <p className="text-xs font-bold text-slate-700 truncate">{insight.title}</p>
                        <p className="text-xs text-slate-400 mt-0.5 line-clamp-2">{insight.description}</p>
                      </div>
                      <InsightBadge type={insight.type} metric={insight.metric} />
                    </div>
                  </div>
                ))
              )}
            </div>
          </div>

          {/* Low Stock Alert */}
          {data.lowStockProducts.length > 0 && (
            <div className="rounded-2xl border border-amber-200 bg-amber-50 p-5 shadow-sm">
              <div className="flex items-center justify-between mb-4">
                <h3 className="text-sm font-bold text-amber-800 flex items-center gap-2">
                  <AlertTriangle className="h-4 w-4 text-amber-600" />
                  Sắp hết hàng
                </h3>
                <Link
                  href="/admin/products"
                  className="text-xs text-amber-700 hover:text-amber-800 font-medium"
                >
                  Quản lý
                </Link>
              </div>
              <div className="space-y-2">
                {data.lowStockProducts.map((product) => (
                  <div
                    key={product.id}
                    className="flex items-center justify-between rounded-xl border border-amber-200 bg-white px-3 py-2"
                  >
                    <p className="truncate text-xs font-medium text-slate-700 max-w-[140px]">
                      {product.name}
                    </p>
                    <div className="flex items-center gap-1">
                      <span className="text-sm font-black text-amber-600">{product.inventory}</span>
                      <span className="text-[10px] text-slate-400">còn lại</span>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

// ─── KPI Card ───────────────────────────────────────────────────────────────
function KPICard({
  title,
  value,
  change,
  meta,
  icon: Icon,
  color,
  warning,
}: {
  title: string;
  value: string;
  change?: number;
  meta?: string;
  icon: typeof DollarSign;
  color: "emerald" | "blue" | "violet" | "amber" | "slate";
  warning?: boolean;
}) {
  const isPositive = change !== undefined && change >= 0;
  const colorMap = {
    emerald: { bg: "bg-emerald-50", border: "border-emerald-100", icon: "bg-emerald-100 text-emerald-600", value: "text-emerald-600" },
    blue:    { bg: "bg-blue-50",    border: "border-blue-100",    icon: "bg-blue-100 text-blue-600",       value: "text-blue-600"    },
    violet:  { bg: "bg-violet-50",  border: "border-violet-100",  icon: "bg-violet-100 text-violet-600",   value: "text-violet-600"  },
    amber:   { bg: "bg-amber-50",   border: "border-amber-100",   icon: "bg-amber-100 text-amber-600",     value: "text-amber-600"   },
    slate:   { bg: "bg-slate-50",   border: "border-slate-100",   icon: "bg-slate-100 text-slate-500",     value: "text-slate-700"   },
  };
  const c = colorMap[color];

  return (
    <div className={`rounded-2xl border ${c.border} ${c.bg} p-5 shadow-sm`}>
      <div className="flex items-start justify-between">
        <div>
          <p className="text-xs font-bold text-slate-500 uppercase tracking-wide">{title}</p>
          <p className={`mt-2 text-2xl font-black ${c.value}`}>{value}</p>
          {change !== undefined && (
            <p className={`text-xs mt-1 flex items-center gap-1 font-semibold ${isPositive ? "text-emerald-600" : "text-red-500"}`}>
              {isPositive ? <TrendingUp className="h-3 w-3" /> : <TrendingDown className="h-3 w-3" />}
              {isPositive ? "+" : ""}{change.toFixed(1)}% kỳ trước
            </p>
          )}
          {meta && <p className="text-[11px] text-slate-400 mt-1">{meta}</p>}
        </div>
        <div className={`p-2.5 rounded-xl ${c.icon}`}>
          <Icon className="h-5 w-5" />
        </div>
      </div>
    </div>
  );
}

// ─── Status Badge ────────────────────────────────────────────────────────────
function StatusBadge({ status }: { status: string }) {
  const cfg: Record<string, { bg: string; text: string; label: string }> = {
    PENDING:    { bg: "bg-amber-100",   text: "text-amber-700",   label: "Chờ xử lý" },
    CONFIRMED:  { bg: "bg-blue-100",    text: "text-blue-700",    label: "Đã xác nhận" },
    PROCESSING: { bg: "bg-purple-100",  text: "text-purple-700",  label: "Đang xử lý" },
    SHIPPING:   { bg: "bg-cyan-100",    text: "text-cyan-700",    label: "Đang giao" },
    DELIVERED:  { bg: "bg-emerald-100", text: "text-emerald-700", label: "Đã giao" },
    COMPLETED:  { bg: "bg-emerald-100", text: "text-emerald-700", label: "Hoàn tất" },
    CANCELLED:  { bg: "bg-red-100",     text: "text-red-700",     label: "Đã huỷ" },
    REFUNDED:   { bg: "bg-red-100",     text: "text-red-700",     label: "Hoàn tiền" },
  };
  const c = cfg[status] || { bg: "bg-slate-100", text: "text-slate-600", label: status };
  return (
    <span className={`rounded-full px-2.5 py-0.5 text-[10px] font-bold uppercase ${c.bg} ${c.text}`}>
      {c.label}
    </span>
  );
}

// ─── Insight Badge ───────────────────────────────────────────────────────────
function InsightBadge({ type, metric }: { type: string; metric?: string }) {
  const c = ({
    warning: "bg-amber-100 text-amber-700",
    success: "bg-emerald-100 text-emerald-700",
    info:    "bg-blue-100 text-blue-700",
    trend:   "bg-teal-100 text-teal-700",
  } as Record<string, string>)[type] || "bg-slate-100 text-slate-600";
  return (
    <span className={`shrink-0 rounded-full px-2 py-0.5 text-[9px] font-bold uppercase ${c}`}>
      {metric || type}
    </span>
  );
}
