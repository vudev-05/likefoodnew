/**
 * LIKEFOOD - Public MBBank Payment Info API
 * Returns only non-sensitive bank info needed for the payment page QR display
 */

import { NextResponse } from "next/server";
import prisma from "@/lib/prisma";
import { logger } from "@/lib/logger";

// Only expose these non-sensitive keys publicly
const PUBLIC_MBBANK_KEYS = [
    "mbbank_account_number",
    "mbbank_account_name",
    "usd_to_vnd_rate",
    "mbbank_enabled",
];

export async function GET() {
    try {
        const settings = await prisma.systemsetting.findMany({
            where: { key: { in: PUBLIC_MBBANK_KEYS } },
        });

        const result = Object.fromEntries(settings.map((s) => [s.key, s.value]));

        // Defaults
        return NextResponse.json({
            mbbank_account_number: result.mbbank_account_number || "",
            mbbank_account_name: result.mbbank_account_name || "LIKEFOOD STORE",
            usd_to_vnd_rate: result.usd_to_vnd_rate || "25000",
            mbbank_enabled: result.mbbank_enabled || "true",
        }, {
            headers: {
                "Cache-Control": "no-store, max-age=0",
            },
        });
    } catch (error) {
        logger.error("MBBank public settings error", error as Error, { context: "public-mbbank" });
        return NextResponse.json({
            mbbank_account_number: "",
            mbbank_account_name: "LIKEFOOD STORE",
            usd_to_vnd_rate: "25000",
            mbbank_enabled: "true",
        });
    }
}
