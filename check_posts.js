const { PrismaClient } = require('./src/generated/client');
const prisma = new PrismaClient();

async function main() {
    const posts = await prisma.post.findMany({
        take: 5,
        orderBy: { publishedAt: 'desc' },
        select: { id: true, title: true, image: true }
    });
    console.log(posts);
}

main().finally(() => prisma.$disconnect());
