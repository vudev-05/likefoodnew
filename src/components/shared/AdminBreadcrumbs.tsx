"use client";

/**
 * LIKEFOOD - Admin Breadcrumbs (Light Theme)
 */

import Link from "next/link";
import { usePathname } from "next/navigation";
import { ChevronRight, Home } from "lucide-react";

const PATH_LABELS: Record<string, string> = {
  admin: "Quản trị",
  dashboard: "Bảng điều khiển",
  products: "Sản phẩm",
  new: "Tạo mới",
  edit: "Chỉnh sửa",
  orders: "Đơn hàng",
  customers: "Khách hàng",
  users: "Người dùng",
  coupons: "Mã giảm giá",
  analytics: "Phân tích",
  settings: "Cài đặt",
  ai: "Phòng AI",
  inventory: "Kho hàng",
  categories: "Danh mục",
  brands: "Thương hiệu",
  'flash-sales': "Flash Sale",
  posts: "Bài viết",
  cms: "Quản lý nội dung",
  reviews: "Đánh giá",
  pages: "Trang tĩnh",
  menu: "Menu",
  homepage: "Trang chủ",
  knowledge: "AI Knowledge",
  'live-chat': "Live Chat",
  verify: "Xác minh",
  login: "Đăng nhập",
  newsletter: "Email đăng ký",
  feedback: "Phản hồi",
  'contact-messages': "Tin nhắn liên hệ",
};

export default function AdminBreadcrumbs() {
  const pathname = usePathname();
  const segments = pathname.split("/").filter(Boolean);

  if (pathname === "/admin/dashboard" || pathname === "/admin") {
    return null;
  }

  const breadcrumbs = segments.map((segment, index) => {
    const href = `/${segments.slice(0, index + 1).join("/")}`;
    const label = PATH_LABELS[segment] || (segment.length > 18 ? `${segment.slice(0, 8)}...` : segment);
    return {
      href,
      label,
      isLast: index === segments.length - 1,
    };
  });

  return (
    <nav className="mb-4 flex flex-wrap items-center gap-1 text-xs">
      <Link
        href="/admin/dashboard"
        className="inline-flex h-7 w-7 items-center justify-center rounded-lg border border-slate-200 bg-white text-slate-500 shadow-sm transition hover:bg-emerald-50 hover:text-emerald-600 hover:border-emerald-200"
      >
        <Home className="h-3.5 w-3.5" />
      </Link>
      {breadcrumbs.map((crumb) => (
        <span key={crumb.href} className="inline-flex items-center gap-1">
          <ChevronRight className="h-3 w-3 text-slate-300" />
          {crumb.isLast ? (
            <span className="rounded-lg border border-emerald-100 bg-emerald-50 px-2.5 py-1 font-semibold text-emerald-700">
              {crumb.label}
            </span>
          ) : (
            <Link
              href={crumb.href}
              className="rounded-lg px-2.5 py-1 font-medium text-slate-500 transition hover:bg-slate-100 hover:text-slate-700"
            >
              {crumb.label}
            </Link>
          )}
        </span>
      ))}
    </nav>
  );
}
