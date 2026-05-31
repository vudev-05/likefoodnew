import { PrismaClient } from "../src/generated/client";
const p = new PrismaClient();

async function check() {
    const campaign = await p.flashsalecampaign.findFirst({
        where: { isActive: true },
        include: { 
            _count: { select: { products: true } },
            products: { 
                take: 5, 
                include: { product: { select: { name: true, price: true } } } 
            }
        }
    });
    
    console.log("=== FLASH SALE ===");
    console.log("Campaign:", campaign?.name);
    console.log("Active:", campaign?.isActive);
    console.log("End:", campaign?.endAt);
    console.log("Total products:", campaign?._count.products);
    campaign?.products.forEach(fp => {
        console.log(`  - ${fp.product.name}: $${fp.product.price} → $${fp.flashSalePrice}`);
    });
    
    const coupons = await p.coupon.findMany({ where: { isActive: true }, select: { code: true, discountType: true, discountValue: true } });
    console.log("\n=== COUPONS ===");
    coupons.forEach(c => console.log(`  ${c.code}: ${c.discountType} ${c.discountValue}`));
    
    const banners = await p.banner.findMany({ where: { isActive: true }, select: { title: true, placement: true } });
    console.log("\n=== BANNERS ===");
    banners.forEach(b => console.log(`  [${b.placement}] ${b.title}`));

    const reviews = await p.review.count({ where: { status: "APPROVED" } });
    console.log("\n=== REVIEWS ===", reviews, "approved");
}

check().finally(() => p.$disconnect());
