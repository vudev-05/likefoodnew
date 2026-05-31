<div align="center">
  <img src="public/logo.png" alt="LikeFood Logo" width="200" />
  <h1>ĐỒ ÁN CƠ SỞ: NỀN TẢNG THƯƠNG MẠI ĐIỆN TỬ LIKEFOOD</h1>
  <p><i>Hệ sinh thái E-Commerce toàn diện mang Đặc sản Việt Nam vươn tầm quốc tế</i></p>
</div>

---

## 📖 1. TỔNG QUAN DỰ ÁN (PROJECT OVERVIEW)

**LikeFood** là một nền tảng thương mại điện tử (E-Commerce Platform) được kiến trúc và phát triển chuyên sâu nhằm mục đích phân phối các sản phẩm đặc sản Việt Nam tại thị trường Hoa Kỳ. 

Khác với các website bán hàng thông thường, đồ án này được thiết kế theo **kiến trúc hệ thống doanh nghiệp (Enterprise Architecture)**, giải quyết các bài toán phức tạp về:
- **Tối ưu hóa hiệu suất (Web Performance):** Xử lý hình ảnh, caching linh hoạt (ISR/SSG) để đáp ứng lượng truy cập lớn.
- **Trải nghiệm người dùng (UX/UI):** Giao diện hiện đại, áp dụng Glassmorphism, Micro-interactions (Framer Motion) và Responsive tuyệt đối.
- **Bảo mật & Thanh toán:** Tích hợp cổng thanh toán Stripe an toàn tuyệt đối, hệ thống xác thực 2 lớp (2FA), bảo vệ API bằng Rate Limiting.
- **Trợ lý ảo AI:** Tích hợp mô hình RAG (Retrieval-Augmented Generation) kết hợp OpenAI để tư vấn khách hàng 24/7.

---

## 🛠 2. NGĂN XẾP CÔNG NGHỆ CHUYÊN SÂU (TECH STACK)

Hệ thống được phát triển hoàn toàn dựa trên hệ sinh thái JavaScript/TypeScript hiện đại nhất:

### 2.1. Frontend (Giao diện người dùng)
- **Core Framework:** `Next.js 16.1.6` (App Router) – Tận dụng tối đa React Server Components (RSC) để giảm thiểu Client Bundle, kết hợp với Server Actions để xử lý logic Form an toàn, bảo mật.
- **Language:** `TypeScript 5.x` – Typings chặt chẽ từ API đến UI, hạn chế tối đa Runtime Errors.
- **Styling Engine:** `Tailwind CSS v4` – Tối ưu hóa class utility, kết hợp `clsx` và `tailwind-merge` để xử lý component tái sử dụng linh hoạt.
- **UI Components:** Thiết kế dựa trên `Radix UI` (Headless UI) đảm bảo chuẩn trợ năng (Accessibility - a11y), kết hợp `Lucide React` (Hệ thống Icon SVG siêu nhẹ).
- **Animation:** `Framer Motion` – Cung cấp chuyển động (Layout animations, Scroll reveals, Spring animations) mượt mà 60fps.
- **State Management:** `Zustand` (Global State cho Cart/User preferences) kết hợp `React Context` (cho đa ngôn ngữ i18n).

### 2.2. Backend (Xử lý máy chủ & API)
- **API Architecture:** RESTful APIs được xây dựng trực tiếp trên Next.js Route Handlers (`app/api/*`).
- **Database ORM:** `Prisma Client v6.4.0` – Tạo Schema Declarative, Auto-generated Type-safe query builder, giúp quá trình mapping dữ liệu với MySQL tuyệt đối an toàn và trực quan.
- **Authentication:** `NextAuth.js v4` – Xử lý Session (JWT base), tích hợp Credentials (Email/Password mã hóa `bcryptjs`) và Social Logins (Google/Facebook OAuth). Hỗ trợ xác thực đa bước (2FA OTP).
- **Security & Caching:** Tích hợp `Upstash Redis` để lưu trữ Session linh hoạt và thực hiện giới hạn lượt gọi API (Rate Limiting - Token Bucket algorithm), phòng chống DDoS.
- **Payment Gateway:** `Stripe API` – Token hóa thẻ tín dụng, xử lý Webhooks cho các thay đổi trạng thái đơn hàng (Thành công/Thất bại/Hoàn tiền).

---

## 🗄 3. PHÂN TÍCH KIẾN TRÚC DATABASE (DATABASE SCHEMA)

