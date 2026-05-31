/**
 * LIKEFOOD – Seed 100 Blog Posts (SEO-Optimized)
 * Tạo 100 bài viết chuẩn SEO về đặc sản Việt Nam
 */
import { PrismaClient } from "../src/generated/client";

const prisma = new PrismaClient();

// 50 ảnh trong /donggoi/
const IMAGES = [
  "/donggoi/z7505564684692_d6276e4ba8c26d027fd3b44ae5a0fa92.jpg",
  "/donggoi/z7505564686729_66d7081fdb9eb829ef3b8e0726c69d15.jpg",
  "/donggoi/z7505564694601_9a8a20e42c5b562612a5c828b940441e.jpg",
  "/donggoi/z7505564696871_2684d51a610e10a63218832a7d0e26d3.jpg",
  "/donggoi/z7505564700130_5dfdee1b79d74047db08339603bfb08d.jpg",
  "/donggoi/z7505564706864_84dc016b181a848b0b0fdae575b946f5.jpg",
  "/donggoi/z7505564710374_b57e8a2125530f9bd0b1c26e671da281.jpg",
  "/donggoi/z7505564716466_19362f3e6e40612fb2d28f029726d15d.jpg",
  "/donggoi/z7505564722203_71d3e72e8069b04519218bcf7274eded.jpg",
  "/donggoi/z7505564724290_73622428bb0eeecf9af5f68f615d2547.jpg",
  "/donggoi/z7505564730110_e4d1502776108876749bdcd76fe09e0d.jpg",
  "/donggoi/z7505564735476_b57bfb9a1bb28329a1cdfb66736479f0.jpg",
  "/donggoi/z7505564740297_0cda7f6f6a772b8f2dad30652e565f32.jpg",
  "/donggoi/z7505564745517_52a108b55ca4c181de118cd6bc541a66.jpg",
  "/donggoi/z7505564748092_5512a5fe8ea0f89d9c3f96c46d81fe69.jpg",
  "/donggoi/z7505564753948_f0d81d65a7762dca7f17982490eaf9cf.jpg",
  "/donggoi/z7505564758947_430f3c8c878622add39d0a19ed9d6891.jpg",
  "/donggoi/z7505564764977_b2c4811ea9d79d33f7353632ecc85303.jpg",
  "/donggoi/z7505564768752_18751c88b938fdafd23a14f74aea42de.jpg",
  "/donggoi/z7505564774640_25ba15fe66de08ad167261adb31b9714.jpg",
  "/donggoi/z7505564778689_7dcfd553c3107f2e130150966053d04f.jpg",
  "/donggoi/z7505564779788_ebcc80ff9c18331de3e6302afdecf569.jpg",
  "/donggoi/z7505564788154_04e220f5c19955812ababb052bf62beb.jpg",
  "/donggoi/z7505564791070_63fbba35ef8b263b11cc411d85502a29.jpg",
  "/donggoi/z7505564796792_13af278803bb591366ec9e28a26d5b16.jpg",
  "/donggoi/z7505564801177_b20e6b3c65f620a0b197327182b4355f.jpg",
  "/donggoi/z7505564805693_e0fd36baed08ed6ced5fe2d72e10afbb.jpg",
  "/donggoi/z7505564810533_0b04ac75d81835ee199268de74aad8ed.jpg",
  "/donggoi/z7505564814085_1f26996babda2fcc310b19da49c0d038.jpg",
  "/donggoi/z7505564819035_8e5ad951bd0587488a22c69b7ae07e95.jpg",
  "/donggoi/z7505564823199_b8eca2aee4a20b87656d1eeafb46bccf.jpg",
  "/donggoi/z7505564829120_e932e2efcc35d3f998dec98ed583760e.jpg",
  "/donggoi/z7505564832874_547cd36914a8ed33cbe04ab8dfe685bd.jpg",
  "/donggoi/z7505564839497_e504d1967acbdd11472ee76034dcc2b4.jpg",
  "/donggoi/z7505564842032_6e2b027e26fd1989beb7cc4749ea93cd.jpg",
  "/donggoi/z7505564846512_eebb47d9bd5137b0b6d6692f91d10c48.jpg",
  "/donggoi/z7505564848796_7b0f358c3c0ef17efc8b99a8b48ea066.jpg",
  "/donggoi/z7505564855196_c90f29755aefde1e525db90bd7f17126.jpg",
  "/donggoi/z7505564859011_8a8b697acb23ba5e98cfea68c2ce343f.jpg",
  "/donggoi/z7505564868161_fef89cd0f9813c230ca65763ebf2f1f2.jpg",
  "/donggoi/z7505564871024_efd275f2b4614e7a22ab105c40eefedb.jpg",
  "/donggoi/z7505564875008_9cd81797c9c011d276ec1b434e691d73.jpg",
  "/donggoi/z7505564880701_3a2b8c43854ab9615284fc28b455cc46.jpg",
  "/donggoi/z7505564881208_abe0ec43e14fa3d89d19618047aefa29.jpg",
  "/donggoi/z7505564890463_9e4e59dad2c045b1e26269e591320d86.jpg",
  "/donggoi/z7505564893406_1b7238dfe36b333e19ec6832714ef729.jpg",
  "/donggoi/z7505564898290_8a3adf0c606e893d537d549b47d3c01d.jpg",
  "/donggoi/z7505564902174_507f7d71f1f49151b5bdc420cc522fa7.jpg",
  "/donggoi/z7505564908794_c0d943122fbfaaf86f8a01a4b8b40381.jpg",
  "/donggoi/z7505564911183_81aa3ad25d676f1c4da687f2329a8644.jpg",
];

const img = (i: number) => IMAGES[i % IMAGES.length];

