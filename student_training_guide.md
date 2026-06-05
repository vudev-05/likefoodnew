# GIÁO TRÌNH HƯỚNG DẪN ĐÀO TẠO & THUYẾT TRÌNH VỀ NEXT.JS
## CHỦ ĐỀ: LÀM CHỦ NEXT.JS - TỐI ƯU SEO VÀ HIỆU NĂNG CHO ỨNG DỤNG WEB HIỆN ĐẠI
*(Tài liệu hướng dẫn thực hành và giảng dạy dành cho sinh viên)*

Tài liệu này được biên soạn dưới dạng **giáo trình từng bước** để nhóm bạn sử dụng làm tài liệu bàn giao, slide thuyết trình và hướng dẫn trực tiếp cho các nhóm khác trong lớp học theo.

---

# PHẦN 1: NEXT.JS LÀ GÌ? TẠI SAO PHẢI DÙNG NEXT.JS? (LÝ THUYẾT NỀN TẢNG)

### 1. Nỗi đau của React thuần (Client-Side Rendering - CSR)
Để giải thích cho các nhóm khác hiểu, hãy dùng ví dụ thực tế:
* **Cách React hoạt động:** Khi người dùng truy cập trang React, Server chỉ trả về một file HTML rỗng (chỉ có thẻ `<div id="root"></div>`) kèm theo một file Javascript cực lớn. Trình duyệt của người dùng sau đó phải tải file JS này về, chạy nó để tự dựng (render) ra giao diện.
* **Tại sao không tốt cho SEO?** Bot tìm kiếm của Google (Googlebot) là một chương trình tự động đi cào thông tin. Khi nó truy cập trang React thuần, nó thấy một trang HTML rỗng và không đọc được nội dung (vì nó không đợi hoặc không chạy được Javascript phức tạp). Kết quả: Trang web không thể index từ khóa, không lên được top Google.
* **Tại sao không tốt cho người dùng?** Người dùng phải đợi trình duyệt tải và chạy xong đống JS lớn mới thấy nội dung -> Trang bị trắng lúc đầu (FCP/LCP cao).

### 2. Next.js giải quyết vấn đề đó thế nào? (Server-Side Rendering - SSR)
* **Next.js** là một Fullstack React Framework chạy mã nguồn ở phía máy chủ (Server).
* Khi người dùng hoặc bot Google truy cập, Server Next.js sẽ truy vấn database, kết hợp dữ liệu vào React Component, biên dịch sẵn thành mã HTML hoàn chỉnh có đầy đủ chữ, ảnh và thẻ meta rồi mới trả về trình duyệt.
* **Kết quả:** Bot Google đọc được HTML đầy đủ ngay lập tức (SEO cực tốt), người dùng thấy nội dung ngay lập tức mà không phải chờ tải file JS lớn (Performance cực nhanh).

---

# PHẦN 2: HƯỚNG DẪN CÀI ĐẶT NEXT.JS (DÀNH CHO NGƯỜI BẮT ĐẦU)

Hãy hướng dẫn các nhóm khác gõ các lệnh sau trên máy tính của họ:

### Bước 2.1: Cài đặt Node.js
* Yêu cầu mọi người tải và cài đặt phiên bản Node.js mới nhất (khuyên dùng bản LTS) từ [nodejs.org](https://nodejs.org/).
* Kiểm tra cài đặt thành công bằng cách gõ lệnh sau trong Terminal/Command Prompt:
  ```bash
  node -v
  npm -v
  ```

### Bước 2.2: Khởi tạo dự án Next.js bằng App Router
Chạy lệnh khởi tạo tự động (khuyên dùng App Router vì đây là cấu trúc hiện đại nhất của Next.js):
```bash
npx create-next-app@latest my-first-nextjs
```
Khi chạy lệnh, hệ thống sẽ hỏi một số câu hỏi, hướng dẫn mọi người chọn như sau:
1. `Would you like to use TypeScript?` -> **Yes** (Giúp code chuẩn xác hơn, tránh lỗi gõ sai biến).
2. `Would you like to use ESLint?` -> **Yes** (Bộ quét lỗi cú pháp tự động).
3. `Would you like to use Tailwind CSS?` -> **Yes** (Framework viết CSS nhanh bằng các class viết tắt).
4. `Would you like to use src/ directory?` -> **Yes** (Gộp toàn bộ code vào thư mục `src` cho gọn gàng).
5. `Would you like to use App Router? (recommended)` -> **Yes** (Bắt buộc chọn để học công nghệ mới nhất).
6. `Would you like to customize the default import alias (@/*)?` -> **No** (Dùng alias mặc định `@/` trỏ vào thư mục `src`).

Sau khi tải xong, truy cập vào thư mục và chạy thử server:
```bash
cd my-first-nextjs
npm run dev
```
Mở trình duyệt truy cập: [http://localhost:3000](http://localhost:3000) để xem giao diện mặc định.

### Bước 2.3: Giải thích cấu trúc thư mục App Router
Hãy giải thích cho các nhóm khác hiểu các file quan trọng nhất:
* `src/app/layout.tsx`: Giao diện khung dùng chung cho toàn bộ trang web (như Header, Footer, nhúng Font chữ).
* `src/app/page.tsx`: Giao diện của Trang chủ (`/`).
* `src/app/globals.css`: File chứa CSS toàn cục.

---

# PHẦN 3: HƯỚNG DẪN VIẾT TÍNH NĂNG SEO ĐỘNG (THỰC HÀNH CODE)

Đây là phần cốt lõi để hướng dẫn các nhóm khác thực hành viết mã nguồn chuẩn SEO. Ta sẽ tạo ra một trang chi tiết sản phẩm mô phỏng lại dự án **LIKEFOOD**.

### Bước 3.1: Tạo cấu trúc thư mục động
Next.js quản lý URL bằng thư mục. Để tạo đường dẫn dạng `/products/[slug]`, hướng dẫn các bạn tạo thư mục:
`src/app/products/[slug]/` và tạo file `page.tsx` ở bên trong.

### Bước 3.2: Viết code SEO động (generateMetadata) và Dữ liệu cấu trúc JSON-LD
Copy toàn bộ đoạn code dưới đây vào file `src/app/products/[slug]/page.tsx`:

```tsx
import type { Metadata } from "next";
import Image from "next/image";

interface Props {
  params: Promise<{ slug: string }>;
}

// 1. GIẢI THÍCH CHO LỚP: Hàm này giúp Next.js tự động tạo các thẻ Meta chuẩn SEO cho từng sản phẩm
export async function generateMetadata({ params }: Props): Promise<Metadata> {
  const { slug } = await params;
  
  // Giả lập lấy dữ liệu từ database (trong thực tế sẽ dùng Prisma/MySQL)
  const product = {
    name: slug === "ca-loc-kho" ? "Cá Lóc Khô Đồng Tháp" : "Đặc Sản Việt Nam",
    description: "Đặc sản cá lóc khô chính gốc Đồng Tháp thơm ngon, phơi 3 nắng tự nhiên, không chất bảo quản.",
    image: "https://likefood.app/images/ca-loc-kho.jpg"
  };

  return {
    title: `${product.name} | LIKEFOOD`,
    description: product.description,
    openGraph: {
      title: product.name,
      description: product.description,
      images: [{ url: product.image }],
    },
  };
}

// 2. Component chính hiển thị giao diện sản phẩm
export default async function ProductDetailPage({ params }: Props) {
  const { slug } = await params;

  // Dữ liệu mẫu giả lập
  const product = {
    id: 101,
    name: slug === "ca-loc-kho" ? "Cá Lóc Khô Đồng Tháp" : "Đặc Sản Việt Nam",
    price: 25.99,
    description: "Đặc sản cá lóc khô chính gốc Đồng Tháp thơm ngon, phơi 3 nắng tự nhiên, không chất bảo quản.",
    image: "https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?w=500" // Ảnh minh họa tạm thời
  };

  // GIẢI THÍCH CHO LỚP: Tạo dữ liệu JSON-LD cấu trúc để hiển thị giá/sao trên Google tìm kiếm (Rich Snippets)
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
      "availability": "https://schema.org/InStock"
    }
  };

  return (
    <div className="max-w-3xl mx-auto p-8 bg-white rounded-3xl shadow-sm mt-10">
      {/* Chèn cấu trúc dữ liệu JSON-LD ẩn vào HTML */}
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
      />

      <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
        {/* TỐI ƯU HIỆU NĂNG: Dùng thẻ Image của Next.js để tự động resize và tối ưu ảnh */}
        <div className="relative aspect-square bg-slate-100 rounded-2xl overflow-hidden">
          <Image
            src={product.image}
            alt={product.name}
            fill
            className="object-cover"
            priority // Ưu tiên load ảnh lớn này ngay lập tức (giảm chỉ số LCP)
          />
        </div>

        <div>
          <h1 className="text-3xl font-black text-slate-800">{product.name}</h1>
          <p className="text-2xl font-bold text-emerald-600 mt-2">${product.price}</p>
          <p className="text-slate-500 mt-4 text-sm leading-relaxed">{product.description}</p>
          
          <button className="mt-8 px-6 py-3 bg-emerald-600 text-white font-bold rounded-xl hover:bg-emerald-700 transition-colors">
            Thêm vào giỏ hàng
          </button>
        </div>
      </div>
    </div>
  );
}
```

---

# PHẦN 4: HƯỚNG DẪN CÁCH GIẢI THÍCH CODE (DÀNH CHO NGƯỜI THUYẾT TRÌNH)

Khi các nhóm khác hỏi hoặc khi thầy cô yêu cầu giải thích dòng code, hãy trình bày như sau:

1. **Tại sao lại dùng `params: Promise<{ slug: string }>`?**
   * *Giải thích:* Trong App Router phiên bản mới nhất, các tham số động trên URL (`params`) được trả về dưới dạng một Promise không đồng bộ. Ta phải dùng `await params` để trích xuất được biến `slug` từ URL.
2. **Thẻ `<Image>` của Next.js khác gì thẻ `<img>` của HTML thường?**
   * *Giải thích:* Thẻ `<img>` thường sẽ tải ảnh gốc rất nặng về trình duyệt gây chậm web. Thẻ `<Image>` của Next.js tự động chuyển định dạng sang WebP (nhẹ hơn 70%), tự động bóp nhỏ kích thước ảnh cho khít với màn hình điện thoại/máy tính và hỗ trợ lazy loading (chỉ tải ảnh khi cuộn tới).
3. **Thuộc tính `priority` trong thẻ `<Image>` có tác dụng gì?**
   * *Giải thích:* Nó ra lệnh cho trình duyệt tải bức ảnh này trước các tài nguyên khác, vì đây là ảnh tiêu điểm (Banner/Product Image) ở ngay đầu trang. Việc này giúp cải thiện trực tiếp chỉ số **LCP (Largest Contentful Paint)** trong điểm Core Web Vitals của Google.

---

# PHẦN 5: CÁC CÂU HỎI PHẢN BIỆN THƯỜNG GẶP (MOCK Q&A)

Hãy chuẩn bị trước các câu trả lời này để ghi điểm tuyệt đối trước lớp và thầy giáo:

* **Câu hỏi 1: Khi nào ta nên dùng Client Component (`"use client"`) thay vì Server Component?**
  * *Trả lời:* Ta chỉ dùng Client Component khi cần tương tác động với người dùng trên trình duyệt như: lắng nghe sự kiện (`onClick`, `onChange`), sử dụng React State (`useState`), React Effects (`useEffect`), hoặc truy cập các hàm Client của trình duyệt (như `window.location`, `localStorage`). Các trang thuần hiển thị thông tin như trang chủ, danh sách, chi tiết sản phẩm nên để mặc định là Server Component để tối ưu SEO.
* **Câu hỏi 2: Làm thế nào để kiểm tra xem một trang đã thực sự được tối ưu SEO bằng SSR hay chưa?**
  * *Trả lời:* Cách đơn giản nhất là mở trang web lên trình duyệt, nhấn phím **`Ctrl + U`** để xem mã nguồn trang (View Page Source). Nếu thấy nội dung chữ của bài viết hoặc các thẻ `<title>`, `<meta>` có đầy đủ nội dung thì đó là SSR/SSG. Nếu chỉ thấy một thẻ `<div>` rỗng và đống mã script thì đó là CSR (React thuần chưa tối ưu).
