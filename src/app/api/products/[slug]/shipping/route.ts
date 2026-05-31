/**
 * LIKEFOOD - Vietnamese Specialty Marketplace
 * Copyright (c) 2026 LIKEFOOD Team
 * Licensed under the MIT License
 * https://github.com/tranquocvu-3011/likefood
 */

import { NextRequest, NextResponse } from "next/server";
import { getServerSession } from "next-auth";
import { authOptions } from "@/lib/auth";
import prisma from "@/lib/prisma";
import { logger } from "@/lib/logger";
import {
    DEFAULT_SHIPPING_FEE_USD,
    FREE_SHIPPING_THRESHOLD_USD,
} from "@/lib/commerce";

// GET /api/products/[slug]/shipping - Get shipping info and estimate fee
export async function GET(
    request: NextRequest,
    { params }: { params: Promise<{ slug: string }> }
) {
    try {
        const { slug } = await params;
        const { searchParams } = new URL(request.url);
        const quantity = Math.max(1, parseInt(searchParams.get("quantity") || "1", 10) || 1);

        const product = await prisma.product.findUnique({
            where: { slug },
            select: {
                id: true,
                price: true,
                // NOTE: productshipping model not in schema — using store defaults
            },
        });

        if (!product) {
            return NextResponse.json({ error: "Product not found" }, { status: 404 });
        }

        const orderTotal = product.price * quantity;
        const freeShipMin = FREE_SHIPPING_THRESHOLD_USD;
        const shippingFee = DEFAULT_SHIPPING_FEE_USD;
        const estimatedDays = 4;
        const isFreeShip = orderTotal >= freeShipMin;
        const totalShippingFee = isFreeShip ? 0 : shippingFee;

        return NextResponse.json({
            weight: null,
            dimensions: null,
            shippingFee,
            freeShipMin,
            estimatedDays,
            canShip: true,
            totalShippingFee,
            isFreeShip,
        });
    } catch (error) {
        logger.error("Get shipping info error", error as Error, {
            context: "shipping-api-get",
        });
        return NextResponse.json({ error: "Failed to fetch shipping info" }, { status: 500 });
    }
}

// POST /api/products/[slug]/shipping - Not implemented (productshipping model not in schema)
export async function POST(
    _request: NextRequest,
    _params: { params: Promise<{ slug: string }> }
) {
    return NextResponse.json(
        { error: "Shipping model not available. Add productshipping to prisma schema to enable." },
        { status: 501 }
    );
}