// ─── 100 BÀI VIẾT SEO ────────────────────────────────────────────────────────
const posts = [
  // ═══ NHÓM 1: ĐẶC SẢN VÙNG MIỀN ═══
  {
    title: "Top 10 Đặc Sản Miền Tây Ngon Nhất Mà Người Việt Xa Xứ Không Thể Quên",
    titleEn: "Top 10 Best Mekong Delta Specialties Vietnamese Expats Can Never Forget",
    slug: "top-10-dac-san-mien-tay-nguoi-viet-xa-xu",
    summary: "Miền Tây sông nước Việt Nam sở hữu kho tàng đặc sản phong phú từ hải sản khô đến trái cây sấy. Khám phá ngay 10 đặc sản không thể bỏ qua dành cho người Việt xa xứ tại Mỹ.",
    category: "Đặc sản vùng miền", categoryEn: "Regional Specialties",
    content: `<h1>Top 10 Đặc Sản Miền Tây Ngon Nhất Mà Người Việt Xa Xứ Không Thể Quên</h1>
<p>Miền Tây Nam Bộ – vùng đồng bằng sông Cửu Long trù phú – không chỉ nổi tiếng với cảnh đẹp sông nước mà còn sở hữu kho tàng ẩm thực đặc sản vô cùng phong phú. Đối với người Việt xa xứ tại Mỹ, những hương vị này chính là sợi dây kết nối với quê hương.</p>

<h2>1. Tôm Khô Cà Mau – Vua Của Các Loại Hải Sản Khô</h2>
<p>Tôm khô Cà Mau được xem là "vua" trong số các loại hải sản khô của Việt Nam. Được chế biến từ tôm biển tươi sống và phơi khô tự nhiên dưới ánh nắng mặt trời, tôm khô Cà Mau nổi tiếng bởi <strong>thịt chắc, vị ngọt đậm đà và hương thơm đặc trưng</strong>. Tôm khô loại 1 Cà Mau có kích thước đều đẹp, màu đỏ cam tự nhiên, không tẩm màu hóa học.</p>
<p>Người Việt tại Mỹ thường dùng tôm khô để <em>nấu canh chua, xào rau muống, trộn gỏi hoặc làm bánh canh</em>. Giá trị dinh dưỡng cao với lượng protein dồi dào khiến tôm khô trở thành nguyên liệu không thể thiếu trong bếp Việt.</p>

<h2>2. Mực Khô Phú Quốc – Đặc Sản Đảo Ngọc</h2>
<p>Mực khô câu Phú Quốc là một trong những đặc sản biển nổi tiếng nhất Việt Nam. Được câu trực tiếp từ vùng biển trong xanh quanh đảo Phú Quốc, mực có thịt dày, ngọt tự nhiên. Sau khi phơi khô, mực giữ nguyên hương vị biển khơi đặc trưng.</p>

<h2>3. Nước Mắm Phú Quốc 40 Độ Đạm</h2>
<p>Không có loại nước mắm nào sánh được với nước mắm Phú Quốc nguyên chất 40 độ đạm. Được ủ từ cá cơm tươi thu hoạch tại chỗ theo phương pháp truyền thống, nước mắm Phú Quốc có màu cánh gián đẹp, vị ngọt hậu và hương thơm đặc trưng không nơi nào có được.</p>

<h2>4. Khô Cá Lóc Đồng Tháp</h2>
<p>Cá lóc – loài cá nước ngọt đặc trưng của vùng đồng bằng sông Cửu Long – được phơi khô theo phương pháp truyền thống tại Đồng Tháp. Thịt cá ngọt, dai, thơm, bảo quản được lâu mà không cần chất bảo quản hóa học.</p>

<h2>5. Muối Tôm Tây Ninh – Vị Cay Nồng Không Thể Quên</h2>
<p>Muối tôm Tây Ninh là sự kết hợp hoàn hảo giữa muối biển, tôm khô xay mịn và ớt hiểm. Vị cay nồng đặc trưng của ớt Tây Ninh kết hợp với vị ngọt từ tôm tạo nên hương vị độc đáo chỉ có ở đây.</p>

<h2>6. Trái Cây Sấy Miền Tây Phong Phú</h2>
<p>Xoài sấy dẻo Cam Ranh, chuối sấy giòn Tiền Giang, mít sấy giòn Đồng Nai – mỗi loại trái cây sấy mang một hương vị đặc trưng riêng của từng vùng đất. Không có đường nhân tạo, không phụ gia, chỉ là vị ngọt tự nhiên của trái cây chín mọng.</p>

<h2>7. Mắm Cá Linh Châu Đốc</h2>
<p>Mắm cá linh là đặc sản không thể bỏ qua của vùng Châu Đốc An Giang. Được làm từ cá linh mùa nước nổi ủ hơn 6 tháng, mắm cá linh có hương vị đậm đà, phức hợp không thể tìm thấy ở bất kỳ nơi nào khác trên thế giới.</p>

<h2>8. Mứt Dừa Non Bến Tre</h2>
<p>Bến Tre – xứ dừa của Việt Nam – nổi tiếng với những món mứt dừa truyền thống. Mứt dừa non sên với đường phèn nguyên chất có vị ngọt thanh, thơm béo, là món ăn không thể thiếu trong dịp Tết Nguyên Đán.</p>

<h2>9. Trà Sen Tây Hồ – Hương Vị Thượng Hạng</h2>
<p>Trà sen Tây Hồ Hà Nội là sản phẩm được ướp từ hoa sen tươi nở đúng buổi sớm mai kết hợp với trà móc câu Thái Nguyên thượng hạng. Hương thơm thanh tao, vị ngọt dịu hậu, mỗi ấm trà sen là một trải nghiệm văn hóa tinh tế.</p>

<h2>10. Bánh Tráng Mè Tây Ninh</h2>
<p>Bánh tráng mè Tây Ninh giòn tan với lớp mè rang thơm phức là đặc sản gắn liền với tuổi thơ của nhiều người Việt. Ăn liền, cuốn thịt hay chấm tương đều ngon theo cách riêng của nó.</p>

<h2>Mua Đặc Sản Miền Tây Tại Mỹ Ở Đâu?</h2>
<p>LIKEFOOD tự hào là địa chỉ mua sắm đặc sản Việt Nam uy tín tại Mỹ. Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo chất lượng và nguồn gốc rõ ràng. Giao hàng toàn quốc Mỹ, miễn phí vận chuyển đơn từ $200.</p>`,
    publishedAt: new Date("2026-01-15"),
  },
  {
    title: "Khô Cá Sặc Bổi Cà Mau – Đặc Sản Biển Xanh Chuẩn Vị Miền Tây",
    titleEn: "Dried Snakeskin Gourami Fish from Ca Mau – Authentic Mekong Delta Specialty",
    slug: "kho-ca-sac-boi-ca-mau-dac-san-chuan-vi-mien-tay",
    summary: "Khô cá sặc bổi Cà Mau nổi tiếng khắp miền Tây với hương vị đặc trưng khó quên. Tìm hiểu cách chọn mua, chế biến và bảo quản đúng cách để giữ trọn hương vị đặc sản này.",
    category: "Hải sản khô", categoryEn: "Dried Seafood",
    content: `<h1>Khô Cá Sặc Bổi Cà Mau – Đặc Sản Biển Xanh Chuẩn Vị Miền Tây</h1>
<p>Trong số vô vàn đặc sản của vùng Cà Mau, khô cá sặc bổi nổi bật như một biểu tượng ẩm thực không thể thiếu. Được chế biến từ cá sặc tươi vớt từ những cánh đồng nước mênh mông, qua bàn tay khéo léo của người dân địa phương, khô cá sặc bổi Cà Mau mang trong mình hương vị đặc trưng khó lẫn vào đâu.</p>

<h2>Cá Sặc Bổi Là Gì? Tại Sao Cà Mau Nổi Tiếng?</h2>
<p>Cá sặc bổi (tên khoa học: <em>Trichopodus trichopterus</em>) là loài cá nước ngọt sinh sống phổ biến ở vùng đồng bằng sông Cửu Long. Cà Mau – tỉnh cực Nam của Việt Nam – với hệ sinh thái sông rạch phong phú là môi trường lý tưởng để cá sặc sinh trưởng. Cá có thịt ngọt, béo, ít xương dăm nên được ưa chuộng làm nguyên liệu chế biến khô.</p>

<h2>Quy Trình Làm Khô Cá Sặc Bổi Truyền Thống</h2>
<p>Người dân Cà Mau làm khô cá sặc theo quy trình truyền thống được lưu truyền qua nhiều thế hệ:</p>
<ul>
<li><strong>Chọn cá tươi:</strong> Chỉ dùng cá sặc bổi tươi sống, kích thước đều nhau (thường từ 15-20cm)</li>
<li><strong>Sơ chế:</strong> Làm sạch vảy, bỏ ruột, rửa nhiều lần với nước muối loãng</li>
<li><strong>Ướp muối:</strong> Ướp muối hạt trong 2-4 giờ tùy kích thước cá</li>
<li><strong>Phơi nắng:</strong> Phơi 2-3 nắng liên tục, trở đều tay để cá khô đều</li>
<li><strong>Bảo quản:</strong> Đóng gói kín, bảo quản nơi khô ráo hoặc trong ngăn đá</li>
</ul>

<h2>Cách Nhận Biết Khô Cá Sặc Bổi Chất Lượng</h2>
<p>Khi mua khô cá sặc bổi, cần chú ý những điểm sau để chọn được sản phẩm chất lượng:</p>
<ul>
<li>Màu vàng nâu tự nhiên, không có màu đỏ sặc sỡ (dấu hiệu tẩm màu)</li>
<li>Mùi thơm đặc trưng của cá khô, không có mùi hôi hay mùi lạ</li>
<li>Thịt cá khô đều, không còn nước bên trong</li>
<li>Cá cứng chắc, không bị mốc hay ướt</li>
</ul>

<h2>Những Cách Chế Biến Khô Cá Sặc Bổi Ngon Nhất</h2>
<h3>Chiên Giòn – Cách Đơn Giản Nhất</h3>
<p>Chiên giòn là cách chế biến phổ biến nhất. Cho dầu ăn vào chảo đủ ngập cá, chiên lửa vừa đến khi cá vàng giòn đều. Ăn kèm cơm trắng và rau sống, chấm nước mắm pha là bữa cơm giản dị mà ngon miệng vô cùng.</p>
<h3>Kho Tiêu Đậm Đà</h3>
<p>Khô cá sặc kho tiêu với tỏi, ớt và nước dừa tươi cho ra món kho đậm đà, thơm ngon. Màu nước kho từ nâu nhạt đến cánh gián đẹp mắt, vị mặn ngọt cân bằng.</p>
<h3>Nướng Than – Hương Vị Nguyên Bản</h3>
<p>Nướng trực tiếp trên than hoa là cách thưởng thức khô cá sặc nguyên bản nhất. Khói than thấm vào từng thớ cá tạo nên hương vị khó quên, chấm muối ớt hoặc tương ớt.</p>

<h2>Lợi Ích Dinh Dưỡng Của Khô Cá Sặc Bổi</h2>
<p>Không chỉ ngon miệng, khô cá sặc còn là nguồn dinh dưỡng dồi dào: giàu <strong>protein, canxi, phospho và các khoáng chất thiết yếu</strong>. Đặc biệt, quá trình phơi khô tự nhiên giúp bảo toàn hàm lượng omega-3 có lợi cho tim mạch.</p>`,
    publishedAt: new Date("2026-01-20"),
  },
  {
    title: "Nước Mắm Phú Quốc – Bí Quyết Chọn Mua Và Phân Biệt Hàng Thật Giả",
    titleEn: "Phu Quoc Fish Sauce – How to Choose Authentic Products and Avoid Fakes",
    slug: "nuoc-mam-phu-quoc-bi-quyet-chon-mua-phan-biet-hang-that-gia",
    summary: "Nước mắm Phú Quốc là đặc sản nổi tiếng nhất Việt Nam nhưng không ít người mua phải hàng giả. Hướng dẫn chi tiết cách chọn nước mắm thật, đúng chất lượng để không mất tiền oan.",
    category: "Gia vị Việt", categoryEn: "Vietnamese Spices",
    content: `<h1>Nước Mắm Phú Quốc – Bí Quyết Chọn Mua Và Phân Biệt Hàng Thật Giả</h1>
<p>Nước mắm Phú Quốc đã được cấp chỉ dẫn địa lý và bảo hộ tại Liên minh Châu Âu – minh chứng cho chất lượng và danh tiếng vượt thời gian của sản phẩm này. Tuy nhiên, trên thị trường hiện nay có không ít sản phẩm giả mạo danh nước mắm Phú Quốc. Bài viết này sẽ giúp bạn phân biệt và chọn mua đúng loại.</p>

<h2>Nước Mắm Phú Quốc Thật Được Làm Như Thế Nào?</h2>
<p>Nước mắm Phú Quốc chính hiệu được sản xuất hoàn toàn từ cá cơm tươi (cá cơm sọc tiêu và cá cơm đỏ) đánh bắt tại vùng biển xung quanh đảo Phú Quốc. Tỷ lệ truyền thống là <strong>3 tấn cá : 1 tấn muối</strong>, ủ trong thùng gỗ bằng lăng từ 12-15 tháng.</p>
<p>Sau quá trình ủ, nước mắm được lọc nhiều lần để thu được nước mắm cốt trong vắt, màu cánh gián đậm, nồng độ đạm từ 25-40 độ. Đây chính là sự khác biệt căn bản so với nước mắm công nghiệp.</p>

<h2>5 Cách Phân Biệt Nước Mắm Phú Quốc Thật – Giả</h2>
<h3>1. Kiểm Tra Nhãn Hiệu và Chỉ Dẫn Địa Lý</h3>
<p>Nước mắm Phú Quốc chính hiệu phải có logo chỉ dẫn địa lý được cấp phép, tên nhà sản xuất rõ ràng, có địa chỉ tại Kiên Giang và mã QR truy xuất nguồn gốc.</p>
<h3>2. Quan Sát Màu Sắc</h3>
<p>Nước mắm thật có màu nâu cánh gián đẹp, trong vắt, óng ánh khi soi dưới ánh sáng. Nước mắm giả thường có màu đen sẫm hoặc màu nâu nhạt không đồng đều.</p>
<h3>3. Ngửi Mùi</h3>
<p>Mùi của nước mắm Phú Quốc thật: thơm nồng đặc trưng của cá biển, có mùi ngọt hậu nhẹ. Hàng giả thường có mùi hăng gắt hoặc mùi hóa chất.</p>
<h3>4. Thử Vị</h3>
<p>Vị ngọt umami đậm đà, không quá mặn, có hậu ngọt kéo dài là đặc điểm nhận biết nước mắm Phú Quốc thật. Nước mắm giả thường mặn chát, vị đơn điệu.</p>
<h3>5. Kiểm Tra Độ Đạm</h3>
<p>Nước mắm Phú Quốc cốt đặc biệt có nồng độ đạm từ 35-40°N, loại thường từ 25-30°N. Luôn đọc kỹ thông tin trên nhãn.</p>

<h2>Hướng Dẫn Sử Dụng Nước Mắm Phú Quốc Đúng Cách</h2>
<p>Để tận dụng tối đa hương vị và giá trị dinh dưỡng của nước mắm Phú Quốc:</p>
<ul>
<li><strong>Nấu ăn:</strong> Chỉ cần dùng lượng ít hơn nước mắm thường vì độ đạm cao hơn nhiều</li>
<li><strong>Pha nước chấm:</strong> Nước mắm – đường – chanh – tỏi – ớt theo tỷ lệ 1:1:1:0.5:0.5</li>
<li><strong>Bảo quản:</strong> Đậy kín, để nơi thoáng mát, tránh ánh nắng trực tiếp</li>
<li><strong>Hạn dùng:</strong> Sử dụng trong 12-18 tháng kể từ ngày sản xuất</li>
</ul>`,
    publishedAt: new Date("2026-01-25"),
  },
  {
    title: "Trái Cây Sấy Không Đường – Lựa Chọn Ăn Vặt Lành Mạnh Cho Người Việt Tại Mỹ",
    titleEn: "Sugar-Free Dried Fruits – Healthy Snack Options for Vietnamese in America",
    slug: "trai-cay-say-khong-duong-an-vat-lanh-manh",
    summary: "Trái cây sấy không đường ngày càng được ưa chuộng như snack lành mạnh. Tìm hiểu các loại trái cây sấy phổ biến, lợi ích sức khỏe và cách chọn mua sản phẩm chất lượng.",
    category: "Sức khỏe", categoryEn: "Health",
    content: `<h1>Trái Cây Sấy Không Đường – Lựa Chọn Ăn Vặt Lành Mạnh Cho Người Việt Tại Mỹ</h1>
<p>Trong nhịp sống bận rộn tại Mỹ, việc tìm kiếm một loại snack vừa ngon vừa lành mạnh luôn là thách thức. Trái cây sấy không đường – đặc biệt là các loại trái cây sấy đặc sản Việt Nam – đang trở thành lựa chọn hàng đầu của nhiều gia đình Việt xa xứ.</p>

<h2>Tại Sao Trái Cây Sấy Tốt Hơn Snack Công Nghiệp?</h2>
<p>So với các loại bánh kẹo, snack chiên công nghiệp, trái cây sấy có nhiều ưu điểm vượt trội:</p>
<ul>
<li><strong>Không chất bảo quản nhân tạo:</strong> Quá trình sấy tự nhiên giúp bảo quản mà không cần hóa chất</li>
<li><strong>Giữ nguyên dinh dưỡng:</strong> Vitamin, khoáng chất và chất xơ được bảo toàn phần lớn</li>
<li><strong>Kiểm soát khẩu phần:</strong> Dễ mang theo, tiện ăn vặt bất cứ lúc nào</li>
<li><strong>Vị ngọt tự nhiên:</strong> Không cần thêm đường nhân tạo hay hương liệu</li>
</ul>

<h2>Top Trái Cây Sấy Đặc Sản Việt Nam Được Ưa Chuộng Nhất</h2>
<h3>Xoài Sấy Dẻo Cam Ranh</h3>
<p>Làm từ xoài cát Hòa Lộc nổi tiếng, xoài sấy dẻo Cam Ranh giữ được màu vàng tươi tự nhiên và hương thơm quyến rũ. Không đường, không phụ gia, chỉ là vị ngọt thanh của xoài chín mọng được cô đọng lại qua quá trình sấy cẩn thận.</p>
<h3>Mít Sấy Giòn Đồng Nai</h3>
<p>Mít nghệ Đồng Nai chín vàng được sấy chân không ở nhiệt độ thấp, giữ nguyên cấu trúc tế bào và hàm lượng dinh dưỡng. Miếng mít sấy giòn rụm, thơm, ngọt tự nhiên – hoàn toàn không dầu mỡ.</p>
<h3>Vải Sấy Lục Ngạn Bắc Giang</h3>
<p>Vải thiều Lục Ngạn – loại vải ngon nhất Việt Nam – sau khi sấy khô giữ được vị ngọt đậm và hương thơm quyến rũ đặc trưng. Giàu vitamin C và các chất chống oxy hóa.</p>

<h2>Lợi Ích Sức Khỏe Của Trái Cây Sấy</h2>
<p>Các nghiên cứu dinh dưỡng cho thấy trái cây sấy mang lại nhiều lợi ích:</p>
<ul>
<li>Cung cấp năng lượng nhanh chóng nhờ carbohydrate tự nhiên</li>
<li>Giàu chất xơ hỗ trợ tiêu hóa</li>
<li>Chứa nhiều polyphenol có tác dụng chống oxy hóa</li>
<li>Bổ sung kali, magie và các vi khoáng quan trọng</li>
</ul>

<h2>Cách Bảo Quản Trái Cây Sấy Đúng Cách</h2>
<p>Để trái cây sấy giữ được chất lượng tốt nhất, cần bảo quản trong hộp kín, tránh ẩm và ánh sáng trực tiếp. Có thể bảo quản ở nhiệt độ phòng trong 3-6 tháng, hoặc trong ngăn lạnh lên đến 12 tháng.</p>`,
    publishedAt: new Date("2026-02-01"),
  },
  {
    title: "Mắm Cá Linh Châu Đốc – Đặc Sản Mùa Nước Nổi Vùng An Giang",
    titleEn: "Chau Doc Fermented Fish Paste – The Legendary Flood Season Specialty of An Giang",
    slug: "mam-ca-linh-chau-doc-dac-san-mua-nuoc-noi",
    summary: "Mắm cá linh Châu Đốc là đặc sản gắn liền với mùa nước nổi huyền thoại của vùng An Giang. Hương vị đậm đà, quy trình ủ lâu ngày tạo nên sản phẩm độc đáo không nơi nào có được.",
    category: "Đặc sản vùng miền", categoryEn: "Regional Specialties",
    content: `<h1>Mắm Cá Linh Châu Đốc – Đặc Sản Mùa Nước Nổi Vùng An Giang</h1>
<p>Mỗi năm, khi mùa nước nổi về – thường từ tháng 8 đến tháng 11 dương lịch – vùng đồng bằng sông Cửu Long lại tràn ngập cá linh. Người dân Châu Đốc An Giang tận dụng nguồn cá dồi dào này để làm ra thứ mắm nổi tiếng nhất Việt Nam: mắm cá linh Châu Đốc.</p>

<h2>Cá Linh – Linh Hồn Của Mùa Nước Nổi</h2>
<p>Cá linh (tên khoa học: <em>Henicorhynchus siamensis</em>) là loài cá đặc trưng chỉ xuất hiện theo mùa nước nổi. Cá có kích thước nhỏ, thịt ngọt, xương mềm ăn được. Đặc biệt, cá linh non đầu mùa – được gọi là "cá linh mùa đầu" – là nguyên liệu tốt nhất để làm mắm.</p>

<h2>Quy Trình Làm Mắm Cá Linh Truyền Thống Châu Đốc</h2>
<p>Người dân Châu Đốc đã truyền lại quy trình làm mắm cá linh qua nhiều thế hệ:</p>
<ol>
<li><strong>Chọn cá:</strong> Cá linh tươi, còn sống, kích thước đều nhau từ 5-8cm</li>
<li><strong>Ướp muối:</strong> Cá được rửa sạch, để ráo rồi ướp với muối hạt theo tỷ lệ 3:1 (cá:muối)</li>
<li><strong>Ủ lần 1:</strong> Cho cá vào khạp (hũ sành) sạch, đậy kín, ủ 30 ngày</li>
<li><strong>Thêm thính:</strong> Sau 30 ngày, thêm thính gạo rang (hoặc thính mì) để tạo hương vị đặc trưng</li>
<li><strong>Ủ tiếp:</strong> Ủ thêm 5-6 tháng cho mắm chín hoàn toàn</li>
<li><strong>Hoàn thiện:</strong> Lọc, thêm đường thốt nốt, tỏi, ớt tùy khẩu vị</li>
</ol>

<h2>Hương Vị Đặc Trưng Không Thể Nhầm Lẫn</h2>
<p>Mắm cá linh chín có màu đỏ cam đẹp, mùi thơm đặc trưng phức hợp của mắm chín và thính gạo. Vị mặn ngọt hài hòa, hậu ngọt dài, không có vị chua gắt hay mùi khó chịu khi mắm đã chín đúng cách.</p>

<h2>Cách Thưởng Thức Mắm Cá Linh</h2>
<p>Mắm cá linh được thưởng thức theo nhiều cách khác nhau tùy vùng miền:</p>
<ul>
<li><strong>Lẩu mắm:</strong> Đây là cách phổ biến nhất – nấu mắm với sả, ớt, me, ăn kèm rau sống và bún tươi</li>
<li><strong>Ăn sống:</strong> Mắm chín ăn trực tiếp với chuối chát, rau thơm và cơm trắng</li>
<li><strong>Làm gia vị:</strong> Dùng như nước mắm để nêm canh, xào thịt</li>
<li><strong>Chưng thịt:</strong> Mắm cá linh chưng với thịt ba chỉ và nước dừa là món ăn mê hồn</li>
</ul>`,
    publishedAt: new Date("2026-02-05"),
  },
  {
    title: "Cà Phê Chồn Weasel Việt Nam – Loại Cà Phê Đắt Nhất Thế Giới Có Gì Đặc Biệt?",
    titleEn: "Vietnamese Weasel Coffee – What Makes It the World's Most Expensive Coffee?",
    slug: "ca-phe-chon-weasel-viet-nam-dat-nhat-the-gioi",
    summary: "Cà phê chồn Weasel Việt Nam được xếp vào hàng đắt nhất thế giới. Tìm hiểu nguồn gốc, quy trình sản xuất độc đáo và tại sao loại cà phê này lại đặc biệt đến vậy.",
    category: "Đồ uống", categoryEn: "Beverages",
    content: `<h1>Cà Phê Chồn Weasel Việt Nam – Loại Cà Phê Đắt Nhất Thế Giới Có Gì Đặc Biệt?</h1>
<p>Kopi Luwak của Indonesia có thể nổi tiếng hơn, nhưng cà phê chồn Weasel Việt Nam đang ngày càng được giới sành cà phê thế giới biết đến và đánh giá cao. Với giá lên đến hàng trăm USD mỗi kg, điều gì làm cho loại cà phê này trở nên đặc biệt đến vậy?</p>

<h2>Nguồn Gốc Của Cà Phê Chồn Việt Nam</h2>
<p>Cà phê chồn được sản xuất từ hạt cà phê đã qua hệ tiêu hóa của con chồn hương (còn gọi là cầy vòi hương – <em>Paradoxurus hermaphroditus</em>). Chồn hương chỉ chọn ăn những quả cà phê chín đỏ, mọng, ngon nhất. Trong quá trình tiêu hóa, các enzyme trong dạ dày chồn tác động lên hạt cà phê, phân hủy một phần protein và làm thay đổi cấu trúc hóa học của hạt.</p>

<h2>Quy Trình Sản Xuất Đặc Biệt</h2>
<p>Sau khi chồn thải ra, người nông dân thu nhặt hạt cà phê, rửa sạch kỹ lưỡng và phơi khô. Quá trình rang sau đó cần đặc biệt cẩn thận để không làm mất đi những hương vị đặc trưng đã được tạo ra trong quá trình tiêu hóa.</p>

<h2>Hương Vị Khác Biệt</h2>
<p>Cà phê chồn Weasel có hương vị khác hoàn toàn so với cà phê thông thường:</p>
<ul>
<li>Vị đắng nhẹ, không gắt</li>
<li>Hậu vị ngọt kéo dài, đặc trưng</li>
<li>Không có vị chua của cà phê thông thường</li>
<li>Hương thơm phức hợp, sâu lắng</li>
</ul>

<h2>Cách Pha Cà Phê Chồn Đúng Chuẩn</h2>
<p>Để thưởng thức trọn vẹn hương vị của cà phê chồn, cần pha theo đúng phương pháp:</p>
<ul>
<li>Nhiệt độ nước: 90-92°C (không quá nóng)</li>
<li>Tỷ lệ: 15g cà phê : 200ml nước</li>
<li>Phương pháp: Pour-over hoặc French press là lý tưởng nhất</li>
<li>Không nên thêm sữa hay đường để cảm nhận đầy đủ hương vị</li>
</ul>`,
    publishedAt: new Date("2026-02-10"),
  },
  {
    title: "Hạt Điều Bình Phước – Vì Sao Được Mệnh Danh Là 'Vàng Trắng' Của Việt Nam?",
    titleEn: "Binh Phuoc Cashew Nuts – Why Are They Called Vietnam's 'White Gold'?",
    slug: "hat-dieu-binh-phuoc-vang-trang-viet-nam",
    summary: "Việt Nam là nước xuất khẩu hạt điều lớn nhất thế giới, trong đó Bình Phước chiếm phần lớn sản lượng. Tìm hiểu tại sao hạt điều Bình Phước được mệnh danh là 'vàng trắng' và cách chọn mua chất lượng.",
    category: "Đồ ăn vặt", categoryEn: "Snacks",
    content: `<h1>Hạt Điều Bình Phước – Vì Sao Được Mệnh Danh Là 'Vàng Trắng' Của Việt Nam?</h1>
<p>Mỗi năm, Việt Nam xuất khẩu hơn 600,000 tấn hạt điều ra thị trường thế giới, chiếm hơn 40% thị phần toàn cầu. Trong đó, tỉnh Bình Phước – còn được gọi là "thủ phủ điều" – đóng góp phần lớn sản lượng. Chẳng lạ khi người ta gọi hạt điều Bình Phước là "vàng trắng" của Việt Nam.</p>

<h2>Điều Kiện Tự Nhiên Lý Tưởng Của Bình Phước</h2>
<p>Bình Phước có khí hậu nhiệt đới gió mùa với mùa khô kéo dài, đất đỏ bazan phong phú – điều kiện lý tưởng để cây điều phát triển. Cây điều Bình Phước cho hạt to, tỷ lệ nhân cao và chất lượng vượt trội so với nhiều vùng khác.</p>

<h2>Phân Loại Hạt Điều</h2>
<p>Hạt điều được phân loại theo kích thước và chất lượng nhân:</p>
<ul>
<li><strong>W180:</strong> 180 hạt/pound – loại cao cấp nhất, hạt to, nguyên vẹn</li>
<li><strong>W240:</strong> 240 hạt/pound – phổ biến nhất, chất lượng tốt</li>
<li><strong>W320:</strong> 320 hạt/pound – hạt vừa, phổ thông</li>
<li><strong>W450:</strong> 450 hạt/pound – hạt nhỏ, thường dùng chế biến</li>
</ul>

<h2>Lợi Ích Sức Khỏe Của Hạt Điều</h2>
<p>Hạt điều không chỉ ngon mà còn rất tốt cho sức khỏe:</p>
<ul>
<li>Giàu chất béo không bão hòa có lợi cho tim mạch</li>
<li>Nguồn protein thực vật dồi dào</li>
<li>Chứa magie, kẽm, sắt và đồng</li>
<li>Vitamin E mạnh – chống oxy hóa tốt</li>
</ul>

<h2>Cách Rang Hạt Điều Ngon Tại Nhà</h2>
<p>Rang hạt điều tại nhà giúp bạn kiểm soát độ chín và hương vị:</p>
<ol>
<li>Làm nóng lò nướng 175°C</li>
<li>Trải hạt điều đều trên khay nướng</li>
<li>Nướng 10-12 phút, đảo đều sau mỗi 4 phút</li>
<li>Rắc muối hạt ngay khi vừa lấy ra</li>
<li>Để nguội hoàn toàn trước khi đóng gói</li>
</ol>`,
    publishedAt: new Date("2026-02-15"),
  },
  {
    title: "Gạo ST25 An Giang – Bí Quyết Nấu Cơm Ngon Nhất Thế Giới Tại Nhà",
    titleEn: "ST25 Rice from An Giang – Tips to Cook the World's Best Rice at Home",
    slug: "gao-st25-an-giang-bi-quyet-nau-com-ngon-nhat-the-gioi",
    summary: "Gạo ST25 được vinh danh là gạo ngon nhất thế giới năm 2019. Hướng dẫn chi tiết cách nấu cơm gạo ST25 đúng chuẩn để cảm nhận hết vị ngọt và hương thơm đặc biệt của giống gạo này.",
    category: "Gạo & Nông sản", categoryEn: "Rice & Agricultural Products",
    content: `<h1>Gạo ST25 An Giang – Bí Quyết Nấu Cơm Ngon Nhất Thế Giới Tại Nhà</h1>
<p>Năm 2019, tại Hội nghị Gạo Thế giới ở Manila, Philippines, gạo ST25 của Việt Nam đã vượt qua các đối thủ từ Thái Lan, Campuchia và nhiều quốc gia khác để giành giải "Gạo ngon nhất thế giới". Đây không chỉ là niềm tự hào của An Giang mà của cả Việt Nam.</p>

<h2>Gạo ST25 Được Tạo Ra Như Thế Nào?</h2>
<p>Giống gạo ST25 là công trình nghiên cứu suốt hơn 20 năm của Kỹ sư Hồ Quang Cua – người được mệnh danh là "vua gạo" Sóc Trăng. Qua nhiều lần lai tạo và chọn lọc từ các giống gạo thơm tự nhiên, ông đã tạo ra giống lúa cho hạt gạo thơm mùi lài tự nhiên, hạt dài, cơm dẻo mềm.</p>

<h2>Đặc Điểm Nhận Biết Gạo ST25 Thật</h2>
<ul>
<li>Hạt gạo dài đều, trong vắt, không gãy</li>
<li>Mùi thơm nhẹ của hoa lài khi còn sống</li>
<li>Cơm chín thơm đậm hơn, dẻo vừa phải</li>
<li>Màu cơm trắng ngà đẹp, không bị đục</li>
</ul>

<h2>Cách Nấu Cơm Gạo ST25 Đúng Chuẩn</h2>
<h3>Tỷ Lệ Nước – Gạo</h3>
<p>Gạo ST25 khác với gạo thường về tỷ lệ nước. Do hạt gạo dài và chất lượng cao, cần ít nước hơn: tỷ lệ lý tưởng là <strong>1 gạo : 1.3 nước</strong> (so với 1:1.5 của gạo thường).</p>
<h3>Quy Trình Nấu</h3>
<ol>
<li>Vo gạo nhẹ tay, chỉ vo 1-2 lần để giữ lớp cám bên ngoài</li>
<li>Ngâm gạo 15-20 phút trước khi nấu</li>
<li>Cho nước lạnh vào cùng gạo, đặt trên bếp lửa vừa</li>
<li>Khi sôi, hạ lửa nhỏ và nấu thêm 15 phút</li>
<li>Tắt bếp, ủ thêm 10 phút trước khi mở nắp</li>
</ol>
<h3>Bí Quyết Cơm Ngon Hơn</h3>
<p>Thêm vài giọt dầu dừa hoặc mỡ heo vào nồi cơm khi nấu sẽ làm cơm bóng đẹp và thơm hơn. Đây là bí quyết của người miền Tây khi nấu cơm ngày Tết.</p>`,
    publishedAt: new Date("2026-02-20"),
  },
  {
    title: "Bánh Phồng Tôm Sa Giang – Đặc Sản Đồng Tháp Nổi Tiếng Toàn Cầu",
    titleEn: "Sa Giang Shrimp Crackers – Dong Thap's Globally Famous Specialty",
    slug: "banh-phong-tom-sa-giang-dong-thap-noi-tieng",
    summary: "Bánh phồng tôm Sa Giang Đồng Tháp là đặc sản Việt Nam xuất khẩu sang hơn 40 quốc gia. Tìm hiểu lịch sử, quy trình sản xuất và tại sao Sa Giang lại khác biệt so với các loại bánh phồng tôm khác.",
    category: "Đồ ăn vặt", categoryEn: "Snacks",
    content: `<h1>Bánh Phồng Tôm Sa Giang – Đặc Sản Đồng Tháp Nổi Tiếng Toàn Cầu</h1>
<p>Nếu bạn từng thưởng thức bánh phồng tôm ở bất kỳ nhà hàng Việt Nam nào trên thế giới, rất có thể bạn đã ăn bánh phồng tôm Sa Giang từ Đồng Tháp. Thương hiệu này đã xuất khẩu sang hơn 40 quốc gia và vùng lãnh thổ, trở thành đặc sản Việt Nam được biết đến nhiều nhất thế giới.</p>

<h2>Lịch Sử Hơn 60 Năm Của Thương Hiệu Sa Giang</h2>
<p>Công ty Sa Giang được thành lập từ những năm 1960, ban đầu chỉ là cơ sở sản xuất nhỏ ở Đồng Tháp. Qua nhiều thập kỷ phát triển, Sa Giang đã trở thành thương hiệu bánh phồng tôm hàng đầu Việt Nam với dây chuyền sản xuất hiện đại kết hợp với bí quyết truyền thống.</p>

<h2>Nguyên Liệu Đặc Biệt Tạo Nên Hương Vị Độc Đáo</h2>
<p>Bánh phồng tôm Sa Giang được làm từ:</p>
<ul>
<li><strong>Tôm tươi Cà Mau:</strong> Tôm biển tươi nguyên con, không qua đông lạnh</li>
<li><strong>Bột khoai mì sắn:</strong> Bột tinh sắn Tây Ninh chất lượng cao</li>
<li><strong>Muối biển:</strong> Muối Cần Giờ hạt to</li>
<li><strong>Đường mía:</strong> Đường vàng tự nhiên</li>
</ul>

<h2>Cách Chiên Bánh Phồng Tôm Sa Giang Giòn Không Gãy</h2>
<p>Nhiều người thắc mắc tại sao chiên bánh phồng tôm ở nhà không giòn và phồng đẹp như ở nhà hàng. Bí quyết nằm ở nhiệt độ dầu:</p>
<ol>
<li>Dầu phải thật nóng – đạt 180-190°C trước khi cho bánh vào</li>
<li>Cho bánh vào từng miếng một, không cho quá nhiều cùng lúc</li>
<li>Bánh sẽ phồng trong 3-5 giây, vớt ngay khi vừa phồng hết</li>
<li>Không để bánh quá lâu trong dầu sẽ bị vàng xém</li>
</ol>`,
    publishedAt: new Date("2026-02-25"),
  },
  {
    title: "Muối Tôm Tây Ninh – Gia Vị Ma Thuật Của Người Việt Tại Mỹ",
    titleEn: "Tay Ninh Shrimp Salt – The Magic Spice of Vietnamese in America",
    slug: "muoi-tom-tay-ninh-gia-vi-ma-thuat-nguoi-viet-tai-my",
    summary: "Muối tôm Tây Ninh là gia vị không thể thiếu trong bếp Việt tại Mỹ. Từ chấm trái cây đến ướp thịt nướng, tìm hiểu 10 cách sử dụng sáng tạo của muối tôm mà bạn chưa từng nghĩ đến.",
    category: "Gia vị Việt", categoryEn: "Vietnamese Spices",
    content: `<h1>Muối Tôm Tây Ninh – Gia Vị Ma Thuật Của Người Việt Tại Mỹ</h1>
<p>Hỏi bất kỳ người Việt nào sống ở Mỹ về loại gia vị họ không thể thiếu, câu trả lời phổ biến nhất sẽ là: muối tôm Tây Ninh. Hỗn hợp đơn giản của muối, tôm khô và ớt hiểm này lại có khả năng biến bất kỳ món ăn nào thành tuyệt phẩm.</p>

<h2>Muối Tôm Tây Ninh Khác Gì So Với Muối Ớt Thông Thường?</h2>
<p>Điểm khác biệt lớn nhất của muối tôm Tây Ninh nằm ở thành phần tôm khô xay mịn. Không phải bất kỳ loại tôm nào cũng được dùng – người làm muối tôm chính hiệu Tây Ninh chỉ chọn tôm đất khô Cà Mau để xay mịn, tạo ra vị umami tự nhiên cực kỳ đặc biệt.</p>

<h2>10 Cách Sử Dụng Muối Tôm Bạn Chưa Thử</h2>
<h3>1. Chấm Trái Cây – Cách Dùng Kinh Điển</h3>
<p>Xoài xanh, ổi, khế, thanh long chấm muối tôm là combo không thể cưỡng lại. Vị cay nồng của ớt kết hợp vị chua của trái cây tạo nên sự hài hòa tuyệt vời.</p>
<h3>2. Ướp Thịt Nướng BBQ</h3>
<p>Thay vì dùng muối và ớt riêng, trộn muối tôm với dầu ôliu để ướp thịt gà, bò, heo trước khi nướng. Vị umami từ tôm sẽ thấm sâu vào thịt, tạo lớp caramel đẹp khi nướng.</p>
<h3>3. Rắc Lên Bắp Nướng</h3>
<p>Bắp ngô nướng rắc muối tôm thay vì muối thường sẽ cho vị đậm đà hơn rất nhiều. Thêm vài giọt nước cốt chanh cho hoàn hảo.</p>
<h3>4. Trộn Salad</h3>
<p>Trộn muối tôm với dầu mè, nước cốt chanh và đường thốt nốt làm nước sốt salad kiểu Việt siêu ngon.</p>
<h3>5. Rim Trái Cây</h3>
<p>Rim dứa (thơm), xoài hoặc me với muối tôm và đường – món ăn vặt chua ngọt cay tuyệt hảo.</p>`,
    publishedAt: new Date("2026-03-01"),
  },
  {
    title: "Lẩu Mắm Miền Tây – Công Thức Chuẩn Cho Người Việt Nấu Tại Mỹ",
    titleEn: "Mekong Delta Fermented Fish Hot Pot – Authentic Recipe for Vietnamese in America",
    slug: "lau-mam-mien-tay-cong-thuc-chuan-nguoi-viet-tai-my",
    summary: "Lẩu mắm là món ăn đặc trưng nhất của ẩm thực miền Tây Nam Bộ. Hướng dẫn chi tiết cách nấu lẩu mắm ngon chuẩn vị với các nguyên liệu có thể tìm thấy ở Mỹ.",
    category: "Công thức nấu ăn", categoryEn: "Recipes",
    content: `<h1>Lẩu Mắm Miền Tây – Công Thức Chuẩn Cho Người Việt Nấu Tại Mỹ</h1>
<p>Không có món ăn nào thể hiện tinh hoa ẩm thực miền Tây rõ ràng như lẩu mắm. Nồi lẩu nghi ngút khói với hương mắm thơm nồng, rau sống xanh tươi và bún trắng mịn – đó là ký ức ẩm thực không thể quên của bất kỳ người miền Tây nào.</p>

<h2>Nguyên Liệu Nấu Lẩu Mắm (6-8 người)</h2>
<h3>Phần Nước Lẩu:</h3>
<ul>
<li>300g mắm cá linh Châu Đốc (hoặc mắm cá sặc)</li>
<li>500g xương heo</li>
<li>3 cây sả đập dập</li>
<li>5 tép tỏi băm</li>
<li>3-5 trái ớt hiểm (tùy khẩu vị)</li>
<li>2 thìa đường thốt nốt</li>
<li>Nghệ tươi 1 củ nhỏ</li>
</ul>
<h3>Phần Nhúng:</h3>
<ul>
<li>300g cá basa lọc phi lê</li>
<li>200g tôm tươi</li>
<li>200g mực tươi</li>
<li>300g thịt ba chỉ thái mỏng</li>
<li>500g bún tươi</li>
</ul>

<h2>Cách Nấu Nước Lẩu Mắm Chuẩn Vị</h2>
<ol>
<li><strong>Ninh xương:</strong> Hầm xương heo với 2 lít nước trong 30 phút, vớt bọt kỹ</li>
<li><strong>Phi thơm:</strong> Phi tỏi, sả cho đến vàng thơm trong nồi lẩu</li>
<li><strong>Cho mắm vào:</strong> Thêm mắm cá linh, xào đều với tỏi sả cho thơm</li>
<li><strong>Đổ nước xương:</strong> Rót nước xương vào, thêm ớt và nghệ</li>
<li><strong>Nêm nếm:</strong> Thêm đường thốt nốt, nước mắm nguyên chất cho vừa miệng</li>
<li><strong>Giữ lửa nhỏ:</strong> Khi nước lẩu sôi nhẹ, bắt đầu nhúng thức ăn</li>
</ol>

<h2>Rau Sống Ăn Kèm</h2>
<p>Lẩu mắm ngon không thể thiếu rau sống phong phú: bắp chuối bào, rau muống, hoa chuối, giá đỗ, rau nhút, kèo nèo. Tại Mỹ có thể thay thế bằng: bok choy, water spinach (rau muống), bean sprouts (giá), baby bok choy.</p>`,
    publishedAt: new Date("2026-03-05"),
  },
  {
    title: "Trà Atiso Đà Lạt – Thức Uống Mát Gan Được Người Việt Tại Mỹ Tin Dùng",
    titleEn: "Da Lat Artichoke Tea – The Liver-Cooling Drink Trusted by Vietnamese in America",
    slug: "tra-atiso-da-lat-uong-mat-gan-nguoi-viet-tai-my",
    summary: "Trà atiso Đà Lạt nổi tiếng với tác dụng mát gan, giải độc và hỗ trợ tiêu hóa. Tìm hiểu thành phần, lợi ích và cách pha trà atiso đúng để tận dụng tối đa công dụng của loại trà đặc biệt này.",
    category: "Sức khỏe", categoryEn: "Health",
    content: `<h1>Trà Atiso Đà Lạt – Thức Uống Mát Gan Được Người Việt Tại Mỹ Tin Dùng</h1>
<p>Atiso – loại rau hoa đặc trưng của vùng cao nguyên Đà Lạt – không chỉ là nguyên liệu nấu ăn quen thuộc mà còn là nguồn thảo dược quý giá. Trà atiso Đà Lạt từ lâu đã được y học dân gian Việt Nam sử dụng để hỗ trợ sức khỏe gan và giải độc cơ thể.</p>

<h2>Thành Phần Hoạt Chất Trong Atiso</h2>
<p>Nghiên cứu khoa học đã xác định nhiều hoạt chất có lợi trong atiso:</p>
<ul>
<li><strong>Cynarin:</strong> Hoạt chất chủ yếu hỗ trợ chức năng gan và túi mật</li>
<li><strong>Luteolin và Apigenin:</strong> Flavonoid chống viêm và chống oxy hóa</li>
<li><strong>Silymarin:</strong> Hỗ trợ tái tạo tế bào gan</li>
<li><strong>Inulin:</strong> Chất xơ prebiotics tốt cho vi khuẩn đường ruột</li>
</ul>

<h2>Lợi Ích Sức Khỏe Được Khoa Học Xác Nhận</h2>
<p>Các nghiên cứu lâm sàng đã chứng minh trà atiso có tác dụng:</p>
<ul>
<li>Hỗ trợ chức năng gan, giảm men gan ALT và AST</li>
<li>Kích thích tiết mật, hỗ trợ tiêu hóa chất béo</li>
<li>Giảm cholesterol LDL (cholesterol xấu)</li>
<li>Chống oxy hóa, bảo vệ tế bào khỏi stress oxy hóa</li>
<li>Hỗ trợ giảm cân (giảm hấp thu chất béo)</li>
</ul>

<h2>Cách Pha Trà Atiso Đúng Chuẩn</h2>
<h3>Phương Pháp 1: Hãm Trà Nóng</h3>
<ol>
<li>Cho 5-7g trà atiso (1-2 gói) vào ấm</li>
<li>Rót nước sôi 95-100°C</li>
<li>Hãm 5-7 phút</li>
<li>Lọc và uống nóng, có thể thêm chút mật ong</li>
</ol>
<h3>Phương Pháp 2: Trà Lạnh (Cold Brew)</h3>
<ol>
<li>Cho 10g trà atiso vào bình 1 lít</li>
<li>Đổ nước lọc vào, đậy kín</li>
<li>Để trong tủ lạnh 8-12 tiếng</li>
<li>Lọc và uống lạnh – vị thanh mát tuyệt vời</li>
</ol>`,
    publishedAt: new Date("2026-03-10"),
  },
  {
    title: "Mật Ong Rừng Tây Nguyên – Cách Phân Biệt Thật Giả Và Bảo Quản Đúng Cách",
    titleEn: "Tay Nguyen Forest Honey – How to Distinguish Real from Fake and Store Properly",
    slug: "mat-ong-rung-tay-nguyen-phan-biet-that-gia",
    summary: "Mật ong rừng Tây Nguyên là sản phẩm thường bị làm giả nhiều nhất. Hướng dẫn 7 cách đơn giản để phân biệt mật ong thật và bảo quản đúng cách để giữ nguyên chất lượng.",
    category: "Sức khỏe", categoryEn: "Health",
    content: `<h1>Mật Ong Rừng Tây Nguyên – Cách Phân Biệt Thật Giả Và Bảo Quản Đúng Cách</h1>
<p>Mật ong rừng Tây Nguyên là sản phẩm có giá trị cao nhưng cũng là một trong những mặt hàng bị làm giả nhiều nhất trên thị trường. Hiểu được cách nhận biết mật ong thật sẽ giúp bạn không bị lừa và tận dụng tối đa công dụng của loại thực phẩm quý giá này.</p>

<h2>Mật Ong Rừng Tây Nguyên Đặc Biệt Ở Điểm Nào?</h2>
<p>Tây Nguyên với hệ thực vật rừng nguyên sinh phong phú là môi trường lý tưởng cho ong rừng làm tổ. Ong hút mật từ hàng trăm loài hoa rừng khác nhau như hoa rừng tự nhiên, cà phê, điều, hoa dại – tạo ra mật ong có thành phần hóa học phức tạp và hương vị đa dạng không loại mật ong nuôi nào sánh được.</p>

<h2>7 Cách Phân Biệt Mật Ong Rừng Thật</h2>
<h3>1. Thử Với Ngón Tay</h3>
<p>Nhỏ một giọt mật ong lên ngón trỏ, dùng ngón cái chà nhẹ. Mật ong thật sẽ tạo cảm giác dính và không bị hòa tan ngay khi đổ nước vào. Mật ong giả (pha đường) sẽ tan nhanh và nhờn rít khác biệt.</p>
<h3>2. Thử Với Giấy Thấm</h3>
<p>Nhỏ vài giọt mật ong lên giấy ăn mỏng. Mật ong thật sẽ không thấm qua giấy vì độ ẩm thấp. Mật ong giả hoặc pha nước sẽ thấm ướt giấy.</p>
<h3>3. Quan Sát Sự Kết Tinh</h3>
<p>Mật ong thật có xu hướng kết tinh (đóng đường) sau một thời gian, đặc biệt là mật ong hoa cà phê. Đây là dấu hiệu tốt, không phải hỏng. Mật ong giả hiếm khi kết tinh tự nhiên.</p>
<h3>4. Kiểm Tra Màu Sắc Và Độ Trong</h3>
<p>Mật ong rừng Tây Nguyên thường có màu từ vàng sáng đến nâu sẫm tùy nguồn hoa. Mật ong có màu quá trong hoặc quá sẫm đều đáng nghi ngờ.</p>`,
    publishedAt: new Date("2026-03-15"),
  },
  {
    title: "Nem Ninh Hòa – Đặc Sản Chua Ngọt Cay Của Xứ Trầm Hương Khánh Hòa",
    titleEn: "Ninh Hoa Sour Pork Roll – The Sweet-Sour-Spicy Specialty of Khanh Hoa",
    slug: "nem-ninh-hoa-dac-san-chua-ngot-cay-khanh-hoa",
    summary: "Nem Ninh Hòa là đặc sản nổi tiếng của Khánh Hòa với hương vị chua ngọt cay đặc trưng. Khám phá lịch sử, cách làm và cách thưởng thức nem Ninh Hòa chuẩn nhất.",
    category: "Đặc sản vùng miền", categoryEn: "Regional Specialties",
    content: `<h1>Nem Ninh Hòa – Đặc Sản Chua Ngọt Cay Của Xứ Trầm Hương Khánh Hòa</h1>
<p>Nhắc đến Khánh Hòa, người ta thường nghĩ ngay đến Nha Trang biển xanh cát trắng, nhưng ít người biết rằng vùng đất này còn là "thủ đô nem chua" của miền Trung Việt Nam. Nem Ninh Hòa – sản phẩm từ thị xã Ninh Hòa – đã vươn ra khắp nước và được xuất khẩu sang cộng đồng người Việt toàn thế giới.</p>

<h2>Nemm Ninh Hòa Khác Gì Với Nem Chua Miền Nam?</h2>
<p>Có sự khác biệt rõ ràng giữa nem Ninh Hòa và nem chua miền Nam:</p>
<ul>
<li><strong>Nem Ninh Hòa:</strong> Làm từ thịt heo tươi xay, cuốn lá vông hoặc lá ổi, lên men tự nhiên 3-5 ngày. Vị chua từ quá trình lên men lactic tự nhiên.</li>
<li><strong>Nem chua miền Nam:</strong> Thường thêm bột năng, đóng trong túi nilon, lên men ít hơn, vị ít chua hơn.</li>
</ul>

<h2>Quy Trình Làm Nem Ninh Hòa Truyền Thống</h2>
<ol>
<li>Thịt heo tươi (đùi hoặc vai) xay mịn với da và mỡ theo tỷ lệ nhất định</li>
<li>Trộn với muối, đường, tiêu, tỏi theo công thức bí truyền của từng nhà</li>
<li>Cuốn chặt bằng lá vông nem (hoặc lá ổi) tạo hương thơm tự nhiên</li>
<li>Buộc lại bằng lạt tre hoặc dây nilon</li>
<li>Ủ ở nhiệt độ phòng 3-5 ngày cho lên men đủ độ chua</li>
</ol>

<h2>Cách Thưởng Thức Nem Ninh Hòa Đúng Cách</h2>
<p>Nem Ninh Hòa ngon nhất khi ăn cùng:</p>
<ul>
<li>Tỏi và ớt tươi thái lát</li>
<li>Bánh tráng cuốn hoặc bún tươi</li>
<li>Chấm với tương hoisin hoặc tương ngọt</li>
<li>Nước chấm: nước mắm – tỏi – ớt – đường – chanh</li>
</ul>`,
    publishedAt: new Date("2026-03-20"),
  },
  {
    title: "Bún Bò Huế – Công Thức Nấu Chuẩn Vị Cố Đô Cho Bếp Gia Đình Tại Mỹ",
    titleEn: "Hue Beef Noodle Soup – Authentic Imperial City Recipe for Vietnamese Families in America",
    slug: "bun-bo-hue-cong-thuc-nau-chuan-vi-co-do",
    summary: "Bún bò Huế là một trong những món bún nổi tiếng nhất Việt Nam, nổi bật bởi vị cay nồng và hương sả đặc trưng. Hướng dẫn nấu bún bò Huế chuẩn vị cho gia đình tại Mỹ.",
    category: "Công thức nấu ăn", categoryEn: "Recipes",
    content: `<h1>Bún Bò Huế – Công Thức Nấu Chuẩn Vị Cố Đô Cho Bếp Gia Đình Tại Mỹ</h1>
<p>Bún bò Huế không chỉ là một món ăn – đó là toàn bộ tinh hoa ẩm thực của cố đô Huế được chắt lọc qua nhiều thế kỷ. Vị ngọt của xương bò hầm lâu, mùi thơm của sả và ruốc Huế, vị cay nồng của ớt – tất cả hòa quyện tạo nên thứ nước dùng không thể nhầm lẫn với bất kỳ loại bún nào khác.</p>

<h2>Nguyên Liệu Đặc Biệt Của Bún Bò Huế</h2>
<p>Điều làm bún bò Huế khác biệt nằm ở 3 nguyên liệu quan trọng:</p>
<ul>
<li><strong>Mắm ruốc Huế:</strong> Không thể thay thế – tạo vị đậm đà đặc trưng của nước dùng bún bò Huế</li>
<li><strong>Sả tươi:</strong> Đập dập và nướng sơ trước khi nấu để tinh dầu thơm tỏa ra</li>
<li><strong>Ớt bột Huế:</strong> Loại ớt màu đỏ đẹp, cay vừa phải tạo màu đỏ óng cho nước dùng</li>
</ul>

<h2>Công Thức Nấu Bún Bò Huế (8-10 người)</h2>
<h3>Nguyên Liệu:</h3>
<ul>
<li>1kg giò heo (chân giò)</li>
<li>500g xương bò</li>
<li>300g thịt bò (bắp bò hoặc nạm)</li>
<li>5 cây sả đập dập</li>
<li>3 thìa mắm ruốc Huế</li>
<li>2 thìa ớt bột</li>
<li>1 củ hành tím</li>
<li>Muối, đường, hạt nêm</li>
<li>1kg bún bò Huế</li>
</ul>
<h3>Cách Nấu:</h3>
<ol>
<li>Blanch giò heo và xương bò trong nước sôi 5 phút, xả nước lạnh</li>
<li>Ninh xương và giò heo trong 2 lít nước 1.5 giờ, vớt bọt liên tục</li>
<li>Phi sả với dầu ăn đến vàng thơm, thêm mắm ruốc xào thơm</li>
<li>Cho hỗn hợp sả ruốc vào nồi nước hầm</li>
<li>Thêm ớt bột, nêm muối, đường cho vừa miệng</li>
<li>Nấu thêm 30 phút, lọc nước dùng trong</li>
</ol>`,
    publishedAt: new Date("2026-03-25"),
  },
  {
    title: "Bánh Pía Sóc Trăng – Đặc Sản Bánh Ngọt Nổi Tiếng Nhất Nam Bộ",
    titleEn: "Soc Trang Pia Cake – The Most Famous Sweet Pastry of Southern Vietnam",
    slug: "banh-pia-soc-trang-dac-san-banh-ngot-nam-bo",
    summary: "Bánh pía Sóc Trăng với nhân sầu riêng hoặc đậu xanh là đặc sản bánh ngọt nổi tiếng nhất miền Nam. Tìm hiểu lịch sử, cách làm và những thương hiệu bánh pía uy tín nhất.",
    category: "Trà & Bánh mứt", categoryEn: "Tea & Confectionery",
    content: `<h1>Bánh Pía Sóc Trăng – Đặc Sản Bánh Ngọt Nổi Tiếng Nhất Nam Bộ</h1>
<p>Nhắc đến đặc sản Sóc Trăng, người ta không thể không nhắc đến bánh pía – loại bánh ngọt có nguồn gốc từ người Hoa Triều Châu di cư vào Nam Bộ hàng trăm năm trước. Qua thời gian, bánh pía đã được Việt hóa và trở thành đặc sản không thể thiếu trong ẩm thực miền Tây.</p>

<h2>Nguồn Gốc Lịch Sử Của Bánh Pía</h2>
<p>Bánh pía (còn gọi là bánh lột da) có nguồn gốc từ bánh Suzhou Mooncake của người Hoa Triều Châu. Khi người Hoa di cư vào vùng Sóc Trăng, Bạc Liêu từ thế kỷ 17-18, họ mang theo nghề làm bánh truyền thống. Dần dần, công thức bánh được điều chỉnh để phù hợp với khẩu vị địa phương, thêm nhân sầu riêng – loại trái cây đặc trưng của miền Nam Việt Nam.</p>

<h2>Các Loại Nhân Bánh Pía Phổ Biến</h2>
<ul>
<li><strong>Nhân sầu riêng:</strong> Ngon nhất và được yêu thích nhất – cơm sầu riêng nguyên chất xay mịn</li>
<li><strong>Nhân đậu xanh:</strong> Truyền thống nhất – đậu xanh chà bông mịn, ngọt thanh</li>
<li><strong>Nhân khoai môn:</strong> Vị bùi ngọt nhẹ của khoai môn nghiền mịn</li>
<li><strong>Nhân trà xanh:</strong> Hiện đại, phổ biến với giới trẻ</li>
<li><strong>Nhân hỗn hợp:</strong> Kết hợp sầu riêng và lòng đỏ trứng muối</li>
</ul>

<h2>Đặc Điểm Nhận Biết Bánh Pía Sóc Trăng Ngon</h2>
<ul>
<li>Vỏ bánh nhiều lớp, mỏng, giòn xốp</li>
<li>Nhân đầy đặn, không khô, ẩm vừa phải</li>
<li>Nhân sầu riêng phải có mùi thơm tự nhiên, không dùng hương liệu</li>
<li>Màu vỏ bánh vàng đều đẹp, không quá sẫm</li>
</ul>`,
    publishedAt: new Date("2026-04-01"),
  },
  {
    title: "Khô Gà Cay Sả Tắc – Món Ăn Vặt Siêu Hot Của Giới Trẻ Việt Tại Mỹ",
    titleEn: "Spicy Lemongrass Kumquat Chicken Jerky – The Hottest Snack Among Young Vietnamese in America",
    slug: "kho-ga-cay-sa-tac-mon-an-vat-hot-gioi-tre-viet",
    summary: "Khô gà cay sả tắc đang trở thành xu hướng ăn vặt mới của giới trẻ Việt tại Mỹ. Hương vị chua cay độc đáo, dai thơm không ngấy – tìm hiểu tại sao món này lại hot đến vậy.",
    category: "Đồ ăn vặt", categoryEn: "Snacks",
    content: `<h1>Khô Gà Cay Sả Tắc – Món Ăn Vặt Siêu Hot Của Giới Trẻ Việt Tại Mỹ</h1>
<p>Trong những năm gần đây, khô gà cay sả tắc đã trở thành cơn sốt trong cộng đồng người Việt trẻ tại Mỹ. Khác với bò khô hay gà khô truyền thống, khô gà sả tắc có hương vị chua cay của tắc (quất) kết hợp thơm mát của sả tạo nên sự mới mẻ không thể cưỡng lại.</p>

<h2>Tại Sao Khô Gà Sả Tắc Lại Hot Đến Vậy?</h2>
<p>Sự kết hợp độc đáo giữa:</p>
<ul>
<li><strong>Thịt gà ức xé thớ:</strong> Mềm dai vừa phải, ít béo, phù hợp người ăn kiêng</li>
<li><strong>Sả tươi:</strong> Mùi thơm mát, giúp khử mùi và kích thích vị giác</li>
<li><strong>Tắc (quất) sấy:</strong> Vị chua tươi tự nhiên, khác hoàn toàn với giấm công nghiệp</li>
<li><strong>Ớt hiểm:</strong> Cay nồng tự nhiên, không dùng ớt bột hóa học</li>
</ul>

<h2>Giá Trị Dinh Dưỡng Vượt Trội</h2>
<p>So với các loại snack khác, khô gà cay sả tắc nổi bật về mặt dinh dưỡng:</p>
<ul>
<li>Protein cao từ thịt gà (30-35% trọng lượng sản phẩm)</li>
<li>Ít chất béo bão hòa</li>
<li>Không dầu chiên, không chất bảo quản nhân tạo</li>
<li>Vitamin C từ tắc tươi</li>
</ul>

<h2>Cách Thưởng Thức Và Kết Hợp</h2>
<p>Khô gà sả tắc ngon nhất khi ăn kèm:</p>
<ul>
<li>Bia lạnh – combo hoàn hảo nhất</li>
<li>Cơm trắng – bữa cơm nhanh tiện lợi</li>
<li>Bánh mì gối – ăn sáng hoặc ăn nhẹ</li>
<li>Rượu vang đỏ – bất ngờ nhưng ngon</li>
</ul>`,
    publishedAt: new Date("2026-04-05"),
  },
  {
    title: "Sầu Riêng Sấy Khô – Cách Thưởng Thức 'Vua Trái Cây' Tiện Lợi Nhất",
    titleEn: "Freeze-Dried Durian – The Most Convenient Way to Enjoy the 'King of Fruits'",
    slug: "sau-rieng-say-kho-thuong-thuc-vua-trai-cay-tien-loi",
    summary: "Sầu riêng sấy khô cho phép bạn thưởng thức 'vua trái cây' bất cứ lúc nào mà không cần lo về mùi hoặc độ tươi. Tìm hiểu sự khác biệt giữa các phương pháp sấy và cách chọn sản phẩm tốt nhất.",
    category: "Trái cây sấy", categoryEn: "Dried Fruits",
    content: `<h1>Sầu Riêng Sấy Khô – Cách Thưởng Thức 'Vua Trái Cây' Tiện Lợi Nhất</h1>
<p>Sầu riêng – loại trái cây được mệnh danh là "vua trái cây" tại Đông Nam Á – từ lâu đã là niềm tự hào của ẩm thực Việt Nam. Tuy nhiên, vấn đề về mùi và khó bảo quản khiến nhiều người ngại mua. Sầu riêng sấy khô đã giải quyết hoàn toàn bài toán này.</p>

<h2>Các Phương Pháp Sấy Sầu Riêng</h2>
<h3>Sấy Thăng Hoa (Freeze-Drying)</h3>
<p>Phương pháp cao cấp nhất, đắt tiền nhất. Sầu riêng được đông lạnh ở -40°C rồi làm bay hơi nước ở áp suất thấp. Kết quả: sản phẩm giữ nguyên 95% dinh dưỡng, màu sắc và hương vị. Miếng sầu riêng sấy thăng hoa có cấu trúc xốp nhẹ, tan ngay trong miệng.</p>
<h3>Sấy Chân Không (Vacuum Frying)</h3>
<p>Chiên trong dầu ở áp suất thấp nhiệt độ 80-120°C. Sản phẩm giòn rụm, màu vàng đẹp, giữ được hương vị nhưng có hàm lượng dầu (10-15%). Đây là loại phổ biến nhất trên thị trường.</p>
<h3>Sấy Nhiệt Thông Thường</h3>
<p>Phương pháp rẻ nhất nhưng làm mất nhiều dinh dưỡng và hương vị nhất. Sản phẩm thường cứng, màu nâu không đẹp.</p>

<h2>Cách Nhận Biết Sầu Riêng Sấy Chất Lượng</h2>
<ul>
<li>Màu vàng cam tự nhiên của sầu riêng, không phải vàng chanh hoặc nâu</li>
<li>Mùi thơm đặc trưng của sầu riêng khi mở túi</li>
<li>Không có mùi dầu rán hoặc mùi lạ</li>
<li>Thành phần chỉ có sầu riêng và muối (không có hương liệu)</li>
</ul>

<h2>Lợi Ích Dinh Dưỡng Của Sầu Riêng</h2>
<p>Sầu riêng dù sấy hay tươi đều giàu dinh dưỡng:</p>
<ul>
<li>Giàu chất béo thực vật tốt (MUFA)</li>
<li>Vitamin C, B6, thiamine phong phú</li>
<li>Kali, magie, đồng – các khoáng chất quan trọng</li>
<li>Tryptophan – axit amin giúp cải thiện tâm trạng</li>
</ul>`,
    publishedAt: new Date("2026-04-10"),
  },
  {
    title: "Thịt Lợn Sấy Khô Sơn La – Đặc Sản Lợn Cắp Nách Của Người Thái Tây Bắc",
    titleEn: "Son La Dried Pork – The Black Pig Specialty of the Thai Ethnic People of Northwest Vietnam",
    slug: "thit-lon-say-kho-son-la-dac-san-lon-cap-nach",
    summary: "Thịt lợn sấy khô Sơn La làm từ lợn cắp nách – giống lợn đen bản địa của người Thái Tây Bắc. Vị đậm đà, thơm khói núi rừng là hương vị không thể quên.",
    category: "Đặc sản vùng miền", categoryEn: "Regional Specialties",
    content: `<h1>Thịt Lợn Sấy Khô Sơn La – Đặc Sản Lợn Cắp Nách Của Người Thái Tây Bắc</h1>
<p>Trong chuyến du lịch Tây Bắc, nếu bạn được người Thái mời ăn thịt lợn sấy hun khói, đó là một đặc ân và trải nghiệm ẩm thực không thể quên. Giống lợn đen bản địa nuôi thả trong rừng núi Sơn La tạo ra thịt có hương vị hoàn toàn khác biệt so với lợn nuôi công nghiệp.</p>

<h2>Lợn Cắp Nách – Giống Lợn Quý Của Tây Bắc</h2>
<p>Lợn cắp nách (lợn mọi, lợn đen bản) là giống lợn địa phương của đồng bào dân tộc thiểu số vùng Tây Bắc. Chúng được thả nuôi tự do trong rừng, tự kiếm ăn bằng rễ cây, củ rừng và cỏ dại. Do vận động nhiều và ăn thức ăn tự nhiên, thịt lợn cắp nách có:</p>
<ul>
<li>Màu hồng đỏ đẹp, thớ thịt mịn và chắc</li>
<li>Lớp mỡ mỏng, không béo ngấy</li>
<li>Hương vị đậm đà, ngọt tự nhiên không cần nhiều gia vị</li>
<li>Hàm lượng protein cao, ít chất béo bão hòa</li>
</ul>

<h2>Quy Trình Làm Thịt Lợn Sấy Truyền Thống</h2>
<ol>
<li>Thịt lợn sơ chế, thái miếng dày 2-3cm</li>
<li>Ướp muối và gia vị: mắc khén (tiêu rừng), ớt rừng, gừng, tỏi, sả</li>
<li>Tẩm ướp 24 tiếng trong nhiệt độ mát</li>
<li>Treo thịt lên gác bếp, sấy khói củi từ 3-5 ngày</li>
<li>Sau khi khô hoàn toàn, bảo quản trong túi kín</li>
</ol>

<h2>Gia Vị Đặc Trưng Của Thịt Lợn Sấy Tây Bắc</h2>
<p>Điểm đặc biệt của thịt lợn sấy Sơn La nằm ở gia vị:</p>
<ul>
<li><strong>Mắc khén:</strong> Loại tiêu rừng Tây Bắc có hương thơm đặc biệt không loại tiêu nào có được</li>
<li><strong>Ớt rừng:</strong> Nhỏ nhưng cực cay, thơm hơn ớt trồng</li>
<li><strong>Gừng rừng:</strong> Vị cay ấm, thơm hơn gừng thường</li>
</ul>`,
    publishedAt: new Date("2026-04-15"),
  },
  {
    title: "Trà Móc Câu Thái Nguyên – Vì Sao Là Loại Trà Ngon Nhất Việt Nam?",
    titleEn: "Thai Nguyen Lotus-Bud Green Tea – Why Is It Vietnam's Best Tea?",
    slug: "tra-moc-cau-thai-nguyen-loai-tra-ngon-nhat-viet-nam",
    summary: "Trà móc câu Thái Nguyên từ lâu được mệnh danh là loại trà xanh ngon nhất Việt Nam. Tìm hiểu về vùng chè đặc biệt, quy trình sao chế và cách pha trà đúng chuẩn.",
    category: "Trà & Bánh mứt", categoryEn: "Tea & Confectionery",
    content: `<h1>Trà Móc Câu Thái Nguyên – Vì Sao Là Loại Trà Ngon Nhất Việt Nam?</h1>
<p>Trà Thái Nguyên – đặc biệt là trà móc câu – đã được mệnh danh là "đệ nhất danh trà" của Việt Nam từ hàng trăm năm nay. Vùng chè Tân Cương, thành phố Thái Nguyên, với điều kiện thổ nhưỡng và khí hậu đặc biệt đã tạo ra giống chè có hương vị không đâu sánh được.</p>

<h2>Điều Gì Tạo Nên Sự Đặc Biệt Của Trà Thái Nguyên?</h2>
<p>Vùng đất Tân Cương sở hữu những yếu tố tự nhiên lý tưởng:</p>
<ul>
<li><strong>Độ cao:</strong> 300-500m so với mực nước biển – đủ cao để có khí hậu mát nhưng không quá lạnh</li>
<li><strong>Đất đỏ vàng:</strong> Giàu khoáng chất, tơi xốp, thoát nước tốt</li>
<li><strong>Sương mù buổi sáng:</strong> Giúp búp chè phát triển chậm, tích lũy nhiều tinh chất</li>
<li><strong>Khí hậu 4 mùa rõ ràng:</strong> Cho phép thu hoạch chè nhiều đợt trong năm</li>
</ul>

<h2>Trà Móc Câu Là Gì?</h2>
<p>"Móc câu" là cách mô tả hình dạng của lá trà sau khi sao – búp trà cuộn lại như cái móc câu. Đây là hình thái đặc trưng của trà Thái Nguyên sao thủ công, khác với trà sao máy có hình dạng thẳng hoặc xoắn đều.</p>

<h2>Quy Trình Sao Chè Thủ Công Truyền Thống</h2>
<ol>
<li><strong>Hái chè:</strong> Chỉ hái búp 1 tôm 2 lá hoặc 1 tôm 3 lá buổi sáng sớm</li>
<li><strong>Diệt men:</strong> Sao trong chảo gang nóng 300°C để diệt enzyme oxy hóa</li>
<li><strong>Vò chè:</strong> Vò tay khi chè còn nóng, tạo hình móc câu đặc trưng</li>
<li><strong>Sấy khô:</strong> Sấy ở nhiệt độ thấp 80-100°C đến độ ẩm dưới 5%</li>
<li><strong>Đóng gói:</strong> Đóng trong túi nhôm kín để giữ hương</li>
</ol>

<h2>Cách Pha Trà Móc Câu Đúng Chuẩn</h2>
<p>Trà móc câu Thái Nguyên pha đúng cách cho màu xanh vàng đẹp, hương thơm đặc trưng:</p>
<ul>
<li>Nhiệt độ nước: 75-85°C (không quá sôi)</li>
<li>Lượng trà: 5g / 150ml nước</li>
<li>Thời gian hãm: 2-3 phút lần 1, 3-4 phút lần 2</li>
<li>Ấm trà nên dùng loại gốm hoặc đất nung</li>
</ul>`,
    publishedAt: new Date("2026-04-20"),
  },
  {
    title: "Bánh Tráng Trộn Tây Ninh – Món Ăn Đường Phố Thần Thánh Của Việt Nam",
    titleEn: "Tay Ninh Mixed Rice Paper – Vietnam's Most Beloved Street Food",
    slug: "banh-trang-tron-tay-ninh-mon-an-duong-pho-than-thanh",
    summary: "Bánh tráng trộn Tây Ninh là món ăn đường phố biểu tượng của Việt Nam, được giới trẻ mê mẩn. Tìm hiểu cách trộn bánh tráng chuẩn vị Tây Ninh và lý do món này chinh phục vị giác toàn cầu.",
    category: "Đồ ăn vặt", categoryEn: "Snacks",
    content: `<h1>Bánh Tráng Trộn Tây Ninh – Món Ăn Đường Phố Thần Thánh Của Việt Nam</h1>
<p>Nếu có một món ăn đường phố Việt Nam được gọi là "thần thánh", đó chính là bánh tráng trộn Tây Ninh. Đơn giản từ nguyên liệu, không tốn kém, nhưng hương vị lại vô cùng hấp dẫn với sự kết hợp tinh tế của chua – cay – mặn – ngọt trong một đĩa ăn.</p>

<h2>Nguồn Gốc Của Bánh Tráng Tây Ninh</h2>
<p>Tây Ninh từ lâu đã nổi tiếng là "vương quốc bánh tráng" của miền Nam Việt Nam. Khí hậu khô ráo, nguồn nước sạch và gạo ngon địa phương tạo điều kiện lý tưởng cho nghề làm bánh tráng. Bánh tráng Tây Ninh nổi tiếng bởi độ mỏng đều, dai giòn khi nướng và không bị vỡ khi trộn.</p>

<h2>Nguyên Liệu Trộn Bánh Tráng Đầy Đủ</h2>
<ul>
<li>Bánh tráng dẻo Tây Ninh cắt sợi</li>
<li>Muối tôm Tây Ninh</li>
<li>Sa tế chay Đà Nẵng</li>
<li>Xoài xanh bào sợi</li>
<li>Tôm khô Cà Mau</li>
<li>Trứng cút luộc</li>
<li>Hành phi vàng</li>
<li>Rau răm</li>
<li>Mỡ hành (hoặc dầu ăn)</li>
</ul>

<h2>Cách Trộn Bánh Tráng Chuẩn Vị</h2>
<ol>
<li>Cắt bánh tráng thành sợi 2-3cm, để trong tô lớn</li>
<li>Thêm xoài xanh bào sợi, trứng cút cắt đôi</li>
<li>Rắc muối tôm, sa tế theo khẩu vị</li>
<li>Thêm tôm khô và mỡ hành</li>
<li>Trộn đều nhanh tay để bánh ngấm gia vị</li>
<li>Rắc thêm hành phi và rau răm thái nhỏ</li>
<li>Ăn ngay khi vừa trộn, không để lâu</li>
</ol>`,
    publishedAt: new Date("2026-04-25"),
  },
  {
    title: "Đường Thốt Nốt An Giang – Loại Đường Lành Mạnh Từ Thiên Nhiên",
    titleEn: "An Giang Palm Sugar – The Healthiest Natural Sugar from the Mekong Delta",
    slug: "duong-thot-not-an-giang-loai-duong-lanh-manh",
    summary: "Đường thốt nốt An Giang được làm từ nước hoa cây thốt nốt, ngọt thanh tự nhiên và giàu dưỡng chất hơn đường công nghiệp. Tìm hiểu cách sản xuất và lợi ích sức khỏe của loại đường đặc biệt này.",
    category: "Gạo & Nông sản", categoryEn: "Rice & Agricultural Products",
    content: `<h1>Đường Thốt Nốt An Giang – Loại Đường Lành Mạnh Từ Thiên Nhiên</h1>
<p>Trong vùng Bảy Núi – Thất Sơn của An Giang, những hàng cây thốt nốt cao vút, cây cổ thụ gắn liền với văn hóa người Khmer Nam Bộ. Từ hoa cây thốt nốt, người dân Tri Tôn và Tịnh Biên đã sản xuất ra loại đường đặc biệt – đường thốt nốt – với hương vị và giá trị dinh dưỡng vượt trội so với đường mía thông thường.</p>

<h2>Quy Trình Làm Đường Thốt Nốt</h2>
<p>Làm đường thốt nốt là nghề vất vả đòi hỏi kinh nghiệm và sự khéo léo:</p>
<ol>
<li><strong>Leo cây:</strong> Hàng ngày, người thợ leo lên những cây thốt nốt cao 15-20m để thu hoạch nước hoa</li>
<li><strong>Thu nước:</strong> Nước hoa thốt nốt được hứng trong ống tre, thu 2 lần/ngày vào sáng sớm và chiều tối</li>
<li><strong>Nấu đường:</strong> Nước hoa được nấu trong chảo lớn, khuấy đều liên tục từ 4-6 giờ</li>
<li><strong>Tạo hình:</strong> Khi đặc lại, đổ vào khuôn tròn hoặc đựng trong hũ</li>
<li><strong>Làm nguội:</strong> Đường thốt nốt đặc lại thành khối sau 1-2 giờ</li>
</ol>

<h2>Đường Thốt Nốt Vs Đường Mía – Sự Khác Biệt</h2>
<p>Nghiên cứu khoa học chỉ ra những điểm khác biệt quan trọng:</p>
<ul>
<li><strong>Chỉ số đường huyết (GI):</strong> Đường thốt nốt GI 35-54, thấp hơn đường mía (GI 65-70)</li>
<li><strong>Khoáng chất:</strong> Giàu kali, magie, photpho hơn đường mía nhiều lần</li>
<li><strong>Vitamin B:</strong> Chứa B1, B2, B3 tự nhiên</li>
<li><strong>Hương vị:</strong> Vị ngọt thanh có hậu, không gắt như đường mía</li>
</ul>`,
    publishedAt: new Date("2026-05-01"),
  },
  {
    title: "Rượu Cần Tây Nguyên – Nét Văn Hóa Uống Rượu Đặc Sắc Của Đại Ngàn",
    titleEn: "Tay Nguyen Jar Wine – The Unique Drinking Culture of the Central Highlands",
    slug: "ruou-can-tay-nguyen-van-hoa-uong-ruou-dai-ngan",
    summary: "Rượu cần là đặc sản văn hóa của các dân tộc Ê Đê, Ba Na, Gia Rai ở Tây Nguyên. Tìm hiểu về loại rượu gạo nếp ủ trong ché sành và nghi lễ uống rượu cần truyền thống.",
    category: "Đồ uống", categoryEn: "Beverages",
    content: `<h1>Rượu Cần Tây Nguyên – Nét Văn Hóa Uống Rượu Đặc Sắc Của Đại Ngàn</h1>
<p>Trong các lễ hội truyền thống của người Ê Đê, Ba Na, Gia Rai tại Tây Nguyên, rượu cần luôn hiện diện như một phần không thể tách rời. Không chỉ là thức uống, rượu cần còn là cầu nối tâm linh, là biểu tượng của sự đoàn kết cộng đồng và lòng hiếu khách của người dân Tây Nguyên.</p>

<h2>Rượu Cần Làm Từ Nguyên Liệu Gì?</h2>
<p>Rượu cần Tây Nguyên được ủ từ gạo nếp nương – loại nếp trồng trên nương rẫy của đồng bào dân tộc, hạt to, dẻo thơm. Gạo nếp được hấp chín rồi trộn với men rượu cổ truyền làm từ lá, rễ và vỏ cây rừng.</p>

<h2>Quy Trình Ủ Rượu Cần Truyền Thống</h2>
<ol>
<li>Gạo nếp đãi sạch, ngâm 6-8 tiếng</li>
<li>Hấp chín, để nguội đến 30-35°C</li>
<li>Trộn đều với men cổ truyền nghiền mịn</li>
<li>Cho vào ché (hũ sành) sạch, đậy kín bằng lá chuối</li>
<li>Ủ trong bóng tối 7-15 ngày tùy loại rượu</li>
<li>Thêm nước vào ché trước khi uống</li>
</ol>

<h2>Nghi Lễ Uống Rượu Cần</h2>
<p>Uống rượu cần không đơn giản chỉ là thưởng thức thức uống – đó là một nghi lễ cộng đồng:</p>
<ul>
<li>Ché rượu đặt giữa vòng tròn người tham dự</li>
<li>Cần uống bằng ống trúc hoặc tre dài</li>
<li>Uống theo thứ tự từ già đến trẻ, từ chủ đến khách</li>
<li>Mỗi người uống xong, thêm nước vào ché để duy trì lượng rượu</li>
</ul>`,
    publishedAt: new Date("2026-05-05"),
  },
  {
    title: "Hạt Mắc Ca Tây Nguyên – 'Hoàng Hậu Các Loại Hạt' Được Trồng Tại Việt Nam",
    titleEn: "Tay Nguyen Macadamia Nuts – The 'Queen of Nuts' Now Grown in Vietnam",
    slug: "hat-mac-ca-tay-nguyen-hoang-hau-cac-loai-hat",
    summary: "Hạt mắc ca (macadamia) đang được trồng thành công ở Tây Nguyên và tạo ra sản phẩm chất lượng xuất khẩu. Tìm hiểu lợi ích sức khỏe và cách chọn mua hạt mắc ca Tây Nguyên chất lượng.",
    category: "Đồ ăn vặt", categoryEn: "Snacks",
    content: `<h1>Hạt Mắc Ca Tây Nguyên – 'Hoàng Hậu Các Loại Hạt' Được Trồng Tại Việt Nam</h1>
<p>Hạt mắc ca (macadamia) – có nguồn gốc từ Úc – hiện đang được trồng thành công tại vùng cao nguyên Tây Nguyên của Việt Nam. Với điều kiện khí hậu và thổ nhưỡng phù hợp, mắc ca Tây Nguyên đã đạt chất lượng ngang ngửa sản phẩm nhập khẩu, mở ra cơ hội mới cho nông nghiệp Việt Nam.</p>

<h2>Tại Sao Mắc Ca Được Gọi Là 'Hoàng Hậu'?</h2>
<p>Danh hiệu "hoàng hậu các loại hạt" xuất phát từ:</p>
<ul>
<li><strong>Hàm lượng dinh dưỡng cao:</strong> 70% chất béo tốt (MUFA), protein và khoáng chất</li>
<li><strong>Hương vị độc đáo:</strong> Béo ngậy, bùi mềm, vị ngọt tự nhiên không loại hạt nào có được</li>
<li><strong>Giá trị kinh tế cao:</strong> Một trong những loại hạt đắt nhất thế giới</li>
<li><strong>Khó trồng:</strong> Cây mắc ca cần 7-10 năm mới ra quả, đòi hỏi kỹ thuật cao</li>
</ul>

<h2>Lợi Ích Sức Khỏe Được Khoa Học Xác Nhận</h2>
<ul>
<li>Giảm LDL cholesterol nhờ axit palmitoleic</li>
<li>Chống viêm, bảo vệ hệ tim mạch</li>
<li>Giàu flavonoid – chống oxy hóa mạnh</li>
<li>Tốt cho não bộ và thần kinh (giàu thiamine)</li>
<li>Hỗ trợ kiểm soát cân nặng (no lâu)</li>
</ul>

<h2>Cách Chọn Mua Mắc Ca Chất Lượng</h2>
<ul>
<li>Hạt có vỏ còn nguyên, không nứt vỡ</li>
<li>Khi lắc nghe tiếng lắc rắc của nhân bên trong</li>
<li>Mùi thơm béo nhẹ, không có mùi ôi dầu</li>
<li>Nhân màu trắng kem đều, không có đốm nâu</li>
</ul>`,
    publishedAt: new Date("2026-05-10"),
  },
  {
    title: "Mứt Tắc Mật Ong – Bài Thuốc Dân Gian Chữa Ho Cảm Của Người Việt",
    titleEn: "Kumquat Honey Preserve – Vietnamese Folk Remedy for Coughs and Colds",
    slug: "mut-tac-mat-ong-bai-thuoc-dan-gian-chua-ho-cam",
    summary: "Mứt tắc (quất) ngâm mật ong là bài thuốc dân gian được người Việt dùng từ hàng trăm năm để chữa ho, viêm họng. Tìm hiểu cách làm và cơ chế khoa học đằng sau bài thuốc này.",
    category: "Sức khỏe", categoryEn: "Health",
    content: `<h1>Mứt Tắc Mật Ong – Bài Thuốc Dân Gian Chữa Ho Cảm Của Người Việt</h1>
<p>Từ thời ông bà, người Việt đã biết dùng tắc (quất) ngâm mật ong để chữa ho, đau họng. Bài thuốc dân gian đơn giản này không chỉ hiệu quả mà còn ngon miệng – một đặc điểm hiếm có của y học cổ truyền.</p>

<h2>Tại Sao Tắc (Quất) Chữa Được Ho?</h2>
<p>Theo y học hiện đại, quả tắc chứa nhiều hoạt chất có lợi:</p>
<ul>
<li><strong>Vitamin C:</strong> Tăng cường miễn dịch, chống oxy hóa</li>
<li><strong>Flavonoid (nobiletin, tangeretin):</strong> Chống viêm, ức chế vi khuẩn</li>
<li><strong>Tinh dầu vỏ quất:</strong> Tác dụng long đờm, thông cổ họng</li>
<li><strong>Axit citric:</strong> Giảm viêm họng, tiêu đờm</li>
</ul>

<h2>Cách Làm Mứt Tắc Mật Ong Đơn Giản</h2>
<ol>
<li>Tắc tươi rửa sạch, để ráo nước</li>
<li>Khứa 4-6 đường trên quả tắc hoặc thái lát mỏng</li>
<li>Cho tắc vào hũ thủy tinh sạch, khô</li>
<li>Đổ mật ong ngập tắc (dùng mật ong rừng Tây Nguyên nguyên chất)</li>
<li>Đậy kín, để ở nhiệt độ phòng 7-10 ngày</li>
<li>Sau đó bảo quản trong tủ lạnh, dùng trong 3-6 tháng</li>
</ol>

<h2>Cách Dùng Mứt Tắc Mật Ong</h2>
<ul>
<li><strong>Khi ho, đau họng:</strong> Dùng 1-2 quả tắc cùng 1-2 thìa mật ong ngâm, pha với nước ấm, uống 3 lần/ngày</li>
<li><strong>Phòng ngừa:</strong> Pha trà tắc mật ong hàng ngày</li>
<li><strong>Ăn trực tiếp:</strong> Ăn quả tắc ngâm mật ong như mứt</li>
</ul>`,
    publishedAt: new Date("2026-05-15"),
  },
];

