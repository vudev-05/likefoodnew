# TÀI LIỆU SLIDE THUYẾT TRÌNH
## ĐỀ TÀI: PHÁT TRIỂN ỨNG DỤNG WEB FULLSTACK VỚI NEXT.JS – TỐI ƯU SEO VÀ HIỆU NĂNG CHO HỆ THỐNG HIỆN ĐẠI

---

### SLIDE 1: TRANG TIÊU ĐỀ
* **Tiêu đề lớn:** Phát triển ứng dụng Web Fullstack với Next.js – Tối ưu SEO và hiệu năng cho hệ thống hiện đại
* **Case Study minh họa:** Hệ thống thương mại điện tử đặc sản Việt tại Mỹ – LIKEFOOD
* **Nhóm thực hiện:** [Tên nhóm của bạn]
* **Người trình bày:** [Tên Trưởng nhóm/Presenter]

---

### SLIDE 2: NỖI ĐAU CỦA WEB TRUYỀN THỐNG (SINGLE PAGE APPLICATION - SPA)
* **Nội dung:**
  * **React thuần (CSR):** Chỉ trả về một file HTML rỗng `<div id="root"></div>` cùng file Javascript dung lượng lớn.
  * **Hậu quả SEO:** Bot tìm kiếm (Google, Bing) không chạy được Javascript ngay lập tức -> Không cào được tiêu đề, mô tả, từ khóa -> Web không thể lên top Google.
  * **Hậu quả Hiệu năng:** Người dùng phải tải toàn bộ file JS về thiết bị rồi mới render giao diện -> Thời gian chờ trang trắng ban đầu dài (FCP/LCP cao).
* **Hình ảnh minh họa:** Sơ đồ Client-side Rendering (Trình duyệt tải JS -> Trình duyệt render -> Người dùng thấy trang).

---

### SLIDE 3: GIẢI PHÁP NEXT.JS - FULLSTACK FRAMEWORK CHO KỶ NGUYÊN MỚI
* **Nội dung:**
  * Next.js là React Framework hàng đầu được phát triển bởi Vercel.
  * **Tính Fullstack:** Kết hợp hoàn hảo giữa Frontend (React UI) và Backend (API Routes, Server Actions) trong cùng một dự án.
  * **Cơ chế Rendering linh hoạt:** Cho phép lựa chọn Server-Side Rendering (SSR), Static Site Generation (SSG), hay Incremental Static Regeneration (ISR) cho từng trang đơn lẻ.
  * **Mã HTML trả về từ Server:** Luôn chứa đầy đủ nội dung chữ, thẻ meta -> Bot Google đọc được ngay lập tức.

---

### SLIDE 4: PHÂN TÍCH CÁC PHƯƠNG THỨC RENDER TRONG NEXT.JS APP ROUTER
* **Nội dung:**
  * **Server Components (Mặc định):** Chạy trực tiếp trên server, không gửi JS thừa xuống client -> Tải trang siêu nhanh.
  * **Client Components (`"use client"`):** Dùng khi cần tương tác (sự kiện click, dùng React state, hooks).
  * **Chiến lược tối ưu trong LIKEFOOD:**
    * Trang chủ, Trang chi tiết sản phẩm: Server Components để tối ưu LCP và SEO.
    * Form thanh toán, giỏ hàng: Client Components để xử lý tương tác thời gian thực.

---

### SLIDE 5: ĐIỂM SÁNG SEO TRONG NEXT.JS (ỨNG DỤNG THỰC TẾ LIKEFOOD)
* **Nội dung:**
  * **Dynamic Metadata (Metadata động):**
    * Tự động sinh ra thẻ `<title>`, `<meta description>`, `<meta property="og:image">` dựa trên cơ sở dữ liệu sản phẩm thật.
    * Minh họa hàm: `generateMetadata()` trong `src/app/(shop)/products/[slug]/page.tsx`.
  * **Cấu trúc JSON-LD (Dữ liệu có cấu trúc):**
    * Giúp Google hiển thị sản phẩm đẹp mắt (Rich Snippets: giá bán, số sao đánh giá, còn hàng/hết hàng) ngay trên thanh tìm kiếm.

---

### SLIDE 6: CHIẾN LƯỢC TỐI ƯU HIỆU NĂNG (PERFORMANCE OPTIMIZATION)
* **Nội dung:**
  * **Tối ưu hình ảnh (`next/image`):**
    * Tự động resize ảnh phù hợp với thiết bị của người dùng.
    * Tự động chuyển đổi sang định dạng WebP/AVIF tối ưu dung lượng.
    * Hỗ trợ Lazy Loading (chỉ tải ảnh khi người dùng cuộn đến).
  * **Tối ưu font chữ (`next/font`):**
    * Tự động tải và nhúng font chữ trực tiếp vào file CSS tại server, tránh hiện tượng giật chữ (CLS - Cumulative Layout Shift).
  * **Tối ưu mã nhúng (`next/script`):**
    * Tránh làm nghẽn Main Thread khi tải các script bên thứ ba như Google Analytics.

---

### SLIDE 7: DỮ LIỆU SITEMAP VÀ ROBOTS.TXT TỰ ĐỘNG
* **Nội dung:**
  * **Dynamic Sitemap (`sitemap.ts`):**
    * Next.js tự động tạo file XML động kết nối trực tiếp với Database để cập nhật đường dẫn các sản phẩm, bài viết mới mỗi khi có sự thay đổi.
  * **Robots.txt (`robots.ts`):**
    * Cấu hình robot tìm kiếm được phép index phần nào và hạn chế truy cập phần nào (ví dụ: cấm crawl trang admin `/admin`, trang thanh toán `/checkout`).

---

### SLIDE 8: PHÂN TÍCH KIẾN TRÚC DỰ ÁN DEMO - LIKEFOOD
* **Nội dung:**
  * **Tech Stack sử dụng:** Next.js 16 (App Router) + React + Tailwind CSS + Prisma ORM + MySQL.
  * **Cấu trúc thư mục App Router:**
    * `src/app/`: Routing chính của hệ thống.
    * `src/app/api/`: Các API Routes fullstack (xử lý đơn hàng, cổng thanh toán MBBank).
    * `src/components/`: Nơi lưu trữ các React Component dùng chung được tối ưu.
    * `prisma/`: File định nghĩa Database schema và migration.

---

### SLIDE 9: KIỂM CHỨNG HIỆU QUẢ - LIGHTHOUSE & GOOGLE SEARCH CONSOLE
* **Nội dung:**
  * **Đo điểm số thực tế:** Điểm Performance đạt ~90+, SEO đạt 100/100 nhờ tối ưu thẻ meta và cấu trúc HTML chuẩn.
  * **Bằng chứng rõ ràng nhất:** Nhấn `Ctrl + U` (View Page Source) trên trang chi tiết sản phẩm -> Toàn bộ mã nguồn HTML đã chứa từ khóa, tên sản phẩm và giá tiền được render sẵn từ Server.

---

### SLIDE 10: KẾT LUẬN & Q&A
* **Nội dung:**
  * **Tổng kết:** Next.js giải quyết triệt để bài toán khó nhất của Single Page Application: đó là sự cân bằng giữa Trải nghiệm người dùng (UX), Tối ưu tìm kiếm (SEO) và Hiệu năng (Performance).
  * **Định hướng tương lai:** Tích hợp AI hỗ trợ tự động sinh nội dung chuẩn SEO (SEO Content Generation).
  * **Q&A:** Sẵn sàng trả lời các câu hỏi phản biện từ Hội đồng.
