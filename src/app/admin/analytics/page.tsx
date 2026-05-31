"use client";

/**
 * LIKEFOOD - Analytics Dashboard (Light Theme)
 */

import { useEffect, useState } from "react";
import {
  BarChart3,
  Target,
  TrendingDown,
  TrendingUp,
  Users,
  ArrowUpRight,
  AlertTriangle,
  DollarSign,
  RefreshCw,
  AlertCircle,
} from "lucide-react";
import { formatPrice } from "@/lib/currency";

interface AnalyticsData {
  revenue: { total: number; change: number };
  orders: { total: number; pending: number; processing?: number; shipping: number; delivered?: number; completed: number; cancelled?: number; change: number };
  customers: { total: number; change: number };
  products: { total: number; lowStock: number };
  revenueByDay: { date: string; revenue: number }[];
  topProducts: Array<{ id: string; name: string; image?: string | null; quantitySold: number }>;
}

const RANGES = [
  { value: 7,   label: "7 ngày" },
  { value: 30,  label: "30 ngày" },
  { value: 90,  label: "90 ngày" },
  { value: 365, label: "1 năm" },
];

export default function AnalyticsPage() {
  const [days, setDays] = useState(30);
  const [data, setData] = useState<AnalyticsData | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const load = async () => {
    setIsLoading(true);
    setError(null);
    try {
      const endDate = new Date();
      const startDate = new Date(Date.now() - days * 24 * 60 * 60 * 1000);
      const res = await fetch(
        `/api/analytics/dashboard?startDate=${startDate.toISOString()}&endDate=${endDate.toISOString()}`
      );
      const json = await res.json().catch(() => ({}));
      if (res.ok) {
        setData(json);
      } else {
        setError(json?.error || "Không thể tải dữ liệu phân tích");
        setData(null);
      }
    } catch {
      setError("Lỗi kết nối. Vui lòng thử lại.");
      setData(null);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => { void load(); }, [days]);

  const averageOrderValue  = data && data.orders.total > 0  ? data.revenue.total / data.orders.total : 0;
  const conversionProxy    = data && data.customers.total > 0 ? (data.orders.total / data.customers.total) * 100 : 0;
  const completionRate     = data && data.orders.total > 0  ? (data.orders.completed / data.orders.total) * 100 : 0;

  return (
    <div className="space-y-5">
      {/* Header */}
      <div className="flex flex-wrap items-center justify-between gap-3">
        <div>
          <h1 className="text-xl font-black text-slate-800">📊 Phân tích</h1>
          <p className="text-sm text-slate-400 mt-0.5">Tổng quan hiệu suất kinh doanh</p>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={load}
            className="flex items-center gap-1.5 px-3 py-2 rounded-xl border border-slate-200 bg-white text-slate-500 shadow-sm hover:bg-slate-50 text-xs font-medium transition-colors"
          >
            <RefreshCw className="h-3.5 w-3.5" /> Làm mới
          </button>
          <div className="flex items-center rounded-xl border border-slate-200 bg-white shadow-sm p-1">
            {RANGES.map((r) => (
              <button
                key={r.value}
                onClick={() => setDays(r.value)}
                className={`px-3 py-1.5 rounded-lg text-xs font-semibold transition-all ${
                  days === r.value
                    ? "bg-emerald-500 text-white shadow-sm"
                    : "text-slate-500 hover:text-slate-700"
                }`}
              >
                {r.label}
              </button>
            ))}
          </div>
        </div>
      </div>

      {/* Loading state */}
      {isLoading && (
        <div className="flex min-h-[50vh] items-center justify-center">
          <div className="flex flex-col items-center gap-3">
            <div className="h-8 w-8 border-2 border-emerald-200 border-t-emerald-500 rounded-full animate-spin" />
            <p className="text-xs font-semibold text-slate-400 uppercase tracking-wider">Đang tải dữ liệu...</p>
          </div>
        </div>
      )}

      {/* Error state */}
      {!isLoading && error && (
        <div className="flex min-h-[50vh] items-center justify-center">
          <div className="flex flex-col items-center gap-4 max-w-sm text-center">
            <div className="p-4 rounded-2xl bg-red-50 border border-red-100">
              <AlertCircle className="h-10 w-10 text-red-600 mx-auto" />
            </div>
            <div>
              <p className="text-base font-bold text-slate-700">Không tải được dữ liệu</p>
              <p className="text-sm text-slate-400 mt-1">{error}</p>
            </div>
            <button
              onClick={load}
              className="px-5 py-2.5 rounded-xl bg-emerald-500 text-white text-sm font-bold hover:bg-emerald-600 transition-colors shadow-sm"
            >
              Thử lại
            </button>
          </div>
        </div>
      )}

      {/* Data loaded */}
      {!isLoading && !error && data && (
        <>
          {/* Executive Summary */}
          <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
            <h2 className="text-sm font-bold text-slate-700 mb-4 flex items-center gap-2">
              <Target className="h-4 w-4 text-emerald-500" />
              Tổng quan điều hành
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              <div className="p-4 rounded-xl bg-emerald-50 border border-emerald-100">
                <p className="text-xs font-semibold text-emerald-600 mb-1">Xu hướng doanh thu</p>
                <p className={`text-lg font-black ${data.revenue.change >= 0 ? "text-emerald-600" : "text-red-500"}`}>
                  {data.revenue.change >= 0 ? "+" : ""}{data.revenue.change.toFixed(1)}%
                </p>
                <p className="text-xs text-slate-400 mt-0.5">So với kỳ trước</p>
              </div>
              <div className="p-4 rounded-xl bg-blue-50 border border-blue-100">
                <p className="text-xs font-semibold text-blue-600 mb-1">Tỷ lệ hoàn thành</p>
                <p className="text-lg font-black text-blue-700">{completionRate.toFixed(1)}%</p>
                <p className="text-xs text-slate-400 mt-0.5">Đơn hoàn thành / tổng đơn</p>
              </div>
              <div className="p-4 rounded-xl bg-amber-50 border border-amber-100">
                <p className="text-xs font-semibold text-amber-600 mb-1">Cần chú ý</p>
                <p className="text-lg font-black text-amber-700">{data.orders.pending} đơn</p>
                <p className="text-xs text-slate-400 mt-0.5">Đang chờ xử lý</p>
              </div>
            </div>
          </div>

          {/* KPI Cards */}
          <div className="grid grid-cols-2 lg:grid-cols-5 gap-3">
            <KpiCard label="Doanh thu"  value={formatPrice(data.revenue.total)}         change={data.revenue.change}   icon={DollarSign}  color="emerald" />
            <KpiCard label="Đơn hàng"  value={data.orders.total.toString()}             change={data.orders.change}    icon={BarChart3}   color="blue"    />
            <KpiCard label="Khách hàng" value={data.customers.total.toString()}          change={data.customers.change} icon={Users}       color="violet"  />
            <KpiCard label="TB/Đơn"    value={formatPrice(averageOrderValue)}                                           icon={Target}      color="teal"    />
            <KpiCard label="Chuyển đổi" value={`${conversionProxy.toFixed(1)}%`}                                        icon={ArrowUpRight} color="amber"  />
          </div>

          {/* Chart + Order Status */}
          <div className="grid gap-4 lg:grid-cols-[1.1fr_0.9fr]">
            {/* Revenue Chart */}
            <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
              <h3 className="text-sm font-bold text-slate-700 mb-4">📈 Xu hướng doanh thu</h3>
              {data.revenueByDay.length === 0 ? (
                <div className="h-56 flex items-center justify-center border border-dashed border-slate-200 rounded-xl">
                  <p className="text-xs text-slate-400">Chưa có dữ liệu doanh thu</p>
                </div>
              ) : (
                <div className="h-56 flex items-end gap-1.5">
                  {data.revenueByDay.slice(-14).map((entry, i) => {
                    const maxRev = Math.max(...data.revenueByDay.map(e => e.revenue), 1);
                    const height = (entry.revenue / maxRev) * 100;
                    return (
                      <div key={i} className="flex-1 flex flex-col items-center gap-2 group">
                        <div
                          className="w-full bg-emerald-400 hover:bg-emerald-500 rounded-t-md transition-colors cursor-default"
                          style={{ height: `${height}%`, minHeight: "4px" }}
                          title={`${new Date(entry.date).toLocaleDateString("vi-VN")}: ${formatPrice(entry.revenue)}`}
                        />
                        <span className="text-[10px] font-medium text-slate-400">
                          {new Date(entry.date).getDate()}
                        </span>
                      </div>
                    );
                  })}
                </div>
              )}
            </div>

            {/* Order Status Breakdown */}
            <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
              <h3 className="text-sm font-bold text-slate-700 mb-4">📦 Trạng thái đơn hàng</h3>
              <div className="space-y-3">
                <StatusRow label="Chờ xử lý"  value={data.orders.pending}            color="bg-amber-400"   total={data.orders.total} />
                <StatusRow label="Đang xử lý" value={data.orders.processing || 0}   color="bg-purple-400"  total={data.orders.total} />
                <StatusRow label="Đang giao"  value={data.orders.shipping}           color="bg-cyan-400"    total={data.orders.total} />
                <StatusRow label="Đã giao"    value={data.orders.delivered || 0}    color="bg-blue-400"    total={data.orders.total} />
                <StatusRow label="Hoàn thành" value={data.orders.completed}          color="bg-emerald-500" total={data.orders.total} />
                <StatusRow label="Đã hủy"     value={data.orders.cancelled || 0}    color="bg-red-400"     total={data.orders.total} />
              </div>
            </div>
          </div>

          {/* Top Products */}
          {data.topProducts.length > 0 && (
            <div className="rounded-2xl border border-slate-200 bg-white p-5 shadow-sm">
              <h3 className="text-sm font-bold text-slate-700 mb-4">🏆 Sản phẩm bán chạy</h3>
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-3">
                {data.topProducts.slice(0, 8).map((product, i) => (
                  <div key={product.id} className="flex items-center gap-3 p-3 rounded-xl border border-slate-100 bg-slate-50 hover:bg-slate-100 transition-colors">
                    <span className={`text-base font-black w-7 text-center ${
                      i === 0 ? "text-amber-500" : i === 1 ? "text-slate-400" : i === 2 ? "text-orange-500" : "text-slate-300"
                    }`}>
                      #{i + 1}
                    </span>
                    <div className="flex-1 min-w-0">
                      <p className="text-sm font-semibold text-slate-700 truncate">{product.name}</p>
                      <p className="text-xs text-slate-400">{product.quantitySold} đã bán</p>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Low Stock Alert */}
          {data.products.lowStock > 0 && (
            <div className="rounded-2xl border border-amber-200 bg-amber-50 p-4">
              <div className="flex items-center gap-3">
                <AlertTriangle className="h-5 w-5 text-amber-500 shrink-0" />
                <div>
                  <p className="text-sm font-bold text-amber-800">Cảnh báo tồn kho thấp</p>
                  <p className="text-xs text-amber-700 mt-0.5">
                    {data.products.lowStock} sản phẩm dưới mức tồn kho an toàn (dưới 10 sản phẩm)
                  </p>
                </div>
              </div>
            </div>
          )}
        </>
      )}
    </div>
  );
}

// ─── KPI Card ────────────────────────────────────────────────────────────────
const COLOR_MAP = {
  emerald: { bg: "bg-emerald-50", border: "border-emerald-100", icon: "bg-emerald-100 text-emerald-600", val: "text-emerald-700" },
  blue:    { bg: "bg-blue-50",    border: "border-blue-100",    icon: "bg-blue-100 text-blue-600",       val: "text-blue-700"    },
  violet:  { bg: "bg-violet-50",  border: "border-violet-100",  icon: "bg-violet-100 text-violet-600",   val: "text-violet-700"  },
  teal:    { bg: "bg-teal-50",    border: "border-teal-100",    icon: "bg-teal-100 text-emerald-600",       val: "text-teal-700"    },
  amber:   { bg: "bg-amber-50",   border: "border-amber-100",   icon: "bg-amber-100 text-amber-600",     val: "text-amber-700"   },
};

function KpiCard({ label, value, change, icon: Icon, color }: {
  label: string; value: string; change?: number; icon: any;
  color: keyof typeof COLOR_MAP;
}) {
  const c = COLOR_MAP[color];
  return (
    <div className={`rounded-2xl border ${c.border} ${c.bg} p-4 shadow-sm`}>
      <div className="flex items-center justify-between mb-2">
        <span className="text-[10px] font-bold text-slate-500 uppercase tracking-wide">{label}</span>
        <div className={`p-1.5 rounded-lg ${c.icon}`}><Icon className="h-3.5 w-3.5" /></div>
      </div>
      <p className={`text-lg font-black ${c.val}`}>{value}</p>
      {change !== undefined && (
        <p className={`text-xs mt-1 flex items-center gap-1 font-semibold ${change >= 0 ? "text-emerald-600" : "text-red-500"}`}>
          {change >= 0 ? <TrendingUp className="h-3 w-3" /> : <TrendingDown className="h-3 w-3" />}
          {Math.abs(change).toFixed(1)}%
        </p>
      )}
    </div>
  );
}

// ─── Status Row ──────────────────────────────────────────────────────────────
function StatusRow({ label, value, color, total }: { label: string; value: number; color: string; total: number }) {
  const pct = total > 0 ? (value / total) * 100 : 0;
  return (
    <div className="space-y-1">
      <div className="flex items-center justify-between text-xs">
        <div className="flex items-center gap-2">
          <div className={`w-2 h-2 rounded-full ${color}`} />
          <span className="text-slate-600 font-medium">{label}</span>
        </div>
        <div className="flex items-center gap-2">
          <span className="font-bold text-slate-700">{value}</span>
          <span className="text-slate-400 w-10 text-right">{pct.toFixed(0)}%</span>
        </div>
      </div>
      <div className="h-1.5 bg-slate-100 rounded-full overflow-hidden">
        <div className={`h-full ${color} rounded-full transition-all`} style={{ width: `${pct}%` }} />
      </div>
    </div>
  );
}
