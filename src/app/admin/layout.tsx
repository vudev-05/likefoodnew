/**
 * LIKEFOOD - Vietnamese Specialty Marketplace
 * Copyright (c) 2026 LIKEFOOD Team
 * Licensed under the MIT License
 * https://github.com/tranquocvu-3011/likefood
 */

import { getServerSession } from "next-auth";
import { authOptions } from "@/lib/auth";
import { redirect } from "next/navigation";
import AdminLayoutClient from "./AdminLayoutClient";
import type { Metadata } from "next";

export const metadata: Metadata = {
    robots: {
        index: false,
        follow: false,
        googleBot: {
            index: false,
            follow: false,
            "max-snippet": 0,
            "max-image-preview": "none",
            "max-video-preview": 0,
        },
    },
};

export default async function AdminLayout({
    children,
}: {
    children: React.ReactNode;
}) {
    const session = await getServerSession(authOptions);

    // Not logged in → go to admin login
    if (!session) {
        redirect("/admin/login");
    }

    // Logged in but not ADMIN → back to home
    if (session.user?.role !== "ADMIN") {
        redirect("/");
    }

    // ADMIN verified → render directly, no extra 2FA
    return <AdminLayoutClient>{children}</AdminLayoutClient>;
}
