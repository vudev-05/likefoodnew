/**
 * LIKEFOOD - Seed 110 Products
 * Tạo đủ 110 sản phẩm đặc sản Việt Nam
 */
import { PrismaClient } from "../src/generated/client";

const prisma = new PrismaClient();

// ─── DANH SÁCH 110 SẢN PHẨM ────────────────────────────────────────────────
const allProducts = [
  // ═══════════════════════════════════════════════════════════════════════
  // 1. CÁ KHÔ (15 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Cá Lóc Khô Đồng Tháp",
    slug: "ca-loc-kho-dong-thap",
    description: "Cá lóc khô được chế biến từ cá lóc tươi sống vùng Đồng Tháp, phơi khô tự nhiên dưới nắng gió. Thịt cá ngọt, thơm, dai, giữ nguyên hương vị đặc trưng miền Tây sông nước.",
    price: 25.99, originalPrice: 29.99, category: "Cá khô", inventory: 50, weight: "500g",
    image: "/products/ca-loc-kho.jpg", featured: true, tags: "gift,traditional",
    isOnSale: true, salePrice: 22.99,
  },
  {
    name: "Khô Cá Sặc Bổi Cà Mau",
    slug: "kho-ca-sac-boi-ca-mau",
    description: "Khô cá sặc bổi đặc sản Cà Mau, được làm từ cá sặc tươi ướp muối và phơi khô tự nhiên. Vị mặn vừa, thơm ngon, thích hợp chiên giòn ăn kèm cơm trắng.",
    price: 19.99, originalPrice: 24.99, category: "Cá khô", inventory: 80, weight: "300g",
    image: "/products/ca-sac-boi.jpg", featured: false, tags: "traditional",
  },
  {
    name: "Khô Cá Tra Phồng",
    slug: "kho-ca-tra-phong",
    description: "Khô cá tra phồng giòn tan, được làm từ cá tra tươi, tẩm gia vị và chiên phồng. Ăn liền hoặc kho tiêu đều ngon.",
    price: 15.99, category: "Cá khô", inventory: 100, weight: "200g",
    image: "/products/ca-tra-phong.jpg", featured: false, tags: "",
  },
  {
    name: "Khô Cá Dứa Kiên Giang",
    slug: "kho-ca-dua-kien-giang",
    description: "Cá dứa khô Kiên Giang – loài cá nước ngọt quý hiếm, thịt ngọt béo, phơi khô tự nhiên. Đặc sản được ưa chuộng nhất miền Tây.",
    price: 34.99, originalPrice: 39.99, category: "Cá khô", inventory: 35, weight: "400g",
    image: "/cakho.jpeg", featured: true, tags: "gift,traditional",
    isOnSale: true, salePrice: 29.99,
  },
  {
    name: "Khô Cá Kèo Cà Mau",
    slug: "kho-ca-keo-ca-mau",
    description: "Cá kèo khô Cà Mau – loài cá đặc trưng vùng đồng bằng sông Cửu Long, vị đậm đà, xương giòn ăn được. Chế biến từ cá tươi, phơi nắng tự nhiên.",
    price: 22.99, category: "Cá khô", inventory: 60, weight: "300g",
    image: "/cakho.jpeg", featured: false, tags: "traditional",
  },
  {
    name: "Khô Cá Chạch Đồng",
    slug: "kho-ca-chach-dong",
    description: "Cá chạch đồng khô – đặc sản miền Tây, thịt ngọt thanh, ít xương. Thích hợp nướng lửa than hoặc chiên giòn.",
    price: 18.99, category: "Cá khô", inventory: 45, weight: "250g",
    image: "/cakho.jpeg", featured: false, tags: "traditional",
  },
  {
    name: "Khô Cá Nục Bình Định",
    slug: "kho-ca-nuc-binh-dinh",
    description: "Cá nục khô Bình Định – vị mặn ngọt cân bằng, thịt chắc, phơi khô theo phương pháp truyền thống. Ăn kho tiêu hoặc chiên đều thơm ngon.",
    price: 16.99, category: "Cá khô", inventory: 70, weight: "300g",
    image: "/cakho.jpeg", featured: false, tags: "",
  },
  {
    name: "Khô Cá Cơm Phan Thiết",
    slug: "kho-ca-com-phan-thiet",
    description: "Cá cơm khô Phan Thiết – nguyên liệu làm nước mắm nổi tiếng, thích hợp ăn kèm cháo trắng hoặc rang muối.",
    price: 12.99, category: "Cá khô", inventory: 90, weight: "200g",
    image: "/cakho.jpeg", featured: false, tags: "",
  },
  {
    name: "Khô Cá Thu Đà Nẵng",
    slug: "kho-ca-thu-da-nang",
    description: "Cá thu khô Đà Nẵng – loài cá biển thịt chắc, vị ngọt tự nhiên. Phơi một nắng hoặc hai nắng đều giữ được hương vị tươi ngon.",
    price: 38.99, originalPrice: 45.99, category: "Cá khô", inventory: 30, weight: "500g",
    image: "/cakho.jpeg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 35.99,
  },
  {
    name: "Khô Cá Ngát Sông Tiền",
    slug: "kho-ca-ngat-song-tien",
    description: "Cá ngát khô – đặc sản sông Tiền, thịt dày, vị ngọt thanh. Thích hợp làm gỏi hoặc nướng.",
    price: 28.99, category: "Cá khô", inventory: 40, weight: "400g",
    image: "/cakho.jpeg", featured: false, tags: "traditional",
  },
  {
    name: "Khô Cá Thiểu Trà Vinh",
    slug: "kho-ca-thieu-tra-vinh",
    description: "Cá thiểu khô Trà Vinh – đặc sản ít nơi có, thịt mỏng nhưng vị đậm đà, thơm ngon khi chiên giòn.",
    price: 20.99, category: "Cá khô", inventory: 55, weight: "250g",
    image: "/cakho.jpeg", featured: false, tags: "",
  },
  {
    name: "Khô Cá Lóc Một Nắng",
    slug: "kho-ca-loc-mot-nang",
    description: "Cá lóc khô một nắng – phơi nhẹ để giữ độ ẩm tự nhiên, thịt mềm hơn, thích hợp nướng hoặc hấp.",
    price: 32.99, category: "Cá khô", inventory: 35, weight: "500g",
    image: "/cakho.jpeg", featured: false, tags: "gift",
  },
  {
    name: "Cá Cơm Rang Muối Ớt",
    slug: "ca-com-rang-muoi-ot",
    description: "Cá cơm rang muối ớt – snack đậm đà, giòn tan, vị mặn cay thơm. Ăn vặt tuyệt vời hoặc nhâm nhi với bia.",
    price: 9.99, category: "Cá khô", inventory: 120, weight: "150g",
    image: "/cakho.jpeg", featured: false, tags: "spicy",
  },
  {
    name: "Khô Cá Basa Châu Đốc",
    slug: "kho-ca-basa-chau-doc",
    description: "Cá basa khô Châu Đốc – loài cá nuôi bè nổi tiếng An Giang, thịt trắng, ít xương, phơi khô thơm ngon.",
    price: 17.99, category: "Cá khô", inventory: 65, weight: "300g",
    image: "/cakho.jpeg", featured: false, tags: "",
  },
  {
    name: "Khô Cá Hố Phan Rang",
    slug: "kho-ca-ho-phan-rang",
    description: "Cá hố khô Phan Rang – loài cá biển thân dài, thịt trắng ngọt, phơi khô vàng ươm, thích hợp chiên giòn hoặc nướng.",
    price: 26.99, category: "Cá khô", inventory: 42, weight: "400g",
    image: "/cakho.jpeg", featured: false, tags: "",
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 2. TÔM & MỰC KHÔ (12 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Tôm Khô Cà Mau Loại 1",
    slug: "tom-kho-ca-mau-loai-1",
    description: "Tôm khô Cà Mau loại 1, được chế biến từ tôm biển tươi sống, phơi khô tự nhiên. Thịt tôm ngọt, thơm, chắc, không tẩm hóa chất bảo quản.",
    price: 45.99, originalPrice: 55.99, category: "Tôm & Mực khô", inventory: 40, weight: "500g",
    image: "/products/tom-kho.jpg", featured: true, tags: "gift,spicy",
    isOnSale: true, salePrice: 42.99,
  },
  {
    name: "Mực Khô Câu Phú Quốc",
    slug: "muc-kho-cau-phu-quoc",
    description: "Mực khô câu Phú Quốc, được làm từ mực tươi câu trực tiếp từ biển. Thịt mực dày, ngọt, thơm, nướng hoặc xào đều ngon.",
    price: 55.99, originalPrice: 65.99, category: "Tôm & Mực khô", inventory: 30, weight: "500g",
    image: "/products/muc-kho.jpg", featured: true, tags: "gift",
  },
  {
    name: "Tôm Rim Me Sài Gòn",
    slug: "tom-rim-me-sai-gon",
    description: "Tôm rim me đặc sản Sài Gòn, vị chua ngọt đậm đà, ăn kèm cơm trắng cực ngon.",
    price: 35.99, category: "Tôm & Mực khô", inventory: 45, weight: "300g",
    image: "/products/tom-rim-me.jpg", featured: false, tags: "spicy",
  },
  {
    name: "Tôm Đất Khô Bạc Liêu",
    slug: "tom-dat-kho-bac-lieu",
    description: "Tôm đất khô Bạc Liêu – loại tôm nhỏ nhưng thịt chắc, vị đậm đà. Dùng nấu canh chua, làm mắm hoặc rang muối đều ngon.",
    price: 28.99, category: "Tôm & Mực khô", inventory: 55, weight: "300g",
    image: "/products/tom-kho.jpg", featured: false, tags: "traditional",
  },
  {
    name: "Tép Khô Đồng Tháp",
    slug: "tep-kho-dong-thap",
    description: "Tép khô Đồng Tháp – đặc sản sông nước, thịt ngọt, phơi khô tự nhiên. Rang muối hoặc nấu canh bí đao đều tuyệt.",
    price: 15.99, category: "Tôm & Mực khô", inventory: 80, weight: "200g",
    image: "/products/tom-kho.jpg", featured: false, tags: "",
  },
  {
    name: "Mực Rim Cay Nha Trang",
    slug: "muc-rim-cay-nha-trang",
    description: "Mực rim cay Nha Trang – vị cay nồng, ngọt mặn hài hòa. Snack hải sản được giới trẻ yêu thích.",
    price: 22.99, category: "Tôm & Mực khô", inventory: 70, weight: "200g",
    image: "/products/muc-kho.jpg", featured: false, tags: "spicy",
  },
  {
    name: "Mực Khô Một Nắng Kiên Giang",
    slug: "muc-kho-mot-nang-kien-giang",
    description: "Mực một nắng Kiên Giang – phơi ít nắng để thịt mềm, nướng lên thơm phức, chấm muối tiêu chanh là đỉnh.",
    price: 48.99, originalPrice: 58.99, category: "Tôm & Mực khô", inventory: 25, weight: "500g",
    image: "/products/muc-kho.jpg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 44.99,
  },
  {
    name: "Ghẹ Rang Muối Vũng Tàu",
    slug: "ghe-rang-muoi-vung-tau",
    description: "Ghẹ rang muối đóng hộp Vũng Tàu – vị mặn ngọt đặc trưng, thịt ghẹ thơm ngon. Ăn kèm bia hoặc cơm trắng.",
    price: 32.99, category: "Tôm & Mực khô", inventory: 40, weight: "300g",
    image: "/products/muc-kho.jpg", featured: false, tags: "gift",
  },
  {
    name: "Tôm Khô Loại 2 Cần Giờ",
    slug: "tom-kho-loai-2-can-gio",
    description: "Tôm khô loại 2 Cần Giờ – kích thước vừa phải, giá tốt, thích hợp nấu ăn hàng ngày.",
    price: 32.99, category: "Tôm & Mực khô", inventory: 60, weight: "500g",
    image: "/products/tom-kho.jpg", featured: false, tags: "",
  },
  {
    name: "Mực Khô Ăn Liền Bình Thuận",
    slug: "muc-kho-an-lien-binh-thuan",
    description: "Mực khô tẩm gia vị ăn liền Bình Thuận – xé sợi mềm mại, vị đậm đà, tiện lợi khi di chuyển.",
    price: 12.99, category: "Tôm & Mực khô", inventory: 100, weight: "150g",
    image: "/products/muc-kho.jpg", featured: false, tags: "spicy",
  },
  {
    name: "Tôm Hùm Đất Nướng Phú Yên",
    slug: "tom-hum-dat-nuong-phu-yen",
    description: "Tôm hùm đất sấy khô Phú Yên – đặc sản cao cấp, thịt chắc ngọt, thích hợp làm quà biếu.",
    price: 89.99, originalPrice: 109.99, category: "Tôm & Mực khô", inventory: 15, weight: "300g",
    image: "/products/tom-kho.jpg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 79.99,
  },
  {
    name: "Ruốc Tôm Khô Huế",
    slug: "ruoc-tom-kho-hue",
    description: "Ruốc tôm khô Huế – làm từ tôm đất tươi xay mịn, phơi khô. Dùng nấu bún bò hoặc ăn kèm cơm trắng.",
    price: 18.99, category: "Tôm & Mực khô", inventory: 55, weight: "250g",
    image: "/products/tom-kho.jpg", featured: false, tags: "traditional",
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 3. TRÁI CÂY SẤY (14 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Xoài Sấy Dẻo Cam Ranh",
    slug: "xoai-say-deo-cam-ranh",
    description: "Xoài sấy dẻo Cam Ranh, được làm từ xoài cát Hòa Lộc chín mọng. Không đường, không phụ gia, giữ nguyên hương vị tự nhiên.",
    price: 12.99, originalPrice: 15.99, category: "Trái cây sấy", inventory: 120, weight: "200g",
    image: "/products/xoai-say.jpg", featured: true, tags: "diet,gift",
    isOnSale: true, salePrice: 10.99,
  },
  {
    name: "Chuối Sấy Giòn Tiền Giang",
    slug: "chuoi-say-gion-tien-giang",
    description: "Chuối sấy giòn Tiền Giang, được làm từ chuối già hương chín mọng. Giòn tan, ngọt tự nhiên, ăn vặt lý tưởng.",
    price: 8.99, category: "Trái cây sấy", inventory: 150, weight: "150g",
    image: "/products/chuoi-say.jpg", featured: false, tags: "diet",
  },
  {
    name: "Mít Sấy Giòn Đồng Nai",
    slug: "mit-say-gion-dong-nai",
    description: "Mít sấy giòn Đồng Nai, được làm từ mít nghệ chín, sấy chân không. Giòn rụm, thơm ngon, không dầu mỡ.",
    price: 10.99, category: "Trái cây sấy", inventory: 100, weight: "180g",
    image: "/products/mit-say.jpg", featured: false, tags: "diet",
  },
  {
    name: "Khoai Lang Sấy Đà Lạt",
    slug: "khoai-lang-say-da-lat",
    description: "Khoai lang sấy Đà Lạt – khoai lang mật ngọt sấy khô giòn rụm. Không dầu, không đường nhân tạo, tốt cho sức khỏe.",
    price: 7.99, category: "Trái cây sấy", inventory: 130, weight: "150g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Dứa Sấy Dẻo Tiền Giang",
    slug: "dua-say-deo-tien-giang",
    description: "Dứa sấy dẻo Tiền Giang – vị chua ngọt tự nhiên, giữ nguyên hương thơm của dứa tươi.",
    price: 9.99, category: "Trái cây sấy", inventory: 100, weight: "180g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Vải Sấy Khô Lục Ngạn",
    slug: "vai-say-kho-luc-ngan",
    description: "Vải thiều sấy khô Lục Ngạn Bắc Giang – trái vải chín đỏ sấy khô, vị ngọt đậm, thơm quyến rũ.",
    price: 14.99, originalPrice: 18.99, category: "Trái cây sấy", inventory: 80, weight: "200g",
    image: "/traicaysay.jpeg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 12.99,
  },
  {
    name: "Nhãn Sấy Hưng Yên",
    slug: "nhan-say-hung-yen",
    description: "Nhãn lồng sấy khô Hưng Yên – đặc sản nổi tiếng miền Bắc, vị ngọt thanh, thịt dày, hạt nhỏ.",
    price: 19.99, category: "Trái cây sấy", inventory: 70, weight: "200g",
    image: "/traicaysay.jpeg", featured: false, tags: "gift",
  },
  {
    name: "Mận Sấy Bắc Hà",
    slug: "man-say-bac-ha",
    description: "Mận hậu sấy Bắc Hà Lào Cai – vị chua ngọt đặc trưng vùng núi Tây Bắc, giòn nhẹ khi mới mở gói.",
    price: 11.99, category: "Trái cây sấy", inventory: 90, weight: "200g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Ổi Sấy Giòn Long An",
    slug: "oi-say-gion-long-an",
    description: "Ổi sấy giòn Long An – ổi xá lị xanh giòn sấy khô, vị nhẹ ngọt, thơm dịu, tốt cho tiêu hóa.",
    price: 8.99, category: "Trái cây sấy", inventory: 110, weight: "150g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Sapoche Sấy Dẻo Bình Thuận",
    slug: "sapoche-say-deo-binh-thuan",
    description: "Sapoche (hồng xiêm) sấy dẻo Bình Thuận – ngọt đậm, thơm béo, dẻo mịn, đặc sản khó tìm.",
    price: 13.99, category: "Trái cây sấy", inventory: 75, weight: "180g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Thanh Long Sấy Dẻo Bình Thuận",
    slug: "thanh-long-say-deo-binh-thuan",
    description: "Thanh long sấy dẻo Bình Thuận – màu đỏ hồng đẹp mắt, vị ngọt thanh nhẹ, giàu vitamin.",
    price: 11.99, originalPrice: 14.99, category: "Trái cây sấy", inventory: 85, weight: "180g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet,gift",
    isOnSale: true, salePrice: 9.99,
  },
  {
    name: "Dừa Sấy Bến Tre",
    slug: "dua-say-ben-tre",
    description: "Dừa sấy Bến Tre – cơm dừa tươi cắt mỏng sấy giòn, béo thơm tự nhiên, không dầu mỡ.",
    price: 9.99, category: "Trái cây sấy", inventory: 100, weight: "150g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Sầu Riêng Sấy Khô Cái Mơn",
    slug: "sau-rieng-say-kho-cai-mon",
    description: "Sầu riêng sấy khô Cái Mơn Bến Tre – cơm sầu riêng nguyên chất sấy khô, béo thơm cực mạnh, không phụ gia.",
    price: 24.99, originalPrice: 29.99, category: "Trái cây sấy", inventory: 40, weight: "150g",
    image: "/traicaysay.jpeg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 21.99,
  },
  {
    name: "Hoa Quả Sấy Mix Tổng Hợp",
    slug: "hoa-qua-say-mix-tong-hop",
    description: "Hỗn hợp trái cây sấy: xoài, dứa, chuối, khoai lang, mít. Đa dạng hương vị, tiện lợi ăn vặt.",
    price: 13.99, category: "Trái cây sấy", inventory: 90, weight: "250g",
    image: "/traicaysay.jpeg", featured: false, tags: "diet,gift",
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 4. TRÀ & BÁNH MỨT (14 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Mứt Dừa Non Bến Tre",
    slug: "mut-dua-non-ben-tre",
    description: "Mứt dừa non Bến Tre, được làm từ dừa non tươi, sên với đường phèn. Dẻo ngọt, thơm béo, món ăn không thể thiếu ngày Tết.",
    price: 14.99, category: "Trà & Bánh mứt", inventory: 80, weight: "300g",
    image: "/products/mut-dua.jpg", featured: true, tags: "gift,traditional",
  },
  {
    name: "Trà Sen Tây Hồ",
    slug: "tra-sen-tay-ho",
    description: "Trà sen Tây Hồ, được ướp từ hoa sen tươi và trà móc câu thượng hạng. Hương thơm thanh tao, vị ngọt dịu, thư giãn tinh thần.",
    price: 28.99, originalPrice: 35.99, category: "Trà & Bánh mứt", inventory: 60, weight: "100g",
    image: "/products/tra-sen.jpg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 25.99,
  },
  {
    name: "Bánh Tráng Mè Tây Ninh",
    slug: "banh-trang-me-tay-ninh",
    description: "Bánh tráng mè Tây Ninh, giòn tan, thơm mùi mè rang. Ăn liền hoặc cuốn thịt đều ngon.",
    price: 6.99, category: "Trà & Bánh mứt", inventory: 200, weight: "200g",
    image: "/products/banh-trang.jpg", featured: false, tags: "",
  },
  {
    name: "Trà Ổi Đào Mộc Châu",
    slug: "tra-oi-dao-moc-chau",
    description: "Trà ổi đào Mộc Châu – lá ổi đào non sấy khô, vị thơm mát, tốt cho tiêu hóa và đường huyết.",
    price: 12.99, category: "Trà & Bánh mứt", inventory: 80, weight: "100g",
    image: "/tra.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Trà Atiso Đà Lạt",
    slug: "tra-atiso-da-lat",
    description: "Trà atiso Đà Lạt chính hiệu – mát gan, giải nhiệt, vị hơi đắng nhẹ hậu ngọt, uống mát lành.",
    price: 15.99, originalPrice: 19.99, category: "Trà & Bánh mứt", inventory: 90, weight: "100g",
    image: "/tra.jpeg", featured: true, tags: "diet,gift",
    isOnSale: true, salePrice: 13.99,
  },
  {
    name: "Trà Hoa Cúc La Mã",
    slug: "tra-hoa-cuc-la-ma",
    description: "Trà hoa cúc La Mã – giúp thư giãn, ngủ ngon, vị nhẹ thơm dịu. Pha nóng hoặc lạnh đều tuyệt.",
    price: 14.99, category: "Trà & Bánh mứt", inventory: 70, weight: "100g",
    image: "/tra.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Trà Bí Đao Mật Ong",
    slug: "tra-bi-dao-mat-ong",
    description: "Trà bí đao kết hợp mật ong – thanh nhiệt, giải khát, ngọt tự nhiên từ mật ong nguyên chất.",
    price: 11.99, category: "Trà & Bánh mứt", inventory: 85, weight: "200g",
    image: "/tra.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Bánh Pía Sóc Trăng Sầu Riêng",
    slug: "banh-pia-soc-trang-sau-rieng",
    description: "Bánh pía Sóc Trăng nhân sầu riêng – bánh da mỏng, nhân thơm béo, đặc sản nổi tiếng miền Tây.",
    price: 18.99, originalPrice: 22.99, category: "Trà & Bánh mứt", inventory: 60, weight: "400g",
    image: "/banhkeo.jpeg", featured: true, tags: "gift,traditional",
    isOnSale: true, salePrice: 16.99,
  },
  {
    name: "Mứt Gừng Sả Hội An",
    slug: "mut-gung-sa-hoi-an",
    description: "Mứt gừng sả Hội An – vị cay nhẹ, thơm sả, ngọt dịu. Tốt cho tiêu hóa và giữ ấm cơ thể.",
    price: 10.99, category: "Trà & Bánh mứt", inventory: 75, weight: "200g",
    image: "/banhkeo.jpeg", featured: false, tags: "traditional",
  },
  {
    name: "Kẹo Dừa Bến Tre Pandan",
    slug: "keo-dua-ben-tre-pandan",
    description: "Kẹo dừa lá dứa Bến Tre – thơm béo mùi lá dứa tự nhiên, dai dẻo, vị ngọt vừa phải.",
    price: 8.99, category: "Trà & Bánh mứt", inventory: 120, weight: "200g",
    image: "/banhkeo.jpeg", featured: false, tags: "gift",
  },
  {
    name: "Bánh Dẻo Nhân Đậu Xanh",
    slug: "banh-deo-nhan-dau-xanh",
    description: "Bánh dẻo truyền thống nhân đậu xanh – vỏ dẻo mịn, nhân ngọt thơm, biểu tượng Tết Trung Thu.",
    price: 16.99, category: "Trà & Bánh mứt", inventory: 50, weight: "300g",
    image: "/banhkeo.jpeg", featured: false, tags: "gift,traditional",
  },
  {
    name: "Mứt Tắc (Quất) Mật Ong",
    slug: "mut-tac-quat-mat-ong",
    description: "Mứt tắc (quất) ngâm mật ong – vị chua ngọt thanh mát, tốt cho cổ họng, dùng pha trà hoặc ăn trực tiếp.",
    price: 12.99, category: "Trà & Bánh mứt", inventory: 70, weight: "250g",
    image: "/banhkeo.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Trà Móc Câu Thái Nguyên",
    slug: "tra-moc-cau-thai-nguyen",
    description: "Trà móc câu Thái Nguyên thượng hạng – búp trà non cong móc câu, hương thơm đặc trưng vùng chè nổi tiếng.",
    price: 22.99, originalPrice: 28.99, category: "Trà & Bánh mứt", inventory: 55, weight: "100g",
    image: "/tra.jpeg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 19.99,
  },
  {
    name: "Chè Khô Sen Long An",
    slug: "che-kho-sen-long-an",
    description: "Chè (đường) khô hạt sen Long An – hạt sen nguyên chất sấy khô, ngọt thanh, bổ dưỡng, nấu chè hoặc ăn trực tiếp.",
    price: 17.99, category: "Trà & Bánh mứt", inventory: 60, weight: "200g",
    image: "/banhkeo.jpeg", featured: false, tags: "traditional",
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 5. GIA VỊ VIỆT (15 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Nước Mắm Phú Quốc 40 Độ Đạm",
    slug: "nuoc-mam-phu-quoc-40-do-dam",
    description: "Nước mắm Phú Quốc cốt đặc biệt 40 độ đạm, được ủ từ cá cơm tươi. Màu cánh gián đậm, vị ngọt hậu, thơm nồng đặc trưng.",
    price: 18.99, originalPrice: 22.99, category: "Gia vị Việt", inventory: 70, weight: "500ml",
    image: "/products/nuoc-mam.jpg", featured: true, tags: "traditional",
  },
  {
    name: "Muối Tôm Tây Ninh",
    slug: "muoi-tom-tay-ninh",
    description: "Muối tôm Tây Ninh chính hiệu, được làm từ tôm khô xay nhuyễn và ớt hiểm. Cay nồng, thơm ngon, chấm trái cây hoặc rắc cơm đều tuyệt vời.",
    price: 9.99, category: "Gia vị Việt", inventory: 90, weight: "150g",
    image: "/products/muoi-tom.jpg", featured: false, tags: "spicy",
  },
  {
    name: "Sa Tế Chay Đà Nẵng",
    slug: "sa-te-chay-da-nang",
    description: "Sa tế chay Đà Nẵng, được làm từ ớt, tỏi, sả và các gia vị tự nhiên. Cay thơm, không dầu cọ, phù hợp người ăn chay.",
    price: 7.99, category: "Gia vị Việt", inventory: 110, weight: "200g",
    image: "/products/sa-te.jpg", featured: false, tags: "spicy,diet",
  },
  {
    name: "Mắm Ruốc Huế Nguyên Chất",
    slug: "mam-ruoc-hue-nguyen-chat",
    description: "Mắm ruốc Huế nguyên chất – làm từ tép biển tươi muối ủ lâu ngày. Màu hồng tím đặc trưng, mùi thơm nồng, dùng nấu bún bò Huế.",
    price: 13.99, category: "Gia vị Việt", inventory: 65, weight: "300g",
    image: "/giavi.jpeg", featured: false, tags: "traditional,spicy",
  },
  {
    name: "Mắm Cá Linh Châu Đốc",
    slug: "mam-ca-linh-chau-doc",
    description: "Mắm cá linh Châu Đốc An Giang – đặc sản nổi tiếng nhất miền Tây, cá linh mùa nước nổi ủ mắm hơn 6 tháng.",
    price: 16.99, originalPrice: 20.99, category: "Gia vị Việt", inventory: 45, weight: "500g",
    image: "/giavi.jpeg", featured: true, tags: "traditional",
    isOnSale: true, salePrice: 14.99,
  },
  {
    name: "Tương Ớt Sriracha Việt Nam",
    slug: "tuong-ot-sriracha-viet-nam",
    description: "Tương ớt Sriracha kiểu Việt – cay nồng, vị tỏi đặc trưng, không chất bảo quản. Dùng chấm, ướp hoặc nấu đều được.",
    price: 6.99, category: "Gia vị Việt", inventory: 130, weight: "300ml",
    image: "/giavi.jpeg", featured: false, tags: "spicy",
  },
  {
    name: "Muối Ớt Tôm Sả",
    slug: "muoi-ot-tom-sa",
    description: "Muối ớt tôm sả – hỗn hợp muối, ớt, tôm khô và sả phơi khô. Chấm hoa quả hoặc rắc mì gói đều ngon.",
    price: 8.99, category: "Gia vị Việt", inventory: 100, weight: "100g",
    image: "/giavi.jpeg", featured: false, tags: "spicy",
  },
  {
    name: "Nước Mắm Nha Trang 35 Độ",
    slug: "nuoc-mam-nha-trang-35-do",
    description: "Nước mắm cốt Nha Trang 35 độ đạm – vị ngọt hậu, màu vàng trong, thơm nhẹ hơn Phú Quốc, phù hợp nấu ăn hàng ngày.",
    price: 15.99, category: "Gia vị Việt", inventory: 75, weight: "500ml",
    image: "/giavi.jpeg", featured: false, tags: "traditional",
  },
  {
    name: "Bột Nêm Hải Sản Phú Quốc",
    slug: "bot-nem-hai-san-phu-quoc",
    description: "Bột nêm hải sản Phú Quốc – chiết xuất từ cá cơm và tôm tươi, vị umami đậm đà tự nhiên, không bột ngọt.",
    price: 11.99, category: "Gia vị Việt", inventory: 85, weight: "200g",
    image: "/giavi.jpeg", featured: false, tags: "",
  },
  {
    name: "Gia Vị Phở Bắc Hà Nội",
    slug: "gia-vi-pho-bac-ha-noi",
    description: "Gói gia vị phở bắc truyền thống Hà Nội – quế, hồi, thảo quả, đinh hương. Nấu một gói ra nồi phở chuẩn vị.",
    price: 9.99, originalPrice: 12.99, category: "Gia vị Việt", inventory: 90, weight: "100g",
    image: "/giavi.jpeg", featured: false, tags: "traditional",
    isOnSale: true, salePrice: 8.99,
  },
  {
    name: "Gia Vị Bún Bò Huế Cay",
    slug: "gia-vi-bun-bo-hue-cay",
    description: "Gia vị bún bò Huế cay – sả, ruốc, ớt hòa quyện, nấu chuẩn vị bún bò Huế đích thực.",
    price: 8.99, category: "Gia vị Việt", inventory: 95, weight: "100g",
    image: "/giavi.jpeg", featured: false, tags: "spicy,traditional",
  },
  {
    name: "Mắm Tôm Hải Phòng",
    slug: "mam-tom-hai-phong",
    description: "Mắm tôm Hải Phòng nguyên chất – màu tím hồng, mùi nồng đặc trưng, không thể thiếu khi ăn bún đậu mắm tôm.",
    price: 10.99, category: "Gia vị Việt", inventory: 60, weight: "250g",
    image: "/giavi.jpeg", featured: false, tags: "traditional",
  },
  {
    name: "Tiêu Phú Quốc Nguyên Hạt",
    slug: "tieu-phu-quoc-nguyen-hat",
    description: "Hạt tiêu đen Phú Quốc nguyên hạt – tiêu trồng tự nhiên Phú Quốc, thơm cay đặc trưng, chất lượng xuất khẩu.",
    price: 14.99, originalPrice: 18.99, category: "Gia vị Việt", inventory: 70, weight: "200g",
    image: "/giavi.jpeg", featured: true, tags: "gift",
    isOnSale: true, salePrice: 12.99,
  },
  {
    name: "Sả Khô Nghiền Tây Ninh",
    slug: "sa-kho-nghien-tay-ninh",
    description: "Sả khô nghiền mịn Tây Ninh – sả tươi phơi khô xay thành bột, giữ nguyên tinh dầu tự nhiên.",
    price: 7.99, category: "Gia vị Việt", inventory: 110, weight: "100g",
    image: "/giavi.jpeg", featured: false, tags: "",
  },
  {
    name: "Mắm Tép Hà Tĩnh",
    slug: "mam-tep-ha-tinh",
    description: "Mắm tép Hà Tĩnh – tép tươi muối ủ theo phương pháp cổ truyền, vị đặc biệt không đâu có.",
    price: 12.99, category: "Gia vị Việt", inventory: 50, weight: "300g",
    image: "/giavi.jpeg", featured: false, tags: "traditional",
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 6. ĐỒ ĂN VẶT (14 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Hạt Điều Rang Muối Bình Phước",
    slug: "hat-dieu-rang-muoi-binh-phuoc",
    description: "Hạt điều rang muối Bình Phước – hạt điều nguyên trắng, rang giòn, vị mặn nhẹ. Snack cao cấp giàu dinh dưỡng.",
    price: 15.99, originalPrice: 19.99, category: "Đồ ăn vặt", inventory: 100, weight: "250g",
    image: "/hatdinhduong.jpeg", featured: true, tags: "gift,diet",
    isOnSale: true, salePrice: 13.99,
  },
  {
    name: "Đậu Phộng Da Cá Ớt Tỏi",
    slug: "dau-phong-da-ca-ot-toi",
    description: "Đậu phộng da cá tẩm ớt tỏi – lớp da cá giòn rụm bọc ngoài hạt đậu phộng, vị cay thơm không thể dừng tay.",
    price: 8.99, category: "Đồ ăn vặt", inventory: 120, weight: "200g",
    image: "/hatdinhduong.jpeg", featured: false, tags: "spicy",
  },
  {
    name: "Bánh Phồng Tôm Sa Giang",
    slug: "banh-phong-tom-sa-giang",
    description: "Bánh phồng tôm Sa Giang Đồng Tháp – chiên phồng giòn rụm, thơm mùi tôm, đặc sản nổi tiếng toàn quốc.",
    price: 10.99, originalPrice: 13.99, category: "Đồ ăn vặt", inventory: 90, weight: "200g",
    image: "/doanvat.jpeg", featured: false, tags: "traditional",
    isOnSale: true, salePrice: 8.99,
  },
  {
    name: "Hạt Sen Sấy Khô Đồng Tháp",
    slug: "hat-sen-say-kho-dong-thap",
    description: "Hạt sen khô Đồng Tháp – hạt sen nguyên chất sấy khô, vị ngọt thanh, bổ dưỡng, dùng nấu chè hoặc ăn vặt.",
    price: 19.99, category: "Đồ ăn vặt", inventory: 65, weight: "200g",
    image: "/hatdinhduong.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Bánh Tráng Trộn Tây Ninh",
    slug: "banh-trang-tron-tay-ninh",
    description: "Bánh tráng trộn Tây Ninh đóng gói – kèm đầy đủ gia vị: muối tôm, sate, xoài, tôm khô. Mở ra là trộn và ăn ngay.",
    price: 7.99, category: "Đồ ăn vặt", inventory: 150, weight: "150g",
    image: "/doanvat.jpeg", featured: false, tags: "spicy",
  },
  {
    name: "Snack Khoai Tây Vị Phô Mai",
    slug: "snack-khoai-tay-vi-pho-mai",
    description: "Snack khoai tây vị phô mai – giòn tan, thơm béo, bổ sung phô mai tự nhiên. Snack con cưng của mọi lứa tuổi.",
    price: 5.99, category: "Đồ ăn vặt", inventory: 180, weight: "100g",
    image: "/doanvat.jpeg", featured: false, tags: "",
  },
  {
    name: "Hạt Mắc Ca Tây Nguyên",
    slug: "hat-mac-ca-tay-nguyen",
    description: "Hạt mắc ca (macadamia) Tây Nguyên rang bơ – béo bùi, thơm phức, được mệnh danh 'hoàng hậu các loại hạt'.",
    price: 28.99, originalPrice: 34.99, category: "Đồ ăn vặt", inventory: 50, weight: "200g",
    image: "/hatdinhduong.jpeg", featured: true, tags: "gift,diet",
    isOnSale: true, salePrice: 25.99,
  },
  {
    name: "Bò Khô Sốt Sa Tế",
    slug: "bo-kho-sot-sa-te",
    description: "Bò khô sốt sa tế – thịt bò nguyên thớ, tẩm sa tế cay nồng, sấy khô vừa dai vừa thơm. Nhâm nhi với bia hoặc ăn vặt.",
    price: 22.99, originalPrice: 27.99, category: "Đồ ăn vặt", inventory: 55, weight: "150g",
    image: "/doanvat.jpeg", featured: true, tags: "spicy",
    isOnSale: true, salePrice: 19.99,
  },
  {
    name: "Khô Gà Cay Sả Tắc",
    slug: "kho-ga-cay-sa-tac",
    description: "Khô gà cay sả tắc – ức gà xé thớ tẩm sả, tắc, ớt sấy khô. Vị chua cay mới lạ, dai thơm không ngấy.",
    price: 16.99, category: "Đồ ăn vặt", inventory: 70, weight: "150g",
    image: "/doanvat.jpeg", featured: false, tags: "spicy",
  },
  {
    name: "Hạt Dẻ Sấy Đà Lạt",
    slug: "hat-de-say-da-lat",
    description: "Hạt dẻ tươi sấy Đà Lạt – bùi bùi ngọt nhẹ, thơm khói, giữ nguyên vị hạt dẻ tự nhiên vùng cao nguyên.",
    price: 13.99, category: "Đồ ăn vặt", inventory: 80, weight: "200g",
    image: "/hatdinhduong.jpeg", featured: false, tags: "",
  },
  {
    name: "Khô Heo Mật Ong Năm Cung",
    slug: "kho-heo-mat-ong-nam-cung",
    description: "Khô heo (thịt lợn) mật ong – thịt heo chân giò tẩm mật ong sấy khô, vị ngọt thanh, mềm dai vừa phải.",
    price: 19.99, originalPrice: 24.99, category: "Đồ ăn vặt", inventory: 45, weight: "200g",
    image: "/doanvat.jpeg", featured: false, tags: "gift",
    isOnSale: true, salePrice: 17.99,
  },
  {
    name: "Đậu Hũ Khô Tẩm Gia Vị",
    slug: "dau-hu-kho-tam-gia-vi",
    description: "Đậu hũ (đậu phụ) khô tẩm gia vị – miếng đậu hũ vàng ươm sấy khô, vị mặn ngọt, giàu protein thực vật.",
    price: 9.99, category: "Đồ ăn vặt", inventory: 90, weight: "150g",
    image: "/doanvat.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Snack Rong Biển Giòn",
    slug: "snack-rong-bien-gion",
    description: "Snack rong biển sấy giòn – giàu khoáng chất, vị mặn nhẹ biển khơi, ăn thuần chay, ít calo.",
    price: 7.99, category: "Đồ ăn vặt", inventory: 100, weight: "50g",
    image: "/doanvat.jpeg", featured: false, tags: "diet",
  },
  {
    name: "Hạt Dưa Rang Muối Tết",
    slug: "hat-dua-rang-muoi-tet",
    description: "Hạt dưa rang muối truyền thống – nhân trắng, vỏ giòn đỏ đẹp, đặc sản ngày Tết không thể thiếu.",
    price: 12.99, category: "Đồ ăn vặt", inventory: 100, weight: "300g",
    image: "/hatdinhduong.jpeg", featured: false, tags: "traditional,gift",
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 7. GẠO & NÔNG SẢN (12 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Gạo ST25 An Giang Thơm Ngon",
    slug: "gao-st25-an-giang-thom-ngon",
    description: "Gạo ST25 An Giang – giống gạo ngon nhất thế giới 2019, hạt dài, cơm dẻo mềm, thơm thoang thoảng hương lài.",
    price: 24.99, originalPrice: 29.99, category: "Gạo & Nông sản", inventory: 50, weight: "2kg",
    image: "/gao-nong-san.png", featured: true, tags: "gift",
    isOnSale: true, salePrice: 21.99,
  },
  {
    name: "Gạo Hương Lài Thơm Sóc Trăng",
    slug: "gao-huong-lai-thom-soc-trang",
    description: "Gạo hương lài thơm Sóc Trăng – hạt gạo thơm mùi lài tự nhiên, cơm dẻo ngon, phù hợp ăn hàng ngày.",
    price: 19.99, category: "Gạo & Nông sản", inventory: 60, weight: "2kg",
    image: "/gao-nong-san.png", featured: false, tags: "",
  },
  {
    name: "Nếp Cái Hoa Vàng Hải Hậu",
    slug: "nep-cai-hoa-vang-hai-hau",
    description: "Nếp cái hoa vàng Hải Hậu Nam Định – loại nếp quý nhất Bắc Bộ, dẻo thơm đặc biệt, dùng nấu xôi hoặc làm rượu.",
    price: 22.99, category: "Gạo & Nông sản", inventory: 45, weight: "1kg",
    image: "/gao-nong-san.png", featured: false, tags: "traditional",
  },
  {
    name: "Bắp Rang Bơ Tây Nguyên",
    slug: "bap-rang-bo-tay-nguyen",
    description: "Bắp (ngô) rang bơ Tây Nguyên – bắp nếp vàng rang với bơ tươi, hạt to tròn, béo thơm ngọt.",
    price: 8.99, category: "Gạo & Nông sản", inventory: 110, weight: "200g",
    image: "/gao-nong-san.png", featured: false, tags: "",
  },
  {
    name: "Đậu Phộng Nguyên Hạt Tây Ninh",
    slug: "dau-phong-nguyen-hat-tay-ninh",
    description: "Đậu phộng (lạc) nguyên hạt Tây Ninh – hạt mẩy, đỏ đều, bùi ngậy, giàu protein và chất béo tốt.",
    price: 9.99, category: "Gạo & Nông sản", inventory: 100, weight: "500g",
    image: "/gao-nong-san.png", featured: false, tags: "",
  },
  {
    name: "Mè (Vừng) Đen Thanh Hóa",
    slug: "me-vung-den-thanh-hoa",
    description: "Mè đen Thanh Hóa – hạt mè giàu canxi, omega-3, dùng rang lên rắc xôi, bánh hoặc ép dầu mè thơm.",
    price: 7.99, category: "Gạo & Nông sản", inventory: 90, weight: "300g",
    image: "/gao-nong-san.png", featured: false, tags: "diet",
  },
  {
    name: "Đậu Đen Xanh Lòng Đà Lạt",
    slug: "dau-den-xanh-long-da-lat",
    description: "Đậu đen xanh lòng Đà Lạt – hạt đậu đen vỏ, ruột xanh, nấu chè hoặc rang uống thay trà đều tốt cho sức khỏe.",
    price: 11.99, category: "Gạo & Nông sản", inventory: 75, weight: "500g",
    image: "/gao-nong-san.png", featured: false, tags: "diet",
  },
  {
    name: "Bột Gạo Lứt Nguyên Cám",
    slug: "bot-gao-lut-nguyen-cam",
    description: "Bột gạo lứt nguyên cám – xay từ gạo lứt nguyên hạt, giàu vitamin B, chất xơ, tốt cho người ăn kiêng.",
    price: 12.99, category: "Gạo & Nông sản", inventory: 80, weight: "500g",
    image: "/gao-nong-san.png", featured: false, tags: "diet",
  },
  {
    name: "Khoai Mì (Sắn) Khô Tây Nguyên",
    slug: "khoai-mi-san-kho-tay-nguyen",
    description: "Khoai mì sấy khô Tây Nguyên – sắn ngọt thái lát phơi khô, dùng nấu canh hoặc làm bánh.",
    price: 6.99, category: "Gạo & Nông sản", inventory: 120, weight: "500g",
    image: "/gao-nong-san.png", featured: false, tags: "",
  },
  {
    name: "Muối Biển Hạt To Cần Giờ",
    slug: "muoi-bien-hat-to-can-gio",
    description: "Muối biển hạt to Cần Giờ – thu từ đồng muối tự nhiên, hạt to sáng, dùng làm muối nướng hoặc ngâm rau.",
    price: 5.99, category: "Gạo & Nông sản", inventory: 150, weight: "500g",
    image: "/gao-nong-san.png", featured: false, tags: "",
  },
  {
    name: "Đường Thốt Nốt An Giang",
    slug: "duong-thot-not-an-giang",
    description: "Đường thốt nốt An Giang – được nấu từ nước thốt nốt nguyên chất, màu vàng nâu, vị ngọt thanh có hậu.",
    price: 13.99, originalPrice: 16.99, category: "Gạo & Nông sản", inventory: 70, weight: "500g",
    image: "/gao-nong-san.png", featured: false, tags: "traditional",
    isOnSale: true, salePrice: 11.99,
  },
  {
    name: "Bột Năng Khoai Mì Tây Ninh",
    slug: "bot-nang-khoai-mi-tay-ninh",
    description: "Bột năng (tinh bột sắn) Tây Ninh – trắng mịn, dẻo dai, dùng làm bánh xu xê, bánh bột lọc hoặc nấu chè.",
    price: 7.99, category: "Gạo & Nông sản", inventory: 95, weight: "500g",
    image: "/gao-nong-san.png", featured: false, tags: "",
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 8. ĐỒ UỐNG (10 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Cà Phê Arabica Đà Lạt",
    slug: "ca-phe-arabica-da-lat",
    description: "Cà phê Arabica Đà Lạt rang xay nguyên chất – vị chua nhẹ, thơm hoa quả, phù hợp pha pour-over hoặc drip.",
    price: 19.99, originalPrice: 24.99, category: "Đồ uống", inventory: 60, weight: "250g",
    image: "/do-uong.png", featured: true, tags: "gift",
    isOnSale: true, salePrice: 17.99,
  },
  {
    name: "Cà Phê Robusta Buôn Ma Thuột",
    slug: "ca-phe-robusta-buon-ma-thuot",
    description: "Cà phê Robusta Buôn Ma Thuột rang đậm – vị đắng mạnh, thơm nồng, phin truyền thống là ngon nhất.",
    price: 15.99, category: "Đồ uống", inventory: 75, weight: "250g",
    image: "/do-uong.png", featured: false, tags: "traditional",
  },
  {
    name: "Nước Sâm Bí Đao Đóng Gói",
    slug: "nuoc-sam-bi-dao-dong-goi",
    description: "Nước sâm bí đao khô đóng gói – pha với nước sôi là có ngay thức uống thanh nhiệt giải khát truyền thống.",
    price: 9.99, category: "Đồ uống", inventory: 100, weight: "100g",
    image: "/do-uong.png", featured: false, tags: "diet,traditional",
  },
  {
    name: "Bột Cacao Nguyên Chất Đắk Lắk",
    slug: "bot-cacao-nguyen-chat-dak-lak",
    description: "Bột cacao nguyên chất Đắk Lắk – 100% cacao tự nhiên, không đường, không phụ gia. Pha kem cacao hoặc làm bánh.",
    price: 16.99, category: "Đồ uống", inventory: 65, weight: "200g",
    image: "/do-uong.png", featured: false, tags: "diet",
  },
  {
    name: "Mật Ong Rừng Tây Nguyên",
    slug: "mat-ong-rung-tay-nguyen",
    description: "Mật ong rừng Tây Nguyên nguyên chất – ong tự nhiên hút hoa rừng, màu vàng sẫm, vị ngọt đậm, sánh mịn.",
    price: 29.99, originalPrice: 35.99, category: "Đồ uống", inventory: 40, weight: "500ml",
    image: "/do-uong.png", featured: true, tags: "gift,diet",
    isOnSale: true, salePrice: 26.99,
  },
  {
    name: "Trà Sữa Hòa Tan Thái Lan",
    slug: "tra-sua-hoa-tan-thai-lan",
    description: "Trà sữa Thái Lan hòa tan – màu cam vàng đẹp mắt, vị béo ngọt đặc trưng, pha nóng hoặc lạnh đều ngon.",
    price: 11.99, category: "Đồ uống", inventory: 90, weight: "200g",
    image: "/do-uong.png", featured: false, tags: "",
  },
  {
    name: "Nước Dừa Tươi Đóng Hộp Bến Tre",
    slug: "nuoc-dua-tuoi-dong-hop-ben-tre",
    description: "Nước dừa tươi đóng hộp Bến Tre – 100% nước dừa nguyên chất, không đường, không bảo quản, thanh mát tự nhiên.",
    price: 8.99, category: "Đồ uống", inventory: 110, weight: "330ml",
    image: "/do-uong.png", featured: false, tags: "diet",
  },
  {
    name: "Rượu Cần Tây Nguyên",
    slug: "ruou-can-tay-nguyen",
    description: "Rượu cần Tây Nguyên – rượu gạo nếp ủ truyền thống của người Ê Đê, uống qua cần trúc, vị nhẹ thơm.",
    price: 35.99, category: "Đồ uống", inventory: 30, weight: "1L",
    image: "/do-uong.png", featured: false, tags: "traditional,gift",
  },
  {
    name: "Bột Sắn Dây Bình Thuận",
    slug: "bot-san-day-binh-thuan",
    description: "Bột sắn dây Bình Thuận – pha với đường phèn và nước lạnh là có ngay thức uống thanh nhiệt giải say rượu.",
    price: 10.99, category: "Đồ uống", inventory: 80, weight: "300g",
    image: "/do-uong.png", featured: false, tags: "diet",
  },
  {
    name: "Cà Phê Chồn Weasel Nguyên Chất",
    slug: "ca-phe-chon-weasel-nguyen-chat",
    description: "Cà phê chồn Weasel nguyên chất – cà phê cao cấp nhất Việt Nam, vị đắng nhẹ, hậu vị ngọt kéo dài, không chua.",
    price: 59.99, originalPrice: 75.99, category: "Đồ uống", inventory: 20, weight: "100g",
    image: "/do-uong.png", featured: true, tags: "gift",
    isOnSale: true, salePrice: 54.99,
  },

  // ═══════════════════════════════════════════════════════════════════════
  // 9. ĐẶC SẢN VÙNG MIỀN (10 sản phẩm)
  // ═══════════════════════════════════════════════════════════════════════
  {
    name: "Nem Ninh Hòa Khánh Hòa",
    slug: "nem-ninh-hoa-khanh-hoa",
    description: "Nem Ninh Hòa đặc sản Khánh Hòa – nem chua cuốn lá vông, vị chua ngọt cay nồng, đặc sản khó quên.",
    price: 16.99, category: "Đặc sản vùng miền", inventory: 50, weight: "300g",
    image: "/dac-san-vung-mien.png", featured: true, tags: "traditional",
  },
  {
    name: "Chả Lụa Hà Nội Bách Hóa",
    slug: "cha-lua-ha-noi-bach-hoa",
    description: "Chả lụa (giò lụa) Hà Nội truyền thống – làm từ thịt heo xay mịn, gói lá chuối, thơm ngon mịn mềm.",
    price: 21.99, originalPrice: 25.99, category: "Đặc sản vùng miền", inventory: 40, weight: "500g",
    image: "/dac-san-vung-mien.png", featured: false, tags: "traditional",
    isOnSale: true, salePrice: 18.99,
  },
  {
    name: "Bánh Cuốn Hà Nội Khô",
    slug: "banh-cuon-ha-noi-kho",
    description: "Bánh cuốn Hà Nội khô – bánh cuốn cán mỏng sấy khô, hấp lại là ăn ngay với chả, chấm nước mắm chua ngọt.",
    price: 12.99, category: "Đặc sản vùng miền", inventory: 60, weight: "200g",
    image: "/dac-san-vung-mien.png", featured: false, tags: "traditional",
  },
  {
    name: "Thịt Lợn Sấy Khô Sơn La",
    slug: "thit-lon-say-kho-son-la",
    description: "Thịt lợn sấy khô Sơn La – lợn cắp nách núi sấy khô theo phong cách người Thái Tây Bắc. Vị đậm đà, thơm khói.",
    price: 32.99, originalPrice: 39.99, category: "Đặc sản vùng miền", inventory: 35, weight: "200g",
    image: "/dac-san-vung-mien.png", featured: true, tags: "gift,traditional",
    isOnSale: true, salePrice: 28.99,
  },
  {
    name: "Cơm Lam Ống Tre Tây Bắc",
    slug: "com-lam-ong-tre-tay-bac",
    description: "Cơm lam ống tre Tây Bắc – nếp nương đổ vào ống tre non nướng trên than hồng. Thơm mùi tre, dẻo béo ngất.",
    price: 14.99, category: "Đặc sản vùng miền", inventory: 45, weight: "300g",
    image: "/dac-san-vung-mien.png", featured: false, tags: "traditional",
  },
  {
    name: "Mắm Bò Hóc Khmer Trà Vinh",
    slug: "mam-bo-hoc-khmer-tra-vinh",
    description: "Mắm bò hóc (Prahok) Khmer Trà Vinh – đặc sản của người Khmer Nam Bộ, dùng nấu canh chua hoặc kho thịt.",
    price: 18.99, category: "Đặc sản vùng miền", inventory: 40, weight: "400g",
    image: "/dac-san-vung-mien.png", featured: false, tags: "traditional",
  },
  {
    name: "Lạp Xưởng Tươi Cần Thơ",
    slug: "lap-xuong-tuoi-can-tho",
    description: "Lạp xưởng tươi Cần Thơ – thịt heo xay trộn gia vị nhồi ruột, phơi khô. Nướng hoặc chiên đều thơm ngon.",
    price: 24.99, originalPrice: 29.99, category: "Đặc sản vùng miền", inventory: 45, weight: "400g",
    image: "/dac-san-vung-mien.png", featured: false, tags: "traditional",
    isOnSale: true, salePrice: 21.99,
  },
  {
    name: "Bánh Xèo Bột Pha Sẵn Miền Tây",
    slug: "banh-xeo-bot-pha-san-mien-tay",
    description: "Bột bánh xèo miền Tây pha sẵn – bột gạo xay trộn nghệ, thêm nước cốt dừa là chiên được bánh xèo vàng giòn.",
    price: 9.99, category: "Đặc sản vùng miền", inventory: 80, weight: "400g",
    image: "/dac-san-vung-mien.png", featured: false, tags: "traditional",
  },
  {
    name: "Ruốc (Chà Bông) Heo Sài Gòn",
    slug: "ruoc-cha-bong-heo-sai-gon",
    description: "Ruốc chà bông heo Sài Gòn – thịt heo rang tơi nhuyễn, vị mặn ngọt vừa phải, rắc cháo, ăn với bánh mì đều ngon.",
    price: 13.99, category: "Đặc sản vùng miền", inventory: 70, weight: "200g",
    image: "/dac-san-vung-mien.png", featured: false, tags: "traditional",
  },
  {
    name: "Tôm Khô Hải Sản Mix Quà Biếu",
    slug: "tom-kho-hai-san-mix-qua-bieu",
    description: "Hộp quà hải sản khô tổng hợp – tôm khô, mực khô, cá khô các loại đóng hộp đẹp, thích hợp biếu tặng dịp lễ Tết.",
    price: 69.99, originalPrice: 85.99, category: "Đặc sản vùng miền", inventory: 20, weight: "1kg",
    image: "/dac-san-vung-mien.png", featured: true, tags: "gift",
    isOnSale: true, salePrice: 59.99,
  },
];

// ─── MAIN ────────────────────────────────────────────────────────────────────
async function main() {
  console.log("🌱 Seeding 110 products...");

  // Build slug → categoryId map
  const categories = await prisma.category.findMany({
    select: { id: true, name: true },
  });
  const catMap = new Map(categories.map((c) => [c.name, c.id]));

  let created = 0;
  let skipped = 0;

  for (const p of allProducts) {
    const existing = await prisma.product.findUnique({ where: { slug: p.slug } });
    if (existing) {
      skipped++;
      continue;
    }

    const categoryId = catMap.get(p.category) ?? null;

    await prisma.product.create({
      data: {
        name: p.name,
        slug: p.slug,
        description: p.description,
        price: p.price,
        originalPrice: p.originalPrice ?? null,
        salePrice: p.salePrice ?? null,
        isOnSale: p.isOnSale ?? false,
        category: p.category,
        categoryId,
        inventory: p.inventory,
        weight: p.weight,
        image: p.image,
        featured: p.featured ?? false,
        tags: p.tags ?? "",
        ratingAvg: parseFloat((4.2 + Math.random() * 0.8).toFixed(1)),
        ratingCount: Math.floor(Math.random() * 80) + 10,
        soldCount: Math.floor(Math.random() * 200) + 10,
        isVisible: true,
        isDeleted: false,
      },
    });
    created++;
  }

  const total = await prisma.product.count();
  console.log(`\n✅ Created: ${created} products`);
  console.log(`⏭️  Skipped: ${skipped} (already exist)`);
  console.log(`📦 Total products in DB: ${total}`);
  console.log("\n🎉 Done!");
}

main()
  .then(async () => { await prisma.$disconnect(); })
  .catch(async (e) => {
    console.error("❌ Seed failed:", e);
    await prisma.$disconnect();
    process.exit(1);
  });