Cơ sở dữ liệu bao gồm **hơn 50 bảng (tables)**, được chuẩn hóa (Normalization) để tránh dư thừa dữ liệu nhưng vẫn đảm bảo tốc độ Query thông qua các `Indexes` được cấu hình kỹ lưỡng trong Prisma.

### 3.1. Phân hệ Quản lý Tài khoản (Identity & Access Management)
- **`user`**: Bảng trung tâm lưu trữ thông tin cá nhân, quyền (Role: ADMIN, USER), trạng thái 2FA và điểm thưởng (loyalty points).
- **`address`**: Sổ địa chỉ (1 User - N Addresses), quản lý địa chỉ thanh toán và giao hàng mặc định.
- **`loginhistory` / `twofactortoken`**: Hệ thống tracking bảo mật, ghi nhận IP/Thiết bị và mã OTP.

### 3.2. Phân hệ Quản lý Kho & Sản phẩm (Product Catalog)
- **`product`**: Chứa thông tin gốc (Giá, Tồn kho, Trạng thái, Lượt bán, Rating trung bình). Áp dụng thiết kế Multi-Language trực tiếp (name, nameEn, description, descriptionEn).
- **`category` & `brand`**: Danh mục phân cấp (Self-referencing relation) và Quản lý thương hiệu.
- **`productvariant`**: Cấu trúc E-commerce nâng cao xử lý sản phẩm có nhiều thuộc tính (Ví dụ: Khối lượng 500g, 1kg; Vị cay/không cay).
- **`productspecification`**: Thông số kỹ thuật động dạng Key-Value (Thành phần, HSD, Xuất xứ).

### 3.3. Phân hệ Giao dịch & Đơn hàng (Order Management System - OMS)
- **`cart` & `cartitem`**: Giỏ hàng (Persisted Database Cart thay vì chỉ lưu LocalStorage), giúp đồng bộ giỏ hàng đa thiết bị.
- **`order` & `orderitem`**: Bảng lõi (Core) lưu trạng thái Đơn hàng (Pending, Processing, Shipped, Delivered, Canceled) theo chuỗi quy trình chuẩn.
- **`orderevent`**: Tracking lịch trình (Timeline) của đơn hàng (Ai đổi trạng thái? Lý do đổi?).
- **`transaction`**: Lưu vết giao dịch Stripe, số tiền, mã Invoice.
- **`refundrequest`**: Quy trình khiếu nại và hoàn tiền (RMA flow).

### 3.4. Phân hệ Tiếp thị Liên kết (Affiliate / Referral System)
- **`referralprofile` & `referralrelation`**: Ghi nhận quan hệ "Người giới thiệu" - "Người được giới thiệu".
- **`referralcommission`**: Tính toán hoa hồng nhiều tầng theo tỷ lệ % doanh thu.
- **`referralfraudsignal`**: Hệ thống chống gian lận (Phát hiện trùng IP, tạo đơn ảo).

### 3.5. Phân hệ Tương tác AI (AI Knowledge & Chatbot)
- **`AiKnowledge`**: Bảng tri thức cho RAG (Chứa Context đã được Vector hóa hoặc text metadata).
- **`ConversationHistory`**: Lưu trữ chuỗi hội thoại của khách, cung cấp Memory cho OpenAI gỡ rối context.
- **`AiUsageLog`**: Quản lý chi phí Token API định kỳ.

---

## 🚀 4. CHIẾN LƯỢC TỐI ƯU HÓA TÌM KIẾM (SEO & WEB VITALS)

Dự án LikeFood đặt trọng tâm cực lớn vào Technical SEO, áp dụng các chuẩn mực SEO hiện đại nhất của Google:

### 4.1. Core Web Vitals Optimization
- **Image Optimization:** Mọi hình ảnh (Banner, Product) đều sử dụng component `<Image>` của Next.js (chuyển đổi sang chuẩn WebP/AVIF, lazy-loading mặc định, chặn Layout Shift bằng width/height cụ thể).
- **Font Optimization:** `next/font` tự động tải phông chữ từ server lúc build, chặn hiện tượng FOIT/FOUT.
- **Render Strategies:** Trang chủ (Home) và Danh mục (Category) áp dụng **ISR (Incremental Static Regeneration)** (Cache HTML 60 giây) -> Tốc độ tải trang đạt dưới 200ms.