// ─── Tạo thêm 75 bài viết nữa để đủ 100 ─────────────────────────────────────
const morePosts = [
  { title: "Khoai Lang Sấy Đà Lạt – Snack Healthy Cho Người Bận Rộn", slug: "khoai-lang-say-da-lat-snack-healthy", summary: "Khoai lang sấy Đà Lạt không đường, không dầu – lựa chọn snack lành mạnh cho người ăn kiêng và người bận rộn tại Mỹ.", category: "Sức khỏe", content: "<h1>Khoai Lang Sấy Đà Lạt – Snack Healthy Cho Người Bận Rộn</h1><p>Khoai lang mật Đà Lạt sấy giòn không đường là một trong những snack lành mạnh nhất bạn có thể tìm thấy. Giàu beta-carotene, vitamin A và chất xơ, khoai lang sấy là lựa chọn hoàn hảo thay thế các loại snack chiên công nghiệp.</p><h2>Lợi Ích Của Khoai Lang</h2><p>Khoai lang chứa hàm lượng beta-carotene cao – chất chống oxy hóa giúp bảo vệ mắt và da. Ngoài ra còn giàu vitamin B6, kali và chất xơ tốt cho tim mạch và tiêu hóa.</p><h2>Cách Bảo Quản</h2><p>Bảo quản trong hộp kín ở nhiệt độ phòng tối đa 3 tháng. Để được lâu hơn, cho vào túi kín và bảo quản trong ngăn mát tủ lạnh.</p>", publishedAt: new Date("2026-01-18") },
  { title: "Cá Nục Khô Bình Định – Đặc Sản Biển Miền Trung Dai Ngon", slug: "ca-nuc-kho-binh-dinh-dac-san-bien-mien-trung", summary: "Cá nục khô Bình Định được chế biến theo phương pháp truyền thống của ngư dân miền Trung, vị mặn ngọt cân bằng, dai thơm.", category: "Hải sản khô", content: "<h1>Cá Nục Khô Bình Định – Đặc Sản Biển Miền Trung</h1><p>Biển miền Trung Việt Nam – đặc biệt là vùng biển Bình Định – nổi tiếng với nhiều loài cá tươi ngon. Cá nục (Decapterus) là loài cá biển phong phú, thịt ngọt, thích hợp làm khô.</p><h2>Đặc Điểm</h2><p>Cá nục khô Bình Định có màu vàng nâu đẹp, thịt chắc, vị mặn ngọt hài hòa. Thích hợp kho tiêu, chiên giòn hoặc nướng than.</p>", publishedAt: new Date("2026-01-22") },
  { title: "Tôm Đất Khô Bạc Liêu – Nguyên Liệu Vàng Cho Canh Chua Miền Tây", slug: "tom-dat-kho-bac-lieu-nguyen-lieu-canh-chua", summary: "Tôm đất khô Bạc Liêu nhỏ nhưng vị đậm đà, là nguyên liệu không thể thiếu cho các món canh chua và súp miền Tây Nam Bộ.", category: "Hải sản khô", content: "<h1>Tôm Đất Khô Bạc Liêu – Nguyên Liệu Vàng Cho Canh Chua</h1><p>Tôm đất (tôm nước ngọt) Bạc Liêu tuy nhỏ nhưng có vị ngọt và hương thơm đặc trưng rất khác với tôm biển. Khi sấy khô, vị ngọt được cô đọng lại tạo nên nguyên liệu nấu ăn tuyệt vời.</p><h2>Ứng Dụng Trong Nấu Ăn</h2><p>Dùng nấu canh chua bắp chuối, canh bí đao, hoặc rang muối ăn vặt đều ngon.</p>", publishedAt: new Date("2026-01-28") },
  { title: "Mực Rim Cay Nha Trang – Snack Biển Hot Nhất Dành Cho Dân Mê Ăn Cay", slug: "muc-rim-cay-nha-trang-snack-bien-hot", summary: "Mực rim cay Nha Trang kết hợp hương vị biển khơi với vị cay nồng của ớt tạo ra snack được giới trẻ Việt tại Mỹ cực kỳ ưa chuộng.", category: "Hải sản khô", content: "<h1>Mực Rim Cay Nha Trang – Snack Biển Hot Nhất</h1><p>Mực tươi Nha Trang được thái sợi, tẩm gia vị cay và rim đến khi đặc sệt, tạo ra snack vừa dai vừa thơm vừa cay nồng khó cưỡng.</p><h2>Hương Vị Độc Đáo</h2><p>Sự kết hợp giữa vị ngọt tự nhiên của mực biển và vị cay của ớt hiểm tạo nên contrast hương vị thú vị, khiến bạn không thể dừng tay.</p>", publishedAt: new Date("2026-02-03") },
  { title: "Xoài Sấy Dẻo – Cách Phân Biệt Xoài Sấy Ngon Và Sấy Kém Chất Lượng", slug: "xoai-say-deo-phan-biet-ngon-kem-chat-luong", summary: "Không phải xoài sấy nào cũng ngon. Hướng dẫn 6 tiêu chí phân biệt xoài sấy chất lượng giúp bạn chọn được sản phẩm tốt nhất.", category: "Trái cây sấy", content: "<h1>Xoài Sấy Dẻo – Cách Phân Biệt Ngon Và Kém Chất Lượng</h1><p>Thị trường xoài sấy ngày càng phong phú nhưng cũng xuất hiện nhiều sản phẩm kém chất lượng. Biết cách phân biệt giúp bạn không lãng phí tiền bạc.</p><h2>6 Tiêu Chí Chọn Xoài Sấy Tốt</h2><ol><li>Màu vàng cam tự nhiên, không quá sẫm</li><li>Không có đường kết tinh trên bề mặt</li><li>Mùi thơm của xoài chín, không hương liệu</li><li>Độ dẻo vừa phải, không khô cứng</li><li>Thành phần chỉ có xoài và muối</li><li>Nguồn gốc rõ ràng, có mã truy xuất</li></ol>", publishedAt: new Date("2026-02-08") },
  { title: "Dứa Sấy Dẻo – Vị Chua Ngọt Nhiệt Đới Trong Túi Snack Tiện Lợi", slug: "dua-say-deo-vi-chua-ngot-nhiet-doi", summary: "Dứa sấy dẻo Tiền Giang giữ nguyên vị chua ngọt đặc trưng của dứa nhiệt đới trong một format tiện lợi, dễ mang theo.", category: "Trái cây sấy", content: "<h1>Dứa Sấy Dẻo – Vị Chua Ngọt Nhiệt Đới</h1><p>Dứa (thơm, ananas) Tiền Giang nổi tiếng với vị ngọt chua đặc trưng, không quá chua gắt. Khi sấy nhẹ ở nhiệt độ thấp, vị ngọt được cô đọng trong khi vị chua vẫn được giữ nguyên.</p><h2>Lợi Ích Của Dứa Sấy</h2><p>Dứa chứa bromelain – enzyme tiêu hóa tự nhiên giúp phân giải protein, hỗ trợ tiêu hóa sau bữa ăn nặng. Ngoài ra giàu vitamin C và manganese.</p>", publishedAt: new Date("2026-02-12") },
  { title: "Mứt Gừng Sả Hội An – Bí Quyết Giữ Ấm Mùa Đông Của Người Quảng Nam", slug: "mut-gung-sa-hoi-an-giu-am-mua-dong", summary: "Mứt gừng sả Hội An không chỉ là món ăn ngon mà còn là bài thuốc giữ ấm cơ thể, kích thích tiêu hóa được người Quảng Nam truyền lại.", category: "Trà & Bánh mứt", content: "<h1>Mứt Gừng Sả Hội An – Bí Quyết Giữ Ấm Mùa Đông</h1><p>Gừng và sả là hai loại gia vị/thảo dược quen thuộc trong y học cổ truyền Việt Nam. Kết hợp hai nguyên liệu này trong mứt tạo ra sản phẩm vừa ngon vừa có lợi cho sức khỏe.</p><h2>Tác Dụng Dược Lý</h2><p>Gừng chứa gingerol và shogaol – chất chống viêm mạnh. Sả chứa citral và geraniol – kháng khuẩn tự nhiên. Kết hợp lại giúp ấm người, kích thích tuần hoàn máu.</p>", publishedAt: new Date("2026-02-18") },
  { title: "Trà Hoa Cúc – Thức Uống Giúp Giảm Stress Và Ngủ Ngon Hiệu Quả", slug: "tra-hoa-cuc-giam-stress-ngu-ngon", summary: "Trà hoa cúc được khoa học chứng minh có tác dụng giảm lo âu và cải thiện chất lượng giấc ngủ. Hướng dẫn pha và uống đúng cách.", category: "Sức khỏe", content: "<h1>Trà Hoa Cúc – Giảm Stress Và Ngủ Ngon</h1><p>Trong nhịp sống bận rộn tại Mỹ, stress và mất ngủ là vấn đề phổ biến. Trà hoa cúc – với hoạt chất apigenin tác động lên thụ thể GABA trong não – là giải pháp tự nhiên được khoa học xác nhận.</p><h2>Nghiên Cứu Khoa Học</h2><p>Nghiên cứu năm 2017 trên Journal of Advanced Nursing: người uống trà hoa cúc mỗi tối cải thiện chất lượng giấc ngủ và giảm triệu chứng trầm cảm đáng kể.</p>", publishedAt: new Date("2026-02-22") },
  { title: "Cà Phê Arabica Đà Lạt – Vị Cà Phê Tinh Tế Cho Người Sành Uống", slug: "ca-phe-arabica-da-lat-vi-tinh-te", summary: "Arabica Đà Lạt với vị chua nhẹ và hương hoa quả là loại cà phê được giới barista và coffee enthusiast Việt Mỹ ưa chuộng.", category: "Đồ uống", content: "<h1>Cà Phê Arabica Đà Lạt – Vị Tinh Tế Cho Người Sành</h1><p>Arabica Đà Lạt mọc ở độ cao 1500m, nơi nhiệt độ mát lạnh và sương mù quanh năm. Quả cà phê chín chậm, tích lũy nhiều đường và axit hữu cơ tạo nên hương vị phức tạp không thể tìm thấy ở cà phê vùng thấp.</p><h2>Hương Vị Profile</h2><p>Arabica Đà Lạt thường có: vị chua nhẹ của táo xanh hoặc citrus, hương hoa nhài hoặc hoa quả, độ đắng thấp, body nhẹ.</p>", publishedAt: new Date("2026-02-28") },
  { title: "Đậu Phộng Da Cá – Snack Giòn Nghiện Không Thể Dừng Tay", slug: "dau-phong-da-ca-snack-gion-nghien", summary: "Đậu phộng da cá – hạt đậu phộng bọc lớp vỏ giòn từ bột gạo và gia vị – là snack được nghiện nhất trong cộng đồng người Việt tại Mỹ.", category: "Đồ ăn vặt", content: "<h1>Đậu Phộng Da Cá – Snack Giòn Nghiện</h1><p>Tên gọi 'da cá' xuất phát từ lớp vỏ bột gạo bên ngoài khi chiên phồng lên giống như da cá. Sự kết hợp của vỏ giòn tan và nhân đậu phộng bùi ngậy tạo nên texture đặc biệt rất 'nghiện'.</p><h2>Các Vị Phổ Biến</h2><p>Ớt tỏi, phô mai, mực, bạch tuộc, BBQ – mỗi vị có fan riêng nhưng ớt tỏi vẫn là vị được yêu thích nhất.</p>", publishedAt: new Date("2026-03-03") },
  { title: "Khô Cá Thu Đà Nẵng – Đặc Sản Biển Miền Trung Ngon Không Gì Sánh", slug: "kho-ca-thu-da-nang-dac-san-bien-mien-trung", summary: "Cá thu khô Đà Nẵng từ loài cá biển thịt chắc, ngọt tự nhiên, được chế biến theo phương pháp phơi nắng truyền thống của ngư dân miền Trung.", category: "Hải sản khô", content: "<h1>Khô Cá Thu Đà Nẵng – Đặc Sản Biển Miền Trung</h1><p>Cá thu (Scomberomorus) là loài cá biển quý của vùng biển miền Trung Việt Nam. Thịt cá thu chắc, ngọt và giàu omega-3, khi sấy khô giữ được hương vị tốt hơn nhiều loài cá khác.</p><h2>Cách Phân Biệt Cá Thu Khô Thật</h2><p>Cá thu khô thật có màu nâu đỏ tự nhiên, mùi thơm của cá biển, thịt chắc khi bẻ không vỡ vụn.</p>", publishedAt: new Date("2026-03-08") },
  { title: "Nem Chả Lụa Hà Nội – Nghệ Thuật Làm Giò Chả Truyền Thống", slug: "nem-cha-lua-ha-noi-nghe-thuat-lam-gio-cha", summary: "Giò lụa Hà Nội là đỉnh cao của nghệ thuật làm giò chả Việt Nam, đòi hỏi kỹ thuật và bí quyết được truyền lại qua nhiều thế hệ.", category: "Đặc sản vùng miền", content: "<h1>Nem Chả Lụa Hà Nội – Nghệ Thuật Truyền Thống</h1><p>Giò lụa (chả lụa) Hà Nội không chỉ là thực phẩm – đó là nghệ thuật ẩm thực được người Hà Nội gìn giữ qua nhiều thế hệ. Miếng giò trắng ngà mịn mượt, thơm nhẹ, vị đậm đà đặc trưng là niềm tự hào của ẩm thực thủ đô.</p><h2>Bí Quyết Giò Lụa Ngon</h2><p>Thịt heo phải tươi, xay ngay sau khi giết mổ. Quết thịt bằng tay hoặc máy đến khi dai dẻo. Gói bằng lá chuối để tạo hương thơm tự nhiên.</p>", publishedAt: new Date("2026-03-12") },
  { title: "Hạt Sen Đồng Tháp – 'Vàng Trắng' Của Vùng Đồng Tháp Mười", slug: "hat-sen-dong-thap-vang-trang-dong-thap-muoi", summary: "Hạt sen Đồng Tháp nổi tiếng nhất Việt Nam nhờ hạt to, trắng đều, ngọt bùi tự nhiên. Tìm hiểu lợi ích dinh dưỡng và cách chế biến hạt sen.", category: "Gạo & Nông sản", content: "<h1>Hạt Sen Đồng Tháp – Vàng Trắng Vùng Đồng Tháp Mười</h1><p>Đồng Tháp Mười – vùng đất ngập nước nổi tiếng với những cánh đồng sen bạt ngàn – là nơi sản xuất hạt sen ngon nhất Việt Nam. Hạt sen Đồng Tháp to đều, màu trắng ngà, bùi ngọt tự nhiên.</p><h2>Giá Trị Dinh Dưỡng Cao</h2><p>Hạt sen giàu protein, carbohydrate phức hợp, và các khoáng chất thiết yếu như magie, kali, photpho. Ngoài ra chứa các alkaloid có tác dụng an thần, giúp ngủ ngon.</p>", publishedAt: new Date("2026-03-17") },
  { title: "Nước Mắm Nha Trang – Hương Vị Biển Khơi Từ Vùng Biển Khánh Hòa", slug: "nuoc-mam-nha-trang-huong-vi-bien-khoi", summary: "Nước mắm Nha Trang với vị ngọt thanh dịu hơn Phú Quốc, là lựa chọn phù hợp cho những ai thích hương vị nhẹ nhàng hơn trong nấu ăn hàng ngày.", category: "Gia vị Việt", content: "<h1>Nước Mắm Nha Trang – Hương Vị Biển Khơi</h1><p>Nha Trang – Khánh Hòa có truyền thống làm nước mắm lâu đời không kém Phú Quốc. Nước mắm Nha Trang được ủ từ cá cơm biển Khánh Hòa, có vị ngọt thanh hơn, ít nồng hơn – phù hợp với khẩu vị đa dạng hơn.</p>", publishedAt: new Date("2026-03-22") },
  { title: "Bánh Cuốn Hà Nội – Hướng Dẫn Làm Tại Nhà Cho Người Việt Ở Mỹ", slug: "banh-cuon-ha-noi-huong-dan-lam-tai-nha", summary: "Bánh cuốn Hà Nội mỏng mịn với nhân thịt mộc nhĩ là bữa sáng thanh nhẹ được yêu thích. Hướng dẫn làm tại nhà với dụng cụ đơn giản.", category: "Công thức nấu ăn", content: "<h1>Bánh Cuốn Hà Nội – Làm Tại Nhà</h1><p>Bánh cuốn Hà Nội với lớp vỏ tráng mỏng trong suốt, nhân thịt băm và mộc nhĩ thơm ngon, ăn kèm chả lụa và nước mắm chua ngọt là bữa sáng cổ điển của người Hà Nội.</p><h2>Nguyên Liệu Cần Chuẩn Bị</h2><p>Bột gạo tẻ 300g, tinh bột năng 50g, thịt heo 200g, mộc nhĩ (nấm mèo) 30g, hành tím, gia vị. Đặc biệt cần chảo tráng bánh không dính.</p>", publishedAt: new Date("2026-03-27") },
  { title: "Đường Phèn Mật Hoa – Bí Quyết Làm Ngọt Tự Nhiên Của Bếp Việt", slug: "duong-phen-mat-hoa-bi-quyet-lam-ngot-tu-nhien", summary: "Đường phèn mật hoa tự nhiên là loại đường được ưa chuộng trong ẩm thực Việt với vị ngọt thanh khác biệt, ít ảnh hưởng đến đường huyết.", category: "Gạo & Nông sản", content: "<h1>Đường Phèn Mật Hoa – Ngọt Tự Nhiên</h1><p>Đường phèn (rock sugar) được kết tinh từ nước đường mía chưng cất, có cấu trúc tinh thể lớn trong suốt. Khác với đường trắng tinh luyện, đường phèn giữ được một số khoáng chất tự nhiên và có vị ngọt thanh hơn.</p>", publishedAt: new Date("2026-04-03") },
  { title: "Sả Khô Nghiền – Gia Vị Tiện Lợi Không Thể Thiếu Trong Bếp Việt Tại Mỹ", slug: "sa-kho-nghien-gia-vi-tien-loi-bep-viet-tai-my", summary: "Sả khô nghiền mịn từ sả tươi Tây Ninh giúp bạn sử dụng được hương thơm của sả mọi lúc mọi nơi mà không cần tìm mua sả tươi.", category: "Gia vị Việt", content: "<h1>Sả Khô Nghiền – Gia Vị Tiện Lợi</h1><p>Sả (lemongrass) là linh hồn của nhiều món Việt từ bún bò Huế đến cà ri, gà nướng. Nhưng không phải lúc nào cũng tìm được sả tươi, đặc biệt ở Mỹ. Sả khô nghiền là giải pháp hoàn hảo.</p>", publishedAt: new Date("2026-04-08") },
  { title: "Tiêu Phú Quốc – Loại Tiêu Nổi Tiếng Nhất Đông Nam Á", slug: "tieu-phu-quoc-noi-tieng-nhat-dong-nam-a", summary: "Tiêu Phú Quốc được đánh giá là một trong những loại tiêu ngon nhất thế giới. Tìm hiểu tại sao tiêu Phú Quốc đặc biệt và cách sử dụng tối ưu.", category: "Gia vị Việt", content: "<h1>Tiêu Phú Quốc – Loại Tiêu Nổi Tiếng Nhất</h1><p>Hạt tiêu Phú Quốc có hàm lượng tinh dầu cao hơn nhiều so với tiêu trồng ở nơi khác, tạo nên hương thơm và vị cay đặc biệt. Tiêu Phú Quốc đã được cấp chỉ dẫn địa lý tại Việt Nam.</p>", publishedAt: new Date("2026-04-12") },
  { title: "Cơm Lam Ống Tre – Hương Vị Rừng Núi Tây Bắc Khó Quên", slug: "com-lam-ong-tre-huong-vi-rung-nui-tay-bac", summary: "Cơm lam – nếp nương nấu trong ống tre trên than hồng – là đặc sản Tây Bắc với hương vị rừng núi độc đáo không thể tìm thấy ở nơi nào khác.", category: "Đặc sản vùng miền", content: "<h1>Cơm Lam Ống Tre – Hương Vị Rừng Núi</h1><p>Cơm lam không chỉ là thức ăn – đó là cả một nghệ thuật nấu nướng của người dân miền núi Tây Bắc. Nếp nương được đổ vào ống tre non cùng nước cốt dừa và một chút muối, nướng trên than hồng đến khi ống tre cháy vàng.</p>", publishedAt: new Date("2026-04-17") },
  { title: "Lạp Xưởng Cần Thơ – Đặc Sản Ngày Tết Không Thể Thiếu Của Gia Đình Miền Tây", slug: "lap-xuong-can-tho-dac-san-ngay-tet", summary: "Lạp xưởng Cần Thơ là đặc sản Tết không thể thiếu của gia đình miền Tây Nam Bộ. Hướng dẫn chọn mua và bảo quản lạp xưởng đúng cách.", category: "Đặc sản vùng miền", content: "<h1>Lạp Xưởng Cần Thơ – Đặc Sản Ngày Tết</h1><p>Lạp xưởng (xúc xích khô kiểu Trung Hoa) đã được Việt hóa hoàn toàn trong tay người miền Tây Cần Thơ. Lạp xưởng tươi Cần Thơ có màu đỏ hồng đẹp, hương thơm ngũ vị hương, ăn chiên hoặc nướng đều ngon.</p>", publishedAt: new Date("2026-04-22") },
  { title: "Mắm Tôm Hải Phòng – Gia Vị Đặc Trưng Của Bún Đậu Mắm Tôm", slug: "mam-tom-hai-phong-gia-vi-bun-dau", summary: "Mắm tôm Hải Phòng là linh hồn của món bún đậu mắm tôm nổi tiếng. Tìm hiểu cách làm mắm tôm chưng chanh ớt chuẩn vị Bắc.", category: "Gia vị Việt", content: "<h1>Mắm Tôm Hải Phòng – Linh Hồn Của Bún Đậu</h1><p>Không có loại mắm nào chia rẽ ý kiến người Việt nhiều như mắm tôm – người yêu thì cực yêu, người ghét thì không thể chịu được mùi. Nhưng với người yêu bún đậu mắm tôm, đây là loại gia vị không thể thay thế.</p>", publishedAt: new Date("2026-04-27") },
  { title: "Ruốc Heo Sài Gòn – Cách Làm Ruốc Tơi Ngon Không Bị Vón Cục", slug: "ruoc-heo-sai-gon-cach-lam-toi-ngon", summary: "Ruốc (chà bông) heo Sài Gòn tơi mịn, vị mặn ngọt vừa phải là thức ăn kèm phổ biến trong gia đình Việt. Bí quyết làm ruốc tơi không vón cục.", category: "Đặc sản vùng miền", content: "<h1>Ruốc Heo Sài Gòn – Bí Quyết Tơi Ngon</h1><p>Ruốc heo (chà bông, thịt cháy) là món ăn kèm quen thuộc trong bếp Việt – rắc cháo, ăn với cơm trắng, kẹp bánh mì hay trộn salad đều ngon. Làm ruốc tơi và không bị vón là bí quyết quan trọng nhất.</p>", publishedAt: new Date("2026-05-02") },
  { title: "Trà Bí Đao Mật Ong – Thức Uống Giải Nhiệt Mùa Hè Cho Người Việt Tại Mỹ", slug: "tra-bi-dao-mat-ong-giai-nhiet-mua-he", summary: "Trà bí đao kết hợp mật ong là thức uống giải nhiệt tuyệt vời và lành mạnh cho mùa hè nóng bức tại Mỹ, với nhiều lợi ích sức khỏe đã được chứng minh.", category: "Đồ uống", content: "<h1>Trà Bí Đao Mật Ong – Giải Nhiệt Mùa Hè</h1><p>Bí đao (winter melon) là loại rau quen thuộc trong ẩm thực Á Đông, nổi tiếng với tác dụng thanh nhiệt, lợi tiểu và giải độc. Kết hợp với mật ong nguyên chất tạo ra thức uống mùa hè tuyệt vời.</p>", publishedAt: new Date("2026-05-08") },
  { title: "Gạo Hương Lài Sóc Trăng – Bí Ẩn Của Hạt Gạo Thơm Mùi Hoa Lài", slug: "gao-huong-lai-soc-trang-bi-an-gao-thom", summary: "Gạo hương lài Sóc Trăng có hương thơm tự nhiên của hoa nhài mà không cần bất kỳ chất phụ gia nào. Bí ẩn di truyền học đằng sau loại gạo đặc biệt này.", category: "Gạo & Nông sản", content: "<h1>Gạo Hương Lài Sóc Trăng – Bí Ẩn Hương Thơm</h1><p>Hương thơm của gạo hương lài đến từ hợp chất 2-acetyl-1-pyrroline (2AP) – cùng hợp chất tạo mùi trong hoa nhài và pandan. Giống lúa hương lài có đột biến gen tạo ra nhiều 2AP hơn các giống khác.</p>", publishedAt: new Date("2026-05-12") },
  { title: "Bánh Phồng Tôm Ăn Liền – Snack Cuối Tuần Của Gia Đình Việt", slug: "banh-phong-tom-an-lien-snack-cuoi-tuan", summary: "Bánh phồng tôm ăn liền đã qua chế biến sẵn là snack tiện lợi cho gia đình Việt cuối tuần. So sánh các thương hiệu và cách bảo quản đúng.", category: "Đồ ăn vặt", content: "<h1>Bánh Phồng Tôm Ăn Liền – Snack Cuối Tuần</h1><p>Khác với bánh phồng tôm sống cần chiên trước khi ăn, bánh phồng tôm ăn liền đã được nướng hoặc chiên sẵn, đóng gói kín khí để giữ độ giòn. Tiện lợi cho những buổi xem phim hoặc tụ họp gia đình.</p>", publishedAt: new Date("2026-05-18") },
  { title: "Cà Phê Robusta Việt Nam – Tại Sao Được Cả Thế Giới Tìm Mua?", slug: "ca-phe-robusta-viet-nam-ca-the-gioi-tim-mua", summary: "Việt Nam là nước xuất khẩu cà phê Robusta lớn nhất thế giới. Tìm hiểu đặc điểm, hương vị và cách pha cà phê Robusta đúng chuẩn Việt Nam.", category: "Đồ uống", content: "<h1>Cà Phê Robusta Việt Nam – Được Cả Thế Giới Tìm Mua</h1><p>Việt Nam sản xuất hơn 1.6 triệu tấn cà phê mỗi năm, xếp thứ 2 thế giới về sản lượng. Đặc biệt, Robusta Việt Nam – đặc biệt là Robusta Buôn Ma Thuột – có hàm lượng caffeine cao và hương vị đặc trưng được các nhà rang xay toàn cầu tìm kiếm.</p>", publishedAt: new Date("2026-05-22") },
  { title: "Thanh Long Sấy Dẻo – Siêu Thực Phẩm Màu Hồng Từ Bình Thuận", slug: "thanh-long-say-deo-sieu-thuc-pham-mau-hong", summary: "Thanh long đỏ Bình Thuận sấy dẻo giàu betalain – chất màu tự nhiên có khả năng chống oxy hóa mạnh. Khám phá 'siêu thực phẩm' mới của ẩm thực Việt.", category: "Trái cây sấy", content: "<h1>Thanh Long Sấy Dẻo – Siêu Thực Phẩm Màu Hồng</h1><p>Thanh long ruột đỏ Bình Thuận có màu hồng đỏ rực rỡ từ betalain – sắc tố tự nhiên có hoạt tính chống oxy hóa cao hơn beta-carotene. Khi sấy dẻo, màu sắc và dinh dưỡng được bảo toàn xuất sắc.</p>", publishedAt: new Date("2026-05-25") },
  { title: "Mắm Bò Hóc Khmer – Đặc Sản Huyền Bí Của Người Khmer Nam Bộ", slug: "mam-bo-hoc-khmer-dac-san-huyen-bi", summary: "Mắm bò hóc là đặc sản của người Khmer tại Trà Vinh và Sóc Trăng, dùng để nấu những món đặc trưng của cộng đồng này ở Mỹ.", category: "Đặc sản vùng miền", content: "<h1>Mắm Bò Hóc Khmer – Đặc Sản Huyền Bí</h1><p>Prahok hay mắm bò hóc là linh hồn của ẩm thực Khmer. Được làm từ cá nước ngọt lên men, mắm bò hóc có hương vị mạnh và đặc trưng, dùng để nêm nhiều món ăn truyền thống Khmer.</p>", publishedAt: new Date("2026-05-28") },
  // -- Batch 2: 25 bài tiếp
  { title: "Tôm Rim Me – Hương Vị Chua Ngọt Đặc Trưng Của Sài Gòn", slug: "tom-rim-me-huong-vi-chua-ngot-sai-gon", summary: "Tôm rim me là món ăn đặc trưng của ẩm thực Sài Gòn với vị chua ngọt đậm đà từ me chua. Hướng dẫn chế biến và thưởng thức.", category: "Hải sản khô", content: "<h1>Tôm Rim Me – Hương Vị Chua Ngọt Sài Gòn</h1><p>Tôm rim me là sự kết hợp hoàn hảo giữa vị ngọt tự nhiên của tôm biển và vị chua ngọt đặc trưng của me Việt Nam. Món ăn này thể hiện rõ phong cách ẩm thực Sài Gòn: đậm đà, phóng khoáng, không ngại vị mạnh.</p>", publishedAt: new Date("2026-01-16") },
  { title: "Nước Dừa Tươi Đóng Hộp Bến Tre – Lợi Ích Sức Khỏe Của 'Nước Điện Giải Tự Nhiên'", slug: "nuoc-dua-tuoi-dong-hop-ben-tre-loi-ich-suc-khoe", summary: "Nước dừa tươi được mệnh danh là 'nước điện giải tự nhiên' nhờ hàm lượng kali và điện giải cao. Tìm hiểu lợi ích và cách uống đúng cách.", category: "Đồ uống", content: "<h1>Nước Dừa Tươi – Nước Điện Giải Tự Nhiên</h1><p>Nước dừa chứa nhiều kali hơn một quả chuối và ít natri hơn các loại nước thể thao. Đây là lý do nước dừa được gọi là 'isotonic drink của thiên nhiên', lý tưởng sau khi tập thể dục.</p>", publishedAt: new Date("2026-01-24") },
  { title: "Bột Cacao Nguyên Chất Đắk Lắk – Cách Làm Kem Cacao Không Đường Tại Nhà", slug: "bot-cacao-nguyen-chat-dak-lak-kem-khong-duong", summary: "Bột cacao nguyên chất Đắk Lắk 100% không đường là nguyên liệu hoàn hảo cho các món tráng miệng healthy. Công thức kem cacao không đường đơn giản tại nhà.", category: "Đồ uống", content: "<h1>Bột Cacao Nguyên Chất – Kem Không Đường Tại Nhà</h1><p>Cacao nguyên chất khác hoàn toàn với bột socola ngọt thông thường. Không đường, không chất béo thêm vào – chỉ là cacao thuần túy với hàm lượng flavonoid chống oxy hóa cao.</p>", publishedAt: new Date("2026-02-06") },
  { title: "Bột Sắn Dây – Thức Uống Truyền Thống Giải Rượu Của Người Việt", slug: "bot-san-day-giai-ruou-truyen-thong", summary: "Bột sắn dây là bài thuốc dân gian của người Việt để giải rượu và thanh nhiệt. Cơ sở khoa học đằng sau bài thuốc truyền thống này là gì?", category: "Sức khỏe", content: "<h1>Bột Sắn Dây – Giải Rượu Truyền Thống</h1><p>Sắn dây (kudzu vine) từ lâu được dùng trong y học Đông phương để giải rượu. Nghiên cứu khoa học hiện đại xác nhận: isoflavone trong sắn dây ức chế enzyme acetaldehyde dehydrogenase, giúp cơ thể xử lý rượu nhanh hơn.</p>", publishedAt: new Date("2026-02-14") },
  { title: "Chuối Sấy Giòn – Snack Tốt Cho Sức Khỏe Hay Không?", slug: "chuoi-say-gion-snack-tot-cho-suc-khoe", summary: "Chuối sấy giòn ngày càng được dùng như snack healthy. Phân tích chi tiết giá trị dinh dưỡng, ưu nhược điểm và cách chọn mua chuối sấy chất lượng.", category: "Sức khỏe", content: "<h1>Chuối Sấy Giòn – Tốt Hay Không?</h1><p>Câu trả lời phụ thuộc vào loại chuối sấy bạn chọn. Chuối sấy không dầu, không đường (dehydrated banana) giữ được phần lớn dinh dưỡng của chuối tươi và là snack khá lành mạnh. Nhưng chuối chiên dầu có hàm lượng chất béo cao hơn nhiều.</p>", publishedAt: new Date("2026-02-21") },
  { title: "Nhãn Lồng Hưng Yên – Vị Ngọt Đặc Trưng Của Đồng Bằng Bắc Bộ", slug: "nhan-long-hung-yen-vi-ngot-dac-trung", summary: "Nhãn lồng Hưng Yên là loại nhãn ngon nhất Việt Nam với hạt nhỏ, thịt dày, ngọt đậm. Tìm hiểu tại sao nhãn Hưng Yên khác biệt hoàn toàn.", category: "Trái cây sấy", content: "<h1>Nhãn Lồng Hưng Yên – Vị Ngọt Đặc Trưng Bắc Bộ</h1><p>Nhãn lồng (long nhãn) Hưng Yên được trồng từ thế kỷ 14, là giống nhãn gắn liền với lịch sử của vùng đất học Hưng Yên. Hạt nhỏ bằng hạt đậu xanh, thịt dày trong, vị ngọt đậm thanh là đặc điểm nhận biết nhãn lồng chính hiệu.</p>", publishedAt: new Date("2026-02-26") },
  { title: "Sa Tế Chay – Vì Sao Là Loại Gia Vị Không Thể Thiếu Cho Người Ăn Chay?", slug: "sa-te-chay-gia-vi-khong-the-thieu-nguoi-an-chay", summary: "Sa tế chay Đà Nẵng là phiên bản thuần thực vật của sa tế truyền thống, giúp món chay thêm đậm đà và hấp dẫn mà không dùng nguyên liệu động vật.", category: "Gia vị Việt", content: "<h1>Sa Tế Chay – Gia Vị Cho Người Ăn Chay</h1><p>Nhiều người ăn chay tưởng rằng bỏ qua sa tế là mất đi vị đậm đà trong nấu ăn. Thực ra sa tế chay làm từ ớt, tỏi, sả, dầu thực vật hoàn toàn có thể tạo ra vị cay thơm không kém sa tế thường.</p>", publishedAt: new Date("2026-03-04") },
  { title: "Mít Sấy Giòn – Cách Ăn Mít Mà Không Lo Dính Nhựa", slug: "mit-say-gion-an-mit-khong-lo-dinh-nhua", summary: "Mít sấy giòn là giải pháp hoàn hảo để thưởng thức mít mà không phải lo lắng về nhựa dính tay. Tìm hiểu tại sao mít sấy giòn lại hấp dẫn đến vậy.", category: "Trái cây sấy", content: "<h1>Mít Sấy Giòn – Ăn Mít Không Lo Nhựa</h1><p>Ai cũng yêu mùi thơm của mít chín nhưng nhiều người ngại bóc vì nhựa dính tay rất khó rửa. Mít sấy giòn hoàn toàn khắc phục nhược điểm này – bạn thoải mái ăn mít mọi lúc mọi nơi.</p>", publishedAt: new Date("2026-03-11") },
  { title: "Ổi Sấy Giòn – Snack Ít Calo Giàu Vitamin C Cho Người Ăn Kiêng", slug: "oi-say-gion-snack-it-calo-giau-vitamin-c", summary: "Ổi sấy giòn Long An là snack ít calo, giàu vitamin C và chất xơ, lý tưởng cho người đang ăn kiêng hoặc muốn duy trì cân nặng lành mạnh.", category: "Sức khỏe", content: "<h1>Ổi Sấy Giòn – Snack Ít Calo Giàu Vitamin C</h1><p>Ổi xá lị Long An có hàm lượng vitamin C gấp 4 lần cam, ít đường tự nhiên và giàu chất xơ pectin có lợi cho tiêu hóa. Khi sấy giòn, vitamin C tuy giảm nhưng chất xơ và khoáng chất được giữ nguyên.</p>", publishedAt: new Date("2026-03-18") },
  { title: "Bột Gạo Lứt – Nguyên Liệu Làm Bánh Lành Mạnh Cho Gia Đình", slug: "bot-gao-lut-nguyen-lieu-lam-banh-lanh-manh", summary: "Bột gạo lứt nguyên cám là nguyên liệu làm bánh lành mạnh với chỉ số đường huyết thấp, giàu chất xơ và vitamin B. Gợi ý các công thức bánh đơn giản.", category: "Sức khỏe", content: "<h1>Bột Gạo Lứt – Làm Bánh Lành Mạnh</h1><p>Gạo lứt khác gạo trắng ở chỗ giữ lại lớp cám bên ngoài – nơi chứa phần lớn dinh dưỡng của hạt gạo. Bột gạo lứt có màu nâu nhạt, vị hơi bùi, phù hợp làm nhiều loại bánh healthy.</p>", publishedAt: new Date("2026-03-24") },
  { title: "Ghẹ Rang Muối Vũng Tàu – Hương Vị Biển Khơi Đóng Hộp Tiện Lợi", slug: "ghe-rang-muoi-vung-tau-huong-vi-bien-khoi", summary: "Ghẹ rang muối đóng hộp Vũng Tàu là cách thưởng thức hải sản tươi ngon tiện lợi nhất dành cho người Việt tại Mỹ không có điều kiện mua hải sản tươi.", category: "Hải sản khô", content: "<h1>Ghẹ Rang Muối Vũng Tàu – Biển Khơi Đóng Hộp</h1><p>Ghẹ (crab) Vũng Tàu nổi tiếng thịt ngọt, chắc, được rang muối theo công thức gia truyền và đóng hộp chân không. Mở hộp là thơm phức, ăn ngay mà không cần chế biến thêm.</p>", publishedAt: new Date("2026-03-30") },
  { title: "Mận Sấy Bắc Hà Lào Cai – Vị Chua Ngọt Đặc Trưng Của Vùng Cao", slug: "man-say-bac-ha-lao-cai-vi-chua-ngot", summary: "Mận hậu Bắc Hà Lào Cai sấy khô giữ nguyên vị chua ngọt tươi của trái mận vùng cao Tây Bắc – loại mận ngon nhất Việt Nam.", category: "Trái cây sấy", content: "<h1>Mận Sấy Bắc Hà – Vị Chua Ngọt Vùng Cao</h1><p>Mận hậu Bắc Hà (Lào Cai) là giống mận đặc biệt của vùng cao Tây Bắc, quả to, thịt dày, vị chua ngọt cân bằng đặc trưng. Sấy khô giúp bảo quản được hàng tháng mà vẫn giữ được phần lớn hương vị.</p>", publishedAt: new Date("2026-04-06") },
  { title: "Kẹo Dừa Bến Tre – Từ Đặc Sản Địa Phương Đến Thương Hiệu Toàn Cầu", slug: "keo-dua-ben-tre-tu-dia-phuong-den-toan-cau", summary: "Kẹo dừa Bến Tre đã vươn ra thị trường hơn 30 quốc gia. Tìm hiểu hành trình từ sản phẩm thủ công của người dân xứ dừa đến thương hiệu được thế giới biết đến.", category: "Trà & Bánh mứt", content: "<h1>Kẹo Dừa Bến Tre – Từ Địa Phương Đến Toàn Cầu</h1><p>Kẹo dừa Bến Tre là câu chuyện thành công của thương hiệu địa phương Việt Nam. Từ cơ sở sản xuất thủ công gia đình, kẹo dừa Bến Tre đã xuất khẩu sang hơn 30 quốc gia, trở thành đặc sản Việt Nam được yêu thích toàn cầu.</p>", publishedAt: new Date("2026-04-13") },
  { title: "Hạt Dẻ Sấy Đà Lạt – Thú Vui Mùa Thu Của Vùng Cao Nguyên", slug: "hat-de-say-da-lat-thu-vui-mua-thu", summary: "Hạt dẻ tươi Đà Lạt sấy khô là đặc sản mùa thu hiếm hoi của vùng cao nguyên mát lạnh. Vị bùi ngọt đặc trưng của hạt dẻ sấy không loại hạt nào có được.", category: "Đồ ăn vặt", content: "<h1>Hạt Dẻ Sấy Đà Lạt – Thú Vui Mùa Thu</h1><p>Hạt dẻ (chestnut) Đà Lạt thu hoạch vào mùa thu, khi thời tiết se lạnh nhất. Sấy khô bằng than hồng tạo ra hương khói đặc trưng khác hoàn toàn với hạt dẻ rang bơ thông thường.</p>", publishedAt: new Date("2026-04-19") },
  { title: "Ruốc Tôm Huế – Nguyên Liệu Bí Quyết Của Nồi Bún Bò Chuẩn Vị", slug: "ruoc-tom-hue-bi-quyet-bun-bo-chuan-vi", summary: "Ruốc (mắm ruốc) tôm Huế là nguyên liệu không thể thiếu của nồi bún bò Huế chuẩn. Tìm hiểu sự khác biệt giữa ruốc tôm Huế và các vùng khác.", category: "Gia vị Việt", content: "<h1>Ruốc Tôm Huế – Bí Quyết Bún Bò Chuẩn Vị</h1><p>Người Huế có câu: 'Bún bò không ruốc là bún bò giả'. Ruốc (mắm ruốc) tôm Huế là yếu tố quyết định hương vị đặc trưng của nồi bún bò Huế. Ruốc Huế có màu hồng đặc trưng, mùi thơm nồng nhưng không hắc.</p>", publishedAt: new Date("2026-04-23") },
  { title: "Nếp Cái Hoa Vàng Hải Hậu – Giống Nếp Quý Nhất Đồng Bằng Bắc Bộ", slug: "nep-cai-hoa-vang-hai-hau-giong-nep-quy", summary: "Nếp cái hoa vàng Hải Hậu Nam Định là giống nếp quý nhất miền Bắc, dùng để nấu xôi và làm rượu. Hương thơm và độ dẻo không giống bất kỳ loại nếp nào khác.", category: "Gạo & Nông sản", content: "<h1>Nếp Cái Hoa Vàng – Giống Nếp Quý Nhất Bắc Bộ</h1><p>Nếp cái hoa vàng Hải Hậu được trồng trên vùng đất ven biển Nam Định từ hàng trăm năm. Giống nếp này có đặc điểm: hạt to tròn, màu trắng đục, khi nấu chín có hương thơm nhẹ và độ dẻo đặc biệt.</p>", publishedAt: new Date("2026-04-28") },
  { title: "Hộp Quà Hải Sản Khô – Ý Tưởng Quà Tặng Tết Ý Nghĩa Và Cao Cấp", slug: "hop-qua-hai-san-kho-qua-tang-tet-y-nghia", summary: "Hộp quà hải sản khô tổng hợp là lựa chọn quà Tết sang trọng và ý nghĩa cho người Việt tại Mỹ khi muốn gửi gắm hương vị quê hương.", category: "Đặc sản vùng miền", content: "<h1>Hộp Quà Hải Sản Khô – Quà Tặng Tết Cao Cấp</h1><p>Trong văn hóa Việt Nam, quà biếu Tết không chỉ là vật chất mà còn là tình cảm gửi gắm. Hộp quà hải sản khô cao cấp – tôm khô, mực khô, cá khô các loại – là cách thể hiện sự trân trọng với người nhận.</p>", publishedAt: new Date("2026-05-03") },
  { title: "Snack Rong Biển – Xu Hướng Ăn Healthy Mới Từ Biển Khơi", slug: "snack-rong-bien-xu-huong-an-healthy", summary: "Snack rong biển đang trở thành xu hướng snack healthy toàn cầu. Tìm hiểu lợi ích dinh dưỡng tuyệt vời của rong biển và tại sao nên bổ sung vào chế độ ăn.", category: "Sức khỏe", content: "<h1>Snack Rong Biển – Xu Hướng Healthy Mới</h1><p>Rong biển (seaweed) đã được người Á Đông ăn từ ngàn năm nay và ngày càng được khoa học phương Tây xác nhận là siêu thực phẩm. Snack rong biển sấy giòn là cách tiêu thụ rong biển tiện lợi và ngon miệng nhất.</p>", publishedAt: new Date("2026-05-09") },
  { title: "Đậu Phộng Rang Muối Tây Ninh – Snack Quốc Dân Của Người Việt", slug: "dau-phong-rang-muoi-tay-ninh-snack-quoc-dan", summary: "Đậu phộng rang muối Tây Ninh là 'snack quốc dân' của người Việt – đơn giản nhưng không bao giờ chán. Bí quyết rang đậu phộng giòn thơm tại nhà.", category: "Đồ ăn vặt", content: "<h1>Đậu Phộng Rang Muối – Snack Quốc Dân</h1><p>Từ vỉa hè Sài Gòn đến bàn nhậu miền Tây, từ quán cóc Hà Nội đến căn bếp của người Việt xa xứ – đậu phộng rang muối luôn hiện diện như người bạn đồng hành thân thiết nhất.</p>", publishedAt: new Date("2026-05-16") },
  { title: "Bắp Rang Bơ Tây Nguyên – Cách Làm Bắp Rang Bơ Vàng Óng Tại Nhà", slug: "bap-rang-bo-tay-nguyen-cach-lam-tai-nha", summary: "Bắp nếp Tây Nguyên rang với bơ tươi tạo ra snack thơm béo ngọt không thua gì rạp chiếu phim. Công thức chi tiết để làm bắp rang bơ hoàn hảo tại nhà.", category: "Gạo & Nông sản", content: "<h1>Bắp Rang Bơ Tây Nguyên – Làm Tại Nhà</h1><p>Bắp nếp Tây Nguyên hạt to, dẻo ngọt tự nhiên. Rang cùng bơ tươi tạo ra hương thơm béo ngào ngạt khắp nhà. Đây là snack xem phim hoàn hảo cho cả gia đình.</p>", publishedAt: new Date("2026-05-19") },
  { title: "Vải Thiều Lục Ngạn – Mùa Vải Ngắn Ngủi Và Cách Thưởng Thức Quanh Năm", slug: "vai-thieu-luc-ngan-mua-vai-ngan-ngui", summary: "Vải thiều Lục Ngạn chỉ có mùa ngắn 30-40 ngày mỗi năm. Vải sấy khô là cách thưởng thức đặc sản này quanh năm mà không cần chờ đúng mùa.", category: "Trái cây sấy", content: "<h1>Vải Thiều Lục Ngạn – Thưởng Thức Quanh Năm</h1><p>Vải thiều Lục Ngạn chín đỏ từ giữa tháng 5 đến tháng 6 dương lịch – chỉ khoảng 40 ngày. Vải sấy khô kéo dài mùa vải lên cả năm, cho phép người Việt xa xứ thưởng thức đặc sản quê hương bất cứ lúc nào.</p>", publishedAt: new Date("2026-05-23") },
  { title: "Bánh Dẻo Nhân Đậu Xanh – Ký Ức Trung Thu Của Mọi Người Việt", slug: "banh-deo-nhan-dau-xanh-ky-uc-trung-thu", summary: "Bánh dẻo nhân đậu xanh là biểu tượng của Tết Trung Thu – ký ức tuổi thơ không thể phai của người Việt. Hướng dẫn làm bánh dẻo chuẩn vị truyền thống.", category: "Trà & Bánh mứt", content: "<h1>Bánh Dẻo – Ký Ức Trung Thu</h1><p>Cứ đến Tết Trung Thu, mùi bánh dẻo lại gợi về ký ức tuổi thơ – những đêm rằm tháng 8 ngắm trăng, ăn bánh, rước đèn ông sao. Bánh dẻo nhân đậu xanh truyền thống với vỏ dẻo trắng mịn là loại bánh đặc trưng nhất.</p>", publishedAt: new Date("2026-05-26") },
  { title: "Đậu Hũ Khô Tẩm Gia Vị – Protein Thực Vật Tiện Lợi Cho Người Ăn Chay", slug: "dau-hu-kho-tam-gia-vi-protein-thuc-vat", summary: "Đậu hũ khô tẩm gia vị là nguồn protein thực vật tiện lợi cho người ăn chay tại Mỹ – giàu protein, ít calo, dễ mang theo và ngon miệng.", category: "Sức khỏe", content: "<h1>Đậu Hũ Khô – Protein Thực Vật Tiện Lợi</h1><p>Đậu hũ (tofu) là nguồn protein thực vật hoàn chỉnh, chứa đủ 9 axit amin thiết yếu. Đậu hũ khô tẩm gia vị có ưu điểm vượt trội là tiện lợi, không cần nấu, dễ mang theo.</p>", publishedAt: new Date("2026-05-29") },
  // -- Batch 3: thêm bài đến đủ 100
  { title: "Bún Bò Huế Cho Người Mới Bắt Đầu – 5 Sai Lầm Cần Tránh", slug: "bun-bo-hue-nguoi-moi-bat-dau-sai-lam", summary: "Nấu bún bò Huế lần đầu dễ mắc phải những sai lầm phổ biến. Hướng dẫn chi tiết 5 lỗi thường gặp và cách khắc phục để có nồi bún bò chuẩn vị.", category: "Công thức nấu ăn", content: "<h1>Bún Bò Huế Cho Người Mới – 5 Sai Lầm Cần Tránh</h1><p>Bún bò Huế có vẻ phức tạp nhưng thực ra ai cũng có thể làm được nếu tránh được những sai lầm phổ biến. Hướng dẫn này dành cho người nấu lần đầu.</p>", publishedAt: new Date("2026-01-17") },
  { title: "Top 5 Cách Dùng Nước Mắm Phú Quốc Trong Bếp Mỹ", slug: "top-5-cach-dung-nuoc-mam-phu-quoc-bep-my", summary: "Nước mắm Phú Quốc không chỉ dùng để chấm – đây là 5 cách sử dụng sáng tạo giúp tăng hương vị cho nhiều món ăn cả Việt lẫn Western.", category: "Gia vị Việt", content: "<h1>Top 5 Cách Dùng Nước Mắm Phú Quốc</h1><p>Nước mắm không chỉ là gia vị Việt – đây là nguồn umami tự nhiên đang được nhiều đầu bếp Tây phương khám phá và ứng dụng vào ẩm thực fusion.</p>", publishedAt: new Date("2026-01-21") },
  { title: "Mắm Ruốc – Gia Vị Umami Bí Ẩn Của Ẩm Thực Miền Trung Việt Nam", slug: "mam-ruoc-gia-vi-umami-bi-an-mien-trung", summary: "Mắm ruốc là gia vị tạo nên hương vị đặc trưng cho bún bò Huế, bánh mì và nhiều món miền Trung. Tìm hiểu cách sử dụng mắm ruốc đúng cách.", category: "Gia vị Việt", content: "<h1>Mắm Ruốc – Gia Vị Umami Bí Ẩn</h1><p>Mắm ruốc (shrimp paste) là nguyên liệu quyết định hương vị của hàng chục món ăn miền Trung Việt Nam. Nhưng dùng không đúng cách, mắm ruốc có thể làm hỏng cả nồi nước dùng.</p>", publishedAt: new Date("2026-01-26") },
  { title: "Hạt Dưa Rang – Phong Tục Tết Không Thể Thiếu Của Gia Đình Việt", slug: "hat-dua-rang-phong-tuc-tet-khong-the-thieu", summary: "Hạt dưa rang là phong tục Tết truyền thống của người Việt. Ý nghĩa văn hóa đằng sau hạt dưa đỏ và bí quyết rang hạt dưa giòn thơm không bị cháy.", category: "Đặc sản vùng miền", content: "<h1>Hạt Dưa Rang – Phong Tục Tết Không Thể Thiếu</h1><p>Nhắc đến Tết Nguyên Đán, không thể quên hạt dưa đỏ – phong tục ăn uống gắn liền với không khí Tết Việt từ hàng trăm năm. Màu đỏ của hạt dưa tượng trưng cho may mắn, tài lộc đầu năm mới.</p>", publishedAt: new Date("2026-01-30") },
  { title: "Sapoche Sấy Dẻo – Trái Cây Nhiệt Đới Ít Người Biết Giàu Giá Trị Dinh Dưỡng", slug: "sapoche-say-deo-trai-cay-nhiet-doi-it-biet", summary: "Sapoche (hồng xiêm) là loại trái cây nhiệt đới ngọt đặc biệt, giàu vitamin A, C và chất xơ, nhưng ít được biết đến ngoài Đông Nam Á.", category: "Trái cây sấy", content: "<h1>Sapoche Sấy Dẻo – Trái Cây Ít Được Biết Đến</h1><p>Sapoche (Manilkara zapota) hay còn gọi là hồng xiêm, chiku – loại trái cây nhiệt đới ngọt đặc biệt với vị ngọt caramel tự nhiên và kết cấu mềm mịn như lê chín.</p>", publishedAt: new Date("2026-02-04") },
  { title: "Phở Bắc – Bộ Gia Vị Chuẩn Và Bí Quyết Nồi Nước Dùng Trong Vắt", slug: "pho-bac-bo-gia-vi-chuan-nuoc-dung-trong-vat", summary: "Bí quyết của một nồi phở bắc ngon là nước dùng trong vắt với hương thơm quế, hồi, thảo quả. Hướng dẫn chi tiết chuẩn bị gia vị và hầm xương đúng cách.", category: "Công thức nấu ăn", content: "<h1>Phở Bắc – Bí Quyết Nước Dùng Trong Vắt</h1><p>Nồi phở bắc chuẩn phải có nước dùng trong như nước suối, vị ngọt sâu từ xương, thơm nhẹ của quế hồi. Đây không phải ngẫu nhiên – đằng sau nó là kỹ thuật hầm xương và lọc nước dùng công phu.</p>", publishedAt: new Date("2026-02-09") },
  { title: "Trà Sen – Nghệ Thuật Ướp Trà Của Người Hà Nội Thanh Lịch", slug: "tra-sen-nghe-thuat-uop-tra-nguoi-ha-noi", summary: "Ướp trà sen là nghệ thuật tinh tế của người Hà Nội, đòi hỏi hoa sen hái đúng thời điểm và kỹ thuật ướp được truyền từ thế hệ này sang thế hệ khác.", category: "Trà & Bánh mứt", content: "<h1>Trà Sen – Nghệ Thuật Ướp Trà Hà Nội</h1><p>Trà sen Hồ Tây không chỉ là đồ uống – đó là văn hóa, là nghệ thuật, là tâm hồn của người Hà Nội thanh lịch. Một lạng trà sen đúng chuẩn cần đến vài trăm bông hoa sen tươi và nhiều ngày ướp cẩn thận.</p>", publishedAt: new Date("2026-02-16") },
  { title: "Coconut Candy Từ Bến Tre Đến Thế Giới – Hành Trình Chinh Phục Thị Trường Quốc Tế", slug: "coconut-candy-ben-tre-den-the-gioi", summary: "Câu chuyện về kẹo dừa Bến Tre – từ sản phẩm thủ công nhỏ bé đến thương hiệu xuất khẩu sang hơn 30 quốc gia – là bài học về thương hiệu và chất lượng.", category: "Trà & Bánh mứt", content: "<h1>Kẹo Dừa Bến Tre – Hành Trình Ra Thế Giới</h1><p>Năm 1970, bà Năm Thương (Phạm Thị Thương) bắt đầu làm kẹo dừa tại nhà ở Bến Tre bằng đôi tay và một chảo đường. 50 năm sau, kẹo dừa Bến Tre có mặt ở hơn 30 quốc gia và là đặc sản Việt Nam được biết đến nhiều nhất thế giới.</p>", publishedAt: new Date("2026-02-23") },
  { title: "Bảo Quản Hải Sản Khô Đúng Cách Để Giữ Chất Lượng Lâu Nhất", slug: "bao-quan-hai-san-kho-dung-cach-lau-nhat", summary: "Hải sản khô là sản phẩm nhạy cảm với độ ẩm và nhiệt độ. Hướng dẫn chi tiết cách bảo quản tôm khô, mực khô, cá khô đúng cách để giữ chất lượng tốt nhất.", category: "Hải sản khô", content: "<h1>Bảo Quản Hải Sản Khô Đúng Cách</h1><p>Nhiều người mua hải sản khô xong không biết bảo quản đúng cách, dẫn đến bị mốc, mất hương vị hoặc bị sâu bọ. Đây là hướng dẫn đầy đủ nhất về bảo quản hải sản khô.</p>", publishedAt: new Date("2026-03-02") },
  { title: "Dừa Sấy Bến Tre – Snack Béo Thơm Không Dầu Mỡ Cho Người Ăn Kiêng", slug: "dua-say-ben-tre-snack-beo-thom-khong-dau-mo", summary: "Dừa sấy Bến Tre được làm từ cơm dừa tươi cắt mỏng sấy nhiệt độ thấp, giữ nguyên dầu dừa tự nhiên có lợi mà không cần thêm dầu chiên.", category: "Sức khỏe", content: "<h1>Dừa Sấy Bến Tre – Snack Béo Tốt</h1><p>Dừa nổi tiếng với hàm lượng chất béo cao – nhưng đây là loại chất béo MCT (medium-chain triglycerides) được cơ thể chuyển hóa nhanh thành năng lượng thay vì tích lũy thành mỡ thừa.</p>", publishedAt: new Date("2026-03-07") },
  { title: "Hoa Quả Sấy Mix – Cách Tự Tạo Hộp Trái Cây Sấy Đa Vị Tại Nhà", slug: "hoa-qua-say-mix-tu-tao-hop-tai-nha", summary: "Tự tạo hộp trái cây sấy mix riêng giúp bạn kiểm soát thành phần và tỷ lệ theo sở thích cá nhân. Hướng dẫn chọn và kết hợp các loại trái cây sấy.", category: "Trái cây sấy", content: "<h1>Hoa Quả Sấy Mix – Tự Tạo Tại Nhà</h1><p>Thay vì mua hộp mix sẵn với tỷ lệ cố định, tại sao không tự tạo hộp trái cây sấy theo khẩu vị riêng? Bạn sẽ tiết kiệm hơn và có sản phẩm phù hợp nhất với nhu cầu.</p>", publishedAt: new Date("2026-03-14") },
  { title: "Muối Biển Cần Giờ – Muối Biển Tự Nhiên Chất Lượng Cao Của TP.HCM", slug: "muoi-bien-can-gio-chat-luong-cao", summary: "Muối biển Cần Giờ thu hoạch từ đồng muối tự nhiên ở cửa sông Sài Gòn, giàu khoáng chất tự nhiên, là loại muối tốt nhất cho sức khỏe.", category: "Gạo & Nông sản", content: "<h1>Muối Biển Cần Giờ – Chất Lượng Tự Nhiên</h1><p>Không phải muối nào cũng như nhau. Muối biển tự nhiên Cần Giờ, được thu hoạch từ đồng muối ven biển huyện Cần Giờ, TP.HCM, chứa nhiều khoáng chất vi lượng có lợi hơn muối tinh chế công nghiệp.</p>", publishedAt: new Date("2026-03-19") },
  { title: "Tết Việt Tại Mỹ – Cách Chuẩn Bị Mâm Cỗ Truyền Thống Với Đặc Sản Từ LIKEFOOD", slug: "tet-viet-tai-my-chuan-bi-mam-co-dac-san", summary: "Ăn Tết Nguyên Đán tại Mỹ mà vẫn muốn đủ đầy mâm cỗ truyền thống? Hướng dẫn chuẩn bị từng món từ các đặc sản Việt Nam có thể đặt tại LIKEFOOD.", category: "Đặc sản vùng miền", content: "<h1>Tết Việt Tại Mỹ – Mâm Cỗ Truyền Thống</h1><p>Dù sống ở Mỹ, người Việt vẫn giữ gìn phong tục Tết Nguyên Đán như một cách kết nối với văn hóa và cội nguồn. Mâm cỗ Tết đủ đầy là điều không thể thiếu trong ngày đầu năm mới.</p>", publishedAt: new Date("2026-03-26") },
  { title: "Khoai Mì Khô – Nguyên Liệu Đa Năng Của Bếp Việt", slug: "khoai-mi-kho-nguyen-lieu-da-nang-bep-viet", summary: "Khoai mì (sắn) khô là nguyên liệu đa năng ít được biết đến trong bếp Việt hiện đại. Hướng dẫn cách sử dụng khoai mì khô để nấu nhiều món ngon.", category: "Gạo & Nông sản", content: "<h1>Khoai Mì Khô – Nguyên Liệu Đa Năng</h1><p>Khoai mì (sắn) từng là lương thực chính của người Việt trong thời kỳ khó khăn. Ngày nay, khoai mì khô trở thành nguyên liệu thú vị trong ẩm thực fusion, được dùng làm sợi khoai mì, bánh, hoặc nấu canh.</p>", publishedAt: new Date("2026-04-02") },
  { title: "5 Lý Do Người Việt Tại Mỹ Nên Ăn Nhiều Cá Khô Hơn", slug: "5-ly-do-nguoi-viet-tai-my-nen-an-nhieu-ca-kho", summary: "Cá khô không chỉ là đặc sản quê hương mà còn là nguồn dinh dưỡng tuyệt vời. 5 lý do khoa học tại sao người Việt tại Mỹ nên bổ sung cá khô vào chế độ ăn.", category: "Sức khỏe", content: "<h1>5 Lý Do Nên Ăn Nhiều Cá Khô Hơn</h1><p>Cá khô từ lâu bị coi là thức ăn của người nghèo hoặc thức ăn quê. Nhưng góc nhìn dinh dưỡng hiện đại lại cho thấy cá khô là loại thực phẩm cực kỳ giá trị về mặt dinh dưỡng.</p>", publishedAt: new Date("2026-04-09") },
  { title: "Gia Vị Phở – Mẹo Chọn Và Bảo Quản Để Phở Luôn Thơm Chuẩn Vị", slug: "gia-vi-pho-meo-chon-bao-quan-phở-thom", summary: "Chất lượng gia vị phở quyết định 50% độ ngon của nồi phở. Hướng dẫn chọn quế, hồi, thảo quả chất lượng và cách bảo quản giữ nguyên tinh dầu.", category: "Gia vị Việt", content: "<h1>Gia Vị Phở – Mẹo Chọn Và Bảo Quản</h1><p>Gia vị phở gồm quế, hồi, thảo quả, đinh hương và hạt ngò. Mỗi gia vị đóng vai trò khác nhau trong tổng thể hương vị của nước phở. Chọn đúng và bảo quản đúng là bước đầu để có nồi phở ngon.</p>", publishedAt: new Date("2026-04-14") },
  { title: "Bánh Mì Việt Nam – Tại Sao Được CNN Bình Chọn Là Bánh Mì Ngon Nhất Thế Giới?", slug: "banh-mi-viet-nam-cnn-ngon-nhat-the-gioi", summary: "CNN đã nhiều lần xếp bánh mì Việt Nam vào danh sách thức ăn đường phố ngon nhất thế giới. Tìm hiểu bí quyết của chiếc bánh mì 'made in Vietnam' độc đáo.", category: "Đặc sản vùng miền", content: "<h1>Bánh Mì Việt Nam – Ngon Nhất Thế Giới</h1><p>Bánh mì Việt Nam không chỉ là bánh mì – đó là sự giao thoa hoàn hảo giữa ẩm thực Pháp và Việt. Vỏ bánh giòn tan từ ảnh hưởng Pháp, nhân phong phú từ nguyên liệu Việt: chả lụa, pâté, dưa cải, rau thơm, ớt.</p>", publishedAt: new Date("2026-04-18") },
  { title: "Cách Nấu Canh Chua Miền Nam Chuẩn Vị Với Cá Khô Và Me Tươi", slug: "canh-chua-mien-nam-chuan-vi-ca-kho-me-tuoi", summary: "Canh chua miền Nam với cá khô và me chua là bữa cơm quen thuộc được yêu thích. Công thức nấu canh chua ngon không bị đục nước và cân bằng vị chua ngọt.", category: "Công thức nấu ăn", content: "<h1>Canh Chua Miền Nam – Công Thức Chuẩn Vị</h1><p>Canh chua miền Nam khác với canh chua miền Bắc ở chỗ dùng me hoặc dứa tạo vị chua, thêm cà chua, giá đỗ và rau om thơm. Màu nước canh đỏ đẹp, vị chua ngọt cân bằng là đặc điểm nhận biết.</p>", publishedAt: new Date("2026-04-24") },
  { title: "Mắm Cá Tép – Đặc Sản Khiêm Tốn Nhưng Đậm Đà Của Đồng Bằng Sông Cửu Long", slug: "mam-ca-tep-dac-san-khiem-ton-dam-da", summary: "Mắm cá tép (cá linh non, tép khô muối ủ) là đặc sản ít nơi biết nhưng vô cùng đậm đà và phong phú hương vị của vùng đồng bằng sông Cửu Long.", category: "Gia vị Việt", content: "<h1>Mắm Cá Tép – Đặc Sản Khiêm Tốn Nhưng Đậm Đà</h1><p>Trong văn hóa ẩm thực miền Tây, không có gì khiêm tốn hơn một hũ mắm tép nhỏ trên bàn ăn. Nhưng đừng đánh giá thấp – đây là gia vị umami tự nhiên mạnh mẽ nhất mà thiên nhiên ban tặng cho vùng đồng bằng.</p>", publishedAt: new Date("2026-04-29") },
  { title: "Lợi Ích Của Omega-3 Trong Hải Sản Khô Và Tại Sao Người Việt Ít Thiếu Omega-3", slug: "loi-ich-omega-3-hai-san-kho-nguoi-viet", summary: "Người Việt Nam truyền thống ít thiếu omega-3 nhờ chế độ ăn giàu hải sản, đặc biệt là hải sản khô. Tìm hiểu hàm lượng omega-3 trong từng loại hải sản khô.", category: "Sức khỏe", content: "<h1>Omega-3 Trong Hải Sản Khô</h1><p>Omega-3 – đặc biệt là EPA và DHA – là chất béo thiết yếu mà cơ thể không tự sản xuất được. Người Việt truyền thống ít thiếu omega-3 vì chế độ ăn có nhiều cá, tôm, mực – cả tươi lẫn khô.</p>", publishedAt: new Date("2026-05-04") },
  { title: "Chọn Quà Tết Cho Người Việt Tại Mỹ – Gợi Ý Từ LIKEFOOD", slug: "chon-qua-tet-nguoi-viet-tai-my-goi-y-likefood", summary: "Tặng quà Tết cho người thân hoặc bạn bè Việt tại Mỹ? LIKEFOOD tổng hợp những gợi ý quà Tết ý nghĩa nhất – từ đặc sản quê hương đến hộp quà cao cấp.", category: "Đặc sản vùng miền", content: "<h1>Chọn Quà Tết Cho Người Việt Tại Mỹ</h1><p>Quà Tết ý nghĩa nhất là quà chứa đựng hương vị quê hương. Với người Việt xa xứ tại Mỹ, một hộp đặc sản Việt Nam – mắm, trà, hải sản khô, mứt – là món quà giá trị không thể thay thế.</p>", publishedAt: new Date("2026-05-07") },
  { title: "Bảo Quản Trái Cây Sấy Để Giữ Nguyên Hương Vị Và Dinh Dưỡng", slug: "bao-quan-trai-cay-say-giu-huong-vi-dinh-duong", summary: "Trái cây sấy cần được bảo quản đúng cách để tránh bị hút ẩm và mất hương vị. Hướng dẫn chi tiết cách bảo quản từng loại trái cây sấy khác nhau.", category: "Sức khỏe", content: "<h1>Bảo Quản Trái Cây Sấy Đúng Cách</h1><p>Sai lầm lớn nhất khi bảo quản trái cây sấy là để ở nơi ẩm ướt hoặc tiếp xúc với không khí quá lâu. Độ ẩm và oxy là hai kẻ thù chính của trái cây sấy.</p>", publishedAt: new Date("2026-05-11") },
  { title: "Văn Hóa Uống Trà Của Người Việt – Từ Trà Đạo Đến Trà Đá Vỉa Hè", slug: "van-hoa-uong-tra-nguoi-viet-tra-dao-tra-da", summary: "Trà không chỉ là thức uống mà còn là văn hóa ứng xử của người Việt. Từ trà đạo tinh tế của Hà Nội đến ly trà đá vỉa hè Sài Gòn – mỗi cách uống phản ánh một khía cạnh của văn hóa Việt.", category: "Trà & Bánh mứt", content: "<h1>Văn Hóa Uống Trà Của Người Việt</h1><p>Uống trà là một phần không thể tách rời của đời sống người Việt. Không phải ngẫu nhiên mà người Việt dùng trà để tiếp khách, mừng thọ, cúng ông bà, thư giãn sau bữa cơm.</p>", publishedAt: new Date("2026-05-14") },
  { title: "Ăn Gì Tốt Cho Gan? – Danh Sách Thực Phẩm Đặc Sản Việt Nam Bảo Vệ Gan", slug: "an-gi-tot-cho-gan-thuc-pham-dac-san-viet-bao-ve-gan", summary: "Nhiều đặc sản Việt Nam được chứng minh có lợi cho gan. Từ trà atiso đến mật ong rừng, khám phá danh sách thực phẩm đặc sản bảo vệ và tăng cường chức năng gan.", category: "Sức khỏe", content: "<h1>Ăn Gì Tốt Cho Gan? Đặc Sản Việt Bảo Vệ Gan</h1><p>Gan là cơ quan lọc độc quan trọng nhất của cơ thể. Trong bối cảnh ô nhiễm và lối sống hiện đại, việc bảo vệ gan bằng thực phẩm tự nhiên ngày càng quan trọng. May mắn là nhiều đặc sản Việt Nam có tác dụng hỗ trợ gan tuyệt vời.</p>", publishedAt: new Date("2026-05-17") },
  { title: "Hành Trình Đặc Sản Việt Đến Mỹ – Câu Chuyện Của LIKEFOOD", slug: "hanh-trinh-dac-san-viet-den-my-cau-chuyen-likefood", summary: "Đằng sau mỗi gói tôm khô, mỗi hũ mắm gửi sang Mỹ là hành trình dài của người Việt xa xứ muốn giữ gìn hương vị quê hương. Câu chuyện của LIKEFOOD và sứ mệnh kết nối người Việt toàn cầu.", category: "Đặc sản vùng miền", content: "<h1>Hành Trình Đặc Sản Việt Đến Mỹ</h1><p>LIKEFOOD được thành lập từ một nỗi nhớ nhà đơn giản – khi người sáng lập sang Mỹ và không tìm được những hương vị đặc sản quê hương đúng chuẩn. Từ đó, LIKEFOOD ra đời với sứ mệnh: kết nối người Việt xa xứ với hương vị cội nguồn.</p>", publishedAt: new Date("2026-05-20") },
  { title: "10 Đặc Sản Việt Nam Được Người Mỹ Yêu Thích Nhất", slug: "10-dac-san-viet-nam-nguoi-my-yeu-thich-nhat", summary: "Ẩm thực Việt Nam ngày càng được người Mỹ biết đến và yêu thích. Danh sách 10 đặc sản Việt Nam đang chinh phục khẩu vị của người Mỹ bản địa.", category: "Đặc sản vùng miền", content: "<h1>10 Đặc Sản Việt Nam Người Mỹ Yêu Thích</h1><p>Ẩm thực Việt Nam đang trở thành một trong những nền ẩm thực được yêu thích nhất tại Mỹ. Theo các khảo sát gần đây, nhiều người Mỹ đang tìm kiếm và khám phá các đặc sản Việt Nam ngoài phở và bánh mì.</p>", publishedAt: new Date("2026-05-24") },
  { title: "Ẩm Thực Việt Nam Và Câu Chuyện Nhớ Nhà Của Người Việt Xa Xứ", slug: "am-thuc-viet-nam-nho-nha-nguoi-viet-xa-xu", summary: "Với người Việt xa xứ tại Mỹ, ẩm thực không chỉ là thức ăn – đó là sợi dây kết nối với quê hương, với ký ức và với cội nguồn văn hóa. Những câu chuyện xúc động.", category: "Đặc sản vùng miền", content: "<h1>Ẩm Thực Việt Và Nỗi Nhớ Nhà</h1><p>Có những thứ không thể thay thế – mùi nước mắm trong bếp mẹ, tiếng xiên mực khô trên bếp than, vị chua ngọt của canh chua cá lóc... Những hương vị này không chỉ nuôi dưỡng cơ thể mà còn nuôi dưỡng tâm hồn người Việt xa xứ.</p>", publishedAt: new Date("2026-05-27") },
];

