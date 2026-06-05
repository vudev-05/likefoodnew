# FILE HƯỚNG DẪN THỰC HÀNH CÔNG NGHỆ NEXT.JS
## TỐI ƯU SEO VÀ HIỆU NĂNG CHO ỨNG DỤNG WEB HIỆN ĐẠI (CASE STUDY: LIKEFOOD)

Tài liệu này hướng dẫn chi tiết từng bước xây dựng một trang chi tiết sản phẩm chuẩn SEO, tối ưu hiệu năng và tích hợp API route từ con số 0 dựa trên kiến trúc thực tế của dự án **LIKEFOOD**.

---

## 1. YÊU CẦU MÔI TRƯỜNG & KHỞI TẠO DỰ ÁN

### Yêu cầu môi trường:
* **Node.js:** Phiên bản `>= 20.0.0`
* **MySQL:** Phiên bản `>= 8.0` (hoặc PostgreSQL/SQLite tùy chọn)

### Lệnh khởi tạo dự án:
Mở terminal và chạy lệnh khởi tạo Next.js dự án mới:
```bash
npx -y create-next-app@latest my-seo-app --ts --tailwind --app --src-dir --eslint
```
Chọn các tùy chọn mặc định (Sử dụng App Router, TypeScript, Tailwind CSS, thư mục `src`).

Di chuyển vào thư mục dự án và cài đặt Prisma ORM để quản lý Database:
```bash
cd my-seo-app
npm install @prisma/client
npm install prisma --save-dev
npx prisma init
```

---

## 2. THIẾT LẬP CƠ SỞ DỮ LIỆU (DATABASE SCHEMA)
Mở file `prisma/schema.prisma` và thiết lập kết nối MySQL cùng định nghĩa cấu trúc bảng sản phẩm (`product`) và danh mục (`category`):

```prisma
datasource db {
  provider = "mysql"
  url      = env("DATABASE_URL")
}

generator client {
  provider = "prisma-client-js"
}

model category {
  id        Int       @id @default(autoincrement())
  name      String
  slug      String    @unique
  products  product[]
}

model product {
  id            Int       @id @default(autoincrement())
  name          String
  slug          String    @unique
  description   String    @db.Text
  price         Float
  image         String?
  inventory     Int       @default(0)
  categoryId    Int?
  categoryRel   category? @relation(fields: [categoryId], references: [id])
  createdAt     DateTime  @default(now())
  updatedAt     DateTime  @updatedAt
}
```

Cấu hình chuỗi kết nối trong file `.env`:
```env
DATABASE_URL="mysql://root:password@127.0.0.1:3306/my_seo_db"
```
Tạo bảng trong database bằng lệnh:
```bash
npx prisma db push
```

---

## 3. TẠO TRANG CHI TIẾT SẢN PHẨM TỐI ƯU SEO & HIỆU NĂNG
Tạo cấu trúc thư mục mới: `src/app/(shop)/products/[slug]/page.tsx` để render trang chi tiết sản phẩm phía Server.

### Bước 3.1: Sử dụng `generateMetadata` để tối ưu SEO động
Next.js hỗ trợ hàm `generateMetadata` chạy trên Server để sinh ra tiêu đề và các thẻ Meta chuẩn xác:

```typescript
import { notFound } from "next/navigation";
import type { Metadata } from "next";
import Image from "next/image";
import prisma from "@/lib/prisma"; // File khởi tạo prisma client

interface Props {
  params: Promise<{ slug: string }>;
}

// 1. Tối ưu SEO: Sinh thẻ Meta động dựa trên dữ liệu sản phẩm
export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { slug } = await params;
  const product = await prisma.product.findUnique({
    where: { slug },
  });

  if (!product) {
    return { title: "Sản phẩm không tồn tại" };
  }

  return {
    title: `${product.name} | Đặc sản LIKEFOOD`,
    description: product.description.slice(0, 155),
    openGraph: {
      title: product.name,
      description: product.description.slice(0, 155),
      images: product.image ? [{ url: product.image }] : [],
      type: "article",
    },
  };
}
```

### Bước 3.2: Viết Component hiển thị sản phẩm và chèn Dữ liệu có cấu trúc (JSON-LD)
JSON-LD giúp Google hiểu cấu trúc dữ liệu của trang để hiển thị kết quả tìm kiếm đẹp hơn (Rich Snippets).

