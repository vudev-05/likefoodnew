import { PrismaClient } from "../src/generated/client";

const prisma = new PrismaClient();

const newCategories = [
    { name: "Gạo & Nông sản", slug: "gao-nong-san", image: "/gao-nong-san.png" },
    { name: "Đồ uống", slug: "do-uong", image: "/do-uong.png" },
    { name: "Đặc sản vùng miền", slug: "dac-san-vung-mien", image: "/dac-san-vung-mien.png" },
];

async function main() {
    console.log("Adding 3 more categories...");
    for (const [index, cat] of newCategories.entries()) {
        const existing = await prisma.category.findUnique({
            where: { slug: cat.slug }
        });
        if (!existing) {
            await prisma.category.create({
                data: {
                    name: cat.name,
                    slug: cat.slug,
                    position: index + 6,
                    isActive: true,
                    isVisible: true,
                }
            });
            console.log("Created category", cat.name);
        }
    }
}

main().catch(console.error).finally(() => prisma.$disconnect());
