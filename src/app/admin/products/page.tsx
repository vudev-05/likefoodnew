"use client";

/**
 * LIKEFOOD - Premium Products Management Module
 * Phase 2: Enhanced Catalog UX with Split Layout
 */

import { useCallback, useEffect, useMemo, useState } from "react";
import { useSearchParams, useRouter, usePathname } from "next/navigation";
import Image from "next/image";
import Link from "next/link";
import { 
  Edit, 
  Loader2, 
  Package, 
  Plus, 
  RefreshCw, 
  Trash2,
  Search,
  X,
  Star
} from "lucide-react";
import { toast } from "sonner";
import { formatPrice } from "@/lib/currency";

interface AdminCategoryOption {
  id: number;
  name: string;
  slug: string;
}

interface Product {
  id: number;
  slug?: string | null;
  name: string;
  price: number;
  originalPrice?: number | null;
  category: string;
  weight?: string | null;
  inventory: number;
  soldCount?: number;
  ratingAvg?: number;
  ratingCount?: number;
  image?: string | null;
  featured?: boolean;
  isVisible?: boolean;
  status?: string;
}

const PAGE_SIZE = 15;

const SORT_OPTIONS = [
  { value: 'newest', label: 'Newest' },
  { value: 'name', label: 'Name A-Z' },
  { value: 'price-asc', label: 'Price Low-High' },
  { value: 'price-desc', label: 'Price High-Low' },
  { value: 'best-selling', label: 'Best Selling' },
  { value: 'top-rated', label: 'Top Rated' },
];

const STATUS_CONFIG = [
  { key: 'ALL', label: 'All', color: 'bg-zinc-500/10 text-slate-500' },
  { key: 'ACTIVE', label: 'Active', color: 'bg-emerald-100 text-emerald-700' },
  { key: 'DRAFT', label: 'Draft', color: 'bg-zinc-500/10 text-slate-500' },
  { key: 'LOW_STOCK', label: 'Low Stock', color: 'bg-amber-100 text-amber-700' },
  { key: 'OUT_OF_STOCK', label: 'Out of Stock', color: 'bg-red-100 text-red-700' },
];