```typescript
// 2. Component chính chạy trên Server (Server Component)
export default async function ProductDetailPage({ params }: Props) {
  const { slug } = await params;
  const product = await prisma.product.findUnique({
    where: { slug },
    include: { categoryRel: true },
  });

  if (!product) {
    notFound();
  }

  // Khởi tạo dữ liệu JSON-LD chuẩn Schema.org
  const jsonLd = {
    "@context": "https://schema.org",
    "@type": "Product",
    "name": product.name,
    "image": product.image,
    "description": product.description,
    "offers": {
      "@type": "Offer",
      "price": product.price,
      "priceCurrency": "USD",
      "availability": product.inventory > 0 ? "https://schema.org/InStock" : "https://schema.org/OutOfStock"
    }
  };

  return (
    <div className="max-w-4xl mx-auto p-6">
      {/* Nhúng dữ liệu cấu trúc vào mã nguồn HTML */}
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
        {/* Tối ưu hiệu năng: Sử dụng next/image thay cho thẻ img thông thường */}
        <div className="relative aspect-square w-full overflow-hidden rounded-2xl bg-slate-100">
          <Image
            src={product.image || "/placeholder.png"}
            alt={product.name}
            fill
            className="object-contain"
            priority // Tải ưu tiên cho bức ảnh lớn đầu trang (giảm LCP)
            sizes="(max-w-768px) 100vw, 50vw"
          />
        </div>

        <div className="flex flex-col justify-center">
          <span className="text-sm font-bold text-emerald-600 uppercase tracking-widest">
            {product.categoryRel?.name || "Đặc sản"}
          </span>
          <h1 className="text-3xl font-black text-slate-900 mt-2">{product.name}</h1>
          <p className="text-2xl font-bold text-slate-800 mt-4">${product.price.toFixed(2)}</p>
          <div className="prose text-slate-500 mt-6 text-sm leading-relaxed">
            {product.description}
          </div>
        </div>
      </div>
    </div>
  );
}
```

---

## 4. TỰ ĐỘNG TẠO SITEMAP VÀ ROBOTS.TXT
Để bot Google có thể cào toàn bộ sản phẩm trên website nhanh nhất, ta xây dựng tệp sitemap động.

Tạo file `src/app/sitemap.ts`:
```typescript
import { MetadataRoute } from "next";
import prisma from "@/lib/prisma";

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "https://likefood.app";

  // Lấy danh sách slug sản phẩm từ DB
  const products = await prisma.product.findMany({
    select: { slug: true, updatedAt: true },
  });

  const productEntries = products.map((p) => ({
    url: `${baseUrl}/products/${p.slug}`,
    lastModified: p.updatedAt,
    changeFrequency: "weekly" as const,
    priority: 0.8,
  }));

  return [
    {
      url: baseUrl,
      lastModified: new Date(),
      changeFrequency: "daily",
      priority: 1.0,
    },
    ...productEntries,
  ];
}
```

Tạo file `src/app/robots.ts`:
```typescript
import { MetadataRoute } from "next";

export default function robots(): MetadataRoute.Robots {
  const baseUrl = process.env.NEXT_PUBLIC_BASE_URL || "https://likefood.app";
  return {
    rules: {
      userAgent: "*",
      allow: "/",
      disallow: ["/admin", "/checkout"], // Không cho phép bot truy cập trang nhạy cảm
    },
    sitemap: `${baseUrl}/sitemap.xml`,
  };
}
```

---

## 5. THỂ HIỆN TÍNH FULLSTACK: VIẾT API ROUTE VÀ GỌI PHÍA CLIENT
Tạo file `src/app/api/products/route.ts` để viết API Endpoint lấy danh sách sản phẩm.

```typescript
import { NextResponse } from "next/server";
import prisma from "@/lib/prisma";

export async function GET() {
  try {
    const products = await prisma.product.findMany({
      take: 10,
      orderBy: { createdAt: "desc" },
    });
    return NextResponse.json(products);
  } catch {
    return NextResponse.json({ error: "Lỗi kết nối cơ sở dữ liệu" }, { status: 500 });
  }
}
```

---

## 6. KIỂM CHỨNG KẾT QUẢ THỰC HÀNH
1. **Kiểm tra SEO:** Chạy server `npm run dev`, mở trình duyệt truy cập `http://localhost:3000/products/san-pham-test`.
   * Bấm `Ctrl + U` (View Page Source).
   * Kiểm tra xem các thẻ `<title>` và `<meta name="description">` có chứa nội dung sản phẩm thật hay không (Chắc chắn có).
2. **Kiểm tra hiệu năng:** Mở Chrome DevTools -> tab **Lighthouse** -> bấm **Analyze page load** để đo điểm Performance và SEO của trang.
