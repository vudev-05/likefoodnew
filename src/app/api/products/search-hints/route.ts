/**
 * LIKEFOOD - Vietnamese Specialty Marketplace
 * Copyright (c) 2026 LIKEFOOD Team
 * Licensed under the MIT License
 * https://github.com/tranquocvu-3011/likefood
 *
 * Search Hints API — smart autocomplete with:
 * - Vietnamese diacritics-insensitive search ("ca" → "Cá khô")
 * - Category + description search (not just name)
 * - Popular products boosted by soldCount
 * - Trending/popular suggestions when no results
 */

import { NextResponse } from "next/server";
import { NextRequest } from "next/server";
import prisma from "@/lib/prisma";
import { Prisma } from "@/generated/client";
import { applyRateLimit, apiRateLimit, getRateLimitIdentifier } from "@/lib/ratelimit";

/**
 * Strip Vietnamese diacritics for fuzzy matching
 * "Cá khô miền Tây" → "Ca kho mien Tay"
 */
function stripDiacritics(str: string): string {
    return str
        .normalize("NFD")
        .replace(/[\u0300-\u036f]/g, "")
        .replace(/đ/g, "d")
        .replace(/Đ/g, "D");
}

export async function GET(req: NextRequest) {
    try {
        const identifier = getRateLimitIdentifier(req);
        const rl = await applyRateLimit(identifier, apiRateLimit, { windowMs: 60000, maxRequests: 60 });
        if (!rl.success) return NextResponse.json({ hints: [] }, { status: 429 });

        const { searchParams } = new URL(req.url);
        const q = (searchParams.get("q") || "").trim();

        if (!q || q.length < 1) {
            return NextResponse.json({ hints: [] });
        }

        if (q.length > 100) {
            return NextResponse.json({ hints: [] });
        }

        const cleanSearch = q.trim();
        const words = cleanSearch.split(/\s+/).filter(Boolean);
        let products: any[] = [];

        if (words.length > 0) {
            const searchConditions = words.map(word => {
                const stripped = word
                    .normalize("NFD")
                    .replace(/[\u0300-\u036f]/g, "")
                    .replace(/đ/g, "d")
                    .replace(/Đ/g, "D");
                return {
                    OR: [
                        { name: { contains: word } },
                        { name: { contains: stripped } },
                        { searchKeywords: { contains: word } },
                        { searchKeywords: { contains: stripped } },
                        { slug: { contains: stripped } }
                    ]
                };
            });

            products = await prisma.product.findMany({
                where: {
                    AND: searchConditions,
                    inventory: { gt: 0 },
                    isDeleted: false,
                    isVisible: true,
                },
                select: {
                    id: true,
                    name: true,
                    category: true,
                    price: true,
                    image: true,
                    slug: true,
                },
                orderBy: {
                    soldCount: "desc"
                },
                take: 10,
            });
        }

        // Strategy 2: If still no results, try popular products as suggestions
        if (products.length === 0 && q.length >= 2) {
            products = await prisma.product.findMany({
                where: {
                    inventory: { gt: 0 },
                    isDeleted: false,
                    isVisible: true,
                },
                select: {
                    id: true,
                    name: true,
                    category: true,
                    price: true,
                    image: true,
                    slug: true,
                },
                orderBy: {
                    soldCount: "desc"
                },
                take: 6,
            });
        }

        // Chuẩn hóa trường slug để đảm bảo an toàn nếu slug bị null
        const hints = products.map(p => ({
            ...p,
            slug: p.slug || String(p.id)
        }));

        const res = NextResponse.json({ hints });
        res.headers.set("Cache-Control", "public, s-maxage=30, stale-while-revalidate=60");
        return res;
    } catch {
        return NextResponse.json({ hints: [] });
    }
}