export default function AdminProductsPage() {
  const searchParams = useSearchParams();
  const router = useRouter();
  const pathname = usePathname();
  const urlPage = Number(searchParams.get("page")) || 1;
  const [products, setProducts] = useState<Product[]>([]);
  const [total, setTotal] = useState(0);
  const [page, setPage] = useState(urlPage);

  // Sync page state ← URL (khi redirect từ edit page về ?page=4)
  useEffect(() => {
    if (urlPage !== page) setPage(urlPage);
  }, [urlPage]);

  // Sync URL ← page state (khi click pagination)
  const changePage = useCallback((newPage: number) => {
    setPage(newPage);
    const params = new URLSearchParams(searchParams.toString());
    params.set("page", String(newPage));
    router.replace(`${pathname}?${params.toString()}`, { scroll: false });
  }, [searchParams, router, pathname]);
  const [search, setSearch] = useState("");
  const [category, setCategory] = useState("");
  const [stockFilter, setStockFilter] = useState("ALL");
  const [visibilityFilter, setVisibilityFilter] = useState("ALL");
  const [sort, setSort] = useState("newest");
  const [isLoading, setIsLoading] = useState(true);
  const [deleteId, setDeleteId] = useState<number | null>(null);
  const [adminCategories, setAdminCategories] = useState<AdminCategoryOption[]>([]);
  
  // Selection
  const [selectedProducts, setSelectedProducts] = useState<Set<number>>(new Set());

  // Fetch categories from admin API
  useEffect(() => {
    fetch("/api/admin/categories")
      .then((r) => (r.ok ? r.json() : Promise.reject(r)))
      .then((data: unknown) => {
        if (Array.isArray(data)) setAdminCategories(data as AdminCategoryOption[]);
      })
      .catch(() => {/* silent */});
  }, []);

  const fetchProducts = useCallback(async () => {
    setIsLoading(true);
    try {
      const params = new URLSearchParams({
        page: page.toString(),
        limit: PAGE_SIZE.toString(),
        sort,
      });

      if (search) params.set("search", search);
      if (category) params.set("category", category);
      if (stockFilter !== "ALL") params.set("stock", stockFilter);
      if (visibilityFilter !== "ALL") params.set("visibility", visibilityFilter);

      // Use admin products API (shows hidden products too)
      const response = await fetch(`/api/admin/products?${params.toString()}`);
      const data = await response.json().catch(() => ({}));
      if (!response.ok) throw new Error(data?.error || "Không thể tải danh sách sản phẩm");

      const productList = Array.isArray(data.products) ? data.products : [];
      setProducts(productList);
      setTotal(data.pagination?.total || 0);
    } catch (error) {
      toast.error(error instanceof Error ? error.message : "Không thể tải danh sách sản phẩm");
    } finally {
      setIsLoading(false);
    }
  }, [page, search, category, sort, stockFilter, visibilityFilter]);

  useEffect(() => {
    void fetchProducts();
  }, [fetchProducts]);

  useEffect(() => {
    setPage(1);
  }, [search, category, sort, stockFilter, visibilityFilter]);

  const stats = useMemo(() => {
    const lowStock = products.filter(p => p.inventory > 0 && p.inventory < 10).length;
    const outOfStock = products.filter(p => p.inventory <= 0).length;
    const featured = products.filter(p => p.featured).length;
    return { lowStock, outOfStock, featured, total: products.length };
  }, [products]);

  const handleDelete = async (productId: number) => {
    if (!confirm("Delete this product?")) return;
    setDeleteId(productId);
    try {
      const response = await fetch(`/api/products?id=${productId}`, { method: "DELETE" });
      const data = await response.json().catch(() => ({}));
      if (!response.ok) throw new Error(data?.error || "Không thể xóa sản phẩm");
      toast.success("Đã xóa sản phẩm");
      await fetchProducts();
    } catch (error) {
      toast.error(error instanceof Error ? error.message : "Không thể xóa sản phẩm");
    } finally {
      setDeleteId(null);
    }
  };

  const handleBulkDelete = async () => {
    if (!confirm(`Delete ${selectedProducts.size} selected products?`)) return;
    const ids = Array.from(selectedProducts);
    let failed = 0;
    await Promise.all(ids.map(async (id) => {
      try {
        const res = await fetch(`/api/products?id=${id}`, { method: "DELETE" });
        if (!res.ok) failed++;
      } catch { failed++; }
    }));
    if (failed > 0) toast.error(`${failed} sản phẩm không thể xóa`);
    else toast.success(`Đã xóa ${ids.length} sản phẩm`);
    setSelectedProducts(new Set());
    await fetchProducts();
  };

  const handleBulkFeature = async () => {
    const ids = Array.from(selectedProducts);
    const targetProducts = products.filter(p => ids.includes(p.id) && p.slug);
    let failed = 0;
    await Promise.all(targetProducts.map(async (p) => {
      try {
        const res = await fetch(`/api/products/${p.slug}`, {
          method: "PATCH",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ featured: true }),
        });
        if (!res.ok) failed++;
      } catch { failed++; }
    }));
    if (failed > 0) toast.error(`${failed} sản phẩm không thể cập nhật`);
    else toast.success(`Đã đánh dấu ${ids.length} sản phẩm nổi bật`);
    setSelectedProducts(new Set());
    await fetchProducts();
  };

  const toggleSelectAll = () => {
    if (selectedProducts.size === products.length) {
      setSelectedProducts(new Set());
    } else {
      setSelectedProducts(new Set(products.map(p => p.id)));
    }
  };

  const toggleSelect = (productId: number) => {
    const newSelected = new Set(selectedProducts);
    if (newSelected.has(productId)) newSelected.delete(productId);
    else newSelected.add(productId);
    setSelectedProducts(newSelected);
  };

  const getStockStatus = (product: Product) => {
    if (product.inventory <= 0) return { label: 'Out', color: 'bg-red-100 text-red-700' };
    if (product.inventory < 10) return { label: 'Low', color: 'bg-amber-100 text-amber-700' };
    return { label: 'In Stock', color: 'bg-emerald-100 text-emerald-700' };
  };

  return (
    <div className="space-y-4">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-xl font-semibold text-slate-800">Products</h1>
          <p className="text-sm text-slate-400 mt-0.5">Manage your product catalog</p>
        </div>
        <div className="flex items-center gap-2">
          <button 
            onClick={() => void fetchProducts()}
            disabled={isLoading}
            className="px-3.5 py-2 rounded-md border border-slate-200 bg-slate-50 text-sm font-medium text-slate-600 hover:bg-white transition-colors flex items-center gap-2"
          >
            <RefreshCw className={`h-4 w-4 ${isLoading ? 'animate-spin' : ''}`} />
            Refresh
          </button>
          <Link 
            href="/admin/products/new"
            className="px-3.5 py-2 rounded-md bg-emerald-600 text-sm font-medium text-white hover:bg-emerald-500 transition-colors flex items-center gap-2"
          >
            <Plus className="h-4 w-4" />
            Add Product
          </Link>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-2 lg:grid-cols-4 gap-3">
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Total Products</p>
          <p className="text-2xl font-bold text-slate-800 mt-1">{total}</p>
        </div>
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Low Stock</p>
          <p className="text-2xl font-bold text-amber-600 mt-1">{stats.lowStock}</p>
        </div>
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Out of Stock</p>
          <p className="text-2xl font-bold text-red-600 mt-1">{stats.outOfStock}</p>
        </div>
        <div className="rounded-lg border border-slate-200/50 bg-white p-4">
          <p className="text-xs font-medium text-slate-400 uppercase">Featured</p>
          <p className="text-2xl font-bold text-amber-600 mt-1">{stats.featured}</p>
        </div>
      </div>

      {/* Filter Bar */}
      <div className="rounded-lg border border-slate-200/50 bg-white p-3">
        <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
          <div className="relative flex-1 max-w-md">
            <Search className="pointer-events-none absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-slate-400" />
            <input
              type="text"
              placeholder="Search products by name or slug..."
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              className="h-9 w-full rounded-md border border-slate-300 bg-slate-50 pl-9 pr-8 text-sm text-slate-800 placeholder:text-slate-400 focus:border-emerald-500 focus:outline-none"
            />
            {search && (
              <button onClick={() => setSearch('')} className="absolute right-2 top-1/2 -translate-y-1/2 text-slate-400 hover:text-slate-600">
                <X className="h-4 w-4" />
              </button>
            )}
          </div>
          
          <div className="flex items-center gap-2">
            <select
              value={category}
              onChange={(e) => setCategory(e.target.value)}
              className="h-9 rounded-md border border-slate-200 bg-slate-50 px-3 text-sm text-slate-800"
            >
              <option value="">Tất cả danh mục</option>
              {adminCategories.map((cat) => (
                <option key={cat.id} value={cat.id}>{cat.name}</option>
              ))}
            </select>
            <select
              value={visibilityFilter}
              onChange={(e) => setVisibilityFilter(e.target.value)}
              className="h-9 rounded-md border border-slate-200 bg-slate-50 px-3 text-sm text-slate-800"
            >
              <option value="ALL">Tất cả (ẩn + hiện)</option>
              <option value="VISIBLE">Đang hiển thị</option>
              <option value="HIDDEN">Đã ẩn</option>
            </select>
            <select
              value={stockFilter}
              onChange={(e) => setStockFilter(e.target.value)}
              className="h-9 rounded-md border border-slate-200 bg-slate-50 px-3 text-sm text-slate-800"
            >
              {STATUS_CONFIG.map(opt => (
                <option key={opt.key} value={opt.key}>{opt.label}</option>
              ))}
            </select>
            <select
              value={sort}
              onChange={(e) => setSort(e.target.value)}
              className="h-9 rounded-md border border-slate-200 bg-slate-50 px-3 text-sm text-slate-800"
            >
              {SORT_OPTIONS.map(opt => (
                <option key={opt.value} value={opt.value}>{opt.label}</option>
              ))}
            </select>
          </div>
        </div>
      </div>

      {/* Bulk Actions */}
      {selectedProducts.size > 0 && (
        <div className="rounded-lg border border-emerald-500/30 bg-emerald-500/5 px-4 py-2.5 flex items-center justify-between">
          <span className="text-sm font-medium text-blue-600">{selectedProducts.size} selected</span>
          <div className="flex items-center gap-2">
            <button onClick={() => void handleBulkFeature()} className="h-8 px-3 rounded-md border border-slate-200 bg-slate-50 text-xs text-slate-600 hover:bg-white">
              Set Featured
            </button>
            <button disabled className="h-8 px-3 rounded-md border border-slate-200 bg-slate-50 text-xs text-slate-400 cursor-not-allowed opacity-50" title="Tính năng đang phát triển">
              Set Category
            </button>
            <button onClick={() => void handleBulkDelete()} className="h-8 px-3 rounded-md border border-red-600/30 bg-red-600/10 text-xs text-red-600 hover:bg-red-600/20">
              Delete
            </button>
          </div>
        </div>
      )}

      {/* Table */}
      <div className="rounded-lg border border-slate-200/50 bg-white overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead>
              <tr className="border-b border-slate-200/50 bg-slate-50/50">
                <th className="w-10 px-4 py-3">
                  <input 
                    type="checkbox" 
                    checked={selectedProducts.size === products.length && products.length > 0}
                    onChange={toggleSelectAll}
                    className="rounded border-slate-300 bg-white text-emerald-600"
                  />
                </th>
                <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Product</th>
                <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Category</th>
                <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Price</th>
                <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Stock</th>
                <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Visibility</th>
                <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Sales</th>
                <th className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-wider text-slate-400">Rating</th>
                <th className="w-20 px-4 py-3"></th>
              </tr>
            </thead>
            <tbody className="divide-y divide-slate-200/50">
              {isLoading ? (
                Array.from({ length: 6 }).map((_, i) => (
                  <tr key={i} className="animate-pulse">
                    <td className="px-4 py-4"><div className="h-4 w-4 bg-white rounded" /></td>
                    <td className="px-4 py-4"><div className="h-12 w-48 bg-white rounded" /></td>
                    <td className="px-4 py-4"><div className="h-4 w-20 bg-white rounded" /></td>
                    <td className="px-4 py-4"><div className="h-4 w-16 bg-white rounded" /></td>
                    <td className="px-4 py-4"><div className="h-6 w-16 bg-white rounded-full" /></td>
                    <td className="px-4 py-4"><div className="h-6 w-16 bg-white rounded-full" /></td>
                    <td className="px-4 py-4"><div className="h-4 w-12 bg-white rounded" /></td>
                    <td className="px-4 py-4"><div className="h-4 w-12 bg-white rounded" /></td>
                    <td className="px-4 py-4"><div className="h-8 w-8 bg-white rounded" /></td>
                  </tr>
                ))
              ) : products.length === 0 ? (
                <tr>
                  <td colSpan={9} className="px-4 py-20 text-center">
                    <Package className="mx-auto h-10 w-10 text-slate-500" />
                    <h3 className="mt-4 text-sm font-medium text-slate-500">No products found</h3>
                    <p className="mt-1 text-xs text-slate-400">Try adjusting your filters</p>
                  </td>
                </tr>
              ) : (
                products.map((product) => {
                  const stockStatus = getStockStatus(product);
                  return (
                    <tr key={product.id} className="transition-colors hover:bg-slate-50/30">
                      <td className="px-4 py-4">
                        <input 
                          type="checkbox" 
                          checked={selectedProducts.has(product.id)}
                          onChange={() => toggleSelect(product.id)}
                          className="rounded border-slate-300 bg-white text-emerald-600"
                        />
                      </td>
                      <td className="px-4 py-4">
                        <div className="flex items-center gap-3">
                          <div className="h-12 w-12 rounded-md bg-white overflow-hidden flex items-center justify-center flex-shrink-0">
                            {product.image ? (
                              <Image
                                src={product.image}
                                alt={product.name}
                                width={48}
                                height={48}
                                className="object-cover w-full h-full"
                                unoptimized
                                onError={(e) => {
                                  const target = e.target as HTMLImageElement;
                                  target.style.display = "none";
                                  if (target.parentElement) {
                                    target.parentElement.innerHTML = '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-slate-500"><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"/></svg>';
                                  }
                                }}
                              />
                            ) : (
                              <Package className="h-5 w-5 text-slate-500" />
                            )}
                          </div>
                          <div>
                            <p className="text-sm font-medium text-slate-700 max-w-[200px] truncate">{product.name}</p>
                            <p className="text-xs text-slate-400">{product.slug}</p>
                          </div>
                        </div>
                      </td>
                      <td className="px-4 py-4 text-sm text-slate-500">
                        {product.category}
                      </td>
                      <td className="px-4 py-4">
                        <p className="text-sm font-semibold text-slate-700">{formatPrice(product.price)}</p>
                        {product.originalPrice && product.originalPrice > product.price && (
                          <p className="text-xs text-slate-400 line-through">{formatPrice(product.originalPrice)}</p>
                        )}
                      </td>
                      <td className="px-4 py-4">
                        <span className={`inline-flex rounded-full px-2.5 py-1 text-[10px] font-semibold uppercase ${stockStatus.color}`}>
                          {product.inventory} - {stockStatus.label}
                        </span>
                      </td>
                      <td className="px-4 py-4">
                        <span className={`inline-flex rounded-full px-2.5 py-1 text-[10px] font-semibold uppercase ${product.isVisible !== false ? 'bg-emerald-100 text-emerald-700' : 'bg-slate-100/50 text-slate-400'}`}>
                          {product.isVisible !== false ? 'Hiển thị' : 'Đã ẩn'}
                        </span>
                      </td>
                      <td className="px-4 py-4 text-sm text-slate-500">
                        {product.soldCount || 0}
                      </td>
                      <td className="px-4 py-4">
                        {product.ratingAvg ? (
                          <div className="flex items-center gap-1">
                            <Star className="h-3.5 w-3.5 text-amber-600 fill-current" />
                            <span className="text-sm text-slate-600">{product.ratingAvg.toFixed(1)}</span>
                            <span className="text-xs text-slate-400">({product.ratingCount})</span>
                          </div>
                        ) : (
                          <span className="text-xs text-slate-400">-</span>
                        )}
                      </td>
                      <td className="px-4 py-4">
                        <div className="flex items-center gap-1">
                          <Link 
                            href={`/admin/products/${product.id}/edit?returnPage=${page}`}
                            className="p-2 rounded-md text-slate-400 hover:text-slate-600 hover:bg-white transition-colors"
                          >
                            <Edit className="h-4 w-4" />
                          </Link>
                          <button 
                            onClick={() => handleDelete(product.id)}
                            disabled={deleteId === product.id}
                            className="p-2 rounded-md text-slate-400 hover:text-red-600 hover:bg-white transition-colors"
                          >
                            {deleteId === product.id ? (
                              <Loader2 className="h-4 w-4 animate-spin" />
                            ) : (
                              <Trash2 className="h-4 w-4" />
                            )}
                          </button>
                        </div>
                      </td>
                    </tr>
                  );
                })
              )}
            </tbody>
          </table>
        </div>

        {/* Pagination */}
        {total > PAGE_SIZE && (() => {
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
                Showing {((page - 1) * PAGE_SIZE) + 1} to {Math.min(page * PAGE_SIZE, total)} of {total} products
              </p>
              <div className="flex items-center gap-1">
                <button
                  onClick={() => changePage(Math.max(1, page - 1))}
                  disabled={page === 1}
                  className="h-8 w-8 rounded-md border border-slate-200 bg-slate-50 text-slate-400 hover:text-slate-600 disabled:opacity-40"
                >
                  ←
                </button>
                {getVisiblePages().map((p, idx) =>
                  p === -1 ? (
                    <span key={`ellipsis-${idx}`} className="h-8 w-6 flex items-center justify-center text-slate-400 text-xs">…</span>
                  ) : (
                    <button
                      key={p}
                      onClick={() => changePage(p)}
                      className={`h-8 w-8 rounded-md text-xs font-medium ${
                        page === p
                          ? 'bg-emerald-500 text-white'
                          : 'border border-slate-200 bg-slate-50 text-slate-500 hover:text-slate-700'
                      }`}
                    >
                      {p}
                    </button>
                  )
                )}
                <button
                  onClick={() => changePage(Math.min(Math.ceil(total / PAGE_SIZE), page + 1))}
                  disabled={page >= totalPages}
                  className="h-8 w-8 rounded-md border border-slate-200 bg-slate-50 text-slate-400 hover:text-slate-600 disabled:opacity-40"
                >
                  →
                </button>
              </div>
            </div>
          );
        })()}
      </div>
    </div>
  );
}
