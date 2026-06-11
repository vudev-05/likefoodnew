<div align="center">
  <img src="public/logo.png" alt="LikeFood Logo" width="200" />
  <h1>🛒 LIKEFOOD: NỀN TẢNG THƯƠNG MẠI ĐIỆN TỬ HIỆN ĐẠI</h1>
  <p><i>Đồ án Hệ sinh thái E-Commerce toàn diện mang Đặc sản Việt Nam vươn tầm quốc tế</i></p>

  <p>
    <img src="https://img.shields.io/badge/Next.js-15-black?logo=next.js" alt="Next.js" />
    <img src="https://img.shields.io/badge/TypeScript-5.x-blue?logo=typescript" alt="TypeScript" />
    <img src="https://img.shields.io/badge/Prisma-ORM-1B222D?logo=prisma" alt="Prisma" />
    <img src="https://img.shields.io/badge/TailwindCSS-v4-06B6D4?logo=tailwindcss" alt="Tailwind CSS" />
  </p>
</div>

---

## 🌟 1. CÁC ĐIỂM NHẤN CÔNG NGHỆ (KEY FEATURES)

Dự án được xây dựng với kiến trúc doanh nghiệp, giải quyết triệt để 3 bài toán lớn của Web hiện đại: **Hiệu năng, SEO, và Trải nghiệm người dùng (UX)**.

*   🚀 **Tối ưu Hiệu năng (Performance 100/100):** Tận dụng tối đa **React Server Components (RSC)** kết hợp cơ chế caching (Data Cache, Full Route Cache) của Next.js App Router. Hình ảnh và Font chữ được tự động nén và tối ưu hóa qua thẻ `<Image>` và `next/font`.
*   🔍 **Tối ưu SEO (Search Engine Optimization):** Cấu hình chuẩn kỹ thuật SEO của Google với **Metadata API**, sơ đồ trang động `sitemap.ts`, `robots.ts`, và đánh dấu dữ liệu cấu trúc **JSON-LD** (Rich Snippets).
*   🤖 **AI Trợ lý ảo:** Tích hợp mô hình ngôn ngữ lớn (OpenAI) để tư vấn khách hàng, tìm kiếm sản phẩm thông minh dựa trên context cửa hàng.
*   🔒 **Bảo mật & Thanh toán:** Tích hợp cổng thanh toán quốc tế **Stripe**, xác thực đa nền tảng với **NextAuth.js**, và giới hạn tốc độ truy cập (Rate Limiting) chống DDoS.

---

## 🛠 2. NGĂN XẾP CÔNG NGHỆ (TECH STACK)

*   **Frontend:** Next.js (App Router), TypeScript, Tailwind CSS v4, Framer Motion, Radix UI.
*   **Backend:** Next.js Route Handlers (API RESTful), NextAuth.js (Authentication).
*   **Database:** MySQL (Relational DB), Prisma ORM (Type-safe query builder).
*   **Services:** Stripe (Payment), OpenAI (AI Chatbot), Sentry (Error Tracking).

---

## 🚀 3. HƯỚNG DẪN CÀI ĐẶT (GETTING STARTED)

Làm theo các bước sau để thiết lập dự án trên môi trường Local (máy tính cá nhân).

### Yêu cầu môi trường
*   Node.js >= 18.x (Khuyến nghị dùng bản LTS mới nhất)
*   MySQL Server đang chạy ở cổng 3306.
*   Trình quản lý gói: `npm`, `yarn` hoặc `pnpm`.

### Bước 1: Clone dự án và cài đặt
Mở terminal và chạy lệnh:
```bash
git clone https://github.com/tranquocvu-3011/likefood.git
cd likefood
npm install
```

### Bước 2: Cấu hình biến môi trường (Các KEY quan trọng)
Dự án quản lý cấu hình tập trung qua file `.env`. Hãy copy file `.env.example` thành `.env` (hoặc mở trực tiếp file `.env` hiện tại). File này đã được thiết kế và chú thích tiếng Việt cực kỳ chi tiết thành 12 nhóm cấu hình:

1. **Cấu hình Domain & SEO:** Khai báo `NEXT_PUBLIC_APP_URL` (ví dụ `http://localhost:3000`) để định tuyến đúng các thẻ Meta SEO.
2. **Kết nối Database:** Cung cấp chuỗi kết nối MySQL vào `DATABASE_URL`.
3. **Bảo mật (NextAuth):** Cung cấp `NEXTAUTH_SECRET` (chuỗi ngẫu nhiên bảo mật) và `NEXTAUTH_URL`.
4. **Google OAuth:** Cấu hình Client ID và Secret để cho phép user đăng nhập bằng Google.
5. **Trí tuệ nhân tạo (OpenAI):** Cung cấp `OPENAI_API_KEY` để kích hoạt trợ lý ảo Chatbot thông minh.
6. **Thanh toán quốc tế (Stripe):** Điền các khóa `STRIPE_SECRET_KEY`, `PUBLISHABLE_KEY` và `WEBHOOK_SECRET` để xử lý thanh toán thật.
7. **Hệ thống Email (SMTP):** Cấu hình tài khoản Gmail và App Password để hệ thống tự động gửi hóa đơn mua hàng.
8. **Thông báo Telegram:** Cung cấp `TELEGRAM_BOT_TOKEN` để hệ thống bắn thông báo ngay khi có đơn hàng mới về điện thoại của bạn.
9. **Bộ nhớ đệm (Redis):** Cấu hình `REDIS_URL` để tối ưu tốc độ và bật khiên chống spam (Rate Limiting).
10. **Chống Spam (Cloudflare Turnstile):** Thay thế ReCAPTCHA cũ kĩ bằng giải pháp nhẹ và mượt hơn từ Cloudflare.

*(Mẹo: Hãy mở trực tiếp file `.env.example` trong source code, bạn sẽ thấy toàn bộ hướng dẫn tiếng Việt chi tiết cho việc lấy từng loại KEY ở đâu).*

### Bước 3: Khởi tạo Cơ sở dữ liệu
Chạy các lệnh sau để nạp cấu trúc bảng (Schema) vào MySQL và tạo dữ liệu gốc (Seed Data):
```bash
npx prisma db push
npm run db:seed
```

### Bước 4: Khởi chạy dự án
Khởi động server ở chế độ phát triển:
```bash
npm run dev
```
Truy cập trang web tại: **[http://localhost:3000](http://localhost:3000)**

---

## 🏗 4. CẤU TRÚC THƯ MỤC CỐT LÕI

*   `src/app/`: Chứa toàn bộ các Route (trang), Layouts, và API Handlers theo chuẩn App Router.
*   `src/components/`: Chứa các UI Components dùng chung (Buttons, Cards, Modals).
*   `src/lib/`: Chứa các hàm tiện ích, cấu hình Prisma, Stripe, và NextAuth.
*   `prisma/schema.prisma`: Nơi khai báo kiến trúc Database (hơn 50 bảng chuẩn hóa).
*   `public/`: Chứa các tài nguyên tĩnh như hình ảnh, biểu tượng.

---

## 🌐 5. TRIỂN KHAI LÊN PRODUCTION (DEPLOYMENT)

Để dự án đạt điểm tối đa về hiệu năng và SEO, dự án này được thiết kế để triển khai (deploy) hoàn hảo trên nền tảng **Vercel**.

1. Đẩy code lên GitHub.
2. Đăng nhập Vercel và Import Repository.
3. Trong phần **Environment Variables**, điền đầy đủ các KEY đã có trong tệp `.env` ở Bước 2.
4. Bấm **Deploy** và tận hưởng tốc độ của Edge Network.

---

<div align="center">
  <b>Bản quyền © 2026 Trần Quốc Vũ. Đồ án được xây dựng phục vụ nghiên cứu và phát triển phần mềm chuẩn doanh nghiệp.</b>
</div>