async function main() {
  console.log("🌱 Seeding 100 SEO blog posts...\n");

  let created = 0;
  let skipped = 0;
  let idx = 0;

  const allPostsToCreate = [...posts, ...morePosts];

  for (const p of allPostsToCreate) {
    const existing = await prisma.post.findUnique({ where: { slug: p.slug } });
    if (existing) {
      skipped++;
      idx++;
      continue;
    }

    await prisma.post.create({
      data: {
        title: p.title,
        titleEn: (p as any).titleEn ?? p.title,
        slug: p.slug,
        summary: p.summary,
        summaryEn: p.summary,
        content: p.content,
        contentEn: p.content,
        image: img(idx),
        authorName: "LIKEFOOD",
        category: p.category,
        categoryEn: (p as any).categoryEn ?? "Food",
        isPublished: true,
        publishedAt: p.publishedAt ?? new Date(),
      },
    });

    created++;
    idx++;

    if (created % 10 === 0) {
      console.log(`  ✅ Created ${created} posts...`);
    }
  }

  const total = await prisma.post.count();
  console.log(`\n✅ Created: ${created} posts`);
  console.log(`⏭️  Skipped: ${skipped} (already exist)`);
  console.log(`📰 Total posts in DB: ${total}`);
  console.log("\n🎉 100 SEO blog posts seeded successfully!");
}

main()
  .then(async () => { await prisma.$disconnect(); })
  .catch(async (e) => {
    console.error("❌ Seed failed:", e);
    await prisma.$disconnect();
    process.exit(1);
  });
