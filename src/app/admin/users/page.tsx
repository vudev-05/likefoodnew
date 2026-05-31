"use client";

/**
 * LIKEFOOD - Vietnamese Specialty Marketplace
 * Copyright (c) 2026 LIKEFOOD Team
 * Licensed under the MIT License
 * https://github.com/tranquocvu-3011/likefood
 */

import { useCallback, useEffect, useMemo, useState } from "react";
import { Loader2, RefreshCw, Shield, UserCog, Users } from "lucide-react";
import { toast } from "sonner";
import { Button } from "@/components/ui/button";
import { AdminCard, AdminPageContainer, AdminTableContainer } from "@/components/admin/AdminPageContainer";
import { AdminFilterBar } from "@/components/admin/AdminSearch";
import { AdminPagination } from "@/components/admin/AdminPagination";
import { useDebounce } from "@/hooks/useDebounce";

type Role = "USER" | "ADMIN";

interface AdminUser {
  id: number;
  email: string;
  name: string | null;
  role: Role;
  createdAt: string;
}

const PAGE_SIZE = 15;
const ROLE_OPTIONS: Role[] = ["USER", "ADMIN"];

export default function AdminUsersPage() {
  const [users, setUsers] = useState<AdminUser[]>([]);
  const [page, setPage] = useState(1);
  const [total, setTotal] = useState(0);
  const [search, setSearch] = useState("");
  const [roleFilter, setRoleFilter] = useState("all");
  const [isLoading, setIsLoading] = useState(true);
  const [savingId, setSavingId] = useState<number | null>(null);
  const debouncedSearch = useDebounce(search, 300);

  const loadUsers = useCallback(async () => {
    setIsLoading(true);
    try {
      const params = new URLSearchParams({
        page: page.toString(),
        limit: PAGE_SIZE.toString(),
        role: roleFilter,
      });
      if (debouncedSearch) params.set("search", debouncedSearch);

      const response = await fetch(`/api/admin/users?${params.toString()}`);
      const data = await response.json().catch(() => ({}));
      if (!response.ok) {
        throw new Error(data?.error || "Không thể tải danh sách người dùng.");
      }

      setUsers(Array.isArray(data.users) ? data.users : []);
      setTotal(data.pagination?.total || 0);
    } catch (error) {
      toast.error(error instanceof Error ? error.message : "Không thể tải danh sách người dùng.");
    } finally {
      setIsLoading(false);
    }
  }, [debouncedSearch, page, roleFilter]);

  useEffect(() => {
    void loadUsers();
  }, [loadUsers]);

  useEffect(() => {
    setPage(1);
  }, [debouncedSearch, roleFilter]);

  const handleRoleChange = async (userId: number, role: Role) => {
    setSavingId(userId);
    try {
      const response = await fetch("/api/admin/users", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ userId, role }),
      });
      const data = await response.json().catch(() => ({}));
      if (!response.ok) {
        throw new Error(data?.error || "Không thể cập nhật vai trò.");
      }

      setUsers((prev) => prev.map((user) => (user.id === userId ? { ...user, role: data.user.role } : user)));
      toast.success("Đã cập nhật vai trò.");
    } catch (error) {
      toast.error(error instanceof Error ? error.message : "Không thể cập nhật vai trò.");
    } finally {
      setSavingId(null);
    }
  };

  const stats = useMemo(() => ({
    admins: users.filter((user) => user.role === "ADMIN").length,
    members: users.filter((user) => user.role === "USER").length,
  }), [users]);

  return (
    <AdminPageContainer
      title="Người dùng & Phân quyền"
      subtitle="Tìm kiếm, xem và cập nhật vai trò tài khoản ngay trong trang quản trị."
      action={
        <Button variant="outline" size="lg" onClick={() => void loadUsers()} disabled={isLoading}>
          <RefreshCw className={`h-4 w-4 ${isLoading ? "animate-spin" : ""}`} />
          Làm mới
        </Button>
      }
    >
      <div className="grid gap-4 lg:grid-cols-3">
        <AdminCard className="p-5"><Stat label="Người dùng hiển thị" value={`${total}`} tone="text-slate-700" /></AdminCard>
        <AdminCard className="p-5"><Stat label="Thành viên" value={`${stats.members}`} tone="text-slate-600" /></AdminCard>
        <AdminCard className="p-5"><Stat label="Quản trị viên" value={`${stats.admins}`} tone="text-sky-600" /></AdminCard>
      </div>

      <AdminFilterBar searchQuery={search} setSearchQuery={setSearch} searchPlaceholder="Tìm theo email hoặc tên">
        <div className="flex flex-wrap gap-2">
          {['all', ...ROLE_OPTIONS].map((option) => (
            <button
              key={option}
              type="button"
              onClick={() => setRoleFilter(option)}
              className={`rounded-full px-4 py-2 text-xs font-black uppercase tracking-[0.16em] transition ${roleFilter === option ? 'bg-zinc-200 text-zinc-900' : 'border border-slate-200/60 bg-slate-50 text-slate-500 hover:border-zinc-500 hover:text-slate-700'}`}
            >
              {option === 'all' ? 'Tất cả vai trò' : option}
            </button>
          ))}
        </div>
      </AdminFilterBar>

      <AdminTableContainer>
        <table className="w-full text-left">
          <thead>
            <tr className="border-b border-slate-200/60 bg-slate-50/60">
              {['Tài khoản', 'Tên', 'Vai trò', 'Ngày tạo', 'Thao tác'].map((header) => (
                <th key={header} className="px-6 py-4 text-[11px] font-black uppercase tracking-[0.2em] text-slate-400">{header}</th>
              ))}
            </tr>
          </thead>
          <tbody className="divide-y divide-slate-100/30">
            {isLoading ? (
              Array.from({ length: 6 }).map((_, index) => (
                <tr key={index} className="animate-pulse"><td colSpan={5} className="px-6 py-5"><div className="h-4 w-1/2 rounded-full bg-slate-100/50" /></td></tr>
              ))
            ) : users.length === 0 ? (
              <tr>
                <td colSpan={5} className="px-6 py-20 text-center">
                  <Users className="mx-auto h-10 w-10 text-slate-500" />
                  <h3 className="mt-4 text-lg font-black text-slate-500">Không tìm thấy người dùng</h3>
                  <p className="mt-2 text-sm text-slate-400">Thử tìm kiếm rộng hơn hoặc đổi bộ lọc vai trò.</p>
                </td>
              </tr>
            ) : users.map((user) => (
              <tr key={user.id} className="transition hover:bg-slate-100/20">
                <td className="px-6 py-5">
                  <div className="flex items-center gap-3">
                    <div className="flex h-11 w-11 items-center justify-center rounded-2xl bg-slate-100/50 text-slate-500">
                      <UserCog className="h-4 w-4" />
                    </div>
                    <div>
                      <p className="font-black text-slate-700">{user.email}</p>
                      <p className="mt-1 text-xs text-slate-400">ID: #{user.id}</p>
                    </div>
                  </div>
                </td>
                <td className="px-6 py-5 text-sm font-medium text-slate-500">{user.name || 'Không có tên'}</td>
                <td className="px-6 py-5"><RoleBadge role={user.role} /></td>
                <td className="px-6 py-5 text-sm font-medium text-slate-500">{new Date(user.createdAt).toLocaleDateString('vi-VN', { month: 'short', day: '2-digit', year: 'numeric' })}</td>
                <td className="px-6 py-5">
                  <div className="flex flex-wrap gap-2">
                    {ROLE_OPTIONS.map((role) => (
                      <Button key={role} size="sm" variant={user.role === role ? 'default' : 'outline'} onClick={() => handleRoleChange(user.id, role)} disabled={savingId === user.id}>
                        {savingId === user.id && user.role !== role ? <Loader2 className="h-4 w-4 animate-spin" /> : <Shield className="h-4 w-4" />}
                        {role}
                      </Button>
                    ))}
                  </div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        <AdminPagination page={page} setPage={setPage} pageSize={PAGE_SIZE} total={total} itemLabel="người dùng" />
      </AdminTableContainer>
    </AdminPageContainer>
  );
}

function Stat({ label, value, tone }: { label: string; value: string; tone: string }) {
  return <div><p className="text-[11px] font-black uppercase tracking-[0.18em] text-slate-500">{label}</p><p className={`mt-2 text-3xl font-black ${tone}`}>{value}</p></div>;
}

function RoleBadge({ role }: { role: Role }) {
  const styles: Record<Role, string> = {
    USER: 'bg-slate-100/50 text-slate-600',
    ADMIN: 'bg-sky-900/50 text-sky-400',
  };
  return <span className={`rounded-full px-3 py-2 text-xs font-black uppercase tracking-[0.16em] ${styles[role]}`}>{role}</span>;
}
