/**
 * LIKEFOOD - Seed Categories Script
 * Tạo danh mục sản phẩm trong database
 */
import { PrismaClient } from "../src/generated/client";

const prisma = new PrismaClient();

const categories = [
  {
    name: "Cá khô",
    nameEn: "Dried Fish",
    slug: "ca-kho",
    description: "Các loại cá khô đặc sản miền Tây Nam Bộ",
    descriptionEn: "Dried fish specialties from the Mekong Delta",
    imageUrl: "/cakho.jpeg",
    position: 1,
    isVisible: true,
    isActive: true,
  },
  {
    name: "Tôm & Mực khô",
    nameEn: "Dried Shrimp & Squid",
    slug: "tom-muc-kho",
    description: "Tôm khô, mực khô và hải sản khô đặc sản Việt Nam",
    descriptionEn: "Dried shrimp, squid and seafood specialties",
    imageUrl: "/muckho.png",
    position: 2,
    isVisible: true,
    isActive: true,
  },
  {
    name: "Trái cây sấy",
    nameEn: "Dried Fruits",
    slug: "trai-cay-say",
    description: "Trái cây sấy dẻo, sấy giòn các loại",
    descriptionEn: "Soft and crispy dried fruits",
    imageUrl: "/traicaysay.jpeg",
    position: 3,
    isVisible: true,
    isActive: true,
  },
  {
    name: "Trà & Bánh mứt",
    nameEn: "Tea & Confectionery",
    slug: "tra-banh-mut",
    description: "Trà Việt Nam và các loại bánh mứt truyền thống",
    descriptionEn: "Vietnamese tea and traditional confectionery",
    imageUrl: "/tra.jpeg",
    position: 4,
    isVisible: true,
    isActive: true,
  },
  {
    name: "Gia vị Việt",
    nameEn: "Vietnamese Spices",
    slug: "gia-vi-viet",
    description: "Gia vị, nước mắm, mắm và các loại gia vị Việt Nam",
    descriptionEn: "Fish sauce, shrimp paste and Vietnamese condiments",
    imageUrl: "/giavi.jpeg",
    position: 5,
    isVisible: true,
    isActive: true,
  },
  {
    name: "Đồ ăn vặt",
    nameEn: "Snacks",
    slug: "do-an-vat",
    description: "Bánh kẹo, đồ ăn vặt Việt Nam",
    descriptionEn: "Vietnamese snacks and candies",
    imageUrl: "/doanvat.jpeg",
    position: 6,
    isVisible: true,
    isActive: true,
  },
];

async function main() {
  console.log("🌱 Seeding categories...");

  for (const cat of categories) {
    const existing = await prisma.category.findUnique({
      where: { slug: cat.slug },
    });

    if (existing) {
      console.log(`  ⏭️  Category "${cat.name}" already exists, skipping...`);
      continue;
    }

    await prisma.category.create({ data: cat });
    console.log(`  ✅ Created category: ${cat.name}`);
  }

  // Gán categoryId cho sản phẩm theo tên danh mục string
  console.log("\n🔗 Linking products to categories...");

  const allCategories = await prisma.category.findMany();
  const catMap = new Map(allCategories.map((c) => [c.name, c.id]));

  const products = await prisma.product.findMany({
    where: { categoryId: null, isDeleted: false },
    select: { id: true, name: true, category: true },
  });

  let linked = 0;
  for (const product of products) {
    const catId = catMap.get(product.category);
    if (catId) {
      await prisma.product.update({
        where: { id: product.id },
        data: { categoryId: catId },
      });
      linked++;
    }
  }

  console.log(`  ✅ Linked ${linked} products to categories`);
  console.log("\n🎉 Categories seeded successfully!");
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error("❌ Seed failed:", e);
    await prisma.$disconnect();
    process.exit(1);
  });
