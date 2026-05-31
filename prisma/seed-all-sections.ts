/**
 * SEED FULL DATA — Flash Sale, Coupons, Banners, Reviews, Brands, Fix Categories
 */
import { PrismaClient } from "../src/generated/client";

const p = new PrismaClient();

async function main() {
    // ─── 1. Check existing data ───────────────────────────────────────────────
    const categories = await p.category.findMany({ orderBy: { id: "asc" } });
    const products = await p.product.findMany({ 
        select: { id: true, name: true, price: true, category: true, categoryId: true, featured: true },
        where: { isDeleted: false, isVisible: true }
    });
    
    console.log(`\n📊 Hiện có: ${categories.length} danh mục, ${products.length} sản phẩm`);

    // ─── 2. Fix categoryId for all products ──────────────────────────────────
    console.log("\n🔧 Fix categoryId cho sản phẩm...");
    const catMap: Record<string, number> = {};
    for (const cat of categories) {
        catMap[cat.name] = cat.id;
    }
    // Normalize category name → category id
    let fixed = 0;
    for (const prod of products) {
        if (!prod.categoryId) {
            // Try to find matching category
            const catId = catMap[prod.category] || 
                categories.find(c => prod.category.toLowerCase().includes(c.name.toLowerCase().split(" ")[0]))?.id;
            if (catId) {
                await p.product.update({ where: { id: prod.id }, data: { categoryId: catId } });
                fixed++;
            }
        }
    }
    console.log(`  ✅ Đã fix ${fixed} sản phẩm thiếu categoryId`);

    // ─── 3. Set featured products (top 20) ───────────────────────────────────
    console.log("\n⭐ Set featured products...");
    const allProds = await p.product.findMany({ 
        select: { id: true },
        where: { isDeleted: false, isVisible: true },
        take: 30,
        orderBy: { soldCount: "desc" }
    });
    for (const pr of allProds.slice(0, 20)) {
        await p.product.update({ where: { id: pr.id }, data: { featured: true } });
    }
    console.log(`  ✅ Đã set ${Math.min(20, allProds.length)} sản phẩm nổi bật`);

    // ─── 4. Create Flash Sale Campaign ───────────────────────────────────────
    console.log("\n⚡ Tạo Flash Sale Campaign...");
    const existingCampaigns = await p.flashsalecampaign.count();
    
    if (existingCampaigns === 0) {
        const now = new Date();
        const endDate = new Date(now);
        endDate.setHours(endDate.getHours() + 48); // 48 giờ
        
        const campaign = await p.flashsalecampaign.create({
            data: {
                name: "⚡ Flash Sale Đặc Sản Việt - Giảm 30-50%",
                startAt: now,
                endAt: endDate,
                isActive: true,
            }
        });
        
        // Add 30 products to flash sale (skip if already in a campaign)
        const flashProds = await p.product.findMany({
            select: { id: true, price: true, name: true },
            where: { isDeleted: false, isVisible: true },
            orderBy: { soldCount: "desc" },
            take: 50,
        });
        
        let flashCount = 0;
        for (const prod of flashProds) {
            if (flashCount >= 30) break;
            const discount = [0.5, 0.55, 0.6, 0.65, 0.7][Math.floor(Math.random() * 5)]; // 30-50% off
            const flashPrice = Math.round(prod.price * discount * 100) / 100;
            try {
                await p.flashsaleproduct.create({
                    data: {
                        campaignId: campaign.id,
                        productId: prod.id,
                        flashSalePrice: flashPrice,
                        stockLimit: Math.floor(Math.random() * 50) + 10,
                        soldCount: Math.floor(Math.random() * 30),
                    }
                });
                flashCount++;
            } catch { /* skip duplicate */ }
        }
        console.log(`  ✅ Tạo campaign "${campaign.name}" với ${flashCount} sản phẩm`);
    } else {
        // Check if active campaign has products
        const activeCampaign = await p.flashsalecampaign.findFirst({ 
            where: { isActive: true },
            include: { _count: { select: { products: true } } }
        });
        if (activeCampaign && activeCampaign._count.products < 10) {
            const existingProductIds = (await p.flashsaleproduct.findMany({
                where: { campaignId: activeCampaign.id },
                select: { productId: true }
            })).map(x => x.productId);
            
            const moreProds = await p.product.findMany({
                select: { id: true, price: true },
                where: { isDeleted: false, isVisible: true, id: { notIn: existingProductIds } },
                take: 30,
            });
            
            let added = 0;
            for (const prod of moreProds) {
                if (added >= 30 - activeCampaign._count.products) break;
                const discount = [0.5, 0.55, 0.6, 0.65, 0.7][Math.floor(Math.random() * 5)];
                try {
                    await p.flashsaleproduct.create({
                        data: {
                            campaignId: activeCampaign.id,
                            productId: prod.id,
                            flashSalePrice: Math.round(prod.price * discount * 100) / 100,
                            stockLimit: Math.floor(Math.random() * 50) + 10,
                            soldCount: Math.floor(Math.random() * 20),
                        }
                    });
                    added++;
                } catch { /* skip */ }
            }
            console.log(`  ✅ Thêm ${added} sản phẩm vào flash sale hiện có`);
        } else {
            console.log(`  ⏭️  Flash sale đã có ${activeCampaign?._count.products || 0} sản phẩm`);
        }
    }

    // ─── 5. Create Coupons / Vouchers ────────────────────────────────────────
    console.log("\n🎫 Tạo Coupons / Vouchers...");
    const existingCoupons = await p.coupon.count();
    
    if (existingCoupons < 5) {
        const coupons = [
            {
                code: "WELCOME10",
                discountType: "PERCENT",
                discountValue: 10,
                minOrderValue: 30,
                maxDiscount: 20,
                endDate: new Date(Date.now() + 365 * 24 * 60 * 60 * 1000),
                usageLimit: 1000,
                category: "all",
            },
            {
                code: "DACSAN20",
                discountType: "PERCENT",
                discountValue: 20,
                minOrderValue: 50,
                maxDiscount: 30,
                endDate: new Date(Date.now() + 180 * 24 * 60 * 60 * 1000),
                usageLimit: 500,
                category: "all",
            },
            {
                code: "FREESHIP",
                discountType: "FIXED",
                discountValue: 15,
                minOrderValue: 80,
                maxDiscount: null,
                endDate: new Date(Date.now() + 90 * 24 * 60 * 60 * 1000),
                usageLimit: 200,
                category: "all",
            },
            {
                code: "VIETNAM30",
                discountType: "PERCENT",
                discountValue: 30,
                minOrderValue: 100,
                maxDiscount: 50,
                endDate: new Date(Date.now() + 60 * 24 * 60 * 60 * 1000),
                usageLimit: 100,
                category: "all",
            },
            {
                code: "TET2026",
                discountType: "PERCENT",
                discountValue: 15,
                minOrderValue: 40,
                maxDiscount: 25,
                endDate: new Date("2026-12-31"),
                usageLimit: 2000,
                category: "all",
            },
            {
                code: "LIKEFOOD5",
                discountType: "FIXED",
                discountValue: 5,
                minOrderValue: 20,
                maxDiscount: null,
                endDate: new Date(Date.now() + 365 * 24 * 60 * 60 * 1000),
                usageLimit: 9999,
                category: "all",
            },
            {
                code: "SUMMER25",
                discountType: "PERCENT",
                discountValue: 25,
                minOrderValue: 75,
                maxDiscount: 40,
                endDate: new Date(Date.now() + 120 * 24 * 60 * 60 * 1000),
                usageLimit: 300,
                category: "all",
            },
            {
                code: "NEWUSER15",
                discountType: "PERCENT",
                discountValue: 15,
                minOrderValue: 25,
                maxDiscount: 20,
                endDate: new Date(Date.now() + 365 * 24 * 60 * 60 * 1000),
                usageLimit: 5000,
                category: "all",
            },
        ];
        
        let couponCount = 0;
        for (const cp of coupons) {
            try {
                await p.coupon.upsert({
                    where: { code: cp.code },
                    create: { ...cp, startDate: new Date() },
                    update: {},
                });
                couponCount++;
            } catch { /* skip */ }
        }
        console.log(`  ✅ Tạo ${couponCount} mã coupon`);
    } else {
        console.log(`  ⏭️  Đã có ${existingCoupons} coupons`);
    }

    // ─── 6. Create Banners ───────────────────────────────────────────────────
    console.log("\n🖼️  Tạo Banners...");
    const existingBanners = await p.banner.count();
    
    if (existingBanners < 3) {
        const banners = [
            {
                imageUrl: "/images/banner1.jpg",
                title: "Đặc Sản Việt Nam - Hương Vị Quê Nhà",
                titleEn: "Vietnamese Specialties - Taste of Home",
                subtitle: "100% chính gốc, giao hàng toàn cầu",
                subtitleEn: "100% authentic, worldwide delivery",
                ctaText: "Mua ngay",
                ctaTextEn: "Shop Now",
                ctaLink: "/products",
                priority: 1,
                isActive: true,
                placement: "home",
            },
            {
                imageUrl: "/images/banner2.jpg",
                title: "Flash Sale - Giảm Đến 50%",
                titleEn: "Flash Sale - Up to 50% Off",
                subtitle: "Chỉ hôm nay, số lượng có hạn!",
                subtitleEn: "Today only, limited stock!",
                ctaText: "Xem ngay",
                ctaTextEn: "View Now",
                ctaLink: "/flash-sale",
                priority: 2,
                isActive: true,
                placement: "home",
            },
            {
                imageUrl: "/images/banner3.jpg",
                title: "Hải Sản Khô Chính Gốc Phú Quốc",
                titleEn: "Authentic Phu Quoc Dried Seafood",
                subtitle: "Mực khô, tôm khô, cá khô cao cấp",
                subtitleEn: "Premium dried squid, shrimp, fish",
                ctaText: "Khám phá",
                ctaTextEn: "Explore",
                ctaLink: "/products?category=H%E1%BA%A3i+s%E1%BA%A3n+kh%C3%B4",
                priority: 3,
                isActive: true,
                placement: "home",
            },
            {
                imageUrl: "/images/banner4.jpg",
                title: "Trái Cây Sấy Healthy - Không Đường",
                titleEn: "Healthy Dried Fruits - No Sugar",
                subtitle: "Xoài, mít, chuối sấy tự nhiên 100%",
                subtitleEn: "100% natural mango, jackfruit, banana chips",
                ctaText: "Mua ngay",
                ctaTextEn: "Buy Now",
                ctaLink: "/products?category=Tr%C3%A1i+c%C3%A2y+s%E1%BA%A5y",
                priority: 4,
                isActive: true,
                placement: "home",
            },
        ];
        
        let bannerCount = 0;
        for (const banner of banners) {
            try {
                await p.banner.create({ data: banner });
                bannerCount++;
            } catch { /* skip */ }
        }
        console.log(`  ✅ Tạo ${bannerCount} banners`);
    } else {
        console.log(`  ⏭️  Đã có ${existingBanners} banners`);
    }

    // ─── 7. Create Reviews for products ──────────────────────────────────────
    console.log("\n⭐ Tạo Reviews...");
    const existingReviews = await p.review.count();
    
    if (existingReviews < 20) {
        // Get admin user to use as reviewer
        const adminUser = await p.user.findFirst({ where: { role: "ADMIN" } });
        if (!adminUser) {
            console.log("  ⚠️ Không có user để tạo review, bỏ qua");
        } else {
            const reviewProducts = await p.product.findMany({
                select: { id: true },
                where: { isDeleted: false },
                take: 40,
            });
            
            const reviewTemplates = [
                { rating: 5, comment: "Sản phẩm tuyệt vời! Hương vị đúng chất đặc sản quê nhà, đóng gói kỹ, giao hàng nhanh. Gia đình rất thích, sẽ mua tiếp!" },
                { rating: 5, comment: "Chất lượng vượt mong đợi. Mùi thơm tự nhiên, không chất bảo quản. Đây là lần thứ 3 mình mua và lần nào cũng hài lòng." },
                { rating: 4, comment: "Sản phẩm ngon, chất lượng tốt. Giao hàng đúng hẹn. Hộp đóng gói đẹp, phù hợp làm quà tặng. Sẽ giới thiệu cho bạn bè." },
                { rating: 5, comment: "Đặt mua về làm quà cho người thân ở nước ngoài, ai cũng khen ngon. Hàng chính gốc, uy tín. Shop rất nhiệt tình tư vấn." },
                { rating: 4, comment: "Ngon, giá hợp lý. Mình thích nhất là không có chất bảo quản, hoàn toàn tự nhiên. Đóng gói cẩn thận, không bị vỡ." },
                { rating: 5, comment: "Mình mua nhiều lần rồi, chưa lần nào thất vọng. Sản phẩm đặc sản thật sự, khác hẳn hàng bình thường ngoài chợ." },
                { rating: 5, comment: "Gia đình mình ở Mỹ, mỗi lần nhớ quê lại đặt ở đây. Hương vị đúng như ở Việt Nam, cảm ơn shop đã giữ được chất lượng!" },
                { rating: 4, comment: "Sản phẩm ngon, vận chuyển cẩn thận. Lần sau sẽ mua thêm số lượng lớn hơn để tiết kiệm ship." },
                { rating: 5, comment: "Tuyệt vời! Đây là món quà hoàn hảo cho người Việt ở xa quê. Mùi hương, vị ngon, hấp dẫn. 5 sao không đủ để diễn tả!" },
                { rating: 3, comment: "Sản phẩm ổn, nhưng mình kỳ vọng ngon hơn chút. Đóng gói đẹp, giao hàng nhanh. Sẽ thử thêm sản phẩm khác của shop." },
            ];
            
            let reviewCount = 0;
            for (let i = 0; i < reviewProducts.length && reviewCount < 50; i++) {
                const template = reviewTemplates[i % reviewTemplates.length];
                try {
                    await p.review.create({
                        data: {
                            productId: reviewProducts[i].id,
                            userId: adminUser.id,
                            rating: template.rating,
                            comment: template.comment,
                            status: "APPROVED",
                            createdAt: new Date(Date.now() - Math.random() * 90 * 24 * 60 * 60 * 1000),
                        }
                    });
                    reviewCount++;
                    
                    // Update product rating
                    await p.product.update({
                        where: { id: reviewProducts[i].id },
                        data: {
                            ratingAvg: template.rating - Math.random() * 0.3,
                            ratingCount: Math.floor(Math.random() * 50) + 5,
                            soldCount: Math.floor(Math.random() * 200) + 10,
                        }
                    });
                } catch { /* skip */ }
            }
            console.log(`  ✅ Tạo ${reviewCount} reviews`);
        }
    } else {
        console.log(`  ⏭️  Đã có ${existingReviews} reviews`);
    }

    // ─── 8. Create Brands ────────────────────────────────────────────────────
    console.log("\n🏷️  Tạo Brands...");
    const existingBrands = await p.brand.count();
    
    if (existingBrands < 5) {
        const brands = [
            { name: "LIKEFOOD", nameEn: "LIKEFOOD", slug: "likefood", isActive: true },
            { name: "Đặc Sản Quê Hương", nameEn: "Hometown Specialties", slug: "dac-san-que-huong", isActive: true },
            { name: "Phú Quốc Premium", nameEn: "Phu Quoc Premium", slug: "phu-quoc-premium", isActive: true },
            { name: "Hải Sản Miền Nam", nameEn: "Southern Seafood", slug: "hai-san-mien-nam", isActive: true },
            { name: "Nông Sản Sạch VN", nameEn: "Clean Farm VN", slug: "nong-san-sach-vn", isActive: true },
            { name: "Đặc Sản Huế", nameEn: "Hue Specialties", slug: "dac-san-hue", isActive: true },
            { name: "Mekong Foods", nameEn: "Mekong Foods", slug: "mekong-foods", isActive: true },
        ];
        
        let brandCount = 0;
        for (const brand of brands) {
            try {
                await p.brand.upsert({
                    where: { slug: brand.slug },
                    create: brand,
                    update: {},
                });
                brandCount++;
            } catch { /* skip */ }
        }
        
        // Assign brands to products round-robin
        const allBrands = await p.brand.findMany({ select: { id: true } });
        const allProductIds = await p.product.findMany({ 
            select: { id: true },
            where: { brandId: null, isDeleted: false }
        });
        
        let brandAssigned = 0;
        for (let i = 0; i < allProductIds.length; i++) {
            const brandId = allBrands[i % allBrands.length].id;
            await p.product.update({
                where: { id: allProductIds[i].id },
                data: { brandId }
            });
            brandAssigned++;
        }
        
        console.log(`  ✅ Tạo ${brandCount} brands, gán ${brandAssigned} sản phẩm`);
    } else {
        console.log(`  ⏭️  Đã có ${existingBrands} brands`);
    }

    // ─── 9. Update product salePrice ─────────────────────────────────────────
    console.log("\n💰 Set sale price cho sản phẩm...");
    const prodsWithoutSale = await p.product.findMany({
        select: { id: true, price: true },
        where: { isDeleted: false, isOnSale: false },
        take: 30,
        orderBy: { id: "asc" },
    });
    
    const saleEnd = new Date(Date.now() + 30 * 24 * 60 * 60 * 1000);
    let saleCount = 0;
    for (let i = 0; i < prodsWithoutSale.length; i += 3) {
        const prod = prodsWithoutSale[i];
        const discount = [0.8, 0.75, 0.85][i % 3];
        await p.product.update({
            where: { id: prod.id },
            data: {
                isOnSale: true,
                salePrice: Math.round(prod.price * discount * 100) / 100,
                saleEndAt: saleEnd,
                badgeText: i % 3 === 0 ? "HOT" : i % 3 === 1 ? "SALE" : "NEW",
                badgeTextEn: i % 3 === 0 ? "HOT" : i % 3 === 1 ? "SALE" : "NEW",
            }
        });
        saleCount++;
    }
    console.log(`  ✅ Set sale price cho ${saleCount} sản phẩm`);

    // ─── Final Summary ────────────────────────────────────────────────────────
    console.log("\n=== TỔNG KẾT ===");
    const [prodCount, catCount, flashCount, couponCount, bannerCount, reviewCount, brandCount] = await Promise.all([
        p.product.count({ where: { isDeleted: false } }),
        p.category.count(),
        p.flashsalecampaign.count({ where: { isActive: true } }),
        p.coupon.count({ where: { isActive: true } }),
        p.banner.count({ where: { isActive: true } }),
        p.review.count({ where: { status: "APPROVED" } }),
        p.brand.count(),
    ]);
    
    console.log(`  🛍️  Sản phẩm: ${prodCount}`);
    console.log(`  📂 Danh mục: ${catCount}`);
    console.log(`  ⚡ Flash Sale đang hoạt động: ${flashCount}`);
    console.log(`  🎫 Coupon đang active: ${couponCount}`);
    console.log(`  🖼️  Banners: ${bannerCount}`);
    console.log(`  ⭐ Reviews approved: ${reviewCount}`);
    console.log(`  🏷️  Brands: ${brandCount}`);
    console.log("\n✅ Hoàn tất seed tất cả sections!\n");
}

main().catch(e => { console.error(e); process.exit(1); }).finally(() => p.$disconnect());
