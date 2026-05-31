"use client";

/**
 * LIKEFOOD - Admin Layout Client (Light Theme)
 */

import AdminSidebar from "@/components/shared/AdminSidebar";
import AdminBreadcrumbs from "@/components/shared/AdminBreadcrumbs";
import { CommandPalette, useCommandPalette } from "@/components/admin/CommandPalette";

export default function AdminLayoutClient({
    children,
}: {
    children: React.ReactNode;
}) {
    const { open, setOpen } = useCommandPalette();

    return (
        <div className="admin-light flex min-h-screen bg-slate-50">
            <AdminSidebar />
            <main className="flex-1 lg:ml-56 transition-all duration-200">
                <div className="max-w-[1600px] mx-auto p-4 lg:p-6">
                    <AdminBreadcrumbs />
                    {children}
                </div>
            </main>
            <CommandPalette open={open} onOpenChange={setOpen} />
        </div>
    );
}
