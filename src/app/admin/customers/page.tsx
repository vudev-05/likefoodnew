"use client";

/**
 * LIKEFOOD - Premium Customers Management Module
 * Phase 3: Lifecycle, Segments, Detail Panel
 */

import { useCallback, useEffect, useMemo, useState } from "react";
import { 
  Download, 
  Loader2, 
  Mail, 
  Phone, 
  RefreshCw, 
  Search, 
  Star,
  X,
  Calendar,
  Award,
  User,
  ArrowUpRight
} from "lucide-react";
import { toast } from "sonner";
import { formatPrice } from "@/lib/currency";

interface Customer {
  id: number;
  email: string;
  name: string | null;
  phone: string | null;
  createdAt: string;
  totalSpent: number;
  orderCount: number;
  lastOrderAt?: string;
  _count: {
    reviews: number;
    wishlists: number;
  };
}

interface CustomerSegment {
  segment: string;
  count: number;
  totalRevenue: number;
  avgOrderValue: number;
}

interface CustomerOrder {
  id: number;
  total: number;
  status: string;
  createdAt: string;
  itemCount: number;
}

export default function CustomersPage() {
  const [customers, setCustomers] = useState<Customer[]>([]);
  const [segments, setSegments] = useState<CustomerSegment[]>([]);
  const [search, setSearch] = useState("");
  const [page, setPage] = useState(1);
  const [total, setTotal] = useState(0);
  const [isLoading, setIsLoading] = useState(true);
  const [selectedCustomer, setSelectedCustomer] = useState<Customer | null>(null);
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [customerOrders, setCustomerOrders] = useState<CustomerOrder[]>([]);
  const [ordersLoading, setOrdersLoading] = useState(false);

  const loadCustomers = useCallback(async () => {
    setIsLoading(true);
    try {
      const params = new URLSearchParams({ page: page.toString(), limit: '15' });
      if (search) params.set('search', search);
      const response = await fetch(`/api/admin/customers?${params.toString()}`);
      const data = await response.json().catch(() => ({}));
      if (!response.ok) throw new Error('Không thể tải danh sách khách hàng');
      setCustomers(Array.isArray(data.customers) ? data.customers : []);
      setTotal(data.pagination?.total || 0);
    } catch {
      toast.error('Không thể tải danh sách khách hàng');
    } finally {
      setIsLoading(false);
    }
  }, [page, search]);

  useEffect(() => {
    void loadCustomers();
  }, [loadCustomers]);

  useEffect(() => {
    setPage(1);
  }, [search]);

  const loadSegments = async () => {
    try {
      const res = await fetch('/api/ai/admin?type=customers');
      if (res.ok) {
        const data = await res.json();
        setSegments(data.segments || []);
      }
    } catch (_error) {
      console.error('Failed to load segments:', _error);
    }
  };

  useEffect(() => {
    loadSegments();
  }, []);

  const loadCustomerOrders = async (customerId: string) => {
    setOrdersLoading(true);
    try {
      const res = await fetch(`/api/orders?userId=${customerId}&limit=10`);
      if (res.ok) {
        const data = await res.json();
        setCustomerOrders(data.orders || []);
      }
    } catch (_error) {
      console.error('Failed to load orders:', _error);
    } finally {
      setOrdersLoading(false);
    }
  };

  const openDrawer = async (customer: Customer) => {
    setSelectedCustomer(customer);
    setDrawerOpen(true);
    await loadCustomerOrders(String(customer.id));
  };

  const filteredCustomers = useMemo(() => {
    if (!search) return customers;
    const searchLower = search.toLowerCase();
    return customers.filter(c => 
      c.name?.toLowerCase().includes(searchLower) ||
      c.email.toLowerCase().includes(searchLower) ||
      c.phone?.includes(search)
    );
  }, [customers, search]);

  const stats = useMemo(() => {
    const totalCustomers = total;
    const totalRevenue = customers.reduce((sum, c) => sum + c.totalSpent, 0);
    const avgSpend = totalCustomers > 0 ? totalRevenue / totalCustomers : 0;
    const repeatCustomers = customers.filter(c => c.orderCount > 1).length;
    return { totalCustomers, totalRevenue, avgSpend, repeatCustomers };
  }, [customers, total]);

  const getCustomerSegment = (customer: Customer) => {
    if (customer.orderCount >= 5 && customer.totalSpent >= 500) {
      return { label: 'VIP', color: 'bg-amber-100 text-amber-700' };
    }
    if (customer.orderCount >= 3) {
      return { label: 'Regular', color: 'bg-emerald-100 text-emerald-700' };
    }
    if (customer.orderCount === 1) {
      return { label: 'New', color: 'bg-blue-100 text-blue-700' };
    }
    return { label: 'One-time', color: 'bg-zinc-500/10 text-slate-500' };
  };

  const getTimeSince = (dateStr: string) => {
    const diff = Date.now() - new Date(dateStr).getTime();
    const days = Math.floor(diff / (1000 * 60 * 60 * 24));
    if (days === 0) return 'Today';
    if (days === 1) return 'Yesterday';
    if (days < 7) return `${days} days ago`;
    if (days < 30) return `${Math.floor(days / 7)} weeks ago`;
    return `${Math.floor(days / 30)} months ago`;
  };

  return (
    <div className="space-y-4">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-xl font-semibold text-slate-800">Customers</h1>
          <p className="text-sm text-slate-400 mt-0.5">Customer management & segmentation</p>
        </div>
        <div className="flex items-center gap-2">
          <button 
            onClick={() => void loadCustomers()}
            disabled={isLoading}
            className="px-3.5 py-2 rounded-md border border-slate-200 bg-slate-50 text-sm font-medium text-slate-600 hover:bg-white transition-colors flex items-center gap-2"
          >
            <RefreshCw className={`h-4 w-4 ${isLoading ? 'animate-spin' : ''}`} />
            Refresh
          </button>
          <button
            onClick={() => { window.open('/api/admin/export?type=customers', '_blank'); toast.success('Đang xuất dữ liệu khách hàng...'); }}
            className="px-3.5 py-2 rounded-md border border-slate-200 bg-slate-50 text-sm font-medium text-slate-600 hover:bg-white transition-colors flex items-center gap-2"
          >
            <Download className="h-4 w-4" />
            Xuất dữ liệu
          </button>
        </div>
      </div>

      {/* Stats Grid */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Tổng khách hàng</p>
          <p className="text-2xl font-bold text-slate-800 mt-1">{stats.totalCustomers}</p>
        </div>
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Tổng doanh thu</p>
          <p className="text-2xl font-bold text-amber-600 mt-1">{formatPrice(stats.totalRevenue)}</p>
        </div>
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Chi tiêu TB</p>
          <p className="text-2xl font-bold text-slate-800 mt-1">{formatPrice(stats.avgSpend)}</p>
        </div>
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Khách quay lại</p>
          <p className="text-2xl font-bold text-emerald-600 mt-1">{stats.repeatCustomers}</p>
        </div>
      </div>

      {/* Segment Cards */}
      {segments.length > 0 && (
        <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
          {segments.slice(0, 4).map((seg) => (
            <div key={seg.segment} className="rounded-lg border border-slate-200/50 bg-white p-4">
              <div className="flex items-center gap-2 mb-2">
                <Award className="h-4 w-4 text-amber-600" />
                <p className="text-xs font-semibold uppercase text-slate-500">{seg.segment}</p>
              </div>
              <p className="text-xl font-bold text-slate-800">{seg.count}</p>
              <p className="text-xs text-slate-400 mt-1">Avg. {formatPrice(seg.avgOrderValue)}/order</p>
            </div>
          ))}
        </div>
      )}

      {/* Filter Bar */}
      <div className="rounded-lg border border-slate-200/50 bg-white p-3">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center">
          <div className="relative flex-1 max-w-md">
            <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-slate-400" />
            <input
              type="text"
              placeholder="Search by name, email, phone..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="h-9 w-full rounded-md border border-slate-200 bg-slate-50 pl-9 pr-8 text-sm text-slate-800 placeholder:text-slate-400 focus:border-emerald-500 focus:outline-none"
            />
            {search && (
              <button onClick={() => setSearch('')} className="absolute right-2 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-600">
                <X className="h-4 w-4" />
              </button>
            )}
          </div>
        </div>
      </div>

      {/* Customer Table */}
      <div className="rounded-lg border border-slate-200/50 bg-white overflow-hidden">
        <table className="w-full">
          <thead>
            <tr className="border-b border-slate-200/50 bg-slate-50/50">
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Customer</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Segment</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Orders</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Total Spent</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Last Order</th>
              <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Reviews</th>
              <th className="w-10 px-4 py-3"></th>
            </tr>
          </thead>
          <tbody className="divide-y divide-slate-200/50">
            {isLoading ? (
              Array.from({ length: 6 }).map((_, i) => (
                <tr key={i} className="animate-pulse">
                  <td className="px-4 py-4"><div className="h-12 w-48 bg-white rounded" /></td>
                  <td className="px-4 py-4"><div className="h-6 w-20 bg-white rounded-full" /></td>
                  <td className="px-4 py-4"><div className="h-4 w-12 bg-white rounded" /></td>
                  <td className="px-4 py-4"><div className="h-4 w-20 bg-white rounded" /></td>
                  <td className="px-4 py-4"><div className="h-4 w-24 bg-white rounded" /></td>
                  <td className="px-4 py-4"><div className="h-4 w-12 bg-white rounded" /></td>
                  <td className="px-4 py-4"><div className="h-8 w-8 bg-white rounded" /></td>
                </tr>
              ))
            ) : filteredCustomers.length === 0 ? (
              <tr>
                <td colSpan={7} className="px-4 py-20 text-center">
                  <User className="mx-auto h-10 w-10 text-slate-400" />
                  <h3 className="mt-4 text-sm font-medium text-slate-500">No customers found</h3>
                </td>
              </tr>
            ) : (
              filteredCustomers.map((customer) => {
                const segment = getCustomerSegment(customer);
                return (
                  <tr key={customer.id} className="transition-colors hover:bg-slate-50/30">
                    <td className="px-4 py-4">
                      <div>
                        <p className="text-sm font-medium text-slate-700">{customer.name || 'No name'}</p>
                        <p className="text-xs text-slate-400">{customer.email}</p>
                        {customer.phone && (
                          <p className="text-xs text-slate-400">{customer.phone}</p>
                        )}
                      </div>
                    </td>
                    <td className="px-4 py-4">
                      <span className={`inline-flex rounded-full px-2.5 py-1 text-[10px] font-semibold uppercase ${segment.color}`}>
                        {segment.label}
                      </span>
                    </td>
                    <td className="px-4 py-4 text-sm text-slate-600">
                      {customer.orderCount}
                    </td>
                    <td className="px-4 py-4 text-sm font-semibold text-slate-700">
                      {formatPrice(customer.totalSpent)}
                    </td>
                    <td className="px-4 py-4 text-sm text-slate-500">
                      {customer.lastOrderAt ? getTimeSince(customer.lastOrderAt) : '-'}
                    </td>
                    <td className="px-4 py-4">
                      <div className="flex items-center gap-1">
                        {customer._count.reviews > 0 && (
                          <>
                            <Star className="h-3.5 w-3.5 text-amber-600 fill-current" />
                            <span className="text-sm text-slate-600">{customer._count.reviews}</span>
                          </>
                        )}
                      </div>
                    </td>
                    <td className="px-4 py-4">
                      <button 
                        onClick={() => openDrawer(customer)}
                        className="p-2 rounded-md text-slate-400 hover:text-slate-600 hover:bg-white transition-colors"
                      >
                        <ArrowUpRight className="h-4 w-4" />
                      </button>
                    </td>
                  </tr>
                );
              })
            )}
          </tbody>
        </table>

        {/* Pagination */}
        {total > 15 && (() => {
          const PAGE_SIZE = 15;
          const totalPages = Math.ceil(total / PAGE_SIZE);
          const getVisiblePages = () => {
            const pages: number[] = [];
            const delta = 2;
            const start = Math.max(1, page - delta);
            const end = Math.min(totalPages, page + delta);
            if (start > 1) { pages.push(1); if (start > 2) pages.push(-1); }
            for (let i = start; i <= end; i++) pages.push(i);
            if (end < totalPages) { if (end < totalPages - 1) pages.push(-1); pages.push(totalPages); }
            return pages;
          };
          return (
            <div className="flex items-center justify-between border-t border-slate-200/50 px-4 py-3">
              <p className="text-xs text-slate-400">
                Showing {((page - 1) * PAGE_SIZE) + 1} to {Math.min(page * PAGE_SIZE, total)} of {total}
              </p>
              <div className="flex items-center gap-1">
                <button
                  onClick={() => setPage(p => Math.max(1, p - 1))}
                  disabled={page === 1}
                  className="h-8 w-8 rounded-md border border-slate-200 bg-slate-50 text-slate-400 disabled:opacity-40"
                >
                  ←
                </button>
                {getVisiblePages().map((p, idx) =>
                  p === -1 ? (
                    <span key={`ellipsis-${idx}`} className="h-8 w-6 flex items-center justify-center text-slate-400 text-xs">…</span>
                  ) : (
                    <button
                      key={p}
                      onClick={() => setPage(p)}
                      className={`h-8 w-8 rounded-md text-xs font-medium ${
                        page === p
                          ? 'bg-emerald-500 text-white'
                          : 'border border-slate-200 bg-slate-50 text-slate-500'
                      }`}
                    >
                      {p}
                    </button>
                  )
                )}
                <button
                  onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                  disabled={page >= totalPages}
                  className="h-8 w-8 rounded-md border border-slate-200 bg-slate-50 text-slate-400 disabled:opacity-40"
                >
                  →
                </button>
              </div>
            </div>
          );
        })()}
      </div>

      {/* Customer Detail Drawer */}
      <CustomerDrawer 
        customer={selectedCustomer}
        orders={customerOrders}
        open={drawerOpen}
        onClose={() => setDrawerOpen(false)}
        loading={ordersLoading}
      />
    </div>
  );
}

// Customer Detail Drawer
function CustomerDrawer({ 
  customer, 
  orders, 
  open, 
  onClose,
  loading 
}: { 
  customer: Customer | null; 
  orders: CustomerOrder[];
  open: boolean; 
  onClose: () => void;
  loading: boolean;
}) {
  if (!open) return null;

  const segment = customer ? (
    customer.orderCount >= 5 ? { label: 'VIP', color: 'bg-amber-100 text-amber-700' } :
    customer.orderCount >= 3 ? { label: 'Regular', color: 'bg-emerald-100 text-emerald-700' } :
    customer.orderCount === 1 ? { label: 'New', color: 'bg-blue-100 text-blue-700' } :
    { label: 'One-time', color: 'bg-zinc-500/10 text-slate-500' }
  ) : null;

  return (
    <>
      <div className="fixed inset-0 z-40 bg-slate-900/40 backdrop-blur-sm" onClick={onClose} />
      <div className="fixed right-0 top-0 z-50 h-screen w-full max-w-md border-l border-slate-200/50 bg-white shadow-xl overflow-y-auto">
        <div className="sticky top-0 z-10 flex items-center justify-between border-b border-slate-200/50 bg-white px-4 py-4">
          <div>
            <h2 className="text-lg font-semibold text-slate-800">Customer Details</h2>
            <p className="text-xs text-slate-400 mt-0.5">{customer?.email}</p>
          </div>
          <button onClick={onClose} className="p-2 rounded-md text-slate-400 hover:text-slate-600 hover:bg-white">
            <X className="h-5 w-5" />
          </button>
        </div>

        {customer && (
          <div className="p-4 space-y-4">
            {/* Segment & Stats */}
            <div className="rounded-lg border border-slate-200/50 bg-white p-4">
              <div className="flex items-center justify-between mb-3">
                <span className={`inline-flex rounded-full px-3 py-1.5 text-xs font-semibold uppercase ${segment?.color}`}>
                  {segment?.label}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <p className="text-xs text-slate-400">Total Spent</p>
                  <p className="text-xl font-bold text-emerald-600">{formatPrice(customer.totalSpent)}</p>
                </div>
                <div>
                  <p className="text-xs text-slate-400">Orders</p>
                  <p className="text-xl font-bold text-slate-800">{customer.orderCount}</p>
                </div>
              </div>
            </div>

            {/* Contact Info */}
            <div className="rounded-lg border border-slate-200/50 bg-white p-4 space-y-3">
              <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400">Liên hệ</h3>
              <div className="flex items-center gap-2 text-sm text-slate-600">
                <Mail className="h-4 w-4 text-slate-400" />
                {customer.email}
              </div>
              {customer.phone && (
                <div className="flex items-center gap-2 text-sm text-slate-600">
                  <Phone className="h-4 w-4 text-slate-400" />
                  {customer.phone}
                </div>
              )}
              <div className="flex items-center gap-2 text-sm text-slate-600">
                <Calendar className="h-4 w-4 text-slate-400" />
                Joined {new Date(customer.createdAt).toLocaleDateString()}
              </div>
            </div>

            {/* Activity */}
            <div className="rounded-lg border border-slate-200/50 bg-white p-4 space-y-3">
              <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400">Recent Orders</h3>
              {loading ? (
                <div className="flex items-center justify-center py-4">
                  <Loader2 className="h-5 w-5 animate-spin text-emerald-600" />
                </div>
              ) : orders.length === 0 ? (
                <p className="text-xs text-slate-400">No orders yet</p>
              ) : (
                <div className="space-y-2">
                  {orders.slice(0, 5).map((order) => (
                    <div key={order.id} className="flex items-center justify-between p-2 rounded bg-slate-50/50">
                      <div>
                        <p className="text-xs font-mono text-slate-600">#{order.id}</p>
                        <p className="text-[10px] text-slate-400">{new Date(order.createdAt).toLocaleDateString()}</p>
                      </div>
                      <div className="text-right">
                        <p className="text-sm font-semibold text-slate-700">{formatPrice(order.total)}</p>
                        <p className="text-[10px] text-slate-400">{order.status}</p>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>

            {/* Quick Actions */}
            <div className="rounded-lg border border-slate-200/50 bg-white p-4">
              <h3 className="text-xs font-semibold uppercase tracking-wider text-slate-400 mb-3">Quick Actions</h3>
              <div className="grid grid-cols-2 gap-2">
                <button disabled className="px-3 py-2 rounded-md border border-slate-200 bg-slate-50 text-xs text-slate-400 cursor-not-allowed opacity-50" title="Tính năng đang phát triển">
                  Send Email
                </button>
                <button disabled className="px-3 py-2 rounded-md border border-slate-200 bg-slate-50 text-xs text-slate-400 cursor-not-allowed opacity-50" title="Tính năng đang phát triển">
                  Add to Segment
                </button>
              </div>
            </div>
          </div>
        )}
      </div>
    </>
  );
}