### 4.2. Cấu trúc Meta & Canonical
- **Dynamic Metadata:** Title, Description, OpenGraph Image (Facebook) và Twitter Cards được generate linh hoạt dựa trên ID/Slug của bài viết, sản phẩm.
- **URL Canonicalization:** Mọi trang đều có thẻ `<link rel="canonical">`, đảm bảo không bị Google phạt vì duplicate content (đặc biệt các biến thể URL do Search Query).

### 4.3. Google Rich Results (Schema.org / JSON-LD)
Sử dụng các đoạn mã JSON-LD nhúng ẩn vào DOM (`@/components/seo/JsonLd.tsx`) để tương tác với Google Bot:
- **`Product` Schema:** Cung cấp trực tiếp vào kết quả tìm kiếm số sao (AggregateRating), mức giá (Offers), tình trạng (InStock).
- **`BreadcrumbList` Schema:** Cấu trúc phân tầng (Trang chủ > Danh mục > Sản phẩm).
- **`Organization` Schema:** Định danh thực thể doanh nghiệp LikeFood.

---

## 🧠 5. CÁC TÍNH NĂNG KỸ THUẬT NỔI BẬT KHÁC

1. **Hệ thống giỏ hàng Abandoned Cart:** Cơ chế ghi nhận các giỏ hàng khách hàng đã tạo nhưng chưa thanh toán để chạy chiến dịch Email Marketing nhắc nhở (Retargeting).
2. **Flash Sale Engine:** Thuật toán tính toán giá giảm theo thời gian thực (Real-time countdown), tự động vô hiệu hóa giá sale khi hết giờ trong Database.
3. **i18n Localization:** Tách biệt ngôn ngữ (Tiếng Anh/Việt) linh hoạt mà không cần load lại trang nhờ React Context & Dictionary mapping.
4. **Behavior Event Tracking:** Thu thập thao tác click, thời gian xem trang (Dwell time) của người dùng để sinh dữ liệu phân tích thị hiếu, phục vụ làm nguồn tri thức Gợi ý sản phẩm (Recommendation System).

---

## 💻 6. HƯỚNG DẪN CÀI ĐẶT & TRIỂN KHAI (DEPLOYMENT)

### Yêu cầu môi trường (Prerequisites)
- **OS:** Windows / macOS / Linux
- **Node.js:** `>= 20.x`
- **Database:** `MySQL 8.0+`
- **Package Manager:** `npm` hoặc `yarn`

### Các bước cài đặt chi tiết (Step-by-step)

**Bước 1: Tải mã nguồn về máy cục bộ**
```bash
git clone https://github.com/tranquocvu-3011/likefood.git
cd likefood
```

**Bước 2: Cài đặt các gói thư viện (Dependencies)**
```bash
npm install
# Quá trình này sẽ gọi postinstall để tự động npx prisma generate
```

**Bước 3: Cấu hình biến môi trường**
Copy file `.env.example` thành `.env` và cập nhật các tham số (Cực kỳ quan trọng để hệ thống không bị crash):
```env
# Chuỗi kết nối Database MySQL
DATABASE_URL="mysql://root:@127.0.0.1:3306/weblikefood"

# Bí mật tạo token JWT cho hệ thống đăng nhập
NEXTAUTH_SECRET="chuoi-ky-tu-bao-mat-bat-ky"
NEXTAUTH_URL="http://localhost:3000"

# Cổng thanh toán (Stripe)
STRIPE_SECRET_KEY="sk_test_..."
NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY="pk_test_..."

# OpenAI (Cho hệ thống Chatbot)
OPENAI_API_KEY="sk-..."
```

**Bước 4: Thiết lập Cơ sở dữ liệu (Database Migration & Seeding)**
```bash
# Push cấu trúc từ schema.prisma lên MySQL thực tế
npx prisma db push

# Khởi tạo dữ liệu gốc (Danh mục, Sản phẩm demo, Admin account)
npm run db:seed
```

**Bước 5: Chạy ứng dụng**
```bash
npm run dev
# Hoặc sử dụng turbopack để tăng tốc độ build local:
# npm run dev:turbo
```

> 🌐 **Ứng dụng sẽ hoạt động tại:** [http://localhost:3000](http://localhost:3000)

---

<div align="center">
  <i>Đồ án được xây dựng và phát triển để chứng minh năng lực thiết kế kiến trúc phần mềm chuyên sâu. Toàn bộ bản quyền thuộc về tác giả Trần Quốc Vũ (2026).</i>
</div>
