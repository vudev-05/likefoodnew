-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2026 lúc 05:02 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `weblikefood`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh_bai_viet`
--

CREATE TABLE `anh_bai_viet` (
  `ma_anh` int(11) NOT NULL,
  `ma_bai_viet` int(11) NOT NULL,
  `duong_dan_anh` varchar(191) NOT NULL,
  `van_ban_thay_the` varchar(191) DEFAULT NULL,
  `thu_tu_hien_thi` int(11) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh_san_pham`
--

CREATE TABLE `anh_san_pham` (
  `ma_anh` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `duong_dan_anh` varchar(191) NOT NULL,
  `van_ban_thay_the` varchar(191) DEFAULT NULL,
  `thu_tu_hien_thi` int(11) NOT NULL DEFAULT 0,
  `la_anh_chinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_viet`
--

CREATE TABLE `bai_viet` (
  `ma_bai_viet` int(11) NOT NULL,
  `tieu_de` varchar(191) NOT NULL,
  `tieu_de_en` varchar(191) DEFAULT NULL,
  `duong_dan_tinh` varchar(191) NOT NULL,
  `tom_tat` text DEFAULT NULL,
  `tom_tat_en` text DEFAULT NULL,
  `noi_dung` longtext NOT NULL,
  `noi_dung_en` longtext DEFAULT NULL,
  `anh_dai_dien` varchar(191) DEFAULT NULL,
  `ten_tac_gia` varchar(191) DEFAULT 'LIKEFOOD',
  `danh_muc` varchar(191) DEFAULT 'Tin tức',
  `danh_muc_en` varchar(191) DEFAULT 'News',
  `da_xuat_ban` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_xuat_ban` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_viet`
--

INSERT INTO `bai_viet` (`ma_bai_viet`, `tieu_de`, `tieu_de_en`, `duong_dan_tinh`, `tom_tat`, `tom_tat_en`, `noi_dung`, `noi_dung_en`, `anh_dai_dien`, `ten_tac_gia`, `danh_muc`, `danh_muc_en`, `da_xuat_ban`, `ngay_xuat_ban`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Top 10 Đặc Sản Miền Tây Ngon Nhất Mà Người Việt Xa Xứ Không Thể Quên', 'Top 10 Best Mekong Delta Specialties Vietnamese Expats Can Never Forget', 'top-10-dac-san-mien-tay-nguoi-viet-xa-xu', 'Miền Tây sông nước Việt Nam sở hữu kho tàng đặc sản phong phú từ hải sản khô đến trái cây sấy. Khám phá ngay 10 đặc sản không thể bỏ qua dành cho người Việt xa xứ tại Mỹ.', 'Miền Tây sông nước Việt Nam sở hữu kho tàng đặc sản phong phú từ hải sản khô đến trái cây sấy. Khám phá ngay 10 đặc sản không thể bỏ qua dành cho người Việt xa xứ tại Mỹ.', '<h1>Top 10 Đặc Sản Miền Tây Ngon Nhất Mà Người Việt Xa Xứ Không Thể Quên</h1>\n<p>Miền Tây Nam Bộ – vùng đồng bằng sông Cửu Long trù phú – không chỉ nổi tiếng với cảnh đẹp sông nước mà còn sở hữu kho tàng ẩm thực đặc sản vô cùng phong phú. Đối với người Việt xa xứ tại Mỹ, những hương vị này chính là sợi dây kết nối với quê hương.</p>\n\n<h2>1. Tôm Khô Cà Mau – Vua Của Các Loại Hải Sản Khô</h2>\n<p>Tôm khô Cà Mau được xem là \"vua\" trong số các loại hải sản khô của Việt Nam. Được chế biến từ tôm biển tươi sống và phơi khô tự nhiên dưới ánh nắng mặt trời, tôm khô Cà Mau nổi tiếng bởi <strong>thịt chắc, vị ngọt đậm đà và hương thơm đặc trưng</strong>. Tôm khô loại 1 Cà Mau có kích thước đều đẹp, màu đỏ cam tự nhiên, không tẩm màu hóa học.</p>\n<p>Người Việt tại Mỹ thường dùng tôm khô để <em>nấu canh chua, xào rau muống, trộn gỏi hoặc làm bánh canh</em>. Giá trị dinh dưỡng cao với lượng protein dồi dào khiến tôm khô trở thành nguyên liệu không thể thiếu trong bếp Việt.</p>\n\n<h2>2. Mực Khô Phú Quốc – Đặc Sản Đảo Ngọc</h2>\n<p>Mực khô câu Phú Quốc là một trong những đặc sản biển nổi tiếng nhất Việt Nam. Được câu trực tiếp từ vùng biển trong xanh quanh đảo Phú Quốc, mực có thịt dày, ngọt tự nhiên. Sau khi phơi khô, mực giữ nguyên hương vị biển khơi đặc trưng.</p>\n\n<h2>3. Nước Mắm Phú Quốc 40 Độ Đạm</h2>\n<p>Không có loại nước mắm nào sánh được với nước mắm Phú Quốc nguyên chất 40 độ đạm. Được ủ từ cá cơm tươi thu hoạch tại chỗ theo phương pháp truyền thống, nước mắm Phú Quốc có màu cánh gián đẹp, vị ngọt hậu và hương thơm đặc trưng không nơi nào có được.</p>\n\n<h2>4. Khô Cá Lóc Đồng Tháp</h2>\n<p>Cá lóc – loài cá nước ngọt đặc trưng của vùng đồng bằng sông Cửu Long – được phơi khô theo phương pháp truyền thống tại Đồng Tháp. Thịt cá ngọt, dai, thơm, bảo quản được lâu mà không cần chất bảo quản hóa học.</p>\n\n<h2>5. Muối Tôm Tây Ninh – Vị Cay Nồng Không Thể Quên</h2>\n<p>Muối tôm Tây Ninh là sự kết hợp hoàn hảo giữa muối biển, tôm khô xay mịn và ớt hiểm. Vị cay nồng đặc trưng của ớt Tây Ninh kết hợp với vị ngọt từ tôm tạo nên hương vị độc đáo chỉ có ở đây.</p>\n\n<h2>6. Trái Cây Sấy Miền Tây Phong Phú</h2>\n<p>Xoài sấy dẻo Cam Ranh, chuối sấy giòn Tiền Giang, mít sấy giòn Đồng Nai – mỗi loại trái cây sấy mang một hương vị đặc trưng riêng của từng vùng đất. Không có đường nhân tạo, không phụ gia, chỉ là vị ngọt tự nhiên của trái cây chín mọng.</p>\n\n<h2>7. Mắm Cá Linh Châu Đốc</h2>\n<p>Mắm cá linh là đặc sản không thể bỏ qua của vùng Châu Đốc An Giang. Được làm từ cá linh mùa nước nổi ủ hơn 6 tháng, mắm cá linh có hương vị đậm đà, phức hợp không thể tìm thấy ở bất kỳ nơi nào khác trên thế giới.</p>\n\n<h2>8. Mứt Dừa Non Bến Tre</h2>\n<p>Bến Tre – xứ dừa của Việt Nam – nổi tiếng với những món mứt dừa truyền thống. Mứt dừa non sên với đường phèn nguyên chất có vị ngọt thanh, thơm béo, là món ăn không thể thiếu trong dịp Tết Nguyên Đán.</p>\n\n<h2>9. Trà Sen Tây Hồ – Hương Vị Thượng Hạng</h2>\n<p>Trà sen Tây Hồ Hà Nội là sản phẩm được ướp từ hoa sen tươi nở đúng buổi sớm mai kết hợp với trà móc câu Thái Nguyên thượng hạng. Hương thơm thanh tao, vị ngọt dịu hậu, mỗi ấm trà sen là một trải nghiệm văn hóa tinh tế.</p>\n\n<h2>10. Bánh Tráng Mè Tây Ninh</h2>\n<p>Bánh tráng mè Tây Ninh giòn tan với lớp mè rang thơm phức là đặc sản gắn liền với tuổi thơ của nhiều người Việt. Ăn liền, cuốn thịt hay chấm tương đều ngon theo cách riêng của nó.</p>\n\n<h2>Mua Đặc Sản Miền Tây Tại Mỹ Ở Đâu?</h2>\n<p>LIKEFOOD tự hào là địa chỉ mua sắm đặc sản Việt Nam uy tín tại Mỹ. Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo chất lượng và nguồn gốc rõ ràng. Giao hàng toàn quốc Mỹ, miễn phí vận chuyển đơn từ $200.</p>', '<h1>Top 10 Đặc Sản Miền Tây Ngon Nhất Mà Người Việt Xa Xứ Không Thể Quên</h1>\n<p>Miền Tây Nam Bộ – vùng đồng bằng sông Cửu Long trù phú – không chỉ nổi tiếng với cảnh đẹp sông nước mà còn sở hữu kho tàng ẩm thực đặc sản vô cùng phong phú. Đối với người Việt xa xứ tại Mỹ, những hương vị này chính là sợi dây kết nối với quê hương.</p>\n\n<h2>1. Tôm Khô Cà Mau – Vua Của Các Loại Hải Sản Khô</h2>\n<p>Tôm khô Cà Mau được xem là \"vua\" trong số các loại hải sản khô của Việt Nam. Được chế biến từ tôm biển tươi sống và phơi khô tự nhiên dưới ánh nắng mặt trời, tôm khô Cà Mau nổi tiếng bởi <strong>thịt chắc, vị ngọt đậm đà và hương thơm đặc trưng</strong>. Tôm khô loại 1 Cà Mau có kích thước đều đẹp, màu đỏ cam tự nhiên, không tẩm màu hóa học.</p>\n<p>Người Việt tại Mỹ thường dùng tôm khô để <em>nấu canh chua, xào rau muống, trộn gỏi hoặc làm bánh canh</em>. Giá trị dinh dưỡng cao với lượng protein dồi dào khiến tôm khô trở thành nguyên liệu không thể thiếu trong bếp Việt.</p>\n\n<h2>2. Mực Khô Phú Quốc – Đặc Sản Đảo Ngọc</h2>\n<p>Mực khô câu Phú Quốc là một trong những đặc sản biển nổi tiếng nhất Việt Nam. Được câu trực tiếp từ vùng biển trong xanh quanh đảo Phú Quốc, mực có thịt dày, ngọt tự nhiên. Sau khi phơi khô, mực giữ nguyên hương vị biển khơi đặc trưng.</p>\n\n<h2>3. Nước Mắm Phú Quốc 40 Độ Đạm</h2>\n<p>Không có loại nước mắm nào sánh được với nước mắm Phú Quốc nguyên chất 40 độ đạm. Được ủ từ cá cơm tươi thu hoạch tại chỗ theo phương pháp truyền thống, nước mắm Phú Quốc có màu cánh gián đẹp, vị ngọt hậu và hương thơm đặc trưng không nơi nào có được.</p>\n\n<h2>4. Khô Cá Lóc Đồng Tháp</h2>\n<p>Cá lóc – loài cá nước ngọt đặc trưng của vùng đồng bằng sông Cửu Long – được phơi khô theo phương pháp truyền thống tại Đồng Tháp. Thịt cá ngọt, dai, thơm, bảo quản được lâu mà không cần chất bảo quản hóa học.</p>\n\n<h2>5. Muối Tôm Tây Ninh – Vị Cay Nồng Không Thể Quên</h2>\n<p>Muối tôm Tây Ninh là sự kết hợp hoàn hảo giữa muối biển, tôm khô xay mịn và ớt hiểm. Vị cay nồng đặc trưng của ớt Tây Ninh kết hợp với vị ngọt từ tôm tạo nên hương vị độc đáo chỉ có ở đây.</p>\n\n<h2>6. Trái Cây Sấy Miền Tây Phong Phú</h2>\n<p>Xoài sấy dẻo Cam Ranh, chuối sấy giòn Tiền Giang, mít sấy giòn Đồng Nai – mỗi loại trái cây sấy mang một hương vị đặc trưng riêng của từng vùng đất. Không có đường nhân tạo, không phụ gia, chỉ là vị ngọt tự nhiên của trái cây chín mọng.</p>\n\n<h2>7. Mắm Cá Linh Châu Đốc</h2>\n<p>Mắm cá linh là đặc sản không thể bỏ qua của vùng Châu Đốc An Giang. Được làm từ cá linh mùa nước nổi ủ hơn 6 tháng, mắm cá linh có hương vị đậm đà, phức hợp không thể tìm thấy ở bất kỳ nơi nào khác trên thế giới.</p>\n\n<h2>8. Mứt Dừa Non Bến Tre</h2>\n<p>Bến Tre – xứ dừa của Việt Nam – nổi tiếng với những món mứt dừa truyền thống. Mứt dừa non sên với đường phèn nguyên chất có vị ngọt thanh, thơm béo, là món ăn không thể thiếu trong dịp Tết Nguyên Đán.</p>\n\n<h2>9. Trà Sen Tây Hồ – Hương Vị Thượng Hạng</h2>\n<p>Trà sen Tây Hồ Hà Nội là sản phẩm được ướp từ hoa sen tươi nở đúng buổi sớm mai kết hợp với trà móc câu Thái Nguyên thượng hạng. Hương thơm thanh tao, vị ngọt dịu hậu, mỗi ấm trà sen là một trải nghiệm văn hóa tinh tế.</p>\n\n<h2>10. Bánh Tráng Mè Tây Ninh</h2>\n<p>Bánh tráng mè Tây Ninh giòn tan với lớp mè rang thơm phức là đặc sản gắn liền với tuổi thơ của nhiều người Việt. Ăn liền, cuốn thịt hay chấm tương đều ngon theo cách riêng của nó.</p>\n\n<h2>Mua Đặc Sản Miền Tây Tại Mỹ Ở Đâu?</h2>\n<p>LIKEFOOD tự hào là địa chỉ mua sắm đặc sản Việt Nam uy tín tại Mỹ. Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo chất lượng và nguồn gốc rõ ràng. Giao hàng toàn quốc Mỹ, miễn phí vận chuyển đơn từ $200.</p>', '/donggoi/z7505564684692_d6276e4ba8c26d027fd3b44ae5a0fa92.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Regional Specialties', 1, '2026-01-15 00:00:00.000', '2026-05-30 09:57:00.342', '2026-05-30 09:57:00.342'),
(2, 'Khô Cá Sặc Bổi Cà Mau – Đặc Sản Biển Xanh Chuẩn Vị Miền Tây', 'Dried Snakeskin Gourami Fish from Ca Mau – Authentic Mekong Delta Specialty', 'kho-ca-sac-boi-ca-mau-dac-san-chuan-vi-mien-tay', 'Khô cá sặc bổi Cà Mau nổi tiếng khắp miền Tây với hương vị đặc trưng khó quên. Tìm hiểu cách chọn mua, chế biến và bảo quản đúng cách để giữ trọn hương vị đặc sản này.', 'Khô cá sặc bổi Cà Mau nổi tiếng khắp miền Tây với hương vị đặc trưng khó quên. Tìm hiểu cách chọn mua, chế biến và bảo quản đúng cách để giữ trọn hương vị đặc sản này.', '<h1>Khô Cá Sặc Bổi Cà Mau – Đặc Sản Biển Xanh Chuẩn Vị Miền Tây</h1>\n<p>Trong số vô vàn đặc sản của vùng Cà Mau, khô cá sặc bổi nổi bật như một biểu tượng ẩm thực không thể thiếu. Được chế biến từ cá sặc tươi vớt từ những cánh đồng nước mênh mông, qua bàn tay khéo léo của người dân địa phương, khô cá sặc bổi Cà Mau mang trong mình hương vị đặc trưng khó lẫn vào đâu.</p>\n\n<h2>Cá Sặc Bổi Là Gì? Tại Sao Cà Mau Nổi Tiếng?</h2>\n<p>Cá sặc bổi (tên khoa học: <em>Trichopodus trichopterus</em>) là loài cá nước ngọt sinh sống phổ biến ở vùng đồng bằng sông Cửu Long. Cà Mau – tỉnh cực Nam của Việt Nam – với hệ sinh thái sông rạch phong phú là môi trường lý tưởng để cá sặc sinh trưởng. Cá có thịt ngọt, béo, ít xương dăm nên được ưa chuộng làm nguyên liệu chế biến khô.</p>\n\n<h2>Quy Trình Làm Khô Cá Sặc Bổi Truyền Thống</h2>\n<p>Người dân Cà Mau làm khô cá sặc theo quy trình truyền thống được lưu truyền qua nhiều thế hệ:</p>\n<ul>\n<li><strong>Chọn cá tươi:</strong> Chỉ dùng cá sặc bổi tươi sống, kích thước đều nhau (thường từ 15-20cm)</li>\n<li><strong>Sơ chế:</strong> Làm sạch vảy, bỏ ruột, rửa nhiều lần với nước muối loãng</li>\n<li><strong>Ướp muối:</strong> Ướp muối hạt trong 2-4 giờ tùy kích thước cá</li>\n<li><strong>Phơi nắng:</strong> Phơi 2-3 nắng liên tục, trở đều tay để cá khô đều</li>\n<li><strong>Bảo quản:</strong> Đóng gói kín, bảo quản nơi khô ráo hoặc trong ngăn đá</li>\n</ul>\n\n<h2>Cách Nhận Biết Khô Cá Sặc Bổi Chất Lượng</h2>\n<p>Khi mua khô cá sặc bổi, cần chú ý những điểm sau để chọn được sản phẩm chất lượng:</p>\n<ul>\n<li>Màu vàng nâu tự nhiên, không có màu đỏ sặc sỡ (dấu hiệu tẩm màu)</li>\n<li>Mùi thơm đặc trưng của cá khô, không có mùi hôi hay mùi lạ</li>\n<li>Thịt cá khô đều, không còn nước bên trong</li>\n<li>Cá cứng chắc, không bị mốc hay ướt</li>\n</ul>\n\n<h2>Những Cách Chế Biến Khô Cá Sặc Bổi Ngon Nhất</h2>\n<h3>Chiên Giòn – Cách Đơn Giản Nhất</h3>\n<p>Chiên giòn là cách chế biến phổ biến nhất. Cho dầu ăn vào chảo đủ ngập cá, chiên lửa vừa đến khi cá vàng giòn đều. Ăn kèm cơm trắng và rau sống, chấm nước mắm pha là bữa cơm giản dị mà ngon miệng vô cùng.</p>\n<h3>Kho Tiêu Đậm Đà</h3>\n<p>Khô cá sặc kho tiêu với tỏi, ớt và nước dừa tươi cho ra món kho đậm đà, thơm ngon. Màu nước kho từ nâu nhạt đến cánh gián đẹp mắt, vị mặn ngọt cân bằng.</p>\n<h3>Nướng Than – Hương Vị Nguyên Bản</h3>\n<p>Nướng trực tiếp trên than hoa là cách thưởng thức khô cá sặc nguyên bản nhất. Khói than thấm vào từng thớ cá tạo nên hương vị khó quên, chấm muối ớt hoặc tương ớt.</p>\n\n<h2>Lợi Ích Dinh Dưỡng Của Khô Cá Sặc Bổi</h2>\n<p>Không chỉ ngon miệng, khô cá sặc còn là nguồn dinh dưỡng dồi dào: giàu <strong>protein, canxi, phospho và các khoáng chất thiết yếu</strong>. Đặc biệt, quá trình phơi khô tự nhiên giúp bảo toàn hàm lượng omega-3 có lợi cho tim mạch.</p>', '<h1>Khô Cá Sặc Bổi Cà Mau – Đặc Sản Biển Xanh Chuẩn Vị Miền Tây</h1>\n<p>Trong số vô vàn đặc sản của vùng Cà Mau, khô cá sặc bổi nổi bật như một biểu tượng ẩm thực không thể thiếu. Được chế biến từ cá sặc tươi vớt từ những cánh đồng nước mênh mông, qua bàn tay khéo léo của người dân địa phương, khô cá sặc bổi Cà Mau mang trong mình hương vị đặc trưng khó lẫn vào đâu.</p>\n\n<h2>Cá Sặc Bổi Là Gì? Tại Sao Cà Mau Nổi Tiếng?</h2>\n<p>Cá sặc bổi (tên khoa học: <em>Trichopodus trichopterus</em>) là loài cá nước ngọt sinh sống phổ biến ở vùng đồng bằng sông Cửu Long. Cà Mau – tỉnh cực Nam của Việt Nam – với hệ sinh thái sông rạch phong phú là môi trường lý tưởng để cá sặc sinh trưởng. Cá có thịt ngọt, béo, ít xương dăm nên được ưa chuộng làm nguyên liệu chế biến khô.</p>\n\n<h2>Quy Trình Làm Khô Cá Sặc Bổi Truyền Thống</h2>\n<p>Người dân Cà Mau làm khô cá sặc theo quy trình truyền thống được lưu truyền qua nhiều thế hệ:</p>\n<ul>\n<li><strong>Chọn cá tươi:</strong> Chỉ dùng cá sặc bổi tươi sống, kích thước đều nhau (thường từ 15-20cm)</li>\n<li><strong>Sơ chế:</strong> Làm sạch vảy, bỏ ruột, rửa nhiều lần với nước muối loãng</li>\n<li><strong>Ướp muối:</strong> Ướp muối hạt trong 2-4 giờ tùy kích thước cá</li>\n<li><strong>Phơi nắng:</strong> Phơi 2-3 nắng liên tục, trở đều tay để cá khô đều</li>\n<li><strong>Bảo quản:</strong> Đóng gói kín, bảo quản nơi khô ráo hoặc trong ngăn đá</li>\n</ul>\n\n<h2>Cách Nhận Biết Khô Cá Sặc Bổi Chất Lượng</h2>\n<p>Khi mua khô cá sặc bổi, cần chú ý những điểm sau để chọn được sản phẩm chất lượng:</p>\n<ul>\n<li>Màu vàng nâu tự nhiên, không có màu đỏ sặc sỡ (dấu hiệu tẩm màu)</li>\n<li>Mùi thơm đặc trưng của cá khô, không có mùi hôi hay mùi lạ</li>\n<li>Thịt cá khô đều, không còn nước bên trong</li>\n<li>Cá cứng chắc, không bị mốc hay ướt</li>\n</ul>\n\n<h2>Những Cách Chế Biến Khô Cá Sặc Bổi Ngon Nhất</h2>\n<h3>Chiên Giòn – Cách Đơn Giản Nhất</h3>\n<p>Chiên giòn là cách chế biến phổ biến nhất. Cho dầu ăn vào chảo đủ ngập cá, chiên lửa vừa đến khi cá vàng giòn đều. Ăn kèm cơm trắng và rau sống, chấm nước mắm pha là bữa cơm giản dị mà ngon miệng vô cùng.</p>\n<h3>Kho Tiêu Đậm Đà</h3>\n<p>Khô cá sặc kho tiêu với tỏi, ớt và nước dừa tươi cho ra món kho đậm đà, thơm ngon. Màu nước kho từ nâu nhạt đến cánh gián đẹp mắt, vị mặn ngọt cân bằng.</p>\n<h3>Nướng Than – Hương Vị Nguyên Bản</h3>\n<p>Nướng trực tiếp trên than hoa là cách thưởng thức khô cá sặc nguyên bản nhất. Khói than thấm vào từng thớ cá tạo nên hương vị khó quên, chấm muối ớt hoặc tương ớt.</p>\n\n<h2>Lợi Ích Dinh Dưỡng Của Khô Cá Sặc Bổi</h2>\n<p>Không chỉ ngon miệng, khô cá sặc còn là nguồn dinh dưỡng dồi dào: giàu <strong>protein, canxi, phospho và các khoáng chất thiết yếu</strong>. Đặc biệt, quá trình phơi khô tự nhiên giúp bảo toàn hàm lượng omega-3 có lợi cho tim mạch.</p>', '/donggoi/z7505564686729_66d7081fdb9eb829ef3b8e0726c69d15.jpg', 'LIKEFOOD', 'Hải sản khô', 'Dried Seafood', 1, '2026-01-20 00:00:00.000', '2026-05-30 09:57:00.349', '2026-05-30 09:57:00.349'),
(3, 'Nước Mắm Phú Quốc – Bí Quyết Chọn Mua Và Phân Biệt Hàng Thật Giả', 'Phu Quoc Fish Sauce – How to Choose Authentic Products and Avoid Fakes', 'nuoc-mam-phu-quoc-bi-quyet-chon-mua-phan-biet-hang-that-gia', 'Nước mắm Phú Quốc là đặc sản nổi tiếng nhất Việt Nam nhưng không ít người mua phải hàng giả. Hướng dẫn chi tiết cách chọn nước mắm thật, đúng chất lượng để không mất tiền oan.', 'Nước mắm Phú Quốc là đặc sản nổi tiếng nhất Việt Nam nhưng không ít người mua phải hàng giả. Hướng dẫn chi tiết cách chọn nước mắm thật, đúng chất lượng để không mất tiền oan.', '<h1>Nước Mắm Phú Quốc – Bí Quyết Chọn Mua Và Phân Biệt Hàng Thật Giả</h1>\n<p>Nước mắm Phú Quốc đã được cấp chỉ dẫn địa lý và bảo hộ tại Liên minh Châu Âu – minh chứng cho chất lượng và danh tiếng vượt thời gian của sản phẩm này. Tuy nhiên, trên thị trường hiện nay có không ít sản phẩm giả mạo danh nước mắm Phú Quốc. Bài viết này sẽ giúp bạn phân biệt và chọn mua đúng loại.</p>\n\n<h2>Nước Mắm Phú Quốc Thật Được Làm Như Thế Nào?</h2>\n<p>Nước mắm Phú Quốc chính hiệu được sản xuất hoàn toàn từ cá cơm tươi (cá cơm sọc tiêu và cá cơm đỏ) đánh bắt tại vùng biển xung quanh đảo Phú Quốc. Tỷ lệ truyền thống là <strong>3 tấn cá : 1 tấn muối</strong>, ủ trong thùng gỗ bằng lăng từ 12-15 tháng.</p>\n<p>Sau quá trình ủ, nước mắm được lọc nhiều lần để thu được nước mắm cốt trong vắt, màu cánh gián đậm, nồng độ đạm từ 25-40 độ. Đây chính là sự khác biệt căn bản so với nước mắm công nghiệp.</p>\n\n<h2>5 Cách Phân Biệt Nước Mắm Phú Quốc Thật – Giả</h2>\n<h3>1. Kiểm Tra Nhãn Hiệu và Chỉ Dẫn Địa Lý</h3>\n<p>Nước mắm Phú Quốc chính hiệu phải có logo chỉ dẫn địa lý được cấp phép, tên nhà sản xuất rõ ràng, có địa chỉ tại Kiên Giang và mã QR truy xuất nguồn gốc.</p>\n<h3>2. Quan Sát Màu Sắc</h3>\n<p>Nước mắm thật có màu nâu cánh gián đẹp, trong vắt, óng ánh khi soi dưới ánh sáng. Nước mắm giả thường có màu đen sẫm hoặc màu nâu nhạt không đồng đều.</p>\n<h3>3. Ngửi Mùi</h3>\n<p>Mùi của nước mắm Phú Quốc thật: thơm nồng đặc trưng của cá biển, có mùi ngọt hậu nhẹ. Hàng giả thường có mùi hăng gắt hoặc mùi hóa chất.</p>\n<h3>4. Thử Vị</h3>\n<p>Vị ngọt umami đậm đà, không quá mặn, có hậu ngọt kéo dài là đặc điểm nhận biết nước mắm Phú Quốc thật. Nước mắm giả thường mặn chát, vị đơn điệu.</p>\n<h3>5. Kiểm Tra Độ Đạm</h3>\n<p>Nước mắm Phú Quốc cốt đặc biệt có nồng độ đạm từ 35-40°N, loại thường từ 25-30°N. Luôn đọc kỹ thông tin trên nhãn.</p>\n\n<h2>Hướng Dẫn Sử Dụng Nước Mắm Phú Quốc Đúng Cách</h2>\n<p>Để tận dụng tối đa hương vị và giá trị dinh dưỡng của nước mắm Phú Quốc:</p>\n<ul>\n<li><strong>Nấu ăn:</strong> Chỉ cần dùng lượng ít hơn nước mắm thường vì độ đạm cao hơn nhiều</li>\n<li><strong>Pha nước chấm:</strong> Nước mắm – đường – chanh – tỏi – ớt theo tỷ lệ 1:1:1:0.5:0.5</li>\n<li><strong>Bảo quản:</strong> Đậy kín, để nơi thoáng mát, tránh ánh nắng trực tiếp</li>\n<li><strong>Hạn dùng:</strong> Sử dụng trong 12-18 tháng kể từ ngày sản xuất</li>\n</ul>', '<h1>Nước Mắm Phú Quốc – Bí Quyết Chọn Mua Và Phân Biệt Hàng Thật Giả</h1>\n<p>Nước mắm Phú Quốc đã được cấp chỉ dẫn địa lý và bảo hộ tại Liên minh Châu Âu – minh chứng cho chất lượng và danh tiếng vượt thời gian của sản phẩm này. Tuy nhiên, trên thị trường hiện nay có không ít sản phẩm giả mạo danh nước mắm Phú Quốc. Bài viết này sẽ giúp bạn phân biệt và chọn mua đúng loại.</p>\n\n<h2>Nước Mắm Phú Quốc Thật Được Làm Như Thế Nào?</h2>\n<p>Nước mắm Phú Quốc chính hiệu được sản xuất hoàn toàn từ cá cơm tươi (cá cơm sọc tiêu và cá cơm đỏ) đánh bắt tại vùng biển xung quanh đảo Phú Quốc. Tỷ lệ truyền thống là <strong>3 tấn cá : 1 tấn muối</strong>, ủ trong thùng gỗ bằng lăng từ 12-15 tháng.</p>\n<p>Sau quá trình ủ, nước mắm được lọc nhiều lần để thu được nước mắm cốt trong vắt, màu cánh gián đậm, nồng độ đạm từ 25-40 độ. Đây chính là sự khác biệt căn bản so với nước mắm công nghiệp.</p>\n\n<h2>5 Cách Phân Biệt Nước Mắm Phú Quốc Thật – Giả</h2>\n<h3>1. Kiểm Tra Nhãn Hiệu và Chỉ Dẫn Địa Lý</h3>\n<p>Nước mắm Phú Quốc chính hiệu phải có logo chỉ dẫn địa lý được cấp phép, tên nhà sản xuất rõ ràng, có địa chỉ tại Kiên Giang và mã QR truy xuất nguồn gốc.</p>\n<h3>2. Quan Sát Màu Sắc</h3>\n<p>Nước mắm thật có màu nâu cánh gián đẹp, trong vắt, óng ánh khi soi dưới ánh sáng. Nước mắm giả thường có màu đen sẫm hoặc màu nâu nhạt không đồng đều.</p>\n<h3>3. Ngửi Mùi</h3>\n<p>Mùi của nước mắm Phú Quốc thật: thơm nồng đặc trưng của cá biển, có mùi ngọt hậu nhẹ. Hàng giả thường có mùi hăng gắt hoặc mùi hóa chất.</p>\n<h3>4. Thử Vị</h3>\n<p>Vị ngọt umami đậm đà, không quá mặn, có hậu ngọt kéo dài là đặc điểm nhận biết nước mắm Phú Quốc thật. Nước mắm giả thường mặn chát, vị đơn điệu.</p>\n<h3>5. Kiểm Tra Độ Đạm</h3>\n<p>Nước mắm Phú Quốc cốt đặc biệt có nồng độ đạm từ 35-40°N, loại thường từ 25-30°N. Luôn đọc kỹ thông tin trên nhãn.</p>\n\n<h2>Hướng Dẫn Sử Dụng Nước Mắm Phú Quốc Đúng Cách</h2>\n<p>Để tận dụng tối đa hương vị và giá trị dinh dưỡng của nước mắm Phú Quốc:</p>\n<ul>\n<li><strong>Nấu ăn:</strong> Chỉ cần dùng lượng ít hơn nước mắm thường vì độ đạm cao hơn nhiều</li>\n<li><strong>Pha nước chấm:</strong> Nước mắm – đường – chanh – tỏi – ớt theo tỷ lệ 1:1:1:0.5:0.5</li>\n<li><strong>Bảo quản:</strong> Đậy kín, để nơi thoáng mát, tránh ánh nắng trực tiếp</li>\n<li><strong>Hạn dùng:</strong> Sử dụng trong 12-18 tháng kể từ ngày sản xuất</li>\n</ul>', '/donggoi/z7505564694601_9a8a20e42c5b562612a5c828b940441e.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Vietnamese Spices', 1, '2026-01-25 00:00:00.000', '2026-05-30 09:57:00.356', '2026-05-30 09:57:00.356'),
(4, 'Trái Cây Sấy Không Đường – Lựa Chọn Ăn Vặt Lành Mạnh Cho Người Việt Tại Mỹ', 'Sugar-Free Dried Fruits – Healthy Snack Options for Vietnamese in America', 'trai-cay-say-khong-duong-an-vat-lanh-manh', 'Trái cây sấy không đường ngày càng được ưa chuộng như snack lành mạnh. Tìm hiểu các loại trái cây sấy phổ biến, lợi ích sức khỏe và cách chọn mua sản phẩm chất lượng.', 'Trái cây sấy không đường ngày càng được ưa chuộng như snack lành mạnh. Tìm hiểu các loại trái cây sấy phổ biến, lợi ích sức khỏe và cách chọn mua sản phẩm chất lượng.', '<h1>Trái Cây Sấy Không Đường – Lựa Chọn Ăn Vặt Lành Mạnh Cho Người Việt Tại Mỹ</h1>\n<p>Trong nhịp sống bận rộn tại Mỹ, việc tìm kiếm một loại snack vừa ngon vừa lành mạnh luôn là thách thức. Trái cây sấy không đường – đặc biệt là các loại trái cây sấy đặc sản Việt Nam – đang trở thành lựa chọn hàng đầu của nhiều gia đình Việt xa xứ.</p>\n\n<h2>Tại Sao Trái Cây Sấy Tốt Hơn Snack Công Nghiệp?</h2>\n<p>So với các loại bánh kẹo, snack chiên công nghiệp, trái cây sấy có nhiều ưu điểm vượt trội:</p>\n<ul>\n<li><strong>Không chất bảo quản nhân tạo:</strong> Quá trình sấy tự nhiên giúp bảo quản mà không cần hóa chất</li>\n<li><strong>Giữ nguyên dinh dưỡng:</strong> Vitamin, khoáng chất và chất xơ được bảo toàn phần lớn</li>\n<li><strong>Kiểm soát khẩu phần:</strong> Dễ mang theo, tiện ăn vặt bất cứ lúc nào</li>\n<li><strong>Vị ngọt tự nhiên:</strong> Không cần thêm đường nhân tạo hay hương liệu</li>\n</ul>\n\n<h2>Top Trái Cây Sấy Đặc Sản Việt Nam Được Ưa Chuộng Nhất</h2>\n<h3>Xoài Sấy Dẻo Cam Ranh</h3>\n<p>Làm từ xoài cát Hòa Lộc nổi tiếng, xoài sấy dẻo Cam Ranh giữ được màu vàng tươi tự nhiên và hương thơm quyến rũ. Không đường, không phụ gia, chỉ là vị ngọt thanh của xoài chín mọng được cô đọng lại qua quá trình sấy cẩn thận.</p>\n<h3>Mít Sấy Giòn Đồng Nai</h3>\n<p>Mít nghệ Đồng Nai chín vàng được sấy chân không ở nhiệt độ thấp, giữ nguyên cấu trúc tế bào và hàm lượng dinh dưỡng. Miếng mít sấy giòn rụm, thơm, ngọt tự nhiên – hoàn toàn không dầu mỡ.</p>\n<h3>Vải Sấy Lục Ngạn Bắc Giang</h3>\n<p>Vải thiều Lục Ngạn – loại vải ngon nhất Việt Nam – sau khi sấy khô giữ được vị ngọt đậm và hương thơm quyến rũ đặc trưng. Giàu vitamin C và các chất chống oxy hóa.</p>\n\n<h2>Lợi Ích Sức Khỏe Của Trái Cây Sấy</h2>\n<p>Các nghiên cứu dinh dưỡng cho thấy trái cây sấy mang lại nhiều lợi ích:</p>\n<ul>\n<li>Cung cấp năng lượng nhanh chóng nhờ carbohydrate tự nhiên</li>\n<li>Giàu chất xơ hỗ trợ tiêu hóa</li>\n<li>Chứa nhiều polyphenol có tác dụng chống oxy hóa</li>\n<li>Bổ sung kali, magie và các vi khoáng quan trọng</li>\n</ul>\n\n<h2>Cách Bảo Quản Trái Cây Sấy Đúng Cách</h2>\n<p>Để trái cây sấy giữ được chất lượng tốt nhất, cần bảo quản trong hộp kín, tránh ẩm và ánh sáng trực tiếp. Có thể bảo quản ở nhiệt độ phòng trong 3-6 tháng, hoặc trong ngăn lạnh lên đến 12 tháng.</p>', '<h1>Trái Cây Sấy Không Đường – Lựa Chọn Ăn Vặt Lành Mạnh Cho Người Việt Tại Mỹ</h1>\n<p>Trong nhịp sống bận rộn tại Mỹ, việc tìm kiếm một loại snack vừa ngon vừa lành mạnh luôn là thách thức. Trái cây sấy không đường – đặc biệt là các loại trái cây sấy đặc sản Việt Nam – đang trở thành lựa chọn hàng đầu của nhiều gia đình Việt xa xứ.</p>\n\n<h2>Tại Sao Trái Cây Sấy Tốt Hơn Snack Công Nghiệp?</h2>\n<p>So với các loại bánh kẹo, snack chiên công nghiệp, trái cây sấy có nhiều ưu điểm vượt trội:</p>\n<ul>\n<li><strong>Không chất bảo quản nhân tạo:</strong> Quá trình sấy tự nhiên giúp bảo quản mà không cần hóa chất</li>\n<li><strong>Giữ nguyên dinh dưỡng:</strong> Vitamin, khoáng chất và chất xơ được bảo toàn phần lớn</li>\n<li><strong>Kiểm soát khẩu phần:</strong> Dễ mang theo, tiện ăn vặt bất cứ lúc nào</li>\n<li><strong>Vị ngọt tự nhiên:</strong> Không cần thêm đường nhân tạo hay hương liệu</li>\n</ul>\n\n<h2>Top Trái Cây Sấy Đặc Sản Việt Nam Được Ưa Chuộng Nhất</h2>\n<h3>Xoài Sấy Dẻo Cam Ranh</h3>\n<p>Làm từ xoài cát Hòa Lộc nổi tiếng, xoài sấy dẻo Cam Ranh giữ được màu vàng tươi tự nhiên và hương thơm quyến rũ. Không đường, không phụ gia, chỉ là vị ngọt thanh của xoài chín mọng được cô đọng lại qua quá trình sấy cẩn thận.</p>\n<h3>Mít Sấy Giòn Đồng Nai</h3>\n<p>Mít nghệ Đồng Nai chín vàng được sấy chân không ở nhiệt độ thấp, giữ nguyên cấu trúc tế bào và hàm lượng dinh dưỡng. Miếng mít sấy giòn rụm, thơm, ngọt tự nhiên – hoàn toàn không dầu mỡ.</p>\n<h3>Vải Sấy Lục Ngạn Bắc Giang</h3>\n<p>Vải thiều Lục Ngạn – loại vải ngon nhất Việt Nam – sau khi sấy khô giữ được vị ngọt đậm và hương thơm quyến rũ đặc trưng. Giàu vitamin C và các chất chống oxy hóa.</p>\n\n<h2>Lợi Ích Sức Khỏe Của Trái Cây Sấy</h2>\n<p>Các nghiên cứu dinh dưỡng cho thấy trái cây sấy mang lại nhiều lợi ích:</p>\n<ul>\n<li>Cung cấp năng lượng nhanh chóng nhờ carbohydrate tự nhiên</li>\n<li>Giàu chất xơ hỗ trợ tiêu hóa</li>\n<li>Chứa nhiều polyphenol có tác dụng chống oxy hóa</li>\n<li>Bổ sung kali, magie và các vi khoáng quan trọng</li>\n</ul>\n\n<h2>Cách Bảo Quản Trái Cây Sấy Đúng Cách</h2>\n<p>Để trái cây sấy giữ được chất lượng tốt nhất, cần bảo quản trong hộp kín, tránh ẩm và ánh sáng trực tiếp. Có thể bảo quản ở nhiệt độ phòng trong 3-6 tháng, hoặc trong ngăn lạnh lên đến 12 tháng.</p>', '/donggoi/z7505564696871_2684d51a610e10a63218832a7d0e26d3.jpg', 'LIKEFOOD', 'Sức khỏe', 'Health', 1, '2026-02-01 00:00:00.000', '2026-05-30 09:57:00.360', '2026-05-30 09:57:00.360'),
(5, 'Mắm Cá Linh Châu Đốc – Đặc Sản Mùa Nước Nổi Vùng An Giang', 'Chau Doc Fermented Fish Paste – The Legendary Flood Season Specialty of An Giang', 'mam-ca-linh-chau-doc-dac-san-mua-nuoc-noi', 'Mắm cá linh Châu Đốc là đặc sản gắn liền với mùa nước nổi huyền thoại của vùng An Giang. Hương vị đậm đà, quy trình ủ lâu ngày tạo nên sản phẩm độc đáo không nơi nào có được.', 'Mắm cá linh Châu Đốc là đặc sản gắn liền với mùa nước nổi huyền thoại của vùng An Giang. Hương vị đậm đà, quy trình ủ lâu ngày tạo nên sản phẩm độc đáo không nơi nào có được.', '<h1>Mắm Cá Linh Châu Đốc – Đặc Sản Mùa Nước Nổi Vùng An Giang</h1>\n<p>Mỗi năm, khi mùa nước nổi về – thường từ tháng 8 đến tháng 11 dương lịch – vùng đồng bằng sông Cửu Long lại tràn ngập cá linh. Người dân Châu Đốc An Giang tận dụng nguồn cá dồi dào này để làm ra thứ mắm nổi tiếng nhất Việt Nam: mắm cá linh Châu Đốc.</p>\n\n<h2>Cá Linh – Linh Hồn Của Mùa Nước Nổi</h2>\n<p>Cá linh (tên khoa học: <em>Henicorhynchus siamensis</em>) là loài cá đặc trưng chỉ xuất hiện theo mùa nước nổi. Cá có kích thước nhỏ, thịt ngọt, xương mềm ăn được. Đặc biệt, cá linh non đầu mùa – được gọi là \"cá linh mùa đầu\" – là nguyên liệu tốt nhất để làm mắm.</p>\n\n<h2>Quy Trình Làm Mắm Cá Linh Truyền Thống Châu Đốc</h2>\n<p>Người dân Châu Đốc đã truyền lại quy trình làm mắm cá linh qua nhiều thế hệ:</p>\n<ol>\n<li><strong>Chọn cá:</strong> Cá linh tươi, còn sống, kích thước đều nhau từ 5-8cm</li>\n<li><strong>Ướp muối:</strong> Cá được rửa sạch, để ráo rồi ướp với muối hạt theo tỷ lệ 3:1 (cá:muối)</li>\n<li><strong>Ủ lần 1:</strong> Cho cá vào khạp (hũ sành) sạch, đậy kín, ủ 30 ngày</li>\n<li><strong>Thêm thính:</strong> Sau 30 ngày, thêm thính gạo rang (hoặc thính mì) để tạo hương vị đặc trưng</li>\n<li><strong>Ủ tiếp:</strong> Ủ thêm 5-6 tháng cho mắm chín hoàn toàn</li>\n<li><strong>Hoàn thiện:</strong> Lọc, thêm đường thốt nốt, tỏi, ớt tùy khẩu vị</li>\n</ol>\n\n<h2>Hương Vị Đặc Trưng Không Thể Nhầm Lẫn</h2>\n<p>Mắm cá linh chín có màu đỏ cam đẹp, mùi thơm đặc trưng phức hợp của mắm chín và thính gạo. Vị mặn ngọt hài hòa, hậu ngọt dài, không có vị chua gắt hay mùi khó chịu khi mắm đã chín đúng cách.</p>\n\n<h2>Cách Thưởng Thức Mắm Cá Linh</h2>\n<p>Mắm cá linh được thưởng thức theo nhiều cách khác nhau tùy vùng miền:</p>\n<ul>\n<li><strong>Lẩu mắm:</strong> Đây là cách phổ biến nhất – nấu mắm với sả, ớt, me, ăn kèm rau sống và bún tươi</li>\n<li><strong>Ăn sống:</strong> Mắm chín ăn trực tiếp với chuối chát, rau thơm và cơm trắng</li>\n<li><strong>Làm gia vị:</strong> Dùng như nước mắm để nêm canh, xào thịt</li>\n<li><strong>Chưng thịt:</strong> Mắm cá linh chưng với thịt ba chỉ và nước dừa là món ăn mê hồn</li>\n</ul>', '<h1>Mắm Cá Linh Châu Đốc – Đặc Sản Mùa Nước Nổi Vùng An Giang</h1>\n<p>Mỗi năm, khi mùa nước nổi về – thường từ tháng 8 đến tháng 11 dương lịch – vùng đồng bằng sông Cửu Long lại tràn ngập cá linh. Người dân Châu Đốc An Giang tận dụng nguồn cá dồi dào này để làm ra thứ mắm nổi tiếng nhất Việt Nam: mắm cá linh Châu Đốc.</p>\n\n<h2>Cá Linh – Linh Hồn Của Mùa Nước Nổi</h2>\n<p>Cá linh (tên khoa học: <em>Henicorhynchus siamensis</em>) là loài cá đặc trưng chỉ xuất hiện theo mùa nước nổi. Cá có kích thước nhỏ, thịt ngọt, xương mềm ăn được. Đặc biệt, cá linh non đầu mùa – được gọi là \"cá linh mùa đầu\" – là nguyên liệu tốt nhất để làm mắm.</p>\n\n<h2>Quy Trình Làm Mắm Cá Linh Truyền Thống Châu Đốc</h2>\n<p>Người dân Châu Đốc đã truyền lại quy trình làm mắm cá linh qua nhiều thế hệ:</p>\n<ol>\n<li><strong>Chọn cá:</strong> Cá linh tươi, còn sống, kích thước đều nhau từ 5-8cm</li>\n<li><strong>Ướp muối:</strong> Cá được rửa sạch, để ráo rồi ướp với muối hạt theo tỷ lệ 3:1 (cá:muối)</li>\n<li><strong>Ủ lần 1:</strong> Cho cá vào khạp (hũ sành) sạch, đậy kín, ủ 30 ngày</li>\n<li><strong>Thêm thính:</strong> Sau 30 ngày, thêm thính gạo rang (hoặc thính mì) để tạo hương vị đặc trưng</li>\n<li><strong>Ủ tiếp:</strong> Ủ thêm 5-6 tháng cho mắm chín hoàn toàn</li>\n<li><strong>Hoàn thiện:</strong> Lọc, thêm đường thốt nốt, tỏi, ớt tùy khẩu vị</li>\n</ol>\n\n<h2>Hương Vị Đặc Trưng Không Thể Nhầm Lẫn</h2>\n<p>Mắm cá linh chín có màu đỏ cam đẹp, mùi thơm đặc trưng phức hợp của mắm chín và thính gạo. Vị mặn ngọt hài hòa, hậu ngọt dài, không có vị chua gắt hay mùi khó chịu khi mắm đã chín đúng cách.</p>\n\n<h2>Cách Thưởng Thức Mắm Cá Linh</h2>\n<p>Mắm cá linh được thưởng thức theo nhiều cách khác nhau tùy vùng miền:</p>\n<ul>\n<li><strong>Lẩu mắm:</strong> Đây là cách phổ biến nhất – nấu mắm với sả, ớt, me, ăn kèm rau sống và bún tươi</li>\n<li><strong>Ăn sống:</strong> Mắm chín ăn trực tiếp với chuối chát, rau thơm và cơm trắng</li>\n<li><strong>Làm gia vị:</strong> Dùng như nước mắm để nêm canh, xào thịt</li>\n<li><strong>Chưng thịt:</strong> Mắm cá linh chưng với thịt ba chỉ và nước dừa là món ăn mê hồn</li>\n</ul>', '/donggoi/z7505564700130_5dfdee1b79d74047db08339603bfb08d.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Regional Specialties', 1, '2026-02-05 00:00:00.000', '2026-05-30 09:57:00.366', '2026-05-30 09:57:00.366'),
(6, 'Cà Phê Chồn Weasel Việt Nam – Loại Cà Phê Đắt Nhất Thế Giới Có Gì Đặc Biệt?', 'Vietnamese Weasel Coffee – What Makes It the World\'s Most Expensive Coffee?', 'ca-phe-chon-weasel-viet-nam-dat-nhat-the-gioi', 'Cà phê chồn Weasel Việt Nam được xếp vào hàng đắt nhất thế giới. Tìm hiểu nguồn gốc, quy trình sản xuất độc đáo và tại sao loại cà phê này lại đặc biệt đến vậy.', 'Cà phê chồn Weasel Việt Nam được xếp vào hàng đắt nhất thế giới. Tìm hiểu nguồn gốc, quy trình sản xuất độc đáo và tại sao loại cà phê này lại đặc biệt đến vậy.', '<h1>Cà Phê Chồn Weasel Việt Nam – Loại Cà Phê Đắt Nhất Thế Giới Có Gì Đặc Biệt?</h1>\n<p>Kopi Luwak của Indonesia có thể nổi tiếng hơn, nhưng cà phê chồn Weasel Việt Nam đang ngày càng được giới sành cà phê thế giới biết đến và đánh giá cao. Với giá lên đến hàng trăm USD mỗi kg, điều gì làm cho loại cà phê này trở nên đặc biệt đến vậy?</p>\n\n<h2>Nguồn Gốc Của Cà Phê Chồn Việt Nam</h2>\n<p>Cà phê chồn được sản xuất từ hạt cà phê đã qua hệ tiêu hóa của con chồn hương (còn gọi là cầy vòi hương – <em>Paradoxurus hermaphroditus</em>). Chồn hương chỉ chọn ăn những quả cà phê chín đỏ, mọng, ngon nhất. Trong quá trình tiêu hóa, các enzyme trong dạ dày chồn tác động lên hạt cà phê, phân hủy một phần protein và làm thay đổi cấu trúc hóa học của hạt.</p>\n\n<h2>Quy Trình Sản Xuất Đặc Biệt</h2>\n<p>Sau khi chồn thải ra, người nông dân thu nhặt hạt cà phê, rửa sạch kỹ lưỡng và phơi khô. Quá trình rang sau đó cần đặc biệt cẩn thận để không làm mất đi những hương vị đặc trưng đã được tạo ra trong quá trình tiêu hóa.</p>\n\n<h2>Hương Vị Khác Biệt</h2>\n<p>Cà phê chồn Weasel có hương vị khác hoàn toàn so với cà phê thông thường:</p>\n<ul>\n<li>Vị đắng nhẹ, không gắt</li>\n<li>Hậu vị ngọt kéo dài, đặc trưng</li>\n<li>Không có vị chua của cà phê thông thường</li>\n<li>Hương thơm phức hợp, sâu lắng</li>\n</ul>\n\n<h2>Cách Pha Cà Phê Chồn Đúng Chuẩn</h2>\n<p>Để thưởng thức trọn vẹn hương vị của cà phê chồn, cần pha theo đúng phương pháp:</p>\n<ul>\n<li>Nhiệt độ nước: 90-92°C (không quá nóng)</li>\n<li>Tỷ lệ: 15g cà phê : 200ml nước</li>\n<li>Phương pháp: Pour-over hoặc French press là lý tưởng nhất</li>\n<li>Không nên thêm sữa hay đường để cảm nhận đầy đủ hương vị</li>\n</ul>', '<h1>Cà Phê Chồn Weasel Việt Nam – Loại Cà Phê Đắt Nhất Thế Giới Có Gì Đặc Biệt?</h1>\n<p>Kopi Luwak của Indonesia có thể nổi tiếng hơn, nhưng cà phê chồn Weasel Việt Nam đang ngày càng được giới sành cà phê thế giới biết đến và đánh giá cao. Với giá lên đến hàng trăm USD mỗi kg, điều gì làm cho loại cà phê này trở nên đặc biệt đến vậy?</p>\n\n<h2>Nguồn Gốc Của Cà Phê Chồn Việt Nam</h2>\n<p>Cà phê chồn được sản xuất từ hạt cà phê đã qua hệ tiêu hóa của con chồn hương (còn gọi là cầy vòi hương – <em>Paradoxurus hermaphroditus</em>). Chồn hương chỉ chọn ăn những quả cà phê chín đỏ, mọng, ngon nhất. Trong quá trình tiêu hóa, các enzyme trong dạ dày chồn tác động lên hạt cà phê, phân hủy một phần protein và làm thay đổi cấu trúc hóa học của hạt.</p>\n\n<h2>Quy Trình Sản Xuất Đặc Biệt</h2>\n<p>Sau khi chồn thải ra, người nông dân thu nhặt hạt cà phê, rửa sạch kỹ lưỡng và phơi khô. Quá trình rang sau đó cần đặc biệt cẩn thận để không làm mất đi những hương vị đặc trưng đã được tạo ra trong quá trình tiêu hóa.</p>\n\n<h2>Hương Vị Khác Biệt</h2>\n<p>Cà phê chồn Weasel có hương vị khác hoàn toàn so với cà phê thông thường:</p>\n<ul>\n<li>Vị đắng nhẹ, không gắt</li>\n<li>Hậu vị ngọt kéo dài, đặc trưng</li>\n<li>Không có vị chua của cà phê thông thường</li>\n<li>Hương thơm phức hợp, sâu lắng</li>\n</ul>\n\n<h2>Cách Pha Cà Phê Chồn Đúng Chuẩn</h2>\n<p>Để thưởng thức trọn vẹn hương vị của cà phê chồn, cần pha theo đúng phương pháp:</p>\n<ul>\n<li>Nhiệt độ nước: 90-92°C (không quá nóng)</li>\n<li>Tỷ lệ: 15g cà phê : 200ml nước</li>\n<li>Phương pháp: Pour-over hoặc French press là lý tưởng nhất</li>\n<li>Không nên thêm sữa hay đường để cảm nhận đầy đủ hương vị</li>\n</ul>', '/donggoi/z7505564706864_84dc016b181a848b0b0fdae575b946f5.jpg', 'LIKEFOOD', 'Đồ uống', 'Beverages', 1, '2026-02-10 00:00:00.000', '2026-05-30 09:57:00.371', '2026-05-30 09:57:00.371'),
(7, 'Hạt Điều Bình Phước – Vì Sao Được Mệnh Danh Là \'Vàng Trắng\' Của Việt Nam?', 'Binh Phuoc Cashew Nuts – Why Are They Called Vietnam\'s \'White Gold\'?', 'hat-dieu-binh-phuoc-vang-trang-viet-nam', 'Việt Nam là nước xuất khẩu hạt điều lớn nhất thế giới, trong đó Bình Phước chiếm phần lớn sản lượng. Tìm hiểu tại sao hạt điều Bình Phước được mệnh danh là \'vàng trắng\' và cách chọn mua chất lượng.', 'Việt Nam là nước xuất khẩu hạt điều lớn nhất thế giới, trong đó Bình Phước chiếm phần lớn sản lượng. Tìm hiểu tại sao hạt điều Bình Phước được mệnh danh là \'vàng trắng\' và cách chọn mua chất lượng.', '<h1>Hạt Điều Bình Phước – Vì Sao Được Mệnh Danh Là \'Vàng Trắng\' Của Việt Nam?</h1>\n<p>Mỗi năm, Việt Nam xuất khẩu hơn 600,000 tấn hạt điều ra thị trường thế giới, chiếm hơn 40% thị phần toàn cầu. Trong đó, tỉnh Bình Phước – còn được gọi là \"thủ phủ điều\" – đóng góp phần lớn sản lượng. Chẳng lạ khi người ta gọi hạt điều Bình Phước là \"vàng trắng\" của Việt Nam.</p>\n\n<h2>Điều Kiện Tự Nhiên Lý Tưởng Của Bình Phước</h2>\n<p>Bình Phước có khí hậu nhiệt đới gió mùa với mùa khô kéo dài, đất đỏ bazan phong phú – điều kiện lý tưởng để cây điều phát triển. Cây điều Bình Phước cho hạt to, tỷ lệ nhân cao và chất lượng vượt trội so với nhiều vùng khác.</p>\n\n<h2>Phân Loại Hạt Điều</h2>\n<p>Hạt điều được phân loại theo kích thước và chất lượng nhân:</p>\n<ul>\n<li><strong>W180:</strong> 180 hạt/pound – loại cao cấp nhất, hạt to, nguyên vẹn</li>\n<li><strong>W240:</strong> 240 hạt/pound – phổ biến nhất, chất lượng tốt</li>\n<li><strong>W320:</strong> 320 hạt/pound – hạt vừa, phổ thông</li>\n<li><strong>W450:</strong> 450 hạt/pound – hạt nhỏ, thường dùng chế biến</li>\n</ul>\n\n<h2>Lợi Ích Sức Khỏe Của Hạt Điều</h2>\n<p>Hạt điều không chỉ ngon mà còn rất tốt cho sức khỏe:</p>\n<ul>\n<li>Giàu chất béo không bão hòa có lợi cho tim mạch</li>\n<li>Nguồn protein thực vật dồi dào</li>\n<li>Chứa magie, kẽm, sắt và đồng</li>\n<li>Vitamin E mạnh – chống oxy hóa tốt</li>\n</ul>\n\n<h2>Cách Rang Hạt Điều Ngon Tại Nhà</h2>\n<p>Rang hạt điều tại nhà giúp bạn kiểm soát độ chín và hương vị:</p>\n<ol>\n<li>Làm nóng lò nướng 175°C</li>\n<li>Trải hạt điều đều trên khay nướng</li>\n<li>Nướng 10-12 phút, đảo đều sau mỗi 4 phút</li>\n<li>Rắc muối hạt ngay khi vừa lấy ra</li>\n<li>Để nguội hoàn toàn trước khi đóng gói</li>\n</ol>', '<h1>Hạt Điều Bình Phước – Vì Sao Được Mệnh Danh Là \'Vàng Trắng\' Của Việt Nam?</h1>\n<p>Mỗi năm, Việt Nam xuất khẩu hơn 600,000 tấn hạt điều ra thị trường thế giới, chiếm hơn 40% thị phần toàn cầu. Trong đó, tỉnh Bình Phước – còn được gọi là \"thủ phủ điều\" – đóng góp phần lớn sản lượng. Chẳng lạ khi người ta gọi hạt điều Bình Phước là \"vàng trắng\" của Việt Nam.</p>\n\n<h2>Điều Kiện Tự Nhiên Lý Tưởng Của Bình Phước</h2>\n<p>Bình Phước có khí hậu nhiệt đới gió mùa với mùa khô kéo dài, đất đỏ bazan phong phú – điều kiện lý tưởng để cây điều phát triển. Cây điều Bình Phước cho hạt to, tỷ lệ nhân cao và chất lượng vượt trội so với nhiều vùng khác.</p>\n\n<h2>Phân Loại Hạt Điều</h2>\n<p>Hạt điều được phân loại theo kích thước và chất lượng nhân:</p>\n<ul>\n<li><strong>W180:</strong> 180 hạt/pound – loại cao cấp nhất, hạt to, nguyên vẹn</li>\n<li><strong>W240:</strong> 240 hạt/pound – phổ biến nhất, chất lượng tốt</li>\n<li><strong>W320:</strong> 320 hạt/pound – hạt vừa, phổ thông</li>\n<li><strong>W450:</strong> 450 hạt/pound – hạt nhỏ, thường dùng chế biến</li>\n</ul>\n\n<h2>Lợi Ích Sức Khỏe Của Hạt Điều</h2>\n<p>Hạt điều không chỉ ngon mà còn rất tốt cho sức khỏe:</p>\n<ul>\n<li>Giàu chất béo không bão hòa có lợi cho tim mạch</li>\n<li>Nguồn protein thực vật dồi dào</li>\n<li>Chứa magie, kẽm, sắt và đồng</li>\n<li>Vitamin E mạnh – chống oxy hóa tốt</li>\n</ul>\n\n<h2>Cách Rang Hạt Điều Ngon Tại Nhà</h2>\n<p>Rang hạt điều tại nhà giúp bạn kiểm soát độ chín và hương vị:</p>\n<ol>\n<li>Làm nóng lò nướng 175°C</li>\n<li>Trải hạt điều đều trên khay nướng</li>\n<li>Nướng 10-12 phút, đảo đều sau mỗi 4 phút</li>\n<li>Rắc muối hạt ngay khi vừa lấy ra</li>\n<li>Để nguội hoàn toàn trước khi đóng gói</li>\n</ol>', '/donggoi/z7505564710374_b57e8a2125530f9bd0b1c26e671da281.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Snacks', 1, '2026-02-15 00:00:00.000', '2026-05-30 09:57:00.376', '2026-05-30 09:57:00.376'),
(8, 'Gạo ST25 An Giang – Bí Quyết Nấu Cơm Ngon Nhất Thế Giới Tại Nhà', 'ST25 Rice from An Giang – Tips to Cook the World\'s Best Rice at Home', 'gao-st25-an-giang-bi-quyet-nau-com-ngon-nhat-the-gioi', 'Gạo ST25 được vinh danh là gạo ngon nhất thế giới năm 2019. Hướng dẫn chi tiết cách nấu cơm gạo ST25 đúng chuẩn để cảm nhận hết vị ngọt và hương thơm đặc biệt của giống gạo này.', 'Gạo ST25 được vinh danh là gạo ngon nhất thế giới năm 2019. Hướng dẫn chi tiết cách nấu cơm gạo ST25 đúng chuẩn để cảm nhận hết vị ngọt và hương thơm đặc biệt của giống gạo này.', '<h1>Gạo ST25 An Giang – Bí Quyết Nấu Cơm Ngon Nhất Thế Giới Tại Nhà</h1>\n<p>Năm 2019, tại Hội nghị Gạo Thế giới ở Manila, Philippines, gạo ST25 của Việt Nam đã vượt qua các đối thủ từ Thái Lan, Campuchia và nhiều quốc gia khác để giành giải \"Gạo ngon nhất thế giới\". Đây không chỉ là niềm tự hào của An Giang mà của cả Việt Nam.</p>\n\n<h2>Gạo ST25 Được Tạo Ra Như Thế Nào?</h2>\n<p>Giống gạo ST25 là công trình nghiên cứu suốt hơn 20 năm của Kỹ sư Hồ Quang Cua – người được mệnh danh là \"vua gạo\" Sóc Trăng. Qua nhiều lần lai tạo và chọn lọc từ các giống gạo thơm tự nhiên, ông đã tạo ra giống lúa cho hạt gạo thơm mùi lài tự nhiên, hạt dài, cơm dẻo mềm.</p>\n\n<h2>Đặc Điểm Nhận Biết Gạo ST25 Thật</h2>\n<ul>\n<li>Hạt gạo dài đều, trong vắt, không gãy</li>\n<li>Mùi thơm nhẹ của hoa lài khi còn sống</li>\n<li>Cơm chín thơm đậm hơn, dẻo vừa phải</li>\n<li>Màu cơm trắng ngà đẹp, không bị đục</li>\n</ul>\n\n<h2>Cách Nấu Cơm Gạo ST25 Đúng Chuẩn</h2>\n<h3>Tỷ Lệ Nước – Gạo</h3>\n<p>Gạo ST25 khác với gạo thường về tỷ lệ nước. Do hạt gạo dài và chất lượng cao, cần ít nước hơn: tỷ lệ lý tưởng là <strong>1 gạo : 1.3 nước</strong> (so với 1:1.5 của gạo thường).</p>\n<h3>Quy Trình Nấu</h3>\n<ol>\n<li>Vo gạo nhẹ tay, chỉ vo 1-2 lần để giữ lớp cám bên ngoài</li>\n<li>Ngâm gạo 15-20 phút trước khi nấu</li>\n<li>Cho nước lạnh vào cùng gạo, đặt trên bếp lửa vừa</li>\n<li>Khi sôi, hạ lửa nhỏ và nấu thêm 15 phút</li>\n<li>Tắt bếp, ủ thêm 10 phút trước khi mở nắp</li>\n</ol>\n<h3>Bí Quyết Cơm Ngon Hơn</h3>\n<p>Thêm vài giọt dầu dừa hoặc mỡ heo vào nồi cơm khi nấu sẽ làm cơm bóng đẹp và thơm hơn. Đây là bí quyết của người miền Tây khi nấu cơm ngày Tết.</p>', '<h1>Gạo ST25 An Giang – Bí Quyết Nấu Cơm Ngon Nhất Thế Giới Tại Nhà</h1>\n<p>Năm 2019, tại Hội nghị Gạo Thế giới ở Manila, Philippines, gạo ST25 của Việt Nam đã vượt qua các đối thủ từ Thái Lan, Campuchia và nhiều quốc gia khác để giành giải \"Gạo ngon nhất thế giới\". Đây không chỉ là niềm tự hào của An Giang mà của cả Việt Nam.</p>\n\n<h2>Gạo ST25 Được Tạo Ra Như Thế Nào?</h2>\n<p>Giống gạo ST25 là công trình nghiên cứu suốt hơn 20 năm của Kỹ sư Hồ Quang Cua – người được mệnh danh là \"vua gạo\" Sóc Trăng. Qua nhiều lần lai tạo và chọn lọc từ các giống gạo thơm tự nhiên, ông đã tạo ra giống lúa cho hạt gạo thơm mùi lài tự nhiên, hạt dài, cơm dẻo mềm.</p>\n\n<h2>Đặc Điểm Nhận Biết Gạo ST25 Thật</h2>\n<ul>\n<li>Hạt gạo dài đều, trong vắt, không gãy</li>\n<li>Mùi thơm nhẹ của hoa lài khi còn sống</li>\n<li>Cơm chín thơm đậm hơn, dẻo vừa phải</li>\n<li>Màu cơm trắng ngà đẹp, không bị đục</li>\n</ul>\n\n<h2>Cách Nấu Cơm Gạo ST25 Đúng Chuẩn</h2>\n<h3>Tỷ Lệ Nước – Gạo</h3>\n<p>Gạo ST25 khác với gạo thường về tỷ lệ nước. Do hạt gạo dài và chất lượng cao, cần ít nước hơn: tỷ lệ lý tưởng là <strong>1 gạo : 1.3 nước</strong> (so với 1:1.5 của gạo thường).</p>\n<h3>Quy Trình Nấu</h3>\n<ol>\n<li>Vo gạo nhẹ tay, chỉ vo 1-2 lần để giữ lớp cám bên ngoài</li>\n<li>Ngâm gạo 15-20 phút trước khi nấu</li>\n<li>Cho nước lạnh vào cùng gạo, đặt trên bếp lửa vừa</li>\n<li>Khi sôi, hạ lửa nhỏ và nấu thêm 15 phút</li>\n<li>Tắt bếp, ủ thêm 10 phút trước khi mở nắp</li>\n</ol>\n<h3>Bí Quyết Cơm Ngon Hơn</h3>\n<p>Thêm vài giọt dầu dừa hoặc mỡ heo vào nồi cơm khi nấu sẽ làm cơm bóng đẹp và thơm hơn. Đây là bí quyết của người miền Tây khi nấu cơm ngày Tết.</p>', '/donggoi/z7505564716466_19362f3e6e40612fb2d28f029726d15d.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Rice & Agricultural Products', 1, '2026-02-20 00:00:00.000', '2026-05-30 09:57:00.380', '2026-05-30 09:57:00.380'),
(9, 'Bánh Phồng Tôm Sa Giang – Đặc Sản Đồng Tháp Nổi Tiếng Toàn Cầu', 'Sa Giang Shrimp Crackers – Dong Thap\'s Globally Famous Specialty', 'banh-phong-tom-sa-giang-dong-thap-noi-tieng', 'Bánh phồng tôm Sa Giang Đồng Tháp là đặc sản Việt Nam xuất khẩu sang hơn 40 quốc gia. Tìm hiểu lịch sử, quy trình sản xuất và tại sao Sa Giang lại khác biệt so với các loại bánh phồng tôm khác.', 'Bánh phồng tôm Sa Giang Đồng Tháp là đặc sản Việt Nam xuất khẩu sang hơn 40 quốc gia. Tìm hiểu lịch sử, quy trình sản xuất và tại sao Sa Giang lại khác biệt so với các loại bánh phồng tôm khác.', '<h1>Bánh Phồng Tôm Sa Giang – Đặc Sản Đồng Tháp Nổi Tiếng Toàn Cầu</h1>\n<p>Nếu bạn từng thưởng thức bánh phồng tôm ở bất kỳ nhà hàng Việt Nam nào trên thế giới, rất có thể bạn đã ăn bánh phồng tôm Sa Giang từ Đồng Tháp. Thương hiệu này đã xuất khẩu sang hơn 40 quốc gia và vùng lãnh thổ, trở thành đặc sản Việt Nam được biết đến nhiều nhất thế giới.</p>\n\n<h2>Lịch Sử Hơn 60 Năm Của Thương Hiệu Sa Giang</h2>\n<p>Công ty Sa Giang được thành lập từ những năm 1960, ban đầu chỉ là cơ sở sản xuất nhỏ ở Đồng Tháp. Qua nhiều thập kỷ phát triển, Sa Giang đã trở thành thương hiệu bánh phồng tôm hàng đầu Việt Nam với dây chuyền sản xuất hiện đại kết hợp với bí quyết truyền thống.</p>\n\n<h2>Nguyên Liệu Đặc Biệt Tạo Nên Hương Vị Độc Đáo</h2>\n<p>Bánh phồng tôm Sa Giang được làm từ:</p>\n<ul>\n<li><strong>Tôm tươi Cà Mau:</strong> Tôm biển tươi nguyên con, không qua đông lạnh</li>\n<li><strong>Bột khoai mì sắn:</strong> Bột tinh sắn Tây Ninh chất lượng cao</li>\n<li><strong>Muối biển:</strong> Muối Cần Giờ hạt to</li>\n<li><strong>Đường mía:</strong> Đường vàng tự nhiên</li>\n</ul>\n\n<h2>Cách Chiên Bánh Phồng Tôm Sa Giang Giòn Không Gãy</h2>\n<p>Nhiều người thắc mắc tại sao chiên bánh phồng tôm ở nhà không giòn và phồng đẹp như ở nhà hàng. Bí quyết nằm ở nhiệt độ dầu:</p>\n<ol>\n<li>Dầu phải thật nóng – đạt 180-190°C trước khi cho bánh vào</li>\n<li>Cho bánh vào từng miếng một, không cho quá nhiều cùng lúc</li>\n<li>Bánh sẽ phồng trong 3-5 giây, vớt ngay khi vừa phồng hết</li>\n<li>Không để bánh quá lâu trong dầu sẽ bị vàng xém</li>\n</ol>', '<h1>Bánh Phồng Tôm Sa Giang – Đặc Sản Đồng Tháp Nổi Tiếng Toàn Cầu</h1>\n<p>Nếu bạn từng thưởng thức bánh phồng tôm ở bất kỳ nhà hàng Việt Nam nào trên thế giới, rất có thể bạn đã ăn bánh phồng tôm Sa Giang từ Đồng Tháp. Thương hiệu này đã xuất khẩu sang hơn 40 quốc gia và vùng lãnh thổ, trở thành đặc sản Việt Nam được biết đến nhiều nhất thế giới.</p>\n\n<h2>Lịch Sử Hơn 60 Năm Của Thương Hiệu Sa Giang</h2>\n<p>Công ty Sa Giang được thành lập từ những năm 1960, ban đầu chỉ là cơ sở sản xuất nhỏ ở Đồng Tháp. Qua nhiều thập kỷ phát triển, Sa Giang đã trở thành thương hiệu bánh phồng tôm hàng đầu Việt Nam với dây chuyền sản xuất hiện đại kết hợp với bí quyết truyền thống.</p>\n\n<h2>Nguyên Liệu Đặc Biệt Tạo Nên Hương Vị Độc Đáo</h2>\n<p>Bánh phồng tôm Sa Giang được làm từ:</p>\n<ul>\n<li><strong>Tôm tươi Cà Mau:</strong> Tôm biển tươi nguyên con, không qua đông lạnh</li>\n<li><strong>Bột khoai mì sắn:</strong> Bột tinh sắn Tây Ninh chất lượng cao</li>\n<li><strong>Muối biển:</strong> Muối Cần Giờ hạt to</li>\n<li><strong>Đường mía:</strong> Đường vàng tự nhiên</li>\n</ul>\n\n<h2>Cách Chiên Bánh Phồng Tôm Sa Giang Giòn Không Gãy</h2>\n<p>Nhiều người thắc mắc tại sao chiên bánh phồng tôm ở nhà không giòn và phồng đẹp như ở nhà hàng. Bí quyết nằm ở nhiệt độ dầu:</p>\n<ol>\n<li>Dầu phải thật nóng – đạt 180-190°C trước khi cho bánh vào</li>\n<li>Cho bánh vào từng miếng một, không cho quá nhiều cùng lúc</li>\n<li>Bánh sẽ phồng trong 3-5 giây, vớt ngay khi vừa phồng hết</li>\n<li>Không để bánh quá lâu trong dầu sẽ bị vàng xém</li>\n</ol>', '/donggoi/z7505564722203_71d3e72e8069b04519218bcf7274eded.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Snacks', 1, '2026-02-25 00:00:00.000', '2026-05-30 09:57:00.387', '2026-05-30 09:57:00.387');
INSERT INTO `bai_viet` (`ma_bai_viet`, `tieu_de`, `tieu_de_en`, `duong_dan_tinh`, `tom_tat`, `tom_tat_en`, `noi_dung`, `noi_dung_en`, `anh_dai_dien`, `ten_tac_gia`, `danh_muc`, `danh_muc_en`, `da_xuat_ban`, `ngay_xuat_ban`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(10, 'Muối Tôm Tây Ninh – Gia Vị Ma Thuật Của Người Việt Tại Mỹ', 'Tay Ninh Shrimp Salt – The Magic Spice of Vietnamese in America', 'muoi-tom-tay-ninh-gia-vi-ma-thuat-nguoi-viet-tai-my', 'Muối tôm Tây Ninh là gia vị không thể thiếu trong bếp Việt tại Mỹ. Từ chấm trái cây đến ướp thịt nướng, tìm hiểu 10 cách sử dụng sáng tạo của muối tôm mà bạn chưa từng nghĩ đến.', 'Muối tôm Tây Ninh là gia vị không thể thiếu trong bếp Việt tại Mỹ. Từ chấm trái cây đến ướp thịt nướng, tìm hiểu 10 cách sử dụng sáng tạo của muối tôm mà bạn chưa từng nghĩ đến.', '<h1>Muối Tôm Tây Ninh – Gia Vị Ma Thuật Của Người Việt Tại Mỹ</h1>\n<p>Hỏi bất kỳ người Việt nào sống ở Mỹ về loại gia vị họ không thể thiếu, câu trả lời phổ biến nhất sẽ là: muối tôm Tây Ninh. Hỗn hợp đơn giản của muối, tôm khô và ớt hiểm này lại có khả năng biến bất kỳ món ăn nào thành tuyệt phẩm.</p>\n\n<h2>Muối Tôm Tây Ninh Khác Gì So Với Muối Ớt Thông Thường?</h2>\n<p>Điểm khác biệt lớn nhất của muối tôm Tây Ninh nằm ở thành phần tôm khô xay mịn. Không phải bất kỳ loại tôm nào cũng được dùng – người làm muối tôm chính hiệu Tây Ninh chỉ chọn tôm đất khô Cà Mau để xay mịn, tạo ra vị umami tự nhiên cực kỳ đặc biệt.</p>\n\n<h2>10 Cách Sử Dụng Muối Tôm Bạn Chưa Thử</h2>\n<h3>1. Chấm Trái Cây – Cách Dùng Kinh Điển</h3>\n<p>Xoài xanh, ổi, khế, thanh long chấm muối tôm là combo không thể cưỡng lại. Vị cay nồng của ớt kết hợp vị chua của trái cây tạo nên sự hài hòa tuyệt vời.</p>\n<h3>2. Ướp Thịt Nướng BBQ</h3>\n<p>Thay vì dùng muối và ớt riêng, trộn muối tôm với dầu ôliu để ướp thịt gà, bò, heo trước khi nướng. Vị umami từ tôm sẽ thấm sâu vào thịt, tạo lớp caramel đẹp khi nướng.</p>\n<h3>3. Rắc Lên Bắp Nướng</h3>\n<p>Bắp ngô nướng rắc muối tôm thay vì muối thường sẽ cho vị đậm đà hơn rất nhiều. Thêm vài giọt nước cốt chanh cho hoàn hảo.</p>\n<h3>4. Trộn Salad</h3>\n<p>Trộn muối tôm với dầu mè, nước cốt chanh và đường thốt nốt làm nước sốt salad kiểu Việt siêu ngon.</p>\n<h3>5. Rim Trái Cây</h3>\n<p>Rim dứa (thơm), xoài hoặc me với muối tôm và đường – món ăn vặt chua ngọt cay tuyệt hảo.</p>', '<h1>Muối Tôm Tây Ninh – Gia Vị Ma Thuật Của Người Việt Tại Mỹ</h1>\n<p>Hỏi bất kỳ người Việt nào sống ở Mỹ về loại gia vị họ không thể thiếu, câu trả lời phổ biến nhất sẽ là: muối tôm Tây Ninh. Hỗn hợp đơn giản của muối, tôm khô và ớt hiểm này lại có khả năng biến bất kỳ món ăn nào thành tuyệt phẩm.</p>\n\n<h2>Muối Tôm Tây Ninh Khác Gì So Với Muối Ớt Thông Thường?</h2>\n<p>Điểm khác biệt lớn nhất của muối tôm Tây Ninh nằm ở thành phần tôm khô xay mịn. Không phải bất kỳ loại tôm nào cũng được dùng – người làm muối tôm chính hiệu Tây Ninh chỉ chọn tôm đất khô Cà Mau để xay mịn, tạo ra vị umami tự nhiên cực kỳ đặc biệt.</p>\n\n<h2>10 Cách Sử Dụng Muối Tôm Bạn Chưa Thử</h2>\n<h3>1. Chấm Trái Cây – Cách Dùng Kinh Điển</h3>\n<p>Xoài xanh, ổi, khế, thanh long chấm muối tôm là combo không thể cưỡng lại. Vị cay nồng của ớt kết hợp vị chua của trái cây tạo nên sự hài hòa tuyệt vời.</p>\n<h3>2. Ướp Thịt Nướng BBQ</h3>\n<p>Thay vì dùng muối và ớt riêng, trộn muối tôm với dầu ôliu để ướp thịt gà, bò, heo trước khi nướng. Vị umami từ tôm sẽ thấm sâu vào thịt, tạo lớp caramel đẹp khi nướng.</p>\n<h3>3. Rắc Lên Bắp Nướng</h3>\n<p>Bắp ngô nướng rắc muối tôm thay vì muối thường sẽ cho vị đậm đà hơn rất nhiều. Thêm vài giọt nước cốt chanh cho hoàn hảo.</p>\n<h3>4. Trộn Salad</h3>\n<p>Trộn muối tôm với dầu mè, nước cốt chanh và đường thốt nốt làm nước sốt salad kiểu Việt siêu ngon.</p>\n<h3>5. Rim Trái Cây</h3>\n<p>Rim dứa (thơm), xoài hoặc me với muối tôm và đường – món ăn vặt chua ngọt cay tuyệt hảo.</p>', '/donggoi/z7505564724290_73622428bb0eeecf9af5f68f615d2547.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Vietnamese Spices', 1, '2026-03-01 00:00:00.000', '2026-05-30 09:57:00.392', '2026-05-30 09:57:00.392'),
(11, 'Lẩu Mắm Miền Tây – Công Thức Chuẩn Cho Người Việt Nấu Tại Mỹ', 'Mekong Delta Fermented Fish Hot Pot – Authentic Recipe for Vietnamese in America', 'lau-mam-mien-tay-cong-thuc-chuan-nguoi-viet-tai-my', 'Lẩu mắm là món ăn đặc trưng nhất của ẩm thực miền Tây Nam Bộ. Hướng dẫn chi tiết cách nấu lẩu mắm ngon chuẩn vị với các nguyên liệu có thể tìm thấy ở Mỹ.', 'Lẩu mắm là món ăn đặc trưng nhất của ẩm thực miền Tây Nam Bộ. Hướng dẫn chi tiết cách nấu lẩu mắm ngon chuẩn vị với các nguyên liệu có thể tìm thấy ở Mỹ.', '<h1>Lẩu Mắm Miền Tây – Công Thức Chuẩn Cho Người Việt Nấu Tại Mỹ</h1>\n<p>Không có món ăn nào thể hiện tinh hoa ẩm thực miền Tây rõ ràng như lẩu mắm. Nồi lẩu nghi ngút khói với hương mắm thơm nồng, rau sống xanh tươi và bún trắng mịn – đó là ký ức ẩm thực không thể quên của bất kỳ người miền Tây nào.</p>\n\n<h2>Nguyên Liệu Nấu Lẩu Mắm (6-8 người)</h2>\n<h3>Phần Nước Lẩu:</h3>\n<ul>\n<li>300g mắm cá linh Châu Đốc (hoặc mắm cá sặc)</li>\n<li>500g xương heo</li>\n<li>3 cây sả đập dập</li>\n<li>5 tép tỏi băm</li>\n<li>3-5 trái ớt hiểm (tùy khẩu vị)</li>\n<li>2 thìa đường thốt nốt</li>\n<li>Nghệ tươi 1 củ nhỏ</li>\n</ul>\n<h3>Phần Nhúng:</h3>\n<ul>\n<li>300g cá basa lọc phi lê</li>\n<li>200g tôm tươi</li>\n<li>200g mực tươi</li>\n<li>300g thịt ba chỉ thái mỏng</li>\n<li>500g bún tươi</li>\n</ul>\n\n<h2>Cách Nấu Nước Lẩu Mắm Chuẩn Vị</h2>\n<ol>\n<li><strong>Ninh xương:</strong> Hầm xương heo với 2 lít nước trong 30 phút, vớt bọt kỹ</li>\n<li><strong>Phi thơm:</strong> Phi tỏi, sả cho đến vàng thơm trong nồi lẩu</li>\n<li><strong>Cho mắm vào:</strong> Thêm mắm cá linh, xào đều với tỏi sả cho thơm</li>\n<li><strong>Đổ nước xương:</strong> Rót nước xương vào, thêm ớt và nghệ</li>\n<li><strong>Nêm nếm:</strong> Thêm đường thốt nốt, nước mắm nguyên chất cho vừa miệng</li>\n<li><strong>Giữ lửa nhỏ:</strong> Khi nước lẩu sôi nhẹ, bắt đầu nhúng thức ăn</li>\n</ol>\n\n<h2>Rau Sống Ăn Kèm</h2>\n<p>Lẩu mắm ngon không thể thiếu rau sống phong phú: bắp chuối bào, rau muống, hoa chuối, giá đỗ, rau nhút, kèo nèo. Tại Mỹ có thể thay thế bằng: bok choy, water spinach (rau muống), bean sprouts (giá), baby bok choy.</p>', '<h1>Lẩu Mắm Miền Tây – Công Thức Chuẩn Cho Người Việt Nấu Tại Mỹ</h1>\n<p>Không có món ăn nào thể hiện tinh hoa ẩm thực miền Tây rõ ràng như lẩu mắm. Nồi lẩu nghi ngút khói với hương mắm thơm nồng, rau sống xanh tươi và bún trắng mịn – đó là ký ức ẩm thực không thể quên của bất kỳ người miền Tây nào.</p>\n\n<h2>Nguyên Liệu Nấu Lẩu Mắm (6-8 người)</h2>\n<h3>Phần Nước Lẩu:</h3>\n<ul>\n<li>300g mắm cá linh Châu Đốc (hoặc mắm cá sặc)</li>\n<li>500g xương heo</li>\n<li>3 cây sả đập dập</li>\n<li>5 tép tỏi băm</li>\n<li>3-5 trái ớt hiểm (tùy khẩu vị)</li>\n<li>2 thìa đường thốt nốt</li>\n<li>Nghệ tươi 1 củ nhỏ</li>\n</ul>\n<h3>Phần Nhúng:</h3>\n<ul>\n<li>300g cá basa lọc phi lê</li>\n<li>200g tôm tươi</li>\n<li>200g mực tươi</li>\n<li>300g thịt ba chỉ thái mỏng</li>\n<li>500g bún tươi</li>\n</ul>\n\n<h2>Cách Nấu Nước Lẩu Mắm Chuẩn Vị</h2>\n<ol>\n<li><strong>Ninh xương:</strong> Hầm xương heo với 2 lít nước trong 30 phút, vớt bọt kỹ</li>\n<li><strong>Phi thơm:</strong> Phi tỏi, sả cho đến vàng thơm trong nồi lẩu</li>\n<li><strong>Cho mắm vào:</strong> Thêm mắm cá linh, xào đều với tỏi sả cho thơm</li>\n<li><strong>Đổ nước xương:</strong> Rót nước xương vào, thêm ớt và nghệ</li>\n<li><strong>Nêm nếm:</strong> Thêm đường thốt nốt, nước mắm nguyên chất cho vừa miệng</li>\n<li><strong>Giữ lửa nhỏ:</strong> Khi nước lẩu sôi nhẹ, bắt đầu nhúng thức ăn</li>\n</ol>\n\n<h2>Rau Sống Ăn Kèm</h2>\n<p>Lẩu mắm ngon không thể thiếu rau sống phong phú: bắp chuối bào, rau muống, hoa chuối, giá đỗ, rau nhút, kèo nèo. Tại Mỹ có thể thay thế bằng: bok choy, water spinach (rau muống), bean sprouts (giá), baby bok choy.</p>', '/donggoi/z7505564730110_e4d1502776108876749bdcd76fe09e0d.jpg', 'LIKEFOOD', 'Công thức nấu ăn', 'Recipes', 1, '2026-03-05 00:00:00.000', '2026-05-30 09:57:00.396', '2026-05-30 09:57:00.396'),
(12, 'Trà Atiso Đà Lạt – Thức Uống Mát Gan Được Người Việt Tại Mỹ Tin Dùng', 'Da Lat Artichoke Tea – The Liver-Cooling Drink Trusted by Vietnamese in America', 'tra-atiso-da-lat-uong-mat-gan-nguoi-viet-tai-my', 'Trà atiso Đà Lạt nổi tiếng với tác dụng mát gan, giải độc và hỗ trợ tiêu hóa. Tìm hiểu thành phần, lợi ích và cách pha trà atiso đúng để tận dụng tối đa công dụng của loại trà đặc biệt này.', 'Trà atiso Đà Lạt nổi tiếng với tác dụng mát gan, giải độc và hỗ trợ tiêu hóa. Tìm hiểu thành phần, lợi ích và cách pha trà atiso đúng để tận dụng tối đa công dụng của loại trà đặc biệt này.', '<h1>Trà Atiso Đà Lạt – Thức Uống Mát Gan Được Người Việt Tại Mỹ Tin Dùng</h1>\n<p>Atiso – loại rau hoa đặc trưng của vùng cao nguyên Đà Lạt – không chỉ là nguyên liệu nấu ăn quen thuộc mà còn là nguồn thảo dược quý giá. Trà atiso Đà Lạt từ lâu đã được y học dân gian Việt Nam sử dụng để hỗ trợ sức khỏe gan và giải độc cơ thể.</p>\n\n<h2>Thành Phần Hoạt Chất Trong Atiso</h2>\n<p>Nghiên cứu khoa học đã xác định nhiều hoạt chất có lợi trong atiso:</p>\n<ul>\n<li><strong>Cynarin:</strong> Hoạt chất chủ yếu hỗ trợ chức năng gan và túi mật</li>\n<li><strong>Luteolin và Apigenin:</strong> Flavonoid chống viêm và chống oxy hóa</li>\n<li><strong>Silymarin:</strong> Hỗ trợ tái tạo tế bào gan</li>\n<li><strong>Inulin:</strong> Chất xơ prebiotics tốt cho vi khuẩn đường ruột</li>\n</ul>\n\n<h2>Lợi Ích Sức Khỏe Được Khoa Học Xác Nhận</h2>\n<p>Các nghiên cứu lâm sàng đã chứng minh trà atiso có tác dụng:</p>\n<ul>\n<li>Hỗ trợ chức năng gan, giảm men gan ALT và AST</li>\n<li>Kích thích tiết mật, hỗ trợ tiêu hóa chất béo</li>\n<li>Giảm cholesterol LDL (cholesterol xấu)</li>\n<li>Chống oxy hóa, bảo vệ tế bào khỏi stress oxy hóa</li>\n<li>Hỗ trợ giảm cân (giảm hấp thu chất béo)</li>\n</ul>\n\n<h2>Cách Pha Trà Atiso Đúng Chuẩn</h2>\n<h3>Phương Pháp 1: Hãm Trà Nóng</h3>\n<ol>\n<li>Cho 5-7g trà atiso (1-2 gói) vào ấm</li>\n<li>Rót nước sôi 95-100°C</li>\n<li>Hãm 5-7 phút</li>\n<li>Lọc và uống nóng, có thể thêm chút mật ong</li>\n</ol>\n<h3>Phương Pháp 2: Trà Lạnh (Cold Brew)</h3>\n<ol>\n<li>Cho 10g trà atiso vào bình 1 lít</li>\n<li>Đổ nước lọc vào, đậy kín</li>\n<li>Để trong tủ lạnh 8-12 tiếng</li>\n<li>Lọc và uống lạnh – vị thanh mát tuyệt vời</li>\n</ol>', '<h1>Trà Atiso Đà Lạt – Thức Uống Mát Gan Được Người Việt Tại Mỹ Tin Dùng</h1>\n<p>Atiso – loại rau hoa đặc trưng của vùng cao nguyên Đà Lạt – không chỉ là nguyên liệu nấu ăn quen thuộc mà còn là nguồn thảo dược quý giá. Trà atiso Đà Lạt từ lâu đã được y học dân gian Việt Nam sử dụng để hỗ trợ sức khỏe gan và giải độc cơ thể.</p>\n\n<h2>Thành Phần Hoạt Chất Trong Atiso</h2>\n<p>Nghiên cứu khoa học đã xác định nhiều hoạt chất có lợi trong atiso:</p>\n<ul>\n<li><strong>Cynarin:</strong> Hoạt chất chủ yếu hỗ trợ chức năng gan và túi mật</li>\n<li><strong>Luteolin và Apigenin:</strong> Flavonoid chống viêm và chống oxy hóa</li>\n<li><strong>Silymarin:</strong> Hỗ trợ tái tạo tế bào gan</li>\n<li><strong>Inulin:</strong> Chất xơ prebiotics tốt cho vi khuẩn đường ruột</li>\n</ul>\n\n<h2>Lợi Ích Sức Khỏe Được Khoa Học Xác Nhận</h2>\n<p>Các nghiên cứu lâm sàng đã chứng minh trà atiso có tác dụng:</p>\n<ul>\n<li>Hỗ trợ chức năng gan, giảm men gan ALT và AST</li>\n<li>Kích thích tiết mật, hỗ trợ tiêu hóa chất béo</li>\n<li>Giảm cholesterol LDL (cholesterol xấu)</li>\n<li>Chống oxy hóa, bảo vệ tế bào khỏi stress oxy hóa</li>\n<li>Hỗ trợ giảm cân (giảm hấp thu chất béo)</li>\n</ul>\n\n<h2>Cách Pha Trà Atiso Đúng Chuẩn</h2>\n<h3>Phương Pháp 1: Hãm Trà Nóng</h3>\n<ol>\n<li>Cho 5-7g trà atiso (1-2 gói) vào ấm</li>\n<li>Rót nước sôi 95-100°C</li>\n<li>Hãm 5-7 phút</li>\n<li>Lọc và uống nóng, có thể thêm chút mật ong</li>\n</ol>\n<h3>Phương Pháp 2: Trà Lạnh (Cold Brew)</h3>\n<ol>\n<li>Cho 10g trà atiso vào bình 1 lít</li>\n<li>Đổ nước lọc vào, đậy kín</li>\n<li>Để trong tủ lạnh 8-12 tiếng</li>\n<li>Lọc và uống lạnh – vị thanh mát tuyệt vời</li>\n</ol>', '/donggoi/z7505564735476_b57bfb9a1bb28329a1cdfb66736479f0.jpg', 'LIKEFOOD', 'Sức khỏe', 'Health', 1, '2026-03-10 00:00:00.000', '2026-05-30 09:57:00.401', '2026-05-30 09:57:00.401'),
(13, 'Mật Ong Rừng Tây Nguyên – Cách Phân Biệt Thật Giả Và Bảo Quản Đúng Cách', 'Tay Nguyen Forest Honey – How to Distinguish Real from Fake and Store Properly', 'mat-ong-rung-tay-nguyen-phan-biet-that-gia', 'Mật ong rừng Tây Nguyên là sản phẩm thường bị làm giả nhiều nhất. Hướng dẫn 7 cách đơn giản để phân biệt mật ong thật và bảo quản đúng cách để giữ nguyên chất lượng.', 'Mật ong rừng Tây Nguyên là sản phẩm thường bị làm giả nhiều nhất. Hướng dẫn 7 cách đơn giản để phân biệt mật ong thật và bảo quản đúng cách để giữ nguyên chất lượng.', '<h1>Mật Ong Rừng Tây Nguyên – Cách Phân Biệt Thật Giả Và Bảo Quản Đúng Cách</h1>\n<p>Mật ong rừng Tây Nguyên là sản phẩm có giá trị cao nhưng cũng là một trong những mặt hàng bị làm giả nhiều nhất trên thị trường. Hiểu được cách nhận biết mật ong thật sẽ giúp bạn không bị lừa và tận dụng tối đa công dụng của loại thực phẩm quý giá này.</p>\n\n<h2>Mật Ong Rừng Tây Nguyên Đặc Biệt Ở Điểm Nào?</h2>\n<p>Tây Nguyên với hệ thực vật rừng nguyên sinh phong phú là môi trường lý tưởng cho ong rừng làm tổ. Ong hút mật từ hàng trăm loài hoa rừng khác nhau như hoa rừng tự nhiên, cà phê, điều, hoa dại – tạo ra mật ong có thành phần hóa học phức tạp và hương vị đa dạng không loại mật ong nuôi nào sánh được.</p>\n\n<h2>7 Cách Phân Biệt Mật Ong Rừng Thật</h2>\n<h3>1. Thử Với Ngón Tay</h3>\n<p>Nhỏ một giọt mật ong lên ngón trỏ, dùng ngón cái chà nhẹ. Mật ong thật sẽ tạo cảm giác dính và không bị hòa tan ngay khi đổ nước vào. Mật ong giả (pha đường) sẽ tan nhanh và nhờn rít khác biệt.</p>\n<h3>2. Thử Với Giấy Thấm</h3>\n<p>Nhỏ vài giọt mật ong lên giấy ăn mỏng. Mật ong thật sẽ không thấm qua giấy vì độ ẩm thấp. Mật ong giả hoặc pha nước sẽ thấm ướt giấy.</p>\n<h3>3. Quan Sát Sự Kết Tinh</h3>\n<p>Mật ong thật có xu hướng kết tinh (đóng đường) sau một thời gian, đặc biệt là mật ong hoa cà phê. Đây là dấu hiệu tốt, không phải hỏng. Mật ong giả hiếm khi kết tinh tự nhiên.</p>\n<h3>4. Kiểm Tra Màu Sắc Và Độ Trong</h3>\n<p>Mật ong rừng Tây Nguyên thường có màu từ vàng sáng đến nâu sẫm tùy nguồn hoa. Mật ong có màu quá trong hoặc quá sẫm đều đáng nghi ngờ.</p>', '<h1>Mật Ong Rừng Tây Nguyên – Cách Phân Biệt Thật Giả Và Bảo Quản Đúng Cách</h1>\n<p>Mật ong rừng Tây Nguyên là sản phẩm có giá trị cao nhưng cũng là một trong những mặt hàng bị làm giả nhiều nhất trên thị trường. Hiểu được cách nhận biết mật ong thật sẽ giúp bạn không bị lừa và tận dụng tối đa công dụng của loại thực phẩm quý giá này.</p>\n\n<h2>Mật Ong Rừng Tây Nguyên Đặc Biệt Ở Điểm Nào?</h2>\n<p>Tây Nguyên với hệ thực vật rừng nguyên sinh phong phú là môi trường lý tưởng cho ong rừng làm tổ. Ong hút mật từ hàng trăm loài hoa rừng khác nhau như hoa rừng tự nhiên, cà phê, điều, hoa dại – tạo ra mật ong có thành phần hóa học phức tạp và hương vị đa dạng không loại mật ong nuôi nào sánh được.</p>\n\n<h2>7 Cách Phân Biệt Mật Ong Rừng Thật</h2>\n<h3>1. Thử Với Ngón Tay</h3>\n<p>Nhỏ một giọt mật ong lên ngón trỏ, dùng ngón cái chà nhẹ. Mật ong thật sẽ tạo cảm giác dính và không bị hòa tan ngay khi đổ nước vào. Mật ong giả (pha đường) sẽ tan nhanh và nhờn rít khác biệt.</p>\n<h3>2. Thử Với Giấy Thấm</h3>\n<p>Nhỏ vài giọt mật ong lên giấy ăn mỏng. Mật ong thật sẽ không thấm qua giấy vì độ ẩm thấp. Mật ong giả hoặc pha nước sẽ thấm ướt giấy.</p>\n<h3>3. Quan Sát Sự Kết Tinh</h3>\n<p>Mật ong thật có xu hướng kết tinh (đóng đường) sau một thời gian, đặc biệt là mật ong hoa cà phê. Đây là dấu hiệu tốt, không phải hỏng. Mật ong giả hiếm khi kết tinh tự nhiên.</p>\n<h3>4. Kiểm Tra Màu Sắc Và Độ Trong</h3>\n<p>Mật ong rừng Tây Nguyên thường có màu từ vàng sáng đến nâu sẫm tùy nguồn hoa. Mật ong có màu quá trong hoặc quá sẫm đều đáng nghi ngờ.</p>', '/donggoi/z7505564740297_0cda7f6f6a772b8f2dad30652e565f32.jpg', 'LIKEFOOD', 'Sức khỏe', 'Health', 1, '2026-03-15 00:00:00.000', '2026-05-30 09:57:00.407', '2026-05-30 09:57:00.407'),
(14, 'Nem Ninh Hòa – Đặc Sản Chua Ngọt Cay Của Xứ Trầm Hương Khánh Hòa', 'Ninh Hoa Sour Pork Roll – The Sweet-Sour-Spicy Specialty of Khanh Hoa', 'nem-ninh-hoa-dac-san-chua-ngot-cay-khanh-hoa', 'Nem Ninh Hòa là đặc sản nổi tiếng của Khánh Hòa với hương vị chua ngọt cay đặc trưng. Khám phá lịch sử, cách làm và cách thưởng thức nem Ninh Hòa chuẩn nhất.', 'Nem Ninh Hòa là đặc sản nổi tiếng của Khánh Hòa với hương vị chua ngọt cay đặc trưng. Khám phá lịch sử, cách làm và cách thưởng thức nem Ninh Hòa chuẩn nhất.', '<h1>Nem Ninh Hòa – Đặc Sản Chua Ngọt Cay Của Xứ Trầm Hương Khánh Hòa</h1>\n<p>Nhắc đến Khánh Hòa, người ta thường nghĩ ngay đến Nha Trang biển xanh cát trắng, nhưng ít người biết rằng vùng đất này còn là \"thủ đô nem chua\" của miền Trung Việt Nam. Nem Ninh Hòa – sản phẩm từ thị xã Ninh Hòa – đã vươn ra khắp nước và được xuất khẩu sang cộng đồng người Việt toàn thế giới.</p>\n\n<h2>Nemm Ninh Hòa Khác Gì Với Nem Chua Miền Nam?</h2>\n<p>Có sự khác biệt rõ ràng giữa nem Ninh Hòa và nem chua miền Nam:</p>\n<ul>\n<li><strong>Nem Ninh Hòa:</strong> Làm từ thịt heo tươi xay, cuốn lá vông hoặc lá ổi, lên men tự nhiên 3-5 ngày. Vị chua từ quá trình lên men lactic tự nhiên.</li>\n<li><strong>Nem chua miền Nam:</strong> Thường thêm bột năng, đóng trong túi nilon, lên men ít hơn, vị ít chua hơn.</li>\n</ul>\n\n<h2>Quy Trình Làm Nem Ninh Hòa Truyền Thống</h2>\n<ol>\n<li>Thịt heo tươi (đùi hoặc vai) xay mịn với da và mỡ theo tỷ lệ nhất định</li>\n<li>Trộn với muối, đường, tiêu, tỏi theo công thức bí truyền của từng nhà</li>\n<li>Cuốn chặt bằng lá vông nem (hoặc lá ổi) tạo hương thơm tự nhiên</li>\n<li>Buộc lại bằng lạt tre hoặc dây nilon</li>\n<li>Ủ ở nhiệt độ phòng 3-5 ngày cho lên men đủ độ chua</li>\n</ol>\n\n<h2>Cách Thưởng Thức Nem Ninh Hòa Đúng Cách</h2>\n<p>Nem Ninh Hòa ngon nhất khi ăn cùng:</p>\n<ul>\n<li>Tỏi và ớt tươi thái lát</li>\n<li>Bánh tráng cuốn hoặc bún tươi</li>\n<li>Chấm với tương hoisin hoặc tương ngọt</li>\n<li>Nước chấm: nước mắm – tỏi – ớt – đường – chanh</li>\n</ul>', '<h1>Nem Ninh Hòa – Đặc Sản Chua Ngọt Cay Của Xứ Trầm Hương Khánh Hòa</h1>\n<p>Nhắc đến Khánh Hòa, người ta thường nghĩ ngay đến Nha Trang biển xanh cát trắng, nhưng ít người biết rằng vùng đất này còn là \"thủ đô nem chua\" của miền Trung Việt Nam. Nem Ninh Hòa – sản phẩm từ thị xã Ninh Hòa – đã vươn ra khắp nước và được xuất khẩu sang cộng đồng người Việt toàn thế giới.</p>\n\n<h2>Nemm Ninh Hòa Khác Gì Với Nem Chua Miền Nam?</h2>\n<p>Có sự khác biệt rõ ràng giữa nem Ninh Hòa và nem chua miền Nam:</p>\n<ul>\n<li><strong>Nem Ninh Hòa:</strong> Làm từ thịt heo tươi xay, cuốn lá vông hoặc lá ổi, lên men tự nhiên 3-5 ngày. Vị chua từ quá trình lên men lactic tự nhiên.</li>\n<li><strong>Nem chua miền Nam:</strong> Thường thêm bột năng, đóng trong túi nilon, lên men ít hơn, vị ít chua hơn.</li>\n</ul>\n\n<h2>Quy Trình Làm Nem Ninh Hòa Truyền Thống</h2>\n<ol>\n<li>Thịt heo tươi (đùi hoặc vai) xay mịn với da và mỡ theo tỷ lệ nhất định</li>\n<li>Trộn với muối, đường, tiêu, tỏi theo công thức bí truyền của từng nhà</li>\n<li>Cuốn chặt bằng lá vông nem (hoặc lá ổi) tạo hương thơm tự nhiên</li>\n<li>Buộc lại bằng lạt tre hoặc dây nilon</li>\n<li>Ủ ở nhiệt độ phòng 3-5 ngày cho lên men đủ độ chua</li>\n</ol>\n\n<h2>Cách Thưởng Thức Nem Ninh Hòa Đúng Cách</h2>\n<p>Nem Ninh Hòa ngon nhất khi ăn cùng:</p>\n<ul>\n<li>Tỏi và ớt tươi thái lát</li>\n<li>Bánh tráng cuốn hoặc bún tươi</li>\n<li>Chấm với tương hoisin hoặc tương ngọt</li>\n<li>Nước chấm: nước mắm – tỏi – ớt – đường – chanh</li>\n</ul>', '/donggoi/z7505564745517_52a108b55ca4c181de118cd6bc541a66.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Regional Specialties', 1, '2026-03-20 00:00:00.000', '2026-05-30 09:57:00.412', '2026-05-30 09:57:00.412'),
(15, 'Bún Bò Huế – Công Thức Nấu Chuẩn Vị Cố Đô Cho Bếp Gia Đình Tại Mỹ', 'Hue Beef Noodle Soup – Authentic Imperial City Recipe for Vietnamese Families in America', 'bun-bo-hue-cong-thuc-nau-chuan-vi-co-do', 'Bún bò Huế là một trong những món bún nổi tiếng nhất Việt Nam, nổi bật bởi vị cay nồng và hương sả đặc trưng. Hướng dẫn nấu bún bò Huế chuẩn vị cho gia đình tại Mỹ.', 'Bún bò Huế là một trong những món bún nổi tiếng nhất Việt Nam, nổi bật bởi vị cay nồng và hương sả đặc trưng. Hướng dẫn nấu bún bò Huế chuẩn vị cho gia đình tại Mỹ.', '<h1>Bún Bò Huế – Công Thức Nấu Chuẩn Vị Cố Đô Cho Bếp Gia Đình Tại Mỹ</h1>\n<p>Bún bò Huế không chỉ là một món ăn – đó là toàn bộ tinh hoa ẩm thực của cố đô Huế được chắt lọc qua nhiều thế kỷ. Vị ngọt của xương bò hầm lâu, mùi thơm của sả và ruốc Huế, vị cay nồng của ớt – tất cả hòa quyện tạo nên thứ nước dùng không thể nhầm lẫn với bất kỳ loại bún nào khác.</p>\n\n<h2>Nguyên Liệu Đặc Biệt Của Bún Bò Huế</h2>\n<p>Điều làm bún bò Huế khác biệt nằm ở 3 nguyên liệu quan trọng:</p>\n<ul>\n<li><strong>Mắm ruốc Huế:</strong> Không thể thay thế – tạo vị đậm đà đặc trưng của nước dùng bún bò Huế</li>\n<li><strong>Sả tươi:</strong> Đập dập và nướng sơ trước khi nấu để tinh dầu thơm tỏa ra</li>\n<li><strong>Ớt bột Huế:</strong> Loại ớt màu đỏ đẹp, cay vừa phải tạo màu đỏ óng cho nước dùng</li>\n</ul>\n\n<h2>Công Thức Nấu Bún Bò Huế (8-10 người)</h2>\n<h3>Nguyên Liệu:</h3>\n<ul>\n<li>1kg giò heo (chân giò)</li>\n<li>500g xương bò</li>\n<li>300g thịt bò (bắp bò hoặc nạm)</li>\n<li>5 cây sả đập dập</li>\n<li>3 thìa mắm ruốc Huế</li>\n<li>2 thìa ớt bột</li>\n<li>1 củ hành tím</li>\n<li>Muối, đường, hạt nêm</li>\n<li>1kg bún bò Huế</li>\n</ul>\n<h3>Cách Nấu:</h3>\n<ol>\n<li>Blanch giò heo và xương bò trong nước sôi 5 phút, xả nước lạnh</li>\n<li>Ninh xương và giò heo trong 2 lít nước 1.5 giờ, vớt bọt liên tục</li>\n<li>Phi sả với dầu ăn đến vàng thơm, thêm mắm ruốc xào thơm</li>\n<li>Cho hỗn hợp sả ruốc vào nồi nước hầm</li>\n<li>Thêm ớt bột, nêm muối, đường cho vừa miệng</li>\n<li>Nấu thêm 30 phút, lọc nước dùng trong</li>\n</ol>', '<h1>Bún Bò Huế – Công Thức Nấu Chuẩn Vị Cố Đô Cho Bếp Gia Đình Tại Mỹ</h1>\n<p>Bún bò Huế không chỉ là một món ăn – đó là toàn bộ tinh hoa ẩm thực của cố đô Huế được chắt lọc qua nhiều thế kỷ. Vị ngọt của xương bò hầm lâu, mùi thơm của sả và ruốc Huế, vị cay nồng của ớt – tất cả hòa quyện tạo nên thứ nước dùng không thể nhầm lẫn với bất kỳ loại bún nào khác.</p>\n\n<h2>Nguyên Liệu Đặc Biệt Của Bún Bò Huế</h2>\n<p>Điều làm bún bò Huế khác biệt nằm ở 3 nguyên liệu quan trọng:</p>\n<ul>\n<li><strong>Mắm ruốc Huế:</strong> Không thể thay thế – tạo vị đậm đà đặc trưng của nước dùng bún bò Huế</li>\n<li><strong>Sả tươi:</strong> Đập dập và nướng sơ trước khi nấu để tinh dầu thơm tỏa ra</li>\n<li><strong>Ớt bột Huế:</strong> Loại ớt màu đỏ đẹp, cay vừa phải tạo màu đỏ óng cho nước dùng</li>\n</ul>\n\n<h2>Công Thức Nấu Bún Bò Huế (8-10 người)</h2>\n<h3>Nguyên Liệu:</h3>\n<ul>\n<li>1kg giò heo (chân giò)</li>\n<li>500g xương bò</li>\n<li>300g thịt bò (bắp bò hoặc nạm)</li>\n<li>5 cây sả đập dập</li>\n<li>3 thìa mắm ruốc Huế</li>\n<li>2 thìa ớt bột</li>\n<li>1 củ hành tím</li>\n<li>Muối, đường, hạt nêm</li>\n<li>1kg bún bò Huế</li>\n</ul>\n<h3>Cách Nấu:</h3>\n<ol>\n<li>Blanch giò heo và xương bò trong nước sôi 5 phút, xả nước lạnh</li>\n<li>Ninh xương và giò heo trong 2 lít nước 1.5 giờ, vớt bọt liên tục</li>\n<li>Phi sả với dầu ăn đến vàng thơm, thêm mắm ruốc xào thơm</li>\n<li>Cho hỗn hợp sả ruốc vào nồi nước hầm</li>\n<li>Thêm ớt bột, nêm muối, đường cho vừa miệng</li>\n<li>Nấu thêm 30 phút, lọc nước dùng trong</li>\n</ol>', '/donggoi/z7505564748092_5512a5fe8ea0f89d9c3f96c46d81fe69.jpg', 'LIKEFOOD', 'Công thức nấu ăn', 'Recipes', 1, '2026-03-25 00:00:00.000', '2026-05-30 09:57:00.417', '2026-05-30 09:57:00.417'),
(16, 'Bánh Pía Sóc Trăng – Đặc Sản Bánh Ngọt Nổi Tiếng Nhất Nam Bộ', 'Soc Trang Pia Cake – The Most Famous Sweet Pastry of Southern Vietnam', 'banh-pia-soc-trang-dac-san-banh-ngot-nam-bo', 'Bánh pía Sóc Trăng với nhân sầu riêng hoặc đậu xanh là đặc sản bánh ngọt nổi tiếng nhất miền Nam. Tìm hiểu lịch sử, cách làm và những thương hiệu bánh pía uy tín nhất.', 'Bánh pía Sóc Trăng với nhân sầu riêng hoặc đậu xanh là đặc sản bánh ngọt nổi tiếng nhất miền Nam. Tìm hiểu lịch sử, cách làm và những thương hiệu bánh pía uy tín nhất.', '<h1>Bánh Pía Sóc Trăng – Đặc Sản Bánh Ngọt Nổi Tiếng Nhất Nam Bộ</h1>\n<p>Nhắc đến đặc sản Sóc Trăng, người ta không thể không nhắc đến bánh pía – loại bánh ngọt có nguồn gốc từ người Hoa Triều Châu di cư vào Nam Bộ hàng trăm năm trước. Qua thời gian, bánh pía đã được Việt hóa và trở thành đặc sản không thể thiếu trong ẩm thực miền Tây.</p>\n\n<h2>Nguồn Gốc Lịch Sử Của Bánh Pía</h2>\n<p>Bánh pía (còn gọi là bánh lột da) có nguồn gốc từ bánh Suzhou Mooncake của người Hoa Triều Châu. Khi người Hoa di cư vào vùng Sóc Trăng, Bạc Liêu từ thế kỷ 17-18, họ mang theo nghề làm bánh truyền thống. Dần dần, công thức bánh được điều chỉnh để phù hợp với khẩu vị địa phương, thêm nhân sầu riêng – loại trái cây đặc trưng của miền Nam Việt Nam.</p>\n\n<h2>Các Loại Nhân Bánh Pía Phổ Biến</h2>\n<ul>\n<li><strong>Nhân sầu riêng:</strong> Ngon nhất và được yêu thích nhất – cơm sầu riêng nguyên chất xay mịn</li>\n<li><strong>Nhân đậu xanh:</strong> Truyền thống nhất – đậu xanh chà bông mịn, ngọt thanh</li>\n<li><strong>Nhân khoai môn:</strong> Vị bùi ngọt nhẹ của khoai môn nghiền mịn</li>\n<li><strong>Nhân trà xanh:</strong> Hiện đại, phổ biến với giới trẻ</li>\n<li><strong>Nhân hỗn hợp:</strong> Kết hợp sầu riêng và lòng đỏ trứng muối</li>\n</ul>\n\n<h2>Đặc Điểm Nhận Biết Bánh Pía Sóc Trăng Ngon</h2>\n<ul>\n<li>Vỏ bánh nhiều lớp, mỏng, giòn xốp</li>\n<li>Nhân đầy đặn, không khô, ẩm vừa phải</li>\n<li>Nhân sầu riêng phải có mùi thơm tự nhiên, không dùng hương liệu</li>\n<li>Màu vỏ bánh vàng đều đẹp, không quá sẫm</li>\n</ul>', '<h1>Bánh Pía Sóc Trăng – Đặc Sản Bánh Ngọt Nổi Tiếng Nhất Nam Bộ</h1>\n<p>Nhắc đến đặc sản Sóc Trăng, người ta không thể không nhắc đến bánh pía – loại bánh ngọt có nguồn gốc từ người Hoa Triều Châu di cư vào Nam Bộ hàng trăm năm trước. Qua thời gian, bánh pía đã được Việt hóa và trở thành đặc sản không thể thiếu trong ẩm thực miền Tây.</p>\n\n<h2>Nguồn Gốc Lịch Sử Của Bánh Pía</h2>\n<p>Bánh pía (còn gọi là bánh lột da) có nguồn gốc từ bánh Suzhou Mooncake của người Hoa Triều Châu. Khi người Hoa di cư vào vùng Sóc Trăng, Bạc Liêu từ thế kỷ 17-18, họ mang theo nghề làm bánh truyền thống. Dần dần, công thức bánh được điều chỉnh để phù hợp với khẩu vị địa phương, thêm nhân sầu riêng – loại trái cây đặc trưng của miền Nam Việt Nam.</p>\n\n<h2>Các Loại Nhân Bánh Pía Phổ Biến</h2>\n<ul>\n<li><strong>Nhân sầu riêng:</strong> Ngon nhất và được yêu thích nhất – cơm sầu riêng nguyên chất xay mịn</li>\n<li><strong>Nhân đậu xanh:</strong> Truyền thống nhất – đậu xanh chà bông mịn, ngọt thanh</li>\n<li><strong>Nhân khoai môn:</strong> Vị bùi ngọt nhẹ của khoai môn nghiền mịn</li>\n<li><strong>Nhân trà xanh:</strong> Hiện đại, phổ biến với giới trẻ</li>\n<li><strong>Nhân hỗn hợp:</strong> Kết hợp sầu riêng và lòng đỏ trứng muối</li>\n</ul>\n\n<h2>Đặc Điểm Nhận Biết Bánh Pía Sóc Trăng Ngon</h2>\n<ul>\n<li>Vỏ bánh nhiều lớp, mỏng, giòn xốp</li>\n<li>Nhân đầy đặn, không khô, ẩm vừa phải</li>\n<li>Nhân sầu riêng phải có mùi thơm tự nhiên, không dùng hương liệu</li>\n<li>Màu vỏ bánh vàng đều đẹp, không quá sẫm</li>\n</ul>', '/donggoi/z7505564753948_f0d81d65a7762dca7f17982490eaf9cf.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Tea & Confectionery', 1, '2026-04-01 00:00:00.000', '2026-05-30 09:57:00.421', '2026-05-30 09:57:00.421'),
(17, 'Khô Gà Cay Sả Tắc – Món Ăn Vặt Siêu Hot Của Giới Trẻ Việt Tại Mỹ', 'Spicy Lemongrass Kumquat Chicken Jerky – The Hottest Snack Among Young Vietnamese in America', 'kho-ga-cay-sa-tac-mon-an-vat-hot-gioi-tre-viet', 'Khô gà cay sả tắc đang trở thành xu hướng ăn vặt mới của giới trẻ Việt tại Mỹ. Hương vị chua cay độc đáo, dai thơm không ngấy – tìm hiểu tại sao món này lại hot đến vậy.', 'Khô gà cay sả tắc đang trở thành xu hướng ăn vặt mới của giới trẻ Việt tại Mỹ. Hương vị chua cay độc đáo, dai thơm không ngấy – tìm hiểu tại sao món này lại hot đến vậy.', '<h1>Khô Gà Cay Sả Tắc – Món Ăn Vặt Siêu Hot Của Giới Trẻ Việt Tại Mỹ</h1>\n<p>Trong những năm gần đây, khô gà cay sả tắc đã trở thành cơn sốt trong cộng đồng người Việt trẻ tại Mỹ. Khác với bò khô hay gà khô truyền thống, khô gà sả tắc có hương vị chua cay của tắc (quất) kết hợp thơm mát của sả tạo nên sự mới mẻ không thể cưỡng lại.</p>\n\n<h2>Tại Sao Khô Gà Sả Tắc Lại Hot Đến Vậy?</h2>\n<p>Sự kết hợp độc đáo giữa:</p>\n<ul>\n<li><strong>Thịt gà ức xé thớ:</strong> Mềm dai vừa phải, ít béo, phù hợp người ăn kiêng</li>\n<li><strong>Sả tươi:</strong> Mùi thơm mát, giúp khử mùi và kích thích vị giác</li>\n<li><strong>Tắc (quất) sấy:</strong> Vị chua tươi tự nhiên, khác hoàn toàn với giấm công nghiệp</li>\n<li><strong>Ớt hiểm:</strong> Cay nồng tự nhiên, không dùng ớt bột hóa học</li>\n</ul>\n\n<h2>Giá Trị Dinh Dưỡng Vượt Trội</h2>\n<p>So với các loại snack khác, khô gà cay sả tắc nổi bật về mặt dinh dưỡng:</p>\n<ul>\n<li>Protein cao từ thịt gà (30-35% trọng lượng sản phẩm)</li>\n<li>Ít chất béo bão hòa</li>\n<li>Không dầu chiên, không chất bảo quản nhân tạo</li>\n<li>Vitamin C từ tắc tươi</li>\n</ul>\n\n<h2>Cách Thưởng Thức Và Kết Hợp</h2>\n<p>Khô gà sả tắc ngon nhất khi ăn kèm:</p>\n<ul>\n<li>Bia lạnh – combo hoàn hảo nhất</li>\n<li>Cơm trắng – bữa cơm nhanh tiện lợi</li>\n<li>Bánh mì gối – ăn sáng hoặc ăn nhẹ</li>\n<li>Rượu vang đỏ – bất ngờ nhưng ngon</li>\n</ul>', '<h1>Khô Gà Cay Sả Tắc – Món Ăn Vặt Siêu Hot Của Giới Trẻ Việt Tại Mỹ</h1>\n<p>Trong những năm gần đây, khô gà cay sả tắc đã trở thành cơn sốt trong cộng đồng người Việt trẻ tại Mỹ. Khác với bò khô hay gà khô truyền thống, khô gà sả tắc có hương vị chua cay của tắc (quất) kết hợp thơm mát của sả tạo nên sự mới mẻ không thể cưỡng lại.</p>\n\n<h2>Tại Sao Khô Gà Sả Tắc Lại Hot Đến Vậy?</h2>\n<p>Sự kết hợp độc đáo giữa:</p>\n<ul>\n<li><strong>Thịt gà ức xé thớ:</strong> Mềm dai vừa phải, ít béo, phù hợp người ăn kiêng</li>\n<li><strong>Sả tươi:</strong> Mùi thơm mát, giúp khử mùi và kích thích vị giác</li>\n<li><strong>Tắc (quất) sấy:</strong> Vị chua tươi tự nhiên, khác hoàn toàn với giấm công nghiệp</li>\n<li><strong>Ớt hiểm:</strong> Cay nồng tự nhiên, không dùng ớt bột hóa học</li>\n</ul>\n\n<h2>Giá Trị Dinh Dưỡng Vượt Trội</h2>\n<p>So với các loại snack khác, khô gà cay sả tắc nổi bật về mặt dinh dưỡng:</p>\n<ul>\n<li>Protein cao từ thịt gà (30-35% trọng lượng sản phẩm)</li>\n<li>Ít chất béo bão hòa</li>\n<li>Không dầu chiên, không chất bảo quản nhân tạo</li>\n<li>Vitamin C từ tắc tươi</li>\n</ul>\n\n<h2>Cách Thưởng Thức Và Kết Hợp</h2>\n<p>Khô gà sả tắc ngon nhất khi ăn kèm:</p>\n<ul>\n<li>Bia lạnh – combo hoàn hảo nhất</li>\n<li>Cơm trắng – bữa cơm nhanh tiện lợi</li>\n<li>Bánh mì gối – ăn sáng hoặc ăn nhẹ</li>\n<li>Rượu vang đỏ – bất ngờ nhưng ngon</li>\n</ul>', '/donggoi/z7505564758947_430f3c8c878622add39d0a19ed9d6891.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Snacks', 1, '2026-04-05 00:00:00.000', '2026-05-30 09:57:00.426', '2026-05-30 09:57:00.426'),
(18, 'Sầu Riêng Sấy Khô – Cách Thưởng Thức \'Vua Trái Cây\' Tiện Lợi Nhất', 'Freeze-Dried Durian – The Most Convenient Way to Enjoy the \'King of Fruits\'', 'sau-rieng-say-kho-thuong-thuc-vua-trai-cay-tien-loi', 'Sầu riêng sấy khô cho phép bạn thưởng thức \'vua trái cây\' bất cứ lúc nào mà không cần lo về mùi hoặc độ tươi. Tìm hiểu sự khác biệt giữa các phương pháp sấy và cách chọn sản phẩm tốt nhất.', 'Sầu riêng sấy khô cho phép bạn thưởng thức \'vua trái cây\' bất cứ lúc nào mà không cần lo về mùi hoặc độ tươi. Tìm hiểu sự khác biệt giữa các phương pháp sấy và cách chọn sản phẩm tốt nhất.', '<h1>Sầu Riêng Sấy Khô – Cách Thưởng Thức \'Vua Trái Cây\' Tiện Lợi Nhất</h1>\n<p>Sầu riêng – loại trái cây được mệnh danh là \"vua trái cây\" tại Đông Nam Á – từ lâu đã là niềm tự hào của ẩm thực Việt Nam. Tuy nhiên, vấn đề về mùi và khó bảo quản khiến nhiều người ngại mua. Sầu riêng sấy khô đã giải quyết hoàn toàn bài toán này.</p>\n\n<h2>Các Phương Pháp Sấy Sầu Riêng</h2>\n<h3>Sấy Thăng Hoa (Freeze-Drying)</h3>\n<p>Phương pháp cao cấp nhất, đắt tiền nhất. Sầu riêng được đông lạnh ở -40°C rồi làm bay hơi nước ở áp suất thấp. Kết quả: sản phẩm giữ nguyên 95% dinh dưỡng, màu sắc và hương vị. Miếng sầu riêng sấy thăng hoa có cấu trúc xốp nhẹ, tan ngay trong miệng.</p>\n<h3>Sấy Chân Không (Vacuum Frying)</h3>\n<p>Chiên trong dầu ở áp suất thấp nhiệt độ 80-120°C. Sản phẩm giòn rụm, màu vàng đẹp, giữ được hương vị nhưng có hàm lượng dầu (10-15%). Đây là loại phổ biến nhất trên thị trường.</p>\n<h3>Sấy Nhiệt Thông Thường</h3>\n<p>Phương pháp rẻ nhất nhưng làm mất nhiều dinh dưỡng và hương vị nhất. Sản phẩm thường cứng, màu nâu không đẹp.</p>\n\n<h2>Cách Nhận Biết Sầu Riêng Sấy Chất Lượng</h2>\n<ul>\n<li>Màu vàng cam tự nhiên của sầu riêng, không phải vàng chanh hoặc nâu</li>\n<li>Mùi thơm đặc trưng của sầu riêng khi mở túi</li>\n<li>Không có mùi dầu rán hoặc mùi lạ</li>\n<li>Thành phần chỉ có sầu riêng và muối (không có hương liệu)</li>\n</ul>\n\n<h2>Lợi Ích Dinh Dưỡng Của Sầu Riêng</h2>\n<p>Sầu riêng dù sấy hay tươi đều giàu dinh dưỡng:</p>\n<ul>\n<li>Giàu chất béo thực vật tốt (MUFA)</li>\n<li>Vitamin C, B6, thiamine phong phú</li>\n<li>Kali, magie, đồng – các khoáng chất quan trọng</li>\n<li>Tryptophan – axit amin giúp cải thiện tâm trạng</li>\n</ul>', '<h1>Sầu Riêng Sấy Khô – Cách Thưởng Thức \'Vua Trái Cây\' Tiện Lợi Nhất</h1>\n<p>Sầu riêng – loại trái cây được mệnh danh là \"vua trái cây\" tại Đông Nam Á – từ lâu đã là niềm tự hào của ẩm thực Việt Nam. Tuy nhiên, vấn đề về mùi và khó bảo quản khiến nhiều người ngại mua. Sầu riêng sấy khô đã giải quyết hoàn toàn bài toán này.</p>\n\n<h2>Các Phương Pháp Sấy Sầu Riêng</h2>\n<h3>Sấy Thăng Hoa (Freeze-Drying)</h3>\n<p>Phương pháp cao cấp nhất, đắt tiền nhất. Sầu riêng được đông lạnh ở -40°C rồi làm bay hơi nước ở áp suất thấp. Kết quả: sản phẩm giữ nguyên 95% dinh dưỡng, màu sắc và hương vị. Miếng sầu riêng sấy thăng hoa có cấu trúc xốp nhẹ, tan ngay trong miệng.</p>\n<h3>Sấy Chân Không (Vacuum Frying)</h3>\n<p>Chiên trong dầu ở áp suất thấp nhiệt độ 80-120°C. Sản phẩm giòn rụm, màu vàng đẹp, giữ được hương vị nhưng có hàm lượng dầu (10-15%). Đây là loại phổ biến nhất trên thị trường.</p>\n<h3>Sấy Nhiệt Thông Thường</h3>\n<p>Phương pháp rẻ nhất nhưng làm mất nhiều dinh dưỡng và hương vị nhất. Sản phẩm thường cứng, màu nâu không đẹp.</p>\n\n<h2>Cách Nhận Biết Sầu Riêng Sấy Chất Lượng</h2>\n<ul>\n<li>Màu vàng cam tự nhiên của sầu riêng, không phải vàng chanh hoặc nâu</li>\n<li>Mùi thơm đặc trưng của sầu riêng khi mở túi</li>\n<li>Không có mùi dầu rán hoặc mùi lạ</li>\n<li>Thành phần chỉ có sầu riêng và muối (không có hương liệu)</li>\n</ul>\n\n<h2>Lợi Ích Dinh Dưỡng Của Sầu Riêng</h2>\n<p>Sầu riêng dù sấy hay tươi đều giàu dinh dưỡng:</p>\n<ul>\n<li>Giàu chất béo thực vật tốt (MUFA)</li>\n<li>Vitamin C, B6, thiamine phong phú</li>\n<li>Kali, magie, đồng – các khoáng chất quan trọng</li>\n<li>Tryptophan – axit amin giúp cải thiện tâm trạng</li>\n</ul>', '/donggoi/z7505564764977_b2c4811ea9d79d33f7353632ecc85303.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Dried Fruits', 1, '2026-04-10 00:00:00.000', '2026-05-30 09:57:00.431', '2026-05-30 09:57:00.431'),
(19, 'Thịt Lợn Sấy Khô Sơn La – Đặc Sản Lợn Cắp Nách Của Người Thái Tây Bắc', 'Son La Dried Pork – The Black Pig Specialty of the Thai Ethnic People of Northwest Vietnam', 'thit-lon-say-kho-son-la-dac-san-lon-cap-nach', 'Thịt lợn sấy khô Sơn La làm từ lợn cắp nách – giống lợn đen bản địa của người Thái Tây Bắc. Vị đậm đà, thơm khói núi rừng là hương vị không thể quên.', 'Thịt lợn sấy khô Sơn La làm từ lợn cắp nách – giống lợn đen bản địa của người Thái Tây Bắc. Vị đậm đà, thơm khói núi rừng là hương vị không thể quên.', '<h1>Thịt Lợn Sấy Khô Sơn La – Đặc Sản Lợn Cắp Nách Của Người Thái Tây Bắc</h1>\n<p>Trong chuyến du lịch Tây Bắc, nếu bạn được người Thái mời ăn thịt lợn sấy hun khói, đó là một đặc ân và trải nghiệm ẩm thực không thể quên. Giống lợn đen bản địa nuôi thả trong rừng núi Sơn La tạo ra thịt có hương vị hoàn toàn khác biệt so với lợn nuôi công nghiệp.</p>\n\n<h2>Lợn Cắp Nách – Giống Lợn Quý Của Tây Bắc</h2>\n<p>Lợn cắp nách (lợn mọi, lợn đen bản) là giống lợn địa phương của đồng bào dân tộc thiểu số vùng Tây Bắc. Chúng được thả nuôi tự do trong rừng, tự kiếm ăn bằng rễ cây, củ rừng và cỏ dại. Do vận động nhiều và ăn thức ăn tự nhiên, thịt lợn cắp nách có:</p>\n<ul>\n<li>Màu hồng đỏ đẹp, thớ thịt mịn và chắc</li>\n<li>Lớp mỡ mỏng, không béo ngấy</li>\n<li>Hương vị đậm đà, ngọt tự nhiên không cần nhiều gia vị</li>\n<li>Hàm lượng protein cao, ít chất béo bão hòa</li>\n</ul>\n\n<h2>Quy Trình Làm Thịt Lợn Sấy Truyền Thống</h2>\n<ol>\n<li>Thịt lợn sơ chế, thái miếng dày 2-3cm</li>\n<li>Ướp muối và gia vị: mắc khén (tiêu rừng), ớt rừng, gừng, tỏi, sả</li>\n<li>Tẩm ướp 24 tiếng trong nhiệt độ mát</li>\n<li>Treo thịt lên gác bếp, sấy khói củi từ 3-5 ngày</li>\n<li>Sau khi khô hoàn toàn, bảo quản trong túi kín</li>\n</ol>\n\n<h2>Gia Vị Đặc Trưng Của Thịt Lợn Sấy Tây Bắc</h2>\n<p>Điểm đặc biệt của thịt lợn sấy Sơn La nằm ở gia vị:</p>\n<ul>\n<li><strong>Mắc khén:</strong> Loại tiêu rừng Tây Bắc có hương thơm đặc biệt không loại tiêu nào có được</li>\n<li><strong>Ớt rừng:</strong> Nhỏ nhưng cực cay, thơm hơn ớt trồng</li>\n<li><strong>Gừng rừng:</strong> Vị cay ấm, thơm hơn gừng thường</li>\n</ul>', '<h1>Thịt Lợn Sấy Khô Sơn La – Đặc Sản Lợn Cắp Nách Của Người Thái Tây Bắc</h1>\n<p>Trong chuyến du lịch Tây Bắc, nếu bạn được người Thái mời ăn thịt lợn sấy hun khói, đó là một đặc ân và trải nghiệm ẩm thực không thể quên. Giống lợn đen bản địa nuôi thả trong rừng núi Sơn La tạo ra thịt có hương vị hoàn toàn khác biệt so với lợn nuôi công nghiệp.</p>\n\n<h2>Lợn Cắp Nách – Giống Lợn Quý Của Tây Bắc</h2>\n<p>Lợn cắp nách (lợn mọi, lợn đen bản) là giống lợn địa phương của đồng bào dân tộc thiểu số vùng Tây Bắc. Chúng được thả nuôi tự do trong rừng, tự kiếm ăn bằng rễ cây, củ rừng và cỏ dại. Do vận động nhiều và ăn thức ăn tự nhiên, thịt lợn cắp nách có:</p>\n<ul>\n<li>Màu hồng đỏ đẹp, thớ thịt mịn và chắc</li>\n<li>Lớp mỡ mỏng, không béo ngấy</li>\n<li>Hương vị đậm đà, ngọt tự nhiên không cần nhiều gia vị</li>\n<li>Hàm lượng protein cao, ít chất béo bão hòa</li>\n</ul>\n\n<h2>Quy Trình Làm Thịt Lợn Sấy Truyền Thống</h2>\n<ol>\n<li>Thịt lợn sơ chế, thái miếng dày 2-3cm</li>\n<li>Ướp muối và gia vị: mắc khén (tiêu rừng), ớt rừng, gừng, tỏi, sả</li>\n<li>Tẩm ướp 24 tiếng trong nhiệt độ mát</li>\n<li>Treo thịt lên gác bếp, sấy khói củi từ 3-5 ngày</li>\n<li>Sau khi khô hoàn toàn, bảo quản trong túi kín</li>\n</ol>\n\n<h2>Gia Vị Đặc Trưng Của Thịt Lợn Sấy Tây Bắc</h2>\n<p>Điểm đặc biệt của thịt lợn sấy Sơn La nằm ở gia vị:</p>\n<ul>\n<li><strong>Mắc khén:</strong> Loại tiêu rừng Tây Bắc có hương thơm đặc biệt không loại tiêu nào có được</li>\n<li><strong>Ớt rừng:</strong> Nhỏ nhưng cực cay, thơm hơn ớt trồng</li>\n<li><strong>Gừng rừng:</strong> Vị cay ấm, thơm hơn gừng thường</li>\n</ul>', '/donggoi/z7505564768752_18751c88b938fdafd23a14f74aea42de.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Regional Specialties', 1, '2026-04-15 00:00:00.000', '2026-05-30 09:57:00.436', '2026-05-30 09:57:00.436'),
(20, 'Trà Móc Câu Thái Nguyên – Vì Sao Là Loại Trà Ngon Nhất Việt Nam?', 'Thai Nguyen Lotus-Bud Green Tea – Why Is It Vietnam\'s Best Tea?', 'tra-moc-cau-thai-nguyen-loai-tra-ngon-nhat-viet-nam', 'Trà móc câu Thái Nguyên từ lâu được mệnh danh là loại trà xanh ngon nhất Việt Nam. Tìm hiểu về vùng chè đặc biệt, quy trình sao chế và cách pha trà đúng chuẩn.', 'Trà móc câu Thái Nguyên từ lâu được mệnh danh là loại trà xanh ngon nhất Việt Nam. Tìm hiểu về vùng chè đặc biệt, quy trình sao chế và cách pha trà đúng chuẩn.', '<h1>Trà Móc Câu Thái Nguyên – Vì Sao Là Loại Trà Ngon Nhất Việt Nam?</h1>\n<p>Trà Thái Nguyên – đặc biệt là trà móc câu – đã được mệnh danh là \"đệ nhất danh trà\" của Việt Nam từ hàng trăm năm nay. Vùng chè Tân Cương, thành phố Thái Nguyên, với điều kiện thổ nhưỡng và khí hậu đặc biệt đã tạo ra giống chè có hương vị không đâu sánh được.</p>\n\n<h2>Điều Gì Tạo Nên Sự Đặc Biệt Của Trà Thái Nguyên?</h2>\n<p>Vùng đất Tân Cương sở hữu những yếu tố tự nhiên lý tưởng:</p>\n<ul>\n<li><strong>Độ cao:</strong> 300-500m so với mực nước biển – đủ cao để có khí hậu mát nhưng không quá lạnh</li>\n<li><strong>Đất đỏ vàng:</strong> Giàu khoáng chất, tơi xốp, thoát nước tốt</li>\n<li><strong>Sương mù buổi sáng:</strong> Giúp búp chè phát triển chậm, tích lũy nhiều tinh chất</li>\n<li><strong>Khí hậu 4 mùa rõ ràng:</strong> Cho phép thu hoạch chè nhiều đợt trong năm</li>\n</ul>\n\n<h2>Trà Móc Câu Là Gì?</h2>\n<p>\"Móc câu\" là cách mô tả hình dạng của lá trà sau khi sao – búp trà cuộn lại như cái móc câu. Đây là hình thái đặc trưng của trà Thái Nguyên sao thủ công, khác với trà sao máy có hình dạng thẳng hoặc xoắn đều.</p>\n\n<h2>Quy Trình Sao Chè Thủ Công Truyền Thống</h2>\n<ol>\n<li><strong>Hái chè:</strong> Chỉ hái búp 1 tôm 2 lá hoặc 1 tôm 3 lá buổi sáng sớm</li>\n<li><strong>Diệt men:</strong> Sao trong chảo gang nóng 300°C để diệt enzyme oxy hóa</li>\n<li><strong>Vò chè:</strong> Vò tay khi chè còn nóng, tạo hình móc câu đặc trưng</li>\n<li><strong>Sấy khô:</strong> Sấy ở nhiệt độ thấp 80-100°C đến độ ẩm dưới 5%</li>\n<li><strong>Đóng gói:</strong> Đóng trong túi nhôm kín để giữ hương</li>\n</ol>\n\n<h2>Cách Pha Trà Móc Câu Đúng Chuẩn</h2>\n<p>Trà móc câu Thái Nguyên pha đúng cách cho màu xanh vàng đẹp, hương thơm đặc trưng:</p>\n<ul>\n<li>Nhiệt độ nước: 75-85°C (không quá sôi)</li>\n<li>Lượng trà: 5g / 150ml nước</li>\n<li>Thời gian hãm: 2-3 phút lần 1, 3-4 phút lần 2</li>\n<li>Ấm trà nên dùng loại gốm hoặc đất nung</li>\n</ul>', '<h1>Trà Móc Câu Thái Nguyên – Vì Sao Là Loại Trà Ngon Nhất Việt Nam?</h1>\n<p>Trà Thái Nguyên – đặc biệt là trà móc câu – đã được mệnh danh là \"đệ nhất danh trà\" của Việt Nam từ hàng trăm năm nay. Vùng chè Tân Cương, thành phố Thái Nguyên, với điều kiện thổ nhưỡng và khí hậu đặc biệt đã tạo ra giống chè có hương vị không đâu sánh được.</p>\n\n<h2>Điều Gì Tạo Nên Sự Đặc Biệt Của Trà Thái Nguyên?</h2>\n<p>Vùng đất Tân Cương sở hữu những yếu tố tự nhiên lý tưởng:</p>\n<ul>\n<li><strong>Độ cao:</strong> 300-500m so với mực nước biển – đủ cao để có khí hậu mát nhưng không quá lạnh</li>\n<li><strong>Đất đỏ vàng:</strong> Giàu khoáng chất, tơi xốp, thoát nước tốt</li>\n<li><strong>Sương mù buổi sáng:</strong> Giúp búp chè phát triển chậm, tích lũy nhiều tinh chất</li>\n<li><strong>Khí hậu 4 mùa rõ ràng:</strong> Cho phép thu hoạch chè nhiều đợt trong năm</li>\n</ul>\n\n<h2>Trà Móc Câu Là Gì?</h2>\n<p>\"Móc câu\" là cách mô tả hình dạng của lá trà sau khi sao – búp trà cuộn lại như cái móc câu. Đây là hình thái đặc trưng của trà Thái Nguyên sao thủ công, khác với trà sao máy có hình dạng thẳng hoặc xoắn đều.</p>\n\n<h2>Quy Trình Sao Chè Thủ Công Truyền Thống</h2>\n<ol>\n<li><strong>Hái chè:</strong> Chỉ hái búp 1 tôm 2 lá hoặc 1 tôm 3 lá buổi sáng sớm</li>\n<li><strong>Diệt men:</strong> Sao trong chảo gang nóng 300°C để diệt enzyme oxy hóa</li>\n<li><strong>Vò chè:</strong> Vò tay khi chè còn nóng, tạo hình móc câu đặc trưng</li>\n<li><strong>Sấy khô:</strong> Sấy ở nhiệt độ thấp 80-100°C đến độ ẩm dưới 5%</li>\n<li><strong>Đóng gói:</strong> Đóng trong túi nhôm kín để giữ hương</li>\n</ol>\n\n<h2>Cách Pha Trà Móc Câu Đúng Chuẩn</h2>\n<p>Trà móc câu Thái Nguyên pha đúng cách cho màu xanh vàng đẹp, hương thơm đặc trưng:</p>\n<ul>\n<li>Nhiệt độ nước: 75-85°C (không quá sôi)</li>\n<li>Lượng trà: 5g / 150ml nước</li>\n<li>Thời gian hãm: 2-3 phút lần 1, 3-4 phút lần 2</li>\n<li>Ấm trà nên dùng loại gốm hoặc đất nung</li>\n</ul>', '/donggoi/z7505564774640_25ba15fe66de08ad167261adb31b9714.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Tea & Confectionery', 1, '2026-04-20 00:00:00.000', '2026-05-30 09:57:00.440', '2026-05-30 09:57:00.440'),
(21, 'Bánh Tráng Trộn Tây Ninh – Món Ăn Đường Phố Thần Thánh Của Việt Nam', 'Tay Ninh Mixed Rice Paper – Vietnam\'s Most Beloved Street Food', 'banh-trang-tron-tay-ninh-mon-an-duong-pho-than-thanh', 'Bánh tráng trộn Tây Ninh là món ăn đường phố biểu tượng của Việt Nam, được giới trẻ mê mẩn. Tìm hiểu cách trộn bánh tráng chuẩn vị Tây Ninh và lý do món này chinh phục vị giác toàn cầu.', 'Bánh tráng trộn Tây Ninh là món ăn đường phố biểu tượng của Việt Nam, được giới trẻ mê mẩn. Tìm hiểu cách trộn bánh tráng chuẩn vị Tây Ninh và lý do món này chinh phục vị giác toàn cầu.', '<h1>Bánh Tráng Trộn Tây Ninh – Món Ăn Đường Phố Thần Thánh Của Việt Nam</h1>\n<p>Nếu có một món ăn đường phố Việt Nam được gọi là \"thần thánh\", đó chính là bánh tráng trộn Tây Ninh. Đơn giản từ nguyên liệu, không tốn kém, nhưng hương vị lại vô cùng hấp dẫn với sự kết hợp tinh tế của chua – cay – mặn – ngọt trong một đĩa ăn.</p>\n\n<h2>Nguồn Gốc Của Bánh Tráng Tây Ninh</h2>\n<p>Tây Ninh từ lâu đã nổi tiếng là \"vương quốc bánh tráng\" của miền Nam Việt Nam. Khí hậu khô ráo, nguồn nước sạch và gạo ngon địa phương tạo điều kiện lý tưởng cho nghề làm bánh tráng. Bánh tráng Tây Ninh nổi tiếng bởi độ mỏng đều, dai giòn khi nướng và không bị vỡ khi trộn.</p>\n\n<h2>Nguyên Liệu Trộn Bánh Tráng Đầy Đủ</h2>\n<ul>\n<li>Bánh tráng dẻo Tây Ninh cắt sợi</li>\n<li>Muối tôm Tây Ninh</li>\n<li>Sa tế chay Đà Nẵng</li>\n<li>Xoài xanh bào sợi</li>\n<li>Tôm khô Cà Mau</li>\n<li>Trứng cút luộc</li>\n<li>Hành phi vàng</li>\n<li>Rau răm</li>\n<li>Mỡ hành (hoặc dầu ăn)</li>\n</ul>\n\n<h2>Cách Trộn Bánh Tráng Chuẩn Vị</h2>\n<ol>\n<li>Cắt bánh tráng thành sợi 2-3cm, để trong tô lớn</li>\n<li>Thêm xoài xanh bào sợi, trứng cút cắt đôi</li>\n<li>Rắc muối tôm, sa tế theo khẩu vị</li>\n<li>Thêm tôm khô và mỡ hành</li>\n<li>Trộn đều nhanh tay để bánh ngấm gia vị</li>\n<li>Rắc thêm hành phi và rau răm thái nhỏ</li>\n<li>Ăn ngay khi vừa trộn, không để lâu</li>\n</ol>', '<h1>Bánh Tráng Trộn Tây Ninh – Món Ăn Đường Phố Thần Thánh Của Việt Nam</h1>\n<p>Nếu có một món ăn đường phố Việt Nam được gọi là \"thần thánh\", đó chính là bánh tráng trộn Tây Ninh. Đơn giản từ nguyên liệu, không tốn kém, nhưng hương vị lại vô cùng hấp dẫn với sự kết hợp tinh tế của chua – cay – mặn – ngọt trong một đĩa ăn.</p>\n\n<h2>Nguồn Gốc Của Bánh Tráng Tây Ninh</h2>\n<p>Tây Ninh từ lâu đã nổi tiếng là \"vương quốc bánh tráng\" của miền Nam Việt Nam. Khí hậu khô ráo, nguồn nước sạch và gạo ngon địa phương tạo điều kiện lý tưởng cho nghề làm bánh tráng. Bánh tráng Tây Ninh nổi tiếng bởi độ mỏng đều, dai giòn khi nướng và không bị vỡ khi trộn.</p>\n\n<h2>Nguyên Liệu Trộn Bánh Tráng Đầy Đủ</h2>\n<ul>\n<li>Bánh tráng dẻo Tây Ninh cắt sợi</li>\n<li>Muối tôm Tây Ninh</li>\n<li>Sa tế chay Đà Nẵng</li>\n<li>Xoài xanh bào sợi</li>\n<li>Tôm khô Cà Mau</li>\n<li>Trứng cút luộc</li>\n<li>Hành phi vàng</li>\n<li>Rau răm</li>\n<li>Mỡ hành (hoặc dầu ăn)</li>\n</ul>\n\n<h2>Cách Trộn Bánh Tráng Chuẩn Vị</h2>\n<ol>\n<li>Cắt bánh tráng thành sợi 2-3cm, để trong tô lớn</li>\n<li>Thêm xoài xanh bào sợi, trứng cút cắt đôi</li>\n<li>Rắc muối tôm, sa tế theo khẩu vị</li>\n<li>Thêm tôm khô và mỡ hành</li>\n<li>Trộn đều nhanh tay để bánh ngấm gia vị</li>\n<li>Rắc thêm hành phi và rau răm thái nhỏ</li>\n<li>Ăn ngay khi vừa trộn, không để lâu</li>\n</ol>', '/donggoi/z7505564778689_7dcfd553c3107f2e130150966053d04f.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Snacks', 1, '2026-04-25 00:00:00.000', '2026-05-30 09:57:00.446', '2026-05-30 09:57:00.446');
INSERT INTO `bai_viet` (`ma_bai_viet`, `tieu_de`, `tieu_de_en`, `duong_dan_tinh`, `tom_tat`, `tom_tat_en`, `noi_dung`, `noi_dung_en`, `anh_dai_dien`, `ten_tac_gia`, `danh_muc`, `danh_muc_en`, `da_xuat_ban`, `ngay_xuat_ban`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(22, 'Đường Thốt Nốt An Giang – Loại Đường Lành Mạnh Từ Thiên Nhiên', 'An Giang Palm Sugar – The Healthiest Natural Sugar from the Mekong Delta', 'duong-thot-not-an-giang-loai-duong-lanh-manh', 'Đường thốt nốt An Giang được làm từ nước hoa cây thốt nốt, ngọt thanh tự nhiên và giàu dưỡng chất hơn đường công nghiệp. Tìm hiểu cách sản xuất và lợi ích sức khỏe của loại đường đặc biệt này.', 'Đường thốt nốt An Giang được làm từ nước hoa cây thốt nốt, ngọt thanh tự nhiên và giàu dưỡng chất hơn đường công nghiệp. Tìm hiểu cách sản xuất và lợi ích sức khỏe của loại đường đặc biệt này.', '<h1>Đường Thốt Nốt An Giang – Loại Đường Lành Mạnh Từ Thiên Nhiên</h1>\n<p>Trong vùng Bảy Núi – Thất Sơn của An Giang, những hàng cây thốt nốt cao vút, cây cổ thụ gắn liền với văn hóa người Khmer Nam Bộ. Từ hoa cây thốt nốt, người dân Tri Tôn và Tịnh Biên đã sản xuất ra loại đường đặc biệt – đường thốt nốt – với hương vị và giá trị dinh dưỡng vượt trội so với đường mía thông thường.</p>\n\n<h2>Quy Trình Làm Đường Thốt Nốt</h2>\n<p>Làm đường thốt nốt là nghề vất vả đòi hỏi kinh nghiệm và sự khéo léo:</p>\n<ol>\n<li><strong>Leo cây:</strong> Hàng ngày, người thợ leo lên những cây thốt nốt cao 15-20m để thu hoạch nước hoa</li>\n<li><strong>Thu nước:</strong> Nước hoa thốt nốt được hứng trong ống tre, thu 2 lần/ngày vào sáng sớm và chiều tối</li>\n<li><strong>Nấu đường:</strong> Nước hoa được nấu trong chảo lớn, khuấy đều liên tục từ 4-6 giờ</li>\n<li><strong>Tạo hình:</strong> Khi đặc lại, đổ vào khuôn tròn hoặc đựng trong hũ</li>\n<li><strong>Làm nguội:</strong> Đường thốt nốt đặc lại thành khối sau 1-2 giờ</li>\n</ol>\n\n<h2>Đường Thốt Nốt Vs Đường Mía – Sự Khác Biệt</h2>\n<p>Nghiên cứu khoa học chỉ ra những điểm khác biệt quan trọng:</p>\n<ul>\n<li><strong>Chỉ số đường huyết (GI):</strong> Đường thốt nốt GI 35-54, thấp hơn đường mía (GI 65-70)</li>\n<li><strong>Khoáng chất:</strong> Giàu kali, magie, photpho hơn đường mía nhiều lần</li>\n<li><strong>Vitamin B:</strong> Chứa B1, B2, B3 tự nhiên</li>\n<li><strong>Hương vị:</strong> Vị ngọt thanh có hậu, không gắt như đường mía</li>\n</ul>', '<h1>Đường Thốt Nốt An Giang – Loại Đường Lành Mạnh Từ Thiên Nhiên</h1>\n<p>Trong vùng Bảy Núi – Thất Sơn của An Giang, những hàng cây thốt nốt cao vút, cây cổ thụ gắn liền với văn hóa người Khmer Nam Bộ. Từ hoa cây thốt nốt, người dân Tri Tôn và Tịnh Biên đã sản xuất ra loại đường đặc biệt – đường thốt nốt – với hương vị và giá trị dinh dưỡng vượt trội so với đường mía thông thường.</p>\n\n<h2>Quy Trình Làm Đường Thốt Nốt</h2>\n<p>Làm đường thốt nốt là nghề vất vả đòi hỏi kinh nghiệm và sự khéo léo:</p>\n<ol>\n<li><strong>Leo cây:</strong> Hàng ngày, người thợ leo lên những cây thốt nốt cao 15-20m để thu hoạch nước hoa</li>\n<li><strong>Thu nước:</strong> Nước hoa thốt nốt được hứng trong ống tre, thu 2 lần/ngày vào sáng sớm và chiều tối</li>\n<li><strong>Nấu đường:</strong> Nước hoa được nấu trong chảo lớn, khuấy đều liên tục từ 4-6 giờ</li>\n<li><strong>Tạo hình:</strong> Khi đặc lại, đổ vào khuôn tròn hoặc đựng trong hũ</li>\n<li><strong>Làm nguội:</strong> Đường thốt nốt đặc lại thành khối sau 1-2 giờ</li>\n</ol>\n\n<h2>Đường Thốt Nốt Vs Đường Mía – Sự Khác Biệt</h2>\n<p>Nghiên cứu khoa học chỉ ra những điểm khác biệt quan trọng:</p>\n<ul>\n<li><strong>Chỉ số đường huyết (GI):</strong> Đường thốt nốt GI 35-54, thấp hơn đường mía (GI 65-70)</li>\n<li><strong>Khoáng chất:</strong> Giàu kali, magie, photpho hơn đường mía nhiều lần</li>\n<li><strong>Vitamin B:</strong> Chứa B1, B2, B3 tự nhiên</li>\n<li><strong>Hương vị:</strong> Vị ngọt thanh có hậu, không gắt như đường mía</li>\n</ul>', '/donggoi/z7505564779788_ebcc80ff9c18331de3e6302afdecf569.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Rice & Agricultural Products', 1, '2026-05-01 00:00:00.000', '2026-05-30 09:57:00.450', '2026-05-30 09:57:00.450'),
(23, 'Rượu Cần Tây Nguyên – Nét Văn Hóa Uống Rượu Đặc Sắc Của Đại Ngàn', 'Tay Nguyen Jar Wine – The Unique Drinking Culture of the Central Highlands', 'ruou-can-tay-nguyen-van-hoa-uong-ruou-dai-ngan', 'Rượu cần là đặc sản văn hóa của các dân tộc Ê Đê, Ba Na, Gia Rai ở Tây Nguyên. Tìm hiểu về loại rượu gạo nếp ủ trong ché sành và nghi lễ uống rượu cần truyền thống.', 'Rượu cần là đặc sản văn hóa của các dân tộc Ê Đê, Ba Na, Gia Rai ở Tây Nguyên. Tìm hiểu về loại rượu gạo nếp ủ trong ché sành và nghi lễ uống rượu cần truyền thống.', '<h1>Rượu Cần Tây Nguyên – Nét Văn Hóa Uống Rượu Đặc Sắc Của Đại Ngàn</h1>\n<p>Trong các lễ hội truyền thống của người Ê Đê, Ba Na, Gia Rai tại Tây Nguyên, rượu cần luôn hiện diện như một phần không thể tách rời. Không chỉ là thức uống, rượu cần còn là cầu nối tâm linh, là biểu tượng của sự đoàn kết cộng đồng và lòng hiếu khách của người dân Tây Nguyên.</p>\n\n<h2>Rượu Cần Làm Từ Nguyên Liệu Gì?</h2>\n<p>Rượu cần Tây Nguyên được ủ từ gạo nếp nương – loại nếp trồng trên nương rẫy của đồng bào dân tộc, hạt to, dẻo thơm. Gạo nếp được hấp chín rồi trộn với men rượu cổ truyền làm từ lá, rễ và vỏ cây rừng.</p>\n\n<h2>Quy Trình Ủ Rượu Cần Truyền Thống</h2>\n<ol>\n<li>Gạo nếp đãi sạch, ngâm 6-8 tiếng</li>\n<li>Hấp chín, để nguội đến 30-35°C</li>\n<li>Trộn đều với men cổ truyền nghiền mịn</li>\n<li>Cho vào ché (hũ sành) sạch, đậy kín bằng lá chuối</li>\n<li>Ủ trong bóng tối 7-15 ngày tùy loại rượu</li>\n<li>Thêm nước vào ché trước khi uống</li>\n</ol>\n\n<h2>Nghi Lễ Uống Rượu Cần</h2>\n<p>Uống rượu cần không đơn giản chỉ là thưởng thức thức uống – đó là một nghi lễ cộng đồng:</p>\n<ul>\n<li>Ché rượu đặt giữa vòng tròn người tham dự</li>\n<li>Cần uống bằng ống trúc hoặc tre dài</li>\n<li>Uống theo thứ tự từ già đến trẻ, từ chủ đến khách</li>\n<li>Mỗi người uống xong, thêm nước vào ché để duy trì lượng rượu</li>\n</ul>', '<h1>Rượu Cần Tây Nguyên – Nét Văn Hóa Uống Rượu Đặc Sắc Của Đại Ngàn</h1>\n<p>Trong các lễ hội truyền thống của người Ê Đê, Ba Na, Gia Rai tại Tây Nguyên, rượu cần luôn hiện diện như một phần không thể tách rời. Không chỉ là thức uống, rượu cần còn là cầu nối tâm linh, là biểu tượng của sự đoàn kết cộng đồng và lòng hiếu khách của người dân Tây Nguyên.</p>\n\n<h2>Rượu Cần Làm Từ Nguyên Liệu Gì?</h2>\n<p>Rượu cần Tây Nguyên được ủ từ gạo nếp nương – loại nếp trồng trên nương rẫy của đồng bào dân tộc, hạt to, dẻo thơm. Gạo nếp được hấp chín rồi trộn với men rượu cổ truyền làm từ lá, rễ và vỏ cây rừng.</p>\n\n<h2>Quy Trình Ủ Rượu Cần Truyền Thống</h2>\n<ol>\n<li>Gạo nếp đãi sạch, ngâm 6-8 tiếng</li>\n<li>Hấp chín, để nguội đến 30-35°C</li>\n<li>Trộn đều với men cổ truyền nghiền mịn</li>\n<li>Cho vào ché (hũ sành) sạch, đậy kín bằng lá chuối</li>\n<li>Ủ trong bóng tối 7-15 ngày tùy loại rượu</li>\n<li>Thêm nước vào ché trước khi uống</li>\n</ol>\n\n<h2>Nghi Lễ Uống Rượu Cần</h2>\n<p>Uống rượu cần không đơn giản chỉ là thưởng thức thức uống – đó là một nghi lễ cộng đồng:</p>\n<ul>\n<li>Ché rượu đặt giữa vòng tròn người tham dự</li>\n<li>Cần uống bằng ống trúc hoặc tre dài</li>\n<li>Uống theo thứ tự từ già đến trẻ, từ chủ đến khách</li>\n<li>Mỗi người uống xong, thêm nước vào ché để duy trì lượng rượu</li>\n</ul>', '/donggoi/z7505564788154_04e220f5c19955812ababb052bf62beb.jpg', 'LIKEFOOD', 'Đồ uống', 'Beverages', 1, '2026-05-05 00:00:00.000', '2026-05-30 09:57:00.455', '2026-05-30 09:57:00.455'),
(24, 'Hạt Mắc Ca Tây Nguyên – \'Hoàng Hậu Các Loại Hạt\' Được Trồng Tại Việt Nam', 'Tay Nguyen Macadamia Nuts – The \'Queen of Nuts\' Now Grown in Vietnam', 'hat-mac-ca-tay-nguyen-hoang-hau-cac-loai-hat', 'Hạt mắc ca (macadamia) đang được trồng thành công ở Tây Nguyên và tạo ra sản phẩm chất lượng xuất khẩu. Tìm hiểu lợi ích sức khỏe và cách chọn mua hạt mắc ca Tây Nguyên chất lượng.', 'Hạt mắc ca (macadamia) đang được trồng thành công ở Tây Nguyên và tạo ra sản phẩm chất lượng xuất khẩu. Tìm hiểu lợi ích sức khỏe và cách chọn mua hạt mắc ca Tây Nguyên chất lượng.', '<h1>Hạt Mắc Ca Tây Nguyên – \'Hoàng Hậu Các Loại Hạt\' Được Trồng Tại Việt Nam</h1>\n<p>Hạt mắc ca (macadamia) – có nguồn gốc từ Úc – hiện đang được trồng thành công tại vùng cao nguyên Tây Nguyên của Việt Nam. Với điều kiện khí hậu và thổ nhưỡng phù hợp, mắc ca Tây Nguyên đã đạt chất lượng ngang ngửa sản phẩm nhập khẩu, mở ra cơ hội mới cho nông nghiệp Việt Nam.</p>\n\n<h2>Tại Sao Mắc Ca Được Gọi Là \'Hoàng Hậu\'?</h2>\n<p>Danh hiệu \"hoàng hậu các loại hạt\" xuất phát từ:</p>\n<ul>\n<li><strong>Hàm lượng dinh dưỡng cao:</strong> 70% chất béo tốt (MUFA), protein và khoáng chất</li>\n<li><strong>Hương vị độc đáo:</strong> Béo ngậy, bùi mềm, vị ngọt tự nhiên không loại hạt nào có được</li>\n<li><strong>Giá trị kinh tế cao:</strong> Một trong những loại hạt đắt nhất thế giới</li>\n<li><strong>Khó trồng:</strong> Cây mắc ca cần 7-10 năm mới ra quả, đòi hỏi kỹ thuật cao</li>\n</ul>\n\n<h2>Lợi Ích Sức Khỏe Được Khoa Học Xác Nhận</h2>\n<ul>\n<li>Giảm LDL cholesterol nhờ axit palmitoleic</li>\n<li>Chống viêm, bảo vệ hệ tim mạch</li>\n<li>Giàu flavonoid – chống oxy hóa mạnh</li>\n<li>Tốt cho não bộ và thần kinh (giàu thiamine)</li>\n<li>Hỗ trợ kiểm soát cân nặng (no lâu)</li>\n</ul>\n\n<h2>Cách Chọn Mua Mắc Ca Chất Lượng</h2>\n<ul>\n<li>Hạt có vỏ còn nguyên, không nứt vỡ</li>\n<li>Khi lắc nghe tiếng lắc rắc của nhân bên trong</li>\n<li>Mùi thơm béo nhẹ, không có mùi ôi dầu</li>\n<li>Nhân màu trắng kem đều, không có đốm nâu</li>\n</ul>', '<h1>Hạt Mắc Ca Tây Nguyên – \'Hoàng Hậu Các Loại Hạt\' Được Trồng Tại Việt Nam</h1>\n<p>Hạt mắc ca (macadamia) – có nguồn gốc từ Úc – hiện đang được trồng thành công tại vùng cao nguyên Tây Nguyên của Việt Nam. Với điều kiện khí hậu và thổ nhưỡng phù hợp, mắc ca Tây Nguyên đã đạt chất lượng ngang ngửa sản phẩm nhập khẩu, mở ra cơ hội mới cho nông nghiệp Việt Nam.</p>\n\n<h2>Tại Sao Mắc Ca Được Gọi Là \'Hoàng Hậu\'?</h2>\n<p>Danh hiệu \"hoàng hậu các loại hạt\" xuất phát từ:</p>\n<ul>\n<li><strong>Hàm lượng dinh dưỡng cao:</strong> 70% chất béo tốt (MUFA), protein và khoáng chất</li>\n<li><strong>Hương vị độc đáo:</strong> Béo ngậy, bùi mềm, vị ngọt tự nhiên không loại hạt nào có được</li>\n<li><strong>Giá trị kinh tế cao:</strong> Một trong những loại hạt đắt nhất thế giới</li>\n<li><strong>Khó trồng:</strong> Cây mắc ca cần 7-10 năm mới ra quả, đòi hỏi kỹ thuật cao</li>\n</ul>\n\n<h2>Lợi Ích Sức Khỏe Được Khoa Học Xác Nhận</h2>\n<ul>\n<li>Giảm LDL cholesterol nhờ axit palmitoleic</li>\n<li>Chống viêm, bảo vệ hệ tim mạch</li>\n<li>Giàu flavonoid – chống oxy hóa mạnh</li>\n<li>Tốt cho não bộ và thần kinh (giàu thiamine)</li>\n<li>Hỗ trợ kiểm soát cân nặng (no lâu)</li>\n</ul>\n\n<h2>Cách Chọn Mua Mắc Ca Chất Lượng</h2>\n<ul>\n<li>Hạt có vỏ còn nguyên, không nứt vỡ</li>\n<li>Khi lắc nghe tiếng lắc rắc của nhân bên trong</li>\n<li>Mùi thơm béo nhẹ, không có mùi ôi dầu</li>\n<li>Nhân màu trắng kem đều, không có đốm nâu</li>\n</ul>', '/donggoi/z7505564791070_63fbba35ef8b263b11cc411d85502a29.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Snacks', 1, '2026-05-10 00:00:00.000', '2026-05-30 09:57:00.459', '2026-05-30 09:57:00.459'),
(25, 'Mứt Tắc Mật Ong – Bài Thuốc Dân Gian Chữa Ho Cảm Của Người Việt', 'Kumquat Honey Preserve – Vietnamese Folk Remedy for Coughs and Colds', 'mut-tac-mat-ong-bai-thuoc-dan-gian-chua-ho-cam', 'Mứt tắc (quất) ngâm mật ong là bài thuốc dân gian được người Việt dùng từ hàng trăm năm để chữa ho, viêm họng. Tìm hiểu cách làm và cơ chế khoa học đằng sau bài thuốc này.', 'Mứt tắc (quất) ngâm mật ong là bài thuốc dân gian được người Việt dùng từ hàng trăm năm để chữa ho, viêm họng. Tìm hiểu cách làm và cơ chế khoa học đằng sau bài thuốc này.', '<h1>Mứt Tắc Mật Ong – Bài Thuốc Dân Gian Chữa Ho Cảm Của Người Việt</h1>\n<p>Từ thời ông bà, người Việt đã biết dùng tắc (quất) ngâm mật ong để chữa ho, đau họng. Bài thuốc dân gian đơn giản này không chỉ hiệu quả mà còn ngon miệng – một đặc điểm hiếm có của y học cổ truyền.</p>\n\n<h2>Tại Sao Tắc (Quất) Chữa Được Ho?</h2>\n<p>Theo y học hiện đại, quả tắc chứa nhiều hoạt chất có lợi:</p>\n<ul>\n<li><strong>Vitamin C:</strong> Tăng cường miễn dịch, chống oxy hóa</li>\n<li><strong>Flavonoid (nobiletin, tangeretin):</strong> Chống viêm, ức chế vi khuẩn</li>\n<li><strong>Tinh dầu vỏ quất:</strong> Tác dụng long đờm, thông cổ họng</li>\n<li><strong>Axit citric:</strong> Giảm viêm họng, tiêu đờm</li>\n</ul>\n\n<h2>Cách Làm Mứt Tắc Mật Ong Đơn Giản</h2>\n<ol>\n<li>Tắc tươi rửa sạch, để ráo nước</li>\n<li>Khứa 4-6 đường trên quả tắc hoặc thái lát mỏng</li>\n<li>Cho tắc vào hũ thủy tinh sạch, khô</li>\n<li>Đổ mật ong ngập tắc (dùng mật ong rừng Tây Nguyên nguyên chất)</li>\n<li>Đậy kín, để ở nhiệt độ phòng 7-10 ngày</li>\n<li>Sau đó bảo quản trong tủ lạnh, dùng trong 3-6 tháng</li>\n</ol>\n\n<h2>Cách Dùng Mứt Tắc Mật Ong</h2>\n<ul>\n<li><strong>Khi ho, đau họng:</strong> Dùng 1-2 quả tắc cùng 1-2 thìa mật ong ngâm, pha với nước ấm, uống 3 lần/ngày</li>\n<li><strong>Phòng ngừa:</strong> Pha trà tắc mật ong hàng ngày</li>\n<li><strong>Ăn trực tiếp:</strong> Ăn quả tắc ngâm mật ong như mứt</li>\n</ul>', '<h1>Mứt Tắc Mật Ong – Bài Thuốc Dân Gian Chữa Ho Cảm Của Người Việt</h1>\n<p>Từ thời ông bà, người Việt đã biết dùng tắc (quất) ngâm mật ong để chữa ho, đau họng. Bài thuốc dân gian đơn giản này không chỉ hiệu quả mà còn ngon miệng – một đặc điểm hiếm có của y học cổ truyền.</p>\n\n<h2>Tại Sao Tắc (Quất) Chữa Được Ho?</h2>\n<p>Theo y học hiện đại, quả tắc chứa nhiều hoạt chất có lợi:</p>\n<ul>\n<li><strong>Vitamin C:</strong> Tăng cường miễn dịch, chống oxy hóa</li>\n<li><strong>Flavonoid (nobiletin, tangeretin):</strong> Chống viêm, ức chế vi khuẩn</li>\n<li><strong>Tinh dầu vỏ quất:</strong> Tác dụng long đờm, thông cổ họng</li>\n<li><strong>Axit citric:</strong> Giảm viêm họng, tiêu đờm</li>\n</ul>\n\n<h2>Cách Làm Mứt Tắc Mật Ong Đơn Giản</h2>\n<ol>\n<li>Tắc tươi rửa sạch, để ráo nước</li>\n<li>Khứa 4-6 đường trên quả tắc hoặc thái lát mỏng</li>\n<li>Cho tắc vào hũ thủy tinh sạch, khô</li>\n<li>Đổ mật ong ngập tắc (dùng mật ong rừng Tây Nguyên nguyên chất)</li>\n<li>Đậy kín, để ở nhiệt độ phòng 7-10 ngày</li>\n<li>Sau đó bảo quản trong tủ lạnh, dùng trong 3-6 tháng</li>\n</ol>\n\n<h2>Cách Dùng Mứt Tắc Mật Ong</h2>\n<ul>\n<li><strong>Khi ho, đau họng:</strong> Dùng 1-2 quả tắc cùng 1-2 thìa mật ong ngâm, pha với nước ấm, uống 3 lần/ngày</li>\n<li><strong>Phòng ngừa:</strong> Pha trà tắc mật ong hàng ngày</li>\n<li><strong>Ăn trực tiếp:</strong> Ăn quả tắc ngâm mật ong như mứt</li>\n</ul>', '/donggoi/z7505564796792_13af278803bb591366ec9e28a26d5b16.jpg', 'LIKEFOOD', 'Sức khỏe', 'Health', 1, '2026-05-15 00:00:00.000', '2026-05-30 09:57:00.464', '2026-05-30 09:57:00.464'),
(26, 'Khoai Lang Sấy Đà Lạt – Snack Healthy Cho Người Bận Rộn', 'Khoai Lang Sấy Đà Lạt – Snack Healthy Cho Người Bận Rộn', 'khoai-lang-say-da-lat-snack-healthy', 'Khoai lang sấy Đà Lạt không đường, không dầu – lựa chọn snack lành mạnh cho người ăn kiêng và người bận rộn tại Mỹ.', 'Khoai lang sấy Đà Lạt không đường, không dầu – lựa chọn snack lành mạnh cho người ăn kiêng và người bận rộn tại Mỹ.', '<h1>Khoai Lang Sấy Đà Lạt – Snack Healthy Cho Người Bận Rộn</h1><p>Khoai lang mật Đà Lạt sấy giòn không đường là một trong những snack lành mạnh nhất bạn có thể tìm thấy. Giàu beta-carotene, vitamin A và chất xơ, khoai lang sấy là lựa chọn hoàn hảo thay thế các loại snack chiên công nghiệp.</p><h2>Lợi Ích Của Khoai Lang</h2><p>Khoai lang chứa hàm lượng beta-carotene cao – chất chống oxy hóa giúp bảo vệ mắt và da. Ngoài ra còn giàu vitamin B6, kali và chất xơ tốt cho tim mạch và tiêu hóa.</p><h2>Cách Bảo Quản</h2><p>Bảo quản trong hộp kín ở nhiệt độ phòng tối đa 3 tháng. Để được lâu hơn, cho vào túi kín và bảo quản trong ngăn mát tủ lạnh.</p>', '<h1>Khoai Lang Sấy Đà Lạt – Snack Healthy Cho Người Bận Rộn</h1><p>Khoai lang mật Đà Lạt sấy giòn không đường là một trong những snack lành mạnh nhất bạn có thể tìm thấy. Giàu beta-carotene, vitamin A và chất xơ, khoai lang sấy là lựa chọn hoàn hảo thay thế các loại snack chiên công nghiệp.</p><h2>Lợi Ích Của Khoai Lang</h2><p>Khoai lang chứa hàm lượng beta-carotene cao – chất chống oxy hóa giúp bảo vệ mắt và da. Ngoài ra còn giàu vitamin B6, kali và chất xơ tốt cho tim mạch và tiêu hóa.</p><h2>Cách Bảo Quản</h2><p>Bảo quản trong hộp kín ở nhiệt độ phòng tối đa 3 tháng. Để được lâu hơn, cho vào túi kín và bảo quản trong ngăn mát tủ lạnh.</p>', '/donggoi/z7505564801177_b20e6b3c65f620a0b197327182b4355f.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-01-18 00:00:00.000', '2026-05-30 09:57:00.468', '2026-05-30 09:57:00.468'),
(27, 'Cá Nục Khô Bình Định – Đặc Sản Biển Miền Trung Dai Ngon', 'Cá Nục Khô Bình Định – Đặc Sản Biển Miền Trung Dai Ngon', 'ca-nuc-kho-binh-dinh-dac-san-bien-mien-trung', 'Cá nục khô Bình Định được chế biến theo phương pháp truyền thống của ngư dân miền Trung, vị mặn ngọt cân bằng, dai thơm.', 'Cá nục khô Bình Định được chế biến theo phương pháp truyền thống của ngư dân miền Trung, vị mặn ngọt cân bằng, dai thơm.', '<h1>Cá Nục Khô Bình Định – Đặc Sản Biển Miền Trung</h1><p>Biển miền Trung Việt Nam – đặc biệt là vùng biển Bình Định – nổi tiếng với nhiều loài cá tươi ngon. Cá nục (Decapterus) là loài cá biển phong phú, thịt ngọt, thích hợp làm khô.</p><h2>Đặc Điểm</h2><p>Cá nục khô Bình Định có màu vàng nâu đẹp, thịt chắc, vị mặn ngọt hài hòa. Thích hợp kho tiêu, chiên giòn hoặc nướng than.</p>', '<h1>Cá Nục Khô Bình Định – Đặc Sản Biển Miền Trung</h1><p>Biển miền Trung Việt Nam – đặc biệt là vùng biển Bình Định – nổi tiếng với nhiều loài cá tươi ngon. Cá nục (Decapterus) là loài cá biển phong phú, thịt ngọt, thích hợp làm khô.</p><h2>Đặc Điểm</h2><p>Cá nục khô Bình Định có màu vàng nâu đẹp, thịt chắc, vị mặn ngọt hài hòa. Thích hợp kho tiêu, chiên giòn hoặc nướng than.</p>', '/donggoi/z7505564805693_e0fd36baed08ed6ced5fe2d72e10afbb.jpg', 'LIKEFOOD', 'Hải sản khô', 'Food', 1, '2026-01-22 00:00:00.000', '2026-05-30 09:57:00.473', '2026-05-30 09:57:00.473'),
(28, 'Tôm Đất Khô Bạc Liêu – Nguyên Liệu Vàng Cho Canh Chua Miền Tây', 'Tôm Đất Khô Bạc Liêu – Nguyên Liệu Vàng Cho Canh Chua Miền Tây', 'tom-dat-kho-bac-lieu-nguyen-lieu-canh-chua', 'Tôm đất khô Bạc Liêu nhỏ nhưng vị đậm đà, là nguyên liệu không thể thiếu cho các món canh chua và súp miền Tây Nam Bộ.', 'Tôm đất khô Bạc Liêu nhỏ nhưng vị đậm đà, là nguyên liệu không thể thiếu cho các món canh chua và súp miền Tây Nam Bộ.', '<h1>Tôm Đất Khô Bạc Liêu – Nguyên Liệu Vàng Cho Canh Chua</h1><p>Tôm đất (tôm nước ngọt) Bạc Liêu tuy nhỏ nhưng có vị ngọt và hương thơm đặc trưng rất khác với tôm biển. Khi sấy khô, vị ngọt được cô đọng lại tạo nên nguyên liệu nấu ăn tuyệt vời.</p><h2>Ứng Dụng Trong Nấu Ăn</h2><p>Dùng nấu canh chua bắp chuối, canh bí đao, hoặc rang muối ăn vặt đều ngon.</p>', '<h1>Tôm Đất Khô Bạc Liêu – Nguyên Liệu Vàng Cho Canh Chua</h1><p>Tôm đất (tôm nước ngọt) Bạc Liêu tuy nhỏ nhưng có vị ngọt và hương thơm đặc trưng rất khác với tôm biển. Khi sấy khô, vị ngọt được cô đọng lại tạo nên nguyên liệu nấu ăn tuyệt vời.</p><h2>Ứng Dụng Trong Nấu Ăn</h2><p>Dùng nấu canh chua bắp chuối, canh bí đao, hoặc rang muối ăn vặt đều ngon.</p>', '/donggoi/z7505564810533_0b04ac75d81835ee199268de74aad8ed.jpg', 'LIKEFOOD', 'Hải sản khô', 'Food', 1, '2026-01-28 00:00:00.000', '2026-05-30 09:57:00.478', '2026-05-30 09:57:00.478'),
(29, 'Mực Rim Cay Nha Trang – Snack Biển Hot Nhất Dành Cho Dân Mê Ăn Cay', 'Mực Rim Cay Nha Trang – Snack Biển Hot Nhất Dành Cho Dân Mê Ăn Cay', 'muc-rim-cay-nha-trang-snack-bien-hot', 'Mực rim cay Nha Trang kết hợp hương vị biển khơi với vị cay nồng của ớt tạo ra snack được giới trẻ Việt tại Mỹ cực kỳ ưa chuộng.', 'Mực rim cay Nha Trang kết hợp hương vị biển khơi với vị cay nồng của ớt tạo ra snack được giới trẻ Việt tại Mỹ cực kỳ ưa chuộng.', '<h1>Mực Rim Cay Nha Trang – Snack Biển Hot Nhất</h1><p>Mực tươi Nha Trang được thái sợi, tẩm gia vị cay và rim đến khi đặc sệt, tạo ra snack vừa dai vừa thơm vừa cay nồng khó cưỡng.</p><h2>Hương Vị Độc Đáo</h2><p>Sự kết hợp giữa vị ngọt tự nhiên của mực biển và vị cay của ớt hiểm tạo nên contrast hương vị thú vị, khiến bạn không thể dừng tay.</p>', '<h1>Mực Rim Cay Nha Trang – Snack Biển Hot Nhất</h1><p>Mực tươi Nha Trang được thái sợi, tẩm gia vị cay và rim đến khi đặc sệt, tạo ra snack vừa dai vừa thơm vừa cay nồng khó cưỡng.</p><h2>Hương Vị Độc Đáo</h2><p>Sự kết hợp giữa vị ngọt tự nhiên của mực biển và vị cay của ớt hiểm tạo nên contrast hương vị thú vị, khiến bạn không thể dừng tay.</p>', '/donggoi/z7505564814085_1f26996babda2fcc310b19da49c0d038.jpg', 'LIKEFOOD', 'Hải sản khô', 'Food', 1, '2026-02-03 00:00:00.000', '2026-05-30 09:57:00.482', '2026-05-30 09:57:00.482'),
(30, 'Xoài Sấy Dẻo – Cách Phân Biệt Xoài Sấy Ngon Và Sấy Kém Chất Lượng', 'Xoài Sấy Dẻo – Cách Phân Biệt Xoài Sấy Ngon Và Sấy Kém Chất Lượng', 'xoai-say-deo-phan-biet-ngon-kem-chat-luong', 'Không phải xoài sấy nào cũng ngon. Hướng dẫn 6 tiêu chí phân biệt xoài sấy chất lượng giúp bạn chọn được sản phẩm tốt nhất.', 'Không phải xoài sấy nào cũng ngon. Hướng dẫn 6 tiêu chí phân biệt xoài sấy chất lượng giúp bạn chọn được sản phẩm tốt nhất.', '<h1>Xoài Sấy Dẻo – Cách Phân Biệt Ngon Và Kém Chất Lượng</h1><p>Thị trường xoài sấy ngày càng phong phú nhưng cũng xuất hiện nhiều sản phẩm kém chất lượng. Biết cách phân biệt giúp bạn không lãng phí tiền bạc.</p><h2>6 Tiêu Chí Chọn Xoài Sấy Tốt</h2><ol><li>Màu vàng cam tự nhiên, không quá sẫm</li><li>Không có đường kết tinh trên bề mặt</li><li>Mùi thơm của xoài chín, không hương liệu</li><li>Độ dẻo vừa phải, không khô cứng</li><li>Thành phần chỉ có xoài và muối</li><li>Nguồn gốc rõ ràng, có mã truy xuất</li></ol>', '<h1>Xoài Sấy Dẻo – Cách Phân Biệt Ngon Và Kém Chất Lượng</h1><p>Thị trường xoài sấy ngày càng phong phú nhưng cũng xuất hiện nhiều sản phẩm kém chất lượng. Biết cách phân biệt giúp bạn không lãng phí tiền bạc.</p><h2>6 Tiêu Chí Chọn Xoài Sấy Tốt</h2><ol><li>Màu vàng cam tự nhiên, không quá sẫm</li><li>Không có đường kết tinh trên bề mặt</li><li>Mùi thơm của xoài chín, không hương liệu</li><li>Độ dẻo vừa phải, không khô cứng</li><li>Thành phần chỉ có xoài và muối</li><li>Nguồn gốc rõ ràng, có mã truy xuất</li></ol>', '/donggoi/z7505564819035_8e5ad951bd0587488a22c69b7ae07e95.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-02-08 00:00:00.000', '2026-05-30 09:57:00.487', '2026-05-30 09:57:00.487'),
(31, 'Dứa Sấy Dẻo – Vị Chua Ngọt Nhiệt Đới Trong Túi Snack Tiện Lợi', 'Dứa Sấy Dẻo – Vị Chua Ngọt Nhiệt Đới Trong Túi Snack Tiện Lợi', 'dua-say-deo-vi-chua-ngot-nhiet-doi', 'Dứa sấy dẻo Tiền Giang giữ nguyên vị chua ngọt đặc trưng của dứa nhiệt đới trong một format tiện lợi, dễ mang theo.', 'Dứa sấy dẻo Tiền Giang giữ nguyên vị chua ngọt đặc trưng của dứa nhiệt đới trong một format tiện lợi, dễ mang theo.', '<h1>Dứa Sấy Dẻo – Vị Chua Ngọt Nhiệt Đới</h1><p>Dứa (thơm, ananas) Tiền Giang nổi tiếng với vị ngọt chua đặc trưng, không quá chua gắt. Khi sấy nhẹ ở nhiệt độ thấp, vị ngọt được cô đọng trong khi vị chua vẫn được giữ nguyên.</p><h2>Lợi Ích Của Dứa Sấy</h2><p>Dứa chứa bromelain – enzyme tiêu hóa tự nhiên giúp phân giải protein, hỗ trợ tiêu hóa sau bữa ăn nặng. Ngoài ra giàu vitamin C và manganese.</p>', '<h1>Dứa Sấy Dẻo – Vị Chua Ngọt Nhiệt Đới</h1><p>Dứa (thơm, ananas) Tiền Giang nổi tiếng với vị ngọt chua đặc trưng, không quá chua gắt. Khi sấy nhẹ ở nhiệt độ thấp, vị ngọt được cô đọng trong khi vị chua vẫn được giữ nguyên.</p><h2>Lợi Ích Của Dứa Sấy</h2><p>Dứa chứa bromelain – enzyme tiêu hóa tự nhiên giúp phân giải protein, hỗ trợ tiêu hóa sau bữa ăn nặng. Ngoài ra giàu vitamin C và manganese.</p>', '/donggoi/z7505564823199_b8eca2aee4a20b87656d1eeafb46bccf.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-02-12 00:00:00.000', '2026-05-30 09:57:00.494', '2026-05-30 09:57:00.494'),
(32, 'Mứt Gừng Sả Hội An – Bí Quyết Giữ Ấm Mùa Đông Của Người Quảng Nam', 'Mứt Gừng Sả Hội An – Bí Quyết Giữ Ấm Mùa Đông Của Người Quảng Nam', 'mut-gung-sa-hoi-an-giu-am-mua-dong', 'Mứt gừng sả Hội An không chỉ là món ăn ngon mà còn là bài thuốc giữ ấm cơ thể, kích thích tiêu hóa được người Quảng Nam truyền lại.', 'Mứt gừng sả Hội An không chỉ là món ăn ngon mà còn là bài thuốc giữ ấm cơ thể, kích thích tiêu hóa được người Quảng Nam truyền lại.', '<h1>Mứt Gừng Sả Hội An – Bí Quyết Giữ Ấm Mùa Đông</h1><p>Gừng và sả là hai loại gia vị/thảo dược quen thuộc trong y học cổ truyền Việt Nam. Kết hợp hai nguyên liệu này trong mứt tạo ra sản phẩm vừa ngon vừa có lợi cho sức khỏe.</p><h2>Tác Dụng Dược Lý</h2><p>Gừng chứa gingerol và shogaol – chất chống viêm mạnh. Sả chứa citral và geraniol – kháng khuẩn tự nhiên. Kết hợp lại giúp ấm người, kích thích tuần hoàn máu.</p>', '<h1>Mứt Gừng Sả Hội An – Bí Quyết Giữ Ấm Mùa Đông</h1><p>Gừng và sả là hai loại gia vị/thảo dược quen thuộc trong y học cổ truyền Việt Nam. Kết hợp hai nguyên liệu này trong mứt tạo ra sản phẩm vừa ngon vừa có lợi cho sức khỏe.</p><h2>Tác Dụng Dược Lý</h2><p>Gừng chứa gingerol và shogaol – chất chống viêm mạnh. Sả chứa citral và geraniol – kháng khuẩn tự nhiên. Kết hợp lại giúp ấm người, kích thích tuần hoàn máu.</p>', '/donggoi/z7505564829120_e932e2efcc35d3f998dec98ed583760e.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Food', 1, '2026-02-18 00:00:00.000', '2026-05-30 09:57:00.501', '2026-05-30 09:57:00.501'),
(33, 'Trà Hoa Cúc – Thức Uống Giúp Giảm Stress Và Ngủ Ngon Hiệu Quả', 'Trà Hoa Cúc – Thức Uống Giúp Giảm Stress Và Ngủ Ngon Hiệu Quả', 'tra-hoa-cuc-giam-stress-ngu-ngon', 'Trà hoa cúc được khoa học chứng minh có tác dụng giảm lo âu và cải thiện chất lượng giấc ngủ. Hướng dẫn pha và uống đúng cách.', 'Trà hoa cúc được khoa học chứng minh có tác dụng giảm lo âu và cải thiện chất lượng giấc ngủ. Hướng dẫn pha và uống đúng cách.', '<h1>Trà Hoa Cúc – Giảm Stress Và Ngủ Ngon</h1><p>Trong nhịp sống bận rộn tại Mỹ, stress và mất ngủ là vấn đề phổ biến. Trà hoa cúc – với hoạt chất apigenin tác động lên thụ thể GABA trong não – là giải pháp tự nhiên được khoa học xác nhận.</p><h2>Nghiên Cứu Khoa Học</h2><p>Nghiên cứu năm 2017 trên Journal of Advanced Nursing: người uống trà hoa cúc mỗi tối cải thiện chất lượng giấc ngủ và giảm triệu chứng trầm cảm đáng kể.</p>', '<h1>Trà Hoa Cúc – Giảm Stress Và Ngủ Ngon</h1><p>Trong nhịp sống bận rộn tại Mỹ, stress và mất ngủ là vấn đề phổ biến. Trà hoa cúc – với hoạt chất apigenin tác động lên thụ thể GABA trong não – là giải pháp tự nhiên được khoa học xác nhận.</p><h2>Nghiên Cứu Khoa Học</h2><p>Nghiên cứu năm 2017 trên Journal of Advanced Nursing: người uống trà hoa cúc mỗi tối cải thiện chất lượng giấc ngủ và giảm triệu chứng trầm cảm đáng kể.</p>', '/donggoi/z7505564832874_547cd36914a8ed33cbe04ab8dfe685bd.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-02-22 00:00:00.000', '2026-05-30 09:57:00.505', '2026-05-30 09:57:00.505'),
(34, 'Cà Phê Arabica Đà Lạt – Vị Cà Phê Tinh Tế Cho Người Sành Uống', 'Cà Phê Arabica Đà Lạt – Vị Cà Phê Tinh Tế Cho Người Sành Uống', 'ca-phe-arabica-da-lat-vi-tinh-te', 'Arabica Đà Lạt với vị chua nhẹ và hương hoa quả là loại cà phê được giới barista và coffee enthusiast Việt Mỹ ưa chuộng.', 'Arabica Đà Lạt với vị chua nhẹ và hương hoa quả là loại cà phê được giới barista và coffee enthusiast Việt Mỹ ưa chuộng.', '<h1>Cà Phê Arabica Đà Lạt – Vị Tinh Tế Cho Người Sành</h1><p>Arabica Đà Lạt mọc ở độ cao 1500m, nơi nhiệt độ mát lạnh và sương mù quanh năm. Quả cà phê chín chậm, tích lũy nhiều đường và axit hữu cơ tạo nên hương vị phức tạp không thể tìm thấy ở cà phê vùng thấp.</p><h2>Hương Vị Profile</h2><p>Arabica Đà Lạt thường có: vị chua nhẹ của táo xanh hoặc citrus, hương hoa nhài hoặc hoa quả, độ đắng thấp, body nhẹ.</p>', '<h1>Cà Phê Arabica Đà Lạt – Vị Tinh Tế Cho Người Sành</h1><p>Arabica Đà Lạt mọc ở độ cao 1500m, nơi nhiệt độ mát lạnh và sương mù quanh năm. Quả cà phê chín chậm, tích lũy nhiều đường và axit hữu cơ tạo nên hương vị phức tạp không thể tìm thấy ở cà phê vùng thấp.</p><h2>Hương Vị Profile</h2><p>Arabica Đà Lạt thường có: vị chua nhẹ của táo xanh hoặc citrus, hương hoa nhài hoặc hoa quả, độ đắng thấp, body nhẹ.</p>', '/donggoi/z7505564839497_e504d1967acbdd11472ee76034dcc2b4.jpg', 'LIKEFOOD', 'Đồ uống', 'Food', 1, '2026-02-28 00:00:00.000', '2026-05-30 09:57:00.510', '2026-05-30 09:57:00.510'),
(35, 'Đậu Phộng Da Cá – Snack Giòn Nghiện Không Thể Dừng Tay', 'Đậu Phộng Da Cá – Snack Giòn Nghiện Không Thể Dừng Tay', 'dau-phong-da-ca-snack-gion-nghien', 'Đậu phộng da cá – hạt đậu phộng bọc lớp vỏ giòn từ bột gạo và gia vị – là snack được nghiện nhất trong cộng đồng người Việt tại Mỹ.', 'Đậu phộng da cá – hạt đậu phộng bọc lớp vỏ giòn từ bột gạo và gia vị – là snack được nghiện nhất trong cộng đồng người Việt tại Mỹ.', '<h1>Đậu Phộng Da Cá – Snack Giòn Nghiện</h1><p>Tên gọi \'da cá\' xuất phát từ lớp vỏ bột gạo bên ngoài khi chiên phồng lên giống như da cá. Sự kết hợp của vỏ giòn tan và nhân đậu phộng bùi ngậy tạo nên texture đặc biệt rất \'nghiện\'.</p><h2>Các Vị Phổ Biến</h2><p>Ớt tỏi, phô mai, mực, bạch tuộc, BBQ – mỗi vị có fan riêng nhưng ớt tỏi vẫn là vị được yêu thích nhất.</p>', '<h1>Đậu Phộng Da Cá – Snack Giòn Nghiện</h1><p>Tên gọi \'da cá\' xuất phát từ lớp vỏ bột gạo bên ngoài khi chiên phồng lên giống như da cá. Sự kết hợp của vỏ giòn tan và nhân đậu phộng bùi ngậy tạo nên texture đặc biệt rất \'nghiện\'.</p><h2>Các Vị Phổ Biến</h2><p>Ớt tỏi, phô mai, mực, bạch tuộc, BBQ – mỗi vị có fan riêng nhưng ớt tỏi vẫn là vị được yêu thích nhất.</p>', '/donggoi/z7505564842032_6e2b027e26fd1989beb7cc4749ea93cd.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Food', 1, '2026-03-03 00:00:00.000', '2026-05-30 09:57:00.514', '2026-05-30 09:57:00.514'),
(36, 'Khô Cá Thu Đà Nẵng – Đặc Sản Biển Miền Trung Ngon Không Gì Sánh', 'Khô Cá Thu Đà Nẵng – Đặc Sản Biển Miền Trung Ngon Không Gì Sánh', 'kho-ca-thu-da-nang-dac-san-bien-mien-trung', 'Cá thu khô Đà Nẵng từ loài cá biển thịt chắc, ngọt tự nhiên, được chế biến theo phương pháp phơi nắng truyền thống của ngư dân miền Trung.', 'Cá thu khô Đà Nẵng từ loài cá biển thịt chắc, ngọt tự nhiên, được chế biến theo phương pháp phơi nắng truyền thống của ngư dân miền Trung.', '<h1>Khô Cá Thu Đà Nẵng – Đặc Sản Biển Miền Trung</h1><p>Cá thu (Scomberomorus) là loài cá biển quý của vùng biển miền Trung Việt Nam. Thịt cá thu chắc, ngọt và giàu omega-3, khi sấy khô giữ được hương vị tốt hơn nhiều loài cá khác.</p><h2>Cách Phân Biệt Cá Thu Khô Thật</h2><p>Cá thu khô thật có màu nâu đỏ tự nhiên, mùi thơm của cá biển, thịt chắc khi bẻ không vỡ vụn.</p>', '<h1>Khô Cá Thu Đà Nẵng – Đặc Sản Biển Miền Trung</h1><p>Cá thu (Scomberomorus) là loài cá biển quý của vùng biển miền Trung Việt Nam. Thịt cá thu chắc, ngọt và giàu omega-3, khi sấy khô giữ được hương vị tốt hơn nhiều loài cá khác.</p><h2>Cách Phân Biệt Cá Thu Khô Thật</h2><p>Cá thu khô thật có màu nâu đỏ tự nhiên, mùi thơm của cá biển, thịt chắc khi bẻ không vỡ vụn.</p>', '/donggoi/z7505564846512_eebb47d9bd5137b0b6d6692f91d10c48.jpg', 'LIKEFOOD', 'Hải sản khô', 'Food', 1, '2026-03-08 00:00:00.000', '2026-05-30 09:57:00.519', '2026-05-30 09:57:00.519'),
(37, 'Nem Chả Lụa Hà Nội – Nghệ Thuật Làm Giò Chả Truyền Thống', 'Nem Chả Lụa Hà Nội – Nghệ Thuật Làm Giò Chả Truyền Thống', 'nem-cha-lua-ha-noi-nghe-thuat-lam-gio-cha', 'Giò lụa Hà Nội là đỉnh cao của nghệ thuật làm giò chả Việt Nam, đòi hỏi kỹ thuật và bí quyết được truyền lại qua nhiều thế hệ.', 'Giò lụa Hà Nội là đỉnh cao của nghệ thuật làm giò chả Việt Nam, đòi hỏi kỹ thuật và bí quyết được truyền lại qua nhiều thế hệ.', '<h1>Nem Chả Lụa Hà Nội – Nghệ Thuật Truyền Thống</h1><p>Giò lụa (chả lụa) Hà Nội không chỉ là thực phẩm – đó là nghệ thuật ẩm thực được người Hà Nội gìn giữ qua nhiều thế hệ. Miếng giò trắng ngà mịn mượt, thơm nhẹ, vị đậm đà đặc trưng là niềm tự hào của ẩm thực thủ đô.</p><h2>Bí Quyết Giò Lụa Ngon</h2><p>Thịt heo phải tươi, xay ngay sau khi giết mổ. Quết thịt bằng tay hoặc máy đến khi dai dẻo. Gói bằng lá chuối để tạo hương thơm tự nhiên.</p>', '<h1>Nem Chả Lụa Hà Nội – Nghệ Thuật Truyền Thống</h1><p>Giò lụa (chả lụa) Hà Nội không chỉ là thực phẩm – đó là nghệ thuật ẩm thực được người Hà Nội gìn giữ qua nhiều thế hệ. Miếng giò trắng ngà mịn mượt, thơm nhẹ, vị đậm đà đặc trưng là niềm tự hào của ẩm thực thủ đô.</p><h2>Bí Quyết Giò Lụa Ngon</h2><p>Thịt heo phải tươi, xay ngay sau khi giết mổ. Quết thịt bằng tay hoặc máy đến khi dai dẻo. Gói bằng lá chuối để tạo hương thơm tự nhiên.</p>', '/donggoi/z7505564848796_7b0f358c3c0ef17efc8b99a8b48ea066.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-03-12 00:00:00.000', '2026-05-30 09:57:00.525', '2026-05-30 09:57:00.525'),
(38, 'Hạt Sen Đồng Tháp – \'Vàng Trắng\' Của Vùng Đồng Tháp Mười', 'Hạt Sen Đồng Tháp – \'Vàng Trắng\' Của Vùng Đồng Tháp Mười', 'hat-sen-dong-thap-vang-trang-dong-thap-muoi', 'Hạt sen Đồng Tháp nổi tiếng nhất Việt Nam nhờ hạt to, trắng đều, ngọt bùi tự nhiên. Tìm hiểu lợi ích dinh dưỡng và cách chế biến hạt sen.', 'Hạt sen Đồng Tháp nổi tiếng nhất Việt Nam nhờ hạt to, trắng đều, ngọt bùi tự nhiên. Tìm hiểu lợi ích dinh dưỡng và cách chế biến hạt sen.', '<h1>Hạt Sen Đồng Tháp – Vàng Trắng Vùng Đồng Tháp Mười</h1><p>Đồng Tháp Mười – vùng đất ngập nước nổi tiếng với những cánh đồng sen bạt ngàn – là nơi sản xuất hạt sen ngon nhất Việt Nam. Hạt sen Đồng Tháp to đều, màu trắng ngà, bùi ngọt tự nhiên.</p><h2>Giá Trị Dinh Dưỡng Cao</h2><p>Hạt sen giàu protein, carbohydrate phức hợp, và các khoáng chất thiết yếu như magie, kali, photpho. Ngoài ra chứa các alkaloid có tác dụng an thần, giúp ngủ ngon.</p>', '<h1>Hạt Sen Đồng Tháp – Vàng Trắng Vùng Đồng Tháp Mười</h1><p>Đồng Tháp Mười – vùng đất ngập nước nổi tiếng với những cánh đồng sen bạt ngàn – là nơi sản xuất hạt sen ngon nhất Việt Nam. Hạt sen Đồng Tháp to đều, màu trắng ngà, bùi ngọt tự nhiên.</p><h2>Giá Trị Dinh Dưỡng Cao</h2><p>Hạt sen giàu protein, carbohydrate phức hợp, và các khoáng chất thiết yếu như magie, kali, photpho. Ngoài ra chứa các alkaloid có tác dụng an thần, giúp ngủ ngon.</p>', '/donggoi/z7505564855196_c90f29755aefde1e525db90bd7f17126.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Food', 1, '2026-03-17 00:00:00.000', '2026-05-30 09:57:00.531', '2026-05-30 09:57:00.531'),
(39, 'Nước Mắm Nha Trang – Hương Vị Biển Khơi Từ Vùng Biển Khánh Hòa', 'Nước Mắm Nha Trang – Hương Vị Biển Khơi Từ Vùng Biển Khánh Hòa', 'nuoc-mam-nha-trang-huong-vi-bien-khoi', 'Nước mắm Nha Trang với vị ngọt thanh dịu hơn Phú Quốc, là lựa chọn phù hợp cho những ai thích hương vị nhẹ nhàng hơn trong nấu ăn hàng ngày.', 'Nước mắm Nha Trang với vị ngọt thanh dịu hơn Phú Quốc, là lựa chọn phù hợp cho những ai thích hương vị nhẹ nhàng hơn trong nấu ăn hàng ngày.', '<h1>Nước Mắm Nha Trang – Hương Vị Biển Khơi</h1><p>Nha Trang – Khánh Hòa có truyền thống làm nước mắm lâu đời không kém Phú Quốc. Nước mắm Nha Trang được ủ từ cá cơm biển Khánh Hòa, có vị ngọt thanh hơn, ít nồng hơn – phù hợp với khẩu vị đa dạng hơn.</p>', '<h1>Nước Mắm Nha Trang – Hương Vị Biển Khơi</h1><p>Nha Trang – Khánh Hòa có truyền thống làm nước mắm lâu đời không kém Phú Quốc. Nước mắm Nha Trang được ủ từ cá cơm biển Khánh Hòa, có vị ngọt thanh hơn, ít nồng hơn – phù hợp với khẩu vị đa dạng hơn.</p>', '/donggoi/z7505564859011_8a8b697acb23ba5e98cfea68c2ce343f.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-03-22 00:00:00.000', '2026-05-30 09:57:00.538', '2026-05-30 09:57:00.538'),
(40, 'Bánh Cuốn Hà Nội – Hướng Dẫn Làm Tại Nhà Cho Người Việt Ở Mỹ', 'Bánh Cuốn Hà Nội – Hướng Dẫn Làm Tại Nhà Cho Người Việt Ở Mỹ', 'banh-cuon-ha-noi-huong-dan-lam-tai-nha', 'Bánh cuốn Hà Nội mỏng mịn với nhân thịt mộc nhĩ là bữa sáng thanh nhẹ được yêu thích. Hướng dẫn làm tại nhà với dụng cụ đơn giản.', 'Bánh cuốn Hà Nội mỏng mịn với nhân thịt mộc nhĩ là bữa sáng thanh nhẹ được yêu thích. Hướng dẫn làm tại nhà với dụng cụ đơn giản.', '<h1>Bánh Cuốn Hà Nội – Làm Tại Nhà</h1><p>Bánh cuốn Hà Nội với lớp vỏ tráng mỏng trong suốt, nhân thịt băm và mộc nhĩ thơm ngon, ăn kèm chả lụa và nước mắm chua ngọt là bữa sáng cổ điển của người Hà Nội.</p><h2>Nguyên Liệu Cần Chuẩn Bị</h2><p>Bột gạo tẻ 300g, tinh bột năng 50g, thịt heo 200g, mộc nhĩ (nấm mèo) 30g, hành tím, gia vị. Đặc biệt cần chảo tráng bánh không dính.</p>', '<h1>Bánh Cuốn Hà Nội – Làm Tại Nhà</h1><p>Bánh cuốn Hà Nội với lớp vỏ tráng mỏng trong suốt, nhân thịt băm và mộc nhĩ thơm ngon, ăn kèm chả lụa và nước mắm chua ngọt là bữa sáng cổ điển của người Hà Nội.</p><h2>Nguyên Liệu Cần Chuẩn Bị</h2><p>Bột gạo tẻ 300g, tinh bột năng 50g, thịt heo 200g, mộc nhĩ (nấm mèo) 30g, hành tím, gia vị. Đặc biệt cần chảo tráng bánh không dính.</p>', '/donggoi/z7505564868161_fef89cd0f9813c230ca65763ebf2f1f2.jpg', 'LIKEFOOD', 'Công thức nấu ăn', 'Food', 1, '2026-03-27 00:00:00.000', '2026-05-30 09:57:00.543', '2026-05-30 09:57:00.543'),
(41, 'Đường Phèn Mật Hoa – Bí Quyết Làm Ngọt Tự Nhiên Của Bếp Việt', 'Đường Phèn Mật Hoa – Bí Quyết Làm Ngọt Tự Nhiên Của Bếp Việt', 'duong-phen-mat-hoa-bi-quyet-lam-ngot-tu-nhien', 'Đường phèn mật hoa tự nhiên là loại đường được ưa chuộng trong ẩm thực Việt với vị ngọt thanh khác biệt, ít ảnh hưởng đến đường huyết.', 'Đường phèn mật hoa tự nhiên là loại đường được ưa chuộng trong ẩm thực Việt với vị ngọt thanh khác biệt, ít ảnh hưởng đến đường huyết.', '<h1>Đường Phèn Mật Hoa – Ngọt Tự Nhiên</h1><p>Đường phèn (rock sugar) được kết tinh từ nước đường mía chưng cất, có cấu trúc tinh thể lớn trong suốt. Khác với đường trắng tinh luyện, đường phèn giữ được một số khoáng chất tự nhiên và có vị ngọt thanh hơn.</p>', '<h1>Đường Phèn Mật Hoa – Ngọt Tự Nhiên</h1><p>Đường phèn (rock sugar) được kết tinh từ nước đường mía chưng cất, có cấu trúc tinh thể lớn trong suốt. Khác với đường trắng tinh luyện, đường phèn giữ được một số khoáng chất tự nhiên và có vị ngọt thanh hơn.</p>', '/donggoi/z7505564871024_efd275f2b4614e7a22ab105c40eefedb.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Food', 1, '2026-04-03 00:00:00.000', '2026-05-30 09:57:00.549', '2026-05-30 09:57:00.549'),
(42, 'Sả Khô Nghiền – Gia Vị Tiện Lợi Không Thể Thiếu Trong Bếp Việt Tại Mỹ', 'Sả Khô Nghiền – Gia Vị Tiện Lợi Không Thể Thiếu Trong Bếp Việt Tại Mỹ', 'sa-kho-nghien-gia-vi-tien-loi-bep-viet-tai-my', 'Sả khô nghiền mịn từ sả tươi Tây Ninh giúp bạn sử dụng được hương thơm của sả mọi lúc mọi nơi mà không cần tìm mua sả tươi.', 'Sả khô nghiền mịn từ sả tươi Tây Ninh giúp bạn sử dụng được hương thơm của sả mọi lúc mọi nơi mà không cần tìm mua sả tươi.', '<h1>Sả Khô Nghiền – Gia Vị Tiện Lợi</h1><p>Sả (lemongrass) là linh hồn của nhiều món Việt từ bún bò Huế đến cà ri, gà nướng. Nhưng không phải lúc nào cũng tìm được sả tươi, đặc biệt ở Mỹ. Sả khô nghiền là giải pháp hoàn hảo.</p>', '<h1>Sả Khô Nghiền – Gia Vị Tiện Lợi</h1><p>Sả (lemongrass) là linh hồn của nhiều món Việt từ bún bò Huế đến cà ri, gà nướng. Nhưng không phải lúc nào cũng tìm được sả tươi, đặc biệt ở Mỹ. Sả khô nghiền là giải pháp hoàn hảo.</p>', '/donggoi/z7505564875008_9cd81797c9c011d276ec1b434e691d73.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-04-08 00:00:00.000', '2026-05-30 09:57:00.554', '2026-05-30 09:57:00.554'),
(43, 'Tiêu Phú Quốc – Loại Tiêu Nổi Tiếng Nhất Đông Nam Á', 'Tiêu Phú Quốc – Loại Tiêu Nổi Tiếng Nhất Đông Nam Á', 'tieu-phu-quoc-noi-tieng-nhat-dong-nam-a', 'Tiêu Phú Quốc được đánh giá là một trong những loại tiêu ngon nhất thế giới. Tìm hiểu tại sao tiêu Phú Quốc đặc biệt và cách sử dụng tối ưu.', 'Tiêu Phú Quốc được đánh giá là một trong những loại tiêu ngon nhất thế giới. Tìm hiểu tại sao tiêu Phú Quốc đặc biệt và cách sử dụng tối ưu.', '<h1>Tiêu Phú Quốc – Loại Tiêu Nổi Tiếng Nhất</h1><p>Hạt tiêu Phú Quốc có hàm lượng tinh dầu cao hơn nhiều so với tiêu trồng ở nơi khác, tạo nên hương thơm và vị cay đặc biệt. Tiêu Phú Quốc đã được cấp chỉ dẫn địa lý tại Việt Nam.</p>', '<h1>Tiêu Phú Quốc – Loại Tiêu Nổi Tiếng Nhất</h1><p>Hạt tiêu Phú Quốc có hàm lượng tinh dầu cao hơn nhiều so với tiêu trồng ở nơi khác, tạo nên hương thơm và vị cay đặc biệt. Tiêu Phú Quốc đã được cấp chỉ dẫn địa lý tại Việt Nam.</p>', '/donggoi/z7505564880701_3a2b8c43854ab9615284fc28b455cc46.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-04-12 00:00:00.000', '2026-05-30 09:57:00.559', '2026-05-30 09:57:00.559'),
(44, 'Cơm Lam Ống Tre – Hương Vị Rừng Núi Tây Bắc Khó Quên', 'Cơm Lam Ống Tre – Hương Vị Rừng Núi Tây Bắc Khó Quên', 'com-lam-ong-tre-huong-vi-rung-nui-tay-bac', 'Cơm lam – nếp nương nấu trong ống tre trên than hồng – là đặc sản Tây Bắc với hương vị rừng núi độc đáo không thể tìm thấy ở nơi nào khác.', 'Cơm lam – nếp nương nấu trong ống tre trên than hồng – là đặc sản Tây Bắc với hương vị rừng núi độc đáo không thể tìm thấy ở nơi nào khác.', '<h1>Cơm Lam Ống Tre – Hương Vị Rừng Núi</h1><p>Cơm lam không chỉ là thức ăn – đó là cả một nghệ thuật nấu nướng của người dân miền núi Tây Bắc. Nếp nương được đổ vào ống tre non cùng nước cốt dừa và một chút muối, nướng trên than hồng đến khi ống tre cháy vàng.</p>', '<h1>Cơm Lam Ống Tre – Hương Vị Rừng Núi</h1><p>Cơm lam không chỉ là thức ăn – đó là cả một nghệ thuật nấu nướng của người dân miền núi Tây Bắc. Nếp nương được đổ vào ống tre non cùng nước cốt dừa và một chút muối, nướng trên than hồng đến khi ống tre cháy vàng.</p>', '/donggoi/z7505564881208_abe0ec43e14fa3d89d19618047aefa29.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-04-17 00:00:00.000', '2026-05-30 09:57:00.565', '2026-05-30 09:57:00.565'),
(45, 'Lạp Xưởng Cần Thơ – Đặc Sản Ngày Tết Không Thể Thiếu Của Gia Đình Miền Tây', 'Lạp Xưởng Cần Thơ – Đặc Sản Ngày Tết Không Thể Thiếu Của Gia Đình Miền Tây', 'lap-xuong-can-tho-dac-san-ngay-tet', 'Lạp xưởng Cần Thơ là đặc sản Tết không thể thiếu của gia đình miền Tây Nam Bộ. Hướng dẫn chọn mua và bảo quản lạp xưởng đúng cách.', 'Lạp xưởng Cần Thơ là đặc sản Tết không thể thiếu của gia đình miền Tây Nam Bộ. Hướng dẫn chọn mua và bảo quản lạp xưởng đúng cách.', '<h1>Lạp Xưởng Cần Thơ – Đặc Sản Ngày Tết</h1><p>Lạp xưởng (xúc xích khô kiểu Trung Hoa) đã được Việt hóa hoàn toàn trong tay người miền Tây Cần Thơ. Lạp xưởng tươi Cần Thơ có màu đỏ hồng đẹp, hương thơm ngũ vị hương, ăn chiên hoặc nướng đều ngon.</p>', '<h1>Lạp Xưởng Cần Thơ – Đặc Sản Ngày Tết</h1><p>Lạp xưởng (xúc xích khô kiểu Trung Hoa) đã được Việt hóa hoàn toàn trong tay người miền Tây Cần Thơ. Lạp xưởng tươi Cần Thơ có màu đỏ hồng đẹp, hương thơm ngũ vị hương, ăn chiên hoặc nướng đều ngon.</p>', '/donggoi/z7505564890463_9e4e59dad2c045b1e26269e591320d86.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-04-22 00:00:00.000', '2026-05-30 09:57:00.569', '2026-05-30 09:57:00.569'),
(46, 'Mắm Tôm Hải Phòng – Gia Vị Đặc Trưng Của Bún Đậu Mắm Tôm', 'Mắm Tôm Hải Phòng – Gia Vị Đặc Trưng Của Bún Đậu Mắm Tôm', 'mam-tom-hai-phong-gia-vi-bun-dau', 'Mắm tôm Hải Phòng là linh hồn của món bún đậu mắm tôm nổi tiếng. Tìm hiểu cách làm mắm tôm chưng chanh ớt chuẩn vị Bắc.', 'Mắm tôm Hải Phòng là linh hồn của món bún đậu mắm tôm nổi tiếng. Tìm hiểu cách làm mắm tôm chưng chanh ớt chuẩn vị Bắc.', '<h1>Mắm Tôm Hải Phòng – Linh Hồn Của Bún Đậu</h1><p>Không có loại mắm nào chia rẽ ý kiến người Việt nhiều như mắm tôm – người yêu thì cực yêu, người ghét thì không thể chịu được mùi. Nhưng với người yêu bún đậu mắm tôm, đây là loại gia vị không thể thay thế.</p>', '<h1>Mắm Tôm Hải Phòng – Linh Hồn Của Bún Đậu</h1><p>Không có loại mắm nào chia rẽ ý kiến người Việt nhiều như mắm tôm – người yêu thì cực yêu, người ghét thì không thể chịu được mùi. Nhưng với người yêu bún đậu mắm tôm, đây là loại gia vị không thể thay thế.</p>', '/donggoi/z7505564893406_1b7238dfe36b333e19ec6832714ef729.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-04-27 00:00:00.000', '2026-05-30 09:57:00.575', '2026-05-30 09:57:00.575'),
(47, 'Ruốc Heo Sài Gòn – Cách Làm Ruốc Tơi Ngon Không Bị Vón Cục', 'Ruốc Heo Sài Gòn – Cách Làm Ruốc Tơi Ngon Không Bị Vón Cục', 'ruoc-heo-sai-gon-cach-lam-toi-ngon', 'Ruốc (chà bông) heo Sài Gòn tơi mịn, vị mặn ngọt vừa phải là thức ăn kèm phổ biến trong gia đình Việt. Bí quyết làm ruốc tơi không vón cục.', 'Ruốc (chà bông) heo Sài Gòn tơi mịn, vị mặn ngọt vừa phải là thức ăn kèm phổ biến trong gia đình Việt. Bí quyết làm ruốc tơi không vón cục.', '<h1>Ruốc Heo Sài Gòn – Bí Quyết Tơi Ngon</h1><p>Ruốc heo (chà bông, thịt cháy) là món ăn kèm quen thuộc trong bếp Việt – rắc cháo, ăn với cơm trắng, kẹp bánh mì hay trộn salad đều ngon. Làm ruốc tơi và không bị vón là bí quyết quan trọng nhất.</p>', '<h1>Ruốc Heo Sài Gòn – Bí Quyết Tơi Ngon</h1><p>Ruốc heo (chà bông, thịt cháy) là món ăn kèm quen thuộc trong bếp Việt – rắc cháo, ăn với cơm trắng, kẹp bánh mì hay trộn salad đều ngon. Làm ruốc tơi và không bị vón là bí quyết quan trọng nhất.</p>', '/donggoi/z7505564898290_8a3adf0c606e893d537d549b47d3c01d.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-05-02 00:00:00.000', '2026-05-30 09:57:00.579', '2026-05-30 09:57:00.579'),
(48, 'Trà Bí Đao Mật Ong – Thức Uống Giải Nhiệt Mùa Hè Cho Người Việt Tại Mỹ', 'Trà Bí Đao Mật Ong – Thức Uống Giải Nhiệt Mùa Hè Cho Người Việt Tại Mỹ', 'tra-bi-dao-mat-ong-giai-nhiet-mua-he', 'Trà bí đao kết hợp mật ong là thức uống giải nhiệt tuyệt vời và lành mạnh cho mùa hè nóng bức tại Mỹ, với nhiều lợi ích sức khỏe đã được chứng minh.', 'Trà bí đao kết hợp mật ong là thức uống giải nhiệt tuyệt vời và lành mạnh cho mùa hè nóng bức tại Mỹ, với nhiều lợi ích sức khỏe đã được chứng minh.', '<h1>Trà Bí Đao Mật Ong – Giải Nhiệt Mùa Hè</h1><p>Bí đao (winter melon) là loại rau quen thuộc trong ẩm thực Á Đông, nổi tiếng với tác dụng thanh nhiệt, lợi tiểu và giải độc. Kết hợp với mật ong nguyên chất tạo ra thức uống mùa hè tuyệt vời.</p>', '<h1>Trà Bí Đao Mật Ong – Giải Nhiệt Mùa Hè</h1><p>Bí đao (winter melon) là loại rau quen thuộc trong ẩm thực Á Đông, nổi tiếng với tác dụng thanh nhiệt, lợi tiểu và giải độc. Kết hợp với mật ong nguyên chất tạo ra thức uống mùa hè tuyệt vời.</p>', '/donggoi/z7505564902174_507f7d71f1f49151b5bdc420cc522fa7.jpg', 'LIKEFOOD', 'Đồ uống', 'Food', 1, '2026-05-08 00:00:00.000', '2026-05-30 09:57:00.583', '2026-05-30 09:57:00.583'),
(49, 'Gạo Hương Lài Sóc Trăng – Bí Ẩn Của Hạt Gạo Thơm Mùi Hoa Lài', 'Gạo Hương Lài Sóc Trăng – Bí Ẩn Của Hạt Gạo Thơm Mùi Hoa Lài', 'gao-huong-lai-soc-trang-bi-an-gao-thom', 'Gạo hương lài Sóc Trăng có hương thơm tự nhiên của hoa nhài mà không cần bất kỳ chất phụ gia nào. Bí ẩn di truyền học đằng sau loại gạo đặc biệt này.', 'Gạo hương lài Sóc Trăng có hương thơm tự nhiên của hoa nhài mà không cần bất kỳ chất phụ gia nào. Bí ẩn di truyền học đằng sau loại gạo đặc biệt này.', '<h1>Gạo Hương Lài Sóc Trăng – Bí Ẩn Hương Thơm</h1><p>Hương thơm của gạo hương lài đến từ hợp chất 2-acetyl-1-pyrroline (2AP) – cùng hợp chất tạo mùi trong hoa nhài và pandan. Giống lúa hương lài có đột biến gen tạo ra nhiều 2AP hơn các giống khác.</p>', '<h1>Gạo Hương Lài Sóc Trăng – Bí Ẩn Hương Thơm</h1><p>Hương thơm của gạo hương lài đến từ hợp chất 2-acetyl-1-pyrroline (2AP) – cùng hợp chất tạo mùi trong hoa nhài và pandan. Giống lúa hương lài có đột biến gen tạo ra nhiều 2AP hơn các giống khác.</p>', '/donggoi/z7505564908794_c0d943122fbfaaf86f8a01a4b8b40381.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Food', 1, '2026-05-12 00:00:00.000', '2026-05-30 09:57:00.587', '2026-05-30 09:57:00.587'),
(50, 'Bánh Phồng Tôm Ăn Liền – Snack Cuối Tuần Của Gia Đình Việt', 'Bánh Phồng Tôm Ăn Liền – Snack Cuối Tuần Của Gia Đình Việt', 'banh-phong-tom-an-lien-snack-cuoi-tuan', 'Bánh phồng tôm ăn liền đã qua chế biến sẵn là snack tiện lợi cho gia đình Việt cuối tuần. So sánh các thương hiệu và cách bảo quản đúng.', 'Bánh phồng tôm ăn liền đã qua chế biến sẵn là snack tiện lợi cho gia đình Việt cuối tuần. So sánh các thương hiệu và cách bảo quản đúng.', '<h1>Bánh Phồng Tôm Ăn Liền – Snack Cuối Tuần</h1><p>Khác với bánh phồng tôm sống cần chiên trước khi ăn, bánh phồng tôm ăn liền đã được nướng hoặc chiên sẵn, đóng gói kín khí để giữ độ giòn. Tiện lợi cho những buổi xem phim hoặc tụ họp gia đình.</p>', '<h1>Bánh Phồng Tôm Ăn Liền – Snack Cuối Tuần</h1><p>Khác với bánh phồng tôm sống cần chiên trước khi ăn, bánh phồng tôm ăn liền đã được nướng hoặc chiên sẵn, đóng gói kín khí để giữ độ giòn. Tiện lợi cho những buổi xem phim hoặc tụ họp gia đình.</p>', '/donggoi/z7505564911183_81aa3ad25d676f1c4da687f2329a8644.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Food', 1, '2026-05-18 00:00:00.000', '2026-05-30 09:57:00.592', '2026-05-30 09:57:00.592'),
(51, 'Cà Phê Robusta Việt Nam – Tại Sao Được Cả Thế Giới Tìm Mua?', 'Cà Phê Robusta Việt Nam – Tại Sao Được Cả Thế Giới Tìm Mua?', 'ca-phe-robusta-viet-nam-ca-the-gioi-tim-mua', 'Việt Nam là nước xuất khẩu cà phê Robusta lớn nhất thế giới. Tìm hiểu đặc điểm, hương vị và cách pha cà phê Robusta đúng chuẩn Việt Nam.', 'Việt Nam là nước xuất khẩu cà phê Robusta lớn nhất thế giới. Tìm hiểu đặc điểm, hương vị và cách pha cà phê Robusta đúng chuẩn Việt Nam.', '<h1>Cà Phê Robusta Việt Nam – Được Cả Thế Giới Tìm Mua</h1><p>Việt Nam sản xuất hơn 1.6 triệu tấn cà phê mỗi năm, xếp thứ 2 thế giới về sản lượng. Đặc biệt, Robusta Việt Nam – đặc biệt là Robusta Buôn Ma Thuột – có hàm lượng caffeine cao và hương vị đặc trưng được các nhà rang xay toàn cầu tìm kiếm.</p>', '<h1>Cà Phê Robusta Việt Nam – Được Cả Thế Giới Tìm Mua</h1><p>Việt Nam sản xuất hơn 1.6 triệu tấn cà phê mỗi năm, xếp thứ 2 thế giới về sản lượng. Đặc biệt, Robusta Việt Nam – đặc biệt là Robusta Buôn Ma Thuột – có hàm lượng caffeine cao và hương vị đặc trưng được các nhà rang xay toàn cầu tìm kiếm.</p>', '/donggoi/z7505564684692_d6276e4ba8c26d027fd3b44ae5a0fa92.jpg', 'LIKEFOOD', 'Đồ uống', 'Food', 1, '2026-05-22 00:00:00.000', '2026-05-30 09:57:00.598', '2026-05-30 09:57:00.598');
INSERT INTO `bai_viet` (`ma_bai_viet`, `tieu_de`, `tieu_de_en`, `duong_dan_tinh`, `tom_tat`, `tom_tat_en`, `noi_dung`, `noi_dung_en`, `anh_dai_dien`, `ten_tac_gia`, `danh_muc`, `danh_muc_en`, `da_xuat_ban`, `ngay_xuat_ban`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(52, 'Thanh Long Sấy Dẻo – Siêu Thực Phẩm Màu Hồng Từ Bình Thuận', 'Thanh Long Sấy Dẻo – Siêu Thực Phẩm Màu Hồng Từ Bình Thuận', 'thanh-long-say-deo-sieu-thuc-pham-mau-hong', 'Thanh long đỏ Bình Thuận sấy dẻo giàu betalain – chất màu tự nhiên có khả năng chống oxy hóa mạnh. Khám phá \'siêu thực phẩm\' mới của ẩm thực Việt.', 'Thanh long đỏ Bình Thuận sấy dẻo giàu betalain – chất màu tự nhiên có khả năng chống oxy hóa mạnh. Khám phá \'siêu thực phẩm\' mới của ẩm thực Việt.', '<h1>Thanh Long Sấy Dẻo – Siêu Thực Phẩm Màu Hồng</h1><p>Thanh long ruột đỏ Bình Thuận có màu hồng đỏ rực rỡ từ betalain – sắc tố tự nhiên có hoạt tính chống oxy hóa cao hơn beta-carotene. Khi sấy dẻo, màu sắc và dinh dưỡng được bảo toàn xuất sắc.</p>', '<h1>Thanh Long Sấy Dẻo – Siêu Thực Phẩm Màu Hồng</h1><p>Thanh long ruột đỏ Bình Thuận có màu hồng đỏ rực rỡ từ betalain – sắc tố tự nhiên có hoạt tính chống oxy hóa cao hơn beta-carotene. Khi sấy dẻo, màu sắc và dinh dưỡng được bảo toàn xuất sắc.</p>', '/donggoi/z7505564686729_66d7081fdb9eb829ef3b8e0726c69d15.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-05-25 00:00:00.000', '2026-05-30 09:57:00.602', '2026-05-30 09:57:00.602'),
(53, 'Mắm Bò Hóc Khmer – Đặc Sản Huyền Bí Của Người Khmer Nam Bộ', 'Mắm Bò Hóc Khmer – Đặc Sản Huyền Bí Của Người Khmer Nam Bộ', 'mam-bo-hoc-khmer-dac-san-huyen-bi', 'Mắm bò hóc là đặc sản của người Khmer tại Trà Vinh và Sóc Trăng, dùng để nấu những món đặc trưng của cộng đồng này ở Mỹ.', 'Mắm bò hóc là đặc sản của người Khmer tại Trà Vinh và Sóc Trăng, dùng để nấu những món đặc trưng của cộng đồng này ở Mỹ.', '<h1>Mắm Bò Hóc Khmer – Đặc Sản Huyền Bí</h1><p>Prahok hay mắm bò hóc là linh hồn của ẩm thực Khmer. Được làm từ cá nước ngọt lên men, mắm bò hóc có hương vị mạnh và đặc trưng, dùng để nêm nhiều món ăn truyền thống Khmer.</p>', '<h1>Mắm Bò Hóc Khmer – Đặc Sản Huyền Bí</h1><p>Prahok hay mắm bò hóc là linh hồn của ẩm thực Khmer. Được làm từ cá nước ngọt lên men, mắm bò hóc có hương vị mạnh và đặc trưng, dùng để nêm nhiều món ăn truyền thống Khmer.</p>', '/donggoi/z7505564694601_9a8a20e42c5b562612a5c828b940441e.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-05-28 00:00:00.000', '2026-05-30 09:57:00.606', '2026-05-30 09:57:00.606'),
(54, 'Tôm Rim Me – Hương Vị Chua Ngọt Đặc Trưng Của Sài Gòn', 'Tôm Rim Me – Hương Vị Chua Ngọt Đặc Trưng Của Sài Gòn', 'tom-rim-me-huong-vi-chua-ngot-sai-gon', 'Tôm rim me là món ăn đặc trưng của ẩm thực Sài Gòn với vị chua ngọt đậm đà từ me chua. Hướng dẫn chế biến và thưởng thức.', 'Tôm rim me là món ăn đặc trưng của ẩm thực Sài Gòn với vị chua ngọt đậm đà từ me chua. Hướng dẫn chế biến và thưởng thức.', '<h1>Tôm Rim Me – Hương Vị Chua Ngọt Sài Gòn</h1><p>Tôm rim me là sự kết hợp hoàn hảo giữa vị ngọt tự nhiên của tôm biển và vị chua ngọt đặc trưng của me Việt Nam. Món ăn này thể hiện rõ phong cách ẩm thực Sài Gòn: đậm đà, phóng khoáng, không ngại vị mạnh.</p>', '<h1>Tôm Rim Me – Hương Vị Chua Ngọt Sài Gòn</h1><p>Tôm rim me là sự kết hợp hoàn hảo giữa vị ngọt tự nhiên của tôm biển và vị chua ngọt đặc trưng của me Việt Nam. Món ăn này thể hiện rõ phong cách ẩm thực Sài Gòn: đậm đà, phóng khoáng, không ngại vị mạnh.</p>', '/donggoi/z7505564696871_2684d51a610e10a63218832a7d0e26d3.jpg', 'LIKEFOOD', 'Hải sản khô', 'Food', 1, '2026-01-16 00:00:00.000', '2026-05-30 09:57:00.611', '2026-05-30 09:57:00.611'),
(55, 'Nước Dừa Tươi Đóng Hộp Bến Tre – Lợi Ích Sức Khỏe Của \'Nước Điện Giải Tự Nhiên\'', 'Nước Dừa Tươi Đóng Hộp Bến Tre – Lợi Ích Sức Khỏe Của \'Nước Điện Giải Tự Nhiên\'', 'nuoc-dua-tuoi-dong-hop-ben-tre-loi-ich-suc-khoe', 'Nước dừa tươi được mệnh danh là \'nước điện giải tự nhiên\' nhờ hàm lượng kali và điện giải cao. Tìm hiểu lợi ích và cách uống đúng cách.', 'Nước dừa tươi được mệnh danh là \'nước điện giải tự nhiên\' nhờ hàm lượng kali và điện giải cao. Tìm hiểu lợi ích và cách uống đúng cách.', '<h1>Nước Dừa Tươi – Nước Điện Giải Tự Nhiên</h1><p>Nước dừa chứa nhiều kali hơn một quả chuối và ít natri hơn các loại nước thể thao. Đây là lý do nước dừa được gọi là \'isotonic drink của thiên nhiên\', lý tưởng sau khi tập thể dục.</p>', '<h1>Nước Dừa Tươi – Nước Điện Giải Tự Nhiên</h1><p>Nước dừa chứa nhiều kali hơn một quả chuối và ít natri hơn các loại nước thể thao. Đây là lý do nước dừa được gọi là \'isotonic drink của thiên nhiên\', lý tưởng sau khi tập thể dục.</p>', '/donggoi/z7505564700130_5dfdee1b79d74047db08339603bfb08d.jpg', 'LIKEFOOD', 'Đồ uống', 'Food', 1, '2026-01-24 00:00:00.000', '2026-05-30 09:57:00.617', '2026-05-30 09:57:00.617'),
(56, 'Bột Cacao Nguyên Chất Đắk Lắk – Cách Làm Kem Cacao Không Đường Tại Nhà', 'Bột Cacao Nguyên Chất Đắk Lắk – Cách Làm Kem Cacao Không Đường Tại Nhà', 'bot-cacao-nguyen-chat-dak-lak-kem-khong-duong', 'Bột cacao nguyên chất Đắk Lắk 100% không đường là nguyên liệu hoàn hảo cho các món tráng miệng healthy. Công thức kem cacao không đường đơn giản tại nhà.', 'Bột cacao nguyên chất Đắk Lắk 100% không đường là nguyên liệu hoàn hảo cho các món tráng miệng healthy. Công thức kem cacao không đường đơn giản tại nhà.', '<h1>Bột Cacao Nguyên Chất – Kem Không Đường Tại Nhà</h1><p>Cacao nguyên chất khác hoàn toàn với bột socola ngọt thông thường. Không đường, không chất béo thêm vào – chỉ là cacao thuần túy với hàm lượng flavonoid chống oxy hóa cao.</p>', '<h1>Bột Cacao Nguyên Chất – Kem Không Đường Tại Nhà</h1><p>Cacao nguyên chất khác hoàn toàn với bột socola ngọt thông thường. Không đường, không chất béo thêm vào – chỉ là cacao thuần túy với hàm lượng flavonoid chống oxy hóa cao.</p>', '/donggoi/z7505564706864_84dc016b181a848b0b0fdae575b946f5.jpg', 'LIKEFOOD', 'Đồ uống', 'Food', 1, '2026-02-06 00:00:00.000', '2026-05-30 09:57:00.621', '2026-05-30 09:57:00.621'),
(57, 'Bột Sắn Dây – Thức Uống Truyền Thống Giải Rượu Của Người Việt', 'Bột Sắn Dây – Thức Uống Truyền Thống Giải Rượu Của Người Việt', 'bot-san-day-giai-ruou-truyen-thong', 'Bột sắn dây là bài thuốc dân gian của người Việt để giải rượu và thanh nhiệt. Cơ sở khoa học đằng sau bài thuốc truyền thống này là gì?', 'Bột sắn dây là bài thuốc dân gian của người Việt để giải rượu và thanh nhiệt. Cơ sở khoa học đằng sau bài thuốc truyền thống này là gì?', '<h1>Bột Sắn Dây – Giải Rượu Truyền Thống</h1><p>Sắn dây (kudzu vine) từ lâu được dùng trong y học Đông phương để giải rượu. Nghiên cứu khoa học hiện đại xác nhận: isoflavone trong sắn dây ức chế enzyme acetaldehyde dehydrogenase, giúp cơ thể xử lý rượu nhanh hơn.</p>', '<h1>Bột Sắn Dây – Giải Rượu Truyền Thống</h1><p>Sắn dây (kudzu vine) từ lâu được dùng trong y học Đông phương để giải rượu. Nghiên cứu khoa học hiện đại xác nhận: isoflavone trong sắn dây ức chế enzyme acetaldehyde dehydrogenase, giúp cơ thể xử lý rượu nhanh hơn.</p>', '/donggoi/z7505564710374_b57e8a2125530f9bd0b1c26e671da281.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-02-14 00:00:00.000', '2026-05-30 09:57:00.627', '2026-05-30 09:57:00.627'),
(58, 'Chuối Sấy Giòn – Snack Tốt Cho Sức Khỏe Hay Không?', 'Chuối Sấy Giòn – Snack Tốt Cho Sức Khỏe Hay Không?', 'chuoi-say-gion-snack-tot-cho-suc-khoe', 'Chuối sấy giòn ngày càng được dùng như snack healthy. Phân tích chi tiết giá trị dinh dưỡng, ưu nhược điểm và cách chọn mua chuối sấy chất lượng.', 'Chuối sấy giòn ngày càng được dùng như snack healthy. Phân tích chi tiết giá trị dinh dưỡng, ưu nhược điểm và cách chọn mua chuối sấy chất lượng.', '<h1>Chuối Sấy Giòn – Tốt Hay Không?</h1><p>Câu trả lời phụ thuộc vào loại chuối sấy bạn chọn. Chuối sấy không dầu, không đường (dehydrated banana) giữ được phần lớn dinh dưỡng của chuối tươi và là snack khá lành mạnh. Nhưng chuối chiên dầu có hàm lượng chất béo cao hơn nhiều.</p>', '<h1>Chuối Sấy Giòn – Tốt Hay Không?</h1><p>Câu trả lời phụ thuộc vào loại chuối sấy bạn chọn. Chuối sấy không dầu, không đường (dehydrated banana) giữ được phần lớn dinh dưỡng của chuối tươi và là snack khá lành mạnh. Nhưng chuối chiên dầu có hàm lượng chất béo cao hơn nhiều.</p>', '/donggoi/z7505564716466_19362f3e6e40612fb2d28f029726d15d.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-02-21 00:00:00.000', '2026-05-30 09:57:00.631', '2026-05-30 09:57:00.631'),
(59, 'Nhãn Lồng Hưng Yên – Vị Ngọt Đặc Trưng Của Đồng Bằng Bắc Bộ', 'Nhãn Lồng Hưng Yên – Vị Ngọt Đặc Trưng Của Đồng Bằng Bắc Bộ', 'nhan-long-hung-yen-vi-ngot-dac-trung', 'Nhãn lồng Hưng Yên là loại nhãn ngon nhất Việt Nam với hạt nhỏ, thịt dày, ngọt đậm. Tìm hiểu tại sao nhãn Hưng Yên khác biệt hoàn toàn.', 'Nhãn lồng Hưng Yên là loại nhãn ngon nhất Việt Nam với hạt nhỏ, thịt dày, ngọt đậm. Tìm hiểu tại sao nhãn Hưng Yên khác biệt hoàn toàn.', '<h1>Nhãn Lồng Hưng Yên – Vị Ngọt Đặc Trưng Bắc Bộ</h1><p>Nhãn lồng (long nhãn) Hưng Yên được trồng từ thế kỷ 14, là giống nhãn gắn liền với lịch sử của vùng đất học Hưng Yên. Hạt nhỏ bằng hạt đậu xanh, thịt dày trong, vị ngọt đậm thanh là đặc điểm nhận biết nhãn lồng chính hiệu.</p>', '<h1>Nhãn Lồng Hưng Yên – Vị Ngọt Đặc Trưng Bắc Bộ</h1><p>Nhãn lồng (long nhãn) Hưng Yên được trồng từ thế kỷ 14, là giống nhãn gắn liền với lịch sử của vùng đất học Hưng Yên. Hạt nhỏ bằng hạt đậu xanh, thịt dày trong, vị ngọt đậm thanh là đặc điểm nhận biết nhãn lồng chính hiệu.</p>', '/donggoi/z7505564722203_71d3e72e8069b04519218bcf7274eded.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-02-26 00:00:00.000', '2026-05-30 09:57:00.637', '2026-05-30 09:57:00.637'),
(60, 'Sa Tế Chay – Vì Sao Là Loại Gia Vị Không Thể Thiếu Cho Người Ăn Chay?', 'Sa Tế Chay – Vì Sao Là Loại Gia Vị Không Thể Thiếu Cho Người Ăn Chay?', 'sa-te-chay-gia-vi-khong-the-thieu-nguoi-an-chay', 'Sa tế chay Đà Nẵng là phiên bản thuần thực vật của sa tế truyền thống, giúp món chay thêm đậm đà và hấp dẫn mà không dùng nguyên liệu động vật.', 'Sa tế chay Đà Nẵng là phiên bản thuần thực vật của sa tế truyền thống, giúp món chay thêm đậm đà và hấp dẫn mà không dùng nguyên liệu động vật.', '<h1>Sa Tế Chay – Gia Vị Cho Người Ăn Chay</h1><p>Nhiều người ăn chay tưởng rằng bỏ qua sa tế là mất đi vị đậm đà trong nấu ăn. Thực ra sa tế chay làm từ ớt, tỏi, sả, dầu thực vật hoàn toàn có thể tạo ra vị cay thơm không kém sa tế thường.</p>', '<h1>Sa Tế Chay – Gia Vị Cho Người Ăn Chay</h1><p>Nhiều người ăn chay tưởng rằng bỏ qua sa tế là mất đi vị đậm đà trong nấu ăn. Thực ra sa tế chay làm từ ớt, tỏi, sả, dầu thực vật hoàn toàn có thể tạo ra vị cay thơm không kém sa tế thường.</p>', '/donggoi/z7505564724290_73622428bb0eeecf9af5f68f615d2547.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-03-04 00:00:00.000', '2026-05-30 09:57:00.642', '2026-05-30 09:57:00.642'),
(61, 'Mít Sấy Giòn – Cách Ăn Mít Mà Không Lo Dính Nhựa', 'Mít Sấy Giòn – Cách Ăn Mít Mà Không Lo Dính Nhựa', 'mit-say-gion-an-mit-khong-lo-dinh-nhua', 'Mít sấy giòn là giải pháp hoàn hảo để thưởng thức mít mà không phải lo lắng về nhựa dính tay. Tìm hiểu tại sao mít sấy giòn lại hấp dẫn đến vậy.', 'Mít sấy giòn là giải pháp hoàn hảo để thưởng thức mít mà không phải lo lắng về nhựa dính tay. Tìm hiểu tại sao mít sấy giòn lại hấp dẫn đến vậy.', '<h1>Mít Sấy Giòn – Ăn Mít Không Lo Nhựa</h1><p>Ai cũng yêu mùi thơm của mít chín nhưng nhiều người ngại bóc vì nhựa dính tay rất khó rửa. Mít sấy giòn hoàn toàn khắc phục nhược điểm này – bạn thoải mái ăn mít mọi lúc mọi nơi.</p>', '<h1>Mít Sấy Giòn – Ăn Mít Không Lo Nhựa</h1><p>Ai cũng yêu mùi thơm của mít chín nhưng nhiều người ngại bóc vì nhựa dính tay rất khó rửa. Mít sấy giòn hoàn toàn khắc phục nhược điểm này – bạn thoải mái ăn mít mọi lúc mọi nơi.</p>', '/donggoi/z7505564730110_e4d1502776108876749bdcd76fe09e0d.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-03-11 00:00:00.000', '2026-05-30 09:57:00.647', '2026-05-30 09:57:00.647'),
(62, 'Ổi Sấy Giòn – Snack Ít Calo Giàu Vitamin C Cho Người Ăn Kiêng', 'Ổi Sấy Giòn – Snack Ít Calo Giàu Vitamin C Cho Người Ăn Kiêng', 'oi-say-gion-snack-it-calo-giau-vitamin-c', 'Ổi sấy giòn Long An là snack ít calo, giàu vitamin C và chất xơ, lý tưởng cho người đang ăn kiêng hoặc muốn duy trì cân nặng lành mạnh.', 'Ổi sấy giòn Long An là snack ít calo, giàu vitamin C và chất xơ, lý tưởng cho người đang ăn kiêng hoặc muốn duy trì cân nặng lành mạnh.', '<h1>Ổi Sấy Giòn – Snack Ít Calo Giàu Vitamin C</h1><p>Ổi xá lị Long An có hàm lượng vitamin C gấp 4 lần cam, ít đường tự nhiên và giàu chất xơ pectin có lợi cho tiêu hóa. Khi sấy giòn, vitamin C tuy giảm nhưng chất xơ và khoáng chất được giữ nguyên.</p>', '<h1>Ổi Sấy Giòn – Snack Ít Calo Giàu Vitamin C</h1><p>Ổi xá lị Long An có hàm lượng vitamin C gấp 4 lần cam, ít đường tự nhiên và giàu chất xơ pectin có lợi cho tiêu hóa. Khi sấy giòn, vitamin C tuy giảm nhưng chất xơ và khoáng chất được giữ nguyên.</p>', '/donggoi/z7505564735476_b57bfb9a1bb28329a1cdfb66736479f0.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-03-18 00:00:00.000', '2026-05-30 09:57:00.652', '2026-05-30 09:57:00.652'),
(63, 'Bột Gạo Lứt – Nguyên Liệu Làm Bánh Lành Mạnh Cho Gia Đình', 'Bột Gạo Lứt – Nguyên Liệu Làm Bánh Lành Mạnh Cho Gia Đình', 'bot-gao-lut-nguyen-lieu-lam-banh-lanh-manh', 'Bột gạo lứt nguyên cám là nguyên liệu làm bánh lành mạnh với chỉ số đường huyết thấp, giàu chất xơ và vitamin B. Gợi ý các công thức bánh đơn giản.', 'Bột gạo lứt nguyên cám là nguyên liệu làm bánh lành mạnh với chỉ số đường huyết thấp, giàu chất xơ và vitamin B. Gợi ý các công thức bánh đơn giản.', '<h1>Bột Gạo Lứt – Làm Bánh Lành Mạnh</h1><p>Gạo lứt khác gạo trắng ở chỗ giữ lại lớp cám bên ngoài – nơi chứa phần lớn dinh dưỡng của hạt gạo. Bột gạo lứt có màu nâu nhạt, vị hơi bùi, phù hợp làm nhiều loại bánh healthy.</p>', '<h1>Bột Gạo Lứt – Làm Bánh Lành Mạnh</h1><p>Gạo lứt khác gạo trắng ở chỗ giữ lại lớp cám bên ngoài – nơi chứa phần lớn dinh dưỡng của hạt gạo. Bột gạo lứt có màu nâu nhạt, vị hơi bùi, phù hợp làm nhiều loại bánh healthy.</p>', '/donggoi/z7505564740297_0cda7f6f6a772b8f2dad30652e565f32.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-03-24 00:00:00.000', '2026-05-30 09:57:00.658', '2026-05-30 09:57:00.658'),
(64, 'Ghẹ Rang Muối Vũng Tàu – Hương Vị Biển Khơi Đóng Hộp Tiện Lợi', 'Ghẹ Rang Muối Vũng Tàu – Hương Vị Biển Khơi Đóng Hộp Tiện Lợi', 'ghe-rang-muoi-vung-tau-huong-vi-bien-khoi', 'Ghẹ rang muối đóng hộp Vũng Tàu là cách thưởng thức hải sản tươi ngon tiện lợi nhất dành cho người Việt tại Mỹ không có điều kiện mua hải sản tươi.', 'Ghẹ rang muối đóng hộp Vũng Tàu là cách thưởng thức hải sản tươi ngon tiện lợi nhất dành cho người Việt tại Mỹ không có điều kiện mua hải sản tươi.', '<h1>Ghẹ Rang Muối Vũng Tàu – Biển Khơi Đóng Hộp</h1><p>Ghẹ (crab) Vũng Tàu nổi tiếng thịt ngọt, chắc, được rang muối theo công thức gia truyền và đóng hộp chân không. Mở hộp là thơm phức, ăn ngay mà không cần chế biến thêm.</p>', '<h1>Ghẹ Rang Muối Vũng Tàu – Biển Khơi Đóng Hộp</h1><p>Ghẹ (crab) Vũng Tàu nổi tiếng thịt ngọt, chắc, được rang muối theo công thức gia truyền và đóng hộp chân không. Mở hộp là thơm phức, ăn ngay mà không cần chế biến thêm.</p>', '/donggoi/z7505564745517_52a108b55ca4c181de118cd6bc541a66.jpg', 'LIKEFOOD', 'Hải sản khô', 'Food', 1, '2026-03-30 00:00:00.000', '2026-05-30 09:57:00.664', '2026-05-30 09:57:00.664'),
(65, 'Mận Sấy Bắc Hà Lào Cai – Vị Chua Ngọt Đặc Trưng Của Vùng Cao', 'Mận Sấy Bắc Hà Lào Cai – Vị Chua Ngọt Đặc Trưng Của Vùng Cao', 'man-say-bac-ha-lao-cai-vi-chua-ngot', 'Mận hậu Bắc Hà Lào Cai sấy khô giữ nguyên vị chua ngọt tươi của trái mận vùng cao Tây Bắc – loại mận ngon nhất Việt Nam.', 'Mận hậu Bắc Hà Lào Cai sấy khô giữ nguyên vị chua ngọt tươi của trái mận vùng cao Tây Bắc – loại mận ngon nhất Việt Nam.', '<h1>Mận Sấy Bắc Hà – Vị Chua Ngọt Vùng Cao</h1><p>Mận hậu Bắc Hà (Lào Cai) là giống mận đặc biệt của vùng cao Tây Bắc, quả to, thịt dày, vị chua ngọt cân bằng đặc trưng. Sấy khô giúp bảo quản được hàng tháng mà vẫn giữ được phần lớn hương vị.</p>', '<h1>Mận Sấy Bắc Hà – Vị Chua Ngọt Vùng Cao</h1><p>Mận hậu Bắc Hà (Lào Cai) là giống mận đặc biệt của vùng cao Tây Bắc, quả to, thịt dày, vị chua ngọt cân bằng đặc trưng. Sấy khô giúp bảo quản được hàng tháng mà vẫn giữ được phần lớn hương vị.</p>', '/donggoi/z7505564748092_5512a5fe8ea0f89d9c3f96c46d81fe69.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-04-06 00:00:00.000', '2026-05-30 09:57:00.668', '2026-05-30 09:57:00.668'),
(66, 'Kẹo Dừa Bến Tre – Từ Đặc Sản Địa Phương Đến Thương Hiệu Toàn Cầu', 'Kẹo Dừa Bến Tre – Từ Đặc Sản Địa Phương Đến Thương Hiệu Toàn Cầu', 'keo-dua-ben-tre-tu-dia-phuong-den-toan-cau', 'Kẹo dừa Bến Tre đã vươn ra thị trường hơn 30 quốc gia. Tìm hiểu hành trình từ sản phẩm thủ công của người dân xứ dừa đến thương hiệu được thế giới biết đến.', 'Kẹo dừa Bến Tre đã vươn ra thị trường hơn 30 quốc gia. Tìm hiểu hành trình từ sản phẩm thủ công của người dân xứ dừa đến thương hiệu được thế giới biết đến.', '<h1>Kẹo Dừa Bến Tre – Từ Địa Phương Đến Toàn Cầu</h1><p>Kẹo dừa Bến Tre là câu chuyện thành công của thương hiệu địa phương Việt Nam. Từ cơ sở sản xuất thủ công gia đình, kẹo dừa Bến Tre đã xuất khẩu sang hơn 30 quốc gia, trở thành đặc sản Việt Nam được yêu thích toàn cầu.</p>', '<h1>Kẹo Dừa Bến Tre – Từ Địa Phương Đến Toàn Cầu</h1><p>Kẹo dừa Bến Tre là câu chuyện thành công của thương hiệu địa phương Việt Nam. Từ cơ sở sản xuất thủ công gia đình, kẹo dừa Bến Tre đã xuất khẩu sang hơn 30 quốc gia, trở thành đặc sản Việt Nam được yêu thích toàn cầu.</p>', '/donggoi/z7505564753948_f0d81d65a7762dca7f17982490eaf9cf.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Food', 1, '2026-04-13 00:00:00.000', '2026-05-30 09:57:00.672', '2026-05-30 09:57:00.672'),
(67, 'Hạt Dẻ Sấy Đà Lạt – Thú Vui Mùa Thu Của Vùng Cao Nguyên', 'Hạt Dẻ Sấy Đà Lạt – Thú Vui Mùa Thu Của Vùng Cao Nguyên', 'hat-de-say-da-lat-thu-vui-mua-thu', 'Hạt dẻ tươi Đà Lạt sấy khô là đặc sản mùa thu hiếm hoi của vùng cao nguyên mát lạnh. Vị bùi ngọt đặc trưng của hạt dẻ sấy không loại hạt nào có được.', 'Hạt dẻ tươi Đà Lạt sấy khô là đặc sản mùa thu hiếm hoi của vùng cao nguyên mát lạnh. Vị bùi ngọt đặc trưng của hạt dẻ sấy không loại hạt nào có được.', '<h1>Hạt Dẻ Sấy Đà Lạt – Thú Vui Mùa Thu</h1><p>Hạt dẻ (chestnut) Đà Lạt thu hoạch vào mùa thu, khi thời tiết se lạnh nhất. Sấy khô bằng than hồng tạo ra hương khói đặc trưng khác hoàn toàn với hạt dẻ rang bơ thông thường.</p>', '<h1>Hạt Dẻ Sấy Đà Lạt – Thú Vui Mùa Thu</h1><p>Hạt dẻ (chestnut) Đà Lạt thu hoạch vào mùa thu, khi thời tiết se lạnh nhất. Sấy khô bằng than hồng tạo ra hương khói đặc trưng khác hoàn toàn với hạt dẻ rang bơ thông thường.</p>', '/donggoi/z7505564758947_430f3c8c878622add39d0a19ed9d6891.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Food', 1, '2026-04-19 00:00:00.000', '2026-05-30 09:57:00.677', '2026-05-30 09:57:00.677'),
(68, 'Ruốc Tôm Huế – Nguyên Liệu Bí Quyết Của Nồi Bún Bò Chuẩn Vị', 'Ruốc Tôm Huế – Nguyên Liệu Bí Quyết Của Nồi Bún Bò Chuẩn Vị', 'ruoc-tom-hue-bi-quyet-bun-bo-chuan-vi', 'Ruốc (mắm ruốc) tôm Huế là nguyên liệu không thể thiếu của nồi bún bò Huế chuẩn. Tìm hiểu sự khác biệt giữa ruốc tôm Huế và các vùng khác.', 'Ruốc (mắm ruốc) tôm Huế là nguyên liệu không thể thiếu của nồi bún bò Huế chuẩn. Tìm hiểu sự khác biệt giữa ruốc tôm Huế và các vùng khác.', '<h1>Ruốc Tôm Huế – Bí Quyết Bún Bò Chuẩn Vị</h1><p>Người Huế có câu: \'Bún bò không ruốc là bún bò giả\'. Ruốc (mắm ruốc) tôm Huế là yếu tố quyết định hương vị đặc trưng của nồi bún bò Huế. Ruốc Huế có màu hồng đặc trưng, mùi thơm nồng nhưng không hắc.</p>', '<h1>Ruốc Tôm Huế – Bí Quyết Bún Bò Chuẩn Vị</h1><p>Người Huế có câu: \'Bún bò không ruốc là bún bò giả\'. Ruốc (mắm ruốc) tôm Huế là yếu tố quyết định hương vị đặc trưng của nồi bún bò Huế. Ruốc Huế có màu hồng đặc trưng, mùi thơm nồng nhưng không hắc.</p>', '/donggoi/z7505564764977_b2c4811ea9d79d33f7353632ecc85303.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-04-23 00:00:00.000', '2026-05-30 09:57:00.683', '2026-05-30 09:57:00.683'),
(69, 'Nếp Cái Hoa Vàng Hải Hậu – Giống Nếp Quý Nhất Đồng Bằng Bắc Bộ', 'Nếp Cái Hoa Vàng Hải Hậu – Giống Nếp Quý Nhất Đồng Bằng Bắc Bộ', 'nep-cai-hoa-vang-hai-hau-giong-nep-quy', 'Nếp cái hoa vàng Hải Hậu Nam Định là giống nếp quý nhất miền Bắc, dùng để nấu xôi và làm rượu. Hương thơm và độ dẻo không giống bất kỳ loại nếp nào khác.', 'Nếp cái hoa vàng Hải Hậu Nam Định là giống nếp quý nhất miền Bắc, dùng để nấu xôi và làm rượu. Hương thơm và độ dẻo không giống bất kỳ loại nếp nào khác.', '<h1>Nếp Cái Hoa Vàng – Giống Nếp Quý Nhất Bắc Bộ</h1><p>Nếp cái hoa vàng Hải Hậu được trồng trên vùng đất ven biển Nam Định từ hàng trăm năm. Giống nếp này có đặc điểm: hạt to tròn, màu trắng đục, khi nấu chín có hương thơm nhẹ và độ dẻo đặc biệt.</p>', '<h1>Nếp Cái Hoa Vàng – Giống Nếp Quý Nhất Bắc Bộ</h1><p>Nếp cái hoa vàng Hải Hậu được trồng trên vùng đất ven biển Nam Định từ hàng trăm năm. Giống nếp này có đặc điểm: hạt to tròn, màu trắng đục, khi nấu chín có hương thơm nhẹ và độ dẻo đặc biệt.</p>', '/donggoi/z7505564768752_18751c88b938fdafd23a14f74aea42de.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Food', 1, '2026-04-28 00:00:00.000', '2026-05-30 09:57:00.686', '2026-05-30 09:57:00.686'),
(70, 'Hộp Quà Hải Sản Khô – Ý Tưởng Quà Tặng Tết Ý Nghĩa Và Cao Cấp', 'Hộp Quà Hải Sản Khô – Ý Tưởng Quà Tặng Tết Ý Nghĩa Và Cao Cấp', 'hop-qua-hai-san-kho-qua-tang-tet-y-nghia', 'Hộp quà hải sản khô tổng hợp là lựa chọn quà Tết sang trọng và ý nghĩa cho người Việt tại Mỹ khi muốn gửi gắm hương vị quê hương.', 'Hộp quà hải sản khô tổng hợp là lựa chọn quà Tết sang trọng và ý nghĩa cho người Việt tại Mỹ khi muốn gửi gắm hương vị quê hương.', '<h1>Hộp Quà Hải Sản Khô – Quà Tặng Tết Cao Cấp</h1><p>Trong văn hóa Việt Nam, quà biếu Tết không chỉ là vật chất mà còn là tình cảm gửi gắm. Hộp quà hải sản khô cao cấp – tôm khô, mực khô, cá khô các loại – là cách thể hiện sự trân trọng với người nhận.</p>', '<h1>Hộp Quà Hải Sản Khô – Quà Tặng Tết Cao Cấp</h1><p>Trong văn hóa Việt Nam, quà biếu Tết không chỉ là vật chất mà còn là tình cảm gửi gắm. Hộp quà hải sản khô cao cấp – tôm khô, mực khô, cá khô các loại – là cách thể hiện sự trân trọng với người nhận.</p>', '/donggoi/z7505564774640_25ba15fe66de08ad167261adb31b9714.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-05-03 00:00:00.000', '2026-05-30 09:57:00.692', '2026-05-30 09:57:00.692'),
(71, 'Snack Rong Biển – Xu Hướng Ăn Healthy Mới Từ Biển Khơi', 'Snack Rong Biển – Xu Hướng Ăn Healthy Mới Từ Biển Khơi', 'snack-rong-bien-xu-huong-an-healthy', 'Snack rong biển đang trở thành xu hướng snack healthy toàn cầu. Tìm hiểu lợi ích dinh dưỡng tuyệt vời của rong biển và tại sao nên bổ sung vào chế độ ăn.', 'Snack rong biển đang trở thành xu hướng snack healthy toàn cầu. Tìm hiểu lợi ích dinh dưỡng tuyệt vời của rong biển và tại sao nên bổ sung vào chế độ ăn.', '<h1>Snack Rong Biển – Xu Hướng Healthy Mới</h1><p>Rong biển (seaweed) đã được người Á Đông ăn từ ngàn năm nay và ngày càng được khoa học phương Tây xác nhận là siêu thực phẩm. Snack rong biển sấy giòn là cách tiêu thụ rong biển tiện lợi và ngon miệng nhất.</p>', '<h1>Snack Rong Biển – Xu Hướng Healthy Mới</h1><p>Rong biển (seaweed) đã được người Á Đông ăn từ ngàn năm nay và ngày càng được khoa học phương Tây xác nhận là siêu thực phẩm. Snack rong biển sấy giòn là cách tiêu thụ rong biển tiện lợi và ngon miệng nhất.</p>', '/donggoi/z7505564778689_7dcfd553c3107f2e130150966053d04f.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-05-09 00:00:00.000', '2026-05-30 09:57:00.696', '2026-05-30 09:57:00.696'),
(72, 'Đậu Phộng Rang Muối Tây Ninh – Snack Quốc Dân Của Người Việt', 'Đậu Phộng Rang Muối Tây Ninh – Snack Quốc Dân Của Người Việt', 'dau-phong-rang-muoi-tay-ninh-snack-quoc-dan', 'Đậu phộng rang muối Tây Ninh là \'snack quốc dân\' của người Việt – đơn giản nhưng không bao giờ chán. Bí quyết rang đậu phộng giòn thơm tại nhà.', 'Đậu phộng rang muối Tây Ninh là \'snack quốc dân\' của người Việt – đơn giản nhưng không bao giờ chán. Bí quyết rang đậu phộng giòn thơm tại nhà.', '<h1>Đậu Phộng Rang Muối – Snack Quốc Dân</h1><p>Từ vỉa hè Sài Gòn đến bàn nhậu miền Tây, từ quán cóc Hà Nội đến căn bếp của người Việt xa xứ – đậu phộng rang muối luôn hiện diện như người bạn đồng hành thân thiết nhất.</p>', '<h1>Đậu Phộng Rang Muối – Snack Quốc Dân</h1><p>Từ vỉa hè Sài Gòn đến bàn nhậu miền Tây, từ quán cóc Hà Nội đến căn bếp của người Việt xa xứ – đậu phộng rang muối luôn hiện diện như người bạn đồng hành thân thiết nhất.</p>', '/donggoi/z7505564779788_ebcc80ff9c18331de3e6302afdecf569.jpg', 'LIKEFOOD', 'Đồ ăn vặt', 'Food', 1, '2026-05-16 00:00:00.000', '2026-05-30 09:57:00.702', '2026-05-30 09:57:00.702'),
(73, 'Bắp Rang Bơ Tây Nguyên – Cách Làm Bắp Rang Bơ Vàng Óng Tại Nhà', 'Bắp Rang Bơ Tây Nguyên – Cách Làm Bắp Rang Bơ Vàng Óng Tại Nhà', 'bap-rang-bo-tay-nguyen-cach-lam-tai-nha', 'Bắp nếp Tây Nguyên rang với bơ tươi tạo ra snack thơm béo ngọt không thua gì rạp chiếu phim. Công thức chi tiết để làm bắp rang bơ hoàn hảo tại nhà.', 'Bắp nếp Tây Nguyên rang với bơ tươi tạo ra snack thơm béo ngọt không thua gì rạp chiếu phim. Công thức chi tiết để làm bắp rang bơ hoàn hảo tại nhà.', '<h1>Bắp Rang Bơ Tây Nguyên – Làm Tại Nhà</h1><p>Bắp nếp Tây Nguyên hạt to, dẻo ngọt tự nhiên. Rang cùng bơ tươi tạo ra hương thơm béo ngào ngạt khắp nhà. Đây là snack xem phim hoàn hảo cho cả gia đình.</p>', '<h1>Bắp Rang Bơ Tây Nguyên – Làm Tại Nhà</h1><p>Bắp nếp Tây Nguyên hạt to, dẻo ngọt tự nhiên. Rang cùng bơ tươi tạo ra hương thơm béo ngào ngạt khắp nhà. Đây là snack xem phim hoàn hảo cho cả gia đình.</p>', '/donggoi/z7505564788154_04e220f5c19955812ababb052bf62beb.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Food', 1, '2026-05-19 00:00:00.000', '2026-05-30 09:57:00.706', '2026-05-30 09:57:00.706'),
(74, 'Vải Thiều Lục Ngạn – Mùa Vải Ngắn Ngủi Và Cách Thưởng Thức Quanh Năm', 'Vải Thiều Lục Ngạn – Mùa Vải Ngắn Ngủi Và Cách Thưởng Thức Quanh Năm', 'vai-thieu-luc-ngan-mua-vai-ngan-ngui', 'Vải thiều Lục Ngạn chỉ có mùa ngắn 30-40 ngày mỗi năm. Vải sấy khô là cách thưởng thức đặc sản này quanh năm mà không cần chờ đúng mùa.', 'Vải thiều Lục Ngạn chỉ có mùa ngắn 30-40 ngày mỗi năm. Vải sấy khô là cách thưởng thức đặc sản này quanh năm mà không cần chờ đúng mùa.', '<h1>Vải Thiều Lục Ngạn – Thưởng Thức Quanh Năm</h1><p>Vải thiều Lục Ngạn chín đỏ từ giữa tháng 5 đến tháng 6 dương lịch – chỉ khoảng 40 ngày. Vải sấy khô kéo dài mùa vải lên cả năm, cho phép người Việt xa xứ thưởng thức đặc sản quê hương bất cứ lúc nào.</p>', '<h1>Vải Thiều Lục Ngạn – Thưởng Thức Quanh Năm</h1><p>Vải thiều Lục Ngạn chín đỏ từ giữa tháng 5 đến tháng 6 dương lịch – chỉ khoảng 40 ngày. Vải sấy khô kéo dài mùa vải lên cả năm, cho phép người Việt xa xứ thưởng thức đặc sản quê hương bất cứ lúc nào.</p>', '/donggoi/z7505564791070_63fbba35ef8b263b11cc411d85502a29.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-05-23 00:00:00.000', '2026-05-30 09:57:00.711', '2026-05-30 09:57:00.711'),
(75, 'Bánh Dẻo Nhân Đậu Xanh – Ký Ức Trung Thu Của Mọi Người Việt', 'Bánh Dẻo Nhân Đậu Xanh – Ký Ức Trung Thu Của Mọi Người Việt', 'banh-deo-nhan-dau-xanh-ky-uc-trung-thu', 'Bánh dẻo nhân đậu xanh là biểu tượng của Tết Trung Thu – ký ức tuổi thơ không thể phai của người Việt. Hướng dẫn làm bánh dẻo chuẩn vị truyền thống.', 'Bánh dẻo nhân đậu xanh là biểu tượng của Tết Trung Thu – ký ức tuổi thơ không thể phai của người Việt. Hướng dẫn làm bánh dẻo chuẩn vị truyền thống.', '<h1>Bánh Dẻo – Ký Ức Trung Thu</h1><p>Cứ đến Tết Trung Thu, mùi bánh dẻo lại gợi về ký ức tuổi thơ – những đêm rằm tháng 8 ngắm trăng, ăn bánh, rước đèn ông sao. Bánh dẻo nhân đậu xanh truyền thống với vỏ dẻo trắng mịn là loại bánh đặc trưng nhất.</p>', '<h1>Bánh Dẻo – Ký Ức Trung Thu</h1><p>Cứ đến Tết Trung Thu, mùi bánh dẻo lại gợi về ký ức tuổi thơ – những đêm rằm tháng 8 ngắm trăng, ăn bánh, rước đèn ông sao. Bánh dẻo nhân đậu xanh truyền thống với vỏ dẻo trắng mịn là loại bánh đặc trưng nhất.</p>', '/donggoi/z7505564796792_13af278803bb591366ec9e28a26d5b16.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Food', 1, '2026-05-26 00:00:00.000', '2026-05-30 09:57:00.716', '2026-05-30 09:57:00.716'),
(76, 'Đậu Hũ Khô Tẩm Gia Vị – Protein Thực Vật Tiện Lợi Cho Người Ăn Chay', 'Đậu Hũ Khô Tẩm Gia Vị – Protein Thực Vật Tiện Lợi Cho Người Ăn Chay', 'dau-hu-kho-tam-gia-vi-protein-thuc-vat', 'Đậu hũ khô tẩm gia vị là nguồn protein thực vật tiện lợi cho người ăn chay tại Mỹ – giàu protein, ít calo, dễ mang theo và ngon miệng.', 'Đậu hũ khô tẩm gia vị là nguồn protein thực vật tiện lợi cho người ăn chay tại Mỹ – giàu protein, ít calo, dễ mang theo và ngon miệng.', '<h1>Đậu Hũ Khô – Protein Thực Vật Tiện Lợi</h1><p>Đậu hũ (tofu) là nguồn protein thực vật hoàn chỉnh, chứa đủ 9 axit amin thiết yếu. Đậu hũ khô tẩm gia vị có ưu điểm vượt trội là tiện lợi, không cần nấu, dễ mang theo.</p>', '<h1>Đậu Hũ Khô – Protein Thực Vật Tiện Lợi</h1><p>Đậu hũ (tofu) là nguồn protein thực vật hoàn chỉnh, chứa đủ 9 axit amin thiết yếu. Đậu hũ khô tẩm gia vị có ưu điểm vượt trội là tiện lợi, không cần nấu, dễ mang theo.</p>', '/donggoi/z7505564801177_b20e6b3c65f620a0b197327182b4355f.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-05-29 00:00:00.000', '2026-05-30 09:57:00.720', '2026-05-30 09:57:00.720'),
(77, 'Bún Bò Huế Cho Người Mới Bắt Đầu – 5 Sai Lầm Cần Tránh', 'Bún Bò Huế Cho Người Mới Bắt Đầu – 5 Sai Lầm Cần Tránh', 'bun-bo-hue-nguoi-moi-bat-dau-sai-lam', 'Nấu bún bò Huế lần đầu dễ mắc phải những sai lầm phổ biến. Hướng dẫn chi tiết 5 lỗi thường gặp và cách khắc phục để có nồi bún bò chuẩn vị.', 'Nấu bún bò Huế lần đầu dễ mắc phải những sai lầm phổ biến. Hướng dẫn chi tiết 5 lỗi thường gặp và cách khắc phục để có nồi bún bò chuẩn vị.', '<h1>Bún Bò Huế Cho Người Mới – 5 Sai Lầm Cần Tránh</h1><p>Bún bò Huế có vẻ phức tạp nhưng thực ra ai cũng có thể làm được nếu tránh được những sai lầm phổ biến. Hướng dẫn này dành cho người nấu lần đầu.</p>', '<h1>Bún Bò Huế Cho Người Mới – 5 Sai Lầm Cần Tránh</h1><p>Bún bò Huế có vẻ phức tạp nhưng thực ra ai cũng có thể làm được nếu tránh được những sai lầm phổ biến. Hướng dẫn này dành cho người nấu lần đầu.</p>', '/donggoi/z7505564805693_e0fd36baed08ed6ced5fe2d72e10afbb.jpg', 'LIKEFOOD', 'Công thức nấu ăn', 'Food', 1, '2026-01-17 00:00:00.000', '2026-05-30 09:57:00.726', '2026-05-30 09:57:00.726'),
(78, 'Top 5 Cách Dùng Nước Mắm Phú Quốc Trong Bếp Mỹ', 'Top 5 Cách Dùng Nước Mắm Phú Quốc Trong Bếp Mỹ', 'top-5-cach-dung-nuoc-mam-phu-quoc-bep-my', 'Nước mắm Phú Quốc không chỉ dùng để chấm – đây là 5 cách sử dụng sáng tạo giúp tăng hương vị cho nhiều món ăn cả Việt lẫn Western.', 'Nước mắm Phú Quốc không chỉ dùng để chấm – đây là 5 cách sử dụng sáng tạo giúp tăng hương vị cho nhiều món ăn cả Việt lẫn Western.', '<h1>Top 5 Cách Dùng Nước Mắm Phú Quốc</h1><p>Nước mắm không chỉ là gia vị Việt – đây là nguồn umami tự nhiên đang được nhiều đầu bếp Tây phương khám phá và ứng dụng vào ẩm thực fusion.</p>', '<h1>Top 5 Cách Dùng Nước Mắm Phú Quốc</h1><p>Nước mắm không chỉ là gia vị Việt – đây là nguồn umami tự nhiên đang được nhiều đầu bếp Tây phương khám phá và ứng dụng vào ẩm thực fusion.</p>', '/donggoi/z7505564810533_0b04ac75d81835ee199268de74aad8ed.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-01-21 00:00:00.000', '2026-05-30 09:57:00.733', '2026-05-30 09:57:00.733'),
(79, 'Mắm Ruốc – Gia Vị Umami Bí Ẩn Của Ẩm Thực Miền Trung Việt Nam', 'Mắm Ruốc – Gia Vị Umami Bí Ẩn Của Ẩm Thực Miền Trung Việt Nam', 'mam-ruoc-gia-vi-umami-bi-an-mien-trung', 'Mắm ruốc là gia vị tạo nên hương vị đặc trưng cho bún bò Huế, bánh mì và nhiều món miền Trung. Tìm hiểu cách sử dụng mắm ruốc đúng cách.', 'Mắm ruốc là gia vị tạo nên hương vị đặc trưng cho bún bò Huế, bánh mì và nhiều món miền Trung. Tìm hiểu cách sử dụng mắm ruốc đúng cách.', '<h1>Mắm Ruốc – Gia Vị Umami Bí Ẩn</h1><p>Mắm ruốc (shrimp paste) là nguyên liệu quyết định hương vị của hàng chục món ăn miền Trung Việt Nam. Nhưng dùng không đúng cách, mắm ruốc có thể làm hỏng cả nồi nước dùng.</p>', '<h1>Mắm Ruốc – Gia Vị Umami Bí Ẩn</h1><p>Mắm ruốc (shrimp paste) là nguyên liệu quyết định hương vị của hàng chục món ăn miền Trung Việt Nam. Nhưng dùng không đúng cách, mắm ruốc có thể làm hỏng cả nồi nước dùng.</p>', '/donggoi/z7505564814085_1f26996babda2fcc310b19da49c0d038.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-01-26 00:00:00.000', '2026-05-30 09:57:00.739', '2026-05-30 09:57:00.739'),
(80, 'Hạt Dưa Rang – Phong Tục Tết Không Thể Thiếu Của Gia Đình Việt', 'Hạt Dưa Rang – Phong Tục Tết Không Thể Thiếu Của Gia Đình Việt', 'hat-dua-rang-phong-tuc-tet-khong-the-thieu', 'Hạt dưa rang là phong tục Tết truyền thống của người Việt. Ý nghĩa văn hóa đằng sau hạt dưa đỏ và bí quyết rang hạt dưa giòn thơm không bị cháy.', 'Hạt dưa rang là phong tục Tết truyền thống của người Việt. Ý nghĩa văn hóa đằng sau hạt dưa đỏ và bí quyết rang hạt dưa giòn thơm không bị cháy.', '<h1>Hạt Dưa Rang – Phong Tục Tết Không Thể Thiếu</h1><p>Nhắc đến Tết Nguyên Đán, không thể quên hạt dưa đỏ – phong tục ăn uống gắn liền với không khí Tết Việt từ hàng trăm năm. Màu đỏ của hạt dưa tượng trưng cho may mắn, tài lộc đầu năm mới.</p>', '<h1>Hạt Dưa Rang – Phong Tục Tết Không Thể Thiếu</h1><p>Nhắc đến Tết Nguyên Đán, không thể quên hạt dưa đỏ – phong tục ăn uống gắn liền với không khí Tết Việt từ hàng trăm năm. Màu đỏ của hạt dưa tượng trưng cho may mắn, tài lộc đầu năm mới.</p>', '/donggoi/z7505564819035_8e5ad951bd0587488a22c69b7ae07e95.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-01-30 00:00:00.000', '2026-05-30 09:57:00.742', '2026-05-30 09:57:00.742'),
(81, 'Sapoche Sấy Dẻo – Trái Cây Nhiệt Đới Ít Người Biết Giàu Giá Trị Dinh Dưỡng', 'Sapoche Sấy Dẻo – Trái Cây Nhiệt Đới Ít Người Biết Giàu Giá Trị Dinh Dưỡng', 'sapoche-say-deo-trai-cay-nhiet-doi-it-biet', 'Sapoche (hồng xiêm) là loại trái cây nhiệt đới ngọt đặc biệt, giàu vitamin A, C và chất xơ, nhưng ít được biết đến ngoài Đông Nam Á.', 'Sapoche (hồng xiêm) là loại trái cây nhiệt đới ngọt đặc biệt, giàu vitamin A, C và chất xơ, nhưng ít được biết đến ngoài Đông Nam Á.', '<h1>Sapoche Sấy Dẻo – Trái Cây Ít Được Biết Đến</h1><p>Sapoche (Manilkara zapota) hay còn gọi là hồng xiêm, chiku – loại trái cây nhiệt đới ngọt đặc biệt với vị ngọt caramel tự nhiên và kết cấu mềm mịn như lê chín.</p>', '<h1>Sapoche Sấy Dẻo – Trái Cây Ít Được Biết Đến</h1><p>Sapoche (Manilkara zapota) hay còn gọi là hồng xiêm, chiku – loại trái cây nhiệt đới ngọt đặc biệt với vị ngọt caramel tự nhiên và kết cấu mềm mịn như lê chín.</p>', '/donggoi/z7505564823199_b8eca2aee4a20b87656d1eeafb46bccf.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-02-04 00:00:00.000', '2026-05-30 09:57:00.747', '2026-05-30 09:57:00.747'),
(82, 'Phở Bắc – Bộ Gia Vị Chuẩn Và Bí Quyết Nồi Nước Dùng Trong Vắt', 'Phở Bắc – Bộ Gia Vị Chuẩn Và Bí Quyết Nồi Nước Dùng Trong Vắt', 'pho-bac-bo-gia-vi-chuan-nuoc-dung-trong-vat', 'Bí quyết của một nồi phở bắc ngon là nước dùng trong vắt với hương thơm quế, hồi, thảo quả. Hướng dẫn chi tiết chuẩn bị gia vị và hầm xương đúng cách.', 'Bí quyết của một nồi phở bắc ngon là nước dùng trong vắt với hương thơm quế, hồi, thảo quả. Hướng dẫn chi tiết chuẩn bị gia vị và hầm xương đúng cách.', '<h1>Phở Bắc – Bí Quyết Nước Dùng Trong Vắt</h1><p>Nồi phở bắc chuẩn phải có nước dùng trong như nước suối, vị ngọt sâu từ xương, thơm nhẹ của quế hồi. Đây không phải ngẫu nhiên – đằng sau nó là kỹ thuật hầm xương và lọc nước dùng công phu.</p>', '<h1>Phở Bắc – Bí Quyết Nước Dùng Trong Vắt</h1><p>Nồi phở bắc chuẩn phải có nước dùng trong như nước suối, vị ngọt sâu từ xương, thơm nhẹ của quế hồi. Đây không phải ngẫu nhiên – đằng sau nó là kỹ thuật hầm xương và lọc nước dùng công phu.</p>', '/donggoi/z7505564829120_e932e2efcc35d3f998dec98ed583760e.jpg', 'LIKEFOOD', 'Công thức nấu ăn', 'Food', 1, '2026-02-09 00:00:00.000', '2026-05-30 09:57:00.753', '2026-05-30 09:57:00.753'),
(83, 'Trà Sen – Nghệ Thuật Ướp Trà Của Người Hà Nội Thanh Lịch', 'Trà Sen – Nghệ Thuật Ướp Trà Của Người Hà Nội Thanh Lịch', 'tra-sen-nghe-thuat-uop-tra-nguoi-ha-noi', 'Ướp trà sen là nghệ thuật tinh tế của người Hà Nội, đòi hỏi hoa sen hái đúng thời điểm và kỹ thuật ướp được truyền từ thế hệ này sang thế hệ khác.', 'Ướp trà sen là nghệ thuật tinh tế của người Hà Nội, đòi hỏi hoa sen hái đúng thời điểm và kỹ thuật ướp được truyền từ thế hệ này sang thế hệ khác.', '<h1>Trà Sen – Nghệ Thuật Ướp Trà Hà Nội</h1><p>Trà sen Hồ Tây không chỉ là đồ uống – đó là văn hóa, là nghệ thuật, là tâm hồn của người Hà Nội thanh lịch. Một lạng trà sen đúng chuẩn cần đến vài trăm bông hoa sen tươi và nhiều ngày ướp cẩn thận.</p>', '<h1>Trà Sen – Nghệ Thuật Ướp Trà Hà Nội</h1><p>Trà sen Hồ Tây không chỉ là đồ uống – đó là văn hóa, là nghệ thuật, là tâm hồn của người Hà Nội thanh lịch. Một lạng trà sen đúng chuẩn cần đến vài trăm bông hoa sen tươi và nhiều ngày ướp cẩn thận.</p>', '/donggoi/z7505564832874_547cd36914a8ed33cbe04ab8dfe685bd.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Food', 1, '2026-02-16 00:00:00.000', '2026-05-30 09:57:00.758', '2026-05-30 09:57:00.758'),
(84, 'Coconut Candy Từ Bến Tre Đến Thế Giới – Hành Trình Chinh Phục Thị Trường Quốc Tế', 'Coconut Candy Từ Bến Tre Đến Thế Giới – Hành Trình Chinh Phục Thị Trường Quốc Tế', 'coconut-candy-ben-tre-den-the-gioi', 'Câu chuyện về kẹo dừa Bến Tre – từ sản phẩm thủ công nhỏ bé đến thương hiệu xuất khẩu sang hơn 30 quốc gia – là bài học về thương hiệu và chất lượng.', 'Câu chuyện về kẹo dừa Bến Tre – từ sản phẩm thủ công nhỏ bé đến thương hiệu xuất khẩu sang hơn 30 quốc gia – là bài học về thương hiệu và chất lượng.', '<h1>Kẹo Dừa Bến Tre – Hành Trình Ra Thế Giới</h1><p>Năm 1970, bà Năm Thương (Phạm Thị Thương) bắt đầu làm kẹo dừa tại nhà ở Bến Tre bằng đôi tay và một chảo đường. 50 năm sau, kẹo dừa Bến Tre có mặt ở hơn 30 quốc gia và là đặc sản Việt Nam được biết đến nhiều nhất thế giới.</p>', '<h1>Kẹo Dừa Bến Tre – Hành Trình Ra Thế Giới</h1><p>Năm 1970, bà Năm Thương (Phạm Thị Thương) bắt đầu làm kẹo dừa tại nhà ở Bến Tre bằng đôi tay và một chảo đường. 50 năm sau, kẹo dừa Bến Tre có mặt ở hơn 30 quốc gia và là đặc sản Việt Nam được biết đến nhiều nhất thế giới.</p>', '/donggoi/z7505564839497_e504d1967acbdd11472ee76034dcc2b4.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Food', 1, '2026-02-23 00:00:00.000', '2026-05-30 09:57:00.763', '2026-05-30 09:57:00.763'),
(85, 'Bảo Quản Hải Sản Khô Đúng Cách Để Giữ Chất Lượng Lâu Nhất', 'Bảo Quản Hải Sản Khô Đúng Cách Để Giữ Chất Lượng Lâu Nhất', 'bao-quan-hai-san-kho-dung-cach-lau-nhat', 'Hải sản khô là sản phẩm nhạy cảm với độ ẩm và nhiệt độ. Hướng dẫn chi tiết cách bảo quản tôm khô, mực khô, cá khô đúng cách để giữ chất lượng tốt nhất.', 'Hải sản khô là sản phẩm nhạy cảm với độ ẩm và nhiệt độ. Hướng dẫn chi tiết cách bảo quản tôm khô, mực khô, cá khô đúng cách để giữ chất lượng tốt nhất.', '<h1>Bảo Quản Hải Sản Khô Đúng Cách</h1><p>Nhiều người mua hải sản khô xong không biết bảo quản đúng cách, dẫn đến bị mốc, mất hương vị hoặc bị sâu bọ. Đây là hướng dẫn đầy đủ nhất về bảo quản hải sản khô.</p>', '<h1>Bảo Quản Hải Sản Khô Đúng Cách</h1><p>Nhiều người mua hải sản khô xong không biết bảo quản đúng cách, dẫn đến bị mốc, mất hương vị hoặc bị sâu bọ. Đây là hướng dẫn đầy đủ nhất về bảo quản hải sản khô.</p>', '/donggoi/z7505564842032_6e2b027e26fd1989beb7cc4749ea93cd.jpg', 'LIKEFOOD', 'Hải sản khô', 'Food', 1, '2026-03-02 00:00:00.000', '2026-05-30 09:57:00.768', '2026-05-30 09:57:00.768'),
(86, 'Dừa Sấy Bến Tre – Snack Béo Thơm Không Dầu Mỡ Cho Người Ăn Kiêng', 'Dừa Sấy Bến Tre – Snack Béo Thơm Không Dầu Mỡ Cho Người Ăn Kiêng', 'dua-say-ben-tre-snack-beo-thom-khong-dau-mo', 'Dừa sấy Bến Tre được làm từ cơm dừa tươi cắt mỏng sấy nhiệt độ thấp, giữ nguyên dầu dừa tự nhiên có lợi mà không cần thêm dầu chiên.', 'Dừa sấy Bến Tre được làm từ cơm dừa tươi cắt mỏng sấy nhiệt độ thấp, giữ nguyên dầu dừa tự nhiên có lợi mà không cần thêm dầu chiên.', '<h1>Dừa Sấy Bến Tre – Snack Béo Tốt</h1><p>Dừa nổi tiếng với hàm lượng chất béo cao – nhưng đây là loại chất béo MCT (medium-chain triglycerides) được cơ thể chuyển hóa nhanh thành năng lượng thay vì tích lũy thành mỡ thừa.</p>', '<h1>Dừa Sấy Bến Tre – Snack Béo Tốt</h1><p>Dừa nổi tiếng với hàm lượng chất béo cao – nhưng đây là loại chất béo MCT (medium-chain triglycerides) được cơ thể chuyển hóa nhanh thành năng lượng thay vì tích lũy thành mỡ thừa.</p>', '/donggoi/z7505564846512_eebb47d9bd5137b0b6d6692f91d10c48.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-03-07 00:00:00.000', '2026-05-30 09:57:00.773', '2026-05-30 09:57:00.773'),
(87, 'Hoa Quả Sấy Mix – Cách Tự Tạo Hộp Trái Cây Sấy Đa Vị Tại Nhà', 'Hoa Quả Sấy Mix – Cách Tự Tạo Hộp Trái Cây Sấy Đa Vị Tại Nhà', 'hoa-qua-say-mix-tu-tao-hop-tai-nha', 'Tự tạo hộp trái cây sấy mix riêng giúp bạn kiểm soát thành phần và tỷ lệ theo sở thích cá nhân. Hướng dẫn chọn và kết hợp các loại trái cây sấy.', 'Tự tạo hộp trái cây sấy mix riêng giúp bạn kiểm soát thành phần và tỷ lệ theo sở thích cá nhân. Hướng dẫn chọn và kết hợp các loại trái cây sấy.', '<h1>Hoa Quả Sấy Mix – Tự Tạo Tại Nhà</h1><p>Thay vì mua hộp mix sẵn với tỷ lệ cố định, tại sao không tự tạo hộp trái cây sấy theo khẩu vị riêng? Bạn sẽ tiết kiệm hơn và có sản phẩm phù hợp nhất với nhu cầu.</p>', '<h1>Hoa Quả Sấy Mix – Tự Tạo Tại Nhà</h1><p>Thay vì mua hộp mix sẵn với tỷ lệ cố định, tại sao không tự tạo hộp trái cây sấy theo khẩu vị riêng? Bạn sẽ tiết kiệm hơn và có sản phẩm phù hợp nhất với nhu cầu.</p>', '/donggoi/z7505564848796_7b0f358c3c0ef17efc8b99a8b48ea066.jpg', 'LIKEFOOD', 'Trái cây sấy', 'Food', 1, '2026-03-14 00:00:00.000', '2026-05-30 09:57:00.778', '2026-05-30 09:57:00.778'),
(88, 'Muối Biển Cần Giờ – Muối Biển Tự Nhiên Chất Lượng Cao Của TP.HCM', 'Muối Biển Cần Giờ – Muối Biển Tự Nhiên Chất Lượng Cao Của TP.HCM', 'muoi-bien-can-gio-chat-luong-cao', 'Muối biển Cần Giờ thu hoạch từ đồng muối tự nhiên ở cửa sông Sài Gòn, giàu khoáng chất tự nhiên, là loại muối tốt nhất cho sức khỏe.', 'Muối biển Cần Giờ thu hoạch từ đồng muối tự nhiên ở cửa sông Sài Gòn, giàu khoáng chất tự nhiên, là loại muối tốt nhất cho sức khỏe.', '<h1>Muối Biển Cần Giờ – Chất Lượng Tự Nhiên</h1><p>Không phải muối nào cũng như nhau. Muối biển tự nhiên Cần Giờ, được thu hoạch từ đồng muối ven biển huyện Cần Giờ, TP.HCM, chứa nhiều khoáng chất vi lượng có lợi hơn muối tinh chế công nghiệp.</p>', '<h1>Muối Biển Cần Giờ – Chất Lượng Tự Nhiên</h1><p>Không phải muối nào cũng như nhau. Muối biển tự nhiên Cần Giờ, được thu hoạch từ đồng muối ven biển huyện Cần Giờ, TP.HCM, chứa nhiều khoáng chất vi lượng có lợi hơn muối tinh chế công nghiệp.</p>', '/donggoi/z7505564855196_c90f29755aefde1e525db90bd7f17126.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Food', 1, '2026-03-19 00:00:00.000', '2026-05-30 09:57:00.783', '2026-05-30 09:57:00.783'),
(89, 'Tết Việt Tại Mỹ – Cách Chuẩn Bị Mâm Cỗ Truyền Thống Với Đặc Sản Từ LIKEFOOD', 'Tết Việt Tại Mỹ – Cách Chuẩn Bị Mâm Cỗ Truyền Thống Với Đặc Sản Từ LIKEFOOD', 'tet-viet-tai-my-chuan-bi-mam-co-dac-san', 'Ăn Tết Nguyên Đán tại Mỹ mà vẫn muốn đủ đầy mâm cỗ truyền thống? Hướng dẫn chuẩn bị từng món từ các đặc sản Việt Nam có thể đặt tại LIKEFOOD.', 'Ăn Tết Nguyên Đán tại Mỹ mà vẫn muốn đủ đầy mâm cỗ truyền thống? Hướng dẫn chuẩn bị từng món từ các đặc sản Việt Nam có thể đặt tại LIKEFOOD.', '<h1>Tết Việt Tại Mỹ – Mâm Cỗ Truyền Thống</h1><p>Dù sống ở Mỹ, người Việt vẫn giữ gìn phong tục Tết Nguyên Đán như một cách kết nối với văn hóa và cội nguồn. Mâm cỗ Tết đủ đầy là điều không thể thiếu trong ngày đầu năm mới.</p>', '<h1>Tết Việt Tại Mỹ – Mâm Cỗ Truyền Thống</h1><p>Dù sống ở Mỹ, người Việt vẫn giữ gìn phong tục Tết Nguyên Đán như một cách kết nối với văn hóa và cội nguồn. Mâm cỗ Tết đủ đầy là điều không thể thiếu trong ngày đầu năm mới.</p>', '/donggoi/z7505564859011_8a8b697acb23ba5e98cfea68c2ce343f.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-03-26 00:00:00.000', '2026-05-30 09:57:00.789', '2026-05-30 09:57:00.789'),
(90, 'Khoai Mì Khô – Nguyên Liệu Đa Năng Của Bếp Việt', 'Khoai Mì Khô – Nguyên Liệu Đa Năng Của Bếp Việt', 'khoai-mi-kho-nguyen-lieu-da-nang-bep-viet', 'Khoai mì (sắn) khô là nguyên liệu đa năng ít được biết đến trong bếp Việt hiện đại. Hướng dẫn cách sử dụng khoai mì khô để nấu nhiều món ngon.', 'Khoai mì (sắn) khô là nguyên liệu đa năng ít được biết đến trong bếp Việt hiện đại. Hướng dẫn cách sử dụng khoai mì khô để nấu nhiều món ngon.', '<h1>Khoai Mì Khô – Nguyên Liệu Đa Năng</h1><p>Khoai mì (sắn) từng là lương thực chính của người Việt trong thời kỳ khó khăn. Ngày nay, khoai mì khô trở thành nguyên liệu thú vị trong ẩm thực fusion, được dùng làm sợi khoai mì, bánh, hoặc nấu canh.</p>', '<h1>Khoai Mì Khô – Nguyên Liệu Đa Năng</h1><p>Khoai mì (sắn) từng là lương thực chính của người Việt trong thời kỳ khó khăn. Ngày nay, khoai mì khô trở thành nguyên liệu thú vị trong ẩm thực fusion, được dùng làm sợi khoai mì, bánh, hoặc nấu canh.</p>', '/donggoi/z7505564868161_fef89cd0f9813c230ca65763ebf2f1f2.jpg', 'LIKEFOOD', 'Gạo & Nông sản', 'Food', 1, '2026-04-02 00:00:00.000', '2026-05-30 09:57:00.792', '2026-05-30 09:57:00.792'),
(91, '5 Lý Do Người Việt Tại Mỹ Nên Ăn Nhiều Cá Khô Hơn', '5 Lý Do Người Việt Tại Mỹ Nên Ăn Nhiều Cá Khô Hơn', '5-ly-do-nguoi-viet-tai-my-nen-an-nhieu-ca-kho', 'Cá khô không chỉ là đặc sản quê hương mà còn là nguồn dinh dưỡng tuyệt vời. 5 lý do khoa học tại sao người Việt tại Mỹ nên bổ sung cá khô vào chế độ ăn.', 'Cá khô không chỉ là đặc sản quê hương mà còn là nguồn dinh dưỡng tuyệt vời. 5 lý do khoa học tại sao người Việt tại Mỹ nên bổ sung cá khô vào chế độ ăn.', '<h1>5 Lý Do Nên Ăn Nhiều Cá Khô Hơn</h1><p>Cá khô từ lâu bị coi là thức ăn của người nghèo hoặc thức ăn quê. Nhưng góc nhìn dinh dưỡng hiện đại lại cho thấy cá khô là loại thực phẩm cực kỳ giá trị về mặt dinh dưỡng.</p>', '<h1>5 Lý Do Nên Ăn Nhiều Cá Khô Hơn</h1><p>Cá khô từ lâu bị coi là thức ăn của người nghèo hoặc thức ăn quê. Nhưng góc nhìn dinh dưỡng hiện đại lại cho thấy cá khô là loại thực phẩm cực kỳ giá trị về mặt dinh dưỡng.</p>', '/donggoi/z7505564871024_efd275f2b4614e7a22ab105c40eefedb.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-04-09 00:00:00.000', '2026-05-30 09:57:00.798', '2026-05-30 09:57:00.798'),
(92, 'Gia Vị Phở – Mẹo Chọn Và Bảo Quản Để Phở Luôn Thơm Chuẩn Vị', 'Gia Vị Phở – Mẹo Chọn Và Bảo Quản Để Phở Luôn Thơm Chuẩn Vị', 'gia-vi-pho-meo-chon-bao-quan-phở-thom', 'Chất lượng gia vị phở quyết định 50% độ ngon của nồi phở. Hướng dẫn chọn quế, hồi, thảo quả chất lượng và cách bảo quản giữ nguyên tinh dầu.', 'Chất lượng gia vị phở quyết định 50% độ ngon của nồi phở. Hướng dẫn chọn quế, hồi, thảo quả chất lượng và cách bảo quản giữ nguyên tinh dầu.', '<h1>Gia Vị Phở – Mẹo Chọn Và Bảo Quản</h1><p>Gia vị phở gồm quế, hồi, thảo quả, đinh hương và hạt ngò. Mỗi gia vị đóng vai trò khác nhau trong tổng thể hương vị của nước phở. Chọn đúng và bảo quản đúng là bước đầu để có nồi phở ngon.</p>', '<h1>Gia Vị Phở – Mẹo Chọn Và Bảo Quản</h1><p>Gia vị phở gồm quế, hồi, thảo quả, đinh hương và hạt ngò. Mỗi gia vị đóng vai trò khác nhau trong tổng thể hương vị của nước phở. Chọn đúng và bảo quản đúng là bước đầu để có nồi phở ngon.</p>', '/donggoi/z7505564875008_9cd81797c9c011d276ec1b434e691d73.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-04-14 00:00:00.000', '2026-05-30 09:57:00.804', '2026-05-30 09:57:00.804'),
(93, 'Bánh Mì Việt Nam – Tại Sao Được CNN Bình Chọn Là Bánh Mì Ngon Nhất Thế Giới?', 'Bánh Mì Việt Nam – Tại Sao Được CNN Bình Chọn Là Bánh Mì Ngon Nhất Thế Giới?', 'banh-mi-viet-nam-cnn-ngon-nhat-the-gioi', 'CNN đã nhiều lần xếp bánh mì Việt Nam vào danh sách thức ăn đường phố ngon nhất thế giới. Tìm hiểu bí quyết của chiếc bánh mì \'made in Vietnam\' độc đáo.', 'CNN đã nhiều lần xếp bánh mì Việt Nam vào danh sách thức ăn đường phố ngon nhất thế giới. Tìm hiểu bí quyết của chiếc bánh mì \'made in Vietnam\' độc đáo.', '<h1>Bánh Mì Việt Nam – Ngon Nhất Thế Giới</h1><p>Bánh mì Việt Nam không chỉ là bánh mì – đó là sự giao thoa hoàn hảo giữa ẩm thực Pháp và Việt. Vỏ bánh giòn tan từ ảnh hưởng Pháp, nhân phong phú từ nguyên liệu Việt: chả lụa, pâté, dưa cải, rau thơm, ớt.</p>', '<h1>Bánh Mì Việt Nam – Ngon Nhất Thế Giới</h1><p>Bánh mì Việt Nam không chỉ là bánh mì – đó là sự giao thoa hoàn hảo giữa ẩm thực Pháp và Việt. Vỏ bánh giòn tan từ ảnh hưởng Pháp, nhân phong phú từ nguyên liệu Việt: chả lụa, pâté, dưa cải, rau thơm, ớt.</p>', '/donggoi/z7505564880701_3a2b8c43854ab9615284fc28b455cc46.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-04-18 00:00:00.000', '2026-05-30 09:57:00.810', '2026-05-30 09:57:00.810'),
(94, 'Cách Nấu Canh Chua Miền Nam Chuẩn Vị Với Cá Khô Và Me Tươi', 'Cách Nấu Canh Chua Miền Nam Chuẩn Vị Với Cá Khô Và Me Tươi', 'canh-chua-mien-nam-chuan-vi-ca-kho-me-tuoi', 'Canh chua miền Nam với cá khô và me chua là bữa cơm quen thuộc được yêu thích. Công thức nấu canh chua ngon không bị đục nước và cân bằng vị chua ngọt.', 'Canh chua miền Nam với cá khô và me chua là bữa cơm quen thuộc được yêu thích. Công thức nấu canh chua ngon không bị đục nước và cân bằng vị chua ngọt.', '<h1>Canh Chua Miền Nam – Công Thức Chuẩn Vị</h1><p>Canh chua miền Nam khác với canh chua miền Bắc ở chỗ dùng me hoặc dứa tạo vị chua, thêm cà chua, giá đỗ và rau om thơm. Màu nước canh đỏ đẹp, vị chua ngọt cân bằng là đặc điểm nhận biết.</p>', '<h1>Canh Chua Miền Nam – Công Thức Chuẩn Vị</h1><p>Canh chua miền Nam khác với canh chua miền Bắc ở chỗ dùng me hoặc dứa tạo vị chua, thêm cà chua, giá đỗ và rau om thơm. Màu nước canh đỏ đẹp, vị chua ngọt cân bằng là đặc điểm nhận biết.</p>', '/donggoi/z7505564881208_abe0ec43e14fa3d89d19618047aefa29.jpg', 'LIKEFOOD', 'Công thức nấu ăn', 'Food', 1, '2026-04-24 00:00:00.000', '2026-05-30 09:57:00.816', '2026-05-30 09:57:00.816');
INSERT INTO `bai_viet` (`ma_bai_viet`, `tieu_de`, `tieu_de_en`, `duong_dan_tinh`, `tom_tat`, `tom_tat_en`, `noi_dung`, `noi_dung_en`, `anh_dai_dien`, `ten_tac_gia`, `danh_muc`, `danh_muc_en`, `da_xuat_ban`, `ngay_xuat_ban`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(95, 'Mắm Cá Tép – Đặc Sản Khiêm Tốn Nhưng Đậm Đà Của Đồng Bằng Sông Cửu Long', 'Mắm Cá Tép – Đặc Sản Khiêm Tốn Nhưng Đậm Đà Của Đồng Bằng Sông Cửu Long', 'mam-ca-tep-dac-san-khiem-ton-dam-da', 'Mắm cá tép (cá linh non, tép khô muối ủ) là đặc sản ít nơi biết nhưng vô cùng đậm đà và phong phú hương vị của vùng đồng bằng sông Cửu Long.', 'Mắm cá tép (cá linh non, tép khô muối ủ) là đặc sản ít nơi biết nhưng vô cùng đậm đà và phong phú hương vị của vùng đồng bằng sông Cửu Long.', '<h1>Mắm Cá Tép – Đặc Sản Khiêm Tốn Nhưng Đậm Đà</h1><p>Trong văn hóa ẩm thực miền Tây, không có gì khiêm tốn hơn một hũ mắm tép nhỏ trên bàn ăn. Nhưng đừng đánh giá thấp – đây là gia vị umami tự nhiên mạnh mẽ nhất mà thiên nhiên ban tặng cho vùng đồng bằng.</p>', '<h1>Mắm Cá Tép – Đặc Sản Khiêm Tốn Nhưng Đậm Đà</h1><p>Trong văn hóa ẩm thực miền Tây, không có gì khiêm tốn hơn một hũ mắm tép nhỏ trên bàn ăn. Nhưng đừng đánh giá thấp – đây là gia vị umami tự nhiên mạnh mẽ nhất mà thiên nhiên ban tặng cho vùng đồng bằng.</p>', '/donggoi/z7505564890463_9e4e59dad2c045b1e26269e591320d86.jpg', 'LIKEFOOD', 'Gia vị Việt', 'Food', 1, '2026-04-29 00:00:00.000', '2026-05-30 09:57:00.819', '2026-05-30 09:57:00.819'),
(96, 'Lợi Ích Của Omega-3 Trong Hải Sản Khô Và Tại Sao Người Việt Ít Thiếu Omega-3', 'Lợi Ích Của Omega-3 Trong Hải Sản Khô Và Tại Sao Người Việt Ít Thiếu Omega-3', 'loi-ich-omega-3-hai-san-kho-nguoi-viet', 'Người Việt Nam truyền thống ít thiếu omega-3 nhờ chế độ ăn giàu hải sản, đặc biệt là hải sản khô. Tìm hiểu hàm lượng omega-3 trong từng loại hải sản khô.', 'Người Việt Nam truyền thống ít thiếu omega-3 nhờ chế độ ăn giàu hải sản, đặc biệt là hải sản khô. Tìm hiểu hàm lượng omega-3 trong từng loại hải sản khô.', '<h1>Omega-3 Trong Hải Sản Khô</h1><p>Omega-3 – đặc biệt là EPA và DHA – là chất béo thiết yếu mà cơ thể không tự sản xuất được. Người Việt truyền thống ít thiếu omega-3 vì chế độ ăn có nhiều cá, tôm, mực – cả tươi lẫn khô.</p>', '<h1>Omega-3 Trong Hải Sản Khô</h1><p>Omega-3 – đặc biệt là EPA và DHA – là chất béo thiết yếu mà cơ thể không tự sản xuất được. Người Việt truyền thống ít thiếu omega-3 vì chế độ ăn có nhiều cá, tôm, mực – cả tươi lẫn khô.</p>', '/donggoi/z7505564893406_1b7238dfe36b333e19ec6832714ef729.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-05-04 00:00:00.000', '2026-05-30 09:57:00.824', '2026-05-30 09:57:00.824'),
(97, 'Chọn Quà Tết Cho Người Việt Tại Mỹ – Gợi Ý Từ LIKEFOOD', 'Chọn Quà Tết Cho Người Việt Tại Mỹ – Gợi Ý Từ LIKEFOOD', 'chon-qua-tet-nguoi-viet-tai-my-goi-y-likefood', 'Tặng quà Tết cho người thân hoặc bạn bè Việt tại Mỹ? LIKEFOOD tổng hợp những gợi ý quà Tết ý nghĩa nhất – từ đặc sản quê hương đến hộp quà cao cấp.', 'Tặng quà Tết cho người thân hoặc bạn bè Việt tại Mỹ? LIKEFOOD tổng hợp những gợi ý quà Tết ý nghĩa nhất – từ đặc sản quê hương đến hộp quà cao cấp.', '<h1>Chọn Quà Tết Cho Người Việt Tại Mỹ</h1><p>Quà Tết ý nghĩa nhất là quà chứa đựng hương vị quê hương. Với người Việt xa xứ tại Mỹ, một hộp đặc sản Việt Nam – mắm, trà, hải sản khô, mứt – là món quà giá trị không thể thay thế.</p>', '<h1>Chọn Quà Tết Cho Người Việt Tại Mỹ</h1><p>Quà Tết ý nghĩa nhất là quà chứa đựng hương vị quê hương. Với người Việt xa xứ tại Mỹ, một hộp đặc sản Việt Nam – mắm, trà, hải sản khô, mứt – là món quà giá trị không thể thay thế.</p>', '/donggoi/z7505564898290_8a3adf0c606e893d537d549b47d3c01d.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-05-07 00:00:00.000', '2026-05-30 09:57:00.830', '2026-05-30 09:57:00.830'),
(98, 'Bảo Quản Trái Cây Sấy Để Giữ Nguyên Hương Vị Và Dinh Dưỡng', 'Bảo Quản Trái Cây Sấy Để Giữ Nguyên Hương Vị Và Dinh Dưỡng', 'bao-quan-trai-cay-say-giu-huong-vi-dinh-duong', 'Trái cây sấy cần được bảo quản đúng cách để tránh bị hút ẩm và mất hương vị. Hướng dẫn chi tiết cách bảo quản từng loại trái cây sấy khác nhau.', 'Trái cây sấy cần được bảo quản đúng cách để tránh bị hút ẩm và mất hương vị. Hướng dẫn chi tiết cách bảo quản từng loại trái cây sấy khác nhau.', '<h1>Bảo Quản Trái Cây Sấy Đúng Cách</h1><p>Sai lầm lớn nhất khi bảo quản trái cây sấy là để ở nơi ẩm ướt hoặc tiếp xúc với không khí quá lâu. Độ ẩm và oxy là hai kẻ thù chính của trái cây sấy.</p>', '<h1>Bảo Quản Trái Cây Sấy Đúng Cách</h1><p>Sai lầm lớn nhất khi bảo quản trái cây sấy là để ở nơi ẩm ướt hoặc tiếp xúc với không khí quá lâu. Độ ẩm và oxy là hai kẻ thù chính của trái cây sấy.</p>', '/donggoi/z7505564902174_507f7d71f1f49151b5bdc420cc522fa7.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-05-11 00:00:00.000', '2026-05-30 09:57:00.834', '2026-05-30 09:57:00.834'),
(99, 'Văn Hóa Uống Trà Của Người Việt – Từ Trà Đạo Đến Trà Đá Vỉa Hè', 'Văn Hóa Uống Trà Của Người Việt – Từ Trà Đạo Đến Trà Đá Vỉa Hè', 'van-hoa-uong-tra-nguoi-viet-tra-dao-tra-da', 'Trà không chỉ là thức uống mà còn là văn hóa ứng xử của người Việt. Từ trà đạo tinh tế của Hà Nội đến ly trà đá vỉa hè Sài Gòn – mỗi cách uống phản ánh một khía cạnh của văn hóa Việt.', 'Trà không chỉ là thức uống mà còn là văn hóa ứng xử của người Việt. Từ trà đạo tinh tế của Hà Nội đến ly trà đá vỉa hè Sài Gòn – mỗi cách uống phản ánh một khía cạnh của văn hóa Việt.', '<h1>Văn Hóa Uống Trà Của Người Việt</h1><p>Uống trà là một phần không thể tách rời của đời sống người Việt. Không phải ngẫu nhiên mà người Việt dùng trà để tiếp khách, mừng thọ, cúng ông bà, thư giãn sau bữa cơm.</p>', '<h1>Văn Hóa Uống Trà Của Người Việt</h1><p>Uống trà là một phần không thể tách rời của đời sống người Việt. Không phải ngẫu nhiên mà người Việt dùng trà để tiếp khách, mừng thọ, cúng ông bà, thư giãn sau bữa cơm.</p>', '/donggoi/z7505564908794_c0d943122fbfaaf86f8a01a4b8b40381.jpg', 'LIKEFOOD', 'Trà & Bánh mứt', 'Food', 1, '2026-05-14 00:00:00.000', '2026-05-30 09:57:00.839', '2026-05-30 09:57:00.839'),
(100, 'Ăn Gì Tốt Cho Gan? – Danh Sách Thực Phẩm Đặc Sản Việt Nam Bảo Vệ Gan', 'Ăn Gì Tốt Cho Gan? – Danh Sách Thực Phẩm Đặc Sản Việt Nam Bảo Vệ Gan', 'an-gi-tot-cho-gan-thuc-pham-dac-san-viet-bao-ve-gan', 'Nhiều đặc sản Việt Nam được chứng minh có lợi cho gan. Từ trà atiso đến mật ong rừng, khám phá danh sách thực phẩm đặc sản bảo vệ và tăng cường chức năng gan.', 'Nhiều đặc sản Việt Nam được chứng minh có lợi cho gan. Từ trà atiso đến mật ong rừng, khám phá danh sách thực phẩm đặc sản bảo vệ và tăng cường chức năng gan.', '<h1>Ăn Gì Tốt Cho Gan? Đặc Sản Việt Bảo Vệ Gan</h1><p>Gan là cơ quan lọc độc quan trọng nhất của cơ thể. Trong bối cảnh ô nhiễm và lối sống hiện đại, việc bảo vệ gan bằng thực phẩm tự nhiên ngày càng quan trọng. May mắn là nhiều đặc sản Việt Nam có tác dụng hỗ trợ gan tuyệt vời.</p>', '<h1>Ăn Gì Tốt Cho Gan? Đặc Sản Việt Bảo Vệ Gan</h1><p>Gan là cơ quan lọc độc quan trọng nhất của cơ thể. Trong bối cảnh ô nhiễm và lối sống hiện đại, việc bảo vệ gan bằng thực phẩm tự nhiên ngày càng quan trọng. May mắn là nhiều đặc sản Việt Nam có tác dụng hỗ trợ gan tuyệt vời.</p>', '/donggoi/z7505564911183_81aa3ad25d676f1c4da687f2329a8644.jpg', 'LIKEFOOD', 'Sức khỏe', 'Food', 1, '2026-05-17 00:00:00.000', '2026-05-30 09:57:00.846', '2026-05-30 09:57:00.846'),
(101, 'Hành Trình Đặc Sản Việt Đến Mỹ – Câu Chuyện Của LIKEFOOD', 'Hành Trình Đặc Sản Việt Đến Mỹ – Câu Chuyện Của LIKEFOOD', 'hanh-trinh-dac-san-viet-den-my-cau-chuyen-likefood', 'Đằng sau mỗi gói tôm khô, mỗi hũ mắm gửi sang Mỹ là hành trình dài của người Việt xa xứ muốn giữ gìn hương vị quê hương. Câu chuyện của LIKEFOOD và sứ mệnh kết nối người Việt toàn cầu.', 'Đằng sau mỗi gói tôm khô, mỗi hũ mắm gửi sang Mỹ là hành trình dài của người Việt xa xứ muốn giữ gìn hương vị quê hương. Câu chuyện của LIKEFOOD và sứ mệnh kết nối người Việt toàn cầu.', '<h1>Hành Trình Đặc Sản Việt Đến Mỹ</h1><p>LIKEFOOD được thành lập từ một nỗi nhớ nhà đơn giản – khi người sáng lập sang Mỹ và không tìm được những hương vị đặc sản quê hương đúng chuẩn. Từ đó, LIKEFOOD ra đời với sứ mệnh: kết nối người Việt xa xứ với hương vị cội nguồn.</p>', '<h1>Hành Trình Đặc Sản Việt Đến Mỹ</h1><p>LIKEFOOD được thành lập từ một nỗi nhớ nhà đơn giản – khi người sáng lập sang Mỹ và không tìm được những hương vị đặc sản quê hương đúng chuẩn. Từ đó, LIKEFOOD ra đời với sứ mệnh: kết nối người Việt xa xứ với hương vị cội nguồn.</p>', '/donggoi/z7505564684692_d6276e4ba8c26d027fd3b44ae5a0fa92.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-05-20 00:00:00.000', '2026-05-30 09:57:00.851', '2026-05-30 09:57:00.851'),
(102, '10 Đặc Sản Việt Nam Được Người Mỹ Yêu Thích Nhất', '10 Đặc Sản Việt Nam Được Người Mỹ Yêu Thích Nhất', '10-dac-san-viet-nam-nguoi-my-yeu-thich-nhat', 'Ẩm thực Việt Nam ngày càng được người Mỹ biết đến và yêu thích. Danh sách 10 đặc sản Việt Nam đang chinh phục khẩu vị của người Mỹ bản địa.', 'Ẩm thực Việt Nam ngày càng được người Mỹ biết đến và yêu thích. Danh sách 10 đặc sản Việt Nam đang chinh phục khẩu vị của người Mỹ bản địa.', '<h1>10 Đặc Sản Việt Nam Người Mỹ Yêu Thích</h1><p>Ẩm thực Việt Nam đang trở thành một trong những nền ẩm thực được yêu thích nhất tại Mỹ. Theo các khảo sát gần đây, nhiều người Mỹ đang tìm kiếm và khám phá các đặc sản Việt Nam ngoài phở và bánh mì.</p>', '<h1>10 Đặc Sản Việt Nam Người Mỹ Yêu Thích</h1><p>Ẩm thực Việt Nam đang trở thành một trong những nền ẩm thực được yêu thích nhất tại Mỹ. Theo các khảo sát gần đây, nhiều người Mỹ đang tìm kiếm và khám phá các đặc sản Việt Nam ngoài phở và bánh mì.</p>', '/donggoi/z7505564686729_66d7081fdb9eb829ef3b8e0726c69d15.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-05-24 00:00:00.000', '2026-05-30 09:57:00.854', '2026-05-30 09:57:00.854'),
(103, 'Ẩm Thực Việt Nam Và Câu Chuyện Nhớ Nhà Của Người Việt Xa Xứ', 'Ẩm Thực Việt Nam Và Câu Chuyện Nhớ Nhà Của Người Việt Xa Xứ', 'am-thuc-viet-nam-nho-nha-nguoi-viet-xa-xu', 'Với người Việt xa xứ tại Mỹ, ẩm thực không chỉ là thức ăn – đó là sợi dây kết nối với quê hương, với ký ức và với cội nguồn văn hóa. Những câu chuyện xúc động.', 'Với người Việt xa xứ tại Mỹ, ẩm thực không chỉ là thức ăn – đó là sợi dây kết nối với quê hương, với ký ức và với cội nguồn văn hóa. Những câu chuyện xúc động.', '<h1>Ẩm Thực Việt Và Nỗi Nhớ Nhà</h1><p>Có những thứ không thể thay thế – mùi nước mắm trong bếp mẹ, tiếng xiên mực khô trên bếp than, vị chua ngọt của canh chua cá lóc... Những hương vị này không chỉ nuôi dưỡng cơ thể mà còn nuôi dưỡng tâm hồn người Việt xa xứ.</p>', '<h1>Ẩm Thực Việt Và Nỗi Nhớ Nhà</h1><p>Có những thứ không thể thay thế – mùi nước mắm trong bếp mẹ, tiếng xiên mực khô trên bếp than, vị chua ngọt của canh chua cá lóc... Những hương vị này không chỉ nuôi dưỡng cơ thể mà còn nuôi dưỡng tâm hồn người Việt xa xứ.</p>', '/donggoi/z7505564694601_9a8a20e42c5b562612a5c828b940441e.jpg', 'LIKEFOOD', 'Đặc sản vùng miền', 'Food', 1, '2026-05-27 00:00:00.000', '2026-05-30 09:57:00.860', '2026-05-30 09:57:00.860'),
(104, 'Bí quyết chọn khô cá sặc ngon chuẩn vị miền Tây', NULL, 'bi-quyet-chon-kho-ca-sac-ngon-chuan-vi-mien-tay', 'Hướng dẫn chi tiết cách phân biệt khô cá sặc bổi tự nhiên và cá nuôi, cách chọn cá khô ngon không bị mặn đắng để làm quà biếu.', NULL, 'Khô cá sặc bổi là món ăn dân dã nhưng đậm đà hương vị quê hương. Để chọn được con khô ngon, bạn cần chú ý đến màu sắc, độ dai và mùi thơm của cá...', NULL, '/images/blog/bi-quyet-chon-kho-ca-sac-ngon-chuan-vi-mien-tay.jpg', 'LIKEFOOD Team', 'Cẩm nang ẩm thực', 'News', 1, '2026-05-31 14:42:45.221', '2026-05-31 14:42:45.221', '2026-05-31 14:42:45.221'),
(105, 'Cách làm gỏi xoài tôm khô chua ngọt cực đưa cơm', NULL, 'cach-lam-goi-xoai-tom-kho-chua-ngot-cuc-dua-com', 'Công thức làm món gỏi xoài xanh trộn tôm khô giòn sần sật, chua chua ngọt ngọt đúng điệu Nam Bộ cho bữa cơm gia đình.', NULL, 'Món gỏi xoài tôm khô là sự kết hợp hoàn hảo giữa vị chua thanh của xoài xanh, vị ngọt đậm của tôm khô loại 1 và nước mắm chua ngọt cay nồng...', NULL, '/images/blog/cach-lam-goi-xoai-tom-kho-chua-ngot-cuc-dua-com.jpg', 'Chef Vũ', 'Công thức món ngon', 'News', 1, '2026-05-31 14:42:45.222', '2026-05-31 14:42:45.223', '2026-05-31 14:42:45.223'),
(106, 'Xu hướng mang đặc sản Việt sang Mỹ làm quà biếu Tết', NULL, 'xu-huong-mang-dac-san-viet-sang-my-lam-qua-bieu-tet', 'Tại sao các loại cá khô, mực khô, trái cây sấy đóng gói FDA của LIKEFOOD ngày càng được kiều bào ưa chuộng làm quà biếu dịp lễ Tết.', NULL, 'Mỗi dịp Tết đến xuân về, nỗi nhớ quê hương của những người con xa xứ lại càng da diết. Những món quà quê giản dị như con khô cá lóc, túi mứt dừa non...', NULL, '/images/blog/xu-huong-mang-dac-san-viet-sang-my-lam-qua-bieu-tet.jpg', 'LIKEFOOD News', 'Tin tức sự kiện', 'News', 1, '2026-05-31 14:42:45.225', '2026-05-31 14:42:45.226', '2026-05-31 14:42:45.226');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_quang_cao`
--

CREATE TABLE `banner_quang_cao` (
  `ma_banner` int(11) NOT NULL,
  `duong_dan_anh` varchar(191) NOT NULL,
  `tieu_de` varchar(191) NOT NULL,
  `tieu_de_en` varchar(191) DEFAULT NULL,
  `phu_de` varchar(191) DEFAULT NULL,
  `phu_de_en` varchar(191) DEFAULT NULL,
  `van_ban_nut` varchar(191) DEFAULT NULL,
  `van_ban_nut_en` varchar(191) DEFAULT NULL,
  `duong_dan_nut` varchar(191) DEFAULT NULL,
  `ngay_bat_dau` datetime(3) DEFAULT NULL,
  `ngay_ket_thuc` datetime(3) DEFAULT NULL,
  `thu_tu_uu_tien` int(11) NOT NULL DEFAULT 0,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `vi_tri_hien_thi` varchar(191) NOT NULL DEFAULT 'home',
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner_quang_cao`
--

INSERT INTO `banner_quang_cao` (`ma_banner`, `duong_dan_anh`, `tieu_de`, `tieu_de_en`, `phu_de`, `phu_de_en`, `van_ban_nut`, `van_ban_nut_en`, `duong_dan_nut`, `ngay_bat_dau`, `ngay_ket_thuc`, `thu_tu_uu_tien`, `dang_hoat_dong`, `vi_tri_hien_thi`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, '/images/banner1.jpg', 'Đặc Sản Việt Nam - Hương Vị Quê Nhà', 'Vietnamese Specialties - Taste of Home', '100% chính gốc, giao hàng toàn cầu', '100% authentic, worldwide delivery', 'Mua ngay', 'Shop Now', '/products', NULL, NULL, 1, 1, 'home', '2026-05-30 10:17:57.825', '2026-05-30 10:17:57.825'),
(2, '/images/banner2.jpg', 'Flash Sale - Giảm Đến 50%', 'Flash Sale - Up to 50% Off', 'Chỉ hôm nay, số lượng có hạn!', 'Today only, limited stock!', 'Xem ngay', 'View Now', '/flash-sale', NULL, NULL, 2, 1, 'home', '2026-05-30 10:17:57.828', '2026-05-30 10:17:57.828'),
(3, '/images/banner3.jpg', 'Hải Sản Khô Chính Gốc Phú Quốc', 'Authentic Phu Quoc Dried Seafood', 'Mực khô, tôm khô, cá khô cao cấp', 'Premium dried squid, shrimp, fish', 'Khám phá', 'Explore', '/products?category=H%E1%BA%A3i+s%E1%BA%A3n+kh%C3%B4', NULL, NULL, 3, 1, 'home', '2026-05-30 10:17:57.831', '2026-05-30 10:17:57.831'),
(4, '/images/banner4.jpg', 'Trái Cây Sấy Healthy - Không Đường', 'Healthy Dried Fruits - No Sugar', 'Xoài, mít, chuối sấy tự nhiên 100%', '100% natural mango, jackfruit, banana chips', 'Mua ngay', 'Buy Now', '/products?category=Tr%C3%A1i+c%C3%A2y+s%E1%BA%A5y', NULL, NULL, 4, 1, 'home', '2026-05-30 10:17:57.833', '2026-05-30 10:17:57.833'),
(5, '/images/banners/banner-1.jpg', 'ĐẶC SẢN VIỆT CHÍNH GỐC', NULL, '100% Nguyên liệu sạch, chuẩn FDA Hoa Kỳ', NULL, 'MUA NGAY', NULL, '/products', NULL, NULL, 0, 1, 'home', '2026-05-31 14:42:45.214', '2026-05-31 14:42:45.215'),
(6, '/images/banners/banner-2.jpg', 'ĐƠN HÀNG MỸ TỪ $200 FREE SHIP', NULL, '100% Nguyên liệu sạch, chuẩn FDA Hoa Kỳ', NULL, 'MUA NGAY', NULL, '/products', NULL, NULL, 1, 1, 'home', '2026-05-31 14:42:45.218', '2026-05-31 14:42:45.219'),
(7, '/images/banners/banner-3.jpg', 'CÁ KHÔ MIỀN TÂY HÚT CHÂN KHÔNG', NULL, '100% Nguyên liệu sạch, chuẩn FDA Hoa Kỳ', NULL, 'MUA NGAY', NULL, '/products', NULL, NULL, 2, 1, 'category', '2026-05-31 14:42:45.219', '2026-05-31 14:42:45.220');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bien_the_san_pham`
--

CREATE TABLE `bien_the_san_pham` (
  `ma_bien_the` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `khoi_luong` varchar(191) DEFAULT NULL,
  `khoi_luong_en` varchar(191) DEFAULT NULL,
  `huong_vi` varchar(191) DEFAULT NULL,
  `huong_vi_en` varchar(191) DEFAULT NULL,
  `gia_dieu_chinh` double NOT NULL DEFAULT 0,
  `so_luong_ton_kho` int(11) NOT NULL DEFAULT 0,
  `ma_sku` varchar(191) DEFAULT NULL,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cai_dat_he_thong`
--

CREATE TABLE `cai_dat_he_thong` (
  `ma_cai_dat` int(11) NOT NULL,
  `khoa` varchar(191) NOT NULL,
  `gia_tri` text NOT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cai_dat_he_thong`
--

INSERT INTO `cai_dat_he_thong` (`ma_cai_dat`, `khoa`, `gia_tri`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'security_captcha_enabled', 'ON', '2026-05-28 13:53:48.863', '2026-05-31 09:07:40.253'),
(2, 'thueapi_token', '2fea340ac83fa7cb6cd552ab2259ea3a', '2026-05-31 09:07:40.252', '2026-05-31 09:07:40.252'),
(3, 'mbbank_account_name', 'TRAN QUOC VU', '2026-05-31 09:07:40.252', '2026-05-31 09:07:40.252'),
(4, 'mbbank_account_number', '830112005', '2026-05-31 09:07:40.252', '2026-05-31 09:07:40.252'),
(5, 'abandoned_cart_1', '{\"items\":[{\"productId\":115,\"slug\":\"ruoc-cha-bong-heo-sai-gon\",\"name\":\"Ruốc (Chà Bông) Heo Sài Gòn\",\"price\":13.99,\"isOnSale\":false,\"image\":\"/dac-san-vung-mien.png\",\"quantity\":1,\"inventory\":70,\"category\":\"Đặc sản vùng miền\",\"id\":115}],\"totalValue\":13.99,\"abandonedAt\":\"2026-06-02T10:58:23.892Z\",\"savedAt\":\"2026-06-11T13:26:07.521Z\"}', '2026-05-31 14:33:00.967', '2026-06-11 13:26:07.524');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chien_dich_flash_sale`
--

CREATE TABLE `chien_dich_flash_sale` (
  `ma_chien_dich` int(11) NOT NULL,
  `ten_chien_dich` varchar(191) NOT NULL,
  `ngay_bat_dau` datetime(3) NOT NULL,
  `ngay_ket_thuc` datetime(3) NOT NULL,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chien_dich_flash_sale`
--

INSERT INTO `chien_dich_flash_sale` (`ma_chien_dich`, `ten_chien_dich`, `ngay_bat_dau`, `ngay_ket_thuc`, `dang_hoat_dong`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'SALE ĐẦU THÁNG', '2026-05-30 10:17:00.000', '2026-06-12 10:17:00.000', 1, '2026-05-30 10:17:17.928', '2026-05-30 10:17:17.928');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `ma_chi_tiet_don_hang` int(11) NOT NULL,
  `ma_don_hang` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ma_bien_the` int(11) DEFAULT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `ten_san_pham_luc_mua` varchar(191) DEFAULT NULL,
  `ma_sku_luc_mua` varchar(191) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`ma_chi_tiet_don_hang`, `ma_don_hang`, `ma_san_pham`, `ma_bien_the`, `so_luong`, `don_gia`, `ten_san_pham_luc_mua`, `ma_sku_luc_mua`, `ngay_tao`) VALUES
(1, 1, 3, NULL, 1, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-05-31 09:06:03.302'),
(2, 2, 3, NULL, 1, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-05-31 09:09:07.614'),
(3, 3, 2, NULL, 1, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-05-31 09:09:30.857'),
(4, 4, 94, NULL, 3, 5.99, 'Muối Biển Hạt To Cần Giờ', 'PROD-94', '2026-05-24 12:17:37.493'),
(5, 4, 61, NULL, 3, 6.99, 'Tương Ớt Sriracha Việt Nam', 'PROD-61', '2026-05-24 12:17:37.493'),
(6, 4, 64, NULL, 3, 11.99, 'Bột Nêm Hải Sản Phú Quốc', 'PROD-64', '2026-05-24 12:17:37.493'),
(7, 5, 84, NULL, 2, 12.99, 'Hạt Dưa Rang Muối Tết', 'PROD-84', '2026-05-26 18:26:36.745'),
(8, 5, 30, NULL, 3, 22.99, 'Mực Rim Cay Nha Trang', 'PROD-30', '2026-05-26 18:26:36.745'),
(9, 6, 32, NULL, 2, 32.99, 'Ghẹ Rang Muối Vũng Tàu', 'PROD-32', '2026-05-31 03:44:53.809'),
(10, 7, 93, NULL, 2, 6.99, 'Khoai Mì (Sắn) Khô Tây Nguyên', 'PROD-93', '2026-05-29 11:57:41.999'),
(11, 8, 105, NULL, 1, 10.99, 'Bột Sắn Dây Bình Thuận', 'PROD-105', '2026-05-25 17:48:21.704'),
(12, 8, 52, NULL, 3, 18.99, 'Bánh Pía Sóc Trăng Sầu Riêng', 'PROD-52', '2026-05-25 17:48:21.704'),
(13, 9, 77, NULL, 1, 28.99, 'Hạt Mắc Ca Tây Nguyên', 'PROD-77', '2026-05-26 08:51:10.273'),
(14, 9, 53, NULL, 3, 10.99, 'Mứt Gừng Sả Hội An', 'PROD-53', '2026-05-26 08:51:10.273'),
(15, 9, 39, NULL, 1, 14.99, 'Vải Sấy Khô Lục Ngạn', 'PROD-39', '2026-05-26 08:51:10.273'),
(16, 10, 34, NULL, 2, 12.99, 'Mực Khô Ăn Liền Bình Thuận', 'PROD-34', '2026-05-30 09:44:01.395'),
(17, 10, 40, NULL, 1, 19.99, 'Nhãn Sấy Hưng Yên', 'PROD-40', '2026-05-30 09:44:01.395'),
(18, 10, 80, NULL, 3, 13.99, 'Hạt Dẻ Sấy Đà Lạt', 'PROD-80', '2026-05-30 09:44:01.395'),
(19, 11, 22, NULL, 1, 28.99, 'Khô Cá Ngát Sông Tiền', 'PROD-22', '2026-05-26 16:01:40.287'),
(20, 12, 32, NULL, 3, 32.99, 'Ghẹ Rang Muối Vũng Tàu', 'PROD-32', '2026-05-22 12:51:47.301'),
(21, 13, 52, NULL, 2, 18.99, 'Bánh Pía Sóc Trăng Sầu Riêng', 'PROD-52', '2026-05-29 13:44:03.170'),
(22, 14, 100, NULL, 3, 16.99, 'Bột Cacao Nguyên Chất Đắk Lắk', 'PROD-100', '2026-05-21 01:53:32.083'),
(23, 14, 111, NULL, 2, 14.99, 'Cơm Lam Ống Tre Tây Bắc', 'PROD-111', '2026-05-21 01:53:32.083'),
(24, 14, 82, NULL, 2, 9.99, 'Đậu Hũ Khô Tẩm Gia Vị', 'PROD-82', '2026-05-21 01:53:32.083'),
(25, 15, 58, NULL, 1, 17.99, 'Chè Khô Sen Long An', 'PROD-58', '2026-05-23 20:06:13.994'),
(26, 15, 36, NULL, 1, 18.99, 'Ruốc Tôm Khô Huế', 'PROD-36', '2026-05-23 20:06:13.994'),
(27, 15, 110, NULL, 3, 32.99, 'Thịt Lợn Sấy Khô Sơn La', 'PROD-110', '2026-05-23 20:06:13.994'),
(28, 16, 18, NULL, 1, 18.99, 'Khô Cá Chạch Đồng', 'PROD-18', '2026-05-30 08:53:59.863'),
(29, 16, 73, NULL, 2, 10.99, 'Bánh Phồng Tôm Sa Giang', 'PROD-73', '2026-05-30 08:53:59.863'),
(30, 17, 57, NULL, 1, 22.99, 'Trà Móc Câu Thái Nguyên', 'PROD-57', '2026-05-30 12:56:13.240'),
(31, 17, 40, NULL, 3, 19.99, 'Nhãn Sấy Hưng Yên', 'PROD-40', '2026-05-30 12:56:13.240'),
(32, 17, 85, NULL, 2, 24.99, 'Gạo ST25 An Giang Thơm Ngon', 'PROD-85', '2026-05-30 12:56:13.240'),
(33, 18, 47, NULL, 2, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', 'PROD-47', '2026-05-19 15:05:32.004'),
(34, 18, 81, NULL, 3, 19.99, 'Khô Heo Mật Ong Năm Cung', 'PROD-81', '2026-05-19 15:05:32.004'),
(35, 19, 94, NULL, 1, 5.99, 'Muối Biển Hạt To Cần Giờ', 'PROD-94', '2026-05-24 12:20:50.825'),
(36, 19, 108, NULL, 3, 21.99, 'Chả Lụa Hà Nội Bách Hóa', 'PROD-108', '2026-05-24 12:20:50.825'),
(37, 20, 65, NULL, 3, 9.99, 'Gia Vị Phở Bắc Hà Nội', 'PROD-65', '2026-05-28 21:46:50.350'),
(38, 21, 93, NULL, 2, 6.99, 'Khoai Mì (Sắn) Khô Tây Nguyên', 'PROD-93', '2026-05-30 23:20:33.517'),
(39, 21, 37, NULL, 2, 7.99, 'Khoai Lang Sấy Đà Lạt', 'PROD-37', '2026-05-30 23:20:33.517'),
(40, 21, 88, NULL, 1, 8.99, 'Bắp Rang Bơ Tây Nguyên', 'PROD-88', '2026-05-30 23:20:33.517'),
(41, 22, 110, NULL, 3, 32.99, 'Thịt Lợn Sấy Khô Sơn La', 'PROD-110', '2026-05-26 08:32:33.160'),
(42, 23, 41, NULL, 2, 11.99, 'Mận Sấy Bắc Hà', 'PROD-41', '2026-05-21 08:03:16.634'),
(43, 23, 31, NULL, 1, 48.99, 'Mực Khô Một Nắng Kiên Giang', 'PROD-31', '2026-05-21 08:03:16.634'),
(44, 23, 78, NULL, 1, 22.99, 'Bò Khô Sốt Sa Tế', 'PROD-78', '2026-05-21 08:03:16.634'),
(45, 24, 52, NULL, 3, 18.99, 'Bánh Pía Sóc Trăng Sầu Riêng', 'PROD-52', '2026-05-23 21:57:07.959'),
(46, 25, 102, NULL, 2, 11.99, 'Trà Sữa Hòa Tan Thái Lan', 'PROD-102', '2026-05-23 18:18:31.365'),
(47, 25, 40, NULL, 1, 19.99, 'Nhãn Sấy Hưng Yên', 'PROD-40', '2026-05-23 18:18:31.365'),
(48, 26, 37, NULL, 3, 7.99, 'Khoai Lang Sấy Đà Lạt', 'PROD-37', '2026-05-19 16:32:48.470'),
(49, 27, 76, NULL, 3, 5.99, 'Snack Khoai Tây Vị Phô Mai', 'PROD-76', '2026-05-21 07:51:10.510'),
(50, 27, 12, NULL, 2, 6.99, 'Bánh Tráng Mè Tây Ninh', 'PROD-12', '2026-05-21 07:51:10.510'),
(51, 28, 94, NULL, 1, 5.99, 'Muối Biển Hạt To Cần Giờ', 'PROD-94', '2026-05-24 19:56:21.894'),
(52, 29, 116, NULL, 1, 69.99, 'Tôm Khô Hải Sản Mix Quà Biếu', NULL, '2026-05-31 14:48:26.361'),
(53, 30, 41, NULL, 1, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:38.569'),
(54, 30, 9, NULL, 1, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:38.569'),
(55, 30, 17, NULL, 2, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:38.569'),
(56, 31, 16, NULL, 1, 34.99, 'Khô Cá Dứa Kiên Giang', NULL, '2026-06-02 12:18:38.581'),
(57, 31, 1, NULL, 3, 25.99, 'Cá Lóc Khô Đồng Tháp', NULL, '2026-06-02 12:18:38.581'),
(58, 31, 29, NULL, 1, 15.99, 'Tép Khô Đồng Tháp', NULL, '2026-06-02 12:18:38.581'),
(59, 32, 9, NULL, 3, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:38.591'),
(60, 33, 43, NULL, 2, 13.99, 'Sapoche Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:38.597'),
(61, 33, 19, NULL, 1, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.597'),
(62, 33, 8, NULL, 1, 8.99, 'Chuối Sấy Giòn Tiền Giang', NULL, '2026-06-02 12:18:38.597'),
(63, 33, 41, NULL, 1, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:38.597'),
(64, 34, 30, NULL, 2, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:38.602'),
(65, 34, 3, NULL, 1, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.602'),
(66, 34, 14, NULL, 1, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:38.602'),
(67, 34, 13, NULL, 3, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:38.602'),
(68, 35, 13, NULL, 2, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:38.612'),
(69, 35, 47, NULL, 1, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:38.612'),
(70, 35, 30, NULL, 1, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:38.612'),
(71, 35, 25, NULL, 2, 9.99, 'Cá Cơm Rang Muối Ớt', NULL, '2026-06-02 12:18:38.612'),
(72, 36, 37, NULL, 3, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:38.617'),
(73, 37, 11, NULL, 3, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:38.622'),
(74, 37, 13, NULL, 1, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:38.622'),
(75, 38, 14, NULL, 2, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:38.632'),
(76, 38, 19, NULL, 3, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.632'),
(77, 39, 25, NULL, 1, 9.99, 'Cá Cơm Rang Muối Ớt', NULL, '2026-06-02 12:18:38.636'),
(78, 39, 36, NULL, 2, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:38.636'),
(79, 40, 20, NULL, 1, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:38.643'),
(80, 41, 33, NULL, 1, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:38.647'),
(81, 41, 2, NULL, 3, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:38.647'),
(82, 42, 36, NULL, 1, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:38.652'),
(83, 42, 19, NULL, 1, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.652'),
(84, 43, 31, NULL, 1, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:38.656'),
(85, 43, 17, NULL, 2, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:38.656'),
(86, 43, 26, NULL, 3, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:38.656'),
(87, 43, 7, NULL, 2, 12.99, 'Xoài Sấy Dẻo Cam Ranh', NULL, '2026-06-02 12:18:38.656'),
(88, 44, 21, NULL, 2, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:38.660'),
(89, 44, 20, NULL, 2, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:38.660'),
(90, 44, 49, NULL, 3, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:38.660'),
(91, 45, 30, NULL, 2, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:38.664'),
(92, 45, 43, NULL, 3, 13.99, 'Sapoche Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:38.664'),
(93, 46, 45, NULL, 1, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:38.668'),
(94, 46, 45, NULL, 1, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:38.668'),
(95, 47, 18, NULL, 2, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:38.673'),
(96, 47, 22, NULL, 1, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:38.673'),
(97, 47, 16, NULL, 1, 34.99, 'Khô Cá Dứa Kiên Giang', NULL, '2026-06-02 12:18:38.673'),
(98, 47, 15, NULL, 2, 7.99, 'Sa Tế Chay Đà Nẵng', NULL, '2026-06-02 12:18:38.673'),
(99, 48, 5, NULL, 1, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:38.678'),
(100, 48, 4, NULL, 2, 45.99, 'Tôm Khô Cà Mau Loại 1', NULL, '2026-06-02 12:18:38.678'),
(101, 48, 31, NULL, 1, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:38.678'),
(102, 49, 22, NULL, 1, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:38.684'),
(103, 50, 49, NULL, 1, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:38.688'),
(104, 50, 14, NULL, 1, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:38.688'),
(105, 50, 37, NULL, 3, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:38.688'),
(106, 51, 49, NULL, 3, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:38.698'),
(107, 51, 10, NULL, 1, 14.99, 'Mứt Dừa Non Bến Tre', NULL, '2026-06-02 12:18:38.698'),
(108, 52, 24, NULL, 1, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:38.705'),
(109, 52, 24, NULL, 3, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:38.705'),
(110, 53, 22, NULL, 1, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:38.715'),
(111, 54, 10, NULL, 3, 14.99, 'Mứt Dừa Non Bến Tre', NULL, '2026-06-02 12:18:38.720'),
(112, 54, 16, NULL, 3, 34.99, 'Khô Cá Dứa Kiên Giang', NULL, '2026-06-02 12:18:38.720'),
(113, 55, 32, NULL, 1, 32.99, 'Ghẹ Rang Muối Vũng Tàu', NULL, '2026-06-02 12:18:38.725'),
(114, 55, 35, NULL, 1, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:38.725'),
(115, 55, 6, NULL, 3, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:38.725'),
(116, 55, 18, NULL, 3, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:38.725'),
(117, 56, 18, NULL, 3, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:38.731'),
(118, 56, 20, NULL, 2, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:38.731'),
(119, 56, 3, NULL, 1, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.731'),
(120, 57, 48, NULL, 2, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:38.738'),
(121, 57, 31, NULL, 1, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:38.738'),
(122, 57, 29, NULL, 3, 15.99, 'Tép Khô Đồng Tháp', NULL, '2026-06-02 12:18:38.738'),
(123, 57, 19, NULL, 2, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.738'),
(124, 58, 34, NULL, 3, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:38.742'),
(125, 58, 11, NULL, 3, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:38.742'),
(126, 58, 25, NULL, 2, 9.99, 'Cá Cơm Rang Muối Ớt', NULL, '2026-06-02 12:18:38.742'),
(127, 59, 17, NULL, 1, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:38.749'),
(128, 59, 6, NULL, 2, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:38.749'),
(129, 60, 6, NULL, 1, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:38.754'),
(130, 60, 9, NULL, 1, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:38.754'),
(131, 60, 34, NULL, 2, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:38.754'),
(132, 61, 39, NULL, 3, 14.99, 'Vải Sấy Khô Lục Ngạn', NULL, '2026-06-02 12:18:38.765'),
(133, 62, 15, NULL, 1, 7.99, 'Sa Tế Chay Đà Nẵng', NULL, '2026-06-02 12:18:38.770'),
(134, 62, 10, NULL, 1, 14.99, 'Mứt Dừa Non Bến Tre', NULL, '2026-06-02 12:18:38.770'),
(135, 62, 17, NULL, 2, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:38.770'),
(136, 62, 6, NULL, 3, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:38.770'),
(137, 63, 9, NULL, 2, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:38.775'),
(138, 63, 21, NULL, 2, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:38.775'),
(139, 64, 8, NULL, 1, 8.99, 'Chuối Sấy Giòn Tiền Giang', NULL, '2026-06-02 12:18:38.783'),
(140, 64, 33, NULL, 1, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:38.783'),
(141, 65, 10, NULL, 3, 14.99, 'Mứt Dừa Non Bến Tre', NULL, '2026-06-02 12:18:38.791'),
(142, 65, 7, NULL, 2, 12.99, 'Xoài Sấy Dẻo Cam Ranh', NULL, '2026-06-02 12:18:38.791'),
(143, 65, 35, NULL, 3, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:38.791'),
(144, 66, 39, NULL, 1, 14.99, 'Vải Sấy Khô Lục Ngạn', NULL, '2026-06-02 12:18:38.797'),
(145, 66, 35, NULL, 3, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:38.797'),
(146, 67, 41, NULL, 3, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:38.806'),
(147, 67, 20, NULL, 1, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:38.806'),
(148, 68, 12, NULL, 2, 6.99, 'Bánh Tráng Mè Tây Ninh', NULL, '2026-06-02 12:18:38.811'),
(149, 68, 24, NULL, 2, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:38.811'),
(150, 69, 17, NULL, 1, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:38.815'),
(151, 69, 26, NULL, 3, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:38.815'),
(152, 69, 18, NULL, 2, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:38.815'),
(153, 70, 36, NULL, 3, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:38.823'),
(154, 70, 12, NULL, 3, 6.99, 'Bánh Tráng Mè Tây Ninh', NULL, '2026-06-02 12:18:38.823'),
(155, 70, 31, NULL, 2, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:38.823'),
(156, 70, 19, NULL, 3, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.823'),
(157, 71, 27, NULL, 3, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:38.827'),
(158, 71, 7, NULL, 1, 12.99, 'Xoài Sấy Dẻo Cam Ranh', NULL, '2026-06-02 12:18:38.827'),
(159, 71, 39, NULL, 1, 14.99, 'Vải Sấy Khô Lục Ngạn', NULL, '2026-06-02 12:18:38.827'),
(160, 71, 24, NULL, 3, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:38.827'),
(161, 72, 16, NULL, 3, 34.99, 'Khô Cá Dứa Kiên Giang', NULL, '2026-06-02 12:18:38.831'),
(162, 72, 30, NULL, 2, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:38.831'),
(163, 72, 32, NULL, 3, 32.99, 'Ghẹ Rang Muối Vũng Tàu', NULL, '2026-06-02 12:18:38.831'),
(164, 72, 47, NULL, 1, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:38.831'),
(165, 73, 31, NULL, 2, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:38.841'),
(166, 74, 38, NULL, 2, 9.99, 'Dứa Sấy Dẻo Tiền Giang', NULL, '2026-06-02 12:18:38.845'),
(167, 74, 36, NULL, 1, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:38.845'),
(168, 74, 37, NULL, 1, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:38.845'),
(169, 74, 46, NULL, 2, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:38.845'),
(170, 75, 9, NULL, 1, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:38.849'),
(171, 75, 38, NULL, 1, 9.99, 'Dứa Sấy Dẻo Tiền Giang', NULL, '2026-06-02 12:18:38.849'),
(172, 75, 47, NULL, 1, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:38.849'),
(173, 76, 6, NULL, 3, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:38.854'),
(174, 76, 48, NULL, 2, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:38.854'),
(175, 77, 1, NULL, 3, 25.99, 'Cá Lóc Khô Đồng Tháp', NULL, '2026-06-02 12:18:38.861'),
(176, 78, 21, NULL, 2, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:38.865'),
(177, 78, 3, NULL, 2, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.865'),
(178, 78, 17, NULL, 2, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:38.865'),
(179, 78, 19, NULL, 2, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.865'),
(180, 79, 42, NULL, 2, 8.99, 'Ổi Sấy Giòn Long An', NULL, '2026-06-02 12:18:38.873'),
(181, 79, 23, NULL, 3, 20.99, 'Khô Cá Thiểu Trà Vinh', NULL, '2026-06-02 12:18:38.873'),
(182, 79, 30, NULL, 3, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:38.873'),
(183, 79, 24, NULL, 1, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:38.873'),
(184, 80, 44, NULL, 3, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:38.877'),
(185, 80, 11, NULL, 2, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:38.877'),
(186, 80, 1, NULL, 3, 25.99, 'Cá Lóc Khô Đồng Tháp', NULL, '2026-06-02 12:18:38.877'),
(187, 81, 32, NULL, 3, 32.99, 'Ghẹ Rang Muối Vũng Tàu', NULL, '2026-06-02 12:18:38.881'),
(188, 82, 21, NULL, 3, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:38.886'),
(189, 83, 44, NULL, 1, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:38.891'),
(190, 83, 36, NULL, 1, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:38.891'),
(191, 83, 16, NULL, 3, 34.99, 'Khô Cá Dứa Kiên Giang', NULL, '2026-06-02 12:18:38.891'),
(192, 83, 41, NULL, 2, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:38.891'),
(193, 84, 30, NULL, 2, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:38.903'),
(194, 84, 24, NULL, 3, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:38.903'),
(195, 84, 47, NULL, 3, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:38.903'),
(196, 85, 27, NULL, 3, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:38.911'),
(197, 85, 47, NULL, 3, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:38.911'),
(198, 85, 44, NULL, 1, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:38.911'),
(199, 86, 50, NULL, 3, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:38.916'),
(200, 86, 34, NULL, 3, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:38.916'),
(201, 87, 46, NULL, 2, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:38.922'),
(202, 87, 20, NULL, 1, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:38.922'),
(203, 87, 26, NULL, 2, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:38.922'),
(204, 88, 33, NULL, 1, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:38.930'),
(205, 88, 22, NULL, 2, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:38.930'),
(206, 88, 18, NULL, 3, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:38.930'),
(207, 88, 21, NULL, 1, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:38.930'),
(208, 89, 3, NULL, 2, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.936'),
(209, 89, 10, NULL, 2, 14.99, 'Mứt Dừa Non Bến Tre', NULL, '2026-06-02 12:18:38.936'),
(210, 89, 31, NULL, 2, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:38.936'),
(211, 89, 40, NULL, 1, 19.99, 'Nhãn Sấy Hưng Yên', NULL, '2026-06-02 12:18:38.936'),
(212, 90, 42, NULL, 1, 8.99, 'Ổi Sấy Giòn Long An', NULL, '2026-06-02 12:18:38.942'),
(213, 90, 2, NULL, 3, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:38.942'),
(214, 90, 17, NULL, 3, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:38.942'),
(215, 90, 25, NULL, 1, 9.99, 'Cá Cơm Rang Muối Ớt', NULL, '2026-06-02 12:18:38.942'),
(216, 91, 23, NULL, 1, 20.99, 'Khô Cá Thiểu Trà Vinh', NULL, '2026-06-02 12:18:38.950'),
(217, 91, 28, NULL, 2, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:38.950'),
(218, 91, 5, NULL, 3, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:38.950'),
(219, 91, 46, NULL, 2, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:38.950'),
(220, 92, 2, NULL, 1, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:38.955'),
(221, 93, 28, NULL, 2, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:38.962'),
(222, 93, 46, NULL, 2, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:38.962'),
(223, 93, 3, NULL, 2, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.962'),
(224, 93, 44, NULL, 1, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:38.962'),
(225, 94, 36, NULL, 2, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:38.967'),
(226, 94, 36, NULL, 1, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:38.967'),
(227, 94, 2, NULL, 2, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:38.967'),
(228, 95, 19, NULL, 1, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.972'),
(229, 96, 26, NULL, 2, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:38.977'),
(230, 96, 3, NULL, 2, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.977'),
(231, 96, 33, NULL, 2, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:38.977'),
(232, 97, 38, NULL, 2, 9.99, 'Dứa Sấy Dẻo Tiền Giang', NULL, '2026-06-02 12:18:38.982'),
(233, 98, 3, NULL, 1, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.986'),
(234, 98, 32, NULL, 1, 32.99, 'Ghẹ Rang Muối Vũng Tàu', NULL, '2026-06-02 12:18:38.986'),
(235, 98, 3, NULL, 3, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:38.986'),
(236, 98, 10, NULL, 3, 14.99, 'Mứt Dừa Non Bến Tre', NULL, '2026-06-02 12:18:38.986'),
(237, 99, 19, NULL, 2, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:38.997'),
(238, 99, 7, NULL, 1, 12.99, 'Xoài Sấy Dẻo Cam Ranh', NULL, '2026-06-02 12:18:38.997'),
(239, 99, 41, NULL, 3, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:38.997'),
(240, 99, 20, NULL, 1, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:38.997'),
(241, 100, 11, NULL, 3, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:39.006'),
(242, 100, 17, NULL, 3, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:39.006'),
(243, 100, 26, NULL, 3, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:39.006'),
(244, 101, 35, NULL, 1, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:39.016'),
(245, 101, 22, NULL, 1, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:39.016'),
(246, 101, 47, NULL, 1, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.016'),
(247, 101, 27, NULL, 3, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:39.016'),
(248, 102, 39, NULL, 2, 14.99, 'Vải Sấy Khô Lục Ngạn', NULL, '2026-06-02 12:18:39.031'),
(249, 102, 5, NULL, 2, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.031'),
(250, 103, 19, NULL, 1, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:39.040'),
(251, 104, 45, NULL, 3, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.046'),
(252, 104, 50, NULL, 3, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.046'),
(253, 104, 20, NULL, 2, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:39.046'),
(254, 104, 41, NULL, 1, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:39.046'),
(255, 105, 43, NULL, 1, 13.99, 'Sapoche Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.050'),
(256, 105, 17, NULL, 1, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:39.050'),
(257, 105, 28, NULL, 2, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:39.050'),
(258, 106, 24, NULL, 3, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:39.055'),
(259, 106, 30, NULL, 2, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:39.055'),
(260, 106, 42, NULL, 2, 8.99, 'Ổi Sấy Giòn Long An', NULL, '2026-06-02 12:18:39.055'),
(261, 107, 8, NULL, 3, 8.99, 'Chuối Sấy Giòn Tiền Giang', NULL, '2026-06-02 12:18:39.065'),
(262, 107, 34, NULL, 1, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:39.065'),
(263, 108, 34, NULL, 1, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:39.073'),
(264, 109, 18, NULL, 1, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:39.078'),
(265, 109, 24, NULL, 3, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:39.078'),
(266, 110, 48, NULL, 3, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:39.082'),
(267, 111, 16, NULL, 2, 34.99, 'Khô Cá Dứa Kiên Giang', NULL, '2026-06-02 12:18:39.089'),
(268, 111, 37, NULL, 3, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:39.089'),
(269, 111, 23, NULL, 3, 20.99, 'Khô Cá Thiểu Trà Vinh', NULL, '2026-06-02 12:18:39.089'),
(270, 111, 32, NULL, 3, 32.99, 'Ghẹ Rang Muối Vũng Tàu', NULL, '2026-06-02 12:18:39.089'),
(271, 112, 24, NULL, 2, 32.99, 'Khô Cá Lóc Một Nắng', NULL, '2026-06-02 12:18:39.097'),
(272, 112, 48, NULL, 1, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:39.097'),
(273, 112, 40, NULL, 1, 19.99, 'Nhãn Sấy Hưng Yên', NULL, '2026-06-02 12:18:39.097'),
(274, 112, 50, NULL, 2, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.097'),
(275, 113, 22, NULL, 3, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:39.108'),
(276, 113, 14, NULL, 3, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:39.108'),
(277, 113, 4, NULL, 2, 45.99, 'Tôm Khô Cà Mau Loại 1', NULL, '2026-06-02 12:18:39.108'),
(278, 114, 37, NULL, 3, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:39.113'),
(279, 114, 5, NULL, 3, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.113'),
(280, 114, 9, NULL, 1, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:39.113'),
(281, 114, 50, NULL, 2, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.113'),
(282, 115, 31, NULL, 2, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:39.118'),
(283, 116, 40, NULL, 1, 19.99, 'Nhãn Sấy Hưng Yên', NULL, '2026-06-02 12:18:39.124'),
(284, 116, 50, NULL, 2, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.124'),
(285, 117, 31, NULL, 2, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:39.135'),
(286, 117, 35, NULL, 1, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:39.135'),
(287, 118, 4, NULL, 2, 45.99, 'Tôm Khô Cà Mau Loại 1', NULL, '2026-06-02 12:18:39.140'),
(288, 118, 13, NULL, 3, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:39.140'),
(289, 118, 16, NULL, 1, 34.99, 'Khô Cá Dứa Kiên Giang', NULL, '2026-06-02 12:18:39.140'),
(290, 118, 27, NULL, 3, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:39.140'),
(291, 119, 37, NULL, 3, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:39.145'),
(292, 119, 22, NULL, 3, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:39.145'),
(293, 119, 35, NULL, 3, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:39.145'),
(294, 119, 33, NULL, 1, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:39.145'),
(295, 120, 21, NULL, 1, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:39.157'),
(296, 120, 47, NULL, 1, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.157'),
(297, 120, 35, NULL, 2, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:39.157'),
(298, 120, 7, NULL, 1, 12.99, 'Xoài Sấy Dẻo Cam Ranh', NULL, '2026-06-02 12:18:39.157'),
(299, 121, 25, NULL, 1, 9.99, 'Cá Cơm Rang Muối Ớt', NULL, '2026-06-02 12:18:39.164'),
(300, 121, 7, NULL, 2, 12.99, 'Xoài Sấy Dẻo Cam Ranh', NULL, '2026-06-02 12:18:39.164'),
(301, 121, 14, NULL, 3, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:39.164'),
(302, 122, 26, NULL, 1, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:39.168'),
(303, 122, 11, NULL, 2, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:39.168'),
(304, 123, 9, NULL, 1, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:39.179'),
(305, 123, 45, NULL, 2, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.179'),
(306, 123, 43, NULL, 3, 13.99, 'Sapoche Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.179'),
(307, 123, 20, NULL, 3, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:39.179'),
(308, 124, 50, NULL, 2, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.184'),
(309, 124, 43, NULL, 3, 13.99, 'Sapoche Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.184'),
(310, 124, 28, NULL, 2, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:39.184'),
(311, 125, 30, NULL, 3, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:39.188'),
(312, 125, 5, NULL, 1, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.188'),
(313, 125, 28, NULL, 3, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:39.188'),
(314, 126, 49, NULL, 1, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:39.193'),
(315, 126, 22, NULL, 3, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:39.193'),
(316, 126, 27, NULL, 1, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:39.193'),
(317, 127, 8, NULL, 1, 8.99, 'Chuối Sấy Giòn Tiền Giang', NULL, '2026-06-02 12:18:39.197'),
(318, 127, 4, NULL, 1, 45.99, 'Tôm Khô Cà Mau Loại 1', NULL, '2026-06-02 12:18:39.197'),
(319, 127, 14, NULL, 3, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:39.197'),
(320, 127, 46, NULL, 3, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:39.197'),
(321, 128, 47, NULL, 2, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.202'),
(322, 128, 2, NULL, 2, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:39.202'),
(323, 128, 2, NULL, 2, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:39.202'),
(324, 128, 32, NULL, 1, 32.99, 'Ghẹ Rang Muối Vũng Tàu', NULL, '2026-06-02 12:18:39.202'),
(325, 129, 2, NULL, 2, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:39.207'),
(326, 129, 26, NULL, 1, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:39.207'),
(327, 129, 37, NULL, 1, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:39.207'),
(328, 129, 18, NULL, 1, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:39.207'),
(329, 130, 33, NULL, 2, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:39.213'),
(330, 130, 7, NULL, 2, 12.99, 'Xoài Sấy Dẻo Cam Ranh', NULL, '2026-06-02 12:18:39.213'),
(331, 130, 47, NULL, 3, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.213'),
(332, 131, 30, NULL, 2, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:39.223'),
(333, 131, 47, NULL, 3, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.223'),
(334, 132, 22, NULL, 1, 28.99, 'Khô Cá Ngát Sông Tiền', NULL, '2026-06-02 12:18:39.232'),
(335, 133, 6, NULL, 3, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:39.237'),
(336, 133, 17, NULL, 3, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:39.237'),
(337, 133, 49, NULL, 3, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:39.237'),
(338, 133, 2, NULL, 2, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-02 12:18:39.237'),
(339, 134, 44, NULL, 1, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.247'),
(340, 134, 27, NULL, 3, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:39.247'),
(341, 135, 30, NULL, 1, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:39.252'),
(342, 135, 34, NULL, 3, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:39.252'),
(343, 136, 5, NULL, 1, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.262'),
(344, 136, 13, NULL, 1, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:39.262'),
(345, 137, 26, NULL, 3, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:39.268'),
(346, 137, 30, NULL, 3, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:39.268'),
(347, 137, 13, NULL, 2, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:39.268'),
(348, 137, 9, NULL, 3, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:39.268'),
(349, 138, 29, NULL, 1, 15.99, 'Tép Khô Đồng Tháp', NULL, '2026-06-02 12:18:39.283'),
(350, 138, 47, NULL, 3, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.283'),
(351, 138, 27, NULL, 2, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:39.283'),
(352, 138, 31, NULL, 2, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:39.283'),
(353, 139, 46, NULL, 1, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:39.289'),
(354, 139, 44, NULL, 3, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.289'),
(355, 139, 9, NULL, 3, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:39.289'),
(356, 140, 4, NULL, 1, 45.99, 'Tôm Khô Cà Mau Loại 1', NULL, '2026-06-02 12:18:39.299'),
(357, 140, 50, NULL, 1, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.299'),
(358, 141, 17, NULL, 2, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:39.305'),
(359, 141, 41, NULL, 2, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:39.305'),
(360, 141, 47, NULL, 2, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.305'),
(361, 142, 4, NULL, 3, 45.99, 'Tôm Khô Cà Mau Loại 1', NULL, '2026-06-02 12:18:39.316'),
(362, 142, 41, NULL, 3, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:39.316'),
(363, 143, 13, NULL, 3, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:39.327'),
(364, 143, 50, NULL, 1, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.327'),
(365, 144, 49, NULL, 2, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:39.333'),
(366, 144, 37, NULL, 3, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:39.333'),
(367, 145, 10, NULL, 3, 14.99, 'Mứt Dừa Non Bến Tre', NULL, '2026-06-02 12:18:39.340'),
(368, 145, 33, NULL, 2, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:39.340'),
(369, 145, 23, NULL, 2, 20.99, 'Khô Cá Thiểu Trà Vinh', NULL, '2026-06-02 12:18:39.340'),
(370, 146, 38, NULL, 3, 9.99, 'Dứa Sấy Dẻo Tiền Giang', NULL, '2026-06-02 12:18:39.349'),
(371, 146, 50, NULL, 2, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.349'),
(372, 146, 37, NULL, 2, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:39.349'),
(373, 147, 28, NULL, 3, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:39.355'),
(374, 147, 33, NULL, 1, 32.99, 'Tôm Khô Loại 2 Cần Giờ', NULL, '2026-06-02 12:18:39.355'),
(375, 148, 34, NULL, 2, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:39.371'),
(376, 148, 12, NULL, 3, 6.99, 'Bánh Tráng Mè Tây Ninh', NULL, '2026-06-02 12:18:39.371'),
(377, 148, 40, NULL, 1, 19.99, 'Nhãn Sấy Hưng Yên', NULL, '2026-06-02 12:18:39.371'),
(378, 148, 25, NULL, 3, 9.99, 'Cá Cơm Rang Muối Ớt', NULL, '2026-06-02 12:18:39.371'),
(379, 149, 45, NULL, 1, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.389'),
(380, 149, 49, NULL, 1, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:39.389'),
(381, 149, 27, NULL, 2, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:39.389'),
(382, 150, 46, NULL, 3, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:39.395'),
(383, 150, 44, NULL, 2, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.395'),
(384, 150, 27, NULL, 2, 26.99, 'Khô Cá Hố Phan Rang', NULL, '2026-06-02 12:18:39.395'),
(385, 151, 45, NULL, 1, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.401'),
(386, 151, 28, NULL, 1, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:39.401'),
(387, 151, 46, NULL, 1, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:39.401'),
(388, 152, 41, NULL, 2, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:39.408'),
(389, 152, 45, NULL, 2, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.408'),
(390, 153, 35, NULL, 3, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:39.421'),
(391, 154, 8, NULL, 2, 8.99, 'Chuối Sấy Giòn Tiền Giang', NULL, '2026-06-02 12:18:39.426'),
(392, 154, 21, NULL, 3, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:39.426'),
(393, 155, 30, NULL, 2, 22.99, 'Mực Rim Cay Nha Trang', NULL, '2026-06-02 12:18:39.432'),
(394, 156, 41, NULL, 3, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:39.437'),
(395, 156, 20, NULL, 2, 12.99, 'Khô Cá Cơm Phan Thiết', NULL, '2026-06-02 12:18:39.437'),
(396, 156, 39, NULL, 2, 14.99, 'Vải Sấy Khô Lục Ngạn', NULL, '2026-06-02 12:18:39.437'),
(397, 157, 45, NULL, 1, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.444'),
(398, 157, 49, NULL, 2, 15.99, 'Trà Atiso Đà Lạt', NULL, '2026-06-02 12:18:39.444'),
(399, 157, 35, NULL, 3, 89.99, 'Tôm Hùm Đất Nướng Phú Yên', NULL, '2026-06-02 12:18:39.444'),
(400, 157, 6, NULL, 3, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:39.444'),
(401, 158, 11, NULL, 2, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:39.453'),
(402, 158, 21, NULL, 2, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:39.453'),
(403, 159, 19, NULL, 2, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:39.464'),
(404, 160, 34, NULL, 3, 12.99, 'Mực Khô Ăn Liền Bình Thuận', NULL, '2026-06-02 12:18:39.471'),
(405, 160, 39, NULL, 3, 14.99, 'Vải Sấy Khô Lục Ngạn', NULL, '2026-06-02 12:18:39.471'),
(406, 160, 13, NULL, 1, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:39.471'),
(407, 161, 47, NULL, 3, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.478'),
(408, 161, 31, NULL, 2, 48.99, 'Mực Khô Một Nắng Kiên Giang', NULL, '2026-06-02 12:18:39.478'),
(409, 162, 12, NULL, 2, 6.99, 'Bánh Tráng Mè Tây Ninh', NULL, '2026-06-02 12:18:39.489'),
(410, 162, 5, NULL, 1, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.489'),
(411, 162, 47, NULL, 3, 13.99, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, '2026-06-02 12:18:39.489'),
(412, 163, 46, NULL, 2, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:39.504'),
(413, 163, 46, NULL, 1, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:39.504'),
(414, 163, 42, NULL, 3, 8.99, 'Ổi Sấy Giòn Long An', NULL, '2026-06-02 12:18:39.504'),
(415, 164, 18, NULL, 1, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:39.510'),
(416, 164, 26, NULL, 3, 17.99, 'Khô Cá Basa Châu Đốc', NULL, '2026-06-02 12:18:39.510'),
(417, 164, 40, NULL, 1, 19.99, 'Nhãn Sấy Hưng Yên', NULL, '2026-06-02 12:18:39.510'),
(418, 164, 29, NULL, 2, 15.99, 'Tép Khô Đồng Tháp', NULL, '2026-06-02 12:18:39.510'),
(419, 165, 44, NULL, 2, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.518'),
(420, 165, 37, NULL, 2, 7.99, 'Khoai Lang Sấy Đà Lạt', NULL, '2026-06-02 12:18:39.518'),
(421, 166, 5, NULL, 3, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.525'),
(422, 167, 6, NULL, 2, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:39.535'),
(423, 168, 12, NULL, 2, 6.99, 'Bánh Tráng Mè Tây Ninh', NULL, '2026-06-02 12:18:39.547'),
(424, 168, 36, NULL, 2, 18.99, 'Ruốc Tôm Khô Huế', NULL, '2026-06-02 12:18:39.547'),
(425, 168, 19, NULL, 1, 16.99, 'Khô Cá Nục Bình Định', NULL, '2026-06-02 12:18:39.547'),
(426, 168, 50, NULL, 1, 14.99, 'Trà Hoa Cúc La Mã', NULL, '2026-06-02 12:18:39.547'),
(427, 169, 5, NULL, 3, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.553'),
(428, 169, 13, NULL, 2, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:39.553'),
(429, 169, 32, NULL, 2, 32.99, 'Ghẹ Rang Muối Vũng Tàu', NULL, '2026-06-02 12:18:39.553'),
(430, 170, 28, NULL, 3, 28.99, 'Tôm Đất Khô Bạc Liêu', NULL, '2026-06-02 12:18:39.559'),
(431, 170, 48, NULL, 2, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:39.559'),
(432, 171, 4, NULL, 1, 45.99, 'Tôm Khô Cà Mau Loại 1', NULL, '2026-06-02 12:18:39.565'),
(433, 171, 42, NULL, 3, 8.99, 'Ổi Sấy Giòn Long An', NULL, '2026-06-02 12:18:39.565'),
(434, 171, 14, NULL, 2, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:39.565'),
(435, 171, 38, NULL, 2, 9.99, 'Dứa Sấy Dẻo Tiền Giang', NULL, '2026-06-02 12:18:39.565'),
(436, 172, 9, NULL, 3, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:39.570'),
(437, 173, 9, NULL, 1, 10.99, 'Mít Sấy Giòn Đồng Nai', NULL, '2026-06-02 12:18:39.576'),
(438, 174, 17, NULL, 2, 22.99, 'Khô Cá Kèo Cà Mau', NULL, '2026-06-02 12:18:39.584'),
(439, 174, 41, NULL, 2, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:39.584'),
(440, 174, 29, NULL, 2, 15.99, 'Tép Khô Đồng Tháp', NULL, '2026-06-02 12:18:39.584'),
(441, 174, 41, NULL, 1, 11.99, 'Mận Sấy Bắc Hà', NULL, '2026-06-02 12:18:39.584'),
(442, 175, 45, NULL, 1, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.599'),
(443, 175, 18, NULL, 3, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:39.599'),
(444, 176, 14, NULL, 1, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:39.611'),
(445, 176, 15, NULL, 1, 7.99, 'Sa Tế Chay Đà Nẵng', NULL, '2026-06-02 12:18:39.611'),
(446, 176, 11, NULL, 1, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:39.611'),
(447, 176, 46, NULL, 3, 24.99, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, '2026-06-02 12:18:39.611'),
(448, 177, 3, NULL, 3, 15.99, 'Khô Cá Tra Phồng', NULL, '2026-06-02 12:18:39.618'),
(449, 178, 48, NULL, 2, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:39.625'),
(450, 178, 45, NULL, 1, 9.99, 'Dừa Sấy Bến Tre', NULL, '2026-06-02 12:18:39.625'),
(451, 178, 44, NULL, 2, 11.99, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.625'),
(452, 178, 13, NULL, 1, 18.99, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, '2026-06-02 12:18:39.625'),
(453, 179, 42, NULL, 3, 8.99, 'Ổi Sấy Giòn Long An', NULL, '2026-06-02 12:18:39.632'),
(454, 179, 48, NULL, 2, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:39.632'),
(455, 179, 43, NULL, 3, 13.99, 'Sapoche Sấy Dẻo Bình Thuận', NULL, '2026-06-02 12:18:39.632'),
(456, 179, 48, NULL, 2, 12.99, 'Trà Ổi Đào Mộc Châu', NULL, '2026-06-02 12:18:39.632'),
(457, 180, 11, NULL, 1, 28.99, 'Trà Sen Tây Hồ', NULL, '2026-06-02 12:18:39.638'),
(458, 180, 14, NULL, 2, 9.99, 'Muối Tôm Tây Ninh', NULL, '2026-06-02 12:18:39.638'),
(459, 181, 18, NULL, 1, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:39.644'),
(460, 181, 5, NULL, 3, 55.99, 'Mực Khô Câu Phú Quốc', NULL, '2026-06-02 12:18:39.644'),
(461, 182, 21, NULL, 3, 38.99, 'Khô Cá Thu Đà Nẵng', NULL, '2026-06-02 12:18:39.650'),
(462, 182, 18, NULL, 1, 18.99, 'Khô Cá Chạch Đồng', NULL, '2026-06-02 12:18:39.650'),
(463, 182, 38, NULL, 1, 9.99, 'Dứa Sấy Dẻo Tiền Giang', NULL, '2026-06-02 12:18:39.650'),
(464, 182, 6, NULL, 1, 35.99, 'Tôm Rim Me Sài Gòn', NULL, '2026-06-02 12:18:39.650'),
(465, 183, 115, NULL, 1, 13.99, 'Ruốc (Chà Bông) Heo Sài Gòn', NULL, '2026-06-02 13:38:01.843'),
(466, 184, 115, NULL, 1, 13.99, 'Ruốc (Chà Bông) Heo Sài Gòn', NULL, '2026-06-03 04:47:07.149'),
(467, 184, 114, NULL, 1, 9.99, 'Bánh Xèo Bột Pha Sẵn Miền Tây', NULL, '2026-06-03 04:47:07.149'),
(468, 184, 113, NULL, 1, 24.99, 'Lạp Xưởng Tươi Cần Thơ', NULL, '2026-06-03 04:47:07.149'),
(469, 184, 112, NULL, 1, 18.99, 'Mắm Bò Hóc Khmer Trà Vinh', NULL, '2026-06-03 04:47:07.149'),
(470, 184, 110, NULL, 3, 32.99, 'Thịt Lợn Sấy Khô Sơn La', NULL, '2026-06-03 04:47:07.149'),
(471, 185, 2, NULL, 1, 19.99, 'Khô Cá Sặc Bổi Cà Mau', NULL, '2026-06-04 08:24:08.261');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_gio_hang`
--

CREATE TABLE `chi_tiet_gio_hang` (
  `ma_chi_tiet_gio_hang` int(11) NOT NULL,
  `ma_gio_hang` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ma_bien_the` int(11) DEFAULT NULL,
  `so_luong` int(11) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_nhan_san_pham`
--

CREATE TABLE `chi_tiet_nhan_san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ma_nhan` int(11) NOT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_nhan_san_pham`
--

INSERT INTO `chi_tiet_nhan_san_pham` (`ma_san_pham`, `ma_nhan`, `ngay_tao`) VALUES
(113, 1, '2026-06-04 08:21:23.201'),
(115, 1, '2026-06-03 04:51:16.342');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_nhan_ban_tin`
--

CREATE TABLE `dang_ky_nhan_ban_tin` (
  `ma_dang_ky` int(11) NOT NULL,
  `thu_dien_tu` varchar(191) NOT NULL,
  `ngay_dang_ky` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_nhan_ban_tin`
--

INSERT INTO `dang_ky_nhan_ban_tin` (`ma_dang_ky`, `thu_dien_tu`, `ngay_dang_ky`) VALUES
(1, 'subscriber1@gmail.test', '2026-05-31 14:42:45.226'),
(2, 'subscriber2@gmail.test', '2026-05-28 14:42:45.232'),
(3, 'subscriber3@gmail.test', '2026-05-25 14:42:45.234'),
(4, 'subscriber4@gmail.test', '2026-05-22 14:42:45.236'),
(5, 'subscriber5@gmail.test', '2026-05-19 14:42:45.237'),
(6, 'subscriber6@gmail.test', '2026-05-16 14:42:45.238'),
(7, 'subscriber7@gmail.test', '2026-05-13 14:42:45.239'),
(8, 'subscriber8@gmail.test', '2026-05-10 14:42:45.240');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia_san_pham`
--

CREATE TABLE `danh_gia_san_pham` (
  `ma_danh_gia` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_chi_tiet_don_hang` int(11) DEFAULT NULL,
  `so_sao` int(11) NOT NULL,
  `noi_dung_danh_gia` text DEFAULT NULL,
  `trang_thai` varchar(191) NOT NULL DEFAULT 'PENDING',
  `phan_hoi_tu_admin` text DEFAULT NULL,
  `ngay_phan_hoi` datetime(3) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia_san_pham`
--

INSERT INTO `danh_gia_san_pham` (`ma_danh_gia`, `ma_san_pham`, `ma_nguoi_dung`, `ma_chi_tiet_don_hang`, `so_sao`, `noi_dung_danh_gia`, `trang_thai`, `phan_hoi_tu_admin`, `ngay_phan_hoi`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, 1, NULL, 5, 'Sản phẩm tuyệt vời! Hương vị đúng chất đặc sản quê nhà, đóng gói kỹ, giao hàng nhanh. Gia đình rất thích, sẽ mua tiếp!', 'APPROVED', NULL, NULL, '2026-04-30 00:40:53.205', '2026-05-30 10:17:57.840'),
(2, 2, 1, NULL, 5, 'Chất lượng vượt mong đợi. Mùi thơm tự nhiên, không chất bảo quản. Đây là lần thứ 3 mình mua và lần nào cũng hài lòng.', 'APPROVED', NULL, NULL, '2026-03-26 08:23:19.671', '2026-05-30 10:17:57.849'),
(3, 3, 1, NULL, 4, 'Sản phẩm ngon, chất lượng tốt. Giao hàng đúng hẹn. Hộp đóng gói đẹp, phù hợp làm quà tặng. Sẽ giới thiệu cho bạn bè.', 'APPROVED', NULL, NULL, '2026-04-18 01:05:23.546', '2026-05-30 10:17:57.855'),
(4, 4, 1, NULL, 5, 'Đặt mua về làm quà cho người thân ở nước ngoài, ai cũng khen ngon. Hàng chính gốc, uy tín. Shop rất nhiệt tình tư vấn.', 'APPROVED', NULL, NULL, '2026-05-23 19:06:43.178', '2026-05-30 10:17:57.861'),
(5, 5, 1, NULL, 4, 'Ngon, giá hợp lý. Mình thích nhất là không có chất bảo quản, hoàn toàn tự nhiên. Đóng gói cẩn thận, không bị vỡ.', 'APPROVED', NULL, NULL, '2026-04-24 17:42:49.059', '2026-05-30 10:17:57.867'),
(6, 6, 1, NULL, 5, 'Mình mua nhiều lần rồi, chưa lần nào thất vọng. Sản phẩm đặc sản thật sự, khác hẳn hàng bình thường ngoài chợ.', 'APPROVED', NULL, NULL, '2026-05-08 00:17:00.416', '2026-05-30 10:17:57.876'),
(7, 7, 1, NULL, 5, 'Gia đình mình ở Mỹ, mỗi lần nhớ quê lại đặt ở đây. Hương vị đúng như ở Việt Nam, cảm ơn shop đã giữ được chất lượng!', 'APPROVED', NULL, NULL, '2026-04-25 20:11:28.002', '2026-05-30 10:17:57.882'),
(8, 8, 1, NULL, 4, 'Sản phẩm ngon, vận chuyển cẩn thận. Lần sau sẽ mua thêm số lượng lớn hơn để tiết kiệm ship.', 'APPROVED', NULL, NULL, '2026-03-21 19:01:41.449', '2026-05-30 10:17:57.887'),
(9, 9, 1, NULL, 5, 'Tuyệt vời! Đây là món quà hoàn hảo cho người Việt ở xa quê. Mùi hương, vị ngon, hấp dẫn. 5 sao không đủ để diễn tả!', 'APPROVED', NULL, NULL, '2026-03-30 14:52:29.049', '2026-05-30 10:17:57.893'),
(10, 10, 1, NULL, 3, 'Sản phẩm ổn, nhưng mình kỳ vọng ngon hơn chút. Đóng gói đẹp, giao hàng nhanh. Sẽ thử thêm sản phẩm khác của shop.', 'APPROVED', NULL, NULL, '2026-03-18 07:41:59.188', '2026-05-30 10:17:57.898'),
(11, 11, 1, NULL, 5, 'Sản phẩm tuyệt vời! Hương vị đúng chất đặc sản quê nhà, đóng gói kỹ, giao hàng nhanh. Gia đình rất thích, sẽ mua tiếp!', 'APPROVED', NULL, NULL, '2026-05-09 18:35:05.555', '2026-05-30 10:17:57.904'),
(12, 12, 1, NULL, 5, 'Chất lượng vượt mong đợi. Mùi thơm tự nhiên, không chất bảo quản. Đây là lần thứ 3 mình mua và lần nào cũng hài lòng.', 'APPROVED', NULL, NULL, '2026-04-20 06:25:28.846', '2026-05-30 10:17:57.908'),
(13, 13, 1, NULL, 4, 'Sản phẩm ngon, chất lượng tốt. Giao hàng đúng hẹn. Hộp đóng gói đẹp, phù hợp làm quà tặng. Sẽ giới thiệu cho bạn bè.', 'APPROVED', NULL, NULL, '2026-03-06 21:11:30.828', '2026-05-30 10:17:57.912'),
(14, 14, 1, NULL, 5, 'Đặt mua về làm quà cho người thân ở nước ngoài, ai cũng khen ngon. Hàng chính gốc, uy tín. Shop rất nhiệt tình tư vấn.', 'APPROVED', NULL, NULL, '2026-04-16 08:31:13.651', '2026-05-30 10:17:57.918'),
(15, 15, 1, NULL, 4, 'Ngon, giá hợp lý. Mình thích nhất là không có chất bảo quản, hoàn toàn tự nhiên. Đóng gói cẩn thận, không bị vỡ.', 'APPROVED', NULL, NULL, '2026-04-22 08:34:01.031', '2026-05-30 10:17:57.922'),
(16, 16, 1, NULL, 5, 'Mình mua nhiều lần rồi, chưa lần nào thất vọng. Sản phẩm đặc sản thật sự, khác hẳn hàng bình thường ngoài chợ.', 'APPROVED', NULL, NULL, '2026-04-23 19:14:48.218', '2026-05-30 10:17:57.927'),
(17, 17, 1, NULL, 5, 'Gia đình mình ở Mỹ, mỗi lần nhớ quê lại đặt ở đây. Hương vị đúng như ở Việt Nam, cảm ơn shop đã giữ được chất lượng!', 'APPROVED', NULL, NULL, '2026-05-07 07:30:45.694', '2026-05-30 10:17:57.931'),
(18, 18, 1, NULL, 4, 'Sản phẩm ngon, vận chuyển cẩn thận. Lần sau sẽ mua thêm số lượng lớn hơn để tiết kiệm ship.', 'APPROVED', NULL, NULL, '2026-03-22 01:37:41.895', '2026-05-30 10:17:57.937'),
(19, 19, 1, NULL, 5, 'Tuyệt vời! Đây là món quà hoàn hảo cho người Việt ở xa quê. Mùi hương, vị ngon, hấp dẫn. 5 sao không đủ để diễn tả!', 'APPROVED', NULL, NULL, '2026-05-19 01:30:22.679', '2026-05-30 10:17:57.942'),
(20, 20, 1, NULL, 3, 'Sản phẩm ổn, nhưng mình kỳ vọng ngon hơn chút. Đóng gói đẹp, giao hàng nhanh. Sẽ thử thêm sản phẩm khác của shop.', 'APPROVED', NULL, NULL, '2026-03-10 11:03:08.866', '2026-05-30 10:17:57.945'),
(21, 21, 1, NULL, 5, 'Sản phẩm tuyệt vời! Hương vị đúng chất đặc sản quê nhà, đóng gói kỹ, giao hàng nhanh. Gia đình rất thích, sẽ mua tiếp!', 'APPROVED', NULL, NULL, '2026-05-03 20:34:26.211', '2026-05-30 10:17:57.950'),
(22, 22, 1, NULL, 5, 'Chất lượng vượt mong đợi. Mùi thơm tự nhiên, không chất bảo quản. Đây là lần thứ 3 mình mua và lần nào cũng hài lòng.', 'APPROVED', NULL, NULL, '2026-05-23 07:07:53.061', '2026-05-30 10:17:57.954'),
(23, 23, 1, NULL, 4, 'Sản phẩm ngon, chất lượng tốt. Giao hàng đúng hẹn. Hộp đóng gói đẹp, phù hợp làm quà tặng. Sẽ giới thiệu cho bạn bè.', 'APPROVED', NULL, NULL, '2026-05-03 05:32:15.886', '2026-05-30 10:17:57.959'),
(24, 24, 1, NULL, 5, 'Đặt mua về làm quà cho người thân ở nước ngoài, ai cũng khen ngon. Hàng chính gốc, uy tín. Shop rất nhiệt tình tư vấn.', 'APPROVED', NULL, NULL, '2026-04-16 06:32:28.380', '2026-05-30 10:17:57.963'),
(25, 25, 1, NULL, 4, 'Ngon, giá hợp lý. Mình thích nhất là không có chất bảo quản, hoàn toàn tự nhiên. Đóng gói cẩn thận, không bị vỡ.', 'APPROVED', NULL, NULL, '2026-05-04 15:33:47.016', '2026-05-30 10:17:57.968'),
(26, 26, 1, NULL, 5, 'Mình mua nhiều lần rồi, chưa lần nào thất vọng. Sản phẩm đặc sản thật sự, khác hẳn hàng bình thường ngoài chợ.', 'APPROVED', NULL, NULL, '2026-05-16 07:32:04.716', '2026-05-30 10:17:57.973'),
(27, 27, 1, NULL, 5, 'Gia đình mình ở Mỹ, mỗi lần nhớ quê lại đặt ở đây. Hương vị đúng như ở Việt Nam, cảm ơn shop đã giữ được chất lượng!', 'APPROVED', NULL, NULL, '2026-03-17 18:43:21.369', '2026-05-30 10:17:57.978'),
(28, 28, 1, NULL, 4, 'Sản phẩm ngon, vận chuyển cẩn thận. Lần sau sẽ mua thêm số lượng lớn hơn để tiết kiệm ship.', 'APPROVED', NULL, NULL, '2026-04-01 21:23:01.050', '2026-05-30 10:17:57.982'),
(29, 29, 1, NULL, 5, 'Tuyệt vời! Đây là món quà hoàn hảo cho người Việt ở xa quê. Mùi hương, vị ngon, hấp dẫn. 5 sao không đủ để diễn tả!', 'APPROVED', NULL, NULL, '2026-03-13 05:37:40.060', '2026-05-30 10:17:57.986'),
(30, 30, 1, NULL, 3, 'Sản phẩm ổn, nhưng mình kỳ vọng ngon hơn chút. Đóng gói đẹp, giao hàng nhanh. Sẽ thử thêm sản phẩm khác của shop.', 'APPROVED', NULL, NULL, '2026-03-02 19:55:00.728', '2026-05-30 10:17:57.992'),
(31, 31, 1, NULL, 5, 'Sản phẩm tuyệt vời! Hương vị đúng chất đặc sản quê nhà, đóng gói kỹ, giao hàng nhanh. Gia đình rất thích, sẽ mua tiếp!', 'APPROVED', NULL, NULL, '2026-04-25 14:48:58.039', '2026-05-30 10:17:57.998'),
(32, 32, 1, NULL, 5, 'Chất lượng vượt mong đợi. Mùi thơm tự nhiên, không chất bảo quản. Đây là lần thứ 3 mình mua và lần nào cũng hài lòng.', 'APPROVED', NULL, NULL, '2026-03-08 11:37:11.676', '2026-05-30 10:17:58.004'),
(33, 33, 1, NULL, 4, 'Sản phẩm ngon, chất lượng tốt. Giao hàng đúng hẹn. Hộp đóng gói đẹp, phù hợp làm quà tặng. Sẽ giới thiệu cho bạn bè.', 'APPROVED', NULL, NULL, '2026-03-27 00:53:12.593', '2026-05-30 10:17:58.009'),
(34, 34, 1, NULL, 5, 'Đặt mua về làm quà cho người thân ở nước ngoài, ai cũng khen ngon. Hàng chính gốc, uy tín. Shop rất nhiệt tình tư vấn.', 'APPROVED', NULL, NULL, '2026-04-20 08:19:45.598', '2026-05-30 10:17:58.016'),
(35, 35, 1, NULL, 4, 'Ngon, giá hợp lý. Mình thích nhất là không có chất bảo quản, hoàn toàn tự nhiên. Đóng gói cẩn thận, không bị vỡ.', 'APPROVED', NULL, NULL, '2026-04-15 07:25:31.310', '2026-05-30 10:17:58.021'),
(36, 36, 1, NULL, 5, 'Mình mua nhiều lần rồi, chưa lần nào thất vọng. Sản phẩm đặc sản thật sự, khác hẳn hàng bình thường ngoài chợ.', 'APPROVED', NULL, NULL, '2026-04-03 17:50:27.029', '2026-05-30 10:17:58.028'),
(37, 37, 1, NULL, 5, 'Gia đình mình ở Mỹ, mỗi lần nhớ quê lại đặt ở đây. Hương vị đúng như ở Việt Nam, cảm ơn shop đã giữ được chất lượng!', 'APPROVED', NULL, NULL, '2026-03-21 00:21:49.956', '2026-05-30 10:17:58.033'),
(38, 38, 1, NULL, 4, 'Sản phẩm ngon, vận chuyển cẩn thận. Lần sau sẽ mua thêm số lượng lớn hơn để tiết kiệm ship.', 'APPROVED', NULL, NULL, '2026-05-04 03:46:18.979', '2026-05-30 10:17:58.037'),
(39, 39, 1, NULL, 5, 'Tuyệt vời! Đây là món quà hoàn hảo cho người Việt ở xa quê. Mùi hương, vị ngon, hấp dẫn. 5 sao không đủ để diễn tả!', 'APPROVED', NULL, NULL, '2026-05-08 21:57:21.176', '2026-05-30 10:17:58.042'),
(40, 40, 1, NULL, 3, 'Sản phẩm ổn, nhưng mình kỳ vọng ngon hơn chút. Đóng gói đẹp, giao hàng nhanh. Sẽ thử thêm sản phẩm khác của shop.', 'APPROVED', NULL, NULL, '2026-04-14 09:17:11.016', '2026-05-30 10:17:58.047'),
(41, 1, 2, 4, 5, 'Sản phẩm rất ngon, đóng gói hút chân không kỹ càng, sạch sẽ. Sẽ tiếp tục ủng hộ shop lâu dài!', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', '2026-05-31 14:42:45.151', '2026-05-27 22:32:40.475', '2026-05-31 14:42:45.152'),
(42, 2, 3, 7, 5, 'Cá khô ăn vừa miệng, không bị quá mặn như mua ở chợ. Giao hàng nhanh tại Texas mất đúng 3 ngày.', 'APPROVED', NULL, '2026-06-04 08:21:41.510', '2026-05-24 15:45:46.991', '2026-06-04 08:21:41.512'),
(43, 3, 4, 9, 4, 'Tôm khô con to, đỏ tự nhiên, làm gỏi xoài hay nấu canh đều ngọt nước. Rất đáng tiền.', 'PENDING', NULL, NULL, '2026-05-24 02:54:59.801', '2026-05-31 14:42:45.157'),
(44, 4, 5, 10, 5, 'Xoài sấy dẻo ngọt thanh, thơm tự nhiên, không bị xơ. Mấy bé nhà mình thích lắm.', 'APPROVED', NULL, '2026-05-31 14:46:07.657', '2026-05-26 19:27:58.561', '2026-05-31 14:46:07.658'),
(45, 5, 6, 11, 5, 'Chất lượng ổn nhưng phí ship hơi cao nếu mua ít, hy vọng shop có thêm nhiều mã freeship.', 'APPROVED', NULL, '2026-05-31 14:42:45.157', '2026-05-26 11:06:54.066', '2026-05-31 14:42:45.158'),
(46, 6, 7, 13, 4, 'Sản phẩm rất ngon, đóng gói hút chân không kỹ càng, sạch sẽ. Sẽ tiếp tục ủng hộ shop lâu dài!', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', NULL, '2026-05-28 17:13:34.495', '2026-05-31 14:42:45.159'),
(47, 7, 8, 16, 4, 'Cá khô ăn vừa miệng, không bị quá mặn như mua ở chợ. Giao hàng nhanh tại Texas mất đúng 3 ngày.', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', '2026-05-31 14:42:45.159', '2026-05-30 16:46:42.118', '2026-05-31 14:42:45.160'),
(48, 8, 9, 19, 4, 'Tôm khô con to, đỏ tự nhiên, làm gỏi xoài hay nấu canh đều ngọt nước. Rất đáng tiền.', 'APPROVED', NULL, NULL, '2026-05-29 18:46:46.431', '2026-05-31 14:42:45.161'),
(49, 9, 10, 20, 5, 'Xoài sấy dẻo ngọt thanh, thơm tự nhiên, không bị xơ. Mấy bé nhà mình thích lắm.', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', NULL, '2026-05-26 14:07:40.871', '2026-05-31 14:42:45.161'),
(50, 10, 11, 21, 4, 'Chất lượng ổn nhưng phí ship hơi cao nếu mua ít, hy vọng shop có thêm nhiều mã freeship.', 'PENDING', NULL, NULL, '2026-05-23 17:38:29.711', '2026-05-31 14:42:45.163'),
(51, 11, 12, NULL, 4, 'Sản phẩm rất ngon, đóng gói hút chân không kỹ càng, sạch sẽ. Sẽ tiếp tục ủng hộ shop lâu dài!', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', '2026-05-31 14:42:45.163', '2026-05-30 10:16:48.193', '2026-05-31 14:42:45.164'),
(52, 12, 13, NULL, 4, 'Cá khô ăn vừa miệng, không bị quá mặn như mua ở chợ. Giao hàng nhanh tại Texas mất đúng 3 ngày.', 'APPROVED', NULL, '2026-05-31 14:55:06.636', '2026-05-25 11:51:41.806', '2026-05-31 14:55:06.638'),
(53, 13, 14, NULL, 5, 'Tôm khô con to, đỏ tự nhiên, làm gỏi xoài hay nấu canh đều ngọt nước. Rất đáng tiền.', 'APPROVED', NULL, '2026-05-31 14:42:45.165', '2026-05-30 07:18:42.696', '2026-05-31 14:42:45.166'),
(54, 14, 15, NULL, 4, 'Xoài sấy dẻo ngọt thanh, thơm tự nhiên, không bị xơ. Mấy bé nhà mình thích lắm.', 'APPROVED', NULL, '2026-05-31 14:42:45.166', '2026-05-28 15:25:54.551', '2026-05-31 14:42:45.167'),
(55, 15, 16, NULL, 4, 'Chất lượng ổn nhưng phí ship hơi cao nếu mua ít, hy vọng shop có thêm nhiều mã freeship.', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', '2026-05-31 14:42:45.166', '2026-05-30 15:37:39.298', '2026-05-31 14:42:45.167'),
(56, 16, 17, NULL, 4, 'Sản phẩm rất ngon, đóng gói hút chân không kỹ càng, sạch sẽ. Sẽ tiếp tục ủng hộ shop lâu dài!', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', '2026-05-31 14:42:45.167', '2026-05-26 22:33:32.692', '2026-05-31 14:42:45.168'),
(57, 17, 18, NULL, 5, 'Cá khô ăn vừa miệng, không bị quá mặn như mua ở chợ. Giao hàng nhanh tại Texas mất đúng 3 ngày.', 'APPROVED', NULL, NULL, '2026-05-31 01:54:00.541', '2026-05-31 14:42:45.169'),
(58, 18, 19, NULL, 4, 'Tôm khô con to, đỏ tự nhiên, làm gỏi xoài hay nấu canh đều ngọt nước. Rất đáng tiền.', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', '2026-05-31 14:42:45.170', '2026-05-31 13:06:41.922', '2026-05-31 14:42:45.171'),
(59, 19, 20, NULL, 5, 'Xoài sấy dẻo ngọt thanh, thơm tự nhiên, không bị xơ. Mấy bé nhà mình thích lắm.', 'APPROVED', NULL, '2026-06-03 04:51:32.453', '2026-05-25 03:52:18.277', '2026-06-03 04:51:32.458'),
(60, 20, 21, NULL, 4, 'Chất lượng ổn nhưng phí ship hơi cao nếu mua ít, hy vọng shop có thêm nhiều mã freeship.', 'APPROVED', 'Cảm ơn quý khách đã tin tưởng và ủng hộ đặc sản của LIKEFOOD ạ! Chúc quý khách và gia đình ngon miệng!', '2026-05-31 14:42:45.171', '2026-05-28 08:04:47.786', '2026-05-31 14:42:45.172'),
(61, 29, 22, 58, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.588', '2026-06-02 12:18:38.588'),
(62, 30, 22, 64, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.609', '2026-06-02 12:18:38.609'),
(63, 3, 22, 65, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.610', '2026-06-02 12:18:38.610'),
(64, 11, 24, 73, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.628', '2026-06-02 12:18:38.628'),
(65, 13, 24, 74, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.630', '2026-06-02 12:18:38.630'),
(66, 36, 24, 78, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.642', '2026-06-02 12:18:38.642'),
(67, 14, 28, 104, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.695', '2026-06-02 12:18:38.695'),
(68, 24, 29, 108, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.712', '2026-06-02 12:18:38.712'),
(69, 24, 29, 109, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.713', '2026-06-02 12:18:38.713'),
(70, 3, 32, 119, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.736', '2026-06-02 12:18:38.736'),
(71, 25, 33, 126, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.747', '2026-06-02 12:18:38.747'),
(72, 34, 33, 131, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.763', '2026-06-02 12:18:38.763'),
(73, 9, 34, 137, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.782', '2026-06-02 12:18:38.782'),
(74, 33, 35, 140, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.789', '2026-06-02 12:18:38.789'),
(75, 35, 35, 143, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.796', '2026-06-02 12:18:38.796'),
(76, 39, 35, 144, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.803', '2026-06-02 12:18:38.803'),
(77, 35, 35, 145, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.804', '2026-06-02 12:18:38.804'),
(78, 17, 36, 150, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.819', '2026-06-02 12:18:38.819'),
(79, 16, 38, 161, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.838', '2026-06-02 12:18:38.838'),
(80, 47, 38, 164, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.840', '2026-06-02 12:18:38.840'),
(81, 6, 40, 173, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.858', '2026-06-02 12:18:38.858'),
(82, 48, 40, 174, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.860', '2026-06-02 12:18:38.860'),
(83, 21, 40, 176, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.871', '2026-06-02 12:18:38.871'),
(84, 19, 40, 179, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.872', '2026-06-02 12:18:38.872'),
(85, 44, 41, 189, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.899', '2026-06-02 12:18:38.899'),
(86, 36, 41, 190, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.900', '2026-06-02 12:18:38.900'),
(87, 41, 41, 192, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.902', '2026-06-02 12:18:38.902'),
(88, 24, 42, 194, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.908', '2026-06-02 12:18:38.908'),
(89, 47, 42, 195, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.909', '2026-06-02 12:18:38.909'),
(90, 26, 42, 203, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.928', '2026-06-02 12:18:38.928'),
(91, 17, 43, 214, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.948', '2026-06-02 12:18:38.948'),
(92, 3, 45, 233, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.992', '2026-06-02 12:18:38.992'),
(93, 3, 45, 235, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.994', '2026-06-02 12:18:38.994'),
(94, 10, 45, 236, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:38.995', '2026-06-02 12:18:38.995'),
(95, 19, 45, 237, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.003', '2026-06-02 12:18:39.003'),
(96, 20, 45, 240, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.005', '2026-06-02 12:18:39.005'),
(97, 26, 45, 243, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.014', '2026-06-02 12:18:39.014'),
(98, 35, 45, 244, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.023', '2026-06-02 12:18:39.023'),
(99, 22, 45, 245, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.026', '2026-06-02 12:18:39.026'),
(100, 47, 45, 246, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.027', '2026-06-02 12:18:39.027'),
(101, 27, 45, 247, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.028', '2026-06-02 12:18:39.028'),
(102, 39, 46, 248, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.037', '2026-06-02 12:18:39.037'),
(103, 5, 46, 249, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.039', '2026-06-02 12:18:39.039'),
(104, 24, 47, 258, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.061', '2026-06-02 12:18:39.061'),
(105, 30, 47, 259, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.062', '2026-06-02 12:18:39.062'),
(106, 42, 47, 260, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.063', '2026-06-02 12:18:39.063'),
(107, 48, 49, 266, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.087', '2026-06-02 12:18:39.087'),
(108, 37, 49, 268, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.094', '2026-06-02 12:18:39.094'),
(109, 32, 49, 270, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.096', '2026-06-02 12:18:39.096'),
(110, 50, 50, 274, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.106', '2026-06-02 12:18:39.106'),
(111, 40, 52, 283, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.131', '2026-06-02 12:18:39.131'),
(112, 50, 52, 284, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.133', '2026-06-02 12:18:39.133'),
(113, 35, 53, 293, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.152', '2026-06-02 12:18:39.152'),
(114, 33, 53, 294, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.154', '2026-06-02 12:18:39.154'),
(115, 26, 53, 302, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.175', '2026-06-02 12:18:39.175'),
(116, 11, 53, 303, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.177', '2026-06-02 12:18:39.177'),
(117, 33, 55, 329, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.220', '2026-06-02 12:18:39.220'),
(118, 7, 55, 330, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.222', '2026-06-02 12:18:39.222'),
(119, 17, 56, 336, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.243', '2026-06-02 12:18:39.243'),
(120, 2, 56, 338, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.245', '2026-06-02 12:18:39.245'),
(121, 30, 56, 341, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.258', '2026-06-02 12:18:39.258'),
(122, 34, 56, 342, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.260', '2026-06-02 12:18:39.260'),
(123, 13, 57, 347, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.278', '2026-06-02 12:18:39.278'),
(124, 9, 57, 348, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.280', '2026-06-02 12:18:39.280'),
(125, 44, 57, 354, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.297', '2026-06-02 12:18:39.297'),
(126, 41, 58, 359, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.312', '2026-06-02 12:18:39.312'),
(127, 47, 58, 360, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.314', '2026-06-02 12:18:39.314'),
(128, 41, 58, 362, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.325', '2026-06-02 12:18:39.325'),
(129, 37, 59, 366, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.339', '2026-06-02 12:18:39.339'),
(130, 23, 60, 369, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.347', '2026-06-02 12:18:39.347'),
(131, 28, 61, 373, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.366', '2026-06-02 12:18:39.366'),
(132, 33, 61, 374, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.367', '2026-06-02 12:18:39.367'),
(133, 34, 61, 375, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.382', '2026-06-02 12:18:39.382'),
(134, 40, 61, 377, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.384', '2026-06-02 12:18:39.384'),
(135, 25, 61, 378, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.387', '2026-06-02 12:18:39.387'),
(136, 41, 62, 388, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.416', '2026-06-02 12:18:39.416'),
(137, 45, 62, 389, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.418', '2026-06-02 12:18:39.418'),
(138, 11, 64, 401, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.461', '2026-06-02 12:18:39.461'),
(139, 47, 65, 407, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.486', '2026-06-02 12:18:39.486'),
(140, 12, 65, 409, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.499', '2026-06-02 12:18:39.499'),
(141, 47, 65, 411, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.501', '2026-06-02 12:18:39.501'),
(142, 5, 68, 421, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.533', '2026-06-02 12:18:39.533'),
(143, 6, 68, 422, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.544', '2026-06-02 12:18:39.544'),
(144, 17, 69, 438, 4, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.594', '2026-06-02 12:18:39.594'),
(145, 29, 69, 440, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.596', '2026-06-02 12:18:39.596'),
(146, 45, 70, 442, 5, 'Sản phẩm rất tuyệt vời, tôi rất thích!', 'APPROVED', NULL, NULL, '2026-06-02 12:18:39.608', '2026-06-02 12:18:39.608');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_san_pham`
--

CREATE TABLE `danh_muc_san_pham` (
  `ma_danh_muc` int(11) NOT NULL,
  `ten_danh_muc` varchar(191) NOT NULL,
  `ten_danh_muc_en` varchar(191) DEFAULT NULL,
  `duong_dan_tinh` varchar(191) NOT NULL,
  `mo_ta` text DEFAULT NULL,
  `mo_ta_en` text DEFAULT NULL,
  `duong_dan_anh` varchar(512) DEFAULT NULL,
  `ma_danh_muc_cha` int(11) DEFAULT NULL,
  `vi_tri_hien_thi` int(11) NOT NULL DEFAULT 0,
  `hien_thi` tinyint(1) NOT NULL DEFAULT 1,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_san_pham`
--

INSERT INTO `danh_muc_san_pham` (`ma_danh_muc`, `ten_danh_muc`, `ten_danh_muc_en`, `duong_dan_tinh`, `mo_ta`, `mo_ta_en`, `duong_dan_anh`, `ma_danh_muc_cha`, `vi_tri_hien_thi`, `hien_thi`, `dang_hoat_dong`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Cá khô', NULL, 'ca-kho', NULL, NULL, NULL, NULL, 1, 1, 1, '2026-05-28 13:54:17.180', '2026-05-28 13:54:17.180'),
(2, 'Tôm & Mực khô', NULL, 'tom-muc-kho', NULL, NULL, NULL, NULL, 2, 1, 1, '2026-05-28 13:54:17.188', '2026-05-28 13:54:17.188'),
(3, 'Trái cây sấy', NULL, 'trai-cay-say', NULL, NULL, NULL, NULL, 3, 1, 1, '2026-05-28 13:54:17.200', '2026-05-28 13:54:17.200'),
(4, 'Trà & Bánh mứt', NULL, 'tra-banh-mut', NULL, NULL, NULL, NULL, 4, 1, 1, '2026-05-28 13:54:17.205', '2026-05-28 13:54:17.205'),
(5, 'Gia vị Việt', NULL, 'gia-vi-viet', NULL, NULL, NULL, NULL, 5, 1, 1, '2026-05-28 13:54:17.210', '2026-05-28 13:54:17.210'),
(6, 'Gạo & Nông sản', NULL, 'gao-nong-san', NULL, NULL, NULL, NULL, 6, 1, 1, '2026-05-28 14:37:39.949', '2026-05-28 14:37:39.949'),
(7, 'Đồ uống', NULL, 'do-uong', NULL, NULL, NULL, NULL, 7, 1, 1, '2026-05-28 14:37:39.956', '2026-05-28 14:37:39.956'),
(8, 'Đặc sản vùng miền', NULL, 'dac-san-vung-mien', NULL, NULL, NULL, NULL, 8, 1, 1, '2026-05-28 14:37:39.968', '2026-05-28 14:37:39.968'),
(9, 'Đồ ăn vặt', 'Snacks', 'do-an-vat', 'Bánh kẹo, đồ ăn vặt Việt Nam', 'Vietnamese snacks and candies', '/doanvat.jpeg', NULL, 6, 1, 1, '2026-05-30 09:21:11.730', '2026-05-30 09:21:11.730');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_sach_yeu_thich`
--

CREATE TABLE `danh_sach_yeu_thich` (
  `ma_yeu_thich` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_sach_yeu_thich`
--

INSERT INTO `danh_sach_yeu_thich` (`ma_yeu_thich`, `ma_nguoi_dung`, `ma_san_pham`, `ngay_tao`) VALUES
(1, 2, 3, '2026-05-28 13:15:51.226'),
(2, 3, 6, '2026-05-30 23:51:29.781'),
(3, 4, 9, '2026-05-07 21:23:44.222'),
(4, 5, 12, '2026-05-04 21:41:59.121'),
(5, 6, 15, '2026-05-01 19:52:17.975'),
(6, 7, 18, '2026-05-22 06:47:43.254'),
(7, 8, 21, '2026-05-02 02:48:20.565'),
(8, 9, 24, '2026-05-11 03:46:32.711'),
(9, 10, 27, '2026-05-15 04:22:30.452'),
(10, 11, 30, '2026-05-12 02:49:24.565'),
(11, 12, 33, '2026-05-19 13:54:01.443'),
(12, 13, 36, '2026-05-22 10:04:13.654'),
(13, 14, 39, '2026-05-15 19:08:04.824'),
(14, 15, 42, '2026-05-29 00:23:21.638'),
(15, 16, 45, '2026-05-02 03:27:24.854'),
(16, 17, 48, '2026-05-17 07:33:33.930'),
(17, 18, 51, '2026-05-04 07:17:15.869'),
(18, 19, 54, '2026-05-06 15:39:44.576'),
(19, 20, 57, '2026-05-26 14:25:22.250'),
(20, 21, 60, '2026-05-19 18:00:42.011'),
(21, 2, 63, '2026-05-31 05:55:50.399'),
(22, 3, 66, '2026-05-17 14:14:04.602'),
(23, 4, 69, '2026-05-28 22:44:10.034'),
(24, 5, 72, '2026-05-24 17:27:46.307'),
(25, 6, 75, '2026-05-11 13:40:57.224'),
(26, 22, 28, '2026-06-02 12:18:38.014'),
(27, 22, 50, '2026-06-02 12:18:38.017'),
(28, 22, 2, '2026-06-02 12:18:38.018'),
(29, 22, 33, '2026-06-02 12:18:38.020'),
(30, 22, 40, '2026-06-02 12:18:38.022'),
(31, 23, 31, '2026-06-02 12:18:38.036'),
(32, 24, 20, '2026-06-02 12:18:38.045'),
(33, 25, 7, '2026-06-02 12:18:38.055'),
(34, 25, 41, '2026-06-02 12:18:38.056'),
(35, 25, 14, '2026-06-02 12:18:38.058'),
(36, 25, 34, '2026-06-02 12:18:38.059'),
(37, 26, 13, '2026-06-02 12:18:38.067'),
(38, 26, 2, '2026-06-02 12:18:38.069'),
(39, 26, 37, '2026-06-02 12:18:38.070'),
(40, 27, 36, '2026-06-02 12:18:38.078'),
(41, 27, 12, '2026-06-02 12:18:38.080'),
(42, 27, 16, '2026-06-02 12:18:38.081'),
(43, 27, 6, '2026-06-02 12:18:38.083'),
(44, 27, 41, '2026-06-02 12:18:38.085'),
(45, 28, 11, '2026-06-02 12:18:38.093'),
(46, 28, 15, '2026-06-02 12:18:38.094'),
(47, 29, 19, '2026-06-02 12:18:38.102'),
(48, 30, 7, '2026-06-02 12:18:38.109'),
(49, 30, 46, '2026-06-02 12:18:38.110'),
(50, 30, 14, '2026-06-02 12:18:38.111'),
(51, 31, 10, '2026-06-02 12:18:38.118'),
(52, 31, 21, '2026-06-02 12:18:38.119'),
(53, 31, 1, '2026-06-02 12:18:38.121'),
(54, 32, 32, '2026-06-02 12:18:38.129'),
(55, 32, 42, '2026-06-02 12:18:38.130'),
(56, 33, 25, '2026-06-02 12:18:38.138'),
(57, 33, 6, '2026-06-02 12:18:38.140'),
(58, 33, 2, '2026-06-02 12:18:38.142'),
(59, 33, 12, '2026-06-02 12:18:38.143'),
(60, 33, 18, '2026-06-02 12:18:38.144'),
(61, 34, 22, '2026-06-02 12:18:38.151'),
(62, 34, 3, '2026-06-02 12:18:38.152'),
(63, 35, 27, '2026-06-02 12:18:38.159'),
(64, 35, 28, '2026-06-02 12:18:38.160'),
(65, 35, 5, '2026-06-02 12:18:38.162'),
(66, 35, 49, '2026-06-02 12:18:38.164'),
(67, 35, 4, '2026-06-02 12:18:38.165'),
(68, 36, 5, '2026-06-02 12:18:38.171'),
(69, 36, 23, '2026-06-02 12:18:38.173'),
(70, 37, 6, '2026-06-02 12:18:38.179'),
(71, 37, 39, '2026-06-02 12:18:38.180'),
(72, 37, 8, '2026-06-02 12:18:38.182'),
(73, 37, 50, '2026-06-02 12:18:38.183'),
(74, 37, 45, '2026-06-02 12:18:38.184'),
(75, 38, 43, '2026-06-02 12:18:38.192'),
(76, 38, 11, '2026-06-02 12:18:38.193'),
(77, 39, 17, '2026-06-02 12:18:38.199'),
(78, 39, 20, '2026-06-02 12:18:38.201'),
(79, 39, 1, '2026-06-02 12:18:38.202'),
(80, 39, 19, '2026-06-02 12:18:38.203'),
(81, 40, 10, '2026-06-02 12:18:38.209'),
(82, 40, 11, '2026-06-02 12:18:38.211'),
(83, 40, 44, '2026-06-02 12:18:38.212'),
(84, 40, 46, '2026-06-02 12:18:38.213'),
(85, 40, 4, '2026-06-02 12:18:38.214'),
(86, 41, 6, '2026-06-02 12:18:38.220'),
(87, 41, 18, '2026-06-02 12:18:38.221'),
(88, 41, 21, '2026-06-02 12:18:38.222'),
(89, 42, 49, '2026-06-02 12:18:38.228'),
(90, 43, 25, '2026-06-02 12:18:38.235'),
(91, 43, 26, '2026-06-02 12:18:38.236'),
(92, 43, 40, '2026-06-02 12:18:38.237'),
(93, 44, 22, '2026-06-02 12:18:38.244'),
(94, 44, 48, '2026-06-02 12:18:38.246'),
(95, 44, 32, '2026-06-02 12:18:38.247'),
(96, 44, 42, '2026-06-02 12:18:38.248'),
(97, 45, 15, '2026-06-02 12:18:38.254'),
(98, 45, 7, '2026-06-02 12:18:38.255'),
(99, 45, 39, '2026-06-02 12:18:38.256'),
(100, 45, 1, '2026-06-02 12:18:38.257'),
(101, 45, 2, '2026-06-02 12:18:38.259'),
(102, 46, 16, '2026-06-02 12:18:38.266'),
(103, 46, 4, '2026-06-02 12:18:38.268'),
(104, 46, 22, '2026-06-02 12:18:38.270'),
(105, 46, 25, '2026-06-02 12:18:38.272'),
(106, 47, 15, '2026-06-02 12:18:38.282'),
(107, 48, 35, '2026-06-02 12:18:38.289'),
(108, 48, 3, '2026-06-02 12:18:38.291'),
(109, 48, 6, '2026-06-02 12:18:38.293'),
(110, 48, 2, '2026-06-02 12:18:38.295'),
(111, 49, 34, '2026-06-02 12:18:38.304'),
(112, 49, 31, '2026-06-02 12:18:38.308'),
(113, 49, 20, '2026-06-02 12:18:38.310'),
(114, 50, 18, '2026-06-02 12:18:38.319'),
(115, 50, 23, '2026-06-02 12:18:38.321'),
(116, 51, 26, '2026-06-02 12:18:38.330'),
(117, 52, 3, '2026-06-02 12:18:38.339'),
(118, 52, 27, '2026-06-02 12:18:38.341'),
(119, 53, 13, '2026-06-02 12:18:38.353'),
(120, 53, 10, '2026-06-02 12:18:38.355'),
(121, 53, 47, '2026-06-02 12:18:38.357'),
(122, 53, 1, '2026-06-02 12:18:38.361'),
(123, 54, 48, '2026-06-02 12:18:38.372'),
(124, 54, 6, '2026-06-02 12:18:38.374'),
(125, 54, 50, '2026-06-02 12:18:38.376'),
(126, 54, 14, '2026-06-02 12:18:38.378'),
(127, 54, 21, '2026-06-02 12:18:38.380'),
(128, 55, 22, '2026-06-02 12:18:38.389'),
(129, 56, 10, '2026-06-02 12:18:38.399'),
(130, 56, 1, '2026-06-02 12:18:38.401'),
(131, 56, 40, '2026-06-02 12:18:38.403'),
(132, 57, 1, '2026-06-02 12:18:38.412'),
(133, 58, 1, '2026-06-02 12:18:38.421'),
(134, 58, 16, '2026-06-02 12:18:38.423'),
(135, 59, 13, '2026-06-02 12:18:38.430'),
(136, 59, 36, '2026-06-02 12:18:38.432'),
(137, 59, 4, '2026-06-02 12:18:38.434'),
(138, 59, 28, '2026-06-02 12:18:38.436'),
(139, 60, 14, '2026-06-02 12:18:38.444'),
(140, 60, 42, '2026-06-02 12:18:38.445'),
(141, 60, 3, '2026-06-02 12:18:38.447'),
(142, 61, 49, '2026-06-02 12:18:38.456'),
(143, 62, 29, '2026-06-02 12:18:38.465'),
(144, 62, 32, '2026-06-02 12:18:38.466'),
(145, 62, 40, '2026-06-02 12:18:38.468'),
(146, 63, 4, '2026-06-02 12:18:38.477'),
(147, 63, 3, '2026-06-02 12:18:38.479'),
(148, 63, 24, '2026-06-02 12:18:38.481'),
(149, 64, 29, '2026-06-02 12:18:38.491'),
(150, 65, 44, '2026-06-02 12:18:38.500'),
(151, 65, 26, '2026-06-02 12:18:38.502'),
(152, 66, 48, '2026-06-02 12:18:38.510'),
(153, 66, 23, '2026-06-02 12:18:38.511'),
(154, 66, 49, '2026-06-02 12:18:38.513'),
(155, 67, 11, '2026-06-02 12:18:38.521'),
(156, 68, 45, '2026-06-02 12:18:38.531'),
(157, 68, 20, '2026-06-02 12:18:38.533'),
(158, 68, 46, '2026-06-02 12:18:38.534'),
(159, 69, 33, '2026-06-02 12:18:38.541'),
(160, 69, 2, '2026-06-02 12:18:38.543'),
(161, 70, 6, '2026-06-02 12:18:38.551'),
(162, 70, 44, '2026-06-02 12:18:38.552'),
(163, 70, 13, '2026-06-02 12:18:38.553'),
(164, 71, 1, '2026-06-02 12:18:38.560'),
(165, 71, 23, '2026-06-02 12:18:38.561'),
(166, 71, 46, '2026-06-02 12:18:38.562'),
(167, 71, 5, '2026-06-02 12:18:38.563'),
(168, 1, 115, '2026-06-03 04:45:57.211');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dia_chi_giao_hang`
--

CREATE TABLE `dia_chi_giao_hang` (
  `ma_dia_chi` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ho_ten_nguoi_nhan` varchar(191) NOT NULL,
  `so_dien_thoai_nguoi_nhan` varchar(191) NOT NULL,
  `dia_chi_chi_tiet` varchar(191) NOT NULL,
  `thanh_pho` varchar(191) NOT NULL,
  `tinh_thanh` varchar(191) DEFAULT NULL,
  `ma_buu_dien` varchar(191) NOT NULL,
  `quoc_gia` varchar(191) NOT NULL DEFAULT 'Việt Nam',
  `la_mac_dinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dia_chi_giao_hang`
--

INSERT INTO `dia_chi_giao_hang` (`ma_dia_chi`, `ma_nguoi_dung`, `ho_ten_nguoi_nhan`, `so_dien_thoai_nguoi_nhan`, `dia_chi_chi_tiet`, `thanh_pho`, `tinh_thanh`, `ma_buu_dien`, `quoc_gia`, `la_mac_dinh`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, 'Vũ Trần Quốc', 'enc:v1:f0e1c7f8f062370da9018521:bad0b3fba8ee4cee78ec5da22946bb3c:3de0b931de82faa7dffc', 'enc:v1:df6064a50641dc1f6e5d8da2:40806a7258612987dcbea996a83e6015:304d5c8243140a01a8f41a24977b212521d7', 'ádgfsdfvb', 'ádgasdef', '70000', 'USA', 1, '2026-05-31 09:05:45.983', '2026-05-31 09:05:45.983'),
(2, 22, 'Khách Hàng Lớn 1', '0902599018', '266 Đường Đại Lộ, Quận 8', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.006', '2026-06-02 12:18:38.006'),
(3, 23, 'Khách Hàng Lớn 2', '0905059471', '929 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.032', '2026-06-02 12:18:38.032'),
(4, 24, 'Khách Hàng Lớn 3', '0906926559', '137 Đường Đại Lộ, Quận 0', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.041', '2026-06-02 12:18:38.041'),
(5, 25, 'Khách Hàng Lớn 4', '0905414233', '957 Đường Đại Lộ, Quận 0', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.050', '2026-06-02 12:18:38.050'),
(6, 26, 'Khách Hàng Lớn 5', '0909432989', '234 Đường Đại Lộ, Quận 3', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.064', '2026-06-02 12:18:38.064'),
(7, 27, 'Khách Hàng Lớn 6', '0904211377', '37 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.075', '2026-06-02 12:18:38.075'),
(8, 28, 'Khách Hàng Lớn 7', '0902061449', '971 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.089', '2026-06-02 12:18:38.089'),
(9, 29, 'Khách Hàng Lớn 8', '0906850296', '774 Đường Đại Lộ, Quận 0', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.098', '2026-06-02 12:18:38.098'),
(10, 30, 'Khách Hàng Lớn 9', '0908311801', '17 Đường Đại Lộ, Quận 2', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.106', '2026-06-02 12:18:38.106'),
(11, 31, 'Khách Hàng Lớn 10', '0903274033', '141 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.116', '2026-06-02 12:18:38.116'),
(12, 32, 'Khách Hàng Lớn 11', '0902322731', '716 Đường Đại Lộ, Quận 2', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.126', '2026-06-02 12:18:38.126'),
(13, 33, 'Khách Hàng Lớn 12', '0902653665', '287 Đường Đại Lộ, Quận 3', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.136', '2026-06-02 12:18:38.136'),
(14, 34, 'Khách Hàng Lớn 13', '0903669808', '318 Đường Đại Lộ, Quận 2', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.148', '2026-06-02 12:18:38.148'),
(15, 35, 'Khách Hàng Lớn 14', '0909435113', '54 Đường Đại Lộ, Quận 9', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.156', '2026-06-02 12:18:38.156'),
(16, 36, 'Khách Hàng Lớn 15', '0906205267', '401 Đường Đại Lộ, Quận 7', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.169', '2026-06-02 12:18:38.169'),
(17, 37, 'Khách Hàng Lớn 16', '0906239057', '402 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.177', '2026-06-02 12:18:38.177'),
(18, 38, 'Khách Hàng Lớn 17', '0904586636', '420 Đường Đại Lộ, Quận 0', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.188', '2026-06-02 12:18:38.188'),
(19, 39, 'Khách Hàng Lớn 18', '0907263515', '377 Đường Đại Lộ, Quận 7', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.197', '2026-06-02 12:18:38.197'),
(20, 40, 'Khách Hàng Lớn 19', '0901371064', '833 Đường Đại Lộ, Quận 7', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.207', '2026-06-02 12:18:38.207'),
(21, 41, 'Khách Hàng Lớn 20', '0901752850', '561 Đường Đại Lộ, Quận 3', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.218', '2026-06-02 12:18:38.218'),
(22, 42, 'Khách Hàng Lớn 21', '0904168217', '819 Đường Đại Lộ, Quận 4', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.226', '2026-06-02 12:18:38.226'),
(23, 43, 'Khách Hàng Lớn 22', '0905944033', '547 Đường Đại Lộ, Quận 9', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.232', '2026-06-02 12:18:38.232'),
(24, 44, 'Khách Hàng Lớn 23', '0903607005', '955 Đường Đại Lộ, Quận 3', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.241', '2026-06-02 12:18:38.241'),
(25, 45, 'Khách Hàng Lớn 24', '0907856387', '353 Đường Đại Lộ, Quận 0', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.252', '2026-06-02 12:18:38.252'),
(26, 46, 'Khách Hàng Lớn 25', '0901296129', '36 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.263', '2026-06-02 12:18:38.263'),
(27, 47, 'Khách Hàng Lớn 26', '0903493725', '788 Đường Đại Lộ, Quận 9', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.277', '2026-06-02 12:18:38.277'),
(28, 48, 'Khách Hàng Lớn 27', '0904905334', '877 Đường Đại Lộ, Quận 4', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.286', '2026-06-02 12:18:38.286'),
(29, 49, 'Khách Hàng Lớn 28', '0908152815', '745 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.300', '2026-06-02 12:18:38.300'),
(30, 50, 'Khách Hàng Lớn 29', '0905987147', '845 Đường Đại Lộ, Quận 7', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.316', '2026-06-02 12:18:38.316'),
(31, 51, 'Khách Hàng Lớn 30', '0901911101', '954 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.326', '2026-06-02 12:18:38.326'),
(32, 52, 'Khách Hàng Lớn 31', '0901712641', '493 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.336', '2026-06-02 12:18:38.336'),
(33, 53, 'Khách Hàng Lớn 32', '0907825656', '534 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.348', '2026-06-02 12:18:38.348'),
(34, 54, 'Khách Hàng Lớn 33', '0904241864', '628 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.368', '2026-06-02 12:18:38.368'),
(35, 55, 'Khách Hàng Lớn 34', '0907520340', '884 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.385', '2026-06-02 12:18:38.385'),
(36, 56, 'Khách Hàng Lớn 35', '0901277776', '164 Đường Đại Lộ, Quận 7', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.395', '2026-06-02 12:18:38.395'),
(37, 57, 'Khách Hàng Lớn 36', '0903861556', '820 Đường Đại Lộ, Quận 6', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.408', '2026-06-02 12:18:38.408'),
(38, 58, 'Khách Hàng Lớn 37', '0909406567', '498 Đường Đại Lộ, Quận 2', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.417', '2026-06-02 12:18:38.417'),
(39, 59, 'Khách Hàng Lớn 38', '0901273408', '195 Đường Đại Lộ, Quận 7', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.428', '2026-06-02 12:18:38.428'),
(40, 60, 'Khách Hàng Lớn 39', '0909660630', '48 Đường Đại Lộ, Quận 8', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.441', '2026-06-02 12:18:38.441'),
(41, 61, 'Khách Hàng Lớn 40', '0906799174', '754 Đường Đại Lộ, Quận 5', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.452', '2026-06-02 12:18:38.452'),
(42, 62, 'Khách Hàng Lớn 41', '0908066321', '749 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.461', '2026-06-02 12:18:38.461'),
(43, 63, 'Khách Hàng Lớn 42', '0907242586', '924 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.474', '2026-06-02 12:18:38.474'),
(44, 64, 'Khách Hàng Lớn 43', '0902431435', '840 Đường Đại Lộ, Quận 4', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.487', '2026-06-02 12:18:38.487'),
(45, 65, 'Khách Hàng Lớn 44', '0907048753', '105 Đường Đại Lộ, Quận 2', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.497', '2026-06-02 12:18:38.497'),
(46, 66, 'Khách Hàng Lớn 45', '0909888239', '842 Đường Đại Lộ, Quận 9', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.506', '2026-06-02 12:18:38.506'),
(47, 67, 'Khách Hàng Lớn 46', '0904989714', '951 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.517', '2026-06-02 12:18:38.517'),
(48, 68, 'Khách Hàng Lớn 47', '0908869984', '74 Đường Đại Lộ, Quận 4', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.527', '2026-06-02 12:18:38.527'),
(49, 69, 'Khách Hàng Lớn 48', '0907290287', '267 Đường Đại Lộ, Quận 2', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.539', '2026-06-02 12:18:38.539'),
(50, 70, 'Khách Hàng Lớn 49', '0902224377', '980 Đường Đại Lộ, Quận 4', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.547', '2026-06-02 12:18:38.547'),
(51, 71, 'Khách Hàng Lớn 50', '0904174085', '661 Đường Đại Lộ, Quận 1', 'TP. Hồ Chí Minh', NULL, '700000', 'Việt Nam', 1, '2026-06-02 12:18:38.557', '2026-06-02 12:18:38.557');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `ma_don_hang` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `trang_thai` varchar(191) NOT NULL DEFAULT 'PENDING',
  `tam_tinh` double NOT NULL DEFAULT 0,
  `phi_van_chuyen` double NOT NULL DEFAULT 0,
  `giam_gia` double NOT NULL DEFAULT 0,
  `tong_tien` double NOT NULL,
  `ma_phieu_giam_gia` int(11) DEFAULT NULL,
  `ma_code_giam_gia` varchar(191) DEFAULT NULL,
  `dia_chi_giao_hang` varchar(191) DEFAULT NULL,
  `thanh_pho_giao_hang` varchar(191) DEFAULT NULL,
  `ma_buu_dien_giao_hang` varchar(191) DEFAULT NULL,
  `so_dien_thoai_giao_hang` varchar(191) DEFAULT NULL,
  `phuong_thuc_giao_hang` varchar(191) DEFAULT 'standard',
  `don_vi_van_chuyen` varchar(191) DEFAULT NULL,
  `ma_van_don` varchar(191) DEFAULT NULL,
  `ngay_gui_hang` datetime(3) DEFAULT NULL,
  `ngay_nhan_hang` datetime(3) DEFAULT NULL,
  `phuong_thuc_thanh_toan` varchar(191) DEFAULT NULL,
  `trang_thai_thanh_toan` varchar(191) NOT NULL DEFAULT 'UNPAID',
  `ma_giao_dich_thanh_toan` varchar(191) DEFAULT NULL,
  `ghi_chu` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `giam_gia_bang_diem` double DEFAULT NULL,
  `so_diem_da_dung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`ma_don_hang`, `ma_nguoi_dung`, `trang_thai`, `tam_tinh`, `phi_van_chuyen`, `giam_gia`, `tong_tien`, `ma_phieu_giam_gia`, `ma_code_giam_gia`, `dia_chi_giao_hang`, `thanh_pho_giao_hang`, `ma_buu_dien_giao_hang`, `so_dien_thoai_giao_hang`, `phuong_thuc_giao_hang`, `don_vi_van_chuyen`, `ma_van_don`, `ngay_gui_hang`, `ngay_nhan_hang`, `phuong_thuc_thanh_toan`, `trang_thai_thanh_toan`, `ma_giao_dich_thanh_toan`, `ghi_chu`, `ngay_tao`, `ngay_cap_nhat`, `giam_gia_bang_diem`, `so_diem_da_dung`) VALUES
(1, 1, 'PENDING', 15.99, 5.99, 0, 21.98, NULL, NULL, '301105 tân lập ', 'ádgfsdfvb', NULL, '0879559933', 'standard', NULL, NULL, NULL, NULL, 'MBBANK', 'UNPAID', NULL, NULL, '2026-05-31 09:06:03.302', '2026-05-31 09:06:03.302', NULL, NULL),
(2, 1, 'PENDING', 15.99, 5.99, 0, 21.98, NULL, NULL, '301105 tân lập ', 'ádgfsdfvb', NULL, '0869226687', 'standard', NULL, NULL, NULL, NULL, 'MOMO', 'UNPAID', NULL, NULL, '2026-05-31 09:09:07.614', '2026-05-31 09:09:07.614', NULL, NULL),
(3, 1, 'CONFIRMED', 19.99, 5.99, 0, 25.98, NULL, NULL, '301105 tân lập ', 'ádgfsdfvb', NULL, '0879559933', 'standard', NULL, NULL, NULL, NULL, 'VNPAY', 'UNPAID', NULL, NULL, '2026-05-31 09:09:30.857', '2026-05-31 09:27:14.674', NULL, NULL),
(4, 2, 'COMPLETED', 74.91, 15, 5, 84.91, 6, 'LIKEFOOD5', '904 đường Nguyễn Trãi', 'Hà Nội', '70000', '0903517036', 'standard', NULL, NULL, NULL, NULL, 'BANK_TRANSFER', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-24 12:17:37.493', '2026-05-24 12:17:37.493', NULL, NULL),
(5, 3, 'DELIVERED', 94.95, 15, 9.49, 100.46, 1, 'WELCOME10', '980 đường Nguyễn Trãi', 'Hà Nội', '70000', '0904237619', 'standard', NULL, NULL, NULL, NULL, 'COD', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-26 18:26:36.745', '2026-05-26 18:26:36.745', NULL, NULL),
(6, 4, 'SHIPPED', 65.98, 15, 16.5, 64.48, 7, 'SUMMER25', '702 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0908001421', 'standard', NULL, NULL, NULL, NULL, 'ZALOPAY', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-31 03:44:53.809', '2026-05-31 03:44:53.809', NULL, NULL),
(7, 5, 'CONFIRMED', 13.98, 15, 0, 28.98, NULL, NULL, '959 đường Nguyễn Trãi', 'Hà Nội', '70000', '0903253561', 'standard', NULL, NULL, NULL, NULL, 'STRIPE', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-29 11:57:41.999', '2026-05-29 11:57:41.999', NULL, NULL),
(8, 6, 'PENDING', 67.96, 15, 0, 82.96, NULL, NULL, '720 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0906411953', 'standard', NULL, NULL, NULL, NULL, 'BANK_TRANSFER', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-25 17:48:21.704', '2026-05-25 17:48:21.704', NULL, NULL),
(9, 7, 'CANCELLED', 76.94999999999999, 15, 0, 91.94999999999999, NULL, NULL, '781 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0908798774', 'standard', NULL, NULL, NULL, NULL, 'MOMO', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-26 08:51:10.273', '2026-05-26 08:51:10.273', NULL, NULL),
(10, 8, 'COMPLETED', 87.94, 15, 0, 102.94, NULL, NULL, '101 đường Nguyễn Trãi', 'Hà Nội', '70000', '0904424346', 'standard', NULL, NULL, NULL, NULL, 'ZALOPAY', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-30 09:44:01.395', '2026-05-30 09:44:01.395', NULL, NULL),
(11, 9, 'DELIVERED', 28.99, 15, 15, 28.99, 3, 'FREESHIP', '113 đường Nguyễn Trãi', 'Hà Nội', '70000', '0902358680', 'standard', NULL, NULL, NULL, NULL, 'MOMO', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-26 16:01:40.287', '2026-05-26 16:01:40.287', NULL, NULL),
(12, 10, 'SHIPPED', 98.97, 15, 9.9, 104.07, 1, 'WELCOME10', '393 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0906089058', 'standard', NULL, NULL, NULL, NULL, 'STRIPE', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-22 12:51:47.301', '2026-05-22 12:51:47.301', NULL, NULL),
(13, 11, 'CONFIRMED', 37.98, 15, 5.7, 47.27999999999999, 8, 'NEWUSER15', '837 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0903418082', 'standard', NULL, NULL, NULL, NULL, 'STRIPE', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-29 13:44:03.170', '2026-05-29 13:44:03.170', NULL, NULL),
(14, 2, 'PENDING', 100.93, 0, 25.23, 75.7, 7, 'SUMMER25', '901 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0903517036', 'free', NULL, NULL, NULL, NULL, 'BANK_TRANSFER', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-21 01:53:32.083', '2026-05-21 01:53:32.083', NULL, NULL),
(15, 3, 'CANCELLED', 135.95, 0, 0, 135.95, NULL, NULL, '319 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0904237619', 'free', NULL, NULL, NULL, NULL, 'STRIPE', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-23 20:06:13.994', '2026-05-23 20:06:13.994', NULL, NULL),
(16, 4, 'COMPLETED', 40.97, 15, 4.1, 51.87, 1, 'WELCOME10', '979 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0908001421', 'standard', NULL, NULL, NULL, NULL, 'BANK_TRANSFER', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-30 08:53:59.863', '2026-05-30 08:53:59.863', NULL, NULL),
(17, 5, 'DELIVERED', 132.94, 0, 15, 117.94, 3, 'FREESHIP', '794 đường Nguyễn Trãi', 'Hà Nội', '70000', '0903253561', 'free', NULL, NULL, NULL, NULL, 'BANK_TRANSFER', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-30 12:56:13.240', '2026-05-30 12:56:13.240', NULL, NULL),
(18, 6, 'SHIPPED', 87.95, 15, 17.59, 85.36, 2, 'DACSAN20', '762 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0906411953', 'standard', NULL, NULL, NULL, NULL, 'ZALOPAY', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-19 15:05:32.004', '2026-05-19 15:05:32.004', NULL, NULL),
(19, 7, 'CONFIRMED', 71.96, 15, 10.79, 76.16999999999999, 8, 'NEWUSER15', '407 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0908798774', 'standard', NULL, NULL, NULL, NULL, 'COD', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-24 12:20:50.825', '2026-05-24 12:20:50.825', NULL, NULL),
(20, 8, 'PENDING', 29.97, 15, 7.49, 37.48, 7, 'SUMMER25', '914 đường Nguyễn Trãi', 'Hà Nội', '70000', '0904424346', 'standard', NULL, NULL, NULL, NULL, 'COD', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-28 21:46:50.350', '2026-05-28 21:46:50.350', NULL, NULL),
(21, 9, 'CANCELLED', 38.95, 15, 0, 53.95, NULL, NULL, '730 đường Nguyễn Trãi', 'Hà Nội', '70000', '0902358680', 'standard', NULL, NULL, NULL, NULL, 'STRIPE', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-30 23:20:33.517', '2026-05-30 23:20:33.517', NULL, NULL),
(22, 10, 'COMPLETED', 98.97, 15, 0, 113.97, NULL, NULL, '747 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0906089058', 'standard', NULL, NULL, NULL, NULL, 'STRIPE', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-26 08:32:33.160', '2026-05-26 08:32:33.160', NULL, NULL),
(23, 11, 'DELIVERED', 95.96, 15, 0, 110.96, NULL, NULL, '501 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0903418082', 'standard', NULL, NULL, NULL, NULL, 'STRIPE', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-21 08:03:16.634', '2026-05-21 08:03:16.634', NULL, NULL),
(24, 2, 'SHIPPED', 56.97, 15, 15, 56.97, 3, 'FREESHIP', '855 đường Nguyễn Trãi', 'Hà Nội', '70000', '0903517036', 'standard', NULL, NULL, NULL, NULL, 'ZALOPAY', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-23 21:57:07.959', '2026-05-23 21:57:07.959', NULL, NULL),
(25, 3, 'CONFIRMED', 43.97, 15, 4.4, 54.57, 1, 'WELCOME10', '280 đường Nguyễn Trãi', 'Hà Nội', '70000', '0904237619', 'standard', NULL, NULL, NULL, NULL, 'BANK_TRANSFER', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-23 18:18:31.365', '2026-05-23 18:18:31.365', NULL, NULL),
(26, 4, 'PENDING', 23.97, 15, 5, 33.97, 6, 'LIKEFOOD5', '535 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0908001421', 'standard', NULL, NULL, NULL, NULL, 'ZALOPAY', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-19 16:32:48.470', '2026-05-19 16:32:48.470', NULL, NULL),
(27, 5, 'CANCELLED', 31.95, 15, 3.2, 43.75, 1, 'WELCOME10', '752 đường Nguyễn Trãi', 'Hà Nội', '70000', '0903253561', 'standard', NULL, NULL, NULL, NULL, 'MOMO', 'UNPAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-21 07:51:10.510', '2026-05-21 07:51:10.510', NULL, NULL),
(28, 6, 'COMPLETED', 5.99, 15, 0.9, 20.09, 8, 'NEWUSER15', '386 đường Nguyễn Trãi', 'Hồ Chí Minh', '70000', '0906411953', 'standard', NULL, NULL, NULL, NULL, 'MOMO', 'PAID', NULL, 'Giao hàng giờ hành chính.', '2026-05-24 19:56:21.894', '2026-05-24 19:56:21.894', NULL, NULL),
(29, 1, 'PENDING', 69.99, 5.99, 0, 75.97999999999999, NULL, NULL, '301105 tân lập ', 'ádgfsdfvb', NULL, '0869226687', 'standard', NULL, NULL, NULL, NULL, 'MBBANK', 'UNPAID', NULL, NULL, '2026-05-31 14:48:26.361', '2026-05-31 14:48:26.361', NULL, NULL),
(30, 22, 'PENDING', 68.96, 10, 0, 78.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-11 22:09:09.096', '2026-06-02 12:18:38.569', NULL, NULL),
(31, 22, 'COMPLETED', 128.95, 10, 0, 138.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-15 22:40:04.175', '2026-06-02 12:18:38.581', NULL, NULL),
(32, 22, 'PROCESSING', 32.97, 10, 0, 42.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-24 00:15:02.557', '2026-06-02 12:18:38.591', NULL, NULL),
(33, 22, 'PENDING', 65.95, 10, 0, 75.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-08 07:26:04.361', '2026-06-02 12:18:38.597', NULL, NULL),
(34, 22, 'COMPLETED', 128.93, 10, 0, 138.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-17 18:42:21.748', '2026-06-02 12:18:38.602', NULL, NULL),
(35, 23, 'PROCESSING', 94.94, 10, 0, 104.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-03 21:36:51.663', '2026-06-02 12:18:38.612', NULL, NULL),
(36, 23, 'PENDING', 23.97, 10, 0, 33.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-05 19:58:40.662', '2026-06-02 12:18:38.617', NULL, NULL),
(37, 24, 'COMPLETED', 105.96, 10, 0, 115.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-26 20:31:09.889', '2026-06-02 12:18:38.622', NULL, NULL),
(38, 24, 'PROCESSING', 70.95, 10, 0, 80.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-10 04:05:34.874', '2026-06-02 12:18:38.632', NULL, NULL),
(39, 24, 'DELIVERED', 47.97, 10, 0, 57.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-29 13:54:28.589', '2026-06-02 12:18:38.636', NULL, NULL),
(40, 24, 'CANCELLED', 12.99, 10, 0, 22.99, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-29 10:52:09.986', '2026-06-02 12:18:38.643', NULL, NULL),
(41, 24, 'PROCESSING', 92.96000000000001, 10, 0, 102.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-16 17:31:43.770', '2026-06-02 12:18:38.647', NULL, NULL),
(42, 25, 'PENDING', 35.98, 10, 0, 45.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-23 04:50:19.848', '2026-06-02 12:18:38.652', NULL, NULL),
(43, 25, 'PENDING', 174.92, 10, 0, 184.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-10 03:16:09.466', '2026-06-02 12:18:38.656', NULL, NULL),
(44, 25, 'CANCELLED', 151.93, 10, 0, 161.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-15 18:16:49.246', '2026-06-02 12:18:38.660', NULL, NULL),
(45, 25, 'PROCESSING', 87.94999999999999, 10, 0, 97.94999999999999, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-31 13:26:14.922', '2026-06-02 12:18:38.664', NULL, NULL),
(46, 26, 'COMPLETED', 19.98, 10, 0, 29.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-22 22:37:08.200', '2026-06-02 12:18:38.668', NULL, NULL),
(47, 26, 'PENDING', 117.94, 10, 0, 127.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-05 00:00:49.498', '2026-06-02 12:18:38.673', NULL, NULL),
(48, 27, 'CANCELLED', 196.96, 10, 0, 206.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-06 21:50:47.754', '2026-06-02 12:18:38.678', NULL, NULL),
(49, 28, 'CANCELLED', 28.99, 10, 0, 38.98999999999999, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-22 05:47:39.125', '2026-06-02 12:18:38.684', NULL, NULL),
(50, 28, 'COMPLETED', 49.95, 10, 0, 59.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-12 03:15:22.012', '2026-06-02 12:18:38.688', NULL, NULL),
(51, 28, 'DELIVERED', 62.96, 10, 0, 72.96000000000001, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-21 20:07:35.724', '2026-06-02 12:18:38.698', NULL, NULL),
(52, 29, 'COMPLETED', 131.96, 10, 0, 141.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-26 00:10:12.288', '2026-06-02 12:18:38.705', NULL, NULL),
(53, 30, 'PENDING', 28.99, 10, 0, 38.98999999999999, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-26 16:43:34.241', '2026-06-02 12:18:38.715', NULL, NULL),
(54, 30, 'PENDING', 149.94, 10, 0, 159.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-24 13:14:58.948', '2026-06-02 12:18:38.720', NULL, NULL),
(55, 31, 'DELIVERED', 287.92, 10, 0, 297.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-26 23:12:45.522', '2026-06-02 12:18:38.725', NULL, NULL),
(56, 32, 'COMPLETED', 98.94, 10, 0, 108.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-26 00:59:56.524', '2026-06-02 12:18:38.731', NULL, NULL),
(57, 33, 'CANCELLED', 156.92, 10, 0, 166.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-29 20:14:08.503', '2026-06-02 12:18:38.738', NULL, NULL),
(58, 33, 'COMPLETED', 145.92, 10, 0, 155.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-14 23:12:39.170', '2026-06-02 12:18:38.742', NULL, NULL),
(59, 33, 'CANCELLED', 94.97, 10, 0, 104.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-07 17:25:45.500', '2026-06-02 12:18:38.749', NULL, NULL),
(60, 33, 'DELIVERED', 72.96000000000001, 10, 0, 82.96000000000001, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-26 07:50:56.163', '2026-06-02 12:18:38.754', NULL, NULL),
(61, 34, 'PENDING', 44.97, 10, 0, 54.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-13 05:41:28.354', '2026-06-02 12:18:38.765', NULL, NULL),
(62, 34, 'PROCESSING', 176.93, 10, 0, 186.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-15 03:41:36.007', '2026-06-02 12:18:38.770', NULL, NULL),
(63, 34, 'DELIVERED', 99.96000000000001, 10, 0, 109.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-18 22:44:31.496', '2026-06-02 12:18:38.775', NULL, NULL),
(64, 35, 'COMPLETED', 41.98, 10, 0, 51.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-28 09:08:53.248', '2026-06-02 12:18:38.783', NULL, NULL),
(65, 35, 'DELIVERED', 340.92, 10, 0, 350.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-06 14:20:05.234', '2026-06-02 12:18:38.791', NULL, NULL),
(66, 35, 'DELIVERED', 284.96, 10, 0, 294.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-19 05:21:33.519', '2026-06-02 12:18:38.797', NULL, NULL),
(67, 36, 'CANCELLED', 48.96, 10, 0, 58.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-18 03:33:04.260', '2026-06-02 12:18:38.806', NULL, NULL),
(68, 36, 'PROCESSING', 79.96000000000001, 10, 0, 89.96000000000001, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-26 17:07:29.696', '2026-06-02 12:18:38.811', NULL, NULL),
(69, 36, 'DELIVERED', 114.94, 10, 0, 124.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-11 15:24:37.204', '2026-06-02 12:18:38.815', NULL, NULL),
(70, 37, 'PENDING', 226.89, 10, 0, 236.89, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-12 20:58:03.123', '2026-06-02 12:18:38.823', NULL, NULL),
(71, 38, 'CANCELLED', 207.92, 10, 0, 217.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-17 21:41:12.403', '2026-06-02 12:18:38.827', NULL, NULL),
(72, 38, 'DELIVERED', 263.91, 10, 0, 273.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-11 05:37:40.375', '2026-06-02 12:18:38.831', NULL, NULL),
(73, 39, 'PROCESSING', 97.98, 10, 0, 107.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-23 12:48:09.446', '2026-06-02 12:18:38.841', NULL, NULL),
(74, 39, 'CANCELLED', 96.94, 10, 0, 106.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-27 08:21:03.282', '2026-06-02 12:18:38.845', NULL, NULL),
(75, 40, 'CANCELLED', 34.97, 10, 0, 44.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-17 17:27:46.881', '2026-06-02 12:18:38.849', NULL, NULL),
(76, 40, 'COMPLETED', 133.95, 10, 0, 143.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-25 13:56:38.292', '2026-06-02 12:18:38.854', NULL, NULL),
(77, 40, 'PENDING', 77.97, 10, 0, 87.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-28 03:35:04.862', '2026-06-02 12:18:38.861', NULL, NULL),
(78, 40, 'DELIVERED', 189.92, 10, 0, 199.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-11 12:25:12.255', '2026-06-02 12:18:38.865', NULL, NULL),
(79, 40, 'PENDING', 182.91, 10, 0, 192.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-06 09:09:41.610', '2026-06-02 12:18:38.873', NULL, NULL),
(80, 41, 'CANCELLED', 171.92, 10, 0, 181.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-17 07:49:15.002', '2026-06-02 12:18:38.877', NULL, NULL),
(81, 41, 'CANCELLED', 98.97, 10, 0, 108.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-22 21:31:50.203', '2026-06-02 12:18:38.881', NULL, NULL),
(82, 41, 'PROCESSING', 116.97, 10, 0, 126.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-06 07:22:13.051', '2026-06-02 12:18:38.886', NULL, NULL),
(83, 41, 'DELIVERED', 159.93, 10, 0, 169.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-11 20:29:38.341', '2026-06-02 12:18:38.891', NULL, NULL),
(84, 42, 'DELIVERED', 186.92, 10, 0, 196.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-12 18:43:23.788', '2026-06-02 12:18:38.903', NULL, NULL),
(85, 42, 'PROCESSING', 134.93, 10, 0, 144.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-23 08:00:45.621', '2026-06-02 12:18:38.911', NULL, NULL),
(86, 42, 'CANCELLED', 83.94, 10, 0, 93.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-26 07:19:37.566', '2026-06-02 12:18:38.916', NULL, NULL),
(87, 42, 'DELIVERED', 98.94999999999999, 10, 0, 108.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-12 21:18:41.308', '2026-06-02 12:18:38.922', NULL, NULL),
(88, 42, 'PENDING', 186.93, 10, 0, 196.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-09 08:47:12.553', '2026-06-02 12:18:38.930', NULL, NULL),
(89, 43, 'PROCESSING', 179.93, 10, 0, 189.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-07 02:52:47.606', '2026-06-02 12:18:38.936', NULL, NULL),
(90, 43, 'DELIVERED', 147.92, 10, 0, 157.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-16 04:24:37.251', '2026-06-02 12:18:38.942', NULL, NULL),
(91, 43, 'PROCESSING', 296.92, 10, 0, 306.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-29 19:07:46.887', '2026-06-02 12:18:38.950', NULL, NULL),
(92, 43, 'DELIVERED', 19.99, 10, 0, 29.99, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-22 17:06:27.041', '2026-06-02 12:18:38.955', NULL, NULL),
(93, 44, 'PROCESSING', 151.93, 10, 0, 161.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-06-02 10:24:58.333', '2026-06-02 12:18:38.962', NULL, NULL),
(94, 44, 'CANCELLED', 96.94999999999999, 10, 0, 106.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-14 18:19:49.075', '2026-06-02 12:18:38.967', NULL, NULL),
(95, 44, 'PROCESSING', 16.99, 10, 0, 26.99, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-24 09:27:15.266', '2026-06-02 12:18:38.972', NULL, NULL),
(96, 44, 'PENDING', 133.94, 10, 0, 143.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-27 23:18:04.171', '2026-06-02 12:18:38.977', NULL, NULL),
(97, 44, 'CANCELLED', 19.98, 10, 0, 29.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-21 13:49:12.225', '2026-06-02 12:18:38.982', NULL, NULL),
(98, 45, 'DELIVERED', 141.92, 10, 0, 151.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-06-02 04:38:09.203', '2026-06-02 12:18:38.986', NULL, NULL),
(99, 45, 'COMPLETED', 95.92999999999999, 10, 0, 105.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-21 04:08:00.914', '2026-06-02 12:18:38.997', NULL, NULL),
(100, 45, 'DELIVERED', 209.91, 10, 0, 219.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-27 23:23:26.310', '2026-06-02 12:18:39.006', NULL, NULL),
(101, 45, 'COMPLETED', 213.94, 10, 0, 223.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-07 13:12:45.697', '2026-06-02 12:18:39.016', NULL, NULL),
(102, 46, 'COMPLETED', 141.96, 10, 0, 151.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-19 04:21:57.891', '2026-06-02 12:18:39.031', NULL, NULL),
(103, 46, 'PROCESSING', 16.99, 10, 0, 26.99, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-06-02 09:24:26.123', '2026-06-02 12:18:39.040', NULL, NULL),
(104, 47, 'PROCESSING', 112.91, 10, 0, 122.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-06-02 12:18:19.649', '2026-06-02 12:18:39.046', NULL, NULL),
(105, 47, 'PROCESSING', 94.96, 10, 0, 104.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-05 04:03:35.291', '2026-06-02 12:18:39.050', NULL, NULL),
(106, 47, 'DELIVERED', 162.93, 10, 0, 172.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-25 16:38:46.448', '2026-06-02 12:18:39.055', NULL, NULL),
(107, 47, 'COMPLETED', 39.96, 10, 0, 49.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-13 11:56:30.130', '2026-06-02 12:18:39.065', NULL, NULL),
(108, 48, 'PENDING', 12.99, 10, 0, 22.99, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-15 17:22:15.800', '2026-06-02 12:18:39.073', NULL, NULL),
(109, 49, 'PROCESSING', 117.96, 10, 0, 127.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-18 11:07:52.878', '2026-06-02 12:18:39.078', NULL, NULL),
(110, 49, 'DELIVERED', 38.97, 10, 0, 48.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-24 17:36:21.000', '2026-06-02 12:18:39.082', NULL, NULL),
(111, 49, 'COMPLETED', 255.89, 10, 0, 265.89, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-17 09:41:54.501', '2026-06-02 12:18:39.089', NULL, NULL),
(112, 50, 'COMPLETED', 128.94, 10, 0, 138.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-25 16:47:19.820', '2026-06-02 12:18:39.097', NULL, NULL),
(113, 50, 'CANCELLED', 208.92, 10, 0, 218.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-09 02:17:33.978', '2026-06-02 12:18:39.108', NULL, NULL),
(114, 51, 'PROCESSING', 232.91, 10, 0, 242.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-22 20:13:56.491', '2026-06-02 12:18:39.113', NULL, NULL),
(115, 51, 'PENDING', 97.98, 10, 0, 107.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-13 23:35:53.106', '2026-06-02 12:18:39.118', NULL, NULL),
(116, 52, 'COMPLETED', 49.97, 10, 0, 59.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-15 03:09:54.571', '2026-06-02 12:18:39.124', NULL, NULL),
(117, 52, 'CANCELLED', 187.97, 10, 0, 197.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-09 06:41:29.606', '2026-06-02 12:18:39.135', NULL, NULL),
(118, 52, 'PROCESSING', 264.91, 10, 0, 274.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-28 18:33:05.510', '2026-06-02 12:18:39.140', NULL, NULL),
(119, 53, 'DELIVERED', 413.9, 10, 0, 423.9, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-23 05:48:15.801', '2026-06-02 12:18:39.145', NULL, NULL),
(120, 53, 'PROCESSING', 245.95, 10, 0, 255.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-07 16:41:32.209', '2026-06-02 12:18:39.157', NULL, NULL),
(121, 53, 'PROCESSING', 65.94, 10, 0, 75.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-27 15:06:13.993', '2026-06-02 12:18:39.164', NULL, NULL),
(122, 53, 'COMPLETED', 75.97, 10, 0, 85.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-17 11:14:51.534', '2026-06-02 12:18:39.168', NULL, NULL),
(123, 53, 'PENDING', 111.91, 10, 0, 121.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-06 23:11:33.606', '2026-06-02 12:18:39.179', NULL, NULL),
(124, 54, 'CANCELLED', 129.93, 10, 0, 139.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-05 13:59:33.070', '2026-06-02 12:18:39.184', NULL, NULL),
(125, 54, 'PROCESSING', 211.93, 10, 0, 221.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-17 13:51:24.921', '2026-06-02 12:18:39.188', NULL, NULL),
(126, 54, 'PROCESSING', 129.95, 10, 0, 139.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-31 04:15:55.295', '2026-06-02 12:18:39.193', NULL, NULL),
(127, 54, 'PROCESSING', 159.92, 10, 0, 169.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-15 18:36:07.574', '2026-06-02 12:18:39.197', NULL, NULL),
(128, 54, 'CANCELLED', 140.93, 10, 0, 150.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-30 23:33:58.730', '2026-06-02 12:18:39.202', NULL, NULL),
(129, 55, 'PENDING', 84.94999999999999, 10, 0, 94.94999999999999, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-22 23:04:42.597', '2026-06-02 12:18:39.207', NULL, NULL),
(130, 55, 'DELIVERED', 133.93, 10, 0, 143.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-06 00:37:17.590', '2026-06-02 12:18:39.213', NULL, NULL),
(131, 55, 'COMPLETED', 87.94999999999999, 10, 0, 97.94999999999999, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-15 15:49:21.333', '2026-06-02 12:18:39.223', NULL, NULL),
(132, 56, 'PENDING', 28.99, 10, 0, 38.98999999999999, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-16 18:59:12.427', '2026-06-02 12:18:39.232', NULL, NULL),
(133, 56, 'DELIVERED', 264.89, 10, 0, 274.89, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-06-01 16:08:51.935', '2026-06-02 12:18:39.237', NULL, NULL),
(134, 56, 'CANCELLED', 92.96, 10, 0, 102.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-16 13:31:36.365', '2026-06-02 12:18:39.247', NULL, NULL),
(135, 56, 'DELIVERED', 61.95999999999999, 10, 0, 71.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-19 02:25:52.478', '2026-06-02 12:18:39.252', NULL, NULL),
(136, 57, 'PENDING', 74.98, 10, 0, 84.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-06-01 14:42:51.983', '2026-06-02 12:18:39.262', NULL, NULL),
(137, 57, 'COMPLETED', 193.89, 10, 0, 203.89, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-06-02 10:19:37.294', '2026-06-02 12:18:39.268', NULL, NULL),
(138, 57, 'PENDING', 209.92, 10, 0, 219.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-06-02 08:46:00.422', '2026-06-02 12:18:39.283', NULL, NULL),
(139, 57, 'DELIVERED', 93.92999999999999, 10, 0, 103.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-26 20:05:32.711', '2026-06-02 12:18:39.289', NULL, NULL),
(140, 58, 'PENDING', 60.98, 10, 0, 70.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-18 19:27:53.485', '2026-06-02 12:18:39.299', NULL, NULL),
(141, 58, 'COMPLETED', 97.94, 10, 0, 107.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-06-02 06:07:51.562', '2026-06-02 12:18:39.305', NULL, NULL),
(142, 58, 'COMPLETED', 173.94, 10, 0, 183.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-03 14:06:30.039', '2026-06-02 12:18:39.316', NULL, NULL),
(143, 59, 'PROCESSING', 71.96, 10, 0, 81.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-06-02 03:57:32.461', '2026-06-02 12:18:39.327', NULL, NULL),
(144, 59, 'DELIVERED', 55.95, 10, 0, 65.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-16 09:50:41.939', '2026-06-02 12:18:39.333', NULL, NULL),
(145, 60, 'COMPLETED', 152.93, 10, 0, 162.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-06-01 22:37:11.955', '2026-06-02 12:18:39.340', NULL, NULL),
(146, 60, 'CANCELLED', 75.93, 10, 0, 85.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-19 18:48:14.570', '2026-06-02 12:18:39.349', NULL, NULL),
(147, 61, 'DELIVERED', 119.96, 10, 0, 129.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-24 10:15:11.743', '2026-06-02 12:18:39.355', NULL, NULL),
(148, 61, 'COMPLETED', 96.91, 10, 0, 106.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-14 13:56:00.529', '2026-06-02 12:18:39.371', NULL, NULL),
(149, 61, 'PROCESSING', 79.96, 10, 0, 89.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-18 07:50:21.122', '2026-06-02 12:18:39.389', NULL, NULL),
(150, 62, 'PENDING', 152.93, 10, 0, 162.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-29 15:12:09.054', '2026-06-02 12:18:39.395', NULL, NULL),
(151, 62, 'CANCELLED', 63.97, 10, 0, 73.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-20 02:21:47.054', '2026-06-02 12:18:39.401', NULL, NULL),
(152, 62, 'COMPLETED', 43.96, 10, 0, 53.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-13 00:15:43.470', '2026-06-02 12:18:39.408', NULL, NULL),
(153, 63, 'PROCESSING', 269.97, 10, 0, 279.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-27 11:50:52.377', '2026-06-02 12:18:39.421', NULL, NULL),
(154, 63, 'PROCESSING', 134.95, 10, 0, 144.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-20 15:03:45.817', '2026-06-02 12:18:39.426', NULL, NULL),
(155, 63, 'CANCELLED', 45.98, 10, 0, 55.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-03 23:40:01.946', '2026-06-02 12:18:39.432', NULL, NULL),
(156, 64, 'CANCELLED', 91.93, 10, 0, 101.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-09 12:37:55.382', '2026-06-02 12:18:39.437', NULL, NULL),
(157, 64, 'DELIVERED', 419.91, 10, 0, 429.91, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-20 17:57:13.672', '2026-06-02 12:18:39.444', NULL, NULL),
(158, 64, 'DELIVERED', 135.96, 10, 0, 145.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-27 03:59:12.452', '2026-06-02 12:18:39.453', NULL, NULL),
(159, 64, 'COMPLETED', 33.98, 10, 0, 43.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-08 14:22:51.556', '2026-06-02 12:18:39.464', NULL, NULL),
(160, 64, 'CANCELLED', 102.93, 10, 0, 112.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-16 19:03:07.936', '2026-06-02 12:18:39.471', NULL, NULL),
(161, 65, 'DELIVERED', 139.95, 10, 0, 149.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-23 22:26:48.250', '2026-06-02 12:18:39.478', NULL, NULL),
(162, 65, 'COMPLETED', 111.94, 10, 0, 121.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-28 18:28:38.969', '2026-06-02 12:18:39.489', NULL, NULL),
(163, 66, 'PENDING', 101.94, 10, 0, 111.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-07 21:03:11.104', '2026-06-02 12:18:39.504', NULL, NULL),
(164, 66, 'PENDING', 124.93, 10, 0, 134.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-20 00:41:46.325', '2026-06-02 12:18:39.510', NULL, NULL),
(165, 67, 'PROCESSING', 39.96, 10, 0, 49.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-16 08:59:22.465', '2026-06-02 12:18:39.518', NULL, NULL),
(166, 68, 'COMPLETED', 167.97, 10, 0, 177.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-25 02:32:10.319', '2026-06-02 12:18:39.525', NULL, NULL),
(167, 68, 'COMPLETED', 71.98, 10, 0, 81.98, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-18 08:59:54.084', '2026-06-02 12:18:39.535', NULL, NULL),
(168, 68, 'CANCELLED', 83.93999999999998, 10, 0, 93.93999999999998, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-11 21:19:08.245', '2026-06-02 12:18:39.547', NULL, NULL),
(169, 68, 'CANCELLED', 271.93, 10, 0, 281.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-06 07:44:32.069', '2026-06-02 12:18:39.553', NULL, NULL),
(170, 69, 'PROCESSING', 112.95, 10, 0, 122.95, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-16 19:19:09.755', '2026-06-02 12:18:39.559', NULL, NULL),
(171, 69, 'PROCESSING', 112.92, 10, 0, 122.92, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-06 06:25:47.616', '2026-06-02 12:18:39.565', NULL, NULL),
(172, 69, 'CANCELLED', 32.97, 10, 0, 42.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-14 21:35:58.106', '2026-06-02 12:18:39.570', NULL, NULL),
(173, 69, 'PROCESSING', 10.99, 10, 0, 20.99, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-19 06:35:10.948', '2026-06-02 12:18:39.576', NULL, NULL),
(174, 69, 'DELIVERED', 113.93, 10, 0, 123.93, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-22 19:48:41.772', '2026-06-02 12:18:39.584', NULL, NULL),
(175, 70, 'DELIVERED', 66.96, 10, 0, 76.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'PAID', NULL, NULL, '2026-05-06 13:03:46.626', '2026-06-02 12:18:39.599', NULL, NULL),
(176, 70, 'PENDING', 121.94, 10, 0, 131.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-06-01 16:25:57.357', '2026-06-02 12:18:39.611', NULL, NULL),
(177, 70, 'PENDING', 47.97, 10, 0, 57.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-29 04:18:22.596', '2026-06-02 12:18:39.618', NULL, NULL),
(178, 71, 'PROCESSING', 78.94, 10, 0, 88.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-08 07:29:32.890', '2026-06-02 12:18:39.625', NULL, NULL),
(179, 71, 'CANCELLED', 120.9, 10, 0, 130.9, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-15 05:46:31.898', '2026-06-02 12:18:39.632', NULL, NULL),
(180, 71, 'PROCESSING', 48.97, 10, 0, 58.97, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-03 19:39:52.958', '2026-06-02 12:18:39.638', NULL, NULL),
(181, 71, 'PROCESSING', 186.96, 10, 0, 196.96, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-07 23:58:03.881', '2026-06-02 12:18:39.644', NULL, NULL),
(182, 71, 'CANCELLED', 181.94, 10, 0, 191.94, NULL, NULL, '123 Đường Test', 'HCM', NULL, NULL, 'standard', NULL, NULL, NULL, NULL, NULL, 'UNPAID', NULL, NULL, '2026-05-21 12:44:09.372', '2026-06-02 12:18:39.650', NULL, NULL),
(183, 1, 'PENDING', 13.99, 5.99, 0, 19.98, NULL, NULL, '301105 tân lập ', 'ádgfsdfvb', NULL, '0869226687', 'standard', NULL, NULL, NULL, NULL, 'MBBANK', 'UNPAID', NULL, NULL, '2026-06-02 13:38:01.843', '2026-06-02 13:38:01.843', NULL, NULL),
(184, 1, 'COMPLETED', 166.93, 5.99, 0, 172.92, NULL, NULL, '301105 tân lập ', 'ádgfsdfvb', NULL, '0869226687', 'standard', NULL, NULL, NULL, NULL, 'MBBANK', 'UNPAID', NULL, NULL, '2026-06-03 04:47:07.149', '2026-06-03 04:50:21.200', NULL, NULL),
(185, 1, 'PENDING', 19.99, 5.99, 0, 25.98, NULL, NULL, '301105 tân lập ', 'ádgfsdfvb', NULL, '0869226687', 'standard', NULL, NULL, NULL, NULL, 'MBBANK', 'UNPAID', NULL, NULL, '2026-06-04 08:24:08.261', '2026-06-04 08:24:08.261', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_dich_diem_thuong`
--

CREATE TABLE `giao_dich_diem_thuong` (
  `ma_giao_dich_diem` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `so_diem` int(11) NOT NULL,
  `loai_giao_dich` varchar(191) NOT NULL,
  `mo_ta` varchar(191) DEFAULT NULL,
  `ma_don_hang` int(11) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giao_dich_diem_thuong`
--

INSERT INTO `giao_dich_diem_thuong` (`ma_giao_dich_diem`, `ma_nguoi_dung`, `so_diem`, `loai_giao_dich`, `mo_ta`, `ma_don_hang`, `ngay_tao`) VALUES
(1, 2, 50, 'EARNED', 'Tích lũy điểm từ đơn hàng', 4, '2026-05-31 14:42:45.242'),
(2, 3, 50, 'EARNED', 'Tích lũy điểm từ đơn hàng', 5, '2026-05-30 14:42:45.243'),
(3, 4, -20, 'EARNED', 'Tích lũy điểm từ đơn hàng', 6, '2026-05-29 14:42:45.244'),
(4, 5, -20, 'REDEEMED', 'Tích lũy điểm từ đơn hàng', 7, '2026-05-28 14:42:45.245'),
(5, 6, 50, 'EARNED', 'Tích lũy điểm từ đơn hàng', 8, '2026-05-27 14:42:45.246'),
(6, 7, -20, 'EARNED', 'Tích lũy điểm từ đơn hàng', 9, '2026-05-26 14:42:45.247'),
(7, 8, -20, 'EARNED', 'Dùng điểm giảm giá đơn hàng', 10, '2026-05-25 14:42:45.249'),
(8, 9, 50, 'EARNED', 'Tích lũy điểm từ đơn hàng', 11, '2026-05-24 14:42:45.250'),
(9, 10, 50, 'REDEEMED', 'Tích lũy điểm từ đơn hàng', 12, '2026-05-23 14:42:45.251'),
(10, 11, 50, 'EARNED', 'Tích lũy điểm từ đơn hàng', 13, '2026-05-22 14:42:45.252'),
(11, 2, 15, 'EARNED', 'Điểm danh hàng ngày (Daily check-in)', NULL, '2026-05-25 01:16:42.829'),
(12, 3, 150, 'EARNED', 'Tích điểm khi hoàn thành đơn hàng', NULL, '2026-05-10 08:25:37.097'),
(13, 4, 50, 'EARNED', 'Gợi ý bạn bè đăng ký tài khoản thành công', NULL, '2026-05-12 17:38:55.381'),
(14, 5, -100, 'SPENT', 'Đổi điểm lấy mã coupon giảm giá WELCOME10', NULL, '2026-05-18 01:37:31.209'),
(15, 6, -200, 'SPENT', 'Đổi điểm lấy mã giảm giá FREESHIP', NULL, '2026-05-27 05:30:41.346'),
(16, 7, 15, 'EARNED', 'Điểm danh hàng ngày (Daily check-in)', NULL, '2026-05-07 03:21:03.918'),
(17, 8, 150, 'EARNED', 'Tích điểm khi hoàn thành đơn hàng', NULL, '2026-05-08 07:57:37.437'),
(18, 9, 50, 'EARNED', 'Gợi ý bạn bè đăng ký tài khoản thành công', NULL, '2026-05-16 16:50:44.165'),
(19, 10, -100, 'SPENT', 'Đổi điểm lấy mã coupon giảm giá WELCOME10', NULL, '2026-05-30 09:59:29.116'),
(20, 11, -200, 'SPENT', 'Đổi điểm lấy mã giảm giá FREESHIP', NULL, '2026-05-14 23:22:24.177'),
(21, 12, 15, 'EARNED', 'Điểm danh hàng ngày (Daily check-in)', NULL, '2026-05-29 06:38:21.775'),
(22, 13, 150, 'EARNED', 'Tích điểm khi hoàn thành đơn hàng', NULL, '2026-05-19 02:52:12.396'),
(23, 14, 50, 'EARNED', 'Gợi ý bạn bè đăng ký tài khoản thành công', NULL, '2026-05-28 23:42:09.745'),
(24, 15, -100, 'SPENT', 'Đổi điểm lấy mã coupon giảm giá WELCOME10', NULL, '2026-05-10 02:16:38.000'),
(25, 16, -200, 'SPENT', 'Đổi điểm lấy mã giảm giá FREESHIP', NULL, '2026-05-22 02:40:38.357'),
(26, 17, 15, 'EARNED', 'Điểm danh hàng ngày (Daily check-in)', NULL, '2026-05-10 20:00:27.937'),
(27, 18, 150, 'EARNED', 'Tích điểm khi hoàn thành đơn hàng', NULL, '2026-05-20 01:34:10.721'),
(28, 19, 50, 'EARNED', 'Gợi ý bạn bè đăng ký tài khoản thành công', NULL, '2026-05-13 01:50:31.997'),
(29, 20, -100, 'SPENT', 'Đổi điểm lấy mã coupon giảm giá WELCOME10', NULL, '2026-05-24 23:55:54.322'),
(30, 21, -200, 'SPENT', 'Đổi điểm lấy mã giảm giá FREESHIP', NULL, '2026-05-11 08:21:12.683'),
(31, 2, 15, 'EARNED', 'Điểm danh hàng ngày (Daily check-in)', NULL, '2026-05-13 06:26:05.290'),
(32, 3, 150, 'EARNED', 'Tích điểm khi hoàn thành đơn hàng', NULL, '2026-05-10 22:48:20.213'),
(33, 4, 50, 'EARNED', 'Gợi ý bạn bè đăng ký tài khoản thành công', NULL, '2026-05-20 19:26:21.979'),
(34, 5, -100, 'SPENT', 'Đổi điểm lấy mã coupon giảm giá WELCOME10', NULL, '2026-05-17 02:32:47.205'),
(35, 6, -200, 'SPENT', 'Đổi điểm lấy mã giảm giá FREESHIP', NULL, '2026-05-20 11:57:28.184'),
(36, 7, 15, 'EARNED', 'Điểm danh hàng ngày (Daily check-in)', NULL, '2026-05-24 04:36:13.268'),
(37, 8, 150, 'EARNED', 'Tích điểm khi hoàn thành đơn hàng', NULL, '2026-05-18 05:06:52.249'),
(38, 9, 50, 'EARNED', 'Gợi ý bạn bè đăng ký tài khoản thành công', NULL, '2026-05-12 22:09:17.973'),
(39, 10, -100, 'SPENT', 'Đổi điểm lấy mã coupon giảm giá WELCOME10', NULL, '2026-05-22 22:37:35.069'),
(40, 11, -200, 'SPENT', 'Đổi điểm lấy mã giảm giá FREESHIP', NULL, '2026-05-24 20:00:33.499'),
(41, 1, 10, 'EARN', 'Điểm danh hàng ngày', NULL, '2026-06-03 04:45:29.041'),
(42, 1, 10, 'EARN', 'Điểm danh hàng ngày', NULL, '2026-06-04 08:16:22.795');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_dich_tai_khoan`
--

CREATE TABLE `giao_dich_tai_khoan` (
  `ma_giao_dich` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `so_tien` decimal(12,2) NOT NULL,
  `loai_giao_dich` varchar(191) NOT NULL,
  `trang_thai` varchar(191) NOT NULL DEFAULT 'PENDING',
  `phuong_thuc` varchar(191) DEFAULT NULL,
  `ma_tham_chieu` varchar(191) DEFAULT NULL,
  `ghi_chu` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giao_dich_tai_khoan`
--

INSERT INTO `giao_dich_tai_khoan` (`ma_giao_dich`, `ma_nguoi_dung`, `so_tien`, `loai_giao_dich`, `trang_thai`, `phuong_thuc`, `ma_tham_chieu`, `ghi_chu`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 22, 652.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_22_1780402718023', NULL, '2026-06-02 12:18:38.025', '2026-06-02 12:18:38.025'),
(2, 23, 944.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_23_1780402718037', NULL, '2026-06-02 12:18:38.038', '2026-06-02 12:18:38.038'),
(3, 24, 1.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_24_1780402718045', NULL, '2026-06-02 12:18:38.046', '2026-06-02 12:18:38.046'),
(4, 25, 679.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_25_1780402718059', NULL, '2026-06-02 12:18:38.060', '2026-06-02 12:18:38.060'),
(5, 26, 16.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_26_1780402718071', NULL, '2026-06-02 12:18:38.072', '2026-06-02 12:18:38.072'),
(6, 27, 875.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_27_1780402718085', NULL, '2026-06-02 12:18:38.087', '2026-06-02 12:18:38.087'),
(7, 28, 35.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_28_1780402718094', NULL, '2026-06-02 12:18:38.096', '2026-06-02 12:18:38.096'),
(8, 29, 484.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_29_1780402718102', NULL, '2026-06-02 12:18:38.103', '2026-06-02 12:18:38.103'),
(9, 30, 299.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_30_1780402718112', NULL, '2026-06-02 12:18:38.113', '2026-06-02 12:18:38.113'),
(10, 31, 600.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_31_1780402718122', NULL, '2026-06-02 12:18:38.123', '2026-06-02 12:18:38.123'),
(11, 32, 56.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_32_1780402718131', NULL, '2026-06-02 12:18:38.132', '2026-06-02 12:18:38.132'),
(12, 33, 874.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_33_1780402718145', NULL, '2026-06-02 12:18:38.146', '2026-06-02 12:18:38.146'),
(13, 34, 434.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_34_1780402718152', NULL, '2026-06-02 12:18:38.154', '2026-06-02 12:18:38.154'),
(14, 35, 75.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_35_1780402718165', NULL, '2026-06-02 12:18:38.166', '2026-06-02 12:18:38.166'),
(15, 36, 207.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_36_1780402718173', NULL, '2026-06-02 12:18:38.174', '2026-06-02 12:18:38.174'),
(16, 37, 135.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_37_1780402718184', NULL, '2026-06-02 12:18:38.185', '2026-06-02 12:18:38.185'),
(17, 38, 277.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_38_1780402718193', NULL, '2026-06-02 12:18:38.194', '2026-06-02 12:18:38.194'),
(18, 39, 0.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_39_1780402718203', NULL, '2026-06-02 12:18:38.204', '2026-06-02 12:18:38.204'),
(19, 40, 628.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_40_1780402718214', NULL, '2026-06-02 12:18:38.215', '2026-06-02 12:18:38.215'),
(20, 41, 535.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_41_1780402718222', NULL, '2026-06-02 12:18:38.224', '2026-06-02 12:18:38.224'),
(21, 42, 573.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_42_1780402718228', NULL, '2026-06-02 12:18:38.230', '2026-06-02 12:18:38.230'),
(22, 43, 34.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_43_1780402718237', NULL, '2026-06-02 12:18:38.238', '2026-06-02 12:18:38.238'),
(23, 44, 299.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_44_1780402718248', NULL, '2026-06-02 12:18:38.249', '2026-06-02 12:18:38.249'),
(24, 45, 242.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_45_1780402718259', NULL, '2026-06-02 12:18:38.260', '2026-06-02 12:18:38.260'),
(25, 46, 912.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_46_1780402718273', NULL, '2026-06-02 12:18:38.274', '2026-06-02 12:18:38.274'),
(26, 47, 320.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_47_1780402718282', NULL, '2026-06-02 12:18:38.283', '2026-06-02 12:18:38.283'),
(27, 48, 936.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_48_1780402718296', NULL, '2026-06-02 12:18:38.297', '2026-06-02 12:18:38.297'),
(28, 49, 828.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_49_1780402718311', NULL, '2026-06-02 12:18:38.312', '2026-06-02 12:18:38.312'),
(29, 50, 74.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_50_1780402718321', NULL, '2026-06-02 12:18:38.323', '2026-06-02 12:18:38.323'),
(30, 51, 790.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_51_1780402718331', NULL, '2026-06-02 12:18:38.332', '2026-06-02 12:18:38.332'),
(31, 52, 30.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_52_1780402718342', NULL, '2026-06-02 12:18:38.344', '2026-06-02 12:18:38.344'),
(32, 53, 295.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_53_1780402718362', NULL, '2026-06-02 12:18:38.363', '2026-06-02 12:18:38.363'),
(33, 54, 566.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_54_1780402718380', NULL, '2026-06-02 12:18:38.381', '2026-06-02 12:18:38.381'),
(34, 55, 796.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_55_1780402718390', NULL, '2026-06-02 12:18:38.392', '2026-06-02 12:18:38.392'),
(35, 56, 218.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_56_1780402718404', NULL, '2026-06-02 12:18:38.405', '2026-06-02 12:18:38.405'),
(36, 57, 272.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_57_1780402718413', NULL, '2026-06-02 12:18:38.414', '2026-06-02 12:18:38.414'),
(37, 58, 10.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_58_1780402718423', NULL, '2026-06-02 12:18:38.424', '2026-06-02 12:18:38.424'),
(38, 59, 929.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_59_1780402718436', NULL, '2026-06-02 12:18:38.437', '2026-06-02 12:18:38.437'),
(39, 60, 417.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_60_1780402718448', NULL, '2026-06-02 12:18:38.449', '2026-06-02 12:18:38.449'),
(40, 61, 671.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_61_1780402718457', NULL, '2026-06-02 12:18:38.458', '2026-06-02 12:18:38.458'),
(41, 62, 828.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_62_1780402718469', NULL, '2026-06-02 12:18:38.470', '2026-06-02 12:18:38.470'),
(42, 63, 843.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_63_1780402718482', NULL, '2026-06-02 12:18:38.483', '2026-06-02 12:18:38.483'),
(43, 64, 350.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_64_1780402718491', NULL, '2026-06-02 12:18:38.493', '2026-06-02 12:18:38.493'),
(44, 65, 980.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_65_1780402718502', NULL, '2026-06-02 12:18:38.504', '2026-06-02 12:18:38.504'),
(45, 66, 497.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_66_1780402718513', NULL, '2026-06-02 12:18:38.514', '2026-06-02 12:18:38.514'),
(46, 67, 392.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_67_1780402718521', NULL, '2026-06-02 12:18:38.522', '2026-06-02 12:18:38.522'),
(47, 68, 409.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_68_1780402718535', NULL, '2026-06-02 12:18:38.536', '2026-06-02 12:18:38.536'),
(48, 69, 873.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_69_1780402718543', NULL, '2026-06-02 12:18:38.545', '2026-06-02 12:18:38.545'),
(49, 70, 829.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_70_1780402718553', NULL, '2026-06-02 12:18:38.554', '2026-06-02 12:18:38.554'),
(50, 71, 255.00, 'DEPOSIT', 'COMPLETED', 'BANK_TRANSFER', 'TXN_71_1780402718564', NULL, '2026-06-02 12:18:38.565', '2026-06-02 12:18:38.565');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giao_dich_vi_gioi_thieu`
--

CREATE TABLE `giao_dich_vi_gioi_thieu` (
  `ma_giao_dich` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `loai_giao_dich` varchar(20) NOT NULL,
  `loai_nguon_giao_dich` varchar(20) DEFAULT NULL,
  `ma_nguon_giao_dich` int(11) DEFAULT NULL,
  `chieu_giao_dich` varchar(6) NOT NULL,
  `so_tien` decimal(12,2) NOT NULL,
  `so_du_sau_giao_dich` decimal(12,2) NOT NULL,
  `trang_thai` varchar(12) NOT NULL DEFAULT 'COMPLETED',
  `mo_ta` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `ma_gio_hang` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) DEFAULT NULL,
  `ma_khach_vang_lai` varchar(191) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_hong_gioi_thieu`
--

CREATE TABLE `hoa_hong_gioi_thieu` (
  `ma_hoa_hong` int(11) NOT NULL,
  `ma_nguoi_gioi_thieu` int(11) NOT NULL,
  `ma_nguoi_duoc_gioi_thieu` int(11) NOT NULL,
  `ma_don_hang` int(11) NOT NULL,
  `ty_le_hoa_hong` decimal(5,4) NOT NULL,
  `so_tien_goc` decimal(12,2) NOT NULL,
  `so_tien_hoa_hong` decimal(12,2) NOT NULL,
  `trang_thai` varchar(12) NOT NULL DEFAULT 'PENDING',
  `giu_den_ngay` datetime(3) DEFAULT NULL,
  `ngay_kha_dung` datetime(3) DEFAULT NULL,
  `ly_do_huy` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_hong_gioi_thieu`
--

INSERT INTO `hoa_hong_gioi_thieu` (`ma_hoa_hong`, `ma_nguoi_gioi_thieu`, `ma_nguoi_duoc_gioi_thieu`, `ma_don_hang`, `ty_le_hoa_hong`, `so_tien_goc`, `so_tien_hoa_hong`, `trang_thai`, `giu_den_ngay`, `ngay_kha_dung`, `ly_do_huy`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 2, 6, 8, 0.1000, 67.96, 6.80, 'AVAILABLE', NULL, NULL, NULL, '2026-05-25 17:58:21.704', '2026-05-31 14:42:45.198'),
(2, 2, 7, 9, 0.1000, 76.95, 7.69, 'PENDING', NULL, NULL, NULL, '2026-05-26 09:01:10.273', '2026-05-31 14:42:45.203'),
(3, 2, 8, 10, 0.1000, 87.94, 8.79, 'PENDING', NULL, NULL, NULL, '2026-05-30 09:54:01.395', '2026-05-31 14:42:45.206'),
(4, 2, 9, 11, 0.1000, 28.99, 2.90, 'PENDING', NULL, NULL, NULL, '2026-05-26 16:11:40.287', '2026-05-31 14:42:45.208');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoi_dap_san_pham`
--

CREATE TABLE `hoi_dap_san_pham` (
  `ma_hoi_dap` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `cau_hoi` text NOT NULL,
  `cau_tra_loi` text DEFAULT NULL,
  `cong_khai` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_so_gioi_thieu`
--

CREATE TABLE `ho_so_gioi_thieu` (
  `ma_ho_so` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_gioi_thieu_tuy_chinh` varchar(10) DEFAULT NULL,
  `ma_gioi_thieu_he_thong` varchar(12) NOT NULL,
  `xac_thuc_so_dien_thoai` tinyint(1) NOT NULL DEFAULT 0,
  `so_lan_doi_ma` int(11) NOT NULL DEFAULT 0,
  `tong_so_loi_moi` int(11) NOT NULL DEFAULT 0,
  `loi_moi_hop_le` int(11) NOT NULL DEFAULT 0,
  `so_du_cho_xu_ly` decimal(12,2) NOT NULL DEFAULT 0.00,
  `so_du_kha_dung` decimal(12,2) NOT NULL DEFAULT 0.00,
  `so_du_da_rut` decimal(12,2) NOT NULL DEFAULT 0.00,
  `so_du_da_chuyen_doi` decimal(12,2) NOT NULL DEFAULT 0.00,
  `cap_bac` varchar(20) NOT NULL DEFAULT 'MEMBER',
  `diem_gian_lan` int(11) NOT NULL DEFAULT 0,
  `bi_khoa` tinyint(1) NOT NULL DEFAULT 0,
  `ly_do_khoa` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ho_so_gioi_thieu`
--

INSERT INTO `ho_so_gioi_thieu` (`ma_ho_so`, `ma_nguoi_dung`, `ma_gioi_thieu_tuy_chinh`, `ma_gioi_thieu_he_thong`, `xac_thuc_so_dien_thoai`, `so_lan_doi_ma`, `tong_so_loi_moi`, `loi_moi_hop_le`, `so_du_cho_xu_ly`, `so_du_kha_dung`, `so_du_da_rut`, `so_du_da_chuyen_doi`, `cap_bac`, `diem_gian_lan`, `bi_khoa`, `ly_do_khoa`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 2, 'VUDEV05', 'REF2LIKEFOOD', 0, 0, 3, 2, 50.00, 120.00, 80.00, 20.00, 'GOLD', 0, 0, NULL, '2026-05-31 14:42:45.179', '2026-05-31 14:42:45.179'),
(2, 3, NULL, 'REF3LIKEFOOD', 0, 0, 4, 3, 70.00, 170.00, 80.00, 20.00, 'SILVER', 0, 0, NULL, '2026-05-31 14:42:45.185', '2026-05-31 14:42:45.185'),
(3, 4, NULL, 'REF4LIKEFOOD', 0, 0, 5, 4, 90.00, 220.00, 80.00, 20.00, 'SILVER', 0, 0, NULL, '2026-05-31 14:42:45.187', '2026-05-31 14:42:45.187'),
(4, 5, NULL, 'REF5LIKEFOOD', 0, 0, 6, 5, 110.00, 270.00, 80.00, 20.00, 'SILVER', 0, 0, NULL, '2026-05-31 14:42:45.189', '2026-05-31 14:42:45.189'),
(5, 1, NULL, '6XH58ASS', 0, 0, 0, 0, 0.00, 0.00, 0.00, 0.00, 'MEMBER', 0, 0, NULL, '2026-06-03 04:45:11.907', '2026-06-03 04:45:11.907');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khung_trang_chu`
--

CREATE TABLE `khung_trang_chu` (
  `ma_section` int(11) NOT NULL,
  `khoa_section` varchar(100) NOT NULL,
  `tieu_de` varchar(255) DEFAULT NULL,
  `phu_de` varchar(500) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `cau_hinh` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cau_hinh`)),
  `loai_section` varchar(50) NOT NULL DEFAULT 'grid',
  `kich_hoat` tinyint(1) NOT NULL DEFAULT 1,
  `vi_tri` int(11) NOT NULL DEFAULT 0,
  `gioi_han_hien_thi` int(11) NOT NULL DEFAULT 10,
  `thoi_gian_bat_dau` datetime(3) DEFAULT NULL,
  `thoi_gian_ket_thuc` datetime(3) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kien_thuc_ai`
--

CREATE TABLE `kien_thuc_ai` (
  `ma_kien_thuc` int(11) NOT NULL,
  `danh_muc` varchar(191) NOT NULL,
  `cau_hoi` text DEFAULT NULL,
  `cau_tra_loi` longtext NOT NULL,
  `tu_khoa` varchar(191) DEFAULT NULL,
  `ngon_ngu` varchar(191) NOT NULL DEFAULT 'vi',
  `thu_tu_uu_tien` int(11) NOT NULL DEFAULT 0,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kien_thuc_ai`
--

INSERT INTO `kien_thuc_ai` (`ma_kien_thuc`, `danh_muc`, `cau_hoi`, `cau_tra_loi`, `tu_khoa`, `ngon_ngu`, `thu_tu_uu_tien`, `dang_hoat_dong`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'faq', 'LIKEFOOD có giao hàng toàn quốc Mỹ không?', 'Có, LIKEFOOD giao hàng đến tất cả 50 bang của Hoa Kỳ (bao gồm cả Alaska và Hawaii). Thời gian giao hàng trung bình từ 3-5 ngày làm việc.', 'giao hang, van chuyen, ship, bang, alaska, hawaii, shipping', 'vi', 8, 1, '2026-05-31 14:55:43.003', '2026-05-31 14:55:43.003'),
(2, 'faq', 'Does LIKEFOOD ship nationwide in the US?', 'Yes, LIKEFOOD ships to all 50 US states including Alaska and Hawaii. The average shipping time is 3-5 business days.', 'shipping, delivery, state, alaska, hawaii, nationwide', 'en', 8, 1, '2026-05-31 14:55:43.007', '2026-05-31 14:55:43.007'),
(3, 'faq', 'Làm thế nào để được miễn phí vận chuyển?', 'LIKEFOOD miễn phí vận chuyển tiêu chuẩn cho tất cả các đơn hàng có giá trị từ $150 trở lên. Các đơn hàng dưới $150 sẽ áp dụng phí ship cố định là $15.', 'mien phi ship, freeship, phi van chuyen, phi ship, free shipping', 'vi', 9, 1, '2026-05-31 14:55:43.008', '2026-05-31 14:55:43.008'),
(4, 'product', 'Tôm khô Cà Mau có bị tẩm phẩm màu không?', 'Tuyệt đối không! Tôm khô Cà Mau loại 1 tại LIKEFOOD được làm từ tôm đất tự nhiên, luộc và phơi khô thủ công. Màu đỏ hồng đặc trưng là màu tự nhiên của tôm đất sau khi luộc chín, không hề sử dụng phẩm màu hay chất bảo quản hóa học.', 'tom kho, ca mau, pham mau, hoa chat, mau tu nhien, chat bao quan', 'vi', 7, 1, '2026-05-31 14:55:43.010', '2026-05-31 14:55:43.010'),
(5, 'product', 'Are the dried shrimps artificially colored?', 'Absolutely not! Our premium Ca Mau dried shrimps are made from 100% natural wild-caught shrimps, boiled and sun-dried using traditional methods. The bright red-orange color is completely natural from the shrimp itself, with no artificial coloring or preservatives.', 'dried shrimp, coloring, artificial, chemicals, preservative', 'en', 7, 1, '2026-05-31 14:55:43.012', '2026-05-31 14:55:43.012'),
(6, 'product', 'Hạt điều Bình Phước có tốt cho người ăn kiêng không?', 'Có! Hạt điều Bình Phước rang muối của chúng tôi là nguồn cung cấp dồi dào chất béo không bão hòa tốt cho tim mạch, protein thực vật và chất xơ. Sản phẩm được rang củi khô, ít muối, rất phù hợp cho thực đơn ăn kiêng, Keto hoặc Eat Clean.', 'hat dieu, binh phuoc, an kieng, keto, eat clean, giam can', 'vi', 6, 1, '2026-05-31 14:55:43.013', '2026-05-31 14:55:43.013'),
(7, 'shipping', 'Khi nào tôi nhận được đơn hàng?', 'Đơn hàng của bạn sẽ được xử lý trong vòng 24 giờ. Thời gian giao hàng tiêu chuẩn là 3-5 ngày làm việc. Nếu chọn giao hàng hỏa tốc (Express Shipping), bạn sẽ nhận được sau 1-2 ngày làm việc.', 'khi nao nhan, thoi gian ship, giao hang bao lau, delivery time', 'vi', 7, 1, '2026-05-31 14:55:43.015', '2026-05-31 14:55:43.015'),
(8, 'shipping', 'Tôi có thể theo dõi đơn hàng (tracking) ở đâu?', 'Sau khi đơn hàng được gửi đi, hệ thống sẽ tự động gửi email kèm mã tracking (UPS/USPS/FedEx). Bạn có thể bấm vào link trong email hoặc truy cập phần \'Lịch sử mua hàng\' trên website để kiểm tra hành trình đơn hàng.', 'tracking, theo doi don hang, ma tracking, van don, tracking number', 'vi', 8, 1, '2026-05-31 14:55:43.016', '2026-05-31 14:55:43.016'),
(9, 'payment', 'LIKEFOOD hỗ trợ những phương thức thanh toán nào?', 'Chúng tôi hỗ trợ thanh toán an toàn qua thẻ tín dụng/thẻ ghi nợ (Visa, Mastercard, Amex, Discover) thông qua cổng Stripe, cùng với Apple Pay, Google Pay, và ví điện tử PayPal.', 'thanh toan, credit card, stripe, paypal, mua hang, payment methods', 'vi', 9, 1, '2026-05-31 14:55:43.019', '2026-05-31 14:55:43.019'),
(10, 'payment', 'What payment methods do you accept?', 'We support secure payments via credit/debit cards (Visa, Mastercard, Amex, Discover) processed by Stripe, Apple Pay, Google Pay, and PayPal.', 'payment, card, stripe, paypal, checkout, apple pay, google pay', 'en', 9, 1, '2026-05-31 14:55:43.022', '2026-05-31 14:55:43.022'),
(11, 'return', 'Chính sách đổi trả hàng như thế nào?', 'Do tính chất là thực phẩm đặc sản, LIKEFOOD chấp nhận đổi trả hoặc hoàn tiền 100% trong vòng 7 ngày kể từ khi nhận hàng đối với các sản phẩm bị lỗi do nhà sản xuất, hư hỏng trong quá trình vận chuyển hoặc không đúng mô tả. Vui lòng chụp ảnh sản phẩm lỗi và gửi cho bộ phận hỗ trợ khách hàng.', 'doi tra, hoan tien, tra hang, hong, hu, loi san pham, return policy', 'vi', 9, 1, '2026-05-31 14:55:43.023', '2026-05-31 14:55:43.023'),
(12, 'return', 'What is your return and refund policy?', 'Since our products are food items, we accept returns or 100% refunds within 7 days of delivery for products that are defective, damaged during transit, or not as described. Please take a photo of the damaged items and contact our support team.', 'return, refund, exchange, damaged, refund policy', 'en', 9, 1, '2026-05-31 14:55:43.025', '2026-05-31 14:55:43.025'),
(13, 'promotion', 'Làm thế nào để sử dụng mã giảm giá?', 'Tại bước thanh toán (Checkout), bạn nhập mã giảm giá vào ô \'Mã giảm giá/Coupon code\' rồi nhấn \'Áp dụng\'. Hệ thống sẽ tự động khấu trừ số tiền giảm giá vào tổng giá trị đơn hàng trước khi tiến hành thanh toán.', 'ma giam gia, coupon, voucher, nhap ma, khuyen mai, discount', 'vi', 8, 1, '2026-05-31 14:55:43.027', '2026-05-31 14:55:43.027'),
(14, 'membership', 'Chính sách tích lũy điểm thưởng như thế nào?', 'Mỗi $1 chi tiêu tại LIKEFOOD sẽ được quy đổi thành 1 điểm tích lũy. Bạn cũng có thể nhận thêm điểm bằng cách điểm danh hàng ngày (check-in) hoặc mời bạn bè mua hàng. Điểm tích lũy có thể quy đổi thành voucher giảm giá trực tiếp cho các đơn hàng tiếp theo.', 'tich diem, diem thuong, doi diem, check in, diem danh, loyalty points', 'vi', 7, 1, '2026-05-31 14:55:43.028', '2026-05-31 14:55:43.028'),
(15, 'bulk', 'Tôi muốn mua sỉ đặc sản làm quà biếu số lượng lớn?', 'LIKEFOOD có chính sách chiết khấu cực kỳ hấp dẫn từ 10% - 25% cho các đơn hàng sỉ (đại lý, doanh nghiệp mua làm quà tặng dịp Tết). Vui lòng để lại tin nhắn trong trang \'Liên hệ\' hoặc email đến sales@likefood.com để nhận bảng báo giá chi tiết.', 'mua si, si, gia si, qua tet, doanh nghiep, chiet khau, wholesale', 'vi', 8, 1, '2026-05-31 14:55:43.030', '2026-05-31 14:55:43.030'),
(16, 'bulk', 'Do you offer wholesale prices for bulk orders?', 'Yes, we offer attractive discounts from 10% to 25% for bulk orders (corporate gifts, wholesale buyers). Please contact us via our Contact page or email sales@likefood.com for a detailed quote.', 'wholesale, bulk, discount, corporate gift, wholesale pricing', 'en', 8, 1, '2026-05-31 14:55:43.031', '2026-05-31 14:55:43.031'),
(17, 'storage', 'Cách bảo quản mực khô và tôm khô tốt nhất?', 'Để giữ hương vị thơm ngon nhất, bạn nên bọc kín mực khô hoặc tôm khô trong túi nilon hoặc hút chân không, sau đó bảo quản trong ngăn đá tủ lạnh. Điều này giúp ngăn hải sản khô bị rút hết độ ẩm và giữ chất lượng lên đến 6-12 tháng mà không bị mốc.', 'bao quan, muc kho, tom kho, dong da, ngan dong, bao quan do kho', 'vi', 7, 1, '2026-05-31 14:55:43.033', '2026-05-31 14:55:43.033'),
(18, 'origin', 'Đặc sản của LIKEFOOD có nguồn gốc từ đâu?', 'Tất cả các sản phẩm đặc sản của chúng tôi đều được tuyển chọn trực tiếp từ các làng nghề truyền thống nổi tiếng nhất Việt Nam: tôm khô và cá sặc từ Cà Mau, mực khô từ Phú Quốc, xoài dẻo từ Cam Ranh, trà từ Thái Nguyên, bánh pía từ Sóc Trăng. Toàn bộ đều đạt tiêu chuẩn vệ sinh an toàn thực phẩm.', 'nguon goc, xuat xu, san pham tu dau, chinh goc, lang nghe', 'vi', 8, 1, '2026-05-31 14:55:43.035', '2026-05-31 14:55:43.035');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_dang_nhap`
--

CREATE TABLE `lich_su_dang_nhap` (
  `ma_lich_su_dang_nhap` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `dia_chi_ip` varchar(64) DEFAULT NULL,
  `thiet_bi` text DEFAULT NULL,
  `quoc_gia` varchar(64) DEFAULT NULL,
  `thanh_pho` varchar(64) DEFAULT NULL,
  `dang_ngo` tinyint(1) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_dang_nhap`
--

INSERT INTO `lich_su_dang_nhap` (`ma_lich_su_dang_nhap`, `ma_nguoi_dung`, `dia_chi_ip`, `thiet_bi`, `quoc_gia`, `thanh_pho`, `dang_ngo`, `ngay_tao`) VALUES
(4, 2, '103.28.251.10', 'Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0', 'Vietnam', 'Hanoi', 1, '2026-05-21 08:28:28.586'),
(5, 3, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-17 23:14:35.567'),
(6, 4, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-24 20:14:10.026'),
(7, 5, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-20 17:40:43.997'),
(8, 6, '73.189.200.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'San Jose', 0, '2026-05-23 14:18:29.833'),
(9, 7, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-26 10:17:02.237'),
(10, 8, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-27 23:30:14.643'),
(11, 9, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-29 15:41:20.226'),
(12, 10, '45.138.16.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1', 'Russia', 'Moscow', 1, '2026-05-17 03:38:36.623'),
(13, 11, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-27 11:58:45.318'),
(14, 12, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-18 01:52:53.830'),
(15, 13, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-19 19:27:12.279'),
(16, 14, '73.189.200.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'San Jose', 0, '2026-05-20 13:26:59.833'),
(17, 15, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-30 07:00:57.576'),
(18, 16, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-31 01:15:40.264'),
(19, 17, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-24 02:41:19.049'),
(20, 18, '185.220.101.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', 'Germany', 'Frankfurt', 1, '2026-05-23 16:28:16.757'),
(21, 19, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-22 04:32:17.185'),
(22, 20, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-23 19:19:09.594'),
(23, 21, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-19 00:41:34.927'),
(24, 2, '73.189.200.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'San Jose', 0, '2026-05-16 18:47:45.173'),
(25, 3, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-25 06:10:55.720'),
(26, 4, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-23 15:22:42.853'),
(27, 5, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-22 19:19:52.514'),
(28, 6, '103.28.251.10', 'Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0', 'Vietnam', 'Hanoi', 1, '2026-05-17 10:06:36.772'),
(29, 7, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-31 09:27:25.676'),
(30, 8, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-24 05:44:36.835'),
(31, 9, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-18 13:13:28.003'),
(32, 10, '73.189.200.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'San Jose', 0, '2026-05-29 08:59:18.281'),
(33, 11, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-21 02:36:38.978'),
(34, 12, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-23 11:56:15.601'),
(35, 13, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-21 20:15:23.202'),
(36, 14, '45.138.16.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1', 'Russia', 'Moscow', 1, '2026-05-26 03:51:20.611'),
(37, 15, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-29 21:35:11.703'),
(38, 16, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-22 17:55:20.871'),
(39, 17, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-20 03:15:19.283'),
(40, 18, '73.189.200.45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'San Jose', 0, '2026-05-24 22:26:11.403'),
(41, 19, '172.56.21.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', 'United States', 'Houston', 0, '2026-05-27 01:34:23.785'),
(42, 20, '98.35.180.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'United States', 'Seattle', 0, '2026-05-30 08:28:54.774'),
(43, 21, '76.102.12.98', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15', 'United States', 'San Francisco', 0, '2026-05-21 06:54:12.450'),
(44, 22, '192.168.1.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.010'),
(45, 22, '192.168.1.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.010'),
(46, 22, '192.168.1.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.010'),
(47, 23, '192.168.1.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.034'),
(48, 23, '192.168.1.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.034'),
(49, 23, '192.168.1.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.034'),
(50, 24, '192.168.1.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.043'),
(51, 24, '192.168.1.143', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.043'),
(52, 24, '192.168.1.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.043'),
(53, 25, '192.168.1.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.053'),
(54, 25, '192.168.1.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.053'),
(55, 25, '192.168.1.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.053'),
(56, 26, '192.168.1.249', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.066'),
(57, 26, '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.066'),
(58, 26, '192.168.1.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.066'),
(59, 27, '192.168.1.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.077'),
(60, 27, '192.168.1.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.077'),
(61, 27, '192.168.1.182', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.077'),
(62, 28, '192.168.1.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.091'),
(63, 28, '192.168.1.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.091'),
(64, 28, '192.168.1.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.091'),
(65, 29, '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.100'),
(66, 29, '192.168.1.173', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.100'),
(67, 29, '192.168.1.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.100'),
(68, 30, '192.168.1.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.108'),
(69, 30, '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.108'),
(70, 30, '192.168.1.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.108'),
(71, 31, '192.168.1.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.117'),
(72, 31, '192.168.1.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.117'),
(73, 31, '192.168.1.123', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.117'),
(74, 32, '192.168.1.244', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.128'),
(75, 32, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.128'),
(76, 32, '192.168.1.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.128'),
(77, 33, '192.168.1.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.137'),
(78, 33, '192.168.1.240', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.137'),
(79, 33, '192.168.1.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.137'),
(80, 34, '192.168.1.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.150'),
(81, 34, '192.168.1.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.150'),
(82, 34, '192.168.1.119', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.150'),
(83, 35, '192.168.1.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.158'),
(84, 35, '192.168.1.128', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.158'),
(85, 35, '192.168.1.188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.158'),
(86, 36, '192.168.1.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.170'),
(87, 36, '192.168.1.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.170'),
(88, 36, '192.168.1.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.170'),
(89, 37, '192.168.1.161', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.178'),
(90, 37, '192.168.1.236', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.178'),
(91, 37, '192.168.1.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.178'),
(92, 38, '192.168.1.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.190'),
(93, 38, '192.168.1.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.190'),
(94, 38, '192.168.1.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.190'),
(95, 39, '192.168.1.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.198'),
(96, 39, '192.168.1.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.198'),
(97, 39, '192.168.1.115', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.198'),
(98, 40, '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.208'),
(99, 40, '192.168.1.225', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.208'),
(100, 40, '192.168.1.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.208'),
(101, 41, '192.168.1.52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.219'),
(102, 41, '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.219'),
(103, 41, '192.168.1.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.219'),
(104, 42, '192.168.1.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.227'),
(105, 42, '192.168.1.252', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.227'),
(106, 42, '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.227'),
(107, 43, '192.168.1.191', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.234'),
(108, 43, '192.168.1.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.234'),
(109, 43, '192.168.1.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.234'),
(110, 44, '192.168.1.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.242'),
(111, 44, '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.242'),
(112, 44, '192.168.1.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.242'),
(113, 45, '192.168.1.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.253'),
(114, 45, '192.168.1.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.253'),
(115, 45, '192.168.1.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.253'),
(116, 46, '192.168.1.188', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.265'),
(117, 46, '192.168.1.151', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.265'),
(118, 46, '192.168.1.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.265'),
(119, 47, '192.168.1.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.280'),
(120, 47, '192.168.1.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.280'),
(121, 47, '192.168.1.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.280'),
(122, 48, '192.168.1.113', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.288'),
(123, 48, '192.168.1.30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.288'),
(124, 48, '192.168.1.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.288'),
(125, 49, '192.168.1.178', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.302'),
(126, 49, '192.168.1.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.302'),
(127, 49, '192.168.1.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.302'),
(128, 50, '192.168.1.97', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.318'),
(129, 50, '192.168.1.54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.318'),
(130, 50, '192.168.1.150', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.318'),
(131, 51, '192.168.1.26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.328'),
(132, 51, '192.168.1.8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.328'),
(133, 51, '192.168.1.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.328'),
(134, 52, '192.168.1.81', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.338'),
(135, 52, '192.168.1.57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.338'),
(136, 52, '192.168.1.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.338'),
(137, 53, '192.168.1.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.351'),
(138, 53, '192.168.1.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.351'),
(139, 53, '192.168.1.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.351'),
(140, 54, '192.168.1.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.370'),
(141, 54, '192.168.1.93', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.370'),
(142, 54, '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.370'),
(143, 55, '192.168.1.186', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.387'),
(144, 55, '192.168.1.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.387'),
(145, 55, '192.168.1.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.387'),
(146, 56, '192.168.1.43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.398'),
(147, 56, '192.168.1.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.398'),
(148, 56, '192.168.1.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.398'),
(149, 57, '192.168.1.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.410'),
(150, 57, '192.168.1.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.410'),
(151, 57, '192.168.1.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.410'),
(152, 58, '192.168.1.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.419'),
(153, 58, '192.168.1.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.419'),
(154, 58, '192.168.1.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.419'),
(155, 59, '192.168.1.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.429'),
(156, 59, '192.168.1.55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.429'),
(157, 59, '192.168.1.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.429'),
(158, 60, '192.168.1.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.443'),
(159, 60, '192.168.1.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.443'),
(160, 60, '192.168.1.95', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.443'),
(161, 61, '192.168.1.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.455'),
(162, 61, '192.168.1.65', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.455'),
(163, 61, '192.168.1.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.455'),
(164, 62, '192.168.1.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.463'),
(165, 62, '192.168.1.72', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.463'),
(166, 62, '192.168.1.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.463'),
(167, 63, '192.168.1.208', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.476'),
(168, 63, '192.168.1.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.476'),
(169, 63, '192.168.1.225', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.476'),
(170, 64, '192.168.1.16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.489'),
(171, 64, '192.168.1.62', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.489'),
(172, 64, '192.168.1.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.489'),
(173, 65, '192.168.1.25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.498'),
(174, 65, '192.168.1.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.498'),
(175, 65, '192.168.1.224', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.498'),
(176, 66, '192.168.1.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.508'),
(177, 66, '192.168.1.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.508'),
(178, 66, '192.168.1.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.508'),
(179, 67, '192.168.1.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.519'),
(180, 67, '192.168.1.32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.519'),
(181, 67, '192.168.1.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.519'),
(182, 68, '192.168.1.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.529'),
(183, 68, '192.168.1.138', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.529'),
(184, 68, '192.168.1.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.529'),
(185, 69, '192.168.1.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.540'),
(186, 69, '192.168.1.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.540'),
(187, 69, '192.168.1.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.540'),
(188, 70, '192.168.1.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.549'),
(189, 70, '192.168.1.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.549'),
(190, 70, '192.168.1.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.549'),
(191, 71, '192.168.1.7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.559'),
(192, 71, '192.168.1.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.559'),
(193, 71, '192.168.1.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 'Vietnam', 'Ho Chi Minh City', 0, '2026-06-02 12:18:38.559'),
(194, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, NULL, 0, '2026-06-02 13:35:17.098'),
(195, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, NULL, 0, '2026-06-03 04:55:20.187'),
(196, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', NULL, NULL, 0, '2026-06-03 05:11:07.793');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_hoi_thoai_ai`
--

CREATE TABLE `lich_su_hoi_thoai_ai` (
  `ma_lich_su` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) DEFAULT NULL,
  `ma_phien_lam_viec` varchar(191) NOT NULL,
  `vai_tro` varchar(191) NOT NULL,
  `noi_dung_tin_nhan` longtext NOT NULL,
  `muc_dich` varchar(191) DEFAULT NULL,
  `do_tin_cay` double DEFAULT NULL,
  `phan_hoi` varchar(191) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_hoi_thoai_ai`
--

INSERT INTO `lich_su_hoi_thoai_ai` (`ma_lich_su`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `vai_tro`, `noi_dung_tin_nhan`, `muc_dich`, `do_tin_cay`, `phan_hoi`, `ngay_tao`) VALUES
(1, 2, 'sess_vxogdqkw6l', 'user', 'Cho tôi tìm hiểu về các loại cá khô của shop', 'suggest_products', 0.8881704000810015, NULL, '2026-05-27 14:38:41.265'),
(2, 2, 'sess_vxogdqkw6l', 'model', 'Chào bạn, bên mình có các sản phẩm cá khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'suggest_products', 1, NULL, '2026-05-27 14:38:42.765'),
(3, 3, 'sess_9sa4kneneja', 'user', 'Cho tôi tìm hiểu về các loại tôm khô của shop', 'track_order', 0.9281880257699089, NULL, '2026-05-26 02:00:06.924'),
(4, 3, 'sess_9sa4kneneja', 'model', 'Chào bạn, bên mình có các sản phẩm tôm khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'track_order', 1, NULL, '2026-05-26 02:00:08.424'),
(5, 4, 'sess_bpdoqh0jrov', 'user', 'Cho tôi tìm hiểu về các loại mực khô của shop', 'shipping_fee', 0.9078734337966744, NULL, '2026-05-29 18:03:05.995'),
(6, 4, 'sess_bpdoqh0jrov', 'model', 'Chào bạn, bên mình có các sản phẩm mực khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'shipping_fee', 1, NULL, '2026-05-29 18:03:07.495'),
(7, 5, 'sess_2ysiaxiq12v', 'user', 'Cho tôi tìm hiểu về các loại khô bò của shop', 'gift_consultation', 0.8970601182269824, NULL, '2026-05-26 13:24:56.268'),
(8, 5, 'sess_2ysiaxiq12v', 'model', 'Chào bạn, bên mình có các sản phẩm khô bò cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'gift_consultation', 1, NULL, '2026-05-26 13:24:57.768'),
(9, 6, 'sess_xi2g2pc4j5n', 'user', 'Cho tôi tìm hiểu về các loại xoài sấy của shop', 'general_qa', 0.9112973725511675, NULL, '2026-05-28 02:38:51.830'),
(10, 6, 'sess_xi2g2pc4j5n', 'model', 'Chào bạn, bên mình có các sản phẩm xoài sấy cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'general_qa', 1, NULL, '2026-05-28 02:38:53.330'),
(11, 7, 'sess_rjtotm8thgc', 'user', 'Cho tôi tìm hiểu về các loại mứt dừa của shop', 'suggest_products', 0.9366951094805346, NULL, '2026-05-21 15:43:29.860'),
(12, 7, 'sess_rjtotm8thgc', 'model', 'Chào bạn, bên mình có các sản phẩm mứt dừa cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'suggest_products', 1, NULL, '2026-05-21 15:43:31.360'),
(13, 8, 'sess_x9p6gn2v4nb', 'user', 'Cho tôi tìm hiểu về các loại trà sen của shop', 'track_order', 0.9795751378522646, NULL, '2026-05-21 17:27:21.810'),
(14, 8, 'sess_x9p6gn2v4nb', 'model', 'Chào bạn, bên mình có các sản phẩm trà sen cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'track_order', 1, NULL, '2026-05-21 17:27:23.310'),
(15, 9, 'sess_rmbl7n2xqr', 'user', 'Cho tôi tìm hiểu về các loại nước mắm của shop', 'shipping_fee', 0.8751741028042627, NULL, '2026-05-27 00:10:15.088'),
(16, 9, 'sess_rmbl7n2xqr', 'model', 'Chào bạn, bên mình có các sản phẩm nước mắm cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'shipping_fee', 1, NULL, '2026-05-27 00:10:16.588'),
(17, 10, 'sess_zo2cpz215ei', 'user', 'Cho tôi tìm hiểu về các loại bánh tráng của shop', 'gift_consultation', 0.8587167763356662, NULL, '2026-05-27 11:48:05.586'),
(18, 10, 'sess_zo2cpz215ei', 'model', 'Chào bạn, bên mình có các sản phẩm bánh tráng cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'gift_consultation', 1, NULL, '2026-05-27 11:48:07.086'),
(19, 11, 'sess_1w9ctgwuubsg', 'user', 'Cho tôi tìm hiểu về các loại sa tế của shop', 'general_qa', 0.9536054048434011, NULL, '2026-05-26 22:16:23.037'),
(20, 11, 'sess_1w9ctgwuubsg', 'model', 'Chào bạn, bên mình có các sản phẩm sa tế cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'general_qa', 1, NULL, '2026-05-26 22:16:24.537'),
(21, NULL, 'sess_guest_bqpombm5w69', 'user', 'Cho tôi tìm hiểu về các loại cá lóc khô của shop', 'suggest_products', 0.9014144521308844, NULL, '2026-05-25 17:19:41.532'),
(22, NULL, 'sess_guest_bqpombm5w69', 'model', 'Chào bạn, bên mình có các sản phẩm cá lóc khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'suggest_products', 1, NULL, '2026-05-25 17:19:43.032'),
(23, NULL, 'sess_guest_zvws5ca2x3e', 'user', 'Cho tôi tìm hiểu về các loại khô cá sặc của shop', 'track_order', 0.9575894557792173, NULL, '2026-05-25 09:33:40.904'),
(24, NULL, 'sess_guest_zvws5ca2x3e', 'model', 'Chào bạn, bên mình có các sản phẩm khô cá sặc cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'track_order', 1, NULL, '2026-05-25 09:33:42.404'),
(25, NULL, 'sess_guest_k295ytnetmb', 'user', 'Cho tôi tìm hiểu về các loại cá khô của shop', 'shipping_fee', 0.9317029956050191, NULL, '2026-05-30 05:06:20.353'),
(26, NULL, 'sess_guest_k295ytnetmb', 'model', 'Chào bạn, bên mình có các sản phẩm cá khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'shipping_fee', 1, NULL, '2026-05-30 05:06:21.853'),
(27, NULL, 'sess_guest_b8yssstwmhh', 'user', 'Cho tôi tìm hiểu về các loại tôm khô của shop', 'gift_consultation', 0.9564185489985242, NULL, '2026-05-23 06:37:28.734'),
(28, NULL, 'sess_guest_b8yssstwmhh', 'model', 'Chào bạn, bên mình có các sản phẩm tôm khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'gift_consultation', 1, NULL, '2026-05-23 06:37:30.234'),
(29, NULL, 'sess_guest_g40lkf5e3i', 'user', 'Cho tôi tìm hiểu về các loại mực khô của shop', 'general_qa', 0.9132881864417656, NULL, '2026-05-22 13:49:22.145'),
(30, NULL, 'sess_guest_g40lkf5e3i', 'model', 'Chào bạn, bên mình có các sản phẩm mực khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'general_qa', 1, NULL, '2026-05-22 13:49:23.645'),
(31, 2, 'sess_vxogdqkw6l', 'user', 'Cho tôi tìm hiểu về các loại khô bò của shop', 'suggest_products', 0.9092854042853632, NULL, '2026-05-31 13:01:17.119'),
(32, 2, 'sess_vxogdqkw6l', 'model', 'Chào bạn, bên mình có các sản phẩm khô bò cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'suggest_products', 1, NULL, '2026-05-31 13:01:18.619'),
(33, 3, 'sess_9sa4kneneja', 'user', 'Cho tôi tìm hiểu về các loại xoài sấy của shop', 'track_order', 0.891238939263869, NULL, '2026-05-26 06:53:55.150'),
(34, 3, 'sess_9sa4kneneja', 'model', 'Chào bạn, bên mình có các sản phẩm xoài sấy cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'track_order', 1, NULL, '2026-05-26 06:53:56.650'),
(35, 4, 'sess_bpdoqh0jrov', 'user', 'Cho tôi tìm hiểu về các loại mứt dừa của shop', 'shipping_fee', 0.8656868883271238, NULL, '2026-05-26 12:40:20.905'),
(36, 4, 'sess_bpdoqh0jrov', 'model', 'Chào bạn, bên mình có các sản phẩm mứt dừa cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'shipping_fee', 1, NULL, '2026-05-26 12:40:22.405'),
(37, 5, 'sess_2ysiaxiq12v', 'user', 'Cho tôi tìm hiểu về các loại trà sen của shop', 'gift_consultation', 0.9289633305530296, NULL, '2026-05-22 00:15:57.264'),
(38, 5, 'sess_2ysiaxiq12v', 'model', 'Chào bạn, bên mình có các sản phẩm trà sen cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'gift_consultation', 1, NULL, '2026-05-22 00:15:58.764'),
(39, 6, 'sess_xi2g2pc4j5n', 'user', 'Cho tôi tìm hiểu về các loại nước mắm của shop', 'general_qa', 0.914242678096849, NULL, '2026-05-23 11:46:43.905'),
(40, 6, 'sess_xi2g2pc4j5n', 'model', 'Chào bạn, bên mình có các sản phẩm nước mắm cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'general_qa', 1, NULL, '2026-05-23 11:46:45.405'),
(41, 7, 'sess_rjtotm8thgc', 'user', 'Cho tôi tìm hiểu về các loại bánh tráng của shop', 'suggest_products', 0.9616830075344303, NULL, '2026-05-30 12:10:48.892'),
(42, 7, 'sess_rjtotm8thgc', 'model', 'Chào bạn, bên mình có các sản phẩm bánh tráng cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'suggest_products', 1, NULL, '2026-05-30 12:10:50.392'),
(43, 8, 'sess_x9p6gn2v4nb', 'user', 'Cho tôi tìm hiểu về các loại sa tế của shop', 'track_order', 0.9542675580707624, NULL, '2026-05-27 13:57:14.526'),
(44, 8, 'sess_x9p6gn2v4nb', 'model', 'Chào bạn, bên mình có các sản phẩm sa tế cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'track_order', 1, NULL, '2026-05-27 13:57:16.026'),
(45, 9, 'sess_rmbl7n2xqr', 'user', 'Cho tôi tìm hiểu về các loại cá lóc khô của shop', 'shipping_fee', 0.9018940120525788, NULL, '2026-05-22 12:20:22.883'),
(46, 9, 'sess_rmbl7n2xqr', 'model', 'Chào bạn, bên mình có các sản phẩm cá lóc khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'shipping_fee', 1, NULL, '2026-05-22 12:20:24.383'),
(47, 10, 'sess_zo2cpz215ei', 'user', 'Cho tôi tìm hiểu về các loại khô cá sặc của shop', 'gift_consultation', 0.9548071848831303, NULL, '2026-05-30 00:03:30.279'),
(48, 10, 'sess_zo2cpz215ei', 'model', 'Chào bạn, bên mình có các sản phẩm khô cá sặc cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'gift_consultation', 1, NULL, '2026-05-30 00:03:31.779'),
(49, 11, 'sess_1w9ctgwuubsg', 'user', 'Cho tôi tìm hiểu về các loại cá khô của shop', 'general_qa', 0.8927585731665753, NULL, '2026-05-22 18:51:09.262'),
(50, 11, 'sess_1w9ctgwuubsg', 'model', 'Chào bạn, bên mình có các sản phẩm cá khô cực ngon và đậm đà chính gốc Việt Nam. Bạn có thể tham khảo nhé!', 'general_qa', 1, NULL, '2026-05-22 18:51:10.762'),
(51, 2, 'feedback_session_2_0_m68h', 'feedback', '{\"type\":\"chatbot\",\"rating\":5,\"comment\":\"LIKEFOOD AI trả lời rất nhanh và gợi ý sản phẩm cực kỳ chính xác! Rất thích tính năng này.\",\"metadata\":{\"browser\":\"Chrome\",\"os\":\"Windows 11\"}}', NULL, NULL, 'positive', '2026-05-22 21:15:02.494'),
(52, 3, 'feedback_session_3_1_ozq1', 'feedback', '{\"type\":\"chatbot\",\"rating\":4,\"comment\":\"Chatbot thông minh, nhưng đôi khi trả lời hơi dài dòng một chút. Nhìn chung rất hữu ích để tìm kiếm.\",\"metadata\":{\"browser\":\"Safari\",\"os\":\"iOS\"}}', NULL, NULL, 'positive', '2026-05-30 12:03:47.215'),
(53, 4, 'feedback_session_4_2_c8zn', 'feedback', '{\"type\":\"chatbot\",\"rating\":2,\"comment\":\"AI thỉnh thoảng hiểu nhầm ý của tôi khi hỏi về phí ship sang bang khác. Cần cải thiện thêm.\",\"metadata\":{\"browser\":\"Chrome\",\"os\":\"Android\"}}', NULL, NULL, 'negative', '2026-05-22 18:27:08.722'),
(54, 5, 'feedback_session_5_3_mv1q', 'feedback', '{\"type\":\"product\",\"rating\":5,\"comment\":\"Khô cá lóc Đồng Tháp ăn rất vừa miệng, không bị quá mặn. Chất lượng đóng gói tuyệt vời.\",\"metadata\":{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\"}}', NULL, NULL, 'positive', '2026-05-27 03:32:43.107'),
(55, 6, 'feedback_session_6_4_oihq', 'feedback', '{\"type\":\"product\",\"rating\":5,\"comment\":\"Tôm khô Cà Mau loại 1 ngọt lịm, làm quà biếu cực kỳ sang trọng. Sẽ mua thêm đợt tới.\",\"metadata\":{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\"}}', NULL, NULL, 'positive', '2026-05-30 01:00:56.997'),
(56, 7, 'feedback_session_7_5_odxh', 'feedback', '{\"type\":\"product\",\"rating\":3,\"comment\":\"Nước dừa tươi ngon nhưng đóng hộp hơi ngọt so với khẩu vị của tôi. Giao hàng thì rất nhanh.\",\"metadata\":{\"productId\":103,\"productName\":\"Nước Dừa Tươi Đóng Hộp Bến Tre\"}}', NULL, NULL, 'neutral', '2026-05-22 07:39:12.362'),
(57, 8, 'feedback_session_8_6_74c8', 'feedback', '{\"type\":\"product\",\"rating\":1,\"comment\":\"Khô heo mật ong bị dai quá, bao bì khi nhận được hơi bị nhăn nheo. Đề nghị cải thiện chất lượng bao bì.\",\"metadata\":{\"productId\":81,\"productName\":\"Khô Heo Mật Ong Năm Cung\"}}', NULL, NULL, 'negative', '2026-05-29 22:59:13.041'),
(58, 9, 'feedback_session_9_7_zfnc', 'feedback', '{\"type\":\"order\",\"rating\":5,\"comment\":\"Quy trình thanh toán qua Stripe rất nhanh và bảo mật. Nhận được email xác nhận đơn hàng lập tức.\",\"metadata\":{\"paymentMethod\":\"STRIPE\",\"total\":125.5}}', NULL, NULL, 'positive', '2026-05-21 20:32:26.500'),
(59, 10, 'feedback_session_10_8_a4pl', 'feedback', '{\"type\":\"order\",\"rating\":4,\"comment\":\"Giao hàng đúng hẹn, nhân viên giao hàng lịch sự. Tuy nhiên, shop nên bổ sung thêm hình thức thanh toán Paypal.\",\"metadata\":{\"paymentMethod\":\"COD\",\"total\":45}}', NULL, NULL, 'positive', '2026-05-24 15:47:43.226'),
(60, 11, 'feedback_session_11_9_shlj', 'feedback', '{\"type\":\"order\",\"rating\":2,\"comment\":\"Tôi chọn thanh toán qua Momo nhưng hệ thống báo lỗi QR một lần đầu. Lần thứ hai mới thanh toán được.\",\"metadata\":{\"paymentMethod\":\"MOMO\",\"total\":72}}', NULL, NULL, 'negative', '2026-05-22 21:22:51.213'),
(61, 12, 'feedback_session_12_10_ndyi', 'feedback', '{\"type\":\"website\",\"rating\":5,\"comment\":\"Giao diện website cực kỳ đẹp mắt, màu sắc xanh mát mang đậm phong cách thiên nhiên và đặc sản Việt.\",\"metadata\":{\"device\":\"desktop\",\"loadTimeMs\":450}}', NULL, NULL, 'positive', '2026-05-31 07:22:04.179'),
(62, 13, 'feedback_session_13_11_xn7u', 'feedback', '{\"type\":\"website\",\"rating\":5,\"comment\":\"Trang web đặt hàng trên điện thoại di động chạy rất mượt, các nút bấm và giỏ hàng thao tác dễ dàng.\",\"metadata\":{\"device\":\"mobile\",\"loadTimeMs\":620}}', NULL, NULL, 'positive', '2026-05-21 19:15:51.683'),
(63, 14, 'feedback_session_14_12_akwj', 'feedback', '{\"type\":\"website\",\"rating\":3,\"comment\":\"Đôi khi ảnh sản phẩm tải hơi chậm khi lướt nhanh bằng 4G. Cần tối ưu thêm dung lượng hình ảnh.\",\"metadata\":{\"device\":\"mobile\",\"loadTimeMs\":1540}}', NULL, NULL, 'neutral', '2026-05-29 10:20:40.961'),
(64, 15, 'feedback_session_15_13_lvcp', 'feedback', '{\"type\":\"general\",\"rating\":5,\"comment\":\"LIKEFOOD là lựa chọn số một của tôi khi thèm hương vị quê hương tại Mỹ. Rất uy tín!\",\"metadata\":{\"isFirstTime\":false}}', NULL, NULL, 'positive', '2026-05-22 13:41:54.374'),
(65, 16, 'feedback_session_16_14_8lii', 'feedback', '{\"type\":\"general\",\"rating\":4,\"comment\":\"Dịch vụ chăm sóc khách hàng nhiệt tình, giải đáp thắc mắc qua live chat rất nhanh chóng.\",\"metadata\":{\"isFirstTime\":true}}', NULL, NULL, 'positive', '2026-05-22 19:55:08.974'),
(66, 17, 'feedback_session_17_15_xdvp', 'feedback', '{\"type\":\"general\",\"rating\":2,\"comment\":\"Tôi muốn mua số lượng sỉ lớn nhưng chưa thấy có chính sách chiết khấu rõ ràng trên trang web.\",\"metadata\":{\"isFirstTime\":false}}', NULL, NULL, 'negative', '2026-05-23 21:05:36.349'),
(67, 18, 'feedback_session_18_16_nm6w', 'feedback', '{\"type\":\"chatbot\",\"rating\":5,\"comment\":\"LIKEFOOD AI trả lời rất nhanh và gợi ý sản phẩm cực kỳ chính xác! Rất thích tính năng này.\",\"metadata\":{\"browser\":\"Chrome\",\"os\":\"Windows 11\"}}', NULL, NULL, 'positive', '2026-05-25 00:28:50.228'),
(68, 19, 'feedback_session_19_17_p62a', 'feedback', '{\"type\":\"chatbot\",\"rating\":4,\"comment\":\"Chatbot thông minh, nhưng đôi khi trả lời hơi dài dòng một chút. Nhìn chung rất hữu ích để tìm kiếm.\",\"metadata\":{\"browser\":\"Safari\",\"os\":\"iOS\"}}', NULL, NULL, 'positive', '2026-05-29 17:14:46.377'),
(69, 20, 'feedback_session_20_18_bjxz', 'feedback', '{\"type\":\"chatbot\",\"rating\":2,\"comment\":\"AI thỉnh thoảng hiểu nhầm ý của tôi khi hỏi về phí ship sang bang khác. Cần cải thiện thêm.\",\"metadata\":{\"browser\":\"Chrome\",\"os\":\"Android\"}}', NULL, NULL, 'negative', '2026-05-30 08:08:57.076'),
(70, 21, 'feedback_session_21_19_3pz6', 'feedback', '{\"type\":\"product\",\"rating\":5,\"comment\":\"Khô cá lóc Đồng Tháp ăn rất vừa miệng, không bị quá mặn. Chất lượng đóng gói tuyệt vời.\",\"metadata\":{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\"}}', NULL, NULL, 'positive', '2026-05-29 12:54:23.408');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_su_trang_thai_don_hang`
--

CREATE TABLE `lich_su_trang_thai_don_hang` (
  `ma_su_kien` int(11) NOT NULL,
  `ma_don_hang` int(11) NOT NULL,
  `trang_thai` varchar(191) NOT NULL,
  `ghi_chu` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_su_trang_thai_don_hang`
--

INSERT INTO `lich_su_trang_thai_don_hang` (`ma_su_kien`, `ma_don_hang`, `trang_thai`, `ghi_chu`, `ngay_tao`) VALUES
(1, 3, 'CONFIRMED', 'Status changed from PENDING to CONFIRMED', '2026-05-31 09:27:14.696'),
(2, 4, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-24 12:17:37.493'),
(3, 4, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-24 14:17:37.493'),
(4, 4, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-25 12:17:37.493'),
(5, 4, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-05-27 12:17:37.493'),
(6, 4, 'COMPLETED', 'Đơn hàng đã hoàn thành vòng đời phục vụ.', '2026-05-28 12:17:37.493'),
(7, 5, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-26 18:26:36.745'),
(8, 5, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-26 20:26:36.745'),
(9, 5, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-27 18:26:36.745'),
(10, 5, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-05-29 18:26:36.745'),
(11, 6, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-31 03:44:53.809'),
(12, 6, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-31 05:44:53.809'),
(13, 6, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-06-01 03:44:53.809'),
(14, 7, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-29 11:57:41.999'),
(15, 7, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-29 13:57:41.999'),
(16, 8, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-25 17:48:21.704'),
(17, 9, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-26 08:51:10.273'),
(18, 9, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-26 10:51:10.273'),
(19, 9, 'CANCELLED', 'Đơn hàng bị hủy do khách hàng thay đổi nhu cầu.', '2026-05-26 09:21:10.273'),
(20, 10, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-30 09:44:01.395'),
(21, 10, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-30 11:44:01.395'),
(22, 10, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-31 09:44:01.395'),
(23, 10, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-06-02 09:44:01.395'),
(24, 10, 'COMPLETED', 'Đơn hàng đã hoàn thành vòng đời phục vụ.', '2026-06-03 09:44:01.395'),
(25, 11, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-26 16:01:40.287'),
(26, 11, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-26 18:01:40.287'),
(27, 11, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-27 16:01:40.287'),
(28, 11, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-05-29 16:01:40.287'),
(29, 12, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-22 12:51:47.301'),
(30, 12, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-22 14:51:47.301'),
(31, 12, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-23 12:51:47.301'),
(32, 13, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-29 13:44:03.170'),
(33, 13, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-29 15:44:03.170'),
(34, 14, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-21 01:53:32.083'),
(35, 15, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-23 20:06:13.994'),
(36, 15, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-23 22:06:13.994'),
(37, 15, 'CANCELLED', 'Đơn hàng bị hủy do khách hàng thay đổi nhu cầu.', '2026-05-23 20:36:13.994'),
(38, 16, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-30 08:53:59.863'),
(39, 16, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-30 10:53:59.863'),
(40, 16, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-31 08:53:59.863'),
(41, 16, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-06-02 08:53:59.863'),
(42, 16, 'COMPLETED', 'Đơn hàng đã hoàn thành vòng đời phục vụ.', '2026-06-03 08:53:59.863'),
(43, 17, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-30 12:56:13.240'),
(44, 17, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-30 14:56:13.240'),
(45, 17, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-31 12:56:13.240'),
(46, 17, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-06-02 12:56:13.240'),
(47, 18, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-19 15:05:32.004'),
(48, 18, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-19 17:05:32.004'),
(49, 18, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-20 15:05:32.004'),
(50, 19, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-24 12:20:50.825'),
(51, 19, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-24 14:20:50.825'),
(52, 20, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-28 21:46:50.350'),
(53, 21, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-30 23:20:33.517'),
(54, 21, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-31 01:20:33.517'),
(55, 21, 'CANCELLED', 'Đơn hàng bị hủy do khách hàng thay đổi nhu cầu.', '2026-05-30 23:50:33.517'),
(56, 22, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-26 08:32:33.160'),
(57, 22, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-26 10:32:33.160'),
(58, 22, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-27 08:32:33.160'),
(59, 22, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-05-29 08:32:33.160'),
(60, 22, 'COMPLETED', 'Đơn hàng đã hoàn thành vòng đời phục vụ.', '2026-05-30 08:32:33.160'),
(61, 23, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-21 08:03:16.634'),
(62, 23, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-21 10:03:16.634'),
(63, 23, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-22 08:03:16.634'),
(64, 23, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-05-24 08:03:16.634'),
(65, 24, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-23 21:57:07.959'),
(66, 24, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-23 23:57:07.959'),
(67, 24, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-24 21:57:07.959'),
(68, 25, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-23 18:18:31.365'),
(69, 25, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-23 20:18:31.365'),
(70, 26, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-19 16:32:48.470'),
(71, 27, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-21 07:51:10.510'),
(72, 27, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-21 09:51:10.510'),
(73, 27, 'CANCELLED', 'Đơn hàng bị hủy do khách hàng thay đổi nhu cầu.', '2026-05-21 08:21:10.510'),
(74, 28, 'PENDING', 'Đơn hàng đã được đặt thành công bởi hệ thống.', '2026-05-24 19:56:21.894'),
(75, 28, 'CONFIRMED', 'Đơn hàng đã được duyệt và xác nhận thanh toán.', '2026-05-24 21:56:21.894'),
(76, 28, 'SHIPPED', 'Đơn hàng đã được gửi cho đơn vị vận chuyển hàng nhanh.', '2026-05-25 19:56:21.894'),
(77, 28, 'DELIVERED', 'Khách hàng đã nhận hàng thành công.', '2026-05-27 19:56:21.894'),
(78, 28, 'COMPLETED', 'Đơn hàng đã hoàn thành vòng đời phục vụ.', '2026-05-28 19:56:21.894'),
(79, 30, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.577'),
(80, 31, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.584'),
(81, 31, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.586'),
(82, 32, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.595'),
(83, 33, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.600'),
(84, 34, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.605'),
(85, 34, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.607'),
(86, 35, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.616'),
(87, 36, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.620'),
(88, 37, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.625'),
(89, 37, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.627'),
(90, 38, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.635'),
(91, 39, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.639'),
(92, 39, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.640'),
(93, 40, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.646'),
(94, 41, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.650'),
(95, 42, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.655'),
(96, 43, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.658'),
(97, 44, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.663'),
(98, 45, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.666'),
(99, 46, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.671'),
(100, 46, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.672'),
(101, 47, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.677'),
(102, 48, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.681'),
(103, 49, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.686'),
(104, 50, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.692'),
(105, 50, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.694'),
(106, 51, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.702'),
(107, 51, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.704'),
(108, 52, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.708'),
(109, 52, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.710'),
(110, 53, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.718'),
(111, 54, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.722'),
(112, 55, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.727'),
(113, 55, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.729'),
(114, 56, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.734'),
(115, 56, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.735'),
(116, 57, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.741'),
(117, 58, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.745'),
(118, 58, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.746'),
(119, 59, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.752'),
(120, 60, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.756'),
(121, 60, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.757'),
(122, 61, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.768'),
(123, 62, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.773'),
(124, 63, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.779'),
(125, 63, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.780'),
(126, 64, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.786'),
(127, 64, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.787'),
(128, 65, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.793'),
(129, 65, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.795'),
(130, 66, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.800'),
(131, 66, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.801'),
(132, 67, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.809'),
(133, 68, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.813'),
(134, 69, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.817'),
(135, 69, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.818'),
(136, 70, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.825'),
(137, 71, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.830'),
(138, 72, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.833'),
(139, 72, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.836'),
(140, 73, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.844'),
(141, 74, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.848'),
(142, 75, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.852'),
(143, 76, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.856'),
(144, 76, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.857'),
(145, 77, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.864'),
(146, 78, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.868'),
(147, 78, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.869'),
(148, 79, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.876'),
(149, 80, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.880'),
(150, 81, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.884'),
(151, 82, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.889'),
(152, 83, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.895'),
(153, 83, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.897'),
(154, 84, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.906'),
(155, 84, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.907'),
(156, 85, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.914'),
(157, 86, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.920'),
(158, 87, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.925'),
(159, 87, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.926'),
(160, 88, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.934'),
(161, 89, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.940'),
(162, 90, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.945'),
(163, 90, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.947'),
(164, 91, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.953'),
(165, 92, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.957'),
(166, 92, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.960'),
(167, 93, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.965'),
(168, 94, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.970'),
(169, 95, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.975'),
(170, 96, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.980'),
(171, 97, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.984'),
(172, 98, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:38.989'),
(173, 98, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:38.990'),
(174, 99, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.000'),
(175, 99, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.001'),
(176, 100, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.010'),
(177, 100, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.012'),
(178, 101, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.020'),
(179, 101, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.022'),
(180, 102, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.034'),
(181, 102, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.035'),
(182, 103, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.043'),
(183, 104, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.049'),
(184, 105, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.054'),
(185, 106, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.058'),
(186, 106, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.059'),
(187, 107, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.069'),
(188, 107, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.071'),
(189, 108, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.076'),
(190, 109, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.081'),
(191, 110, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.085'),
(192, 110, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.086'),
(193, 111, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.092'),
(194, 111, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.093'),
(195, 112, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.100'),
(196, 112, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.102'),
(197, 113, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.111'),
(198, 114, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.116'),
(199, 115, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.122'),
(200, 116, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.127'),
(201, 116, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.129'),
(202, 117, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.138'),
(203, 118, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.144'),
(204, 119, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.149'),
(205, 119, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.150'),
(206, 120, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.161'),
(207, 121, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.166'),
(208, 122, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.172'),
(209, 122, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.173'),
(210, 123, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.182'),
(211, 124, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.187'),
(212, 125, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.192'),
(213, 126, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.196'),
(214, 127, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.200'),
(215, 128, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.206'),
(216, 129, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.211'),
(217, 130, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.217'),
(218, 130, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.218'),
(219, 131, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.227'),
(220, 131, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.228'),
(221, 132, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.235'),
(222, 133, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.240'),
(223, 133, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.242'),
(224, 134, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.250'),
(225, 135, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.255'),
(226, 135, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.257'),
(227, 136, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.266'),
(228, 137, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.273'),
(229, 137, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.276'),
(230, 138, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.287'),
(231, 139, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.293'),
(232, 139, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.295'),
(233, 140, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.303'),
(234, 141, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.309'),
(235, 141, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.311'),
(236, 142, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.320'),
(237, 142, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.322'),
(238, 143, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.331'),
(239, 144, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.336'),
(240, 144, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.338'),
(241, 145, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.344'),
(242, 145, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.345'),
(243, 146, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.353'),
(244, 147, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.359'),
(245, 147, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.361'),
(246, 148, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.376'),
(247, 148, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.380'),
(248, 149, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.394'),
(249, 150, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.400'),
(250, 151, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.406'),
(251, 152, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.412'),
(252, 152, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.415'),
(253, 153, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.424'),
(254, 154, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.430'),
(255, 155, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.436'),
(256, 156, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.442'),
(257, 157, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.448'),
(258, 157, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.450'),
(259, 158, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.457'),
(260, 158, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.459'),
(261, 159, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.466'),
(262, 159, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.469'),
(263, 160, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.475'),
(264, 161, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.483'),
(265, 161, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.485'),
(266, 162, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.494'),
(267, 162, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.496'),
(268, 163, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.507'),
(269, 164, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.515'),
(270, 165, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.522'),
(271, 166, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.528'),
(272, 166, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.531'),
(273, 167, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.540'),
(274, 167, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.541'),
(275, 168, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.550'),
(276, 169, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.556'),
(277, 170, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.562'),
(278, 171, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.568'),
(279, 172, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.575'),
(280, 173, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.581'),
(281, 174, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.589'),
(282, 174, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.591'),
(283, 175, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.603'),
(284, 175, 'DELIVERED', 'Đã giao thành công', '2026-06-02 12:18:39.605'),
(285, 176, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.617'),
(286, 177, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.623'),
(287, 178, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.630'),
(288, 179, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.637'),
(289, 180, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.643'),
(290, 181, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.647'),
(291, 182, 'PENDING', 'Đơn hàng đã đặt', '2026-06-02 12:18:39.654'),
(292, 184, 'COMPLETED', 'Status changed from PENDING to COMPLETED', '2026-06-03 04:50:21.206');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ma_xac_thuc_email`
--

CREATE TABLE `ma_xac_thuc_email` (
  `ma_xac_thuc` int(11) NOT NULL,
  `danh_tinh` varchar(191) NOT NULL,
  `ma_thong_bao` varchar(191) NOT NULL,
  `ngay_het_han` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `moc_thanh_tich_gioi_thieu`
--

CREATE TABLE `moc_thanh_tich_gioi_thieu` (
  `ma_moc_thanh_tich` int(11) NOT NULL,
  `so_moc` int(11) NOT NULL,
  `loai_phan_thuong` varchar(20) NOT NULL,
  `gia_tri_phan_thuong` decimal(12,2) NOT NULL,
  `nhan_hieu` varchar(100) DEFAULT NULL,
  `nhan_hieu_en` varchar(100) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `mo_ta_en` text DEFAULT NULL,
  `cau_hinh_voucher` text DEFAULT NULL,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `thu_tu_hien_thi` int(11) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `moc_thanh_tich_gioi_thieu`
--

INSERT INTO `moc_thanh_tich_gioi_thieu` (`ma_moc_thanh_tich`, `so_moc`, `loai_phan_thuong`, `gia_tri_phan_thuong`, `nhan_hieu`, `nhan_hieu_en`, `mo_ta`, `mo_ta_en`, `cau_hinh_voucher`, `dang_hoat_dong`, `thu_tu_hien_thi`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 10, 'CASH', 5.00, 'Mốc 10 bạn bè', '10 Friends Milestone', 'Mời thành công 10 bạn bè mua hàng, nhận thưởng $5.', 'Refer 10 friends with successful purchases to earn $5.', NULL, 1, 20, '2026-06-03 04:45:11.787', '2026-06-04 08:16:36.303'),
(2, 20, 'CASH', 30.00, 'Mốc 20 bạn bè', '20 Friends Milestone', 'Mời thành công 20 bạn bè mua hàng, nhận thưởng $30.', 'Refer 20 friends with successful purchases to earn $30.', NULL, 1, 30, '2026-06-03 04:45:11.789', '2026-06-04 08:16:36.303'),
(3, 100, 'CASH', 50.00, 'Mốc 100 bạn bè', '100 Friends Milestone', 'Mời thành công 100 bạn bè mua hàng, nhận thưởng $50.', 'Refer 100 friends with successful purchases to earn $50.', NULL, 1, 40, '2026-06-03 04:45:11.790', '2026-06-04 08:16:36.303'),
(4, 5, 'CASH', 3.00, 'Mốc 5 bạn bè', '5 Friends Milestone', 'Mời thành công 5 bạn bè mua hàng, nhận thưởng $3.', 'Refer 5 friends with successful purchases to earn $3.', NULL, 1, 10, '2026-06-03 04:45:11.787', '2026-06-04 08:16:36.303');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `ma_nguoi_dung` int(11) NOT NULL,
  `thu_dien_tu` varchar(191) NOT NULL,
  `mat_khau` varchar(191) DEFAULT NULL,
  `ho_ten` varchar(191) DEFAULT NULL,
  `vai_tro` varchar(191) NOT NULL DEFAULT 'USER',
  `ngay_xac_thuc_email` datetime(3) DEFAULT NULL,
  `anh_dai_dien` longtext DEFAULT NULL,
  `so_dien_thoai` varchar(191) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `duong_dan_anh` varchar(512) DEFAULT NULL,
  `ngay_diem_danh_cuoi` datetime(3) DEFAULT NULL,
  `diem_tich_luy` int(11) NOT NULL DEFAULT 0,
  `kich_hoat_hai_lop` tinyint(1) NOT NULL DEFAULT 0,
  `so_lan_dang_nhap_sai` int(11) NOT NULL DEFAULT 0,
  `khoa_den_ngay` datetime(3) DEFAULT NULL,
  `tuy_chon_thong_bao` longtext DEFAULT NULL,
  `ma_google` varchar(191) DEFAULT NULL,
  `so_du_tai_khoan` decimal(12,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`ma_nguoi_dung`, `thu_dien_tu`, `mat_khau`, `ho_ten`, `vai_tro`, `ngay_xac_thuc_email`, `anh_dai_dien`, `so_dien_thoai`, `ngay_tao`, `ngay_cap_nhat`, `duong_dan_anh`, `ngay_diem_danh_cuoi`, `diem_tich_luy`, `kich_hoat_hai_lop`, `so_lan_dang_nhap_sai`, `khoa_den_ngay`, `tuy_chon_thong_bao`, `ma_google`, `so_du_tai_khoan`) VALUES
(1, 'tranquocvu3011@gmail.com', '$2b$12$QGNCQw.IwdlBTQqONPZTB.SudKEGglASJKl.m5A3sTk45Q6BiBe4C', 'Vũ Trần Quốc', 'ADMIN', '2026-05-30 09:58:00.378', NULL, '+84869226687', '2026-05-30 09:58:00.379', '2026-06-04 08:16:22.767', NULL, '2026-06-04 08:16:22.762', 20, 0, 0, NULL, NULL, NULL, 0.00),
(2, 'user1780238150442@likefood.test', NULL, 'Nguyễn Văn An', 'USER', NULL, NULL, '0903517036', '2026-05-31 14:35:50.446', '2026-05-31 14:55:43.367', NULL, NULL, 177, 0, 0, NULL, NULL, NULL, 1853.24),
(3, 'user1780238150449@likefood.test', NULL, 'Trần Thị Bình', 'USER', NULL, NULL, '0904237619', '2026-05-31 14:35:50.450', '2026-05-31 14:55:43.370', NULL, NULL, 783, 0, 0, NULL, NULL, NULL, 259.20),
(4, 'user1780238150452@likefood.test', NULL, 'Lê Hoàng Cường', 'USER', NULL, NULL, '0908001421', '2026-05-31 14:35:50.452', '2026-05-31 14:55:43.375', NULL, NULL, 537, 0, 0, NULL, NULL, NULL, 678.89),
(5, 'user1780238150455@likefood.test', NULL, 'Phạm Minh Đức', 'USER', NULL, NULL, '0903253561', '2026-05-31 14:35:50.453', '2026-05-31 14:55:43.380', NULL, NULL, -33, 0, 0, NULL, NULL, NULL, 1306.16),
(6, 'user1780238150457@likefood.test', NULL, 'Hoàng Thị Hoa', 'USER', NULL, NULL, '0906411953', '2026-05-31 14:35:50.455', '2026-05-31 14:55:43.384', NULL, NULL, -7, 0, 0, NULL, NULL, NULL, 1396.41),
(7, 'user1780238150460@likefood.test', NULL, 'Vũ Quốc Hùng', 'USER', NULL, NULL, '0908798774', '2026-05-31 14:35:50.456', '2026-05-31 14:55:43.390', NULL, NULL, 341, 0, 0, NULL, NULL, NULL, 1927.06),
(8, 'user1780238150462@likefood.test', NULL, 'Phan Thanh Hải', 'USER', NULL, NULL, '0904424346', '2026-05-31 14:35:50.458', '2026-05-31 14:55:43.393', NULL, NULL, 365, 0, 0, NULL, NULL, NULL, 1632.63),
(9, 'user1780238150466@likefood.test', NULL, 'Đỗ Mỹ Linh', 'USER', NULL, NULL, '0902358680', '2026-05-31 14:35:50.461', '2026-05-31 14:55:43.399', NULL, NULL, 107, 0, 0, NULL, NULL, NULL, 1913.23),
(10, 'user1780238150474@likefood.test', NULL, 'Ngô Quang Nam', 'USER', NULL, NULL, '0906089058', '2026-05-31 14:35:50.468', '2026-05-31 14:55:43.403', NULL, NULL, 291, 0, 0, NULL, NULL, NULL, 195.88),
(11, 'user1780238150478@likefood.test', NULL, 'Bùi Thị Phương', 'USER', NULL, NULL, '0903418082', '2026-05-31 14:35:50.471', '2026-05-31 14:55:43.409', NULL, NULL, -279, 0, 0, NULL, NULL, NULL, 1101.58),
(12, 'prospect1780238467842@likefood.test', NULL, 'Trần Minh Anh', 'USER', NULL, NULL, '0917021842', '2026-05-31 14:41:07.844', '2026-05-31 14:55:43.332', NULL, NULL, 25, 0, 0, NULL, NULL, NULL, 0.00),
(13, 'prospect1780238467846@likefood.test', NULL, 'Lê Thu Trang', 'USER', NULL, NULL, '0916624322', '2026-05-31 14:41:07.847', '2026-05-31 14:55:43.335', NULL, NULL, 160, 0, 0, NULL, NULL, NULL, 0.00),
(14, 'prospect1780238467848@likefood.test', NULL, 'Nguyễn Hải Đăng', 'USER', NULL, NULL, '0912825066', '2026-05-31 14:41:07.848', '2026-05-31 14:55:43.338', NULL, NULL, 60, 0, 0, NULL, NULL, NULL, 0.00),
(15, 'prospect1780238467850@likefood.test', NULL, 'Phạm Bích Ngọc', 'USER', NULL, NULL, '0912104870', '2026-05-31 14:41:07.849', '2026-05-31 14:55:43.342', NULL, NULL, -90, 0, 0, NULL, NULL, NULL, 0.00),
(16, 'prospect1780238467852@likefood.test', NULL, 'Hoàng Đình Vinh', 'USER', NULL, NULL, '0913231974', '2026-05-31 14:41:07.850', '2026-05-31 14:55:43.346', NULL, NULL, -190, 0, 0, NULL, NULL, NULL, 0.00),
(17, 'prospect1780238467855@likefood.test', NULL, 'Đặng Minh Khôi', 'USER', NULL, NULL, '0913417771', '2026-05-31 14:41:07.852', '2026-05-31 14:55:43.349', NULL, NULL, 25, 0, 0, NULL, NULL, NULL, 0.00),
(18, 'prospect1780238467857@likefood.test', NULL, 'Vũ Tuyết Mai', 'USER', NULL, NULL, '0911976995', '2026-05-31 14:41:07.853', '2026-05-31 14:55:43.352', NULL, NULL, 160, 0, 0, NULL, NULL, NULL, 0.00),
(19, 'prospect1780238467860@likefood.test', NULL, 'Đỗ Tuấn Tú', 'USER', NULL, NULL, '0915883070', '2026-05-31 14:41:07.854', '2026-05-31 14:55:43.355', NULL, NULL, 60, 0, 0, NULL, NULL, NULL, 0.00),
(20, 'prospect1780238467862@likefood.test', NULL, 'Bùi Hồng Hạnh', 'USER', NULL, NULL, '0916756971', '2026-05-31 14:41:07.855', '2026-05-31 14:55:43.359', NULL, NULL, -90, 0, 0, NULL, NULL, NULL, 0.00),
(21, 'prospect1780238467864@likefood.test', NULL, 'Phan Gia Bảo', 'USER', NULL, NULL, '0912069923', '2026-05-31 14:41:07.856', '2026-05-31 14:55:43.363', NULL, NULL, -190, 0, 0, NULL, NULL, NULL, 0.00),
(22, 'user_massive_1_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 1', 'USER', NULL, NULL, '0902599018', '2026-06-02 12:18:37.992', '2026-06-03 04:51:51.241', NULL, NULL, 34, 0, 0, NULL, NULL, NULL, 2085.00),
(23, 'user_massive_2_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 2', 'USER', NULL, NULL, '0905059471', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 902, 0, 0, NULL, NULL, NULL, 4747.00),
(24, 'user_massive_3_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 3', 'USER', NULL, NULL, '0906926559', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 130, 0, 0, NULL, NULL, NULL, 3.00),
(25, 'user_massive_4_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 4', 'USER', NULL, NULL, '0905414233', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 543, 0, 0, NULL, NULL, NULL, 3801.00),
(26, 'user_massive_5_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 5', 'USER', NULL, NULL, '0909432989', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 371, 0, 0, NULL, NULL, NULL, 467.00),
(27, 'user_massive_6_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 6', 'USER', NULL, NULL, '0904211377', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 928, 0, 0, NULL, NULL, NULL, 2379.00),
(28, 'user_massive_7_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 7', 'USER', NULL, NULL, '0902061449', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 946, 0, 0, NULL, NULL, NULL, 3119.00),
(29, 'user_massive_8_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 8', 'USER', NULL, NULL, '0906850296', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 909, 0, 0, NULL, NULL, NULL, 2121.00),
(30, 'user_massive_9_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 9', 'USER', NULL, NULL, '0908311801', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 766, 0, 0, NULL, NULL, NULL, 163.00),
(31, 'user_massive_10_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 10', 'USER', NULL, NULL, '0903274033', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 185, 0, 0, NULL, NULL, NULL, 3156.00),
(32, 'user_massive_11_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 11', 'USER', NULL, NULL, '0902322731', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 471, 0, 0, NULL, NULL, NULL, 2090.00),
(33, 'user_massive_12_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 12', 'USER', NULL, NULL, '0902653665', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 311, 0, 0, NULL, NULL, NULL, 3106.00),
(34, 'user_massive_13_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 13', 'USER', NULL, NULL, '0903669808', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 880, 0, 0, NULL, NULL, NULL, 1442.00),
(35, 'user_massive_14_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 14', 'USER', NULL, NULL, '0909435113', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 975, 0, 0, NULL, NULL, NULL, 2078.00),
(36, 'user_massive_15_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 15', 'USER', NULL, NULL, '0906205267', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 364, 0, 0, NULL, NULL, NULL, 707.00),
(37, 'user_massive_16_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 16', 'USER', NULL, NULL, '0906239057', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 242, 0, 0, NULL, NULL, NULL, 2167.00),
(38, 'user_massive_17_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 17', 'USER', NULL, NULL, '0904586636', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 984, 0, 0, NULL, NULL, NULL, 2102.00),
(39, 'user_massive_18_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 18', 'USER', NULL, NULL, '0907263515', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 243, 0, 0, NULL, NULL, NULL, 574.00),
(40, 'user_massive_19_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 19', 'USER', NULL, NULL, '0901371064', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 674, 0, 0, NULL, NULL, NULL, 2028.00),
(41, 'user_massive_20_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 20', 'USER', NULL, NULL, '0901752850', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 441, 0, 0, NULL, NULL, NULL, 998.00),
(42, 'user_massive_21_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 21', 'USER', NULL, NULL, '0904168217', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 756, 0, 0, NULL, NULL, NULL, 3476.00),
(43, 'user_massive_22_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 22', 'USER', NULL, NULL, '0905944033', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 289, 0, 0, NULL, NULL, NULL, 2854.00),
(44, 'user_massive_23_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 23', 'USER', NULL, NULL, '0903607005', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 195, 0, 0, NULL, NULL, NULL, 2935.00),
(45, 'user_massive_24_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 24', 'USER', NULL, NULL, '0907856387', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 249, 0, 0, NULL, NULL, NULL, 2636.00),
(46, 'user_massive_25_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 25', 'USER', NULL, NULL, '0901296129', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 615, 0, 0, NULL, NULL, NULL, 534.00),
(47, 'user_massive_26_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 26', 'USER', NULL, NULL, '0903493725', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 327, 0, 0, NULL, NULL, NULL, 3143.00),
(48, 'user_massive_27_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 27', 'USER', NULL, NULL, '0904905334', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 72, 0, 0, NULL, NULL, NULL, 2257.00),
(49, 'user_massive_28_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 28', 'USER', NULL, NULL, '0908152815', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 422, 0, 0, NULL, NULL, NULL, 3747.00),
(50, 'user_massive_29_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 29', 'USER', NULL, NULL, '0905987147', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 247, 0, 0, NULL, NULL, NULL, 4593.00),
(51, 'user_massive_30_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 30', 'USER', NULL, NULL, '0901911101', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 145, 0, 0, NULL, NULL, NULL, 1993.00),
(52, 'user_massive_31_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 31', 'USER', NULL, NULL, '0901712641', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 547, 0, 0, NULL, NULL, NULL, 4955.00),
(53, 'user_massive_32_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 32', 'USER', NULL, NULL, '0907825656', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 619, 0, 0, NULL, NULL, NULL, 664.00),
(54, 'user_massive_33_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 33', 'USER', NULL, NULL, '0904241864', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 636, 0, 0, NULL, NULL, NULL, 4230.00),
(55, 'user_massive_34_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 34', 'USER', NULL, NULL, '0907520340', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 265, 0, 0, NULL, NULL, NULL, 4228.00),
(56, 'user_massive_35_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 35', 'USER', NULL, NULL, '0901277776', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 797, 0, 0, NULL, NULL, NULL, 3736.00),
(57, 'user_massive_36_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 36', 'USER', NULL, NULL, '0903861556', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 88, 0, 0, NULL, NULL, NULL, 3054.00),
(58, 'user_massive_37_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 37', 'USER', NULL, NULL, '0909406567', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 741, 0, 0, NULL, NULL, NULL, 4311.00),
(59, 'user_massive_38_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 38', 'USER', NULL, NULL, '0901273408', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 762, 0, 0, NULL, NULL, NULL, 3875.00),
(60, 'user_massive_39_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 39', 'USER', NULL, NULL, '0909660630', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 280, 0, 0, NULL, NULL, NULL, 2685.00),
(61, 'user_massive_40_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 40', 'USER', NULL, NULL, '0906799174', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 819, 0, 0, NULL, NULL, NULL, 3891.00),
(62, 'user_massive_41_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 41', 'USER', NULL, NULL, '0908066321', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 639, 0, 0, NULL, NULL, NULL, 4407.00),
(63, 'user_massive_42_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 42', 'USER', NULL, NULL, '0907242586', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 99, 0, 0, NULL, NULL, NULL, 1619.00),
(64, 'user_massive_43_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 43', 'USER', NULL, NULL, '0902431435', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 47, 0, 0, NULL, NULL, NULL, 3426.00),
(65, 'user_massive_44_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 44', 'USER', NULL, NULL, '0907048753', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 681, 0, 0, NULL, NULL, NULL, 3917.00),
(66, 'user_massive_45_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 45', 'USER', NULL, NULL, '0909888239', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 474, 0, 0, NULL, NULL, NULL, 1799.00),
(67, 'user_massive_46_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 46', 'USER', NULL, NULL, '0904989714', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 567, 0, 0, NULL, NULL, NULL, 2313.00),
(68, 'user_massive_47_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 47', 'USER', NULL, NULL, '0908869984', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 424, 0, 0, NULL, NULL, NULL, 1109.00),
(69, 'user_massive_48_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 48', 'USER', NULL, NULL, '0907290287', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 773, 0, 0, NULL, NULL, NULL, 1501.00),
(70, 'user_massive_49_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 49', 'USER', NULL, NULL, '0902224377', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 133, 0, 0, NULL, NULL, NULL, 4160.00),
(71, 'user_massive_50_1780402717989@example.com', 'password123', 'Khách Hàng Lớn 50', 'USER', NULL, NULL, '0904174085', '2026-06-02 12:18:37.992', '2026-06-02 12:18:37.992', NULL, NULL, 405, 0, 0, NULL, NULL, NULL, 1685.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_san_pham`
--

CREATE TABLE `nhan_san_pham` (
  `ma_nhan` int(11) NOT NULL,
  `ten_nhan` varchar(191) NOT NULL,
  `ten_nhan_en` varchar(191) DEFAULT NULL,
  `duong_dan_tinh` varchar(191) NOT NULL,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_san_pham`
--

INSERT INTO `nhan_san_pham` (`ma_nhan`, `ten_nhan`, `ten_nhan_en`, `duong_dan_tinh`, `dang_hoat_dong`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'traditional', NULL, 'traditional', 1, '2026-06-03 04:51:16.337', '2026-06-04 08:21:23.195');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhat_ky_he_thong_gioi_thieu`
--

CREATE TABLE `nhat_ky_he_thong_gioi_thieu` (
  `ma_nhat_ky` int(11) NOT NULL,
  `ma_nguoi_thuc_hien` int(11) DEFAULT NULL,
  `ma_nguoi_bi_tac_dong` int(11) DEFAULT NULL,
  `hanh_dong` varchar(50) NOT NULL,
  `loai_thuc_the` varchar(30) DEFAULT NULL,
  `ma_thuc_the` int(11) DEFAULT NULL,
  `du_lieu_truoc` longtext DEFAULT NULL,
  `du_lieu_sau` longtext DEFAULT NULL,
  `thong_tin_bo_sung` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhat_ky_su_dung_ai`
--

CREATE TABLE `nhat_ky_su_dung_ai` (
  `ma_nhat_ky` int(11) NOT NULL,
  `ten_nhiem_vu` varchar(50) NOT NULL,
  `mo_hinh_ai` varchar(30) NOT NULL,
  `so_token_dau_vao` int(11) NOT NULL DEFAULT 0,
  `so_token_dau_ra` int(11) NOT NULL DEFAULT 0,
  `tong_so_token` int(11) NOT NULL DEFAULT 0,
  `do_tre_ms` int(11) NOT NULL DEFAULT 0,
  `thanh_cong` tinyint(1) NOT NULL DEFAULT 1,
  `loi_phat_sinh` text DEFAULT NULL,
  `ma_nguoi_dung` int(11) DEFAULT NULL,
  `ma_phien_lam_viec` varchar(100) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhat_ky_su_dung_ai`
--

INSERT INTO `nhat_ky_su_dung_ai` (`ma_nhat_ky`, `ten_nhiem_vu`, `mo_hinh_ai`, `so_token_dau_vao`, `so_token_dau_ra`, `tong_so_token`, `do_tre_ms`, `thanh_cong`, `loi_phat_sinh`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `ngay_tao`) VALUES
(23, 'forecast', 'gpt-4o', 1492, 546, 2038, 2241, 1, NULL, 18, 'session_18_4y3vhy', '2026-05-17 08:05:17.844'),
(24, 'insight', 'gpt-4o-mini', 1397, 428, 1825, 1463, 1, NULL, 20, 'session_20_pv3hpf', '2026-05-17 09:16:22.596'),
(25, 'recommendation', 'gpt-4o-mini', 629, 180, 809, 1987, 1, NULL, 13, 'session_13_dn0bl3', '2026-05-18 14:29:11.830'),
(26, 'insight', 'gpt-4o-mini', 1044, 269, 1313, 1744, 1, NULL, 3, 'session_3_9wbl0i', '2026-05-18 09:01:49.898'),
(27, 'chat', 'gpt-4o', 206, 287, 493, 979, 1, NULL, 3, 'session_3_clvxpj', '2026-05-17 23:11:06.308'),
(28, 'chat', 'gpt-4o', 216, 242, 458, 1242, 1, NULL, 11, 'session_11_jy8u32', '2026-05-17 18:58:34.593'),
(29, 'insight', 'gpt-4o-mini', 967, 426, 1393, 2292, 1, NULL, 20, 'session_20_z0ipnd', '2026-05-18 08:12:06.587'),
(30, 'forecast', 'gpt-4o', 1635, 358, 1993, 2663, 1, NULL, 11, 'session_11_lnb4gb', '2026-05-19 01:54:52.591'),
(31, 'recommendation', 'gpt-4o-mini', 931, 183, 1114, 1474, 1, NULL, 10, 'session_10_rlp4hq', '2026-05-19 00:13:14.708'),
(32, 'recommendation', 'gpt-4o-mini', 734, 215, 949, 2011, 1, NULL, 7, 'session_7_7x3cko', '2026-05-20 10:13:10.675'),
(33, 'forecast', 'gpt-4o', 1699, 525, 2224, 3154, 1, NULL, 16, 'session_16_mt8zbs', '2026-05-19 20:48:48.810'),
(34, 'forecast', 'gpt-4o', 1219, 533, 1752, 2884, 1, NULL, 16, 'session_16_qetcn3', '2026-05-21 02:08:28.124'),
(35, 'recommendation', 'gpt-4o-mini', 645, 278, 923, 1212, 1, NULL, 5, 'session_5_yluuwz', '2026-05-21 14:22:43.355'),
(36, 'chat', 'gpt-4o', 182, 258, 440, 929, 1, NULL, 14, 'session_14_jhf6lx', '2026-05-21 20:49:30.696'),
(37, 'recommendation', 'gpt-4o-mini', 774, 170, 944, 1952, 1, NULL, 10, 'session_10_uep5qh', '2026-05-22 13:40:55.539'),
(38, 'insight', 'gpt-4o-mini', 1240, 415, 1655, 1980, 1, NULL, 17, 'session_17_nilqje', '2026-05-21 16:03:25.440'),
(39, 'insight', 'gpt-4o-mini', 831, 461, 1292, 1929, 1, NULL, 8, 'session_8_yd4vcb', '2026-05-22 00:04:40.390'),
(40, 'recommendation', 'gpt-4o-mini', 805, 234, 1039, 1728, 1, NULL, 11, 'session_11_v7ml0h', '2026-05-22 08:23:00.255'),
(41, 'forecast', 'gpt-4o', 1312, 588, 1900, 1870, 1, NULL, 19, 'session_19_w4fuxj', '2026-05-22 22:19:00.904'),
(42, 'recommendation', 'gpt-4o-mini', 804, 258, 1062, 2180, 1, NULL, 9, 'session_9_yv0mct', '2026-05-22 21:08:30.693'),
(43, 'insight', 'gpt-4o-mini', 1149, 253, 1402, 1829, 1, NULL, 15, 'session_15_uq7wrv', '2026-05-23 23:18:36.326'),
(44, 'recommendation', 'gpt-4o-mini', 910, 201, 1111, 2049, 1, NULL, 8, 'session_8_j2ujsr', '2026-05-23 22:15:52.641'),
(45, 'insight', 'gpt-4o-mini', 854, 474, 1328, 1615, 1, NULL, 12, 'session_12_50d46r', '2026-05-25 06:50:19.865'),
(46, 'forecast', 'gpt-4o', 1359, 357, 1716, 2397, 1, NULL, 16, 'session_16_996o5w', '2026-05-25 05:36:18.654'),
(47, 'recommendation', 'gpt-4o-mini', 970, 292, 1262, 1605, 1, NULL, 2, 'session_2_58zyw6', '2026-05-26 00:34:10.156'),
(48, 'chat', 'gpt-4o', 245, 353, 598, 1090, 1, NULL, 9, 'session_9_fzhqq8', '2026-05-26 03:48:37.230'),
(49, 'insight', 'gpt-4o-mini', 877, 258, 1135, 1700, 1, NULL, 21, 'session_21_6p78wn', '2026-05-26 09:38:52.435'),
(50, 'forecast', 'gpt-4o', 1524, 396, 1920, 2922, 1, NULL, 16, 'session_16_jielfn', '2026-05-26 10:04:25.335'),
(51, 'insight', 'gpt-4o-mini', 1204, 468, 1672, 2465, 1, NULL, 2, 'session_2_e5wp1p', '2026-05-26 16:48:10.697'),
(52, 'forecast', 'gpt-4o', 1387, 539, 1926, 2471, 1, NULL, 19, 'session_19_remqfr', '2026-05-27 14:12:53.380'),
(53, 'insight', 'gpt-4o-mini', 894, 299, 1193, 2412, 1, NULL, 8, 'session_8_9b19qz', '2026-05-28 07:35:17.260'),
(54, 'forecast', 'gpt-4o', 1273, 542, 1815, 2835, 1, NULL, 17, 'session_17_0y45ig', '2026-05-28 03:04:13.613'),
(55, 'recommendation', 'gpt-4o-mini', 973, 268, 1241, 1282, 1, NULL, 19, 'session_19_0cqikv', '2026-05-29 11:16:18.585'),
(56, 'recommendation', 'gpt-4o-mini', 812, 192, 1004, 2177, 1, NULL, 7, 'session_7_pv7vl3', '2026-05-29 11:29:21.767'),
(57, 'recommendation', 'gpt-4o-mini', 872, 196, 1068, 1920, 1, NULL, 16, 'session_16_b7trfa', '2026-05-28 21:20:21.228'),
(58, 'recommendation', 'gpt-4o-mini', 761, 196, 957, 1290, 1, NULL, 20, 'session_20_w73n7i', '2026-05-29 00:27:51.093'),
(59, 'recommendation', 'gpt-4o-mini', 848, 291, 1139, 1813, 1, NULL, 8, 'session_8_kt55t5', '2026-05-29 11:27:26.794'),
(60, 'chat', 'gpt-4o', 246, 232, 478, 1001, 1, NULL, 20, 'session_20_ybg0b8', '2026-05-30 05:47:55.323'),
(61, 'insight', 'gpt-4o-mini', 896, 441, 1337, 1579, 1, NULL, 7, 'session_7_vxnv2k', '2026-05-29 18:43:48.568'),
(62, 'recommendation', 'gpt-4o-mini', 720, 292, 1012, 1354, 1, NULL, 2, 'session_2_ew2xu4', '2026-05-30 00:47:29.579'),
(63, 'recommendation', 'gpt-4o-mini', 773, 194, 967, 1969, 1, NULL, 9, 'session_9_k5jevc', '2026-05-30 13:19:58.491'),
(64, 'recommendation', 'gpt-4o-mini', 602, 297, 899, 1419, 1, NULL, 15, 'session_15_4qkq7o', '2026-05-30 02:23:46.217'),
(65, 'forecast', 'gpt-4o', 1248, 563, 1811, 2060, 1, NULL, 20, 'session_20_6z8cz0', '2026-05-31 04:11:04.546'),
(66, 'chat', 'gpt-4o', 184, 288, 472, 1103, 1, NULL, 12, 'session_12_qdadus', '2026-05-31 04:34:08.805'),
(67, 'recommendation', 'gpt-4o-mini', 960, 166, 1126, 2176, 1, NULL, 17, 'session_17_fa4f6z', '2026-06-01 09:37:13.490'),
(68, 'forecast', 'gpt-4o', 1448, 507, 1955, 2821, 1, NULL, 8, 'session_8_4w31fm', '2026-06-01 06:18:07.326'),
(69, 'chat', 'gpt-4o', 219, 323, 542, 965, 1, NULL, 19, 'session_19_7y92hx', '2026-06-01 00:21:21.635'),
(70, 'admin-insight', 'gpt-4o', 114, 172, 286, 28162, 1, NULL, NULL, NULL, '2026-06-02 11:29:45.707'),
(71, 'admin-insight', 'gpt-4o', 114, 189, 303, 13234, 1, NULL, NULL, NULL, '2026-06-02 11:29:50.638'),
(72, 'admin-insight', 'gpt-4o', 114, 148, 262, 11167, 1, NULL, NULL, NULL, '2026-06-02 11:36:06.712'),
(73, 'admin-insight', 'gpt-4o', 114, 170, 284, 44957, 1, NULL, NULL, NULL, '2026-06-02 11:36:20.603'),
(74, 'admin-insight', 'gpt-4o', 114, 161, 275, 11420, 1, NULL, NULL, NULL, '2026-06-02 11:36:32.060'),
(75, 'admin-insight', 'gpt-4o', 114, 172, 286, 10957, 1, NULL, NULL, NULL, '2026-06-02 11:37:29.638'),
(76, 'admin-insight', 'gpt-4o', 114, 176, 290, 12612, 1, NULL, NULL, NULL, '2026-06-02 11:57:48.641'),
(77, 'admin-insight', 'gpt-4o', 114, 159, 273, 12667, 1, NULL, NULL, NULL, '2026-06-02 11:58:01.353'),
(78, 'admin-insight', 'gpt-4o', 114, 158, 272, 43396, 1, NULL, NULL, NULL, '2026-06-02 12:01:01.978'),
(79, 'admin-insight', 'gpt-4o', 114, 208, 322, 10564, 1, NULL, NULL, NULL, '2026-06-02 13:05:00.533'),
(80, 'admin-insight', 'gpt-4o', 114, 169, 283, 9991, 1, NULL, NULL, NULL, '2026-06-02 13:05:10.566'),
(81, 'admin-insight', 'gpt-4o', 114, 188, 302, 12732, 1, NULL, NULL, NULL, '2026-06-02 13:39:49.651'),
(82, 'admin-insight', 'gpt-4o', 114, 203, 317, 10649, 1, NULL, NULL, NULL, '2026-06-02 13:40:00.350'),
(83, 'admin-insight', 'gpt-4o', 114, 173, 287, 14544, 1, NULL, NULL, NULL, '2026-06-03 04:48:31.498'),
(84, 'admin-insight', 'gpt-4o', 114, 180, 294, 13386, 1, NULL, NULL, NULL, '2026-06-03 04:48:44.907'),
(85, 'admin-insight', 'gpt-4o', 114, 199, 313, 14840, 1, NULL, NULL, NULL, '2026-06-03 04:53:25.994'),
(86, 'admin-insight', 'gpt-4o', 114, 162, 276, 7743, 1, NULL, NULL, NULL, '2026-06-03 04:53:33.765'),
(87, 'admin-insight', 'gpt-4o', 114, 187, 301, 6830, 1, NULL, NULL, NULL, '2026-06-04 08:18:41.499'),
(88, 'admin-insight', 'gpt-4o', 114, 160, 274, 5764, 1, NULL, NULL, NULL, '2026-06-04 08:18:47.318');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_thuong_moc_gioi_thieu`
--

CREATE TABLE `phan_thuong_moc_gioi_thieu` (
  `ma_phan_thuong` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_moc_thanh_tich` int(11) NOT NULL,
  `loai_phan_thuong` varchar(20) NOT NULL,
  `gia_tri_phan_thuong` decimal(12,2) NOT NULL,
  `ma_phieu_giam_gia` int(11) DEFAULT NULL,
  `trang_thai` varchar(12) NOT NULL DEFAULT 'GRANTED',
  `ngay_trao_thuong` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phien_chat_truc_tiep`
--

CREATE TABLE `phien_chat_truc_tiep` (
  `ma_phien_chat` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_quan_tri_vien` int(11) DEFAULT NULL,
  `trang_thai` varchar(20) NOT NULL DEFAULT 'OPEN',
  `chu_de` varchar(191) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL,
  `ngay_dong` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phien_chat_truc_tiep`
--

INSERT INTO `phien_chat_truc_tiep` (`ma_phien_chat`, `ma_nguoi_dung`, `ma_quan_tri_vien`, `trang_thai`, `chu_de`, `ngay_tao`, `ngay_cap_nhat`, `ngay_dong`) VALUES
(3, 2, 1, 'OPEN', 'Hỏi về sản phẩm tôm khô Cà Mau', '2026-05-28 19:35:51.142', '2026-05-31 14:55:43.413', NULL),
(4, 3, 1, 'OPEN', 'Lỗi không thanh toán được qua Stripe', '2026-05-29 13:01:39.778', '2026-05-31 14:55:43.424', NULL),
(5, 4, NULL, 'CLOSED', 'Tư vấn về trà hoa cúc và atiso', '2026-05-26 18:53:01.349', '2026-05-26 20:53:01.349', NULL),
(6, 5, NULL, 'CLOSED', 'Hợp tác bán lẻ đặc sản', '2026-05-27 22:30:46.677', '2026-05-28 00:30:46.677', NULL),
(7, 6, 1, 'OPEN', 'Phí ship sang bang Washington', '2026-05-29 02:23:19.190', '2026-05-31 14:55:43.450', NULL),
(8, 60, NULL, 'OPEN', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.657', '2026-06-02 12:18:39.657', NULL),
(9, 32, NULL, 'OPEN', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.660', '2026-06-02 12:18:39.660', NULL),
(10, 23, NULL, 'CLOSED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.664', '2026-06-02 12:18:39.664', NULL),
(11, 25, NULL, 'OPEN', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.666', '2026-06-02 12:18:39.666', NULL),
(12, 31, NULL, 'CLOSED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.669', '2026-06-02 12:18:39.669', NULL),
(13, 24, NULL, 'OPEN', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.672', '2026-06-02 12:18:39.672', NULL),
(14, 43, NULL, 'OPEN', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.674', '2026-06-02 12:18:39.674', NULL),
(15, 28, NULL, 'OPEN', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.677', '2026-06-02 12:18:39.677', NULL),
(16, 32, 1, 'ASSIGNED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.680', '2026-06-04 08:20:47.035', NULL),
(17, 23, NULL, 'CLOSED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.683', '2026-06-02 12:18:39.683', NULL),
(18, 69, NULL, 'CLOSED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.686', '2026-06-02 12:18:39.686', NULL),
(19, 33, NULL, 'CLOSED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.688', '2026-06-02 12:18:39.688', NULL),
(20, 68, NULL, 'CLOSED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.692', '2026-06-02 12:18:39.692', NULL),
(21, 25, NULL, 'CLOSED', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.695', '2026-06-02 12:18:39.695', NULL),
(22, 35, NULL, 'OPEN', 'Hỗ trợ đơn hàng', '2026-06-02 12:18:39.699', '2026-06-02 12:18:39.699', NULL),
(23, 1, NULL, 'CLOSED', 'Live Chat từ Chatbot', '2026-06-03 04:43:33.130', '2026-06-03 04:43:43.371', '2026-06-03 04:43:43.367'),
(24, 1, NULL, 'CLOSED', 'Live Chat từ Chatbot', '2026-06-04 07:56:17.780', '2026-06-04 08:04:17.927', '2026-06-04 08:04:17.925'),
(25, 1, NULL, 'CLOSED', 'Live Chat từ Chatbot', '2026-06-04 08:15:26.302', '2026-06-04 08:15:44.271', '2026-06-04 08:15:44.270');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_giam_gia`
--

CREATE TABLE `phieu_giam_gia` (
  `ma_phieu_giam_gia` int(11) NOT NULL,
  `ma_code` varchar(191) NOT NULL,
  `loai_giam_gia` varchar(191) NOT NULL,
  `gia_tri_giam` double NOT NULL,
  `gia_tri_don_hang_toi_thieu` double DEFAULT 0,
  `muc_giam_toi_da` double DEFAULT NULL,
  `ngay_bat_dau` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_ket_thuc` datetime(3) NOT NULL,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `gioi_han_su_dung` int(11) DEFAULT NULL,
  `so_luot_da_su_dung` int(11) NOT NULL DEFAULT 0,
  `danh_muc_ap_dung` varchar(191) NOT NULL DEFAULT 'all',
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieu_giam_gia`
--

INSERT INTO `phieu_giam_gia` (`ma_phieu_giam_gia`, `ma_code`, `loai_giam_gia`, `gia_tri_giam`, `gia_tri_don_hang_toi_thieu`, `muc_giam_toi_da`, `ngay_bat_dau`, `ngay_ket_thuc`, `dang_hoat_dong`, `gioi_han_su_dung`, `so_luot_da_su_dung`, `danh_muc_ap_dung`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'WELCOME10', 'PERCENT', 10, 30, 20, '2026-05-30 10:17:57.794', '2027-05-30 10:17:57.794', 1, 1000, 5, 'all', '2026-05-30 10:17:57.796', '2026-05-31 14:35:50.922'),
(2, 'DACSAN20', 'PERCENT', 20, 50, 30, '2026-05-30 10:17:57.801', '2026-11-26 10:17:57.794', 1, 500, 1, 'all', '2026-05-30 10:17:57.801', '2026-05-31 14:35:50.841'),
(3, 'FREESHIP', 'FIXED', 15, 80, NULL, '2026-05-30 10:17:57.803', '2026-08-28 10:17:57.794', 1, 200, 3, 'all', '2026-05-30 10:17:57.804', '2026-05-31 14:35:50.898'),
(4, 'VIETNAM30', 'PERCENT', 30, 100, 50, '2026-05-30 10:17:57.806', '2026-07-29 10:17:57.794', 1, 100, 0, 'all', '2026-05-30 10:17:57.807', '2026-05-30 10:17:57.807'),
(5, 'TET2026', 'PERCENT', 15, 40, 25, '2026-05-30 10:17:57.809', '2026-12-31 00:00:00.000', 1, 2000, 0, 'all', '2026-05-30 10:17:57.810', '2026-05-30 10:17:57.810'),
(6, 'LIKEFOOD5', 'FIXED', 5, 20, NULL, '2026-05-30 10:17:57.812', '2027-05-30 10:17:57.794', 1, 9999, 2, 'all', '2026-05-30 10:17:57.813', '2026-05-31 14:35:50.916'),
(7, 'SUMMER25', 'PERCENT', 25, 75, 40, '2026-05-30 10:17:57.815', '2026-09-27 10:17:57.794', 1, 300, 3, 'all', '2026-05-30 10:17:57.816', '2026-05-31 14:35:50.861'),
(8, 'NEWUSER15', 'PERCENT', 15, 25, 20, '2026-05-30 10:17:57.818', '2027-05-30 10:17:57.794', 1, 5000, 3, 'all', '2026-05-30 10:17:57.819', '2026-05-31 14:35:50.929');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuong_tien_danh_gia`
--

CREATE TABLE `phuong_tien_danh_gia` (
  `ma_phuong_tien` int(11) NOT NULL,
  `ma_danh_gia` int(11) NOT NULL,
  `loai_phuong_tien` varchar(191) NOT NULL,
  `duong_dan` varchar(191) NOT NULL,
  `thu_tu_hien_thi` int(11) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_he_gioi_thieu`
--

CREATE TABLE `quan_he_gioi_thieu` (
  `ma_quan_he` int(11) NOT NULL,
  `ma_nguoi_gioi_thieu` int(11) NOT NULL,
  `ma_nguoi_duoc_gioi_thieu` int(11) NOT NULL,
  `ma_da_su_dung` varchar(20) NOT NULL,
  `nguon_gioi_thieu` varchar(10) NOT NULL DEFAULT 'LINK',
  `trang_thai` varchar(15) NOT NULL DEFAULT 'SIGNED_UP',
  `dia_chi_ip` varchar(64) DEFAULT NULL,
  `thiet_bi` text DEFAULT NULL,
  `van_tay_thiet_bi` varchar(128) DEFAULT NULL,
  `ghi_chu` text DEFAULT NULL,
  `ngay_hop_le` datetime(3) DEFAULT NULL,
  `ngay_khoa` datetime(3) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_he_gioi_thieu`
--

INSERT INTO `quan_he_gioi_thieu` (`ma_quan_he`, `ma_nguoi_gioi_thieu`, `ma_nguoi_duoc_gioi_thieu`, `ma_da_su_dung`, `nguon_gioi_thieu`, `trang_thai`, `dia_chi_ip`, `thiet_bi`, `van_tay_thiet_bi`, `ghi_chu`, `ngay_hop_le`, `ngay_khoa`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 2, 6, 'VUDEV05', 'LINK', 'QUALIFIED', '112.197.89.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', NULL, NULL, NULL, NULL, '2026-05-30 14:42:45.191', '2026-05-31 14:42:45.192'),
(2, 2, 7, 'VUDEV05', 'LINK', 'QUALIFIED', '112.197.89.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', NULL, NULL, NULL, NULL, '2026-05-29 14:42:45.200', '2026-05-31 14:42:45.201'),
(3, 2, 8, 'VUDEV05', 'LINK', 'SIGNED_UP', '112.197.89.12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', NULL, NULL, NULL, NULL, '2026-05-28 14:42:45.204', '2026-05-31 14:42:45.205'),
(4, 2, 9, 'VUDEV05', 'LINK', 'SIGNED_UP', '112.197.89.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36', NULL, NULL, NULL, NULL, '2026-05-27 14:42:45.206', '2026-05-31 14:42:45.207');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `ma_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(191) NOT NULL,
  `ten_san_pham_en` varchar(191) DEFAULT NULL,
  `duong_dan_tinh` varchar(191) DEFAULT NULL,
  `mo_ta` text NOT NULL,
  `mo_ta_en` text DEFAULT NULL,
  `gia_ban` double NOT NULL,
  `gia_khuyen_mai` double DEFAULT NULL,
  `ngay_bat_dau_khuyen_mai` datetime(3) DEFAULT NULL,
  `ngay_ket_thuc_khuyen_mai` datetime(3) DEFAULT NULL,
  `dang_khuyen_mai` tinyint(1) NOT NULL DEFAULT 0,
  `nhan_hieu_noi_bat` varchar(191) DEFAULT NULL,
  `nhan_hieu_noi_bat_en` varchar(191) DEFAULT NULL,
  `anh_dai_dien` varchar(191) DEFAULT NULL,
  `phan_loai` varchar(191) NOT NULL,
  `ma_danh_muc` int(11) DEFAULT NULL,
  `so_luong_ton_kho` int(11) NOT NULL DEFAULT 0,
  `noi_bat` tinyint(1) NOT NULL DEFAULT 0,
  `hien_thi` tinyint(1) NOT NULL DEFAULT 1,
  `ma_thuong_hieu` int(11) DEFAULT NULL,
  `gia_goc` double DEFAULT NULL,
  `tu_khoa` varchar(191) DEFAULT NULL,
  `diem_danh_gia_trung_binh` double NOT NULL DEFAULT 0,
  `so_luot_danh_gia` int(11) NOT NULL DEFAULT 0,
  `so_luong_da_ban` int(11) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ma_so_san_pham` varchar(191) DEFAULT NULL,
  `khoi_luong` varchar(191) DEFAULT NULL,
  `khoi_luong_en` varchar(191) DEFAULT NULL,
  `ngay_xoa` datetime(3) DEFAULT NULL,
  `da_xoa` tinyint(1) NOT NULL DEFAULT 0,
  `tu_khoa_tim_kiem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`ma_san_pham`, `ten_san_pham`, `ten_san_pham_en`, `duong_dan_tinh`, `mo_ta`, `mo_ta_en`, `gia_ban`, `gia_khuyen_mai`, `ngay_bat_dau_khuyen_mai`, `ngay_ket_thuc_khuyen_mai`, `dang_khuyen_mai`, `nhan_hieu_noi_bat`, `nhan_hieu_noi_bat_en`, `anh_dai_dien`, `phan_loai`, `ma_danh_muc`, `so_luong_ton_kho`, `noi_bat`, `hien_thi`, `ma_thuong_hieu`, `gia_goc`, `tu_khoa`, `diem_danh_gia_trung_binh`, `so_luot_danh_gia`, `so_luong_da_ban`, `ngay_tao`, `ngay_cap_nhat`, `ma_so_san_pham`, `khoi_luong`, `khoi_luong_en`, `ngay_xoa`, `da_xoa`, `tu_khoa_tim_kiem`) VALUES
(1, 'Cá Lóc Khô Đồng Tháp', NULL, 'ca-loc-kho-dong-thap', 'Cá lóc khô được chế biến từ cá lóc tươi sống vùng Đồng Tháp, phơi khô tự nhiên dưới nắng gió. Thịt cá ngọt, thơm, dai, giữ nguyên hương vị đặc trưng miền Tây sông nước.', NULL, 25.99, 20.79, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/products/ca-loc-kho.jpg', 'Cá khô', 1, 2, 1, 1, 6, 29.99, 'gift,traditional', 4.917815332781484, 39, 58, '2026-05-28 13:53:48.873', '2026-05-31 14:41:07.822', NULL, '500g', NULL, NULL, 0, NULL),
(2, 'Khô Cá Sặc Bổi Cà Mau', NULL, 'kho-ca-sac-boi-ca-mau', 'Khô cá sặc bổi đặc sản Cà Mau, được làm từ cá sặc tươi ướp muối và phơi khô tự nhiên. Vị mặn vừa, thơm ngon, thích hợp chiên giòn ăn kèm cơm trắng.', NULL, 19.99, 15.99, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/products/ca-sac-boi.jpg', 'Tôm & Mực khô', 2, 1, 1, 1, 2, 24.99, 'traditional', 4.7, 3, 197, '2026-05-28 13:53:48.881', '2026-06-04 08:21:41.518', NULL, '300g', NULL, NULL, 0, NULL),
(3, 'Khô Cá Tra Phồng', NULL, 'kho-ca-tra-phong', 'Khô cá tra phồng giòn tan, được làm từ cá tra tươi, tẩm gia vị và chiên phồng. Ăn liền hoặc kho tiêu đều ngon.', NULL, 15.99, 12.79, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/products/ca-tra-phong.jpg', 'Trái cây sấy', 3, 2, 0, 1, 4, NULL, '', 3.812802587711378, 42, 54, '2026-05-28 13:53:48.894', '2026-06-02 11:31:37.579', NULL, '200g', NULL, NULL, 0, NULL),
(4, 'Tôm Khô Cà Mau Loại 1', NULL, 'tom-kho-ca-mau-loai-1', 'Tôm khô Cà Mau loại 1, được chế biến từ tôm biển tươi sống, phơi khô tự nhiên. Thịt tôm ngọt, thơm, chắc, không tẩm hóa chất bảo quản.', NULL, 45.99, 36.79, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/products/tom-kho.jpg', 'Trà & Bánh mứt', 4, 1, 1, 1, 1, 55.99, 'gift,spicy', 5, 2, 117, '2026-05-28 13:53:48.903', '2026-05-31 14:46:07.664', NULL, '500g', NULL, NULL, 0, NULL),
(5, 'Mực Khô Câu Phú Quốc', NULL, 'muc-kho-cau-phu-quoc', 'Mực khô câu Phú Quốc, được làm từ mực tươi câu trực tiếp từ biển. Thịt mực dày, ngọt, thơm, nướng hoặc xào đều ngon.', NULL, 55.99, NULL, NULL, NULL, 0, NULL, NULL, '/products/muc-kho.jpg', 'Gia vị Việt', 5, 2, 1, 1, 7, 65.99, 'gift', 3.852422515049466, 43, 57, '2026-05-28 13:53:48.909', '2026-05-31 14:41:07.839', NULL, '500g', NULL, NULL, 0, NULL),
(6, 'Tôm Rim Me Sài Gòn', NULL, 'tom-rim-me-sai-gon', 'Tôm rim me đặc sản Sài Gòn, vị chua ngọt đậm đà, ăn kèm cơm trắng cực ngon.', NULL, 35.99, 28.79, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/products/tom-rim-me.jpg', 'Gạo & Nông sản', 6, 45, 0, 1, 5, NULL, 'spicy', 4.900250637171228, 20, 172, '2026-05-28 13:53:48.914', '2026-05-31 14:52:48.244', NULL, '300g', NULL, NULL, 0, NULL),
(7, 'Xoài Sấy Dẻo Cam Ranh', NULL, 'xoai-say-deo-cam-ranh', 'Xoài sấy dẻo Cam Ranh, được làm từ xoài cát Hòa Lộc chín mọng. Không đường, không phụ gia, giữ nguyên hương vị tự nhiên.', NULL, 12.99, 10.39, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/products/xoai-say.jpg', 'Đồ uống', 7, 120, 1, 1, 3, 15.99, 'diet,gift', 4.964669452839633, 13, 79, '2026-05-28 13:53:48.921', '2026-05-30 10:17:58.578', NULL, '200g', NULL, NULL, 0, NULL),
(8, 'Chuối Sấy Giòn Tiền Giang', NULL, 'chuoi-say-gion-tien-giang', 'Chuối sấy giòn Tiền Giang, được làm từ chuối già hương chín mọng. Giòn tan, ngọt tự nhiên, ăn vặt lý tưởng.', NULL, 8.99, NULL, NULL, NULL, 0, NULL, NULL, '/products/chuoi-say.jpg', 'Đặc sản vùng miền', 8, 150, 0, 1, 6, NULL, 'diet', 3.79843996018848, 29, 132, '2026-05-28 13:53:48.926', '2026-05-30 10:17:58.093', NULL, '150g', NULL, NULL, 0, NULL),
(9, 'Mít Sấy Giòn Đồng Nai', NULL, 'mit-say-gion-dong-nai', 'Mít sấy giòn Đồng Nai, được làm từ mít nghệ chín, sấy chân không. Giòn rụm, thơm ngon, không dầu mỡ.', NULL, 10.99, 8.79, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/products/mit-say.jpg', 'Cá khô', 1, 100, 0, 1, 2, NULL, 'diet', 4.870097671722048, 28, 123, '2026-05-28 13:53:48.932', '2026-06-02 11:31:37.584', NULL, '180g', NULL, NULL, 0, NULL),
(10, 'Mứt Dừa Non Bến Tre', NULL, 'mut-dua-non-ben-tre', 'Mứt dừa non Bến Tre, được làm từ dừa non tươi, sên với đường phèn. Dẻo ngọt, thơm béo, món ăn không thể thiếu ngày Tết.', NULL, 14.99, 11.99, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/products/mut-dua.jpg', 'Tôm & Mực khô', 2, 80, 1, 1, 4, NULL, 'gift,traditional', 2.722834979231858, 35, 201, '2026-05-28 13:53:48.938', '2026-06-02 11:31:37.507', NULL, '300g', NULL, NULL, 0, NULL),
(11, 'Trà Sen Tây Hồ', NULL, 'tra-sen-tay-ho', 'Trà sen Tây Hồ, được ướp từ hoa sen tươi và trà móc câu thượng hạng. Hương thơm thanh tao, vị ngọt dịu, thư giãn tinh thần.', NULL, 28.99, 23.19, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/products/tra-sen.jpg', 'Trái cây sấy', 3, 60, 1, 1, 1, 35.99, 'gift', 4.94044787931209, 25, 45, '2026-05-28 13:53:48.945', '2026-05-31 14:52:48.246', NULL, '100g', NULL, NULL, 0, NULL),
(12, 'Bánh Tráng Mè Tây Ninh', NULL, 'banh-trang-me-tay-ninh', 'Bánh tráng mè Tây Ninh, giòn tan, thơm mùi mè rang. Ăn liền hoặc cuốn thịt đều ngon.', NULL, 6.99, NULL, NULL, NULL, 0, NULL, NULL, '/products/banh-trang.jpg', 'Trà & Bánh mứt', 4, 200, 0, 1, 7, NULL, '', 4.5, 2, 146, '2026-05-28 13:53:48.950', '2026-05-31 14:55:06.648', NULL, '200g', NULL, NULL, 0, NULL),
(13, 'Nước Mắm Phú Quốc 40 Độ Đạm', NULL, 'nuoc-mam-phu-quoc-40-do-dam', 'Nước mắm Phú Quốc cốt đặc biệt 40 độ đạm, được ủ từ cá cơm tươi. Màu cánh gián đậm, vị ngọt hậu, thơm nồng đặc trưng.', NULL, 18.99, 15.19, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/products/nuoc-mam.jpg', 'Gia vị Việt', 5, 70, 1, 1, 5, 22.99, 'traditional', 3.740582304710115, 47, 142, '2026-05-28 13:53:48.956', '2026-05-30 10:17:58.584', NULL, '500ml', NULL, NULL, 0, NULL),
(14, 'Muối Tôm Tây Ninh', NULL, 'muoi-tom-tay-ninh', 'Muối tôm Tây Ninh chính hiệu, được làm từ tôm khô xay nhuyễn và ớt hiểm. Cay nồng, thơm ngon, chấm trái cây hoặc rắc cơm đều tuyệt vời.', NULL, 9.99, NULL, NULL, NULL, 0, NULL, NULL, '/products/muoi-tom.jpg', 'Gạo & Nông sản', 6, 90, 0, 1, 3, NULL, 'spicy', 4.858138119845887, 13, 149, '2026-05-28 13:53:48.963', '2026-05-30 10:17:58.110', NULL, '150g', NULL, NULL, 0, NULL),
(15, 'Sa Tế Chay Đà Nẵng', NULL, 'sa-te-chay-da-nang', 'Sa tế chay Đà Nẵng, được làm từ ớt, tỏi, sả và các gia vị tự nhiên. Cay thơm, không dầu cọ, phù hợp người ăn chay.', NULL, 7.99, 6.39, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/products/sa-te.jpg', 'Đồ uống', 7, 110, 0, 1, 6, NULL, 'spicy,diet', 3.752544365386126, 52, 121, '2026-05-28 13:53:48.969', '2026-05-31 14:52:48.248', NULL, '200g', NULL, NULL, 0, NULL),
(16, 'Khô Cá Dứa Kiên Giang', NULL, 'kho-ca-dua-kien-giang', 'Cá dứa khô Kiên Giang – loài cá nước ngọt quý hiếm, thịt ngọt béo, phơi khô tự nhiên. Đặc sản được ưa chuộng nhất miền Tây.', NULL, 34.99, 29.99, NULL, NULL, 1, NULL, NULL, '/cakho.jpeg', 'Cá khô', 1, 35, 1, 1, 2, 39.99, 'gift,traditional', 4.703621586228564, 52, 67, '2026-05-30 09:31:29.869', '2026-05-30 10:17:58.115', NULL, '400g', NULL, NULL, 0, NULL),
(17, 'Khô Cá Kèo Cà Mau', NULL, 'kho-ca-keo-ca-mau', 'Cá kèo khô Cà Mau – loài cá đặc trưng vùng đồng bằng sông Cửu Long, vị đậm đà, xương giòn ăn được. Chế biến từ cá tươi, phơi nắng tự nhiên.', NULL, 22.99, 18.39, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 60, 0, 1, 4, NULL, 'traditional', 4.799637891183647, 52, 79, '2026-05-30 09:31:29.885', '2026-05-30 10:17:58.587', NULL, '300g', NULL, NULL, 0, NULL),
(18, 'Khô Cá Chạch Đồng', NULL, 'kho-ca-chach-dong', 'Cá chạch đồng khô – đặc sản miền Tây, thịt ngọt thanh, ít xương. Thích hợp nướng lửa than hoặc chiên giòn.', NULL, 18.99, 15.19, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 45, 0, 1, 1, NULL, 'traditional', 3.876431025593785, 42, 123, '2026-05-30 09:31:29.897', '2026-06-02 11:31:37.587', NULL, '250g', NULL, NULL, 0, NULL),
(19, 'Khô Cá Nục Bình Định', NULL, 'kho-ca-nuc-binh-dinh', 'Cá nục khô Bình Định – vị mặn ngọt cân bằng, thịt chắc, phơi khô theo phương pháp truyền thống. Ăn kho tiêu hoặc chiên đều thơm ngon.', NULL, 16.99, NULL, NULL, NULL, 0, NULL, NULL, '/cakho.jpeg', 'Cá khô', 1, 70, 0, 1, 7, NULL, '', 4.8, 4, 139, '2026-05-30 09:31:29.924', '2026-06-03 04:51:32.468', NULL, '300g', NULL, NULL, 0, NULL),
(20, 'Khô Cá Cơm Phan Thiết', NULL, 'kho-ca-com-phan-thiet', 'Cá cơm khô Phan Thiết – nguyên liệu làm nước mắm nổi tiếng, thích hợp ăn kèm cháo trắng hoặc rang muối.', NULL, 12.99, 10.39, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 90, 0, 1, 5, NULL, '', 2.714119660052286, 22, 47, '2026-05-30 09:31:29.936', '2026-05-30 10:17:58.592', NULL, '200g', NULL, NULL, 0, NULL),
(21, 'Khô Cá Thu Đà Nẵng', NULL, 'kho-ca-thu-da-nang', 'Cá thu khô Đà Nẵng – loài cá biển thịt chắc, vị ngọt tự nhiên. Phơi một nắng hoặc hai nắng đều giữ được hương vị tươi ngon.', NULL, 38.99, 35.99, NULL, NULL, 1, NULL, NULL, '/cakho.jpeg', 'Cá khô', 1, 30, 1, 1, 3, 45.99, 'gift', 4.997195250657845, 26, 176, '2026-05-30 09:31:29.946', '2026-06-02 11:31:37.557', NULL, '500g', NULL, NULL, 0, NULL),
(22, 'Khô Cá Ngát Sông Tiền', NULL, 'kho-ca-ngat-song-tien', 'Cá ngát khô – đặc sản sông Tiền, thịt dày, vị ngọt thanh. Thích hợp làm gỏi hoặc nướng.', NULL, 28.99, 23.19, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 40, 1, 1, 6, NULL, 'traditional', 4.962253598719446, 21, 196, '2026-05-30 09:31:29.955', '2026-06-02 11:31:37.517', NULL, '400g', NULL, NULL, 0, NULL),
(23, 'Khô Cá Thiểu Trà Vinh', NULL, 'kho-ca-thieu-tra-vinh', 'Cá thiểu khô Trà Vinh – đặc sản ít nơi có, thịt mỏng nhưng vị đậm đà, thơm ngon khi chiên giòn.', NULL, 20.99, NULL, NULL, NULL, 0, NULL, NULL, '/cakho.jpeg', 'Cá khô', 1, 55, 0, 1, 2, NULL, '', 3.94445886987469, 19, 112, '2026-05-30 09:31:29.970', '2026-05-30 10:17:58.132', NULL, '250g', NULL, NULL, 0, NULL),
(24, 'Khô Cá Lóc Một Nắng', NULL, 'kho-ca-loc-mot-nang', 'Cá lóc khô một nắng – phơi nhẹ để giữ độ ẩm tự nhiên, thịt mềm hơn, thích hợp nướng hoặc hấp.', NULL, 32.99, 26.39, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 35, 0, 1, 4, NULL, 'gift', 4.973714033115154, 17, 153, '2026-05-30 09:31:29.979', '2026-05-30 10:17:58.597', NULL, '500g', NULL, NULL, 0, NULL),
(25, 'Cá Cơm Rang Muối Ớt', NULL, 'ca-com-rang-muoi-ot', 'Cá cơm rang muối ớt – snack đậm đà, giòn tan, vị mặn cay thơm. Ăn vặt tuyệt vời hoặc nhâm nhi với bia.', NULL, 9.99, 7.99, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 120, 1, 1, 1, NULL, 'spicy', 3.897363352943977, 13, 207, '2026-05-30 09:31:29.985', '2026-06-02 11:31:37.594', NULL, '150g', NULL, NULL, 0, NULL),
(26, 'Khô Cá Basa Châu Đốc', NULL, 'kho-ca-basa-chau-doc', 'Cá basa khô Châu Đốc – loài cá nuôi bè nổi tiếng An Giang, thịt trắng, ít xương, phơi khô thơm ngon.', NULL, 17.99, 14.39, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 65, 0, 1, 7, NULL, '', 4.864920104015154, 32, 171, '2026-05-30 09:31:29.991', '2026-05-31 14:52:48.251', NULL, '300g', NULL, NULL, 0, NULL),
(27, 'Khô Cá Hố Phan Rang', NULL, 'kho-ca-ho-phan-rang', 'Cá hố khô Phan Rang – loài cá biển thân dài, thịt trắng ngọt, phơi khô vàng ươm, thích hợp chiên giòn hoặc nướng.', NULL, 26.99, 21.59, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/cakho.jpeg', 'Cá khô', 1, 42, 0, 1, 5, NULL, '', 4.716331758635349, 23, 40, '2026-05-30 09:31:29.997', '2026-05-30 10:17:58.601', NULL, '400g', NULL, NULL, 0, NULL),
(28, 'Tôm Đất Khô Bạc Liêu', NULL, 'tom-dat-kho-bac-lieu', 'Tôm đất khô Bạc Liêu – loại tôm nhỏ nhưng thịt chắc, vị đậm đà. Dùng nấu canh chua, làm mắm hoặc rang muối đều ngon.', NULL, 28.99, NULL, NULL, NULL, 0, NULL, NULL, '/products/tom-kho.jpg', 'Tôm & Mực khô', 2, 55, 1, 1, 3, NULL, 'traditional', 3.830087921694258, 13, 57, '2026-05-30 09:31:30.007', '2026-05-30 10:17:58.144', NULL, '300g', NULL, NULL, 0, NULL),
(29, 'Tép Khô Đồng Tháp', NULL, 'tep-kho-dong-thap', 'Tép khô Đồng Tháp – đặc sản sông nước, thịt ngọt, phơi khô tự nhiên. Rang muối hoặc nấu canh bí đao đều tuyệt.', NULL, 15.99, NULL, NULL, NULL, 0, NULL, NULL, '/products/tom-kho.jpg', 'Tôm & Mực khô', 2, 80, 1, 1, 6, NULL, '', 4.936566728478506, 23, 60, '2026-05-30 09:31:30.013', '2026-05-30 10:17:58.147', NULL, '200g', NULL, NULL, 0, NULL),
(30, 'Mực Rim Cay Nha Trang', NULL, 'muc-rim-cay-nha-trang', 'Mực rim cay Nha Trang – vị cay nồng, ngọt mặn hài hòa. Snack hải sản được giới trẻ yêu thích.', NULL, 22.99, 18.39, NULL, '2026-06-29 10:17:58.571', 1, 'HOT', 'HOT', '/products/muc-kho.jpg', 'Tôm & Mực khô', 2, 70, 0, 1, 2, NULL, 'spicy', 2.785936294468901, 37, 140, '2026-05-30 09:31:30.022', '2026-05-31 14:35:50.717', NULL, '200g', NULL, NULL, 0, NULL),
(31, 'Mực Khô Một Nắng Kiên Giang', NULL, 'muc-kho-mot-nang-kien-giang', 'Mực một nắng Kiên Giang – phơi ít nắng để thịt mềm, nướng lên thơm phức, chấm muối tiêu chanh là đỉnh.', NULL, 48.99, 44.99, NULL, NULL, 1, NULL, NULL, '/products/muc-kho.jpg', 'Tôm & Mực khô', 2, 25, 1, 1, 4, 58.99, 'gift', 4.916373996835278, 5, 87, '2026-05-30 09:31:30.032', '2026-05-31 14:35:50.891', NULL, '500g', NULL, NULL, 0, NULL),
(32, 'Ghẹ Rang Muối Vũng Tàu', NULL, 'ghe-rang-muoi-vung-tau', 'Ghẹ rang muối đóng hộp Vũng Tàu – vị mặn ngọt đặc trưng, thịt ghẹ thơm ngon. Ăn kèm bia hoặc cơm trắng.', NULL, 32.99, 26.39, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/products/muc-kho.jpg', 'Tôm & Mực khô', 2, 40, 0, 1, 1, NULL, 'gift', 4.854557467914339, 33, 108, '2026-05-30 09:31:30.041', '2026-05-31 14:52:48.252', NULL, '300g', NULL, NULL, 0, NULL),
(33, 'Tôm Khô Loại 2 Cần Giờ', NULL, 'tom-kho-loai-2-can-gio', 'Tôm khô loại 2 Cần Giờ – kích thước vừa phải, giá tốt, thích hợp nấu ăn hàng ngày.', NULL, 32.99, 26.39, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/products/tom-kho.jpg', 'Tôm & Mực khô', 2, 60, 0, 1, 7, NULL, '', 3.876067650550575, 41, 146, '2026-05-30 09:31:30.046', '2026-06-02 11:31:37.597', NULL, '500g', NULL, NULL, 0, NULL),
(34, 'Mực Khô Ăn Liền Bình Thuận', NULL, 'muc-kho-an-lien-binh-thuan', 'Mực khô tẩm gia vị ăn liền Bình Thuận – xé sợi mềm mại, vị đậm đà, tiện lợi khi di chuyển.', NULL, 12.99, NULL, NULL, NULL, 0, NULL, NULL, '/products/muc-kho.jpg', 'Tôm & Mực khô', 2, 100, 1, 1, 5, NULL, 'spicy', 4.951883138733047, 19, 35, '2026-05-30 09:31:30.051', '2026-05-31 14:35:50.755', NULL, '150g', NULL, NULL, 0, NULL),
(35, 'Tôm Hùm Đất Nướng Phú Yên', NULL, 'tom-hum-dat-nuong-phu-yen', 'Tôm hùm đất sấy khô Phú Yên – đặc sản cao cấp, thịt chắc ngọt, thích hợp làm quà biếu.', NULL, 89.99, 79.99, NULL, NULL, 1, NULL, NULL, '/products/tom-kho.jpg', 'Tôm & Mực khô', 2, 15, 1, 1, 3, 109.99, 'gift', 3.925556803965356, 21, 161, '2026-05-30 09:31:30.057', '2026-05-30 10:17:58.159', NULL, '300g', NULL, NULL, 0, NULL),
(36, 'Ruốc Tôm Khô Huế', NULL, 'ruoc-tom-kho-hue', 'Ruốc tôm khô Huế – làm từ tôm đất tươi xay mịn, phơi khô. Dùng nấu bún bò hoặc ăn kèm cơm trắng.', NULL, 18.99, 15.19, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/products/tom-kho.jpg', 'Tôm & Mực khô', 2, 55, 1, 1, 6, NULL, 'traditional', 4.901152793816638, 42, 184, '2026-05-30 09:31:30.063', '2026-06-02 11:31:37.546', NULL, '250g', NULL, NULL, 0, NULL),
(37, 'Khoai Lang Sấy Đà Lạt', NULL, 'khoai-lang-say-da-lat', 'Khoai lang sấy Đà Lạt – khoai lang mật ngọt sấy khô giòn rụm. Không dầu, không đường nhân tạo, tốt cho sức khỏe.', NULL, 7.99, NULL, NULL, NULL, 0, NULL, NULL, '/traicaysay.jpeg', 'Trái cây sấy', 3, 130, 0, 1, 2, NULL, 'diet', 4.755311306425636, 46, 132, '2026-05-30 09:31:30.075', '2026-05-31 14:35:50.920', NULL, '150g', NULL, NULL, 0, NULL),
(38, 'Dứa Sấy Dẻo Tiền Giang', NULL, 'dua-say-deo-tien-giang', 'Dứa sấy dẻo Tiền Giang – vị chua ngọt tự nhiên, giữ nguyên hương thơm của dứa tươi.', NULL, 9.99, 7.99, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/traicaysay.jpeg', 'Trái cây sấy', 3, 100, 0, 1, 4, NULL, 'diet', 3.933418920457008, 29, 169, '2026-05-30 09:31:30.081', '2026-06-02 11:31:37.600', NULL, '180g', NULL, NULL, 0, NULL),
(39, 'Vải Sấy Khô Lục Ngạn', NULL, 'vai-say-kho-luc-ngan', 'Vải thiều sấy khô Lục Ngạn Bắc Giang – trái vải chín đỏ sấy khô, vị ngọt đậm, thơm quyến rũ.', NULL, 14.99, 12.99, NULL, NULL, 1, NULL, NULL, '/traicaysay.jpeg', 'Trái cây sấy', 3, 80, 1, 1, 1, 18.99, 'gift', 4.835779447094939, 16, 137, '2026-05-30 09:31:30.088', '2026-05-30 10:17:58.170', NULL, '200g', NULL, NULL, 0, NULL),
(40, 'Nhãn Sấy Hưng Yên', NULL, 'nhan-say-hung-yen', 'Nhãn lồng sấy khô Hưng Yên – đặc sản nổi tiếng miền Bắc, vị ngọt thanh, thịt dày, hạt nhỏ.', NULL, 19.99, 15.99, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/traicaysay.jpeg', 'Trái cây sấy', 3, 70, 1, 1, 7, NULL, 'gift', 2.732625075558573, 15, 66, '2026-05-30 09:31:30.094', '2026-05-31 14:52:48.256', NULL, '200g', NULL, NULL, 0, NULL),
(41, 'Mận Sấy Bắc Hà', NULL, 'man-say-bac-ha', 'Mận hậu sấy Bắc Hà Lào Cai – vị chua ngọt đặc trưng vùng núi Tây Bắc, giòn nhẹ khi mới mở gói.', NULL, 11.99, NULL, NULL, NULL, 0, NULL, NULL, '/traicaysay.jpeg', 'Trái cây sấy', 3, 90, 0, 1, 5, NULL, 'diet', 4.7, 77, 76, '2026-05-30 09:31:30.101', '2026-05-31 14:35:50.887', NULL, '200g', NULL, NULL, 0, NULL),
(42, 'Ổi Sấy Giòn Long An', NULL, 'oi-say-gion-long-an', 'Ổi sấy giòn Long An – ổi xá lị xanh giòn sấy khô, vị nhẹ ngọt, thơm dịu, tốt cho tiêu hóa.', NULL, 8.99, NULL, NULL, NULL, 0, NULL, NULL, '/traicaysay.jpeg', 'Trái cây sấy', 3, 110, 0, 1, 3, NULL, 'diet', 4.5, 89, 27, '2026-05-30 09:31:30.107', '2026-05-30 10:17:58.182', NULL, '150g', NULL, NULL, 0, NULL),
(43, 'Sapoche Sấy Dẻo Bình Thuận', NULL, 'sapoche-say-deo-binh-thuan', 'Sapoche (hồng xiêm) sấy dẻo Bình Thuận – ngọt đậm, thơm béo, dẻo mịn, đặc sản khó tìm.', NULL, 13.99, 11.19, NULL, '2026-06-30 14:52:48.239', 1, 'HOT', 'HOT', '/traicaysay.jpeg', 'Trái cây sấy', 3, 75, 0, 1, 6, NULL, 'diet', 4.2, 48, 98, '2026-05-30 09:31:30.113', '2026-05-31 14:52:48.258', NULL, '180g', NULL, NULL, 0, NULL),
(44, 'Thanh Long Sấy Dẻo Bình Thuận', NULL, 'thanh-long-say-deo-binh-thuan', 'Thanh long sấy dẻo Bình Thuận – màu đỏ hồng đẹp mắt, vị ngọt thanh nhẹ, giàu vitamin.', NULL, 11.99, 9.99, NULL, NULL, 1, NULL, NULL, '/traicaysay.jpeg', 'Trái cây sấy', 3, 85, 0, 1, 2, 14.99, 'diet,gift', 4.3, 41, 26, '2026-05-30 09:31:30.119', '2026-05-30 10:17:58.189', NULL, '180g', NULL, NULL, 0, NULL),
(45, 'Dừa Sấy Bến Tre', NULL, 'dua-say-ben-tre', 'Dừa sấy Bến Tre – cơm dừa tươi cắt mỏng sấy giòn, béo thơm tự nhiên, không dầu mỡ.', NULL, 9.99, 7.99, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/traicaysay.jpeg', 'Trái cây sấy', 3, 100, 0, 1, 4, NULL, 'diet', 4.4, 11, 19, '2026-05-30 09:31:30.125', '2026-06-02 11:31:37.603', NULL, '150g', NULL, NULL, 0, NULL),
(46, 'Sầu Riêng Sấy Khô Cái Mơn', NULL, 'sau-rieng-say-kho-cai-mon', 'Sầu riêng sấy khô Cái Mơn Bến Tre – cơm sầu riêng nguyên chất sấy khô, béo thơm cực mạnh, không phụ gia.', NULL, 24.99, 21.99, NULL, NULL, 1, NULL, NULL, '/traicaysay.jpeg', 'Trái cây sấy', 3, 40, 1, 1, 1, 29.99, 'gift', 4.8, 12, 149, '2026-05-30 09:31:30.129', '2026-05-30 10:17:58.197', NULL, '150g', NULL, NULL, 0, NULL),
(47, 'Hoa Quả Sấy Mix Tổng Hợp', NULL, 'hoa-qua-say-mix-tong-hop', 'Hỗn hợp trái cây sấy: xoài, dứa, chuối, khoai lang, mít. Đa dạng hương vị, tiện lợi ăn vặt.', NULL, 13.99, NULL, NULL, NULL, 0, NULL, NULL, '/traicaysay.jpeg', 'Trái cây sấy', 3, 90, 0, 1, 7, NULL, 'diet,gift', 4.2, 75, 166, '2026-05-30 09:31:30.134', '2026-05-31 14:35:50.845', NULL, '250g', NULL, NULL, 0, NULL),
(48, 'Trà Ổi Đào Mộc Châu', NULL, 'tra-oi-dao-moc-chau', 'Trà ổi đào Mộc Châu – lá ổi đào non sấy khô, vị thơm mát, tốt cho tiêu hóa và đường huyết.', NULL, 12.99, NULL, NULL, NULL, 0, NULL, NULL, '/tra.jpeg', 'Trà & Bánh mứt', 4, 80, 0, 1, 5, NULL, 'diet', 4.4, 61, 13, '2026-05-30 09:31:30.144', '2026-05-30 10:17:58.206', NULL, '100g', NULL, NULL, 0, NULL),
(49, 'Trà Atiso Đà Lạt', NULL, 'tra-atiso-da-lat', 'Trà atiso Đà Lạt chính hiệu – mát gan, giải nhiệt, vị hơi đắng nhẹ hậu ngọt, uống mát lành.', NULL, 15.99, 13.99, NULL, NULL, 1, NULL, NULL, '/tra.jpeg', 'Trà & Bánh mứt', 4, 90, 1, 1, 3, 19.99, 'diet,gift', 4.3, 19, 134, '2026-05-30 09:31:30.150', '2026-05-30 10:17:58.210', NULL, '100g', NULL, NULL, 0, NULL),
(50, 'Trà Hoa Cúc La Mã', NULL, 'tra-hoa-cuc-la-ma', 'Trà hoa cúc La Mã – giúp thư giãn, ngủ ngon, vị nhẹ thơm dịu. Pha nóng hoặc lạnh đều tuyệt.', NULL, 14.99, 11.99, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/tra.jpeg', 'Trà & Bánh mứt', 4, 70, 1, 1, 6, NULL, 'diet', 4.8, 40, 187, '2026-05-30 09:31:30.157', '2026-06-02 11:31:37.606', NULL, '100g', NULL, NULL, 0, NULL),
(51, 'Trà Bí Đao Mật Ong', NULL, 'tra-bi-dao-mat-ong', 'Trà bí đao kết hợp mật ong – thanh nhiệt, giải khát, ngọt tự nhiên từ mật ong nguyên chất.', NULL, 11.99, NULL, NULL, NULL, 0, NULL, NULL, '/tra.jpeg', 'Trà & Bánh mứt', 4, 85, 1, 1, 2, NULL, 'diet', 4.6, 47, 193, '2026-05-30 09:31:30.163', '2026-06-02 11:31:37.528', NULL, '200g', NULL, NULL, 0, NULL),
(52, 'Bánh Pía Sóc Trăng Sầu Riêng', NULL, 'banh-pia-soc-trang-sau-rieng', 'Bánh pía Sóc Trăng nhân sầu riêng – bánh da mỏng, nhân thơm béo, đặc sản nổi tiếng miền Tây.', NULL, 18.99, 16.99, NULL, NULL, 1, NULL, NULL, '/banhkeo.jpeg', 'Trà & Bánh mứt', 4, 60, 1, 1, 4, 22.99, 'gift,traditional', 4.7, 85, 79, '2026-05-30 09:31:30.169', '2026-05-31 14:35:50.902', NULL, '400g', NULL, NULL, 0, NULL),
(53, 'Mứt Gừng Sả Hội An', NULL, 'mut-gung-sa-hoi-an', 'Mứt gừng sả Hội An – vị cay nhẹ, thơm sả, ngọt dịu. Tốt cho tiêu hóa và giữ ấm cơ thể.', NULL, 10.99, NULL, NULL, NULL, 0, NULL, NULL, '/banhkeo.jpeg', 'Trà & Bánh mứt', 4, 75, 0, 1, 1, NULL, 'traditional', 4.5, 24, 64, '2026-05-30 09:31:30.176', '2026-05-30 10:17:58.227', NULL, '200g', NULL, NULL, 0, NULL),
(54, 'Kẹo Dừa Bến Tre Pandan', NULL, 'keo-dua-ben-tre-pandan', 'Kẹo dừa lá dứa Bến Tre – thơm béo mùi lá dứa tự nhiên, dai dẻo, vị ngọt vừa phải.', NULL, 8.99, 7.19, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/banhkeo.jpeg', 'Trà & Bánh mứt', 4, 120, 0, 1, 7, NULL, 'gift', 4.4, 16, 44, '2026-05-30 09:31:30.182', '2026-06-02 11:31:37.609', NULL, '200g', NULL, NULL, 0, NULL),
(55, 'Bánh Dẻo Nhân Đậu Xanh', NULL, 'banh-deo-nhan-dau-xanh', 'Bánh dẻo truyền thống nhân đậu xanh – vỏ dẻo mịn, nhân ngọt thơm, biểu tượng Tết Trung Thu.', NULL, 16.99, NULL, NULL, NULL, 0, NULL, NULL, '/banhkeo.jpeg', 'Trà & Bánh mứt', 4, 50, 0, 1, 5, NULL, 'gift,traditional', 5, 69, 130, '2026-05-30 09:31:30.191', '2026-05-30 10:17:58.235', NULL, '300g', NULL, NULL, 0, NULL),
(56, 'Mứt Tắc (Quất) Mật Ong', NULL, 'mut-tac-quat-mat-ong', 'Mứt tắc (quất) ngâm mật ong – vị chua ngọt thanh mát, tốt cho cổ họng, dùng pha trà hoặc ăn trực tiếp.', NULL, 12.99, NULL, NULL, NULL, 0, NULL, NULL, '/banhkeo.jpeg', 'Trà & Bánh mứt', 4, 70, 0, 1, 3, NULL, 'diet', 5, 89, 109, '2026-05-30 09:31:30.197', '2026-05-30 10:17:58.238', NULL, '250g', NULL, NULL, 0, NULL),
(57, 'Trà Móc Câu Thái Nguyên', NULL, 'tra-moc-cau-thai-nguyen', 'Trà móc câu Thái Nguyên thượng hạng – búp trà non cong móc câu, hương thơm đặc trưng vùng chè nổi tiếng.', NULL, 22.99, 19.99, NULL, NULL, 1, NULL, NULL, '/tra.jpeg', 'Trà & Bánh mứt', 4, 55, 1, 1, 6, 28.99, 'gift', 4.9, 34, 77, '2026-05-30 09:31:30.203', '2026-05-31 14:35:50.831', NULL, '100g', NULL, NULL, 0, NULL),
(58, 'Chè Khô Sen Long An', NULL, 'che-kho-sen-long-an', 'Chè (đường) khô hạt sen Long An – hạt sen nguyên chất sấy khô, ngọt thanh, bổ dưỡng, nấu chè hoặc ăn trực tiếp.', NULL, 17.99, 14.39, NULL, '2026-07-02 11:31:37.575', 1, 'HOT', 'HOT', '/banhkeo.jpeg', 'Trà & Bánh mứt', 4, 60, 1, 1, 2, NULL, 'traditional', 4.8, 78, 192, '2026-05-30 09:31:30.210', '2026-06-02 11:31:37.612', NULL, '200g', NULL, NULL, 0, NULL),
(59, 'Mắm Ruốc Huế Nguyên Chất', NULL, 'mam-ruoc-hue-nguyen-chat', 'Mắm ruốc Huế nguyên chất – làm từ tép biển tươi muối ủ lâu ngày. Màu hồng tím đặc trưng, mùi thơm nồng, dùng nấu bún bò Huế.', NULL, 13.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 65, 0, 1, 4, NULL, 'traditional,spicy', 4.9, 69, 46, '2026-05-30 09:31:30.221', '2026-05-30 10:17:58.251', NULL, '300g', NULL, NULL, 0, NULL),
(60, 'Mắm Cá Linh Châu Đốc', NULL, 'mam-ca-linh-chau-doc', 'Mắm cá linh Châu Đốc An Giang – đặc sản nổi tiếng nhất miền Tây, cá linh mùa nước nổi ủ mắm hơn 6 tháng.', NULL, 16.99, 14.99, NULL, NULL, 1, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 45, 1, 1, 1, 20.99, 'traditional', 4.7, 41, 112, '2026-05-30 09:31:30.230', '2026-05-30 10:17:58.255', NULL, '500g', NULL, NULL, 0, NULL),
(61, 'Tương Ớt Sriracha Việt Nam', NULL, 'tuong-ot-sriracha-viet-nam', 'Tương ớt Sriracha kiểu Việt – cay nồng, vị tỏi đặc trưng, không chất bảo quản. Dùng chấm, ướp hoặc nấu đều được.', NULL, 6.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 130, 0, 1, 7, NULL, 'spicy', 4.8, 55, 149, '2026-05-30 09:31:30.236', '2026-05-31 14:35:50.697', NULL, '300ml', NULL, NULL, 0, NULL),
(62, 'Muối Ớt Tôm Sả', NULL, 'muoi-ot-tom-sa', 'Muối ớt tôm sả – hỗn hợp muối, ớt, tôm khô và sả phơi khô. Chấm hoa quả hoặc rắc mì gói đều ngon.', NULL, 8.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 100, 0, 1, 5, NULL, 'spicy', 4.5, 58, 146, '2026-05-30 09:31:30.242', '2026-05-30 10:17:58.262', NULL, '100g', NULL, NULL, 0, NULL),
(63, 'Nước Mắm Nha Trang 35 Độ', NULL, 'nuoc-mam-nha-trang-35-do', 'Nước mắm cốt Nha Trang 35 độ đạm – vị ngọt hậu, màu vàng trong, thơm nhẹ hơn Phú Quốc, phù hợp nấu ăn hàng ngày.', NULL, 15.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 75, 0, 1, 3, NULL, 'traditional', 4.7, 70, 121, '2026-05-30 09:31:30.248', '2026-05-30 10:17:58.265', NULL, '500ml', NULL, NULL, 0, NULL),
(64, 'Bột Nêm Hải Sản Phú Quốc', NULL, 'bot-nem-hai-san-phu-quoc', 'Bột nêm hải sản Phú Quốc – chiết xuất từ cá cơm và tôm tươi, vị umami đậm đà tự nhiên, không bột ngọt.', NULL, 11.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 85, 0, 1, 6, NULL, '', 4.2, 29, 21, '2026-05-30 09:31:30.255', '2026-05-31 14:35:50.700', NULL, '200g', NULL, NULL, 0, NULL),
(65, 'Gia Vị Phở Bắc Hà Nội', NULL, 'gia-vi-pho-bac-ha-noi', 'Gói gia vị phở bắc truyền thống Hà Nội – quế, hồi, thảo quả, đinh hương. Nấu một gói ra nồi phở chuẩn vị.', NULL, 9.99, 8.99, NULL, NULL, 1, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 90, 1, 1, 2, 12.99, 'traditional', 4.7, 42, 192, '2026-05-30 09:31:30.261', '2026-06-02 11:31:37.530', NULL, '100g', NULL, NULL, 0, NULL),
(66, 'Gia Vị Bún Bò Huế Cay', NULL, 'gia-vi-bun-bo-hue-cay', 'Gia vị bún bò Huế cay – sả, ruốc, ớt hòa quyện, nấu chuẩn vị bún bò Huế đích thực.', NULL, 8.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 95, 1, 1, 4, NULL, 'spicy,traditional', 4.8, 21, 184, '2026-05-30 09:31:30.267', '2026-06-02 11:31:37.551', NULL, '100g', NULL, NULL, 0, NULL),
(67, 'Mắm Tôm Hải Phòng', NULL, 'mam-tom-hai-phong', 'Mắm tôm Hải Phòng nguyên chất – màu tím hồng, mùi nồng đặc trưng, không thể thiếu khi ăn bún đậu mắm tôm.', NULL, 10.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 60, 0, 1, 1, NULL, 'traditional', 4.8, 76, 11, '2026-05-30 09:31:30.272', '2026-05-30 10:17:58.277', NULL, '250g', NULL, NULL, 0, NULL),
(68, 'Tiêu Phú Quốc Nguyên Hạt', NULL, 'tieu-phu-quoc-nguyen-hat', 'Hạt tiêu đen Phú Quốc nguyên hạt – tiêu trồng tự nhiên Phú Quốc, thơm cay đặc trưng, chất lượng xuất khẩu.', NULL, 14.99, 12.99, NULL, NULL, 1, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 70, 1, 1, 7, 18.99, 'gift', 4.5, 73, 54, '2026-05-30 09:31:30.278', '2026-05-30 10:17:58.283', NULL, '200g', NULL, NULL, 0, NULL),
(69, 'Sả Khô Nghiền Tây Ninh', NULL, 'sa-kho-nghien-tay-ninh', 'Sả khô nghiền mịn Tây Ninh – sả tươi phơi khô xay thành bột, giữ nguyên tinh dầu tự nhiên.', NULL, 7.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 110, 0, 1, 5, NULL, '', 4.5, 65, 40, '2026-05-30 09:31:30.282', '2026-05-30 10:17:58.299', NULL, '100g', NULL, NULL, 0, NULL),
(70, 'Mắm Tép Hà Tĩnh', NULL, 'mam-tep-ha-tinh', 'Mắm tép Hà Tĩnh – tép tươi muối ủ theo phương pháp cổ truyền, vị đặc biệt không đâu có.', NULL, 12.99, NULL, NULL, NULL, 0, NULL, NULL, '/giavi.jpeg', 'Gia vị Việt', 5, 50, 0, 1, 3, NULL, 'traditional', 4.3, 39, 73, '2026-05-30 09:31:30.289', '2026-05-30 10:17:58.305', NULL, '300g', NULL, NULL, 0, NULL),
(71, 'Hạt Điều Rang Muối Bình Phước', NULL, 'hat-dieu-rang-muoi-binh-phuoc', 'Hạt điều rang muối Bình Phước – hạt điều nguyên trắng, rang giòn, vị mặn nhẹ. Snack cao cấp giàu dinh dưỡng.', NULL, 15.99, 13.99, NULL, NULL, 1, NULL, NULL, '/hatdinhduong.jpeg', 'Đồ ăn vặt', 9, 100, 1, 1, 6, 19.99, 'gift,diet', 4.7, 42, 151, '2026-05-30 09:31:30.295', '2026-05-30 10:17:58.320', NULL, '250g', NULL, NULL, 0, NULL),
(72, 'Đậu Phộng Da Cá Ớt Tỏi', NULL, 'dau-phong-da-ca-ot-toi', 'Đậu phộng da cá tẩm ớt tỏi – lớp da cá giòn rụm bọc ngoài hạt đậu phộng, vị cay thơm không thể dừng tay.', NULL, 8.99, NULL, NULL, NULL, 0, NULL, NULL, '/hatdinhduong.jpeg', 'Đồ ăn vặt', 9, 120, 1, 1, 2, NULL, 'spicy', 4.7, 81, 186, '2026-05-30 09:31:30.299', '2026-06-02 11:31:37.543', NULL, '200g', NULL, NULL, 0, NULL),
(73, 'Bánh Phồng Tôm Sa Giang', NULL, 'banh-phong-tom-sa-giang', 'Bánh phồng tôm Sa Giang Đồng Tháp – chiên phồng giòn rụm, thơm mùi tôm, đặc sản nổi tiếng toàn quốc.', NULL, 10.99, 8.99, NULL, NULL, 1, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 90, 1, 1, 4, 13.99, 'traditional', 4.7, 13, 198, '2026-05-30 09:31:30.303', '2026-06-02 11:31:37.510', NULL, '200g', NULL, NULL, 0, NULL),
(74, 'Hạt Sen Sấy Khô Đồng Tháp', NULL, 'hat-sen-say-kho-dong-thap', 'Hạt sen khô Đồng Tháp – hạt sen nguyên chất sấy khô, vị ngọt thanh, bổ dưỡng, dùng nấu chè hoặc ăn vặt.', NULL, 19.99, NULL, NULL, NULL, 0, NULL, NULL, '/hatdinhduong.jpeg', 'Đồ ăn vặt', 9, 65, 0, 1, 1, NULL, 'diet', 4.4, 33, 120, '2026-05-30 09:31:30.307', '2026-05-30 10:17:58.339', NULL, '200g', NULL, NULL, 0, NULL),
(75, 'Bánh Tráng Trộn Tây Ninh', NULL, 'banh-trang-tron-tay-ninh', 'Bánh tráng trộn Tây Ninh đóng gói – kèm đầy đủ gia vị: muối tôm, sate, xoài, tôm khô. Mở ra là trộn và ăn ngay.', NULL, 7.99, NULL, NULL, NULL, 0, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 150, 0, 1, 7, NULL, 'spicy', 4.9, 60, 159, '2026-05-30 09:31:30.312', '2026-05-30 10:17:58.346', NULL, '150g', NULL, NULL, 0, NULL),
(76, 'Snack Khoai Tây Vị Phô Mai', NULL, 'snack-khoai-tay-vi-pho-mai', 'Snack khoai tây vị phô mai – giòn tan, thơm béo, bổ sung phô mai tự nhiên. Snack con cưng của mọi lứa tuổi.', NULL, 5.99, NULL, NULL, NULL, 0, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 180, 0, 1, 5, NULL, '', 4.3, 38, 64, '2026-05-30 09:31:30.316', '2026-05-30 10:17:58.355', NULL, '100g', NULL, NULL, 0, NULL),
(77, 'Hạt Mắc Ca Tây Nguyên', NULL, 'hat-mac-ca-tay-nguyen', 'Hạt mắc ca (macadamia) Tây Nguyên rang bơ – béo bùi, thơm phức, được mệnh danh \'hoàng hậu các loại hạt\'.', NULL, 28.99, 25.99, NULL, NULL, 1, NULL, NULL, '/hatdinhduong.jpeg', 'Đồ ăn vặt', 9, 50, 1, 1, 3, 34.99, 'gift,diet', 4.8, 73, 103, '2026-05-30 09:31:30.321', '2026-05-30 10:17:58.361', NULL, '200g', NULL, NULL, 0, NULL),
(78, 'Bò Khô Sốt Sa Tế', NULL, 'bo-kho-sot-sa-te', 'Bò khô sốt sa tế – thịt bò nguyên thớ, tẩm sa tế cay nồng, sấy khô vừa dai vừa thơm. Nhâm nhi với bia hoặc ăn vặt.', NULL, 22.99, 19.99, NULL, NULL, 1, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 55, 1, 1, 6, 27.99, 'spicy', 4.9, 33, 71, '2026-05-30 09:31:30.327', '2026-05-31 14:35:50.893', NULL, '150g', NULL, NULL, 0, NULL),
(79, 'Khô Gà Cay Sả Tắc', NULL, 'kho-ga-cay-sa-tac', 'Khô gà cay sả tắc – ức gà xé thớ tẩm sả, tắc, ớt sấy khô. Vị chua cay mới lạ, dai thơm không ngấy.', NULL, 16.99, NULL, NULL, NULL, 0, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 70, 0, 1, 2, NULL, 'spicy', 4.6, 66, 113, '2026-05-30 09:31:30.331', '2026-05-30 10:17:58.403', NULL, '150g', NULL, NULL, 0, NULL),
(80, 'Hạt Dẻ Sấy Đà Lạt', NULL, 'hat-de-say-da-lat', 'Hạt dẻ tươi sấy Đà Lạt – bùi bùi ngọt nhẹ, thơm khói, giữ nguyên vị hạt dẻ tự nhiên vùng cao nguyên.', NULL, 13.99, NULL, NULL, NULL, 0, NULL, NULL, '/hatdinhduong.jpeg', 'Đồ ăn vặt', 9, 80, 0, 1, 4, NULL, '', 5, 46, 46, '2026-05-30 09:31:30.335', '2026-05-31 14:35:50.760', NULL, '200g', NULL, NULL, 0, NULL),
(81, 'Khô Heo Mật Ong Năm Cung', NULL, 'kho-heo-mat-ong-nam-cung', 'Khô heo (thịt lợn) mật ong – thịt heo chân giò tẩm mật ong sấy khô, vị ngọt thanh, mềm dai vừa phải.', NULL, 19.99, 17.99, NULL, NULL, 1, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 45, 1, 1, 1, 24.99, 'gift', 4.4, 25, 196, '2026-05-30 09:31:30.339', '2026-06-02 11:31:37.521', NULL, '200g', NULL, NULL, 0, NULL),
(82, 'Đậu Hũ Khô Tẩm Gia Vị', NULL, 'dau-hu-kho-tam-gia-vi', 'Đậu hũ (đậu phụ) khô tẩm gia vị – miếng đậu hũ vàng ươm sấy khô, vị mặn ngọt, giàu protein thực vật.', NULL, 9.99, NULL, NULL, NULL, 0, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 90, 0, 1, 7, NULL, 'diet', 4.7, 59, 173, '2026-05-30 09:31:30.344', '2026-05-31 14:35:50.805', NULL, '150g', NULL, NULL, 0, NULL),
(83, 'Snack Rong Biển Giòn', NULL, 'snack-rong-bien-gion', 'Snack rong biển sấy giòn – giàu khoáng chất, vị mặn nhẹ biển khơi, ăn thuần chay, ít calo.', NULL, 7.99, NULL, NULL, NULL, 0, NULL, NULL, '/doanvat.jpeg', 'Đồ ăn vặt', 9, 100, 0, 1, 5, NULL, 'diet', 4.8, 51, 54, '2026-05-30 09:31:30.348', '2026-05-30 10:17:58.425', NULL, '50g', NULL, NULL, 0, NULL),
(84, 'Hạt Dưa Rang Muối Tết', NULL, 'hat-dua-rang-muoi-tet', 'Hạt dưa rang muối truyền thống – nhân trắng, vỏ giòn đỏ đẹp, đặc sản ngày Tết không thể thiếu.', NULL, 12.99, NULL, NULL, NULL, 0, NULL, NULL, '/hatdinhduong.jpeg', 'Đồ ăn vặt', 9, 100, 0, 1, 3, NULL, 'traditional,gift', 4.5, 22, 152, '2026-05-30 09:31:30.352', '2026-05-31 14:35:50.713', NULL, '300g', NULL, NULL, 0, NULL),
(85, 'Gạo ST25 An Giang Thơm Ngon', NULL, 'gao-st25-an-giang-thom-ngon', 'Gạo ST25 An Giang – giống gạo ngon nhất thế giới 2019, hạt dài, cơm dẻo mềm, thơm thoang thoảng hương lài.', NULL, 24.99, 21.99, NULL, NULL, 1, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 50, 1, 1, 6, 29.99, 'gift', 4.5, 76, 44, '2026-05-30 09:31:30.359', '2026-05-31 14:35:50.836', NULL, '2kg', NULL, NULL, 0, NULL),
(86, 'Gạo Hương Lài Thơm Sóc Trăng', NULL, 'gao-huong-lai-thom-soc-trang', 'Gạo hương lài thơm Sóc Trăng – hạt gạo thơm mùi lài tự nhiên, cơm dẻo ngon, phù hợp ăn hàng ngày.', NULL, 19.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 60, 0, 1, 2, NULL, '', 4.7, 34, 127, '2026-05-30 09:31:30.364', '2026-05-30 10:17:58.439', NULL, '2kg', NULL, NULL, 0, NULL),
(87, 'Nếp Cái Hoa Vàng Hải Hậu', NULL, 'nep-cai-hoa-vang-hai-hau', 'Nếp cái hoa vàng Hải Hậu Nam Định – loại nếp quý nhất Bắc Bộ, dẻo thơm đặc biệt, dùng nấu xôi hoặc làm rượu.', NULL, 22.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 45, 0, 1, 4, NULL, 'traditional', 4.5, 36, 66, '2026-05-30 09:31:30.368', '2026-05-30 10:17:58.444', NULL, '1kg', NULL, NULL, 0, NULL),
(88, 'Bắp Rang Bơ Tây Nguyên', NULL, 'bap-rang-bo-tay-nguyen', 'Bắp (ngô) rang bơ Tây Nguyên – bắp nếp vàng rang với bơ tươi, hạt to tròn, béo thơm ngọt.', NULL, 8.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 110, 0, 1, 1, NULL, '', 4.8, 84, 88, '2026-05-30 09:31:30.373', '2026-05-30 10:17:58.448', NULL, '200g', NULL, NULL, 0, NULL),
(89, 'Đậu Phộng Nguyên Hạt Tây Ninh', NULL, 'dau-phong-nguyen-hat-tay-ninh', 'Đậu phộng (lạc) nguyên hạt Tây Ninh – hạt mẩy, đỏ đều, bùi ngậy, giàu protein và chất béo tốt.', NULL, 9.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 100, 0, 1, 7, NULL, '', 4.3, 45, 77, '2026-05-30 09:31:30.378', '2026-05-30 10:17:58.452', NULL, '500g', NULL, NULL, 0, NULL),
(90, 'Mè (Vừng) Đen Thanh Hóa', NULL, 'me-vung-den-thanh-hoa', 'Mè đen Thanh Hóa – hạt mè giàu canxi, omega-3, dùng rang lên rắc xôi, bánh hoặc ép dầu mè thơm.', NULL, 7.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 90, 1, 1, 5, NULL, 'diet', 4.9, 66, 177, '2026-05-30 09:31:30.382', '2026-06-02 11:31:37.554', NULL, '300g', NULL, NULL, 0, NULL),
(91, 'Đậu Đen Xanh Lòng Đà Lạt', NULL, 'dau-den-xanh-long-da-lat', 'Đậu đen xanh lòng Đà Lạt – hạt đậu đen vỏ, ruột xanh, nấu chè hoặc rang uống thay trà đều tốt cho sức khỏe.', NULL, 11.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 75, 0, 1, 3, NULL, 'diet', 4.9, 59, 132, '2026-05-30 09:31:30.387', '2026-05-30 10:17:58.462', NULL, '500g', NULL, NULL, 0, NULL),
(92, 'Bột Gạo Lứt Nguyên Cám', NULL, 'bot-gao-lut-nguyen-cam', 'Bột gạo lứt nguyên cám – xay từ gạo lứt nguyên hạt, giàu vitamin B, chất xơ, tốt cho người ăn kiêng.', NULL, 12.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 80, 0, 1, 6, NULL, 'diet', 4.5, 89, 24, '2026-05-30 09:31:30.393', '2026-05-30 10:17:58.467', NULL, '500g', NULL, NULL, 0, NULL),
(93, 'Khoai Mì (Sắn) Khô Tây Nguyên', NULL, 'khoai-mi-san-kho-tay-nguyen', 'Khoai mì sấy khô Tây Nguyên – sắn ngọt thái lát phơi khô, dùng nấu canh hoặc làm bánh.', NULL, 6.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 120, 0, 1, 2, NULL, '', 4.3, 70, 36, '2026-05-30 09:31:30.399', '2026-05-31 14:35:50.734', NULL, '500g', NULL, NULL, 0, NULL),
(94, 'Muối Biển Hạt To Cần Giờ', NULL, 'muoi-bien-hat-to-can-gio', 'Muối biển hạt to Cần Giờ – thu từ đồng muối tự nhiên, hạt to sáng, dùng làm muối nướng hoặc ngâm rau.', NULL, 5.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 150, 0, 1, 4, NULL, '', 4.8, 18, 144, '2026-05-30 09:31:30.402', '2026-05-31 14:35:50.934', NULL, '500g', NULL, NULL, 0, NULL),
(95, 'Đường Thốt Nốt An Giang', NULL, 'duong-thot-not-an-giang', 'Đường thốt nốt An Giang – được nấu từ nước thốt nốt nguyên chất, màu vàng nâu, vị ngọt thanh có hậu.', NULL, 13.99, 11.99, NULL, NULL, 1, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 70, 0, 1, 1, 16.99, 'traditional', 4.5, 44, 154, '2026-05-30 09:31:30.407', '2026-05-30 10:17:58.481', NULL, '500g', NULL, NULL, 0, NULL),
(96, 'Bột Năng Khoai Mì Tây Ninh', NULL, 'bot-nang-khoai-mi-tay-ninh', 'Bột năng (tinh bột sắn) Tây Ninh – trắng mịn, dẻo dai, dùng làm bánh xu xê, bánh bột lọc hoặc nấu chè.', NULL, 7.99, NULL, NULL, NULL, 0, NULL, NULL, '/gao-nong-san.png', 'Gạo & Nông sản', 6, 95, 0, 1, 7, NULL, '', 4.3, 87, 82, '2026-05-30 09:31:30.412', '2026-05-30 10:17:58.486', NULL, '500g', NULL, NULL, 0, NULL),
(97, 'Cà Phê Arabica Đà Lạt', NULL, 'ca-phe-arabica-da-lat', 'Cà phê Arabica Đà Lạt rang xay nguyên chất – vị chua nhẹ, thơm hoa quả, phù hợp pha pour-over hoặc drip.', NULL, 19.99, 17.99, NULL, NULL, 1, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 60, 1, 1, 5, 24.99, 'gift', 4.9, 48, 111, '2026-05-30 09:31:30.417', '2026-05-30 10:17:58.490', NULL, '250g', NULL, NULL, 0, NULL),
(98, 'Cà Phê Robusta Buôn Ma Thuột', NULL, 'ca-phe-robusta-buon-ma-thuot', 'Cà phê Robusta Buôn Ma Thuột rang đậm – vị đắng mạnh, thơm nồng, phin truyền thống là ngon nhất.', NULL, 15.99, NULL, NULL, NULL, 0, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 75, 0, 1, 3, NULL, 'traditional', 4.4, 48, 172, '2026-05-30 09:31:30.423', '2026-05-30 10:17:58.495', NULL, '250g', NULL, NULL, 0, NULL),
(99, 'Nước Sâm Bí Đao Đóng Gói', NULL, 'nuoc-sam-bi-dao-dong-goi', 'Nước sâm bí đao khô đóng gói – pha với nước sôi là có ngay thức uống thanh nhiệt giải khát truyền thống.', NULL, 9.99, NULL, NULL, NULL, 0, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 100, 0, 1, 6, NULL, 'diet,traditional', 4.7, 19, 26, '2026-05-30 09:31:30.428', '2026-05-30 10:17:58.499', NULL, '100g', NULL, NULL, 0, NULL),
(100, 'Bột Cacao Nguyên Chất Đắk Lắk', NULL, 'bot-cacao-nguyen-chat-dak-lak', 'Bột cacao nguyên chất Đắk Lắk – 100% cacao tự nhiên, không đường, không phụ gia. Pha kem cacao hoặc làm bánh.', NULL, 16.99, NULL, NULL, NULL, 0, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 65, 1, 1, 2, NULL, 'diet', 4.7, 57, 201, '2026-05-30 09:31:30.432', '2026-06-02 11:31:37.503', NULL, '200g', NULL, NULL, 0, NULL),
(101, 'Mật Ong Rừng Tây Nguyên', NULL, 'mat-ong-rung-tay-nguyen', 'Mật ong rừng Tây Nguyên nguyên chất – ong tự nhiên hút hoa rừng, màu vàng sẫm, vị ngọt đậm, sánh mịn.', NULL, 29.99, 26.99, NULL, NULL, 1, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 40, 1, 1, 4, 35.99, 'gift,diet', 4.5, 22, 53, '2026-05-30 09:31:30.436', '2026-05-30 10:17:58.508', NULL, '500ml', NULL, NULL, 0, NULL),
(102, 'Trà Sữa Hòa Tan Thái Lan', NULL, 'tra-sua-hoa-tan-thai-lan', 'Trà sữa Thái Lan hòa tan – màu cam vàng đẹp mắt, vị béo ngọt đặc trưng, pha nóng hoặc lạnh đều ngon.', NULL, 11.99, NULL, NULL, NULL, 0, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 90, 1, 1, 1, NULL, '', 4.3, 25, 193, '2026-05-30 09:31:30.439', '2026-06-02 11:31:37.525', NULL, '200g', NULL, NULL, 0, NULL),
(103, 'Nước Dừa Tươi Đóng Hộp Bến Tre', NULL, 'nuoc-dua-tuoi-dong-hop-ben-tre', 'Nước dừa tươi đóng hộp Bến Tre – 100% nước dừa nguyên chất, không đường, không bảo quản, thanh mát tự nhiên.', NULL, 8.99, NULL, NULL, NULL, 0, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 110, 1, 1, 7, NULL, 'diet', 4.9, 58, 203, '2026-05-30 09:31:30.445', '2026-06-02 11:31:37.500', NULL, '330ml', NULL, NULL, 0, NULL),
(104, 'Rượu Cần Tây Nguyên', NULL, 'ruou-can-tay-nguyen', 'Rượu cần Tây Nguyên – rượu gạo nếp ủ truyền thống của người Ê Đê, uống qua cần trúc, vị nhẹ thơm.', NULL, 35.99, NULL, NULL, NULL, 0, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 30, 0, 1, 5, NULL, 'traditional,gift', 4.5, 62, 84, '2026-05-30 09:31:30.450', '2026-05-30 10:17:58.523', NULL, '1L', NULL, NULL, 0, NULL),
(105, 'Bột Sắn Dây Bình Thuận', NULL, 'bot-san-day-binh-thuan', 'Bột sắn dây Bình Thuận – pha với đường phèn và nước lạnh là có ngay thức uống thanh nhiệt giải say rượu.', NULL, 10.99, NULL, NULL, NULL, 0, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 80, 0, 1, 3, NULL, 'diet', 4.7, 29, 176, '2026-05-30 09:31:30.455', '2026-05-31 14:35:50.740', NULL, '300g', NULL, NULL, 0, NULL),
(106, 'Cà Phê Chồn Weasel Nguyên Chất', NULL, 'ca-phe-chon-weasel-nguyen-chat', 'Cà phê chồn Weasel nguyên chất – cà phê cao cấp nhất Việt Nam, vị đắng nhẹ, hậu vị ngọt kéo dài, không chua.', NULL, 59.99, 54.99, NULL, NULL, 1, NULL, NULL, '/do-uong.png', 'Đồ uống', 7, 20, 1, 1, 6, 75.99, 'gift', 4.9, 20, 138, '2026-05-30 09:31:30.460', '2026-05-30 10:17:58.529', NULL, '100g', NULL, NULL, 0, NULL),
(107, 'Nem Ninh Hòa Khánh Hòa', NULL, 'nem-ninh-hoa-khanh-hoa', 'Nem Ninh Hòa đặc sản Khánh Hòa – nem chua cuốn lá vông, vị chua ngọt cay nồng, đặc sản khó quên.', NULL, 16.99, NULL, NULL, NULL, 0, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 50, 1, 1, 2, NULL, 'traditional', 4.3, 53, 167, '2026-05-30 09:31:30.464', '2026-05-30 10:17:58.533', NULL, '300g', NULL, NULL, 0, NULL),
(108, 'Chả Lụa Hà Nội Bách Hóa', NULL, 'cha-lua-ha-noi-bach-hoa', 'Chả lụa (giò lụa) Hà Nội truyền thống – làm từ thịt heo xay mịn, gói lá chuối, thơm ngon mịn mềm.', NULL, 21.99, 18.99, NULL, NULL, 1, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 40, 1, 1, 4, 25.99, 'traditional', 4.6, 27, 192, '2026-05-30 09:31:30.468', '2026-06-02 11:31:37.536', NULL, '500g', NULL, NULL, 0, NULL),
(109, 'Bánh Cuốn Hà Nội Khô', NULL, 'banh-cuon-ha-noi-kho', 'Bánh cuốn Hà Nội khô – bánh cuốn cán mỏng sấy khô, hấp lại là ăn ngay với chả, chấm nước mắm chua ngọt.', NULL, 12.99, NULL, NULL, NULL, 0, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 222, 1, 1, 1, NULL, 'traditional', 4.8, 25, 184, '2026-05-30 09:31:30.472', '2026-06-04 08:20:38.589', NULL, '200g', NULL, NULL, 0, NULL),
(110, 'Thịt Lợn Sấy Khô Sơn La', NULL, 'thit-lon-say-kho-son-la', 'Thịt lợn sấy khô Sơn La – lợn cắp nách núi sấy khô theo phong cách người Thái Tây Bắc. Vị đậm đà, thơm khói.', NULL, 32.99, 28.99, NULL, NULL, 1, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 35, 1, 1, 7, 39.99, 'gift,traditional', 4.8, 26, 151, '2026-05-30 09:31:30.476', '2026-05-31 14:35:50.879', NULL, '200g', NULL, NULL, 0, NULL),
(111, 'Cơm Lam Ống Tre Tây Bắc', NULL, 'com-lam-ong-tre-tay-bac', 'Cơm lam ống tre Tây Bắc – nếp nương đổ vào ống tre non nướng trên than hồng. Thơm mùi tre, dẻo béo ngất.', NULL, 14.99, NULL, NULL, NULL, 0, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 45, 0, 1, 5, NULL, 'traditional', 4.6, 21, 172, '2026-05-30 09:31:30.481', '2026-05-31 14:35:50.802', NULL, '300g', NULL, NULL, 0, NULL),
(112, 'Mắm Bò Hóc Khmer Trà Vinh', NULL, 'mam-bo-hoc-khmer-tra-vinh', 'Mắm bò hóc (Prahok) Khmer Trà Vinh – đặc sản của người Khmer Nam Bộ, dùng nấu canh chua hoặc kho thịt.', NULL, 18.99, NULL, NULL, NULL, 0, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 40, 0, 1, 3, NULL, 'traditional', 4.2, 53, 162, '2026-05-30 09:31:30.488', '2026-05-30 10:17:58.548', NULL, '400g', NULL, NULL, 0, NULL),
(113, 'Lạp Xưởng Tươi Cần Thơ', NULL, 'lap-xuong-tuoi-can-tho', 'Lạp xưởng tươi Cần Thơ – thịt heo xay trộn gia vị nhồi ruột, phơi khô. Nướng hoặc chiên đều thơm ngon.', NULL, 24.99, 21.99, NULL, NULL, 1, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 45, 1, 1, 6, 29.99, 'traditional', 4.4, 42, 140, '2026-05-30 09:31:30.495', '2026-06-04 08:21:23.187', NULL, '400g', NULL, NULL, 0, NULL),
(114, 'Bánh Xèo Bột Pha Sẵn Miền Tây', NULL, 'banh-xeo-bot-pha-san-mien-tay', 'Bột bánh xèo miền Tây pha sẵn – bột gạo xay trộn nghệ, thêm nước cốt dừa là chiên được bánh xèo vàng giòn.', NULL, 9.99, NULL, NULL, NULL, 0, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 80, 0, 0, 2, NULL, 'traditional', 4.7, 17, 139, '2026-05-30 09:31:30.498', '2026-06-04 08:21:10.216', NULL, '400g', NULL, '2026-06-04 08:21:10.213', 1, NULL),
(115, 'Ruốc (Chà Bông) Heo Sài Gòn', NULL, 'ruoc-cha-bong-heo-sai-gon', 'Ruốc chà bông heo Sài Gòn – thịt heo rang tơi nhuyễn, vị mặn ngọt vừa phải, rắc cháo, ăn với bánh mì đều ngon.', NULL, 13.99, NULL, NULL, NULL, 0, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 70, 1, 0, 4, NULL, 'traditional', 4.5, 49, 159, '2026-05-30 09:31:30.506', '2026-06-03 04:51:19.310', NULL, '200g', NULL, '2026-06-03 04:51:19.306', 1, NULL),
(116, 'Tôm Khô Hải Sản Mix Quà Biếu', NULL, 'tom-kho-hai-san-mix-qua-bieu', 'Hộp quà hải sản khô tổng hợp – tôm khô, mực khô, cá khô các loại đóng hộp đẹp, thích hợp biếu tặng dịp lễ Tết.', NULL, 69.99, 59.99, NULL, NULL, 1, NULL, NULL, '/dac-san-vung-mien.png', 'Đặc sản vùng miền', 8, 20, 1, 0, 1, 85.99, 'gift', 4.9, 85, 47, '2026-05-30 09:31:30.514', '2026-05-31 13:00:12.814', NULL, '1kg', NULL, '2026-05-31 13:00:12.813', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham_flash_sale`
--

CREATE TABLE `san_pham_flash_sale` (
  `ma_san_pham_flash_sale` int(11) NOT NULL,
  `ma_chien_dich` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `gia_khuyen_mai` double NOT NULL,
  `gioi_han_so_luong` int(11) DEFAULT NULL,
  `so_luong_da_ban` int(11) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham_flash_sale`
--

INSERT INTO `san_pham_flash_sale` (`ma_san_pham_flash_sale`, `ma_chien_dich`, `ma_san_pham`, `gia_khuyen_mai`, `gioi_han_so_luong`, `so_luong_da_ban`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, 1, 14.29, 14, 14, '2026-05-30 10:17:57.715', '2026-05-30 10:17:57.715'),
(2, 1, 2, 10.99, 22, 13, '2026-05-30 10:17:57.719', '2026-05-30 10:17:57.719'),
(3, 1, 3, 9.59, 23, 19, '2026-05-30 10:17:57.723', '2026-05-30 10:17:57.723'),
(4, 1, 4, 29.89, 49, 10, '2026-05-30 10:17:57.726', '2026-05-30 10:17:57.726'),
(5, 1, 5, 39.19, 56, 10, '2026-05-30 10:17:57.728', '2026-05-30 10:17:57.728'),
(6, 1, 6, 25.19, 44, 14, '2026-05-30 10:17:57.731', '2026-05-30 10:17:57.731'),
(7, 1, 7, 7.79, 30, 17, '2026-05-30 10:17:57.735', '2026-05-30 10:17:57.735'),
(8, 1, 8, 5.39, 53, 14, '2026-05-30 10:17:57.738', '2026-05-30 10:17:57.738'),
(9, 1, 9, 5.5, 12, 7, '2026-05-30 10:17:57.740', '2026-05-30 10:17:57.740'),
(10, 1, 10, 10.49, 13, 11, '2026-05-30 10:17:57.742', '2026-05-30 10:17:57.742'),
(11, 1, 11, 18.84, 59, 8, '2026-05-30 10:17:57.744', '2026-05-30 10:17:57.744'),
(12, 1, 12, 3.84, 19, 1, '2026-05-30 10:17:57.747', '2026-05-30 10:17:57.747'),
(13, 1, 13, 11.39, 29, 14, '2026-05-30 10:17:57.749', '2026-05-30 10:17:57.749'),
(14, 1, 14, 5, 18, 10, '2026-05-30 10:17:57.751', '2026-05-30 10:17:57.751'),
(15, 1, 15, 5.19, 40, 13, '2026-05-30 10:17:57.754', '2026-05-30 10:17:57.754'),
(16, 1, 16, 20.99, 56, 14, '2026-05-30 10:17:57.756', '2026-05-30 10:17:57.756'),
(17, 1, 17, 16.09, 17, 1, '2026-05-30 10:17:57.758', '2026-05-30 10:17:57.758'),
(18, 1, 18, 12.34, 18, 19, '2026-05-30 10:17:57.761', '2026-05-30 10:17:57.761'),
(19, 1, 19, 10.19, 32, 1, '2026-05-30 10:17:57.764', '2026-05-30 10:17:57.764'),
(20, 1, 20, 8.44, 30, 11, '2026-05-30 10:17:57.767', '2026-05-30 10:17:57.767'),
(21, 1, 21, 21.44, 27, 19, '2026-05-30 10:17:57.770', '2026-05-30 10:17:57.770'),
(22, 1, 22, 17.39, 23, 7, '2026-05-30 10:17:57.772', '2026-05-30 10:17:57.772'),
(23, 1, 23, 14.69, 50, 11, '2026-05-30 10:17:57.775', '2026-05-30 10:17:57.775'),
(24, 1, 24, 16.5, 14, 11, '2026-05-30 10:17:57.778', '2026-05-30 10:17:57.778'),
(25, 1, 25, 6.99, 35, 11, '2026-05-30 10:17:57.780', '2026-05-30 10:17:57.780'),
(26, 1, 26, 8.99, 53, 8, '2026-05-30 10:17:57.783', '2026-05-30 10:17:57.783'),
(27, 1, 27, 17.54, 37, 8, '2026-05-30 10:17:57.786', '2026-05-30 10:17:57.786'),
(28, 1, 28, 18.84, 32, 17, '2026-05-30 10:17:57.788', '2026-05-30 10:17:57.788'),
(29, 1, 29, 10.39, 14, 18, '2026-05-30 10:17:57.790', '2026-05-30 10:17:57.790'),
(30, 1, 30, 12.64, 36, 15, '2026-05-30 10:17:57.791', '2026-05-30 10:17:57.791');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `su_kien_hanh_vi`
--

CREATE TABLE `su_kien_hanh_vi` (
  `ma_su_kien` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) DEFAULT NULL,
  `ma_phien_lam_viec` varchar(191) NOT NULL,
  `loai_su_kien` varchar(191) NOT NULL,
  `du_lieu_su_kien` longtext DEFAULT NULL,
  `duong_dan_url` varchar(500) DEFAULT NULL,
  `nguon_truy_cap` varchar(500) DEFAULT NULL,
  `loai_thiet_bi` varchar(191) NOT NULL DEFAULT 'desktop',
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `su_kien_hanh_vi`
--

INSERT INTO `su_kien_hanh_vi` (`ma_su_kien`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `loai_su_kien`, `du_lieu_su_kien`, `duong_dan_url`, `nguon_truy_cap`, `loai_thiet_bi`, `ngay_tao`) VALUES
(533, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 10:09:30.845'),
(534, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 04:09:31.845'),
(535, 1, 'sess_1_1780402170845', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 00:09:32.845'),
(536, 1, 'sess_1_1780402170845', 'add_to_cart', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 06:09:33.845'),
(537, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 23:09:34.845'),
(538, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 19:09:35.845'),
(539, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 14:09:36.845'),
(540, 1, 'sess_1_1780402170845', 'add_to_cart', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 11:09:37.845'),
(541, 1, 'sess_1_1780402170845', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 01:09:38.845'),
(542, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 11:09:39.845'),
(543, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 20:09:40.845'),
(544, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 06:09:41.845'),
(545, 1, 'sess_1_1780402170845', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-28 10:09:42.845'),
(546, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 06:09:43.845'),
(547, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 20:09:44.845'),
(548, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 13:09:45.845'),
(549, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 20:09:46.845'),
(550, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 12:09:47.845'),
(551, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 01:09:48.845'),
(552, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 21:09:49.845'),
(553, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 20:09:50.845'),
(554, 1, 'sess_1_1780402170845', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 07:09:51.845'),
(555, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 02:09:52.845'),
(556, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 07:09:53.845'),
(557, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 19:09:54.845'),
(558, 1, 'sess_1_1780402170845', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 06:09:55.845'),
(559, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 12:09:56.845'),
(560, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 14:09:57.845'),
(561, 1, 'sess_1_1780402170845', 'add_to_cart', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 04:09:58.845'),
(562, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 08:09:59.845'),
(563, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 00:10:00.845'),
(564, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 19:10:01.845'),
(565, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 11:10:02.845'),
(566, 1, 'sess_1_1780402170845', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 00:10:03.845'),
(567, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 12:10:04.845'),
(568, 1, 'sess_1_1780402170845', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-01 09:10:05.845'),
(569, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 23:10:06.845'),
(570, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 20:10:07.845'),
(571, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 03:10:08.845'),
(572, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 04:10:09.845'),
(573, 1, 'sess_1_1780402170845', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 20:10:10.845'),
(574, 1, 'sess_1_1780402170845', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 13:10:11.845'),
(575, 1, 'sess_1_1780402170845', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 06:10:12.845'),
(576, 1, 'sess_1_1780402170845', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 06:10:13.845'),
(577, 2, 'sess_2_1780402170922', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 05:09:30.845'),
(578, 2, 'sess_2_1780402170922', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 01:09:31.845'),
(579, 2, 'sess_2_1780402170922', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 01:09:32.845'),
(580, 2, 'sess_2_1780402170922', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 23:09:33.845'),
(581, 2, 'sess_2_1780402170922', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 15:09:34.845'),
(582, 2, 'sess_2_1780402170922', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 20:09:35.845'),
(583, 2, 'sess_2_1780402170922', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 17:09:36.845'),
(584, 2, 'sess_2_1780402170922', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 08:09:37.845'),
(585, 2, 'sess_2_1780402170922', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 05:09:38.845'),
(586, 2, 'sess_2_1780402170922', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 22:09:39.845'),
(587, 2, 'sess_2_1780402170922', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 23:09:40.845'),
(588, 3, 'sess_3_1780402170937', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 20:09:30.845'),
(589, 3, 'sess_3_1780402170937', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 04:09:31.845'),
(590, 3, 'sess_3_1780402170937', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-26 23:09:32.845'),
(591, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 03:09:30.845'),
(592, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 16:09:31.845'),
(593, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 02:09:32.845'),
(594, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 17:09:33.845'),
(595, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 07:09:34.845'),
(596, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-29 16:09:35.845'),
(597, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 19:09:36.845'),
(598, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 11:09:37.845'),
(599, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 17:09:38.845'),
(600, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 17:09:39.845'),
(601, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 21:09:40.845'),
(602, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 18:09:41.845'),
(603, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 22:09:42.845'),
(604, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 05:09:43.845'),
(605, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 17:09:44.845'),
(606, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 09:09:45.845'),
(607, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-01 16:09:46.845'),
(608, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 22:09:47.845'),
(609, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 21:09:48.845'),
(610, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 01:09:49.845'),
(611, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-01 05:09:50.845'),
(612, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 05:09:51.845'),
(613, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 23:09:52.845'),
(614, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 01:09:53.845'),
(615, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-01 01:09:54.845'),
(616, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 01:09:55.845'),
(617, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 03:09:56.845'),
(618, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-01 18:09:57.845'),
(619, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 14:09:58.845'),
(620, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 05:09:59.845'),
(621, 4, 'sess_4_1780402170941', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-29 02:10:00.845'),
(622, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 01:10:01.845'),
(623, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 05:10:02.845'),
(624, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 14:10:03.845'),
(625, 4, 'sess_4_1780402170941', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 14:10:04.845'),
(626, 4, 'sess_4_1780402170941', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 08:10:05.845'),
(627, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 15:10:06.845'),
(628, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 18:10:07.845'),
(629, 4, 'sess_4_1780402170941', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 09:10:08.845'),
(630, 5, 'sess_5_1780402170997', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 01:09:30.845'),
(631, 5, 'sess_5_1780402170997', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 13:09:31.845'),
(632, 5, 'sess_5_1780402170997', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 02:09:32.845'),
(633, 5, 'sess_5_1780402170997', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 23:09:33.845'),
(634, 5, 'sess_5_1780402170997', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 13:09:34.845'),
(635, 5, 'sess_5_1780402170997', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 16:09:35.845'),
(636, 5, 'sess_5_1780402170997', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-29 16:09:36.845'),
(637, 5, 'sess_5_1780402170997', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 18:09:37.845'),
(638, 5, 'sess_5_1780402170997', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 18:09:38.845'),
(639, 5, 'sess_5_1780402170997', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-27 01:09:39.845'),
(640, 5, 'sess_5_1780402170997', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 12:09:40.845'),
(641, 5, 'sess_5_1780402170997', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 13:09:41.845'),
(642, 5, 'sess_5_1780402170997', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 07:09:42.845'),
(643, 5, 'sess_5_1780402170997', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 02:09:43.845'),
(644, 5, 'sess_5_1780402170997', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 16:09:44.845'),
(645, 5, 'sess_5_1780402170997', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 09:09:45.845'),
(646, 5, 'sess_5_1780402170997', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-02 02:09:46.845'),
(647, 5, 'sess_5_1780402170997', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 20:09:47.845'),
(648, 5, 'sess_5_1780402170997', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 15:09:48.845'),
(649, 6, 'sess_6_1780402171021', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 09:09:30.845'),
(650, 6, 'sess_6_1780402171021', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 15:09:31.845'),
(651, 6, 'sess_6_1780402171021', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-01 06:09:32.845'),
(652, 6, 'sess_6_1780402171021', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-28 21:09:33.845'),
(653, 6, 'sess_6_1780402171021', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 16:09:34.845'),
(654, 6, 'sess_6_1780402171021', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 23:09:35.845'),
(655, 7, 'sess_7_1780402171028', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-27 21:09:30.845'),
(656, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 23:09:31.845'),
(657, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 02:09:32.845'),
(658, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 19:09:33.845'),
(659, 7, 'sess_7_1780402171028', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-28 20:09:34.845'),
(660, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 23:09:35.845'),
(661, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 10:09:36.845'),
(662, 7, 'sess_7_1780402171028', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 00:09:37.845'),
(663, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 01:09:38.845'),
(664, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 08:09:39.845'),
(665, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 07:09:40.845'),
(666, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 04:09:41.845'),
(667, 7, 'sess_7_1780402171028', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 01:09:42.845'),
(668, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 17:09:43.845'),
(669, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 23:09:44.845'),
(670, 7, 'sess_7_1780402171028', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 00:09:45.845'),
(671, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 03:09:46.845'),
(672, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 14:09:47.845'),
(673, 7, 'sess_7_1780402171028', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 19:09:48.845'),
(674, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 17:09:49.845'),
(675, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 18:09:50.845'),
(676, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 19:09:51.845'),
(677, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 10:09:52.845'),
(678, 7, 'sess_7_1780402171028', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 20:09:53.845'),
(679, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 17:09:54.845'),
(680, 7, 'sess_7_1780402171028', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-02 02:09:55.845'),
(681, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 11:09:56.845'),
(682, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 00:09:57.845'),
(683, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 16:09:58.845'),
(684, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 12:09:59.845'),
(685, 7, 'sess_7_1780402171028', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 06:10:00.845'),
(686, 7, 'sess_7_1780402171028', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 10:10:01.845'),
(687, 7, 'sess_7_1780402171028', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 02:10:02.845'),
(688, 7, 'sess_7_1780402171028', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-28 07:10:03.845'),
(689, 8, 'sess_8_1780402171076', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 04:09:30.845'),
(690, 8, 'sess_8_1780402171076', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 21:09:31.845'),
(691, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 01:09:32.845'),
(692, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 05:09:33.845'),
(693, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 22:09:34.845'),
(694, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 16:09:35.845'),
(695, 8, 'sess_8_1780402171076', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 22:09:36.845'),
(696, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 16:09:37.845'),
(697, 8, 'sess_8_1780402171076', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 09:09:38.845'),
(698, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 23:09:39.845'),
(699, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 06:09:40.845'),
(700, 8, 'sess_8_1780402171076', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-02 10:09:41.845'),
(701, 8, 'sess_8_1780402171076', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-27 18:09:42.845'),
(702, 8, 'sess_8_1780402171076', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 10:09:43.845'),
(703, 8, 'sess_8_1780402171076', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 06:09:44.845'),
(704, 8, 'sess_8_1780402171076', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 06:09:45.845'),
(705, 8, 'sess_8_1780402171076', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 14:09:46.845'),
(706, 9, 'sess_9_1780402171100', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 05:09:30.845'),
(707, 9, 'sess_9_1780402171100', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 00:09:31.845'),
(708, 9, 'sess_9_1780402171100', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 10:09:32.845'),
(709, 9, 'sess_9_1780402171100', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 19:09:33.845'),
(710, 9, 'sess_9_1780402171100', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-26 15:09:34.845'),
(711, 9, 'sess_9_1780402171100', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 22:09:35.845'),
(712, 9, 'sess_9_1780402171100', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 23:09:36.845'),
(713, 10, 'sess_10_1780402171109', 'add_to_cart', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 20:09:30.845'),
(714, 10, 'sess_10_1780402171109', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 13:09:31.845'),
(715, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 12:09:32.845'),
(716, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 04:09:33.845'),
(717, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 02:09:34.845'),
(718, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 01:09:35.845'),
(719, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 20:09:36.845'),
(720, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 09:09:37.845'),
(721, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 20:09:38.845'),
(722, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 13:09:39.845'),
(723, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 18:09:40.845'),
(724, 10, 'sess_10_1780402171109', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 10:09:41.845'),
(725, 10, 'sess_10_1780402171109', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 00:09:42.845'),
(726, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 21:09:43.845'),
(727, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 21:09:44.845'),
(728, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 08:09:45.845'),
(729, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 08:09:46.845'),
(730, 10, 'sess_10_1780402171109', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 23:09:47.845'),
(731, 10, 'sess_10_1780402171109', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-29 16:09:48.845'),
(732, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 06:09:49.845'),
(733, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 16:09:50.845'),
(734, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 11:09:51.845'),
(735, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 08:09:52.845'),
(736, 10, 'sess_10_1780402171109', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-01 12:09:53.845'),
(737, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 01:09:54.845'),
(738, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 04:09:55.845'),
(739, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 14:09:56.845'),
(740, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 00:09:57.845'),
(741, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 16:09:58.845'),
(742, 10, 'sess_10_1780402171109', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 03:09:59.845'),
(743, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 06:10:00.845'),
(744, 10, 'sess_10_1780402171109', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 05:10:01.845'),
(745, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 11:10:02.845'),
(746, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 19:10:03.845'),
(747, 10, 'sess_10_1780402171109', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 00:10:04.845'),
(748, 10, 'sess_10_1780402171109', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 13:10:05.845'),
(749, 11, 'sess_11_1780402171158', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 00:09:30.845'),
(750, 11, 'sess_11_1780402171158', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 12:09:31.845'),
(751, 11, 'sess_11_1780402171158', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 08:09:32.845'),
(752, 11, 'sess_11_1780402171158', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-27 02:09:33.845'),
(753, 11, 'sess_11_1780402171158', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 03:09:34.845'),
(754, 11, 'sess_11_1780402171158', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 07:09:35.845'),
(755, 11, 'sess_11_1780402171158', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 10:09:36.845'),
(756, 11, 'sess_11_1780402171158', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-26 13:09:37.845'),
(757, 11, 'sess_11_1780402171158', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 20:09:38.845'),
(758, 11, 'sess_11_1780402171158', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 18:09:39.845'),
(759, 11, 'sess_11_1780402171158', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 03:09:40.845'),
(760, 11, 'sess_11_1780402171158', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 07:09:41.845'),
(761, 11, 'sess_11_1780402171158', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 06:09:42.845'),
(762, 11, 'sess_11_1780402171158', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-01 00:09:43.845'),
(763, 11, 'sess_11_1780402171158', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 10:09:44.845'),
(764, 11, 'sess_11_1780402171158', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 15:09:45.845'),
(765, 11, 'sess_11_1780402171158', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 06:09:46.845'),
(766, 11, 'sess_11_1780402171158', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 20:09:47.845'),
(767, 11, 'sess_11_1780402171158', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-29 19:09:48.845'),
(768, 12, 'sess_12_1780402171184', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 23:09:30.845'),
(769, 12, 'sess_12_1780402171184', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-26 15:09:31.845'),
(770, 12, 'sess_12_1780402171184', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-28 05:09:32.845'),
(771, 12, 'sess_12_1780402171184', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-29 14:09:33.845'),
(772, 12, 'sess_12_1780402171184', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 10:09:34.845'),
(773, 12, 'sess_12_1780402171184', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-27 10:09:35.845'),
(774, 12, 'sess_12_1780402171184', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 01:09:36.845'),
(775, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 13:09:30.845'),
(776, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 00:09:31.845'),
(777, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 15:09:32.845'),
(778, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 13:09:33.845'),
(779, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 14:09:34.845'),
(780, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 11:09:35.845'),
(781, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 08:09:36.845'),
(782, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 12:09:37.845'),
(783, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 10:09:38.845'),
(784, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 08:09:39.845'),
(785, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 16:09:40.845'),
(786, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 23:09:41.845'),
(787, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 07:09:42.845'),
(788, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 22:09:43.845'),
(789, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 09:09:44.845'),
(790, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 03:09:45.845'),
(791, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 19:09:46.845'),
(792, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 16:09:47.845'),
(793, 13, 'sess_13_1780402171194', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-29 12:09:48.845'),
(794, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 17:09:49.845'),
(795, 13, 'sess_13_1780402171194', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 16:09:50.845'),
(796, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 12:09:51.845'),
(797, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 01:09:52.845'),
(798, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 11:09:53.845'),
(799, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 17:09:54.845'),
(800, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 14:09:55.845'),
(801, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 20:09:56.845'),
(802, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 22:09:57.845'),
(803, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 22:09:58.845'),
(804, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 10:09:59.845'),
(805, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 09:10:00.845'),
(806, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 04:10:01.845');
INSERT INTO `su_kien_hanh_vi` (`ma_su_kien`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `loai_su_kien`, `du_lieu_su_kien`, `duong_dan_url`, `nguon_truy_cap`, `loai_thiet_bi`, `ngay_tao`) VALUES
(807, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 04:10:02.845'),
(808, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 06:10:03.845'),
(809, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 09:10:04.845'),
(810, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 19:10:05.845'),
(811, 13, 'sess_13_1780402171194', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 14:10:06.845'),
(812, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 05:10:07.845'),
(813, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 08:10:08.845'),
(814, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 08:10:09.845'),
(815, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 04:10:10.845'),
(816, 13, 'sess_13_1780402171194', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 20:10:11.845'),
(817, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 22:10:12.845'),
(818, 13, 'sess_13_1780402171194', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 06:10:13.845'),
(819, 13, 'sess_13_1780402171194', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-01 12:10:14.845'),
(820, 13, 'sess_13_1780402171194', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 23:10:15.845'),
(821, 13, 'sess_13_1780402171194', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 19:10:16.845'),
(822, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 09:09:30.845'),
(823, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 17:09:31.845'),
(824, 14, 'sess_14_1780402171254', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-28 16:09:32.845'),
(825, 14, 'sess_14_1780402171254', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 05:09:33.845'),
(826, 14, 'sess_14_1780402171254', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 17:09:34.845'),
(827, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 14:09:35.845'),
(828, 14, 'sess_14_1780402171254', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 11:09:36.845'),
(829, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 12:09:37.845'),
(830, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 15:09:38.845'),
(831, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 13:09:39.845'),
(832, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 10:09:40.845'),
(833, 14, 'sess_14_1780402171254', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 09:09:41.845'),
(834, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 18:09:42.845'),
(835, 14, 'sess_14_1780402171254', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 22:09:43.845'),
(836, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 23:09:44.845'),
(837, 14, 'sess_14_1780402171254', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 16:09:45.845'),
(838, 15, 'sess_15_1780402171274', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 18:09:30.845'),
(839, 15, 'sess_15_1780402171274', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-01 13:09:31.845'),
(840, 15, 'sess_15_1780402171274', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 17:09:32.845'),
(841, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 02:09:30.845'),
(842, 16, 'sess_16_1780402171278', 'add_to_cart', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 17:09:31.845'),
(843, 16, 'sess_16_1780402171278', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 20:09:32.845'),
(844, 16, 'sess_16_1780402171278', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 18:09:33.845'),
(845, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 00:09:34.845'),
(846, 16, 'sess_16_1780402171278', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-02 11:09:35.845'),
(847, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 18:09:36.845'),
(848, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 16:09:37.845'),
(849, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 07:09:38.845'),
(850, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 14:09:39.845'),
(851, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 12:09:40.845'),
(852, 16, 'sess_16_1780402171278', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 18:09:41.845'),
(853, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 03:09:42.845'),
(854, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 02:09:43.845'),
(855, 16, 'sess_16_1780402171278', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-26 22:09:44.845'),
(856, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 08:09:45.845'),
(857, 16, 'sess_16_1780402171278', 'add_to_cart', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 22:09:46.845'),
(858, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 06:09:47.845'),
(859, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 01:09:48.845'),
(860, 16, 'sess_16_1780402171278', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 04:09:49.845'),
(861, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 21:09:50.845'),
(862, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 08:09:51.845'),
(863, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 14:09:52.845'),
(864, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 06:09:53.845'),
(865, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 05:09:54.845'),
(866, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 17:09:55.845'),
(867, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 02:09:56.845'),
(868, 16, 'sess_16_1780402171278', 'add_to_cart', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 10:09:57.845'),
(869, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"mứt dừa\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 21:09:58.845'),
(870, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 05:09:59.845'),
(871, 16, 'sess_16_1780402171278', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 08:10:00.845'),
(872, 16, 'sess_16_1780402171278', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 03:10:01.845'),
(873, 16, 'sess_16_1780402171278', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 02:10:02.845'),
(874, 17, 'sess_17_1780402171324', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 17:09:30.845'),
(875, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 19:09:31.845'),
(876, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-28 06:09:32.845'),
(877, 17, 'sess_17_1780402171324', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 17:09:33.845'),
(878, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-29 19:09:34.845'),
(879, 17, 'sess_17_1780402171324', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 04:09:35.845'),
(880, 17, 'sess_17_1780402171324', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 06:09:36.845'),
(881, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 11:09:37.845'),
(882, 17, 'sess_17_1780402171324', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 04:09:38.845'),
(883, 17, 'sess_17_1780402171324', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 09:09:39.845'),
(884, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-01 04:09:40.845'),
(885, 17, 'sess_17_1780402171324', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 03:09:41.845'),
(886, 17, 'sess_17_1780402171324', 'search_query', '{\"query\":\"quà biếu\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 09:09:42.845'),
(887, 17, 'sess_17_1780402171324', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 12:09:43.845'),
(888, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-30 01:09:44.845'),
(889, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 03:09:45.845'),
(890, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 08:09:46.845'),
(891, 17, 'sess_17_1780402171324', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 14:09:47.845'),
(892, 17, 'sess_17_1780402171324', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-28 02:09:48.845'),
(893, 18, 'sess_18_1780402171357', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-26 22:09:30.845'),
(894, 18, 'sess_18_1780402171357', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-29 10:09:31.845'),
(895, 18, 'sess_18_1780402171357', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 22:09:32.845'),
(896, 18, 'sess_18_1780402171357', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-01 22:09:33.845'),
(897, 18, 'sess_18_1780402171357', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-02 06:09:34.845'),
(898, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 15:09:30.845'),
(899, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 12:09:31.845'),
(900, 19, 'sess_19_1780402171366', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'desktop', '2026-05-30 09:09:32.845'),
(901, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 16:09:33.845'),
(902, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 09:09:34.845'),
(903, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 13:09:35.845'),
(904, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 18:09:36.845'),
(905, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 05:09:37.845'),
(906, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 06:09:38.845'),
(907, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-05-27 03:09:39.845'),
(908, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'desktop', '2026-05-28 08:09:40.845'),
(909, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 18:09:41.845'),
(910, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 11:09:42.845'),
(911, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 02:09:43.845'),
(912, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 19:09:44.845'),
(913, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 10:09:45.845'),
(914, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-26 15:09:46.845'),
(915, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-27 09:09:47.845'),
(916, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 07:09:48.845'),
(917, 19, 'sess_19_1780402171366', 'search_query', '{\"query\":\"khô cá\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 09:09:49.845'),
(918, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 16:09:50.845'),
(919, 19, 'sess_19_1780402171366', 'search_query', '{\"query\":\"mực\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 17:09:51.845'),
(920, 19, 'sess_19_1780402171366', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 11:09:52.845'),
(921, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-30 10:09:53.845'),
(922, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 23:09:54.845'),
(923, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-31 11:09:55.845'),
(924, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-29 11:09:56.845'),
(925, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-27 08:09:57.845'),
(926, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-01 06:09:58.845'),
(927, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-02 12:09:59.845'),
(928, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 03:10:00.845'),
(929, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 03:10:01.845'),
(930, 19, 'sess_19_1780402171366', 'search_query', '{\"query\":\"nước mắm\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 05:10:02.845'),
(931, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 21:10:03.845'),
(932, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-28 17:10:04.845'),
(933, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-02 11:10:05.845'),
(934, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 01:10:06.845'),
(935, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-06-02 03:10:07.845'),
(936, 19, 'sess_19_1780402171366', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-28 08:10:08.845'),
(937, 19, 'sess_19_1780402171366', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 14:10:09.845'),
(938, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 01:10:10.845'),
(939, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/category/san-pham', NULL, 'mobile', '2026-05-31 11:10:11.845'),
(940, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'desktop', '2026-06-01 00:10:12.845'),
(941, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 07:10:13.845'),
(942, 19, 'sess_19_1780402171366', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 12:10:14.845'),
(943, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-29 09:10:15.845'),
(944, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'mobile', '2026-05-30 11:10:16.845'),
(945, 19, 'sess_19_1780402171366', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/category/san-pham', NULL, 'desktop', '2026-05-31 12:10:17.845'),
(946, 20, 'sess_20_1780402171436', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/category/san-pham', NULL, 'mobile', '2026-06-01 17:09:30.845'),
(947, 20, 'sess_20_1780402171436', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-26 20:09:31.845'),
(948, 20, 'sess_20_1780402171436', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-06-01 04:09:32.845'),
(949, 20, 'sess_20_1780402171436', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-06-02 02:09:33.845'),
(950, 20, 'sess_20_1780402171436', 'page_view', NULL, '/category/san-pham', NULL, 'desktop', '2026-05-28 16:09:34.845'),
(951, 20, 'sess_20_1780402171436', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'desktop', '2026-05-29 07:09:35.845'),
(952, 20, 'sess_20_1780402171436', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 18:09:36.845'),
(953, 20, 'sess_20_1780402171436', 'search_query', '{\"query\":\"đặc sản\"}', '/category/san-pham', NULL, 'mobile', '2026-05-28 15:09:37.845'),
(954, 20, 'sess_20_1780402171436', 'search_query', '{\"query\":\"trái cây sấy\"}', '/category/san-pham', NULL, 'mobile', '2026-06-02 05:09:38.845'),
(955, 20, 'sess_20_1780402171436', 'page_view', NULL, '/category/san-pham', NULL, 'mobile', '2026-05-31 07:09:39.845'),
(956, 22, 'sess_22_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-24 19:50:38.853'),
(957, 49, 'sess_49_1780402719733', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 22:07:01.899'),
(958, 70, 'sess_70_1780402719733', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 10:19:44.898'),
(959, 46, 'sess_46_1780402719733', 'add_to_cart', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-29 03:05:07.931'),
(960, 56, 'sess_56_1780402719733', 'add_to_cart', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-23 21:20:21.710'),
(961, 56, 'sess_56_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 13:54:29.187'),
(962, 38, 'sess_38_1780402719733', 'product_view', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-29 10:54:34.471'),
(963, 30, 'sess_30_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 00:38:20.195'),
(964, 54, 'sess_54_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-24 13:46:38.669'),
(965, 54, 'sess_54_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-29 14:20:07.116'),
(966, 62, 'sess_62_1780402719733', 'add_to_cart', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 00:37:31.841'),
(967, 53, 'sess_53_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-23 15:22:26.525'),
(968, 42, 'sess_42_1780402719733', 'product_view', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-29 03:21:59.776'),
(969, 52, 'sess_52_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 09:18:09.927'),
(970, 41, 'sess_41_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 12:20:57.070'),
(971, 40, 'sess_40_1780402719733', 'add_to_cart', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 09:06:21.415'),
(972, 50, 'sess_50_1780402719733', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-23 17:54:43.448'),
(973, 62, 'sess_62_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 18:17:08.596'),
(974, 65, 'sess_65_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-06-01 06:41:04.528'),
(975, 43, 'sess_43_1780402719733', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 05:37:29.515'),
(976, 64, 'sess_64_1780402719733', 'add_to_cart', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 21:01:17.756'),
(977, 32, 'sess_32_1780402719733', 'product_view', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 10:16:23.528'),
(978, 58, 'sess_58_1780402719733', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-25 21:09:48.495'),
(979, 66, 'sess_66_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 13:41:13.539'),
(980, 66, 'sess_66_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 15:03:14.364'),
(981, 48, 'sess_48_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 01:48:01.592'),
(982, 43, 'sess_43_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 18:20:44.624'),
(983, 45, 'sess_45_1780402719733', 'add_to_cart', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 18:39:46.324'),
(984, 54, 'sess_54_1780402719733', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-23 23:34:58.198'),
(985, 27, 'sess_27_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-28 18:32:30.494'),
(986, 39, 'sess_39_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 17:07:37.900'),
(987, 52, 'sess_52_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 17:12:06.696'),
(988, 65, 'sess_65_1780402719733', 'product_view', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 00:06:19.463'),
(989, 40, 'sess_40_1780402719733', 'add_to_cart', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 16:48:33.181'),
(990, 40, 'sess_40_1780402719733', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-25 17:01:54.398'),
(991, 27, 'sess_27_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-29 07:44:24.480'),
(992, 32, 'sess_32_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 15:03:41.575'),
(993, 47, 'sess_47_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 21:54:04.123'),
(994, 43, 'sess_43_1780402719733', 'add_to_cart', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 08:39:45.266'),
(995, 51, 'sess_51_1780402719733', 'add_to_cart', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 17:40:22.802'),
(996, 71, 'sess_71_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-30 08:28:12.630'),
(997, 45, 'sess_45_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-27 07:38:57.450'),
(998, 44, 'sess_44_1780402719733', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-26 15:15:44.925'),
(999, 49, 'sess_49_1780402719733', 'product_view', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 15:26:25.291'),
(1000, 38, 'sess_38_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 03:39:02.094'),
(1001, 65, 'sess_65_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 05:43:49.806'),
(1002, 52, 'sess_52_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 17:44:05.474'),
(1003, 68, 'sess_68_1780402719733', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 21:38:29.395'),
(1004, 41, 'sess_41_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 07:43:00.597'),
(1005, 23, 'sess_23_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 17:10:04.048'),
(1006, 54, 'sess_54_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 14:07:16.773'),
(1007, 33, 'sess_33_1780402719733', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 13:24:28.653'),
(1008, 30, 'sess_30_1780402719733', 'add_to_cart', '{\"productId\":32,\"productName\":\"Ghẹ Rang Muối Vũng Tàu\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 19:18:19.993'),
(1009, 66, 'sess_66_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-23 20:50:56.909'),
(1010, 71, 'sess_71_1780402719733', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 13:26:24.376'),
(1011, 48, 'sess_48_1780402719733', 'add_to_cart', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 21:12:32.319'),
(1012, 29, 'sess_29_1780402719733', 'add_to_cart', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-27 07:02:25.925'),
(1013, 60, 'sess_60_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 20:10:34.381'),
(1014, 60, 'sess_60_1780402719733', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 12:57:24.303'),
(1015, 39, 'sess_39_1780402719733', 'add_to_cart', '{\"productId\":47,\"productName\":\"Hoa Quả Sấy Mix Tổng Hợp\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 22:54:33.043'),
(1016, 49, 'sess_49_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 07:01:15.295'),
(1017, 58, 'sess_58_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-25 16:57:19.667'),
(1018, 71, 'sess_71_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-26 09:18:20.770'),
(1019, 22, 'sess_22_1780402719733', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-24 13:46:15.147'),
(1020, 54, 'sess_54_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 08:00:47.013'),
(1021, 47, 'sess_47_1780402719733', 'product_view', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-02 03:57:59.894'),
(1022, 47, 'sess_47_1780402719733', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-25 18:00:58.951'),
(1023, 67, 'sess_67_1780402719733', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-30 23:22:58.118'),
(1024, 30, 'sess_30_1780402719733', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 11:15:09.430'),
(1025, 67, 'sess_67_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 19:07:59.753'),
(1026, 55, 'sess_55_1780402719733', 'product_view', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 01:03:38.042'),
(1027, 41, 'sess_41_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 03:38:13.420'),
(1028, 60, 'sess_60_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 08:35:04.735'),
(1029, 62, 'sess_62_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-27 17:49:52.070'),
(1030, 55, 'sess_55_1780402719733', 'add_to_cart', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/shop', NULL, 'desktop', '2026-05-23 19:23:49.746'),
(1031, 37, 'sess_37_1780402719733', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 21:02:21.077'),
(1032, 63, 'sess_63_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 19:25:32.135'),
(1033, 56, 'sess_56_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 15:38:48.243'),
(1034, 29, 'sess_29_1780402719733', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-31 22:56:22.532'),
(1035, 32, 'sess_32_1780402719733', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 02:35:46.542'),
(1036, 46, 'sess_46_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 15:49:41.343'),
(1037, 31, 'sess_31_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 09:49:19.042'),
(1038, 42, 'sess_42_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-26 06:32:27.534'),
(1039, 43, 'sess_43_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-24 22:03:21.964'),
(1040, 23, 'sess_23_1780402719733', 'add_to_cart', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-02 05:38:17.477'),
(1041, 25, 'sess_25_1780402719733', 'product_view', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 22:08:39.418'),
(1042, 22, 'sess_22_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 03:07:47.672'),
(1043, 40, 'sess_40_1780402719733', 'product_view', '{\"productId\":23,\"productName\":\"Khô Cá Thiểu Trà Vinh\",\"price\":20.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 21:08:51.293'),
(1044, 34, 'sess_34_1780402719733', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 10:58:06.142'),
(1045, 34, 'sess_34_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-06-01 02:50:41.932'),
(1046, 55, 'sess_55_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 20:56:08.407'),
(1047, 30, 'sess_30_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 15:38:31.565'),
(1048, 65, 'sess_65_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 12:20:19.537'),
(1049, 32, 'sess_32_1780402719733', 'product_view', '{\"productId\":47,\"productName\":\"Hoa Quả Sấy Mix Tổng Hợp\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 04:51:46.753'),
(1050, 41, 'sess_41_1780402719733', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 07:13:24.088'),
(1051, 67, 'sess_67_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-29 09:27:11.059'),
(1052, 26, 'sess_26_1780402719733', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 21:33:37.266'),
(1053, 50, 'sess_50_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-01 03:48:58.122'),
(1054, 27, 'sess_27_1780402719733', 'add_to_cart', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 10:06:29.954'),
(1055, 65, 'sess_65_1780402719733', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 08:08:16.246'),
(1056, 60, 'sess_60_1780402719733', 'add_to_cart', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 19:40:25.039'),
(1057, 66, 'sess_66_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-25 00:20:07.363'),
(1058, 22, 'sess_22_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-30 12:40:57.690'),
(1059, 71, 'sess_71_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-31 15:33:01.880'),
(1060, 63, 'sess_63_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-23 13:04:59.375'),
(1061, 27, 'sess_27_1780402719733', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 18:05:34.303'),
(1062, 67, 'sess_67_1780402719733', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 14:21:59.852'),
(1063, 46, 'sess_46_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 12:15:00.977'),
(1064, 37, 'sess_37_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 06:39:54.276'),
(1065, 53, 'sess_53_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 18:18:55.790'),
(1066, 43, 'sess_43_1780402719733', 'add_to_cart', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-25 05:31:28.194'),
(1067, 24, 'sess_24_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 21:49:06.524'),
(1068, 23, 'sess_23_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-30 23:11:39.034'),
(1069, 36, 'sess_36_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 09:14:51.074'),
(1070, 33, 'sess_33_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 05:13:22.473'),
(1071, 71, 'sess_71_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-25 07:02:20.445'),
(1072, 23, 'sess_23_1780402719733', 'add_to_cart', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 23:19:25.322'),
(1073, 25, 'sess_25_1780402719733', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 13:11:22.959'),
(1074, 70, 'sess_70_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-31 19:04:29.012'),
(1075, 49, 'sess_49_1780402719733', 'add_to_cart', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 19:37:32.296'),
(1076, 22, 'sess_22_1780402719733', 'product_view', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 18:10:33.993'),
(1077, 48, 'sess_48_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 06:21:08.490'),
(1078, 29, 'sess_29_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 14:27:35.678'),
(1079, 67, 'sess_67_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 04:15:43.678'),
(1080, 65, 'sess_65_1780402719733', 'product_view', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 07:09:27.029'),
(1081, 22, 'sess_22_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-26 04:33:30.829'),
(1082, 63, 'sess_63_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 20:19:16.985'),
(1083, 40, 'sess_40_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-06-01 04:29:39.800'),
(1084, 53, 'sess_53_1780402719733', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-25 14:30:30.618'),
(1085, 35, 'sess_35_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 03:48:52.358'),
(1086, 66, 'sess_66_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 23:19:42.054'),
(1087, 25, 'sess_25_1780402719733', 'add_to_cart', '{\"productId\":23,\"productName\":\"Khô Cá Thiểu Trà Vinh\",\"price\":20.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 23:28:00.010'),
(1088, 54, 'sess_54_1780402719733', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 14:57:59.259'),
(1089, 34, 'sess_34_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-23 23:22:53.609'),
(1090, 37, 'sess_37_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 07:06:15.100'),
(1091, 28, 'sess_28_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 21:19:58.516'),
(1092, 64, 'sess_64_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 11:39:41.051'),
(1093, 57, 'sess_57_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-27 19:40:07.458'),
(1094, 23, 'sess_23_1780402719733', 'add_to_cart', '{\"productId\":40,\"productName\":\"Nhãn Sấy Hưng Yên\",\"price\":19.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 23:47:57.833'),
(1095, 65, 'sess_65_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 15:48:12.214'),
(1096, 65, 'sess_65_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 01:01:06.605'),
(1097, 33, 'sess_33_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 21:11:55.964'),
(1098, 46, 'sess_46_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-31 11:34:30.398'),
(1099, 26, 'sess_26_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 09:42:12.104'),
(1100, 35, 'sess_35_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 14:10:03.614');
INSERT INTO `su_kien_hanh_vi` (`ma_su_kien`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `loai_su_kien`, `du_lieu_su_kien`, `duong_dan_url`, `nguon_truy_cap`, `loai_thiet_bi`, `ngay_tao`) VALUES
(1101, 32, 'sess_32_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 01:02:14.625'),
(1102, 58, 'sess_58_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-26 15:38:17.042'),
(1103, 27, 'sess_27_1780402719733', 'add_to_cart', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 18:22:37.765'),
(1104, 48, 'sess_48_1780402719733', 'add_to_cart', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 23:20:37.519'),
(1105, 70, 'sess_70_1780402719733', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 20:15:35.451'),
(1106, 26, 'sess_26_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-30 16:29:15.543'),
(1107, 49, 'sess_49_1780402719733', 'product_view', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 11:32:39.833'),
(1108, 67, 'sess_67_1780402719733', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 22:08:12.647'),
(1109, 68, 'sess_68_1780402719733', 'product_view', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 09:38:43.973'),
(1110, 60, 'sess_60_1780402719733', 'product_view', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 06:02:31.419'),
(1111, 54, 'sess_54_1780402719733', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 04:40:27.536'),
(1112, 36, 'sess_36_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-23 19:18:21.753'),
(1113, 54, 'sess_54_1780402719733', 'add_to_cart', '{\"productId\":32,\"productName\":\"Ghẹ Rang Muối Vũng Tàu\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-23 19:26:12.146'),
(1114, 23, 'sess_23_1780402719733', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-25 16:24:43.796'),
(1115, 28, 'sess_28_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-24 18:25:52.665'),
(1116, 68, 'sess_68_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 04:04:21.515'),
(1117, 59, 'sess_59_1780402719733', 'add_to_cart', '{\"productId\":50,\"productName\":\"Trà Hoa Cúc La Mã\",\"price\":14.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-24 08:25:50.749'),
(1118, 22, 'sess_22_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 16:30:54.050'),
(1119, 27, 'sess_27_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 18:10:10.244'),
(1120, 64, 'sess_64_1780402719733', 'product_view', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 03:28:57.780'),
(1121, 30, 'sess_30_1780402719733', 'add_to_cart', '{\"productId\":23,\"productName\":\"Khô Cá Thiểu Trà Vinh\",\"price\":20.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 18:18:42.135'),
(1122, 65, 'sess_65_1780402719733', 'add_to_cart', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 17:21:00.508'),
(1123, 22, 'sess_22_1780402719733', 'product_view', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 09:05:31.591'),
(1124, 26, 'sess_26_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 21:26:59.493'),
(1125, 42, 'sess_42_1780402719733', 'add_to_cart', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 20:56:10.380'),
(1126, 57, 'sess_57_1780402719733', 'product_view', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-02 05:46:09.011'),
(1127, 61, 'sess_61_1780402719733', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 16:15:13.091'),
(1128, 64, 'sess_64_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 17:43:33.597'),
(1129, 60, 'sess_60_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 13:49:55.184'),
(1130, 70, 'sess_70_1780402719733', 'add_to_cart', '{\"productId\":50,\"productName\":\"Trà Hoa Cúc La Mã\",\"price\":14.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 15:15:23.720'),
(1131, 32, 'sess_32_1780402719733', 'product_view', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 18:42:27.480'),
(1132, 57, 'sess_57_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 18:13:10.552'),
(1133, 59, 'sess_59_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 21:57:19.630'),
(1134, 42, 'sess_42_1780402719733', 'product_view', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 05:57:45.902'),
(1135, 28, 'sess_28_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 18:22:37.427'),
(1136, 61, 'sess_61_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 08:14:14.113'),
(1137, 36, 'sess_36_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 02:47:21.891'),
(1138, 48, 'sess_48_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 11:17:05.829'),
(1139, 62, 'sess_62_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-27 21:16:52.841'),
(1140, 57, 'sess_57_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 05:40:06.887'),
(1141, 47, 'sess_47_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-23 17:37:27.367'),
(1142, 24, 'sess_24_1780402719733', 'product_view', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-26 10:52:57.622'),
(1143, 55, 'sess_55_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-26 13:44:56.847'),
(1144, 62, 'sess_62_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-23 19:51:04.198'),
(1145, 51, 'sess_51_1780402719733', 'add_to_cart', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-29 18:33:00.994'),
(1146, 69, 'sess_69_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 19:24:02.671'),
(1147, 59, 'sess_59_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-31 04:33:55.934'),
(1148, 47, 'sess_47_1780402719733', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 15:10:51.231'),
(1149, 26, 'sess_26_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-23 17:17:13.790'),
(1150, 67, 'sess_67_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 14:26:35.372'),
(1151, 29, 'sess_29_1780402719733', 'product_view', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-02 03:24:41.859'),
(1152, 37, 'sess_37_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 19:14:35.544'),
(1153, 43, 'sess_43_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-27 00:53:36.791'),
(1154, 69, 'sess_69_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 18:58:12.434'),
(1155, 68, 'sess_68_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-02 04:49:49.993'),
(1156, 63, 'sess_63_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-06-02 09:55:34.202'),
(1157, 69, 'sess_69_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-06-01 16:26:03.917'),
(1158, 64, 'sess_64_1780402719733', 'product_view', '{\"productId\":35,\"productName\":\"Tôm Hùm Đất Nướng Phú Yên\",\"price\":89.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 21:56:17.175'),
(1159, 65, 'sess_65_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-27 06:21:35.858'),
(1160, 49, 'sess_49_1780402719733', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 15:07:56.462'),
(1161, 38, 'sess_38_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-26 02:21:49.368'),
(1162, 70, 'sess_70_1780402719733', 'product_view', '{\"productId\":47,\"productName\":\"Hoa Quả Sấy Mix Tổng Hợp\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 14:47:52.186'),
(1163, 36, 'sess_36_1780402719733', 'add_to_cart', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 23:56:07.846'),
(1164, 54, 'sess_54_1780402719733', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-31 19:44:58.696'),
(1165, 71, 'sess_71_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 07:03:28.217'),
(1166, 60, 'sess_60_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 19:26:20.749'),
(1167, 62, 'sess_62_1780402719733', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-06-01 20:34:07.489'),
(1168, 53, 'sess_53_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 17:45:42.167'),
(1169, 48, 'sess_48_1780402719733', 'add_to_cart', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-26 11:05:12.459'),
(1170, 53, 'sess_53_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 03:55:31.355'),
(1171, 63, 'sess_63_1780402719733', 'product_view', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 23:09:59.086'),
(1172, 27, 'sess_27_1780402719733', 'add_to_cart', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-23 20:08:07.328'),
(1173, 40, 'sess_40_1780402719733', 'add_to_cart', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 09:26:35.925'),
(1174, 34, 'sess_34_1780402719733', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 15:54:03.999'),
(1175, 27, 'sess_27_1780402719733', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 05:22:34.310'),
(1176, 40, 'sess_40_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 15:18:48.505'),
(1177, 46, 'sess_46_1780402719733', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 17:50:15.370'),
(1178, 24, 'sess_24_1780402719733', 'product_view', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 07:59:29.970'),
(1179, 39, 'sess_39_1780402719733', 'product_view', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 05:35:37.147'),
(1180, 48, 'sess_48_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 02:44:00.063'),
(1181, 56, 'sess_56_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-02 11:20:58.950'),
(1182, 23, 'sess_23_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 10:39:52.150'),
(1183, 45, 'sess_45_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-29 04:25:02.243'),
(1184, 49, 'sess_49_1780402719733', 'product_view', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 21:26:50.562'),
(1185, 61, 'sess_61_1780402719733', 'product_view', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 08:10:25.797'),
(1186, 35, 'sess_35_1780402719733', 'product_view', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 21:52:27.922'),
(1187, 32, 'sess_32_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-02 04:00:10.495'),
(1188, 39, 'sess_39_1780402719733', 'add_to_cart', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 22:08:48.083'),
(1189, 70, 'sess_70_1780402719733', 'add_to_cart', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-23 13:53:39.557'),
(1190, 24, 'sess_24_1780402719733', 'add_to_cart', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 03:52:53.962'),
(1191, 25, 'sess_25_1780402719733', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-28 06:00:14.494'),
(1192, 26, 'sess_26_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 05:23:56.197'),
(1193, 60, 'sess_60_1780402719733', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 09:40:27.101'),
(1194, 24, 'sess_24_1780402719733', 'product_view', '{\"productId\":35,\"productName\":\"Tôm Hùm Đất Nướng Phú Yên\",\"price\":89.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 16:09:59.668'),
(1195, 31, 'sess_31_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-31 19:51:44.264'),
(1196, 22, 'sess_22_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-02 11:29:10.256'),
(1197, 35, 'sess_35_1780402719733', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 07:04:54.501'),
(1198, 60, 'sess_60_1780402719733', 'add_to_cart', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 18:25:49.168'),
(1199, 33, 'sess_33_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-23 21:58:47.323'),
(1200, 35, 'sess_35_1780402719733', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-23 18:26:12.747'),
(1201, 50, 'sess_50_1780402719733', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-31 09:09:51.746'),
(1202, 42, 'sess_42_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-01 11:32:02.470'),
(1203, 47, 'sess_47_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 20:12:49.732'),
(1204, 34, 'sess_34_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 12:50:31.254'),
(1205, 39, 'sess_39_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-25 07:30:20.508'),
(1206, 50, 'sess_50_1780402719733', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 03:19:52.918'),
(1207, 66, 'sess_66_1780402719733', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-31 21:32:06.667'),
(1208, 42, 'sess_42_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 15:16:21.804'),
(1209, 27, 'sess_27_1780402719733', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 09:24:25.647'),
(1210, 26, 'sess_26_1780402719733', 'product_view', '{\"productId\":32,\"productName\":\"Ghẹ Rang Muối Vũng Tàu\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 07:16:35.614'),
(1211, 44, 'sess_44_1780402719733', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-25 13:12:21.796'),
(1212, 58, 'sess_58_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 21:35:25.489'),
(1213, 35, 'sess_35_1780402719733', 'product_view', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 21:54:49.157'),
(1214, 35, 'sess_35_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-01 17:13:50.739'),
(1215, 29, 'sess_29_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 05:43:07.606'),
(1216, 40, 'sess_40_1780402719733', 'product_view', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-02 02:03:43.518'),
(1217, 57, 'sess_57_1780402719733', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 08:59:35.699'),
(1218, 67, 'sess_67_1780402719733', 'add_to_cart', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 15:13:08.188'),
(1219, 48, 'sess_48_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 17:52:48.843'),
(1220, 70, 'sess_70_1780402719733', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-24 11:45:10.097'),
(1221, 45, 'sess_45_1780402719733', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-24 23:49:16.754'),
(1222, 39, 'sess_39_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 23:28:31.995'),
(1223, 62, 'sess_62_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-27 02:34:54.915'),
(1224, 62, 'sess_62_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-29 01:48:22.025'),
(1225, 28, 'sess_28_1780402719733', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-26 13:47:42.469'),
(1226, 56, 'sess_56_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 16:51:59.859'),
(1227, 43, 'sess_43_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 21:22:14.918'),
(1228, 48, 'sess_48_1780402719733', 'add_to_cart', '{\"productId\":40,\"productName\":\"Nhãn Sấy Hưng Yên\",\"price\":19.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 01:18:02.194'),
(1229, 62, 'sess_62_1780402719733', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-25 22:58:50.988'),
(1230, 65, 'sess_65_1780402719733', 'product_view', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 13:41:41.284'),
(1231, 30, 'sess_30_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-28 22:21:46.570'),
(1232, 26, 'sess_26_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 19:10:56.298'),
(1233, 63, 'sess_63_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 18:12:53.575'),
(1234, 58, 'sess_58_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 12:22:04.603'),
(1235, 58, 'sess_58_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-27 05:53:47.127'),
(1236, 47, 'sess_47_1780402719733', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-25 22:36:14.558'),
(1237, 43, 'sess_43_1780402719733', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 20:42:02.437'),
(1238, 47, 'sess_47_1780402719733', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 12:20:04.851'),
(1239, 34, 'sess_34_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 16:49:45.192'),
(1240, 60, 'sess_60_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 21:21:44.219'),
(1241, 57, 'sess_57_1780402719733', 'product_view', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 10:41:01.315'),
(1242, 60, 'sess_60_1780402719733', 'add_to_cart', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 15:53:55.565'),
(1243, 32, 'sess_32_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 19:27:52.959'),
(1244, 45, 'sess_45_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 03:18:52.166'),
(1245, 38, 'sess_38_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 16:56:36.021'),
(1246, 53, 'sess_53_1780402719733', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-31 12:13:51.612'),
(1247, 22, 'sess_22_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 15:45:23.680'),
(1248, 31, 'sess_31_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 03:33:28.323'),
(1249, 40, 'sess_40_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 06:22:12.967'),
(1250, 24, 'sess_24_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 16:07:30.027'),
(1251, 42, 'sess_42_1780402719733', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-31 02:26:24.902'),
(1252, 26, 'sess_26_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-23 14:07:01.539'),
(1253, 29, 'sess_29_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 16:31:56.423'),
(1254, 70, 'sess_70_1780402719733', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 01:30:14.606'),
(1255, 38, 'sess_38_1780402719733', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 12:07:43.716'),
(1256, 68, 'sess_68_1780402719733', 'product_view', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-29 01:58:24.871'),
(1257, 67, 'sess_67_1780402719733', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/shop', NULL, 'desktop', '2026-06-01 03:26:45.272'),
(1258, 46, 'sess_46_1780402719733', 'add_to_cart', '{\"productId\":40,\"productName\":\"Nhãn Sấy Hưng Yên\",\"price\":19.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 03:47:25.098'),
(1259, 60, 'sess_60_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 21:26:35.023'),
(1260, 49, 'sess_49_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 01:31:13.687'),
(1261, 26, 'sess_26_1780402719733', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-28 11:09:17.432'),
(1262, 56, 'sess_56_1780402719733', 'product_view', '{\"productId\":25,\"productName\":\"Cá Cơm Rang Muối Ớt\",\"price\":9.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 07:04:18.432'),
(1263, 65, 'sess_65_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 07:21:42.436'),
(1264, 65, 'sess_65_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-26 11:04:59.031'),
(1265, 61, 'sess_61_1780402719733', 'add_to_cart', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 02:16:48.152'),
(1266, 42, 'sess_42_1780402719733', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-30 12:22:02.599'),
(1267, 27, 'sess_27_1780402719733', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-25 22:16:53.651'),
(1268, 22, 'sess_22_1780402719733', 'product_view', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 22:53:55.789'),
(1269, 66, 'sess_66_1780402719733', 'add_to_cart', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 02:39:12.749'),
(1270, 43, 'sess_43_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 12:33:24.113'),
(1271, 66, 'sess_66_1780402719733', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 22:46:21.381'),
(1272, 40, 'sess_40_1780402719733', 'product_view', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-02 09:41:57.286'),
(1273, 64, 'sess_64_1780402719733', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 16:15:25.151'),
(1274, 43, 'sess_43_1780402719733', 'add_to_cart', '{\"productId\":21,\"productName\":\"Khô Cá Thu Đà Nẵng\",\"price\":38.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-02 09:38:05.841'),
(1275, 35, 'sess_35_1780402719733', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 05:33:22.814'),
(1276, 59, 'sess_59_1780402719734', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 03:01:12.050'),
(1277, 23, 'sess_23_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 11:00:57.249'),
(1278, 62, 'sess_62_1780402719734', 'add_to_cart', '{\"productId\":25,\"productName\":\"Cá Cơm Rang Muối Ớt\",\"price\":9.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 06:47:09.466'),
(1279, 25, 'sess_25_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-23 22:47:52.077'),
(1280, 68, 'sess_68_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 11:19:04.609'),
(1281, 62, 'sess_62_1780402719734', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 00:15:44.725'),
(1282, 34, 'sess_34_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 00:31:52.748'),
(1283, 69, 'sess_69_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 20:19:46.626'),
(1284, 39, 'sess_39_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-24 02:12:44.290'),
(1285, 65, 'sess_65_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 00:57:20.929'),
(1286, 47, 'sess_47_1780402719734', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 08:40:06.265'),
(1287, 37, 'sess_37_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 04:02:22.771'),
(1288, 52, 'sess_52_1780402719734', 'product_view', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-06-01 12:58:45.996'),
(1289, 58, 'sess_58_1780402719734', 'product_view', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-23 13:09:02.070'),
(1290, 35, 'sess_35_1780402719734', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-25 21:18:23.154'),
(1291, 54, 'sess_54_1780402719734', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 14:05:06.872'),
(1292, 35, 'sess_35_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-25 15:42:50.134'),
(1293, 32, 'sess_32_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 20:02:09.280'),
(1294, 22, 'sess_22_1780402719734', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 01:17:28.005'),
(1295, 48, 'sess_48_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 20:48:20.130'),
(1296, 60, 'sess_60_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 05:33:34.252'),
(1297, 69, 'sess_69_1780402719734', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 06:13:34.789'),
(1298, 67, 'sess_67_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 13:37:36.127'),
(1299, 24, 'sess_24_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 03:36:39.759'),
(1300, 66, 'sess_66_1780402719734', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 14:38:05.017'),
(1301, 30, 'sess_30_1780402719734', 'add_to_cart', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-27 12:21:04.840'),
(1302, 22, 'sess_22_1780402719734', 'add_to_cart', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 19:12:25.132'),
(1303, 40, 'sess_40_1780402719734', 'add_to_cart', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 05:46:14.798'),
(1304, 44, 'sess_44_1780402719734', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-02 03:58:10.775'),
(1305, 47, 'sess_47_1780402719734', 'product_view', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-28 21:11:15.686'),
(1306, 48, 'sess_48_1780402719734', 'product_view', '{\"productId\":23,\"productName\":\"Khô Cá Thiểu Trà Vinh\",\"price\":20.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 12:43:43.925'),
(1307, 58, 'sess_58_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-27 22:10:36.311'),
(1308, 23, 'sess_23_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 08:00:56.618'),
(1309, 38, 'sess_38_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 11:05:10.533'),
(1310, 27, 'sess_27_1780402719734', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-29 06:37:56.773'),
(1311, 25, 'sess_25_1780402719734', 'product_view', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 06:15:28.701'),
(1312, 23, 'sess_23_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 08:35:18.190'),
(1313, 39, 'sess_39_1780402719734', 'add_to_cart', '{\"productId\":25,\"productName\":\"Cá Cơm Rang Muối Ớt\",\"price\":9.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 20:37:32.640'),
(1314, 47, 'sess_47_1780402719734', 'product_view', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 19:42:18.121'),
(1315, 32, 'sess_32_1780402719734', 'product_view', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 03:25:33.105'),
(1316, 29, 'sess_29_1780402719734', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-24 08:16:14.693'),
(1317, 68, 'sess_68_1780402719734', 'add_to_cart', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 18:53:09.397'),
(1318, 30, 'sess_30_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 15:49:06.328'),
(1319, 36, 'sess_36_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 12:41:12.154'),
(1320, 35, 'sess_35_1780402719734', 'add_to_cart', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 17:49:54.178'),
(1321, 50, 'sess_50_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 10:09:20.338'),
(1322, 23, 'sess_23_1780402719734', 'add_to_cart', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 18:40:41.498'),
(1323, 42, 'sess_42_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 17:50:47.443'),
(1324, 53, 'sess_53_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 08:37:24.311'),
(1325, 34, 'sess_34_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 00:32:45.171'),
(1326, 26, 'sess_26_1780402719734', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 16:10:41.347'),
(1327, 29, 'sess_29_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 18:59:25.506'),
(1328, 33, 'sess_33_1780402719734', 'product_view', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 15:49:24.854'),
(1329, 43, 'sess_43_1780402719734', 'add_to_cart', '{\"productId\":21,\"productName\":\"Khô Cá Thu Đà Nẵng\",\"price\":38.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 09:39:29.214'),
(1330, 33, 'sess_33_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-01 14:30:23.121'),
(1331, 45, 'sess_45_1780402719734', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 23:33:53.335'),
(1332, 50, 'sess_50_1780402719734', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 17:56:23.115'),
(1333, 30, 'sess_30_1780402719734', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 09:37:11.828'),
(1334, 34, 'sess_34_1780402719734', 'add_to_cart', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 20:10:34.996'),
(1335, 59, 'sess_59_1780402719734', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 02:41:20.184'),
(1336, 23, 'sess_23_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 23:06:48.058'),
(1337, 66, 'sess_66_1780402719734', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 22:45:28.545'),
(1338, 25, 'sess_25_1780402719734', 'add_to_cart', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 22:52:30.674'),
(1339, 25, 'sess_25_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-30 10:38:58.033'),
(1340, 56, 'sess_56_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 23:38:31.215'),
(1341, 60, 'sess_60_1780402719734', 'add_to_cart', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-02 02:28:50.666'),
(1342, 55, 'sess_55_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-26 17:53:24.529'),
(1343, 27, 'sess_27_1780402719734', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 02:52:38.433'),
(1344, 64, 'sess_64_1780402719734', 'add_to_cart', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 00:03:46.540'),
(1345, 50, 'sess_50_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 05:47:02.685'),
(1346, 35, 'sess_35_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-29 15:41:21.320'),
(1347, 56, 'sess_56_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 17:46:18.688'),
(1348, 35, 'sess_35_1780402719734', 'product_view', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 07:19:23.059'),
(1349, 65, 'sess_65_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 08:28:08.162'),
(1350, 55, 'sess_55_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-29 14:24:32.319'),
(1351, 55, 'sess_55_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-27 16:56:14.574'),
(1352, 49, 'sess_49_1780402719734', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-29 00:10:30.126'),
(1353, 32, 'sess_32_1780402719734', 'add_to_cart', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 23:11:59.553'),
(1354, 54, 'sess_54_1780402719734', 'add_to_cart', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 19:38:46.391'),
(1355, 25, 'sess_25_1780402719734', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-29 07:01:37.020'),
(1356, 27, 'sess_27_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 12:51:05.513'),
(1357, 49, 'sess_49_1780402719734', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-26 03:45:08.094'),
(1358, 39, 'sess_39_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 07:05:50.855'),
(1359, 36, 'sess_36_1780402719734', 'add_to_cart', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 02:32:13.772'),
(1360, 37, 'sess_37_1780402719734', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 19:26:55.526'),
(1361, 25, 'sess_25_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 00:19:15.757'),
(1362, 68, 'sess_68_1780402719734', 'add_to_cart', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-30 06:04:19.573'),
(1363, 23, 'sess_23_1780402719734', 'product_view', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 00:04:54.135'),
(1364, 65, 'sess_65_1780402719734', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 17:47:37.249'),
(1365, 65, 'sess_65_1780402719734', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 16:36:54.994'),
(1366, 65, 'sess_65_1780402719734', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 02:45:04.125'),
(1367, 62, 'sess_62_1780402719734', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 09:43:08.596'),
(1368, 28, 'sess_28_1780402719734', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-31 04:38:54.800'),
(1369, 71, 'sess_71_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 10:20:40.094'),
(1370, 43, 'sess_43_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 19:01:06.451'),
(1371, 26, 'sess_26_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 16:15:25.169'),
(1372, 59, 'sess_59_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 01:03:40.662'),
(1373, 64, 'sess_64_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 08:04:57.705'),
(1374, 65, 'sess_65_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 00:06:41.048'),
(1375, 39, 'sess_39_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 15:25:13.791'),
(1376, 59, 'sess_59_1780402719734', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 13:49:04.272'),
(1377, 35, 'sess_35_1780402719734', 'add_to_cart', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-27 08:05:10.587'),
(1378, 51, 'sess_51_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-26 18:31:41.370'),
(1379, 36, 'sess_36_1780402719734', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 23:01:47.039'),
(1380, 59, 'sess_59_1780402719734', 'product_view', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 22:45:42.195'),
(1381, 52, 'sess_52_1780402719734', 'add_to_cart', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 09:38:24.325'),
(1382, 60, 'sess_60_1780402719734', 'product_view', '{\"productId\":47,\"productName\":\"Hoa Quả Sấy Mix Tổng Hợp\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 18:50:42.511'),
(1383, 71, 'sess_71_1780402719734', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 17:48:18.397'),
(1384, 40, 'sess_40_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 00:33:22.476'),
(1385, 59, 'sess_59_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 17:43:34.678'),
(1386, 22, 'sess_22_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-26 17:55:52.847'),
(1387, 22, 'sess_22_1780402719734', 'product_view', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 01:26:00.085'),
(1388, 50, 'sess_50_1780402719734', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 01:27:43.194'),
(1389, 57, 'sess_57_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 07:47:39.188'),
(1390, 34, 'sess_34_1780402719734', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 13:48:01.780'),
(1391, 26, 'sess_26_1780402719734', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 16:27:13.718'),
(1392, 27, 'sess_27_1780402719734', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 22:50:51.674'),
(1393, 53, 'sess_53_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 17:10:09.583'),
(1394, 50, 'sess_50_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-06-01 01:17:13.146'),
(1395, 70, 'sess_70_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 13:45:35.528'),
(1396, 65, 'sess_65_1780402719734', 'add_to_cart', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-31 23:24:02.036'),
(1397, 23, 'sess_23_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 11:00:17.786'),
(1398, 29, 'sess_29_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 10:20:36.500'),
(1399, 46, 'sess_46_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 21:30:42.164');
INSERT INTO `su_kien_hanh_vi` (`ma_su_kien`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `loai_su_kien`, `du_lieu_su_kien`, `duong_dan_url`, `nguon_truy_cap`, `loai_thiet_bi`, `ngay_tao`) VALUES
(1400, 56, 'sess_56_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 20:12:23.085'),
(1401, 39, 'sess_39_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-31 21:51:43.732'),
(1402, 60, 'sess_60_1780402719734', 'add_to_cart', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 23:40:41.943'),
(1403, 25, 'sess_25_1780402719734', 'product_view', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 09:50:40.006'),
(1404, 40, 'sess_40_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 22:02:27.550'),
(1405, 35, 'sess_35_1780402719734', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-26 22:37:20.879'),
(1406, 52, 'sess_52_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-01 11:46:36.048'),
(1407, 54, 'sess_54_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 06:00:26.962'),
(1408, 45, 'sess_45_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-06-01 02:43:51.422'),
(1409, 71, 'sess_71_1780402719734', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 00:27:20.629'),
(1410, 24, 'sess_24_1780402719734', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 21:19:10.423'),
(1411, 66, 'sess_66_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 20:40:02.065'),
(1412, 25, 'sess_25_1780402719734', 'add_to_cart', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-27 21:26:58.012'),
(1413, 23, 'sess_23_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 13:42:21.916'),
(1414, 32, 'sess_32_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-27 15:45:39.295'),
(1415, 37, 'sess_37_1780402719734', 'product_view', '{\"productId\":50,\"productName\":\"Trà Hoa Cúc La Mã\",\"price\":14.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-29 16:46:46.949'),
(1416, 67, 'sess_67_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-27 13:45:53.882'),
(1417, 68, 'sess_68_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 13:22:27.528'),
(1418, 46, 'sess_46_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 20:00:50.453'),
(1419, 43, 'sess_43_1780402719734', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-30 23:48:34.976'),
(1420, 62, 'sess_62_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-25 00:10:15.674'),
(1421, 69, 'sess_69_1780402719734', 'add_to_cart', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 23:12:14.597'),
(1422, 49, 'sess_49_1780402719734', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 16:09:24.947'),
(1423, 51, 'sess_51_1780402719734', 'product_view', '{\"productId\":47,\"productName\":\"Hoa Quả Sấy Mix Tổng Hợp\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 21:09:41.364'),
(1424, 39, 'sess_39_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 01:57:37.659'),
(1425, 24, 'sess_24_1780402719734', 'product_view', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-29 06:16:54.467'),
(1426, 40, 'sess_40_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 01:01:43.610'),
(1427, 50, 'sess_50_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 18:08:37.398'),
(1428, 56, 'sess_56_1780402719734', 'product_view', '{\"productId\":43,\"productName\":\"Sapoche Sấy Dẻo Bình Thuận\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 18:33:00.738'),
(1429, 69, 'sess_69_1780402719734', 'add_to_cart', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 22:24:32.689'),
(1430, 41, 'sess_41_1780402719734', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 14:19:43.571'),
(1431, 39, 'sess_39_1780402719734', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-26 18:37:43.221'),
(1432, 65, 'sess_65_1780402719734', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-06-02 03:47:46.075'),
(1433, 62, 'sess_62_1780402719734', 'add_to_cart', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 22:56:01.900'),
(1434, 53, 'sess_53_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 19:52:27.665'),
(1435, 47, 'sess_47_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 18:03:48.045'),
(1436, 33, 'sess_33_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 11:51:39.122'),
(1437, 34, 'sess_34_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 18:19:59.491'),
(1438, 23, 'sess_23_1780402719734', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 20:23:53.422'),
(1439, 60, 'sess_60_1780402719734', 'add_to_cart', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-31 09:27:51.246'),
(1440, 28, 'sess_28_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 23:54:05.537'),
(1441, 58, 'sess_58_1780402719734', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 09:32:09.330'),
(1442, 66, 'sess_66_1780402719734', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 17:15:45.821'),
(1443, 42, 'sess_42_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-23 17:43:10.858'),
(1444, 25, 'sess_25_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 11:48:41.353'),
(1445, 65, 'sess_65_1780402719734', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-25 21:42:19.153'),
(1446, 66, 'sess_66_1780402719734', 'add_to_cart', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-29 02:06:21.155'),
(1447, 31, 'sess_31_1780402719734', 'add_to_cart', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-29 08:50:47.766'),
(1448, 70, 'sess_70_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 12:21:18.941'),
(1449, 67, 'sess_67_1780402719734', 'add_to_cart', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 11:00:11.134'),
(1450, 59, 'sess_59_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 12:44:13.963'),
(1451, 26, 'sess_26_1780402719734', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-31 04:56:38.244'),
(1452, 31, 'sess_31_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 18:38:55.071'),
(1453, 61, 'sess_61_1780402719734', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 19:39:22.824'),
(1454, 36, 'sess_36_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-26 09:35:14.221'),
(1455, 64, 'sess_64_1780402719734', 'add_to_cart', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 22:14:22.276'),
(1456, 27, 'sess_27_1780402719734', 'add_to_cart', '{\"productId\":32,\"productName\":\"Ghẹ Rang Muối Vũng Tàu\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 13:15:08.391'),
(1457, 24, 'sess_24_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-02 01:42:35.018'),
(1458, 24, 'sess_24_1780402719734', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 08:19:14.463'),
(1459, 26, 'sess_26_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-27 16:23:36.198'),
(1460, 55, 'sess_55_1780402719734', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 05:25:06.859'),
(1461, 67, 'sess_67_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-28 08:07:58.609'),
(1462, 30, 'sess_30_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 06:29:31.156'),
(1463, 58, 'sess_58_1780402719734', 'add_to_cart', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 03:34:08.114'),
(1464, 45, 'sess_45_1780402719734', 'add_to_cart', '{\"productId\":40,\"productName\":\"Nhãn Sấy Hưng Yên\",\"price\":19.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 02:00:36.276'),
(1465, 50, 'sess_50_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-06-02 12:16:27.962'),
(1466, 63, 'sess_63_1780402719734', 'product_view', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-24 07:33:14.234'),
(1467, 49, 'sess_49_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-29 06:51:06.286'),
(1468, 64, 'sess_64_1780402719734', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-28 22:18:29.021'),
(1469, 54, 'sess_54_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-30 05:05:36.580'),
(1470, 57, 'sess_57_1780402719734', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-06-02 09:51:00.166'),
(1471, 68, 'sess_68_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-31 10:06:51.673'),
(1472, 32, 'sess_32_1780402719734', 'product_view', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 21:18:04.367'),
(1473, 46, 'sess_46_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 19:08:46.156'),
(1474, 42, 'sess_42_1780402719734', 'add_to_cart', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 05:39:44.128'),
(1475, 43, 'sess_43_1780402719734', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-28 01:45:38.546'),
(1476, 48, 'sess_48_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 19:32:25.325'),
(1477, 52, 'sess_52_1780402719734', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 19:18:30.304'),
(1478, 22, 'sess_22_1780402719734', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 17:02:07.855'),
(1479, 52, 'sess_52_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 05:20:38.568'),
(1480, 70, 'sess_70_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 05:00:22.907'),
(1481, 45, 'sess_45_1780402719734', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 13:18:27.281'),
(1482, 56, 'sess_56_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 05:05:07.040'),
(1483, 27, 'sess_27_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-27 04:11:25.953'),
(1484, 32, 'sess_32_1780402719734', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-02 09:01:33.807'),
(1485, 38, 'sess_38_1780402719734', 'product_view', '{\"productId\":32,\"productName\":\"Ghẹ Rang Muối Vũng Tàu\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 07:23:32.203'),
(1486, 42, 'sess_42_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-31 10:23:05.870'),
(1487, 35, 'sess_35_1780402719734', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-29 15:32:59.092'),
(1488, 67, 'sess_67_1780402719734', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-29 13:02:45.859'),
(1489, 36, 'sess_36_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 14:41:18.443'),
(1490, 23, 'sess_23_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-24 04:34:36.364'),
(1491, 62, 'sess_62_1780402719734', 'add_to_cart', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-06-01 11:58:52.299'),
(1492, 31, 'sess_31_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 07:47:53.792'),
(1493, 36, 'sess_36_1780402719734', 'add_to_cart', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-02 06:17:23.075'),
(1494, 47, 'sess_47_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 12:47:17.849'),
(1495, 54, 'sess_54_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 12:24:54.705'),
(1496, 40, 'sess_40_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-29 16:44:24.354'),
(1497, 46, 'sess_46_1780402719734', 'product_view', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 04:59:29.935'),
(1498, 62, 'sess_62_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 05:04:41.725'),
(1499, 52, 'sess_52_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 17:48:20.672'),
(1500, 50, 'sess_50_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-23 20:25:49.624'),
(1501, 45, 'sess_45_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-24 16:36:07.464'),
(1502, 66, 'sess_66_1780402719734', 'add_to_cart', '{\"productId\":40,\"productName\":\"Nhãn Sấy Hưng Yên\",\"price\":19.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 06:48:05.963'),
(1503, 65, 'sess_65_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 12:42:05.844'),
(1504, 43, 'sess_43_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 07:38:20.647'),
(1505, 67, 'sess_67_1780402719734', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 16:37:33.609'),
(1506, 49, 'sess_49_1780402719734', 'add_to_cart', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 22:50:10.701'),
(1507, 52, 'sess_52_1780402719734', 'product_view', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-02 05:04:58.399'),
(1508, 69, 'sess_69_1780402719734', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 21:20:29.094'),
(1509, 24, 'sess_24_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-28 16:08:30.728'),
(1510, 28, 'sess_28_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 09:43:58.705'),
(1511, 43, 'sess_43_1780402719734', 'product_view', '{\"productId\":47,\"productName\":\"Hoa Quả Sấy Mix Tổng Hợp\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 03:35:05.019'),
(1512, 69, 'sess_69_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 16:57:46.179'),
(1513, 42, 'sess_42_1780402719734', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 23:47:17.258'),
(1514, 36, 'sess_36_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 05:38:27.948'),
(1515, 44, 'sess_44_1780402719734', 'product_view', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 08:22:52.404'),
(1516, 23, 'sess_23_1780402719734', 'add_to_cart', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 21:50:39.315'),
(1517, 69, 'sess_69_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 20:56:51.229'),
(1518, 59, 'sess_59_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-30 12:52:41.778'),
(1519, 26, 'sess_26_1780402719734', 'add_to_cart', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 22:30:39.635'),
(1520, 23, 'sess_23_1780402719734', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-31 00:00:55.518'),
(1521, 28, 'sess_28_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 21:51:41.102'),
(1522, 53, 'sess_53_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-27 03:00:16.235'),
(1523, 22, 'sess_22_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 15:05:58.788'),
(1524, 36, 'sess_36_1780402719734', 'product_view', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 08:19:07.564'),
(1525, 49, 'sess_49_1780402719734', 'add_to_cart', '{\"productId\":35,\"productName\":\"Tôm Hùm Đất Nướng Phú Yên\",\"price\":89.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 03:05:15.254'),
(1526, 43, 'sess_43_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 16:06:22.407'),
(1527, 31, 'sess_31_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-26 12:24:01.582'),
(1528, 59, 'sess_59_1780402719734', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-06-01 07:36:44.468'),
(1529, 35, 'sess_35_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-30 18:01:05.783'),
(1530, 69, 'sess_69_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 08:35:03.136'),
(1531, 54, 'sess_54_1780402719734', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 23:05:51.399'),
(1532, 39, 'sess_39_1780402719734', 'add_to_cart', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-25 17:06:58.957'),
(1533, 42, 'sess_42_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-28 13:11:37.346'),
(1534, 36, 'sess_36_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-31 05:03:32.564'),
(1535, 32, 'sess_32_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-24 09:33:04.318'),
(1536, 29, 'sess_29_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 22:02:28.388'),
(1537, 70, 'sess_70_1780402719734', 'add_to_cart', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 21:26:24.792'),
(1538, 42, 'sess_42_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 19:08:25.753'),
(1539, 70, 'sess_70_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 00:02:21.175'),
(1540, 32, 'sess_32_1780402719734', 'product_view', '{\"productId\":23,\"productName\":\"Khô Cá Thiểu Trà Vinh\",\"price\":20.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 00:21:44.437'),
(1541, 37, 'sess_37_1780402719734', 'add_to_cart', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 12:07:22.440'),
(1542, 39, 'sess_39_1780402719734', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 14:53:48.664'),
(1543, 38, 'sess_38_1780402719734', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 23:03:23.667'),
(1544, 64, 'sess_64_1780402719734', 'product_view', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 22:05:41.796'),
(1545, 35, 'sess_35_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 15:10:34.897'),
(1546, 43, 'sess_43_1780402719734', 'product_view', '{\"productId\":25,\"productName\":\"Cá Cơm Rang Muối Ớt\",\"price\":9.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 03:36:17.328'),
(1547, 66, 'sess_66_1780402719734', 'product_view', '{\"productId\":50,\"productName\":\"Trà Hoa Cúc La Mã\",\"price\":14.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 20:11:56.594'),
(1548, 46, 'sess_46_1780402719734', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-24 06:06:44.707'),
(1549, 37, 'sess_37_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 06:30:42.256'),
(1550, 23, 'sess_23_1780402719734', 'add_to_cart', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/shop', NULL, 'desktop', '2026-06-02 05:01:17.306'),
(1551, 67, 'sess_67_1780402719734', 'add_to_cart', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-26 16:16:44.336'),
(1552, 48, 'sess_48_1780402719734', 'product_view', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 12:19:32.432'),
(1553, 50, 'sess_50_1780402719734', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-24 02:18:40.186'),
(1554, 70, 'sess_70_1780402719734', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 13:13:02.670'),
(1555, 39, 'sess_39_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-29 05:46:44.796'),
(1556, 26, 'sess_26_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 00:13:38.104'),
(1557, 37, 'sess_37_1780402719734', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 05:15:28.745'),
(1558, 54, 'sess_54_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 10:12:21.107'),
(1559, 65, 'sess_65_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-06-02 06:05:39.529'),
(1560, 45, 'sess_45_1780402719734', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 18:27:48.127'),
(1561, 61, 'sess_61_1780402719734', 'product_view', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 06:52:49.561'),
(1562, 62, 'sess_62_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-27 04:39:04.183'),
(1563, 30, 'sess_30_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 06:59:32.932'),
(1564, 41, 'sess_41_1780402719734', 'add_to_cart', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 09:36:26.062'),
(1565, 61, 'sess_61_1780402719734', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 07:39:15.448'),
(1566, 59, 'sess_59_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 02:41:59.578'),
(1567, 48, 'sess_48_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-31 00:19:26.827'),
(1568, 31, 'sess_31_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 02:22:02.636'),
(1569, 35, 'sess_35_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-29 07:50:05.413'),
(1570, 67, 'sess_67_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-26 14:19:16.476'),
(1571, 65, 'sess_65_1780402719734', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 08:12:19.299'),
(1572, 33, 'sess_33_1780402719734', 'product_view', '{\"productId\":35,\"productName\":\"Tôm Hùm Đất Nướng Phú Yên\",\"price\":89.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 11:54:02.219'),
(1573, 41, 'sess_41_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 03:05:18.725'),
(1574, 65, 'sess_65_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 04:22:40.880'),
(1575, 60, 'sess_60_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 13:12:53.958'),
(1576, 68, 'sess_68_1780402719734', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 01:00:07.071'),
(1577, 62, 'sess_62_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 02:19:27.622'),
(1578, 45, 'sess_45_1780402719734', 'product_view', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-02 11:21:10.990'),
(1579, 37, 'sess_37_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 23:43:24.187'),
(1580, 68, 'sess_68_1780402719734', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 08:59:02.113'),
(1581, 48, 'sess_48_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-26 11:53:51.215'),
(1582, 57, 'sess_57_1780402719734', 'add_to_cart', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 06:24:45.524'),
(1583, 55, 'sess_55_1780402719734', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-06-01 07:32:36.517'),
(1584, 60, 'sess_60_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 17:52:34.802'),
(1585, 45, 'sess_45_1780402719734', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-23 20:02:41.599'),
(1586, 34, 'sess_34_1780402719734', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-31 04:17:10.119'),
(1587, 61, 'sess_61_1780402719734', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 21:44:30.249'),
(1588, 69, 'sess_69_1780402719735', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 04:37:38.931'),
(1589, 47, 'sess_47_1780402719735', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-27 06:53:50.224'),
(1590, 23, 'sess_23_1780402719735', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-26 12:59:05.145'),
(1591, 53, 'sess_53_1780402719735', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 08:45:19.672'),
(1592, 38, 'sess_38_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 03:31:23.011'),
(1593, 53, 'sess_53_1780402719735', 'add_to_cart', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-26 05:31:33.858'),
(1594, 60, 'sess_60_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-27 17:51:39.117'),
(1595, 35, 'sess_35_1780402719735', 'add_to_cart', '{\"productId\":13,\"productName\":\"Nước Mắm Phú Quốc 40 Độ Đạm\",\"price\":18.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-25 20:40:22.843'),
(1596, 35, 'sess_35_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 12:08:41.790'),
(1597, 42, 'sess_42_1780402719735', 'add_to_cart', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 07:49:39.134'),
(1598, 29, 'sess_29_1780402719735', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 09:51:57.966'),
(1599, 61, 'sess_61_1780402719735', 'add_to_cart', '{\"productId\":35,\"productName\":\"Tôm Hùm Đất Nướng Phú Yên\",\"price\":89.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 13:59:25.646'),
(1600, 68, 'sess_68_1780402719735', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 21:24:56.765'),
(1601, 59, 'sess_59_1780402719735', 'add_to_cart', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 09:28:34.642'),
(1602, 25, 'sess_25_1780402719735', 'product_view', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 19:52:23.617'),
(1603, 63, 'sess_63_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 11:34:40.572'),
(1604, 64, 'sess_64_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-01 11:26:01.607'),
(1605, 39, 'sess_39_1780402719735', 'add_to_cart', '{\"productId\":43,\"productName\":\"Sapoche Sấy Dẻo Bình Thuận\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 05:29:30.804'),
(1606, 65, 'sess_65_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 19:00:14.543'),
(1607, 64, 'sess_64_1780402719735', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-30 14:46:58.068'),
(1608, 37, 'sess_37_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 00:51:00.195'),
(1609, 51, 'sess_51_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-26 22:56:00.203'),
(1610, 27, 'sess_27_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 07:58:48.473'),
(1611, 46, 'sess_46_1780402719735', 'product_view', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-24 09:37:23.896'),
(1612, 46, 'sess_46_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-06-01 20:32:03.633'),
(1613, 26, 'sess_26_1780402719735', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 02:27:39.263'),
(1614, 34, 'sess_34_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 15:52:42.899'),
(1615, 37, 'sess_37_1780402719735', 'add_to_cart', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 23:45:08.843'),
(1616, 34, 'sess_34_1780402719735', 'product_view', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 16:12:45.218'),
(1617, 71, 'sess_71_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 22:40:57.644'),
(1618, 55, 'sess_55_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 22:37:37.853'),
(1619, 39, 'sess_39_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-01 08:10:35.052'),
(1620, 35, 'sess_35_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 07:29:22.415'),
(1621, 30, 'sess_30_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-28 10:19:40.771'),
(1622, 59, 'sess_59_1780402719735', 'product_view', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-23 18:23:47.455'),
(1623, 49, 'sess_49_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 13:23:47.190'),
(1624, 33, 'sess_33_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 14:38:25.570'),
(1625, 39, 'sess_39_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 19:04:48.057'),
(1626, 49, 'sess_49_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 08:56:45.777'),
(1627, 24, 'sess_24_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 17:21:31.460'),
(1628, 61, 'sess_61_1780402719735', 'product_view', '{\"productId\":35,\"productName\":\"Tôm Hùm Đất Nướng Phú Yên\",\"price\":89.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 00:27:53.277'),
(1629, 33, 'sess_33_1780402719735', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 02:14:32.908'),
(1630, 63, 'sess_63_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 16:35:40.824'),
(1631, 51, 'sess_51_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-25 02:26:37.309'),
(1632, 41, 'sess_41_1780402719735', 'product_view', '{\"productId\":21,\"productName\":\"Khô Cá Thu Đà Nẵng\",\"price\":38.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 03:47:06.721'),
(1633, 54, 'sess_54_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-29 01:42:48.728'),
(1634, 30, 'sess_30_1780402719735', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-25 09:30:47.966'),
(1635, 44, 'sess_44_1780402719735', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 01:56:54.734'),
(1636, 28, 'sess_28_1780402719735', 'add_to_cart', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-31 18:43:52.971'),
(1637, 22, 'sess_22_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 04:11:39.580'),
(1638, 63, 'sess_63_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 09:47:59.139'),
(1639, 29, 'sess_29_1780402719735', 'add_to_cart', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 02:11:43.793'),
(1640, 44, 'sess_44_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 22:31:52.839'),
(1641, 67, 'sess_67_1780402719735', 'add_to_cart', '{\"productId\":21,\"productName\":\"Khô Cá Thu Đà Nẵng\",\"price\":38.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 10:59:04.249'),
(1642, 26, 'sess_26_1780402719735', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 08:40:45.533'),
(1643, 42, 'sess_42_1780402719735', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 01:19:41.484'),
(1644, 52, 'sess_52_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 18:24:28.758'),
(1645, 39, 'sess_39_1780402719735', 'product_view', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 23:15:35.664'),
(1646, 22, 'sess_22_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 19:08:12.833'),
(1647, 42, 'sess_42_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-28 03:02:39.006'),
(1648, 56, 'sess_56_1780402719735', 'add_to_cart', '{\"productId\":7,\"productName\":\"Xoài Sấy Dẻo Cam Ranh\",\"price\":12.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-25 04:36:47.111'),
(1649, 57, 'sess_57_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 09:05:05.708'),
(1650, 63, 'sess_63_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 11:42:46.766'),
(1651, 65, 'sess_65_1780402719735', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 09:30:12.358'),
(1652, 51, 'sess_51_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-28 00:54:23.785'),
(1653, 60, 'sess_60_1780402719735', 'product_view', '{\"productId\":21,\"productName\":\"Khô Cá Thu Đà Nẵng\",\"price\":38.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 00:49:27.621'),
(1654, 55, 'sess_55_1780402719735', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 07:35:47.299'),
(1655, 51, 'sess_51_1780402719735', 'add_to_cart', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 01:19:46.056'),
(1656, 46, 'sess_46_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 10:54:51.024'),
(1657, 23, 'sess_23_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 17:24:56.278'),
(1658, 26, 'sess_26_1780402719735', 'product_view', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 10:10:59.736'),
(1659, 28, 'sess_28_1780402719735', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 16:11:09.823'),
(1660, 43, 'sess_43_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-25 10:04:15.847'),
(1661, 29, 'sess_29_1780402719735', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 01:28:41.567'),
(1662, 30, 'sess_30_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 01:18:30.335'),
(1663, 29, 'sess_29_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 22:40:57.381'),
(1664, 29, 'sess_29_1780402719735', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 17:18:29.426'),
(1665, 42, 'sess_42_1780402719735', 'product_view', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-23 18:22:59.812'),
(1666, 47, 'sess_47_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-27 23:24:01.272'),
(1667, 38, 'sess_38_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 23:10:18.890'),
(1668, 26, 'sess_26_1780402719735', 'product_view', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 16:30:02.894'),
(1669, 48, 'sess_48_1780402719735', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 16:32:16.623'),
(1670, 28, 'sess_28_1780402719735', 'add_to_cart', '{\"productId\":25,\"productName\":\"Cá Cơm Rang Muối Ớt\",\"price\":9.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 16:54:34.142'),
(1671, 27, 'sess_27_1780402719735', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 12:07:11.078'),
(1672, 39, 'sess_39_1780402719735', 'add_to_cart', '{\"productId\":35,\"productName\":\"Tôm Hùm Đất Nướng Phú Yên\",\"price\":89.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 16:22:31.094'),
(1673, 39, 'sess_39_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-30 18:57:50.158'),
(1674, 25, 'sess_25_1780402719735', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-25 04:14:28.806'),
(1675, 45, 'sess_45_1780402719735', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 11:01:23.996'),
(1676, 36, 'sess_36_1780402719735', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 11:45:41.239'),
(1677, 51, 'sess_51_1780402719735', 'product_view', '{\"productId\":21,\"productName\":\"Khô Cá Thu Đà Nẵng\",\"price\":38.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 12:57:55.216'),
(1678, 58, 'sess_58_1780402719735', 'product_view', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 06:38:32.140'),
(1679, 28, 'sess_28_1780402719735', 'product_view', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 05:04:52.240'),
(1680, 63, 'sess_63_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 12:44:17.969'),
(1681, 70, 'sess_70_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 17:57:15.959'),
(1682, 41, 'sess_41_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 00:10:54.276'),
(1683, 23, 'sess_23_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 19:10:39.544'),
(1684, 49, 'sess_49_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 01:49:32.947'),
(1685, 23, 'sess_23_1780402719735', 'add_to_cart', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 07:54:24.334'),
(1686, 31, 'sess_31_1780402719735', 'product_view', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 22:31:48.942'),
(1687, 51, 'sess_51_1780402719735', 'product_view', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 15:42:13.701'),
(1688, 47, 'sess_47_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-02 09:15:13.518'),
(1689, 55, 'sess_55_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 08:32:45.960'),
(1690, 44, 'sess_44_1780402719735', 'product_view', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 07:12:14.640'),
(1691, 64, 'sess_64_1780402719735', 'add_to_cart', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-30 11:42:14.533'),
(1692, 39, 'sess_39_1780402719735', 'product_view', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-25 20:53:41.955'),
(1693, 24, 'sess_24_1780402719735', 'product_view', '{\"productId\":19,\"productName\":\"Khô Cá Nục Bình Định\",\"price\":16.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 14:26:04.202'),
(1694, 34, 'sess_34_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-31 19:31:48.884'),
(1695, 23, 'sess_23_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 15:33:56.388'),
(1696, 67, 'sess_67_1780402719735', 'product_view', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-31 05:36:51.156'),
(1697, 37, 'sess_37_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 14:32:29.557'),
(1698, 38, 'sess_38_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 10:52:45.517'),
(1699, 52, 'sess_52_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 09:20:22.408'),
(1700, 44, 'sess_44_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 01:02:37.279'),
(1701, 47, 'sess_47_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 05:34:25.631'),
(1702, 40, 'sess_40_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-29 14:31:49.090');
INSERT INTO `su_kien_hanh_vi` (`ma_su_kien`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `loai_su_kien`, `du_lieu_su_kien`, `duong_dan_url`, `nguon_truy_cap`, `loai_thiet_bi`, `ngay_tao`) VALUES
(1703, 63, 'sess_63_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 21:52:01.719'),
(1704, 47, 'sess_47_1780402719735', 'add_to_cart', '{\"productId\":47,\"productName\":\"Hoa Quả Sấy Mix Tổng Hợp\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 13:16:08.960'),
(1705, 56, 'sess_56_1780402719735', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 18:03:47.077'),
(1706, 28, 'sess_28_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 19:33:11.591'),
(1707, 44, 'sess_44_1780402719735', 'add_to_cart', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 19:32:14.715'),
(1708, 52, 'sess_52_1780402719735', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 08:54:16.078'),
(1709, 54, 'sess_54_1780402719735', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 09:19:33.604'),
(1710, 48, 'sess_48_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-25 22:11:34.244'),
(1711, 58, 'sess_58_1780402719735', 'add_to_cart', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 02:42:37.693'),
(1712, 63, 'sess_63_1780402719735', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 23:36:06.500'),
(1713, 66, 'sess_66_1780402719735', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-02 06:27:12.883'),
(1714, 69, 'sess_69_1780402719735', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-29 23:57:55.911'),
(1715, 66, 'sess_66_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 17:29:47.733'),
(1716, 26, 'sess_26_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 12:08:50.897'),
(1717, 32, 'sess_32_1780402719735', 'add_to_cart', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 12:23:32.765'),
(1718, 35, 'sess_35_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 16:53:55.267'),
(1719, 71, 'sess_71_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-25 12:28:23.563'),
(1720, 41, 'sess_41_1780402719735', 'add_to_cart', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 21:25:33.927'),
(1721, 41, 'sess_41_1780402719735', 'product_view', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 22:13:24.159'),
(1722, 36, 'sess_36_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-02 11:01:37.049'),
(1723, 29, 'sess_29_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 21:14:00.545'),
(1724, 48, 'sess_48_1780402719735', 'add_to_cart', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 16:15:24.108'),
(1725, 28, 'sess_28_1780402719735', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/shop', NULL, 'desktop', '2026-05-24 18:15:52.108'),
(1726, 45, 'sess_45_1780402719735', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-26 05:30:25.182'),
(1727, 51, 'sess_51_1780402719735', 'add_to_cart', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 01:09:48.503'),
(1728, 32, 'sess_32_1780402719735', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 17:41:35.737'),
(1729, 47, 'sess_47_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 20:03:40.151'),
(1730, 68, 'sess_68_1780402719735', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 19:17:26.963'),
(1731, 59, 'sess_59_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 19:54:10.760'),
(1732, 52, 'sess_52_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 10:05:34.052'),
(1733, 70, 'sess_70_1780402719735', 'add_to_cart', '{\"productId\":37,\"productName\":\"Khoai Lang Sấy Đà Lạt\",\"price\":7.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 12:22:39.459'),
(1734, 50, 'sess_50_1780402719735', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-31 04:38:15.067'),
(1735, 22, 'sess_22_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 23:10:34.541'),
(1736, 61, 'sess_61_1780402719735', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 12:43:33.641'),
(1737, 51, 'sess_51_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 09:17:34.973'),
(1738, 60, 'sess_60_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 21:37:10.451'),
(1739, 48, 'sess_48_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-30 05:00:02.120'),
(1740, 33, 'sess_33_1780402719735', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 00:43:30.035'),
(1741, 26, 'sess_26_1780402719735', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 23:39:17.360'),
(1742, 49, 'sess_49_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 14:00:05.422'),
(1743, 65, 'sess_65_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 01:37:16.822'),
(1744, 52, 'sess_52_1780402719735', 'add_to_cart', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 20:50:38.657'),
(1745, 60, 'sess_60_1780402719735', 'product_view', '{\"productId\":25,\"productName\":\"Cá Cơm Rang Muối Ớt\",\"price\":9.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 13:38:27.237'),
(1746, 29, 'sess_29_1780402719735', 'product_view', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 00:26:08.443'),
(1747, 27, 'sess_27_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 10:05:32.460'),
(1748, 37, 'sess_37_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-23 18:54:40.822'),
(1749, 59, 'sess_59_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-29 12:19:15.460'),
(1750, 53, 'sess_53_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 00:44:15.881'),
(1751, 58, 'sess_58_1780402719735', 'product_view', '{\"productId\":21,\"productName\":\"Khô Cá Thu Đà Nẵng\",\"price\":38.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-01 05:09:01.455'),
(1752, 42, 'sess_42_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-06-01 09:10:00.464'),
(1753, 65, 'sess_65_1780402719735', 'add_to_cart', '{\"productId\":23,\"productName\":\"Khô Cá Thiểu Trà Vinh\",\"price\":20.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 13:50:37.111'),
(1754, 49, 'sess_49_1780402719735', 'add_to_cart', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 11:31:11.756'),
(1755, 71, 'sess_71_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 20:34:44.305'),
(1756, 36, 'sess_36_1780402719735', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 06:36:21.944'),
(1757, 27, 'sess_27_1780402719735', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 16:41:40.970'),
(1758, 27, 'sess_27_1780402719735', 'add_to_cart', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 18:52:41.492'),
(1759, 65, 'sess_65_1780402719735', 'product_view', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 11:17:15.418'),
(1760, 44, 'sess_44_1780402719735', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 19:48:36.895'),
(1761, 36, 'sess_36_1780402719735', 'add_to_cart', '{\"productId\":40,\"productName\":\"Nhãn Sấy Hưng Yên\",\"price\":19.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 15:26:42.159'),
(1762, 67, 'sess_67_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-31 19:18:52.596'),
(1763, 51, 'sess_51_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 18:09:54.956'),
(1764, 27, 'sess_27_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 17:04:03.166'),
(1765, 52, 'sess_52_1780402719735', 'add_to_cart', '{\"productId\":50,\"productName\":\"Trà Hoa Cúc La Mã\",\"price\":14.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-28 10:52:09.433'),
(1766, 61, 'sess_61_1780402719735', 'product_view', '{\"productId\":10,\"productName\":\"Mứt Dừa Non Bến Tre\",\"price\":14.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 21:27:37.946'),
(1767, 69, 'sess_69_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 04:45:01.513'),
(1768, 59, 'sess_59_1780402719735', 'product_view', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 14:28:24.698'),
(1769, 24, 'sess_24_1780402719735', 'product_view', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-06-02 07:06:12.031'),
(1770, 48, 'sess_48_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 20:14:42.664'),
(1771, 26, 'sess_26_1780402719735', 'product_view', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/shop', NULL, 'desktop', '2026-05-29 16:23:52.436'),
(1772, 47, 'sess_47_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 23:31:15.208'),
(1773, 50, 'sess_50_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 12:59:41.746'),
(1774, 25, 'sess_25_1780402719735', 'add_to_cart', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 14:42:43.458'),
(1775, 68, 'sess_68_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 01:19:13.998'),
(1776, 49, 'sess_49_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 10:09:29.239'),
(1777, 41, 'sess_41_1780402719735', 'add_to_cart', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 21:44:46.160'),
(1778, 41, 'sess_41_1780402719735', 'product_view', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 07:48:47.951'),
(1779, 66, 'sess_66_1780402719735', 'add_to_cart', '{\"productId\":6,\"productName\":\"Tôm Rim Me Sài Gòn\",\"price\":35.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-29 19:26:44.086'),
(1780, 47, 'sess_47_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-29 18:20:52.811'),
(1781, 71, 'sess_71_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 08:02:10.581'),
(1782, 69, 'sess_69_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-28 04:10:47.619'),
(1783, 25, 'sess_25_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 11:17:46.837'),
(1784, 65, 'sess_65_1780402719735', 'add_to_cart', '{\"productId\":11,\"productName\":\"Trà Sen Tây Hồ\",\"price\":28.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 23:19:30.541'),
(1785, 39, 'sess_39_1780402719735', 'add_to_cart', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/shop', NULL, 'desktop', '2026-05-31 04:22:30.570'),
(1786, 53, 'sess_53_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 04:59:51.267'),
(1787, 40, 'sess_40_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-27 09:55:27.762'),
(1788, 22, 'sess_22_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 11:54:34.440'),
(1789, 29, 'sess_29_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-31 11:03:54.847'),
(1790, 31, 'sess_31_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-26 18:24:28.407'),
(1791, 56, 'sess_56_1780402719735', 'add_to_cart', '{\"productId\":15,\"productName\":\"Sa Tế Chay Đà Nẵng\",\"price\":7.99,\"category\":\"Đồ uống\"}', '/shop', NULL, 'desktop', '2026-05-24 21:53:30.279'),
(1792, 41, 'sess_41_1780402719735', 'product_view', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 15:02:45.195'),
(1793, 70, 'sess_70_1780402719735', 'product_view', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 08:32:43.425'),
(1794, 29, 'sess_29_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 00:36:45.824'),
(1795, 68, 'sess_68_1780402719735', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 00:11:31.163'),
(1796, 23, 'sess_23_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 09:33:41.235'),
(1797, 22, 'sess_22_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-31 19:42:06.986'),
(1798, 51, 'sess_51_1780402719735', 'add_to_cart', '{\"productId\":24,\"productName\":\"Khô Cá Lóc Một Nắng\",\"price\":32.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 07:21:55.205'),
(1799, 48, 'sess_48_1780402719735', 'add_to_cart', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 03:53:09.981'),
(1800, 32, 'sess_32_1780402719735', 'product_view', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 04:19:11.939'),
(1801, 23, 'sess_23_1780402719735', 'product_view', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 19:32:34.049'),
(1802, 30, 'sess_30_1780402719735', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-23 18:04:01.651'),
(1803, 22, 'sess_22_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 08:52:31.298'),
(1804, 53, 'sess_53_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 05:12:48.958'),
(1805, 67, 'sess_67_1780402719735', 'product_view', '{\"productId\":16,\"productName\":\"Khô Cá Dứa Kiên Giang\",\"price\":34.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 15:25:38.658'),
(1806, 28, 'sess_28_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-30 00:51:30.533'),
(1807, 47, 'sess_47_1780402719735', 'product_view', '{\"productId\":4,\"productName\":\"Tôm Khô Cà Mau Loại 1\",\"price\":45.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 22:19:44.005'),
(1808, 42, 'sess_42_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-27 07:51:03.516'),
(1809, 23, 'sess_23_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 12:36:26.338'),
(1810, 65, 'sess_65_1780402719735', 'product_view', '{\"productId\":23,\"productName\":\"Khô Cá Thiểu Trà Vinh\",\"price\":20.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-31 09:54:03.853'),
(1811, 52, 'sess_52_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 22:54:50.992'),
(1812, 23, 'sess_23_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 16:49:37.979'),
(1813, 37, 'sess_37_1780402719735', 'product_view', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-25 20:48:50.297'),
(1814, 47, 'sess_47_1780402719735', 'product_view', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 17:05:45.342'),
(1815, 39, 'sess_39_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-28 12:28:13.796'),
(1816, 61, 'sess_61_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 01:33:52.376'),
(1817, 25, 'sess_25_1780402719735', 'add_to_cart', '{\"productId\":25,\"productName\":\"Cá Cơm Rang Muối Ớt\",\"price\":9.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 13:20:15.962'),
(1818, 55, 'sess_55_1780402719735', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 05:11:18.716'),
(1819, 38, 'sess_38_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 15:24:50.904'),
(1820, 44, 'sess_44_1780402719735', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-24 08:38:47.852'),
(1821, 53, 'sess_53_1780402719735', 'add_to_cart', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 19:30:32.609'),
(1822, 59, 'sess_59_1780402719735', 'add_to_cart', '{\"productId\":8,\"productName\":\"Chuối Sấy Giòn Tiền Giang\",\"price\":8.99,\"category\":\"Đặc sản vùng miền\"}', '/shop', NULL, 'desktop', '2026-05-24 19:50:11.292'),
(1823, 48, 'sess_48_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-25 01:44:22.267'),
(1824, 30, 'sess_30_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-31 08:33:56.294'),
(1825, 35, 'sess_35_1780402719735', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 17:25:09.647'),
(1826, 29, 'sess_29_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 10:18:36.846'),
(1827, 29, 'sess_29_1780402719735', 'add_to_cart', '{\"productId\":33,\"productName\":\"Tôm Khô Loại 2 Cần Giờ\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 08:39:13.276'),
(1828, 25, 'sess_25_1780402719735', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-02 01:30:24.801'),
(1829, 44, 'sess_44_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 12:38:24.136'),
(1830, 48, 'sess_48_1780402719735', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 15:00:04.997'),
(1831, 40, 'sess_40_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-28 18:25:31.582'),
(1832, 52, 'sess_52_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-29 04:29:47.978'),
(1833, 53, 'sess_53_1780402719735', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-30 18:28:38.764'),
(1834, 49, 'sess_49_1780402719735', 'product_view', '{\"productId\":27,\"productName\":\"Khô Cá Hố Phan Rang\",\"price\":26.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-23 17:17:59.271'),
(1835, 37, 'sess_37_1780402719735', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-26 18:38:46.746'),
(1836, 32, 'sess_32_1780402719735', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 20:42:18.953'),
(1837, 37, 'sess_37_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 16:00:22.230'),
(1838, 24, 'sess_24_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 19:36:28.620'),
(1839, 42, 'sess_42_1780402719735', 'product_view', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-24 17:47:31.913'),
(1840, 25, 'sess_25_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 20:37:36.443'),
(1841, 53, 'sess_53_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 04:25:24.242'),
(1842, 64, 'sess_64_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 09:16:02.167'),
(1843, 44, 'sess_44_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 12:38:25.923'),
(1844, 27, 'sess_27_1780402719735', 'add_to_cart', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 06:25:04.046'),
(1845, 60, 'sess_60_1780402719735', 'product_view', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 16:50:05.427'),
(1846, 60, 'sess_60_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 22:14:50.999'),
(1847, 38, 'sess_38_1780402719735', 'add_to_cart', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-02 00:04:25.580'),
(1848, 32, 'sess_32_1780402719735', 'product_view', '{\"productId\":34,\"productName\":\"Mực Khô Ăn Liền Bình Thuận\",\"price\":12.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 03:55:47.897'),
(1849, 38, 'sess_38_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 23:55:26.437'),
(1850, 28, 'sess_28_1780402719735', 'product_view', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 17:25:08.216'),
(1851, 51, 'sess_51_1780402719735', 'add_to_cart', '{\"productId\":40,\"productName\":\"Nhãn Sấy Hưng Yên\",\"price\":19.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-28 10:38:00.540'),
(1852, 30, 'sess_30_1780402719735', 'add_to_cart', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 10:42:03.843'),
(1853, 31, 'sess_31_1780402719735', 'product_view', '{\"productId\":3,\"productName\":\"Khô Cá Tra Phồng\",\"price\":15.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 13:49:22.403'),
(1854, 23, 'sess_23_1780402719735', 'add_to_cart', '{\"productId\":9,\"productName\":\"Mít Sấy Giòn Đồng Nai\",\"price\":10.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-30 20:00:10.177'),
(1855, 22, 'sess_22_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-31 03:00:08.802'),
(1856, 49, 'sess_49_1780402719735', 'add_to_cart', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-23 13:14:24.960'),
(1857, 39, 'sess_39_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 23:25:03.960'),
(1858, 51, 'sess_51_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 17:03:42.502'),
(1859, 38, 'sess_38_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-23 17:33:37.433'),
(1860, 33, 'sess_33_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 12:27:18.628'),
(1861, 69, 'sess_69_1780402719735', 'product_view', '{\"productId\":5,\"productName\":\"Mực Khô Câu Phú Quốc\",\"price\":55.99,\"category\":\"Gia vị Việt\"}', '/shop', NULL, 'desktop', '2026-05-28 11:54:55.414'),
(1862, 57, 'sess_57_1780402719735', 'product_view', '{\"productId\":38,\"productName\":\"Dứa Sấy Dẻo Tiền Giang\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 10:00:43.665'),
(1863, 59, 'sess_59_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 13:51:10.821'),
(1864, 63, 'sess_63_1780402719735', 'add_to_cart', '{\"productId\":18,\"productName\":\"Khô Cá Chạch Đồng\",\"price\":18.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 05:38:18.977'),
(1865, 50, 'sess_50_1780402719735', 'add_to_cart', '{\"productId\":43,\"productName\":\"Sapoche Sấy Dẻo Bình Thuận\",\"price\":13.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 00:14:31.861'),
(1866, 30, 'sess_30_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 19:01:40.670'),
(1867, 26, 'sess_26_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 08:36:52.661'),
(1868, 53, 'sess_53_1780402719735', 'product_view', '{\"productId\":45,\"productName\":\"Dừa Sấy Bến Tre\",\"price\":9.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 22:59:57.624'),
(1869, 37, 'sess_37_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-01 10:43:43.610'),
(1870, 47, 'sess_47_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 11:36:44.026'),
(1871, 56, 'sess_56_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 08:21:25.250'),
(1872, 51, 'sess_51_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-26 14:53:26.521'),
(1873, 65, 'sess_65_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 15:50:03.310'),
(1874, 24, 'sess_24_1780402719735', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-26 17:25:47.805'),
(1875, 22, 'sess_22_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 06:11:07.500'),
(1876, 54, 'sess_54_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 22:30:08.976'),
(1877, 68, 'sess_68_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-06-01 23:11:22.528'),
(1878, 30, 'sess_30_1780402719735', 'product_view', '{\"productId\":31,\"productName\":\"Mực Khô Một Nắng Kiên Giang\",\"price\":48.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-31 16:25:59.801'),
(1879, 67, 'sess_67_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-24 12:43:50.607'),
(1880, 45, 'sess_45_1780402719735', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-29 02:18:00.786'),
(1881, 29, 'sess_29_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 19:10:01.029'),
(1882, 57, 'sess_57_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-26 16:01:33.087'),
(1883, 24, 'sess_24_1780402719735', 'add_to_cart', '{\"productId\":1,\"productName\":\"Cá Lóc Khô Đồng Tháp\",\"price\":25.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-27 17:20:37.764'),
(1884, 52, 'sess_52_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 14:59:33.456'),
(1885, 57, 'sess_57_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 05:53:02.670'),
(1886, 36, 'sess_36_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 04:51:50.909'),
(1887, 26, 'sess_26_1780402719735', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-24 20:08:24.229'),
(1888, 59, 'sess_59_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 14:03:20.958'),
(1889, 62, 'sess_62_1780402719735', 'product_view', '{\"productId\":12,\"productName\":\"Bánh Tráng Mè Tây Ninh\",\"price\":6.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 02:26:03.937'),
(1890, 60, 'sess_60_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-26 16:32:43.777'),
(1891, 25, 'sess_25_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 16:35:56.017'),
(1892, 27, 'sess_27_1780402719735', 'add_to_cart', '{\"productId\":14,\"productName\":\"Muối Tôm Tây Ninh\",\"price\":9.99,\"category\":\"Gạo & Nông sản\"}', '/shop', NULL, 'desktop', '2026-05-27 15:26:49.567'),
(1893, 40, 'sess_40_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 03:20:55.480'),
(1894, 32, 'sess_32_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-23 20:47:02.561'),
(1895, 47, 'sess_47_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 06:01:50.320'),
(1896, 49, 'sess_49_1780402719735', 'add_to_cart', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 05:57:17.417'),
(1897, 68, 'sess_68_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-27 19:13:57.208'),
(1898, 41, 'sess_41_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-24 02:57:44.290'),
(1899, 31, 'sess_31_1780402719735', 'add_to_cart', '{\"productId\":48,\"productName\":\"Trà Ổi Đào Mộc Châu\",\"price\":12.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-02 10:52:03.001'),
(1900, 24, 'sess_24_1780402719735', 'product_view', '{\"productId\":26,\"productName\":\"Khô Cá Basa Châu Đốc\",\"price\":17.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 16:29:34.943'),
(1901, 42, 'sess_42_1780402719735', 'add_to_cart', '{\"productId\":32,\"productName\":\"Ghẹ Rang Muối Vũng Tàu\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-02 06:57:38.607'),
(1902, 55, 'sess_55_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 19:53:54.434'),
(1903, 61, 'sess_61_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 05:55:47.585'),
(1904, 35, 'sess_35_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 01:58:13.911'),
(1905, 36, 'sess_36_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 08:32:37.217'),
(1906, 34, 'sess_34_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-26 17:33:23.478'),
(1907, 71, 'sess_71_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 18:26:40.852'),
(1908, 53, 'sess_53_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 12:28:33.501'),
(1909, 42, 'sess_42_1780402719735', 'product_view', '{\"productId\":42,\"productName\":\"Ổi Sấy Giòn Long An\",\"price\":8.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-26 19:27:47.664'),
(1910, 44, 'sess_44_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-28 23:45:05.177'),
(1911, 29, 'sess_29_1780402719735', 'add_to_cart', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-02 06:02:25.097'),
(1912, 53, 'sess_53_1780402719735', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 07:16:29.769'),
(1913, 42, 'sess_42_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-25 18:07:46.901'),
(1914, 54, 'sess_54_1780402719735', 'add_to_cart', '{\"productId\":41,\"productName\":\"Mận Sấy Bắc Hà\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 21:27:51.140'),
(1915, 34, 'sess_34_1780402719735', 'search_query', '{\"query\":\"quà biếu\"}', '/shop', NULL, 'desktop', '2026-05-23 21:59:40.770'),
(1916, 60, 'sess_60_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 10:10:54.660'),
(1917, 46, 'sess_46_1780402719735', 'search_query', '{\"query\":\"khô cá\"}', '/shop', NULL, 'desktop', '2026-05-30 03:10:12.021'),
(1918, 69, 'sess_69_1780402719735', 'add_to_cart', '{\"productId\":30,\"productName\":\"Mực Rim Cay Nha Trang\",\"price\":22.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-02 04:52:36.811'),
(1919, 52, 'sess_52_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-06-02 08:54:54.573'),
(1920, 34, 'sess_34_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-30 01:14:55.539'),
(1921, 68, 'sess_68_1780402719735', 'search_query', '{\"query\":\"mực\"}', '/shop', NULL, 'desktop', '2026-05-25 02:14:46.188'),
(1922, 23, 'sess_23_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-29 02:05:14.213'),
(1923, 42, 'sess_42_1780402719735', 'product_view', '{\"productId\":28,\"productName\":\"Tôm Đất Khô Bạc Liêu\",\"price\":28.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-30 10:42:24.167'),
(1924, 47, 'sess_47_1780402719735', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":19.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-23 13:28:23.502'),
(1925, 57, 'sess_57_1780402719735', 'add_to_cart', '{\"productId\":20,\"productName\":\"Khô Cá Cơm Phan Thiết\",\"price\":12.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-25 22:48:03.744'),
(1926, 48, 'sess_48_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 14:57:03.557'),
(1927, 38, 'sess_38_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 05:13:56.532'),
(1928, 47, 'sess_47_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-24 01:05:26.929'),
(1929, 31, 'sess_31_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 00:49:22.584'),
(1930, 39, 'sess_39_1780402719735', 'product_view', '{\"productId\":36,\"productName\":\"Ruốc Tôm Khô Huế\",\"price\":18.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-06-01 23:32:19.593'),
(1931, 26, 'sess_26_1780402719735', 'search_query', '{\"query\":\"trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-06-01 05:24:15.521'),
(1932, 42, 'sess_42_1780402719735', 'product_view', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 12:50:00.284'),
(1933, 61, 'sess_61_1780402719735', 'add_to_cart', '{\"productId\":17,\"productName\":\"Khô Cá Kèo Cà Mau\",\"price\":22.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-28 03:06:31.904'),
(1934, 61, 'sess_61_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-31 09:16:13.922'),
(1935, 61, 'sess_61_1780402719735', 'add_to_cart', '{\"productId\":39,\"productName\":\"Vải Sấy Khô Lục Ngạn\",\"price\":14.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-23 23:29:46.705'),
(1936, 31, 'sess_31_1780402719735', 'product_view', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 06:05:24.443'),
(1937, 33, 'sess_33_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-25 21:04:00.142'),
(1938, 44, 'sess_44_1780402719735', 'product_view', '{\"productId\":22,\"productName\":\"Khô Cá Ngát Sông Tiền\",\"price\":28.99,\"category\":\"Cá khô\"}', '/shop', NULL, 'desktop', '2026-05-29 09:21:48.995'),
(1939, 63, 'sess_63_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-26 21:22:14.367'),
(1940, 69, 'sess_69_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-02 07:39:22.472'),
(1941, 68, 'sess_68_1780402719735', 'product_view', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-27 18:51:40.722'),
(1942, 37, 'sess_37_1780402719735', 'add_to_cart', '{\"productId\":49,\"productName\":\"Trà Atiso Đà Lạt\",\"price\":15.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-05-24 13:24:45.689'),
(1943, 38, 'sess_38_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 20:35:44.203'),
(1944, 30, 'sess_30_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-27 06:14:12.486'),
(1945, 23, 'sess_23_1780402719735', 'add_to_cart', '{\"productId\":50,\"productName\":\"Trà Hoa Cúc La Mã\",\"price\":14.99,\"category\":\"Trà & Bánh mứt\"}', '/shop', NULL, 'desktop', '2026-06-01 22:58:06.103'),
(1946, 39, 'sess_39_1780402719735', 'add_to_cart', '{\"productId\":29,\"productName\":\"Tép Khô Đồng Tháp\",\"price\":15.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-28 03:01:08.887'),
(1947, 34, 'sess_34_1780402719735', 'product_view', '{\"productId\":44,\"productName\":\"Thanh Long Sấy Dẻo Bình Thuận\",\"price\":11.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-29 00:58:23.919'),
(1948, 61, 'sess_61_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-30 15:09:04.992'),
(1949, 56, 'sess_56_1780402719735', 'search_query', '{\"query\":\"đặc sản\"}', '/shop', NULL, 'desktop', '2026-05-29 18:14:39.924'),
(1950, 66, 'sess_66_1780402719735', 'add_to_cart', '{\"productId\":32,\"productName\":\"Ghẹ Rang Muối Vũng Tàu\",\"price\":32.99,\"category\":\"Tôm & Mực khô\"}', '/shop', NULL, 'desktop', '2026-05-27 17:00:11.447'),
(1951, 51, 'sess_51_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-30 21:50:15.978'),
(1952, 43, 'sess_43_1780402719735', 'add_to_cart', '{\"productId\":46,\"productName\":\"Sầu Riêng Sấy Khô Cái Mơn\",\"price\":24.99,\"category\":\"Trái cây sấy\"}', '/shop', NULL, 'desktop', '2026-05-24 11:48:02.548'),
(1953, 53, 'sess_53_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-06-01 11:43:05.853'),
(1954, 33, 'sess_33_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-25 01:55:17.004'),
(1955, 65, 'sess_65_1780402719735', 'page_view', NULL, '/shop', NULL, 'desktop', '2026-05-26 13:13:10.940'),
(1956, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/admin/ai', 'desktop', '2026-06-02 13:28:27.944'),
(1957, 1, 's_mpwgnjw8_068loda', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/admin/ai', 'desktop', '2026-06-02 13:28:27.949'),
(1958, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/admin/ai', 'desktop', '2026-06-02 13:28:27.955'),
(1959, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/admin/ai', 'desktop', '2026-06-02 13:29:21.982'),
(1960, 1, 's_mpwgnjw8_068loda', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/admin/ai', 'desktop', '2026-06-02 13:29:21.990'),
(1961, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/admin/ai', 'desktop', '2026-06-02 13:29:21.994'),
(1962, NULL, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-02 13:30:40.972'),
(1963, NULL, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-02 13:34:37.363'),
(1964, NULL, 's_mpwgnjw8_068loda', 'product_click', '{\"productId\":81,\"productName\":\"Khô Heo Mật Ong Năm Cung\",\"category\":\"Đồ ăn vặt\",\"position\":0}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-02 13:35:01.700'),
(1965, NULL, 's_mpwgnjw8_068loda', 'product_view', '{\"productId\":81,\"productName\":\"Khô Heo Mật Ong Năm Cung\",\"category\":\"Đồ ăn vặt\",\"price\":17.99,\"pageUrl\":\"http://localhost:3000/products/kho-heo-mat-ong-nam-cung\"}', 'http://localhost:3000/products/kho-heo-mat-ong-nam-cung', NULL, 'desktop', '2026-06-02 13:35:05.767'),
(1966, NULL, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products/kho-heo-mat-ong-nam-cung\"}', 'http://localhost:3000/products/kho-heo-mat-ong-nam-cung', NULL, 'desktop', '2026-06-02 13:35:05.773'),
(1967, NULL, 's_mpwgnjw8_068loda', 'product_view', '{\"productId\":81,\"productName\":\"Khô Heo Mật Ong Năm Cung\",\"category\":\"Đồ ăn vặt\",\"price\":17.99,\"pageUrl\":\"http://localhost:3000/products/kho-heo-mat-ong-nam-cung\"}', 'http://localhost:3000/products/kho-heo-mat-ong-nam-cung', NULL, 'desktop', '2026-06-02 13:35:05.778'),
(1968, NULL, 's_mpwgnjw8_068loda', 'page_view', '{\"productId\":81,\"productName\":\"Khô Heo Mật Ong Năm Cung\",\"category\":\"Đồ ăn vặt\",\"durationSeconds\":5,\"type\":\"product_detail_duration\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-02 13:35:10.493'),
(1969, NULL, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-02 13:35:10.614'),
(1970, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-02 13:35:21.808'),
(1971, 1, 's_mpwgnjw8_068loda', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-02 13:35:21.812'),
(1972, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-02 13:35:21.818'),
(1973, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-02 13:35:41.491'),
(1974, 1, 's_mpwgnjw8_068loda', 'begin_checkout', '{\"cartValue\":13.99,\"itemCount\":1,\"products\":[{\"id\":\"115\",\"name\":\"Ruốc (Chà Bông) Heo Sài Gòn\",\"price\":13.99,\"quantity\":1}]}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-02 13:35:48.500'),
(1975, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-02 13:37:55.918'),
(1976, 1, 's_mpwgnjw8_068loda', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-02 13:37:55.924'),
(1977, 1, 's_mpwgnjw8_068loda', 'begin_checkout', '{\"cartValue\":13.99,\"itemCount\":1,\"products\":[{\"id\":\"115\",\"name\":\"Ruốc (Chà Bông) Heo Sài Gòn\",\"price\":13.99,\"quantity\":1}]}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-02 13:38:02.428'),
(1978, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/mbbank-payment?orderId=183\"}', 'http://localhost:3000/mbbank-payment?orderId=183', 'http://localhost:3000/checkout', 'desktop', '2026-06-02 13:38:05.459'),
(1979, 1, 's_mpwgnjw8_068loda', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/mbbank-payment?orderId=183', 'http://localhost:3000/checkout', 'desktop', '2026-06-02 13:38:05.465'),
(1980, 1, 's_mpwgnjw8_068loda', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/checkout', 'desktop', '2026-06-02 13:39:00.292'),
(1981, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-03 04:26:30.903'),
(1982, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-03 04:26:33.392'),
(1983, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/posts\"}', 'http://localhost:3000/posts', NULL, 'desktop', '2026-06-03 04:26:57.927'),
(1984, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-03 04:27:04.885'),
(1985, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:30:17.910'),
(1986, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:30:17.913'),
(1987, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:31:03.447'),
(1988, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:31:03.451'),
(1989, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products\"}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:40:41.817'),
(1990, 1, 's_mpxkdsp7_b51l7ix', 'product_click', '{\"productId\":114,\"productName\":\"Bánh Xèo Bột Pha Sẵn Miền Tây\",\"category\":\"Đặc sản vùng miền\",\"position\":0}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:40:44.185'),
(1991, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products/banh-xeo-bot-pha-san-mien-tay\"}', 'http://localhost:3000/products/banh-xeo-bot-pha-san-mien-tay', 'http://localhost:3000/', 'desktop', '2026-06-03 04:40:44.190'),
(1992, 1, 's_mpxkdsp7_b51l7ix', 'product_view', '{\"productId\":114,\"productName\":\"Bánh Xèo Bột Pha Sẵn Miền Tây\",\"category\":\"Đặc sản vùng miền\",\"price\":9.99,\"pageUrl\":\"http://localhost:3000/products/banh-xeo-bot-pha-san-mien-tay\"}', 'http://localhost:3000/products/banh-xeo-bot-pha-san-mien-tay', 'http://localhost:3000/', 'desktop', '2026-06-03 04:40:44.194'),
(1993, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"productId\":114,\"productName\":\"Bánh Xèo Bột Pha Sẵn Miền Tây\",\"category\":\"Đặc sản vùng miền\",\"durationSeconds\":12,\"type\":\"product_detail_duration\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:40:57.452'),
(1994, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:40:57.456'),
(1995, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/vouchers\"}', 'http://localhost:3000/vouchers', 'http://localhost:3000/', 'desktop', '2026-06-03 04:41:08.057'),
(1996, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:41:51.927'),
(1997, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:41:51.930');
INSERT INTO `su_kien_hanh_vi` (`ma_su_kien`, `ma_nguoi_dung`, `ma_phien_lam_viec`, `loai_su_kien`, `du_lieu_su_kien`, `duong_dan_url`, `nguon_truy_cap`, `loai_thiet_bi`, `ngay_tao`) VALUES
(1998, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:41:51.933'),
(1999, NULL, 's_mpxkdsp7_b51l7ix', 'chatbot_message', '{\"message\":\"tôi cần tìm cá khô\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Dạ, bên em có hai loại cá khô bán chạy là:\\n\\n1. [Cá Cơm Rang Muối Ớt](https://likefood.com/product/ca-com-rang-muoi-ot) — **$9.99** (-20%) ⚡SALE $7.99\\n2. [Khô Cá Ngát Sông Tiền](https://likefood.com/product/kho-ca-ngat-song-tien) — **$28.99** (-20%) ⚡SALE $23.19\\n\\nBạn muốn tìm hiểu thêm về sản phẩm nào không ạ?\"}', NULL, NULL, 'desktop', '2026-06-03 04:43:13.474'),
(2000, NULL, 's_mpxkdsp7_b51l7ix', 'chatbot_message', '{\"message\":\"cá khô ngát sông tiền\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Dạ, bên em có sản phẩm [Khô Cá Ngát Sông Tiền](https://likefood.com/product/kho-ca-ngat-song-tien) — **$28.99** (-20%) ⚡SALE $23.19. Đây là đặc sản sông Tiền, thịt cá dày, vị ngọt thanh, thích hợp làm gỏi hoặc nướng. Bạn muốn đặt hàng hay cần thêm thông tin gì không ạ?\"}', NULL, NULL, 'desktop', '2026-06-03 04:43:27.127'),
(2001, 1, 's_mpxkdsp7_b51l7ix', 'search_result_click', '{\"query\":\"cá khô\",\"productId\":2,\"position\":0}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:08.656'),
(2002, 1, 's_mpxkdsp7_b51l7ix', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"price\":15.99,\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:08.660'),
(2003, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:08.663'),
(2004, 1, 's_mpxkdsp7_b51l7ix', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"price\":15.99,\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:08.665'),
(2005, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"durationSeconds\":14,\"type\":\"product_detail_duration\"}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:23.270'),
(2006, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products\"}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:23.273'),
(2007, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/about\"}', 'http://localhost:3000/about', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:34.487'),
(2008, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/flash-sale\"}', 'http://localhost:3000/flash-sale', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:42.037'),
(2009, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/vouchers\"}', 'http://localhost:3000/vouchers', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:50.780'),
(2010, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/posts\"}', 'http://localhost:3000/posts', 'http://localhost:3000/', 'desktop', '2026-06-03 04:44:57.644'),
(2011, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/profile/referrals\"}', 'http://localhost:3000/profile/referrals', 'http://localhost:3000/', 'desktop', '2026-06-03 04:45:10.172'),
(2012, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:45:41.672'),
(2013, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/profile\"}', 'http://localhost:3000/profile', 'http://localhost:3000/', 'desktop', '2026-06-03 04:45:52.112'),
(2014, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products\"}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:45:55.881'),
(2015, 1, 's_mpxkdsp7_b51l7ix', 'add_to_cart', '{\"productId\":115,\"productName\":\"Ruốc (Chà Bông) Heo Sài Gòn\",\"quantity\":1,\"price\":13.99,\"category\":\"unknown\",\"cartValue\":13.99}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:45:55.885'),
(2016, 1, 's_mpxkdsp7_b51l7ix', 'add_to_wishlist', '{\"productId\":115,\"productName\":\"product_115\"}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:45:59.196'),
(2017, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:03.165'),
(2018, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products\"}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:19.771'),
(2019, 1, 's_mpxkdsp7_b51l7ix', 'add_to_cart', '{\"productId\":114,\"productName\":\"Bánh Xèo Bột Pha Sẵn Miền Tây\",\"quantity\":1,\"price\":9.99,\"category\":\"unknown\",\"cartValue\":9.99}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:19.775'),
(2020, 1, 's_mpxkdsp7_b51l7ix', 'add_to_cart', '{\"productId\":113,\"productName\":\"Lạp Xưởng Tươi Cần Thơ\",\"quantity\":1,\"price\":21.99,\"category\":\"unknown\",\"cartValue\":21.99}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:22.719'),
(2021, 1, 's_mpxkdsp7_b51l7ix', 'add_to_cart', '{\"productId\":112,\"productName\":\"Mắm Bò Hóc Khmer Trà Vinh\",\"quantity\":1,\"price\":18.99,\"category\":\"unknown\",\"cartValue\":18.99}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:22.722'),
(2022, 1, 's_mpxkdsp7_b51l7ix', 'add_to_cart', '{\"productId\":110,\"productName\":\"Thịt Lợn Sấy Khô Sơn La\",\"quantity\":1,\"price\":28.99,\"category\":\"unknown\",\"cartValue\":28.99}', 'http://localhost:3000/products', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:25.561'),
(2023, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:29.560'),
(2024, 1, 's_mpxkdsp7_b51l7ix', 'begin_checkout', '{\"cartValue\":151.93,\"itemCount\":5,\"products\":[{\"id\":\"115\",\"name\":\"Ruốc (Chà Bông) Heo Sài Gòn\",\"price\":13.99,\"quantity\":1},{\"id\":\"114\",\"name\":\"Bánh Xèo Bột Pha Sẵn Miền Tây\",\"price\":9.99,\"quantity\":1},{\"id\":\"113\",\"name\":\"Lạp Xưởng Tươi Cần Thơ\",\"price\":21.99,\"quantity\":1},{\"id\":\"112\",\"name\":\"Mắm Bò Hóc Khmer Trà Vinh\",\"price\":18.99,\"quantity\":1},{\"id\":\"110\",\"name\":\"Thịt Lợn Sấy Khô Sơn La\",\"price\":28.99,\"quantity\":3}]}', 'http://localhost:3000/checkout', 'http://localhost:3000/', 'desktop', '2026-06-03 04:46:47.213'),
(2025, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-03 04:47:03.799'),
(2026, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-03 04:47:03.802'),
(2027, 1, 's_mpxkdsp7_b51l7ix', 'begin_checkout', '{\"cartValue\":151.93,\"itemCount\":5,\"products\":[{\"id\":\"115\",\"name\":\"Ruốc (Chà Bông) Heo Sài Gòn\",\"price\":13.99,\"quantity\":1},{\"id\":\"114\",\"name\":\"Bánh Xèo Bột Pha Sẵn Miền Tây\",\"price\":9.99,\"quantity\":1},{\"id\":\"113\",\"name\":\"Lạp Xưởng Tươi Cần Thơ\",\"price\":21.99,\"quantity\":1},{\"id\":\"112\",\"name\":\"Mắm Bò Hóc Khmer Trà Vinh\",\"price\":18.99,\"quantity\":1},{\"id\":\"110\",\"name\":\"Thịt Lợn Sấy Khô Sơn La\",\"price\":28.99,\"quantity\":3}]}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-03 04:47:07.566'),
(2028, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/mbbank-payment?orderId=184\"}', 'http://localhost:3000/mbbank-payment?orderId=184', 'http://localhost:3000/checkout', 'desktop', '2026-06-03 04:47:09.991'),
(2029, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/mbbank-payment?orderId=184', 'http://localhost:3000/checkout', 'desktop', '2026-06-03 04:47:09.996'),
(2030, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/profile/wishlist\"}', 'http://localhost:3000/profile/wishlist', 'http://localhost:3000/checkout', 'desktop', '2026-06-03 04:47:29.281'),
(2031, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/profile/orders\"}', 'http://localhost:3000/profile/orders', 'http://localhost:3000/checkout', 'desktop', '2026-06-03 04:47:40.507'),
(2032, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-03 04:53:47.694'),
(2033, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-03 04:53:47.700'),
(2034, NULL, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:53:55.436'),
(2035, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:55:24.987'),
(2036, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:55:24.990'),
(2037, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 04:55:24.993'),
(2038, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 05:11:03.564'),
(2039, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 05:11:12.170'),
(2040, 1, 's_mpxkdsp7_b51l7ix', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 05:11:13.756'),
(2041, 1, 's_mpxkdsp7_b51l7ix', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-03 05:11:13.759'),
(2042, 1, 's_mpz6lbxp_daax4ld', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:36:00.497'),
(2043, 1, 's_mpz6lbxp_daax4ld', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:36:03.185'),
(2044, 1, 's_mpz6lbxp_daax4ld', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'mobile', '2026-06-04 07:36:21.539'),
(2045, 1, 's_mpz6lbxp_daax4ld', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'mobile', '2026-06-04 07:36:21.544'),
(2046, 1, 's_mpz6lbxp_daax4ld', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:36:23.584'),
(2047, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:37:02.190'),
(2048, 1, 's_mpz6mnt3_yg7p37i', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:37:02.195'),
(2049, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products\"}', 'http://localhost:3000/products', NULL, 'desktop', '2026-06-04 07:37:32.704'),
(2050, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/about\"}', 'http://localhost:3000/about', NULL, 'desktop', '2026-06-04 07:37:36.344'),
(2051, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/flash-sale\"}', 'http://localhost:3000/flash-sale', NULL, 'desktop', '2026-06-04 07:37:36.348'),
(2052, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/vouchers\"}', 'http://localhost:3000/vouchers', NULL, 'desktop', '2026-06-04 07:37:40.005'),
(2053, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/posts\"}', 'http://localhost:3000/posts', NULL, 'desktop', '2026-06-04 07:37:40.128'),
(2054, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/vouchers\"}', 'http://localhost:3000/vouchers', NULL, 'desktop', '2026-06-04 07:37:42.316'),
(2055, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/posts\"}', 'http://localhost:3000/posts', NULL, 'desktop', '2026-06-04 07:37:46.451'),
(2056, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/faq\"}', 'http://localhost:3000/faq', NULL, 'desktop', '2026-06-04 07:37:55.438'),
(2057, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/contact\"}', 'http://localhost:3000/contact', NULL, 'desktop', '2026-06-04 07:38:03.523'),
(2058, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/contact\"}', 'http://localhost:3000/contact', NULL, 'desktop', '2026-06-04 07:38:15.334'),
(2059, 1, 's_mpz6mnt3_yg7p37i', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/contact', NULL, 'desktop', '2026-06-04 07:38:15.337'),
(2060, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/contact\"}', 'http://localhost:3000/contact', NULL, 'desktop', '2026-06-04 07:38:15.340'),
(2061, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:44:36.756'),
(2062, NULL, 's_mpz6mnt3_yg7p37i', 'chatbot_message', '{\"message\":\"cá heo có không\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Dạ hiện tại bên em chưa có thông tin về sản phẩm cá heo này. Anh/chị có muốn tham khảo các đặc sản bán chạy khác của LIKEFOOD không ạ?\"}', NULL, NULL, 'desktop', '2026-06-04 07:55:30.439'),
(2063, NULL, 's_mpz6mnt3_yg7p37i', 'chatbot_message', '{\"message\":\"cá khô\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Mình có hai loại cá khô rất được ưa chuộng:\\n\\n1. **Cá Cơm Rang Muối Ớt** 🏭LIKEFOOD — **$9.99** (-20%) ⚡SALE $7.99 [Link sản phẩm](https://likefood.com/product/ca-com-rang-muoi-ot)\\n2. **Khô Cá Ngát Sông Tiền** 🏭Đặc Sản Huế — **$28.99** (-20%) ⚡SALE $23.19 [Link sản phẩm](https://likefood.com/product/kho-ca-ngat-song-tien)\\n\\nBạn có muốn biết thêm thông tin về một trong hai sản phẩm này không ạ? 😊\"}', NULL, NULL, 'desktop', '2026-06-04 07:55:43.146'),
(2064, NULL, 's_mpz6mnt3_yg7p37i', 'chatbot_message', '{\"message\":\"cá nào ngon nhất\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Mình có hai loại cá rất ngon mà bạn có thể tham khảo:\\n\\n1. **Khô Cá Ngát Sông Tiền** 🏭Đặc Sản Huế — **$28.99** (-20%) ⚡SALE $23.19 [Link sản phẩm](https://likefood.com/product/kho-ca-ngat-song-tien)\\n2. **Khô Cá Sặc Bổi Cà Mau** 🏭Đặc Sản Quê Hương — **$19.99** (-20%) ⚡SALE $15.99 [Link sản phẩm](https://likefood.com/product/kho-ca-sac-boi-ca-mau)\\n\\nBạn muốn biết thêm về một trong hai sản phẩm này không ạ? 😊\"}', NULL, NULL, 'desktop', '2026-06-04 07:55:50.686'),
(2065, NULL, 's_mpz6mnt3_yg7p37i', 'chatbot_message', '{\"message\":\"Khô Cá Ngát Sông Tiền\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Khô Cá Ngát Sông Tiền là đặc sản Huế nổi tiếng, có thịt dày, vị ngọt thanh. Giá hiện tại là **$28.99** (-20%) và đang có chương trình giảm giá chỉ còn **$23.19**. Bạn có muốn thêm thông tin hoặc đặt hàng không ạ? [Link sản phẩm](https://likefood.com/product/kho-ca-ngat-song-tien) 😊\"}', NULL, NULL, 'desktop', '2026-06-04 07:56:06.734'),
(2066, 1, 's_mpz7bb9z_3juokva', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:56:13.585'),
(2067, 1, 's_mpz7bb9z_3juokva', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:56:13.592'),
(2068, 1, 's_mpz7bb9z_3juokva', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 07:56:13.598'),
(2069, 1, 's_mpz7bb9z_3juokva', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 08:01:30.240'),
(2070, 1, 's_mpz7ibnx_3jqtxhf', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 08:01:39.397'),
(2071, 1, 's_mpz7ibnx_3jqtxhf', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 08:01:39.429'),
(2072, 1, 's_mpz7ibnx_3jqtxhf', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-04 08:01:42.972'),
(2073, 1, 's_mpz7ibnx_3jqtxhf', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', 'http://localhost:3000/', 'desktop', '2026-06-04 08:01:42.975'),
(2074, NULL, 's_mpz6mnt3_yg7p37i', 'chatbot_message', '{\"message\":\"Combo quà biếu\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Dạ, mình có thể gợi ý cho bạn một số combo quà biếu đặc sản như sau:\\n\\n1. **Combo Đặc Sản Miền Tây**: Bao gồm Khô Cá Sặc Bổi Cà Mau, Mứt Dừa Non Bến Tre và Đậu Phộng Da Cá Ớt Tỏi.\\n2. **Combo Trà & Bánh Mứt**: Gồm Trà Bí Đao Mật Ong, Chè Khô Sen Long An và Trà Hoa Cúc La Mã.\\n\\nBạn có muốn tìm hiểu thêm về một combo cụ thể không ạ? 😊\"}', NULL, NULL, 'desktop', '2026-06-04 08:15:09.748'),
(2075, NULL, 's_mpz6mnt3_yg7p37i', 'chatbot_message', '{\"message\":\"có cá khô không\",\"intent\":\"AI_CHAT_ULTIMATE\",\"response\":\"Dạ, bên em có nhiều loại cá khô ạ! Một số sản phẩm nổi bật như **Khô Cá Ngát Sông Tiền** giá $23.19 và **Khô Cá Sặc Bổi Cà Mau** giá $15.99. Bạn có muốn tìm hiểu thêm về một sản phẩm cụ thể không ạ? 😊\"}', NULL, NULL, 'desktop', '2026-06-04 08:15:19.171'),
(2076, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products\"}', 'http://localhost:3000/products', NULL, 'desktop', '2026-06-04 08:15:51.636'),
(2077, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/about\"}', 'http://localhost:3000/about', NULL, 'desktop', '2026-06-04 08:16:01.973'),
(2078, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/flash-sale\"}', 'http://localhost:3000/flash-sale', NULL, 'desktop', '2026-06-04 08:16:05.433'),
(2079, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/vouchers\"}', 'http://localhost:3000/vouchers', NULL, 'desktop', '2026-06-04 08:16:15.691'),
(2080, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/profile/referrals\"}', 'http://localhost:3000/profile/referrals', NULL, 'desktop', '2026-06-04 08:16:37.915'),
(2081, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/contact\"}', 'http://localhost:3000/contact', NULL, 'desktop', '2026-06-04 08:16:56.335'),
(2082, 1, 's_mpz6mnt3_yg7p37i', 'search_result_click', '{\"query\":\" cá khô\",\"productId\":2,\"position\":0}', 'http://localhost:3000/contact', NULL, 'desktop', '2026-06-04 08:17:02.913'),
(2083, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', NULL, 'desktop', '2026-06-04 08:17:02.916'),
(2084, 1, 's_mpz6mnt3_yg7p37i', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"price\":15.99,\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', NULL, 'desktop', '2026-06-04 08:17:02.919'),
(2085, 1, 's_mpz6mnt3_yg7p37i', 'search_result_click', '{\"query\":\"cá k\",\"productId\":2,\"position\":0}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', NULL, 'desktop', '2026-06-04 08:17:23.700'),
(2086, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"durationSeconds\":33,\"type\":\"product_detail_duration\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 08:17:37.187'),
(2087, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 08:17:37.196'),
(2088, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/profile/orders\"}', 'http://localhost:3000/profile/orders', NULL, 'desktop', '2026-06-04 08:17:51.127'),
(2089, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/profile\"}', 'http://localhost:3000/profile', NULL, 'desktop', '2026-06-04 08:17:57.207'),
(2090, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 08:23:19.933'),
(2091, 1, 's_mpz6mnt3_yg7p37i', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-04 08:23:19.937'),
(2092, 1, 's_mpz6mnt3_yg7p37i', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"price\":15.99,\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', NULL, 'desktop', '2026-06-04 08:23:24.388'),
(2093, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', NULL, 'desktop', '2026-06-04 08:23:24.393'),
(2094, 1, 's_mpz6mnt3_yg7p37i', 'product_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"price\":15.99,\"pageUrl\":\"http://localhost:3000/products/kho-ca-sac-boi-ca-mau\"}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', NULL, 'desktop', '2026-06-04 08:23:24.395'),
(2095, 1, 's_mpz6mnt3_yg7p37i', 'add_to_cart', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"quantity\":1,\"price\":15.99,\"category\":\"Tôm & Mực khô\",\"cartValue\":15.99}', 'http://localhost:3000/products/kho-ca-sac-boi-ca-mau', NULL, 'desktop', '2026-06-04 08:23:24.397'),
(2096, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"productId\":2,\"productName\":\"Khô Cá Sặc Bổi Cà Mau\",\"category\":\"Tôm & Mực khô\",\"durationSeconds\":24,\"type\":\"product_detail_duration\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-04 08:23:48.665'),
(2097, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-04 08:23:48.672'),
(2098, 1, 's_mpz6mnt3_yg7p37i', 'begin_checkout', '{\"cartValue\":15.99,\"itemCount\":1,\"products\":[{\"id\":\"2\",\"name\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":15.99,\"quantity\":1}]}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-04 08:23:54.616'),
(2099, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/checkout\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-04 08:24:04.644'),
(2100, 1, 's_mpz6mnt3_yg7p37i', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-04 08:24:04.647'),
(2101, 1, 's_mpz6mnt3_yg7p37i', 'begin_checkout', '{\"cartValue\":15.99,\"itemCount\":1,\"products\":[{\"id\":\"2\",\"name\":\"Khô Cá Sặc Bổi Cà Mau\",\"price\":15.99,\"quantity\":1}]}', 'http://localhost:3000/checkout', NULL, 'desktop', '2026-06-04 08:24:08.780'),
(2102, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/mbbank-payment?orderId=185\"}', 'http://localhost:3000/mbbank-payment?orderId=185', 'http://localhost:3000/checkout', 'desktop', '2026-06-04 08:24:11.420'),
(2103, 1, 's_mpz6mnt3_yg7p37i', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/mbbank-payment?orderId=185', 'http://localhost:3000/checkout', 'desktop', '2026-06-04 08:24:11.425'),
(2104, 1, 's_mpz6mnt3_yg7p37i', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', 'http://localhost:3000/checkout', 'desktop', '2026-06-04 08:24:24.280'),
(2105, 1, 's_mq0jt7n7_uftut04', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-05 06:33:50.130'),
(2106, 1, 's_mq0jt7n7_uftut04', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-05 06:33:52.209'),
(2107, 1, 's_mq9itl47_ym4l19b', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-11 13:16:13.524'),
(2108, 1, 's_mq9itl47_ym4l19b', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-11 13:16:15.866'),
(2109, 1, 's_mq9iy310_t77khqw', 'page_view', '{\"pageUrl\":\"http://localhost:3000/\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-11 13:19:33.330'),
(2110, 1, 's_mq9iy310_t77khqw', 'login', '{\"method\":\"session\"}', 'http://localhost:3000/', NULL, 'desktop', '2026-06-11 13:19:36.921');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_bao`
--

CREATE TABLE `thong_bao` (
  `ma_thong_bao` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `loai_thong_bao` varchar(191) NOT NULL,
  `tieu_de` varchar(191) NOT NULL,
  `noi_dung` text NOT NULL,
  `duong_dan` varchar(191) DEFAULT NULL,
  `da_doc` tinyint(1) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_bao`
--

INSERT INTO `thong_bao` (`ma_thong_bao`, `ma_nguoi_dung`, `loai_thong_bao`, `tieu_de`, `noi_dung`, `duong_dan`, `da_doc`, `ngay_tao`) VALUES
(1, 1, 'order', 'Đơn hàng đã xác nhận', 'Đơn hàng #3 đã được xác nhận và đang chuẩn bị.', '/profile/orders', 0, '2026-05-31 09:27:14.699'),
(2, 22, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.029'),
(3, 22, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.029'),
(4, 22, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.029'),
(5, 23, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.040'),
(6, 23, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.040'),
(7, 23, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.040'),
(8, 24, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.048'),
(9, 24, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.048'),
(10, 24, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.048'),
(11, 25, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.062'),
(12, 25, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.062'),
(13, 25, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.062'),
(14, 26, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.074'),
(15, 26, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.074'),
(16, 26, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.074'),
(17, 27, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.088'),
(18, 27, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.088'),
(19, 27, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.088'),
(20, 28, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.097'),
(21, 28, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.097'),
(22, 28, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.097'),
(23, 29, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.104'),
(24, 29, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.104'),
(25, 29, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.104'),
(26, 30, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.115'),
(27, 30, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.115'),
(28, 30, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.115'),
(29, 31, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.125'),
(30, 31, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.125'),
(31, 31, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.125'),
(32, 32, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.134'),
(33, 32, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.134'),
(34, 32, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.134'),
(35, 33, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.147'),
(36, 33, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.147'),
(37, 33, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.147'),
(38, 34, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.155'),
(39, 34, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.155'),
(40, 34, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.155'),
(41, 35, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.168'),
(42, 35, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.168'),
(43, 35, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.168'),
(44, 36, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.176'),
(45, 36, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.176'),
(46, 36, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.176'),
(47, 37, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.187'),
(48, 37, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.187'),
(49, 37, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.187'),
(50, 38, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.196'),
(51, 38, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.196'),
(52, 38, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.196'),
(53, 39, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.206'),
(54, 39, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.206'),
(55, 39, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.206'),
(56, 40, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.217'),
(57, 40, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.217'),
(58, 40, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.217'),
(59, 41, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.225'),
(60, 41, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.225'),
(61, 41, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.225'),
(62, 42, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.231'),
(63, 42, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.231'),
(64, 42, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.231'),
(65, 43, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.240'),
(66, 43, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.240'),
(67, 43, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.240'),
(68, 44, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.250'),
(69, 44, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.250'),
(70, 44, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.250'),
(71, 45, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.262'),
(72, 45, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.262'),
(73, 45, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.262'),
(74, 46, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.276'),
(75, 46, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.276'),
(76, 46, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.276'),
(77, 47, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.285'),
(78, 47, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.285'),
(79, 47, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.285'),
(80, 48, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.298'),
(81, 48, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.298'),
(82, 48, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.298'),
(83, 49, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.314'),
(84, 49, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.314'),
(85, 49, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.314'),
(86, 50, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.325'),
(87, 50, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.325'),
(88, 50, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.325'),
(89, 51, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.334'),
(90, 51, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.334'),
(91, 51, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.334'),
(92, 52, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.347'),
(93, 52, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.347'),
(94, 52, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.347'),
(95, 53, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.366'),
(96, 53, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.366'),
(97, 53, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.366'),
(98, 54, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.384'),
(99, 54, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.384'),
(100, 54, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.384'),
(101, 55, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.394'),
(102, 55, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.394'),
(103, 55, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.394'),
(104, 56, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.407'),
(105, 56, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.407'),
(106, 56, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.407'),
(107, 57, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.416'),
(108, 57, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.416'),
(109, 57, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.416'),
(110, 58, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.426'),
(111, 58, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.426'),
(112, 58, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.426'),
(113, 59, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.439'),
(114, 59, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.439'),
(115, 59, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.439'),
(116, 60, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.451'),
(117, 60, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.451'),
(118, 60, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.451'),
(119, 61, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.460'),
(120, 61, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.460'),
(121, 61, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.460'),
(122, 62, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.472'),
(123, 62, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.472'),
(124, 62, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.472'),
(125, 63, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.486'),
(126, 63, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.486'),
(127, 63, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.486'),
(128, 64, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.495'),
(129, 64, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.495'),
(130, 64, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.495'),
(131, 65, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.505'),
(132, 65, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.505'),
(133, 65, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.505'),
(134, 66, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.516'),
(135, 66, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.516'),
(136, 66, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.516'),
(137, 67, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.525'),
(138, 67, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.525'),
(139, 67, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.525'),
(140, 68, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.538'),
(141, 68, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.538'),
(142, 68, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.538'),
(143, 69, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.546'),
(144, 69, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.546'),
(145, 69, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.546'),
(146, 70, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.556'),
(147, 70, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.556'),
(148, 70, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.556'),
(149, 71, 'SYSTEM', 'Thông báo hệ thống 0', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.566'),
(150, 71, 'SYSTEM', 'Thông báo hệ thống 1', 'Chào mừng bạn đến với LIKEFOOD', NULL, 1, '2026-06-02 12:18:38.566'),
(151, 71, 'SYSTEM', 'Thông báo hệ thống 2', 'Chào mừng bạn đến với LIKEFOOD', NULL, 0, '2026-06-02 12:18:38.566'),
(152, 1, 'order', 'Đơn hàng hoàn thành', 'Đơn hàng #184 đã hoàn tất. Cảm ơn bạn!', '/profile/orders', 0, '2026-06-03 04:50:21.210'),
(153, 22, 'system', 'Account role updated', 'Your account role has been updated to USER.', '/profile', 0, '2026-06-03 04:51:51.245');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_so_ky_thuat`
--

CREATE TABLE `thong_so_ky_thuat` (
  `ma_thong_so` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `ten_thong_so` varchar(191) NOT NULL,
  `ten_thong_so_en` varchar(191) DEFAULT NULL,
  `gia_tri` text NOT NULL,
  `gia_tri_en` text DEFAULT NULL,
  `thu_tu_hien_thi` int(11) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuong_hieu`
--

CREATE TABLE `thuong_hieu` (
  `ma_thuong_hieu` int(11) NOT NULL,
  `ten_thuong_hieu` varchar(191) NOT NULL,
  `ten_thuong_hieu_en` varchar(191) DEFAULT NULL,
  `duong_dan_tinh` varchar(191) NOT NULL,
  `anh_logo` varchar(191) DEFAULT NULL,
  `dang_hoat_dong` tinyint(1) NOT NULL DEFAULT 1,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuong_hieu`
--

INSERT INTO `thuong_hieu` (`ma_thuong_hieu`, `ten_thuong_hieu`, `ten_thuong_hieu_en`, `duong_dan_tinh`, `anh_logo`, `dang_hoat_dong`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'LIKEFOOD', 'LIKEFOOD', 'likefood', NULL, 1, '2026-05-30 10:17:58.053', '2026-05-30 10:17:58.053'),
(2, 'Đặc Sản Quê Hương', 'Hometown Specialties', 'dac-san-que-huong', NULL, 1, '2026-05-30 10:17:58.056', '2026-05-30 10:17:58.056'),
(3, 'Phú Quốc Premium', 'Phu Quoc Premium', 'phu-quoc-premium', NULL, 1, '2026-05-30 10:17:58.058', '2026-05-30 10:17:58.058'),
(4, 'Hải Sản Miền Nam', 'Southern Seafood', 'hai-san-mien-nam', NULL, 1, '2026-05-30 10:17:58.062', '2026-05-30 10:17:58.062'),
(5, 'Nông Sản Sạch VN', 'Clean Farm VN', 'nong-san-sach-vn', NULL, 1, '2026-05-30 10:17:58.064', '2026-05-30 10:17:58.064'),
(6, 'Đặc Sản Huế', 'Hue Specialties', 'dac-san-hue', NULL, 1, '2026-05-30 10:17:58.066', '2026-05-30 10:17:58.066'),
(7, 'Mekong Foods', 'Mekong Foods', 'mekong-foods', NULL, 1, '2026-05-30 10:17:58.068', '2026-05-30 10:17:58.068');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_hieu_gian_lan_gioi_thieu`
--

CREATE TABLE `tin_hieu_gian_lan_gioi_thieu` (
  `ma_tin_hieu` int(11) NOT NULL,
  `ma_quan_he` int(11) NOT NULL,
  `loai_tin_hieu` varchar(30) NOT NULL,
  `muc_do_nghiem_trong` varchar(10) NOT NULL DEFAULT 'MEDIUM',
  `diem_gian_lan` int(11) NOT NULL DEFAULT 10,
  `chi_tiet` text DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_nhan_chat`
--

CREATE TABLE `tin_nhan_chat` (
  `ma_tin_nhan` int(11) NOT NULL,
  `ma_phien_chat` int(11) NOT NULL,
  `loai_nguoi_gui` varchar(10) NOT NULL,
  `ma_nguoi_gui` int(11) DEFAULT NULL,
  `noi_dung` text NOT NULL,
  `da_doc` tinyint(1) NOT NULL DEFAULT 0,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_nhan_chat`
--

INSERT INTO `tin_nhan_chat` (`ma_tin_nhan`, `ma_phien_chat`, `loai_nguoi_gui`, `ma_nguoi_gui`, `noi_dung`, `da_doc`, `ngay_tao`) VALUES
(7, 3, 'USER', 2, 'Xin chào, tôi muốn hỏi tôm khô Cà Mau loại 1 bên mình có đóng gói hút chân không không?', 1, '2026-05-28 19:35:51.142'),
(8, 3, 'BOT', NULL, 'Chào bạn! Tất cả hải sản khô bao gồm tôm khô Cà Mau loại 1 tại LIKEFOOD đều được hút chân không kỹ lưỡng trước khi gửi đi để bảo đảm độ ẩm và vị ngọt tự nhiên của tôm. Bạn có cần hỗ trợ gì thêm không?', 1, '2026-05-28 19:40:51.142'),
(9, 3, 'USER', 2, 'Tốt quá, tôi định mua 3kg làm quà mang đi bang khác. Có được giảm giá gì không?', 1, '2026-05-28 19:45:51.142'),
(10, 3, 'ADMIN', 1, 'Dạ em chào anh/chị. Nếu đặt mua 3kg (tức là 6 gói 500g), tổng hóa đơn sẽ trên $200, bên em sẽ miễn phí vận chuyển toàn quốc Mỹ và tặng kèm mã giảm giá 10% cho đơn hàng đầu tiên đấy ạ!', 1, '2026-05-28 19:50:51.142'),
(11, 4, 'USER', 3, 'Chào shop, tôi điền thông tin thẻ tín dụng để thanh toán đơn hàng nhưng cứ báo lỗi \'Zipcode mismatch\'. Tôi ở Texas.', 1, '2026-05-29 13:01:39.778'),
(12, 4, 'ADMIN', 1, 'Chào anh, lỗi Zipcode mismatch thường xảy ra do mã Zip code anh nhập ở trang thanh toán không trùng khớp với mã Zip đăng ký thẻ ngân hàng. Anh kiểm tra lại địa chỉ Billing address xem đã đúng chưa ạ?', 1, '2026-05-29 13:06:39.778'),
(13, 4, 'USER', 3, 'À đúng rồi, tôi mới chuyển nhà chưa kịp đổi địa chỉ đăng ký thẻ ngân hàng. Để tôi nhập địa chỉ cũ xem.', 1, '2026-05-29 13:11:39.778'),
(14, 5, 'USER', 4, 'Tôi bị mất ngủ kinh niên thì nên dùng trà hoa cúc hay trà atiso của shop tốt hơn?', 1, '2026-05-26 18:53:01.349'),
(15, 5, 'BOT', NULL, 'Chào quý khách! Đối với tình trạng mất ngủ, chúng tôi khuyên dùng Trà Hoa Cúc La Mã. Trà hoa cúc chứa apigenin có tác dụng làm dịu thần kinh, giúp dễ ngủ và ngủ sâu hơn. Còn Trà Atiso sẽ thiên về thanh nhiệt, giải độc và làm mát gan. Quý khách có thể kết hợp uống trà hoa cúc vào buổi tối trước khi ngủ 1 tiếng ạ.', 1, '2026-05-26 18:58:01.349'),
(16, 5, 'USER', 4, 'Cảm ơn tư vấn nhiệt tình, tôi sẽ đặt mua 2 hộp trà hoa cúc.', 1, '2026-05-26 19:03:01.349'),
(17, 5, 'BOT', NULL, 'Dạ rất hân hạnh được phục vụ quý khách! Chúc quý khách sớm cải thiện giấc ngủ ngon.', 1, '2026-05-26 19:08:01.349'),
(18, 6, 'USER', 5, 'Tôi muốn liên hệ hợp tác bán hàng tại siêu thị ở Virginia.', 1, '2026-05-27 22:30:46.677'),
(19, 6, 'ADMIN', 1, 'Chào anh/chị, em là admin LIKEFOOD. Anh/chị vui lòng để lại số điện thoại hoặc email liên hệ, bộ phận phát triển đại lý của bên em sẽ liên lạc gửi báo giá sỉ và mẫu thử ngay ngày mai ạ!', 1, '2026-05-27 22:35:46.677'),
(20, 6, 'USER', 5, 'Email của tôi là lienhe@virginiamart.com. Cảm ơn nhé.', 1, '2026-05-27 22:40:46.677'),
(21, 6, 'ADMIN', 1, 'Dạ vâng em đã lưu lại thông tin. Chúc anh một ngày tốt lành!', 1, '2026-05-27 22:45:46.677'),
(22, 7, 'USER', 6, 'Ship sang Seattle bang Washington khoảng bao lâu vậy shop?', 1, '2026-05-29 02:23:19.190'),
(23, 7, 'BOT', NULL, 'Chào bạn! Ship sang bang Washington qua đường hàng không tiêu chuẩn thường mất từ 3-4 ngày làm việc. Nếu đơn hàng của bạn trên $150 sẽ được miễn phí hoàn toàn phí ship nhé!', 1, '2026-05-29 02:28:19.190'),
(24, 8, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.657'),
(25, 8, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.657'),
(26, 9, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.660'),
(27, 9, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.660'),
(28, 10, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.664'),
(29, 10, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.664'),
(30, 11, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.666'),
(31, 11, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.666'),
(32, 12, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.669'),
(33, 12, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.669'),
(34, 13, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.672'),
(35, 13, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.672'),
(36, 14, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 1, '2026-06-02 12:18:39.674'),
(37, 14, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.674'),
(38, 15, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.677'),
(39, 15, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.677'),
(40, 16, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 1, '2026-06-02 12:18:39.680'),
(41, 16, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.680'),
(42, 17, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.683'),
(43, 17, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.683'),
(44, 18, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.686'),
(45, 18, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.686'),
(46, 19, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.688'),
(47, 19, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.688'),
(48, 20, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.692'),
(49, 20, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.692'),
(50, 21, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 0, '2026-06-02 12:18:39.695'),
(51, 21, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.695'),
(52, 22, 'USER', NULL, 'Chào shop, đơn hàng của tôi khi nào giao?', 1, '2026-06-02 12:18:39.699'),
(53, 22, 'ADMIN', NULL, 'Dạ đơn hàng của bạn đang được giao, dự kiến ngày mai ạ.', 0, '2026-06-02 12:18:39.699'),
(54, 23, 'USER', 1, 'Xin chào, tôi muốn được hỗ trợ trực tiếp.', 1, '2026-06-03 04:43:33.130'),
(55, 23, 'AI', NULL, 'Phiên chat đã được đóng bởi nhân viên. Cảm ơn bạn đã liên hệ LIKEFOOD! 🙏', 0, '2026-06-03 04:43:43.376'),
(56, 24, 'USER', 1, 'Xin chào, tôi muốn được hỗ trợ trực tiếp.', 1, '2026-06-04 07:56:17.780'),
(57, 24, 'USER', 1, 'he lo0o', 1, '2026-06-04 07:56:34.046'),
(58, 24, 'USER', 1, 'mãi iu', 1, '2026-06-04 07:56:44.019'),
(59, 24, 'AI', NULL, 'Phiên chat đã được đóng bởi nhân viên. Cảm ơn bạn đã liên hệ LIKEFOOD! 🙏', 0, '2026-06-04 08:04:17.930'),
(60, 25, 'USER', 1, 'Xin chào, tôi muốn được hỗ trợ trực tiếp.', 1, '2026-06-04 08:15:26.302'),
(61, 25, 'AI', NULL, 'Phiên chat đã được đóng bởi nhân viên. Cảm ơn bạn đã liên hệ LIKEFOOD! 🙏', 0, '2026-06-04 08:15:44.275');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_nhan_lien_he`
--

CREATE TABLE `tin_nhan_lien_he` (
  `ma_lien_he` int(11) NOT NULL,
  `ho_ten` varchar(191) NOT NULL,
  `thu_dien_tu` varchar(191) NOT NULL,
  `so_dien_thoai` varchar(191) DEFAULT NULL,
  `tieu_de` varchar(191) NOT NULL,
  `noi_dung` text NOT NULL,
  `trang_thai` varchar(191) NOT NULL DEFAULT 'PENDING',
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_nhan_lien_he`
--

INSERT INTO `tin_nhan_lien_he` (`ma_lien_he`, `ho_ten`, `thu_dien_tu`, `so_dien_thoai`, `tieu_de`, `noi_dung`, `trang_thai`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 'Phạm Minh Hoàng', 'hoangpm@gmail.com', '0901234567', 'Hợp tác cung cấp cá khô', 'Chào LikeFood, tôi là chủ vựa cá khô tại Cà Mau, mong muốn hợp tác cung cấp sỉ khô cá sặc và khô cá dứa chất lượng cao đạt chuẩn FDA sang Mỹ.', 'PENDING', '2026-05-24 10:20:46.066', '2026-05-31 14:42:45.145'),
(2, 'Trần Thị Mai', 'maittt@yahoo.com', '0912345678', 'Thời gian ship hàng California', 'Đơn hàng của tôi gửi đi San Jose, California thì bao lâu nhận được? Tôi đang cần gấp làm quà biếu.', 'PENDING', '2026-05-30 13:11:49.878', '2026-05-31 14:42:45.147'),
(3, 'Lê Văn Sơn', 'sonlv@hotmail.com', '0987654321', 'Yêu cầu xuất hóa đơn đỏ', 'Tôi đã đặt một đơn hàng trị giá $350 vào hôm qua, hệ thống có hỗ trợ xuất hóa đơn PDF để gửi thanh toán cho công ty không?', 'PROCESSED', '2026-05-27 01:24:04.264', '2026-05-31 14:42:45.149'),
(4, 'Nguyễn Thu Hà', 'hanth@gmail.com', '0934567890', 'Sản phẩm bị lỗi bao bì', 'Gói tôm khô tôi nhận được bị rách một đường nhỏ ở góc túi chân không. Nhờ shop hỗ trợ đổi trả hoặc hoàn tiền giúp tôi nhé.', 'READ', '2026-05-31 04:28:17.086', '2026-05-31 14:43:51.973'),
(5, 'Vũ Đình Phong', 'phongvd@gmail.com', '0977888999', 'Hỏi về chương trình CTV giới thiệu', 'Làm sao để tôi lấy link giới thiệu bạn bè và hoa hồng rút tiền về tài khoản ngân hàng Việt Nam được tính thế nào?', 'PROCESSED', '2026-05-29 08:00:01.305', '2026-05-31 14:42:45.151'),
(6, 'Nguyễn Văn Hùng', 'hung.nguyen@gmail.com', '714-889-1234', 'Hỏi chính sách mua sỉ hộp quà Tết đặc sản', 'Chào LIKEFOOD, công ty chúng tôi tại California đang có nhu cầu đặt khoảng 150 phần quà Tết bao gồm tôm khô Cà Mau loại 1, khô mực Phú Quốc và mứt dừa non Bến Tre để tặng nhân viên. Xin vui lòng gửi bảng giá chiết khấu đại lý cho tôi nhé.', 'PENDING', '2026-05-12 08:44:11.130', '2026-05-12 08:44:11.130'),
(7, 'Sarah Jenkins', 'sarah.j@outlook.com', '650-321-9876', 'Inquiry about shipping to Hawaii', 'Hello! I want to order some dried mangoes and artichoke tea to Hawaii. Is there an extra shipping fee for Hawaii? The website says free shipping over $150, does that apply to Hawaii too?', 'PENDING', '2026-05-20 13:33:12.653', '2026-05-20 13:33:12.653'),
(8, 'Trần Thị Lan', 'lantran.us@yahoo.com', '408-555-6677', 'Đơn hàng #10245 chưa thấy cập nhật tracking', 'Tôi đã đặt hàng từ 3 ngày trước và thanh toán qua Momo thành công nhưng chưa nhận được email có mã tracking. Vui lòng kiểm tra lại trạng thái giao hàng hộ tôi.', 'REPLIED', '2026-05-26 20:17:02.136', '2026-05-26 20:17:02.136'),
(9, 'Phạm Minh Tuấn', 'tuan.pham@viettech.org', '281-778-9900', 'Hợp tác cung cấp đặc sản Tây Nguyên tại Texas', 'Chúng tôi có chuỗi siêu thị mini đồ Việt tại Houston, Texas và muốn nhập khẩu trực tiếp hạt tiêu Phú Quốc, hạt điều Bình Phước và mật ong rừng của shop. Hãy liên hệ lại để bàn về phương thức ký gửi và thanh toán.', 'PENDING', '2026-05-12 11:57:12.264', '2026-05-12 11:57:12.264'),
(10, 'Lê Minh Triết', 'triet.le@gmail.com', '312-990-8811', 'Sản phẩm đóng gói rất đẹp và chất lượng rất ngon!', 'Chỉ là một lời khen gửi đến đội ngũ LIKEFOOD. Tôi vừa nhận được gói bánh pía Sóc Trăng và tôm rim me. Đóng gói rất chuyên nghiệp, giao hàng nhanh chóng, hương vị tuyệt vời như ở Việt Nam. Sẽ ủng hộ dài lâu!', 'REPLIED', '2026-05-26 05:02:42.883', '2026-05-26 05:02:42.883'),
(11, 'David Nguyen', 'david.nguyen92@gmail.com', '713-442-1200', 'Hỗ trợ đổi trả gói xoài sấy bị rách bao bì', 'Chào shop, đơn hàng tôi nhận sáng nay có gói xoài sấy dẻo bị rách góc nhỏ ở bao bì làm xoài hơi bị khô. Tôi đã gửi mail hình chụp, nhờ shop hỗ trợ gửi bù hoặc hoàn tiền giúp tôi nhé. Cảm ơn nhiều.', 'REPLIED', '2026-05-17 03:03:14.124', '2026-05-17 03:03:14.124'),
(12, 'Vũ Hoàng My', 'my.vu@hotmail.com', '972-300-4455', 'Đăng ký nhận email ưu đãi định kỳ', 'Tôi muốn đăng ký nhận tin khuyến mãi qua email nhưng bấm nút ở chân trang web cứ báo lỗi. Nhờ admin thêm email my.vu@hotmail.com của tôi vào danh sách nhận bản tin nhé.', 'PENDING', '2026-05-15 15:28:51.136', '2026-05-15 15:28:51.136'),
(13, 'Người Liên Hệ 0', 'contact0@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'PENDING', '2026-06-02 12:18:39.702', '2026-06-02 12:18:39.702'),
(14, 'Người Liên Hệ 1', 'contact1@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'PENDING', '2026-06-02 12:18:39.707', '2026-06-02 12:18:39.707'),
(15, 'Người Liên Hệ 2', 'contact2@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'PENDING', '2026-06-02 12:18:39.709', '2026-06-02 12:18:39.709'),
(16, 'Người Liên Hệ 3', 'contact3@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'PENDING', '2026-06-02 12:18:39.712', '2026-06-02 12:18:39.712'),
(17, 'Người Liên Hệ 4', 'contact4@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'PENDING', '2026-06-02 12:18:39.715', '2026-06-02 12:18:39.715'),
(18, 'Người Liên Hệ 5', 'contact5@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'READ', '2026-06-02 12:18:39.717', '2026-06-03 04:50:54.207'),
(19, 'Người Liên Hệ 6', 'contact6@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'PENDING', '2026-06-02 12:18:39.720', '2026-06-02 12:18:39.720'),
(20, 'Người Liên Hệ 7', 'contact7@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'READ', '2026-06-02 12:18:39.723', '2026-06-03 04:50:53.380'),
(21, 'Người Liên Hệ 8', 'contact8@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'READ', '2026-06-02 12:18:39.727', '2026-06-03 04:50:52.586'),
(22, 'Người Liên Hệ 9', 'contact9@test.com', NULL, 'Hợp tác kinh doanh', 'Tôi muốn làm đại lý cho LIKEFOOD, xin vui lòng gửi báo giá.', 'READ', '2026-06-02 12:18:39.729', '2026-06-03 04:50:51.127');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher_nguoi_dung`
--

CREATE TABLE `voucher_nguoi_dung` (
  `ma_voucher_nguoi_dung` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_phieu_giam_gia` int(11) NOT NULL,
  `trang_thai` varchar(191) NOT NULL DEFAULT 'CLAIMED',
  `ngay_nhan` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_su_dung` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher_nguoi_dung`
--

INSERT INTO `voucher_nguoi_dung` (`ma_voucher_nguoi_dung`, `ma_nguoi_dung`, `ma_phieu_giam_gia`, `trang_thai`, `ngay_nhan`, `ngay_su_dung`) VALUES
(1, 2, 1, 'USED', '2026-05-22 06:28:26.972', '2026-05-22 15:03:42.865'),
(2, 3, 2, 'CLAIMED', '2026-05-15 08:02:09.924', NULL),
(3, 4, 3, 'CLAIMED', '2026-05-12 09:51:39.620', NULL),
(4, 5, 4, 'USED', '2026-05-14 06:58:43.459', '2026-05-14 15:53:59.305'),
(5, 6, 5, 'CLAIMED', '2026-05-13 03:06:29.009', NULL),
(6, 7, 6, 'CLAIMED', '2026-05-12 03:45:22.824', NULL),
(7, 8, 7, 'USED', '2026-05-31 01:39:35.141', '2026-05-31 06:04:18.557'),
(8, 9, 8, 'CLAIMED', '2026-05-28 07:30:28.778', NULL),
(9, 10, 1, 'CLAIMED', '2026-05-18 10:20:38.101', NULL),
(10, 11, 2, 'USED', '2026-05-30 15:45:46.591', '2026-05-31 11:40:56.848'),
(11, 12, 3, 'CLAIMED', '2026-05-28 13:37:58.554', NULL),
(12, 13, 4, 'CLAIMED', '2026-05-29 08:08:40.812', NULL),
(13, 14, 5, 'USED', '2026-05-15 19:53:32.669', '2026-05-16 03:34:58.983'),
(14, 15, 6, 'CLAIMED', '2026-05-16 23:19:45.556', NULL),
(15, 16, 7, 'CLAIMED', '2026-05-31 14:11:57.053', NULL),
(16, 17, 8, 'USED', '2026-05-21 00:49:11.553', '2026-05-21 17:17:34.253'),
(17, 18, 1, 'CLAIMED', '2026-05-23 02:26:36.041', NULL),
(18, 19, 2, 'CLAIMED', '2026-05-11 16:07:05.402', NULL),
(19, 20, 3, 'USED', '2026-05-16 18:48:39.065', '2026-05-17 18:30:08.725'),
(20, 21, 4, 'CLAIMED', '2026-05-15 09:35:36.792', NULL),
(21, 1, 4, 'CLAIMED', '2026-06-03 04:46:35.041', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xac_thuc_hai_lop`
--

CREATE TABLE `xac_thuc_hai_lop` (
  `ma_xac_thuc_hai_lop` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_token` varchar(10) NOT NULL,
  `ngay_het_han` datetime(3) NOT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeu_cau_hoan_tien`
--

CREATE TABLE `yeu_cau_hoan_tien` (
  `ma_yeu_cau_hoan_tien` int(11) NOT NULL,
  `ma_don_hang` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `ma_chi_tiet_don_hang` int(11) DEFAULT NULL,
  `ly_do` text NOT NULL,
  `so_tien` double NOT NULL,
  `trang_thai` varchar(191) NOT NULL DEFAULT 'PENDING',
  `ghi_chu_admin` text DEFAULT NULL,
  `phuong_thuc_hoan_tien` varchar(191) DEFAULT NULL,
  `tai_khoan_ngan_hang` varchar(191) DEFAULT NULL,
  `ten_ngan_hang` varchar(191) DEFAULT NULL,
  `ngay_xu_ly` datetime(3) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeu_cau_hoan_tien`
--

INSERT INTO `yeu_cau_hoan_tien` (`ma_yeu_cau_hoan_tien`, `ma_don_hang`, `ma_nguoi_dung`, `ma_chi_tiet_don_hang`, `ly_do`, `so_tien`, `trang_thai`, `ghi_chu_admin`, `phuong_thuc_hoan_tien`, `tai_khoan_ngan_hang`, `ten_ngan_hang`, `ngay_xu_ly`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 1, 2, NULL, 'Bao bì tôm khô bị rách chân không trong quá trình vận chuyển làm giảm chất lượng.', 10.99, 'PENDING', NULL, 'BANK_TRANSFER', '19034567890012', 'Techcombank', NULL, '2026-05-27 09:47:41.646', '2026-05-31 14:42:45.174'),
(2, 2, 2, NULL, 'Đơn hàng giao thiếu 1 gói Khô Cá Sặc Bổi Cà Mau.', 10.99, 'APPROVED', 'Đã xác minh hình ảnh đóng gói và giải quyết hoàn tiền qua ngân hàng.', 'BANK_TRANSFER', '19034567890012', 'Techcombank', '2026-05-31 14:42:45.175', '2026-05-29 21:17:20.196', '2026-05-31 14:42:45.176'),
(3, 3, 2, NULL, 'Vận chuyển quá lâu trễ mất dịp lễ Tết của gia đình tôi nên muốn hoàn tiền.', 12.99, 'REJECTED', 'Đã xác minh hình ảnh đóng gói và giải quyết hoàn tiền qua ngân hàng.', 'BANK_TRANSFER', '19034567890012', 'Techcombank', '2026-05-31 14:42:45.177', '2026-05-29 04:05:24.992', '2026-05-31 14:42:45.178'),
(4, 60, 33, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 82.96000000000001, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:38.759', '2026-06-02 12:18:38.759'),
(5, 72, 38, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 273.91, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:38.837', '2026-06-02 12:18:38.837'),
(6, 102, 46, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 151.96, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:39.036', '2026-06-02 12:18:39.036'),
(7, 112, 50, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 138.94, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:39.104', '2026-06-02 12:18:39.104'),
(8, 131, 55, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 97.94999999999999, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:39.229', '2026-06-02 12:18:39.229'),
(9, 142, 58, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 183.94, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:39.324', '2026-06-02 12:18:39.324'),
(10, 147, 61, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 129.96, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:39.363', '2026-06-02 12:18:39.363'),
(11, 157, 64, NULL, 'Hàng bị lỗi trong quá trình vận chuyển', 429.91, 'PENDING', NULL, NULL, NULL, NULL, NULL, '2026-06-02 12:18:39.451', '2026-06-02 12:18:39.451');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeu_cau_rut_tien_gioi_thieu`
--

CREATE TABLE `yeu_cau_rut_tien_gioi_thieu` (
  `ma_yeu_cau_rut_tien` int(11) NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `so_tien` decimal(12,2) NOT NULL,
  `phuong_thuc` varchar(20) NOT NULL,
  `thong_tin_nhan_tien` text DEFAULT NULL,
  `trang_thai` varchar(12) NOT NULL DEFAULT 'PENDING',
  `ghi_chu_admin` text DEFAULT NULL,
  `ma_nguoi_xu_ly` int(11) DEFAULT NULL,
  `ngay_xu_ly` datetime(3) DEFAULT NULL,
  `ngay_tao` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `ngay_cap_nhat` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeu_cau_rut_tien_gioi_thieu`
--

INSERT INTO `yeu_cau_rut_tien_gioi_thieu` (`ma_yeu_cau_rut_tien`, `ma_nguoi_dung`, `so_tien`, `phuong_thuc`, `thong_tin_nhan_tien`, `trang_thai`, `ghi_chu_admin`, `ma_nguoi_xu_ly`, `ngay_xu_ly`, `ngay_tao`, `ngay_cap_nhat`) VALUES
(1, 2, 50.00, 'BANK', '{\"bankName\":\"Vietcombank\",\"accountNo\":\"007100123456\",\"accountName\":\"Nguyễn Văn An\"}', 'PENDING', NULL, NULL, NULL, '2026-05-31 14:42:45.208', '2026-05-31 14:42:45.209'),
(2, 3, 70.00, 'BANK', '{\"bankName\":\"Vietcombank\",\"accountNo\":\"007100123456\",\"accountName\":\"Trần Thị Bình\"}', 'APPROVED', 'Đã chuyển khoản thành công hoa hồng giới thiệu.', NULL, '2026-05-31 14:42:45.212', '2026-05-29 14:42:45.212', '2026-05-31 14:42:45.213');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anh_bai_viet`
--
ALTER TABLE `anh_bai_viet`
  ADD PRIMARY KEY (`ma_anh`),
  ADD KEY `anh_bai_viet_ma_bai_viet_idx` (`ma_bai_viet`);

--
-- Chỉ mục cho bảng `anh_san_pham`
--
ALTER TABLE `anh_san_pham`
  ADD PRIMARY KEY (`ma_anh`),
  ADD KEY `anh_san_pham_ma_san_pham_idx` (`ma_san_pham`),
  ADD KEY `anh_san_pham_la_anh_chinh_idx` (`la_anh_chinh`);

--
-- Chỉ mục cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD PRIMARY KEY (`ma_bai_viet`),
  ADD UNIQUE KEY `bai_viet_duong_dan_tinh_key` (`duong_dan_tinh`),
  ADD KEY `bai_viet_da_xuat_ban_idx` (`da_xuat_ban`),
  ADD KEY `bai_viet_ngay_xuat_ban_idx` (`ngay_xuat_ban`);

--
-- Chỉ mục cho bảng `banner_quang_cao`
--
ALTER TABLE `banner_quang_cao`
  ADD PRIMARY KEY (`ma_banner`),
  ADD KEY `banner_quang_cao_vi_tri_hien_thi_dang_hoat_dong_thu_tu_uu_ti_idx` (`vi_tri_hien_thi`,`dang_hoat_dong`,`thu_tu_uu_tien`);

--
-- Chỉ mục cho bảng `bien_the_san_pham`
--
ALTER TABLE `bien_the_san_pham`
  ADD PRIMARY KEY (`ma_bien_the`),
  ADD UNIQUE KEY `bien_the_san_pham_ma_sku_key` (`ma_sku`),
  ADD KEY `bien_the_san_pham_ma_san_pham_idx` (`ma_san_pham`),
  ADD KEY `bien_the_san_pham_dang_hoat_dong_idx` (`dang_hoat_dong`);

--
-- Chỉ mục cho bảng `cai_dat_he_thong`
--
ALTER TABLE `cai_dat_he_thong`
  ADD PRIMARY KEY (`ma_cai_dat`),
  ADD UNIQUE KEY `cai_dat_he_thong_khoa_key` (`khoa`),
  ADD KEY `cai_dat_he_thong_khoa_idx` (`khoa`);

--
-- Chỉ mục cho bảng `chien_dich_flash_sale`
--
ALTER TABLE `chien_dich_flash_sale`
  ADD PRIMARY KEY (`ma_chien_dich`),
  ADD KEY `chien_dich_flash_sale_ngay_bat_dau_ngay_ket_thuc_idx` (`ngay_bat_dau`,`ngay_ket_thuc`),
  ADD KEY `chien_dich_flash_sale_dang_hoat_dong_idx` (`dang_hoat_dong`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`ma_chi_tiet_don_hang`),
  ADD KEY `chi_tiet_don_hang_ma_don_hang_idx` (`ma_don_hang`),
  ADD KEY `chi_tiet_don_hang_ma_san_pham_idx` (`ma_san_pham`),
  ADD KEY `chi_tiet_don_hang_ma_bien_the_idx` (`ma_bien_the`),
  ADD KEY `chi_tiet_don_hang_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `chi_tiet_gio_hang`
--
ALTER TABLE `chi_tiet_gio_hang`
  ADD PRIMARY KEY (`ma_chi_tiet_gio_hang`),
  ADD UNIQUE KEY `chi_tiet_gio_hang_ma_gio_hang_ma_san_pham_ma_bien_the_key` (`ma_gio_hang`,`ma_san_pham`,`ma_bien_the`),
  ADD KEY `chi_tiet_gio_hang_ma_gio_hang_idx` (`ma_gio_hang`),
  ADD KEY `chi_tiet_gio_hang_ma_san_pham_idx` (`ma_san_pham`),
  ADD KEY `chi_tiet_gio_hang_ma_bien_the_idx` (`ma_bien_the`);

--
-- Chỉ mục cho bảng `chi_tiet_nhan_san_pham`
--
ALTER TABLE `chi_tiet_nhan_san_pham`
  ADD PRIMARY KEY (`ma_san_pham`,`ma_nhan`),
  ADD KEY `chi_tiet_nhan_san_pham_ma_nhan_idx` (`ma_nhan`);

--
-- Chỉ mục cho bảng `dang_ky_nhan_ban_tin`
--
ALTER TABLE `dang_ky_nhan_ban_tin`
  ADD PRIMARY KEY (`ma_dang_ky`),
  ADD UNIQUE KEY `dang_ky_nhan_ban_tin_thu_dien_tu_key` (`thu_dien_tu`),
  ADD KEY `dang_ky_nhan_ban_tin_ngay_dang_ky_idx` (`ngay_dang_ky`);

--
-- Chỉ mục cho bảng `danh_gia_san_pham`
--
ALTER TABLE `danh_gia_san_pham`
  ADD PRIMARY KEY (`ma_danh_gia`),
  ADD UNIQUE KEY `danh_gia_san_pham_ma_chi_tiet_don_hang_key` (`ma_chi_tiet_don_hang`),
  ADD KEY `danh_gia_san_pham_ma_san_pham_idx` (`ma_san_pham`),
  ADD KEY `danh_gia_san_pham_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `danh_gia_san_pham_trang_thai_so_sao_idx` (`trang_thai`,`so_sao`),
  ADD KEY `danh_gia_san_pham_ma_san_pham_trang_thai_idx` (`ma_san_pham`,`trang_thai`);

--
-- Chỉ mục cho bảng `danh_muc_san_pham`
--
ALTER TABLE `danh_muc_san_pham`
  ADD PRIMARY KEY (`ma_danh_muc`),
  ADD UNIQUE KEY `danh_muc_san_pham_duong_dan_tinh_key` (`duong_dan_tinh`),
  ADD KEY `danh_muc_san_pham_ma_danh_muc_cha_idx` (`ma_danh_muc_cha`),
  ADD KEY `danh_muc_san_pham_vi_tri_hien_thi_idx` (`vi_tri_hien_thi`),
  ADD KEY `danh_muc_san_pham_hien_thi_idx` (`hien_thi`),
  ADD KEY `danh_muc_san_pham_dang_hoat_dong_idx` (`dang_hoat_dong`);

--
-- Chỉ mục cho bảng `danh_sach_yeu_thich`
--
ALTER TABLE `danh_sach_yeu_thich`
  ADD PRIMARY KEY (`ma_yeu_thich`),
  ADD UNIQUE KEY `danh_sach_yeu_thich_ma_nguoi_dung_ma_san_pham_key` (`ma_nguoi_dung`,`ma_san_pham`),
  ADD KEY `danh_sach_yeu_thich_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `danh_sach_yeu_thich_ma_san_pham_idx` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `dia_chi_giao_hang`
--
ALTER TABLE `dia_chi_giao_hang`
  ADD PRIMARY KEY (`ma_dia_chi`),
  ADD KEY `dia_chi_giao_hang_ma_nguoi_dung_idx` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`ma_don_hang`),
  ADD KEY `don_hang_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `don_hang_trang_thai_idx` (`trang_thai`),
  ADD KEY `don_hang_ngay_tao_idx` (`ngay_tao`),
  ADD KEY `don_hang_ma_giao_dich_thanh_toan_idx` (`ma_giao_dich_thanh_toan`),
  ADD KEY `don_hang_ma_nguoi_dung_trang_thai_idx` (`ma_nguoi_dung`,`trang_thai`),
  ADD KEY `don_hang_ma_nguoi_dung_ngay_tao_idx` (`ma_nguoi_dung`,`ngay_tao`),
  ADD KEY `don_hang_trang_thai_ngay_tao_idx` (`trang_thai`,`ngay_tao`),
  ADD KEY `don_hang_trang_thai_thanh_toan_idx` (`trang_thai_thanh_toan`);

--
-- Chỉ mục cho bảng `giao_dich_diem_thuong`
--
ALTER TABLE `giao_dich_diem_thuong`
  ADD PRIMARY KEY (`ma_giao_dich_diem`),
  ADD KEY `giao_dich_diem_thuong_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `giao_dich_diem_thuong_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `giao_dich_tai_khoan`
--
ALTER TABLE `giao_dich_tai_khoan`
  ADD PRIMARY KEY (`ma_giao_dich`),
  ADD UNIQUE KEY `giao_dich_tai_khoan_ma_tham_chieu_key` (`ma_tham_chieu`),
  ADD KEY `giao_dich_tai_khoan_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `giao_dich_tai_khoan_trang_thai_idx` (`trang_thai`),
  ADD KEY `giao_dich_tai_khoan_ma_tham_chieu_idx` (`ma_tham_chieu`);

--
-- Chỉ mục cho bảng `giao_dich_vi_gioi_thieu`
--
ALTER TABLE `giao_dich_vi_gioi_thieu`
  ADD PRIMARY KEY (`ma_giao_dich`),
  ADD KEY `giao_dich_vi_gioi_thieu_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `giao_dich_vi_gioi_thieu_loai_giao_dich_idx` (`loai_giao_dich`),
  ADD KEY `giao_dich_vi_gioi_thieu_chieu_giao_dich_idx` (`chieu_giao_dich`),
  ADD KEY `giao_dich_vi_gioi_thieu_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`ma_gio_hang`),
  ADD UNIQUE KEY `gio_hang_ma_nguoi_dung_key` (`ma_nguoi_dung`),
  ADD UNIQUE KEY `gio_hang_ma_khach_vang_lai_key` (`ma_khach_vang_lai`);

--
-- Chỉ mục cho bảng `hoa_hong_gioi_thieu`
--
ALTER TABLE `hoa_hong_gioi_thieu`
  ADD PRIMARY KEY (`ma_hoa_hong`),
  ADD UNIQUE KEY `hoa_hong_gioi_thieu_ma_don_hang_ma_nguoi_gioi_thieu_key` (`ma_don_hang`,`ma_nguoi_gioi_thieu`),
  ADD KEY `hoa_hong_gioi_thieu_ma_nguoi_gioi_thieu_idx` (`ma_nguoi_gioi_thieu`),
  ADD KEY `hoa_hong_gioi_thieu_ma_nguoi_duoc_gioi_thieu_idx` (`ma_nguoi_duoc_gioi_thieu`),
  ADD KEY `hoa_hong_gioi_thieu_ma_don_hang_idx` (`ma_don_hang`),
  ADD KEY `hoa_hong_gioi_thieu_trang_thai_idx` (`trang_thai`),
  ADD KEY `hoa_hong_gioi_thieu_giu_den_ngay_idx` (`giu_den_ngay`);

--
-- Chỉ mục cho bảng `hoi_dap_san_pham`
--
ALTER TABLE `hoi_dap_san_pham`
  ADD PRIMARY KEY (`ma_hoi_dap`),
  ADD KEY `hoi_dap_san_pham_ma_san_pham_idx` (`ma_san_pham`),
  ADD KEY `hoi_dap_san_pham_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `hoi_dap_san_pham_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `ho_so_gioi_thieu`
--
ALTER TABLE `ho_so_gioi_thieu`
  ADD PRIMARY KEY (`ma_ho_so`),
  ADD UNIQUE KEY `ho_so_gioi_thieu_ma_nguoi_dung_key` (`ma_nguoi_dung`),
  ADD UNIQUE KEY `ho_so_gioi_thieu_ma_gioi_thieu_he_thong_key` (`ma_gioi_thieu_he_thong`),
  ADD UNIQUE KEY `ho_so_gioi_thieu_ma_gioi_thieu_tuy_chinh_key` (`ma_gioi_thieu_tuy_chinh`),
  ADD KEY `ho_so_gioi_thieu_ma_gioi_thieu_tuy_chinh_idx` (`ma_gioi_thieu_tuy_chinh`),
  ADD KEY `ho_so_gioi_thieu_ma_gioi_thieu_he_thong_idx` (`ma_gioi_thieu_he_thong`),
  ADD KEY `ho_so_gioi_thieu_cap_bac_idx` (`cap_bac`),
  ADD KEY `ho_so_gioi_thieu_bi_khoa_idx` (`bi_khoa`);

--
-- Chỉ mục cho bảng `khung_trang_chu`
--
ALTER TABLE `khung_trang_chu`
  ADD PRIMARY KEY (`ma_section`),
  ADD UNIQUE KEY `khung_trang_chu_khoa_section_key` (`khoa_section`),
  ADD KEY `khung_trang_chu_kich_hoat_idx` (`kich_hoat`),
  ADD KEY `khung_trang_chu_vi_tri_idx` (`vi_tri`);

--
-- Chỉ mục cho bảng `kien_thuc_ai`
--
ALTER TABLE `kien_thuc_ai`
  ADD PRIMARY KEY (`ma_kien_thuc`),
  ADD KEY `kien_thuc_ai_danh_muc_idx` (`danh_muc`),
  ADD KEY `kien_thuc_ai_dang_hoat_dong_idx` (`dang_hoat_dong`),
  ADD KEY `kien_thuc_ai_ngon_ngu_idx` (`ngon_ngu`);

--
-- Chỉ mục cho bảng `lich_su_dang_nhap`
--
ALTER TABLE `lich_su_dang_nhap`
  ADD PRIMARY KEY (`ma_lich_su_dang_nhap`),
  ADD KEY `lich_su_dang_nhap_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `lich_su_dang_nhap_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `lich_su_hoi_thoai_ai`
--
ALTER TABLE `lich_su_hoi_thoai_ai`
  ADD PRIMARY KEY (`ma_lich_su`),
  ADD KEY `lich_su_hoi_thoai_ai_ngay_tao_idx` (`ngay_tao`),
  ADD KEY `lich_su_hoi_thoai_ai_ma_phien_lam_viec_idx` (`ma_phien_lam_viec`),
  ADD KEY `lich_su_hoi_thoai_ai_ma_nguoi_dung_idx` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `lich_su_trang_thai_don_hang`
--
ALTER TABLE `lich_su_trang_thai_don_hang`
  ADD PRIMARY KEY (`ma_su_kien`),
  ADD KEY `lich_su_trang_thai_don_hang_ma_don_hang_ngay_tao_idx` (`ma_don_hang`,`ngay_tao`);

--
-- Chỉ mục cho bảng `ma_xac_thuc_email`
--
ALTER TABLE `ma_xac_thuc_email`
  ADD PRIMARY KEY (`ma_xac_thuc`),
  ADD UNIQUE KEY `ma_xac_thuc_email_ma_thong_bao_key` (`ma_thong_bao`),
  ADD UNIQUE KEY `ma_xac_thuc_email_danh_tinh_ma_thong_bao_key` (`danh_tinh`,`ma_thong_bao`);

--
-- Chỉ mục cho bảng `moc_thanh_tich_gioi_thieu`
--
ALTER TABLE `moc_thanh_tich_gioi_thieu`
  ADD PRIMARY KEY (`ma_moc_thanh_tich`),
  ADD UNIQUE KEY `moc_thanh_tich_gioi_thieu_so_moc_key` (`so_moc`),
  ADD KEY `moc_thanh_tich_gioi_thieu_dang_hoat_dong_idx` (`dang_hoat_dong`),
  ADD KEY `moc_thanh_tich_gioi_thieu_thu_tu_hien_thi_idx` (`thu_tu_hien_thi`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`ma_nguoi_dung`),
  ADD UNIQUE KEY `nguoi_dung_thu_dien_tu_key` (`thu_dien_tu`),
  ADD UNIQUE KEY `nguoi_dung_ma_google_key` (`ma_google`);

--
-- Chỉ mục cho bảng `nhan_san_pham`
--
ALTER TABLE `nhan_san_pham`
  ADD PRIMARY KEY (`ma_nhan`),
  ADD UNIQUE KEY `nhan_san_pham_duong_dan_tinh_key` (`duong_dan_tinh`),
  ADD KEY `nhan_san_pham_dang_hoat_dong_idx` (`dang_hoat_dong`);

--
-- Chỉ mục cho bảng `nhat_ky_he_thong_gioi_thieu`
--
ALTER TABLE `nhat_ky_he_thong_gioi_thieu`
  ADD PRIMARY KEY (`ma_nhat_ky`),
  ADD KEY `nhat_ky_he_thong_gioi_thieu_ma_nguoi_thuc_hien_idx` (`ma_nguoi_thuc_hien`),
  ADD KEY `nhat_ky_he_thong_gioi_thieu_ma_nguoi_bi_tac_dong_idx` (`ma_nguoi_bi_tac_dong`),
  ADD KEY `nhat_ky_he_thong_gioi_thieu_hanh_dong_idx` (`hanh_dong`),
  ADD KEY `nhat_ky_he_thong_gioi_thieu_loai_thuc_the_ma_thuc_the_idx` (`loai_thuc_the`,`ma_thuc_the`),
  ADD KEY `nhat_ky_he_thong_gioi_thieu_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `nhat_ky_su_dung_ai`
--
ALTER TABLE `nhat_ky_su_dung_ai`
  ADD PRIMARY KEY (`ma_nhat_ky`),
  ADD KEY `nhat_ky_su_dung_ai_ten_nhiem_vu_idx` (`ten_nhiem_vu`),
  ADD KEY `nhat_ky_su_dung_ai_ngay_tao_idx` (`ngay_tao`),
  ADD KEY `nhat_ky_su_dung_ai_ma_nguoi_dung_idx` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `phan_thuong_moc_gioi_thieu`
--
ALTER TABLE `phan_thuong_moc_gioi_thieu`
  ADD PRIMARY KEY (`ma_phan_thuong`),
  ADD UNIQUE KEY `phan_thuong_moc_gioi_thieu_ma_nguoi_dung_ma_moc_thanh_tich_key` (`ma_nguoi_dung`,`ma_moc_thanh_tich`),
  ADD KEY `phan_thuong_moc_gioi_thieu_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `phan_thuong_moc_gioi_thieu_ma_moc_thanh_tich_idx` (`ma_moc_thanh_tich`),
  ADD KEY `phan_thuong_moc_gioi_thieu_trang_thai_idx` (`trang_thai`),
  ADD KEY `phan_thuong_moc_gioi_thieu_ma_phieu_giam_gia_idx` (`ma_phieu_giam_gia`);

--
-- Chỉ mục cho bảng `phien_chat_truc_tiep`
--
ALTER TABLE `phien_chat_truc_tiep`
  ADD PRIMARY KEY (`ma_phien_chat`),
  ADD KEY `phien_chat_truc_tiep_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `phien_chat_truc_tiep_ma_quan_tri_vien_idx` (`ma_quan_tri_vien`),
  ADD KEY `phien_chat_truc_tiep_trang_thai_idx` (`trang_thai`),
  ADD KEY `phien_chat_truc_tiep_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `phieu_giam_gia`
--
ALTER TABLE `phieu_giam_gia`
  ADD PRIMARY KEY (`ma_phieu_giam_gia`),
  ADD UNIQUE KEY `phieu_giam_gia_ma_code_key` (`ma_code`);

--
-- Chỉ mục cho bảng `phuong_tien_danh_gia`
--
ALTER TABLE `phuong_tien_danh_gia`
  ADD PRIMARY KEY (`ma_phuong_tien`),
  ADD KEY `phuong_tien_danh_gia_ma_danh_gia_idx` (`ma_danh_gia`);

--
-- Chỉ mục cho bảng `quan_he_gioi_thieu`
--
ALTER TABLE `quan_he_gioi_thieu`
  ADD PRIMARY KEY (`ma_quan_he`),
  ADD UNIQUE KEY `quan_he_gioi_thieu_ma_nguoi_duoc_gioi_thieu_key` (`ma_nguoi_duoc_gioi_thieu`),
  ADD KEY `quan_he_gioi_thieu_ma_nguoi_gioi_thieu_idx` (`ma_nguoi_gioi_thieu`),
  ADD KEY `quan_he_gioi_thieu_ma_nguoi_duoc_gioi_thieu_idx` (`ma_nguoi_duoc_gioi_thieu`),
  ADD KEY `quan_he_gioi_thieu_trang_thai_idx` (`trang_thai`),
  ADD KEY `quan_he_gioi_thieu_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD UNIQUE KEY `san_pham_duong_dan_tinh_key` (`duong_dan_tinh`),
  ADD UNIQUE KEY `san_pham_ma_so_san_pham_key` (`ma_so_san_pham`),
  ADD KEY `san_pham_ma_thuong_hieu_idx` (`ma_thuong_hieu`),
  ADD KEY `san_pham_phan_loai_idx` (`phan_loai`),
  ADD KEY `san_pham_ma_danh_muc_idx` (`ma_danh_muc`),
  ADD KEY `san_pham_dang_khuyen_mai_idx` (`dang_khuyen_mai`),
  ADD KEY `san_pham_noi_bat_idx` (`noi_bat`),
  ADD KEY `san_pham_hien_thi_idx` (`hien_thi`),
  ADD KEY `san_pham_so_luong_da_ban_idx` (`so_luong_da_ban`),
  ADD KEY `san_pham_diem_danh_gia_trung_binh_idx` (`diem_danh_gia_trung_binh`);
ALTER TABLE `san_pham` ADD FULLTEXT KEY `san_pham_ten_san_pham_mo_ta_idx` (`ten_san_pham`,`mo_ta`);

--
-- Chỉ mục cho bảng `san_pham_flash_sale`
--
ALTER TABLE `san_pham_flash_sale`
  ADD PRIMARY KEY (`ma_san_pham_flash_sale`),
  ADD UNIQUE KEY `san_pham_flash_sale_ma_chien_dich_ma_san_pham_key` (`ma_chien_dich`,`ma_san_pham`),
  ADD KEY `san_pham_flash_sale_ma_chien_dich_idx` (`ma_chien_dich`),
  ADD KEY `san_pham_flash_sale_ma_san_pham_idx` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `su_kien_hanh_vi`
--
ALTER TABLE `su_kien_hanh_vi`
  ADD PRIMARY KEY (`ma_su_kien`),
  ADD KEY `su_kien_hanh_vi_ngay_tao_idx` (`ngay_tao`),
  ADD KEY `su_kien_hanh_vi_loai_su_kien_idx` (`loai_su_kien`),
  ADD KEY `su_kien_hanh_vi_ma_phien_lam_viec_idx` (`ma_phien_lam_viec`),
  ADD KEY `su_kien_hanh_vi_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `su_kien_hanh_vi_ma_nguoi_dung_loai_su_kien_ngay_tao_idx` (`ma_nguoi_dung`,`loai_su_kien`,`ngay_tao`),
  ADD KEY `su_kien_hanh_vi_loai_su_kien_ngay_tao_idx` (`loai_su_kien`,`ngay_tao`);

--
-- Chỉ mục cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  ADD PRIMARY KEY (`ma_thong_bao`),
  ADD KEY `thong_bao_ma_nguoi_dung_da_doc_idx` (`ma_nguoi_dung`,`da_doc`),
  ADD KEY `thong_bao_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `thong_so_ky_thuat`
--
ALTER TABLE `thong_so_ky_thuat`
  ADD PRIMARY KEY (`ma_thong_so`),
  ADD KEY `thong_so_ky_thuat_ma_san_pham_idx` (`ma_san_pham`),
  ADD KEY `thong_so_ky_thuat_thu_tu_hien_thi_idx` (`thu_tu_hien_thi`);

--
-- Chỉ mục cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  ADD PRIMARY KEY (`ma_thuong_hieu`),
  ADD UNIQUE KEY `thuong_hieu_duong_dan_tinh_key` (`duong_dan_tinh`);

--
-- Chỉ mục cho bảng `tin_hieu_gian_lan_gioi_thieu`
--
ALTER TABLE `tin_hieu_gian_lan_gioi_thieu`
  ADD PRIMARY KEY (`ma_tin_hieu`),
  ADD KEY `tin_hieu_gian_lan_gioi_thieu_ma_quan_he_idx` (`ma_quan_he`),
  ADD KEY `tin_hieu_gian_lan_gioi_thieu_loai_tin_hieu_idx` (`loai_tin_hieu`),
  ADD KEY `tin_hieu_gian_lan_gioi_thieu_muc_do_nghiem_trong_idx` (`muc_do_nghiem_trong`),
  ADD KEY `tin_hieu_gian_lan_gioi_thieu_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `tin_nhan_chat`
--
ALTER TABLE `tin_nhan_chat`
  ADD PRIMARY KEY (`ma_tin_nhan`),
  ADD KEY `tin_nhan_chat_ma_phien_chat_idx` (`ma_phien_chat`),
  ADD KEY `tin_nhan_chat_ma_phien_chat_ngay_tao_idx` (`ma_phien_chat`,`ngay_tao`),
  ADD KEY `tin_nhan_chat_da_doc_idx` (`da_doc`);

--
-- Chỉ mục cho bảng `tin_nhan_lien_he`
--
ALTER TABLE `tin_nhan_lien_he`
  ADD PRIMARY KEY (`ma_lien_he`),
  ADD KEY `tin_nhan_lien_he_thu_dien_tu_idx` (`thu_dien_tu`),
  ADD KEY `tin_nhan_lien_he_trang_thai_idx` (`trang_thai`),
  ADD KEY `tin_nhan_lien_he_ngay_tao_idx` (`ngay_tao`);

--
-- Chỉ mục cho bảng `voucher_nguoi_dung`
--
ALTER TABLE `voucher_nguoi_dung`
  ADD PRIMARY KEY (`ma_voucher_nguoi_dung`),
  ADD UNIQUE KEY `voucher_nguoi_dung_ma_nguoi_dung_ma_phieu_giam_gia_key` (`ma_nguoi_dung`,`ma_phieu_giam_gia`),
  ADD KEY `voucher_nguoi_dung_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `voucher_nguoi_dung_ma_phieu_giam_gia_idx` (`ma_phieu_giam_gia`);

--
-- Chỉ mục cho bảng `xac_thuc_hai_lop`
--
ALTER TABLE `xac_thuc_hai_lop`
  ADD PRIMARY KEY (`ma_xac_thuc_hai_lop`),
  ADD KEY `xac_thuc_hai_lop_ma_nguoi_dung_idx` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `yeu_cau_hoan_tien`
--
ALTER TABLE `yeu_cau_hoan_tien`
  ADD PRIMARY KEY (`ma_yeu_cau_hoan_tien`),
  ADD KEY `yeu_cau_hoan_tien_ma_don_hang_idx` (`ma_don_hang`),
  ADD KEY `yeu_cau_hoan_tien_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `yeu_cau_hoan_tien_trang_thai_idx` (`trang_thai`);

--
-- Chỉ mục cho bảng `yeu_cau_rut_tien_gioi_thieu`
--
ALTER TABLE `yeu_cau_rut_tien_gioi_thieu`
  ADD PRIMARY KEY (`ma_yeu_cau_rut_tien`),
  ADD KEY `yeu_cau_rut_tien_gioi_thieu_ma_nguoi_dung_idx` (`ma_nguoi_dung`),
  ADD KEY `yeu_cau_rut_tien_gioi_thieu_trang_thai_idx` (`trang_thai`),
  ADD KEY `yeu_cau_rut_tien_gioi_thieu_ngay_tao_idx` (`ngay_tao`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anh_bai_viet`
--
ALTER TABLE `anh_bai_viet`
  MODIFY `ma_anh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `anh_san_pham`
--
ALTER TABLE `anh_san_pham`
  MODIFY `ma_anh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  MODIFY `ma_bai_viet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `banner_quang_cao`
--
ALTER TABLE `banner_quang_cao`
  MODIFY `ma_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `bien_the_san_pham`
--
ALTER TABLE `bien_the_san_pham`
  MODIFY `ma_bien_the` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cai_dat_he_thong`
--
ALTER TABLE `cai_dat_he_thong`
  MODIFY `ma_cai_dat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `chien_dich_flash_sale`
--
ALTER TABLE `chien_dich_flash_sale`
  MODIFY `ma_chien_dich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `ma_chi_tiet_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_gio_hang`
--
ALTER TABLE `chi_tiet_gio_hang`
  MODIFY `ma_chi_tiet_gio_hang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dang_ky_nhan_ban_tin`
--
ALTER TABLE `dang_ky_nhan_ban_tin`
  MODIFY `ma_dang_ky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `danh_gia_san_pham`
--
ALTER TABLE `danh_gia_san_pham`
  MODIFY `ma_danh_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `danh_muc_san_pham`
--
ALTER TABLE `danh_muc_san_pham`
  MODIFY `ma_danh_muc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `danh_sach_yeu_thich`
--
ALTER TABLE `danh_sach_yeu_thich`
  MODIFY `ma_yeu_thich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT cho bảng `dia_chi_giao_hang`
--
ALTER TABLE `dia_chi_giao_hang`
  MODIFY `ma_dia_chi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `ma_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `giao_dich_diem_thuong`
--
ALTER TABLE `giao_dich_diem_thuong`
  MODIFY `ma_giao_dich_diem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `giao_dich_tai_khoan`
--
ALTER TABLE `giao_dich_tai_khoan`
  MODIFY `ma_giao_dich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `giao_dich_vi_gioi_thieu`
--
ALTER TABLE `giao_dich_vi_gioi_thieu`
  MODIFY `ma_giao_dich` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `ma_gio_hang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoa_hong_gioi_thieu`
--
ALTER TABLE `hoa_hong_gioi_thieu`
  MODIFY `ma_hoa_hong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoi_dap_san_pham`
--
ALTER TABLE `hoi_dap_san_pham`
  MODIFY `ma_hoi_dap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ho_so_gioi_thieu`
--
ALTER TABLE `ho_so_gioi_thieu`
  MODIFY `ma_ho_so` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khung_trang_chu`
--
ALTER TABLE `khung_trang_chu`
  MODIFY `ma_section` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kien_thuc_ai`
--
ALTER TABLE `kien_thuc_ai`
  MODIFY `ma_kien_thuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `lich_su_dang_nhap`
--
ALTER TABLE `lich_su_dang_nhap`
  MODIFY `ma_lich_su_dang_nhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT cho bảng `lich_su_hoi_thoai_ai`
--
ALTER TABLE `lich_su_hoi_thoai_ai`
  MODIFY `ma_lich_su` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `lich_su_trang_thai_don_hang`
--
ALTER TABLE `lich_su_trang_thai_don_hang`
  MODIFY `ma_su_kien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT cho bảng `ma_xac_thuc_email`
--
ALTER TABLE `ma_xac_thuc_email`
  MODIFY `ma_xac_thuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `moc_thanh_tich_gioi_thieu`
--
ALTER TABLE `moc_thanh_tich_gioi_thieu`
  MODIFY `ma_moc_thanh_tich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `ma_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `nhan_san_pham`
--
ALTER TABLE `nhan_san_pham`
  MODIFY `ma_nhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nhat_ky_he_thong_gioi_thieu`
--
ALTER TABLE `nhat_ky_he_thong_gioi_thieu`
  MODIFY `ma_nhat_ky` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhat_ky_su_dung_ai`
--
ALTER TABLE `nhat_ky_su_dung_ai`
  MODIFY `ma_nhat_ky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `phan_thuong_moc_gioi_thieu`
--
ALTER TABLE `phan_thuong_moc_gioi_thieu`
  MODIFY `ma_phan_thuong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phien_chat_truc_tiep`
--
ALTER TABLE `phien_chat_truc_tiep`
  MODIFY `ma_phien_chat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `phieu_giam_gia`
--
ALTER TABLE `phieu_giam_gia`
  MODIFY `ma_phieu_giam_gia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phuong_tien_danh_gia`
--
ALTER TABLE `phuong_tien_danh_gia`
  MODIFY `ma_phuong_tien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quan_he_gioi_thieu`
--
ALTER TABLE `quan_he_gioi_thieu`
  MODIFY `ma_quan_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `ma_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `san_pham_flash_sale`
--
ALTER TABLE `san_pham_flash_sale`
  MODIFY `ma_san_pham_flash_sale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `su_kien_hanh_vi`
--
ALTER TABLE `su_kien_hanh_vi`
  MODIFY `ma_su_kien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2111;

--
-- AUTO_INCREMENT cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  MODIFY `ma_thong_bao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `thong_so_ky_thuat`
--
ALTER TABLE `thong_so_ky_thuat`
  MODIFY `ma_thong_so` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  MODIFY `ma_thuong_hieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tin_hieu_gian_lan_gioi_thieu`
--
ALTER TABLE `tin_hieu_gian_lan_gioi_thieu`
  MODIFY `ma_tin_hieu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tin_nhan_chat`
--
ALTER TABLE `tin_nhan_chat`
  MODIFY `ma_tin_nhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `tin_nhan_lien_he`
--
ALTER TABLE `tin_nhan_lien_he`
  MODIFY `ma_lien_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `voucher_nguoi_dung`
--
ALTER TABLE `voucher_nguoi_dung`
  MODIFY `ma_voucher_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `xac_thuc_hai_lop`
--
ALTER TABLE `xac_thuc_hai_lop`
  MODIFY `ma_xac_thuc_hai_lop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `yeu_cau_hoan_tien`
--
ALTER TABLE `yeu_cau_hoan_tien`
  MODIFY `ma_yeu_cau_hoan_tien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `yeu_cau_rut_tien_gioi_thieu`
--
ALTER TABLE `yeu_cau_rut_tien_gioi_thieu`
  MODIFY `ma_yeu_cau_rut_tien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anh_bai_viet`
--
ALTER TABLE `anh_bai_viet`
  ADD CONSTRAINT `anh_bai_viet_ma_bai_viet_fkey` FOREIGN KEY (`ma_bai_viet`) REFERENCES `bai_viet` (`ma_bai_viet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `anh_san_pham`
--
ALTER TABLE `anh_san_pham`
  ADD CONSTRAINT `anh_san_pham_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bien_the_san_pham`
--
ALTER TABLE `bien_the_san_pham`
  ADD CONSTRAINT `bien_the_san_pham_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `chi_tiet_don_hang_ma_bien_the_fkey` FOREIGN KEY (`ma_bien_the`) REFERENCES `bien_the_san_pham` (`ma_bien_the`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_don_hang_ma_don_hang_fkey` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`ma_don_hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_don_hang_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_gio_hang`
--
ALTER TABLE `chi_tiet_gio_hang`
  ADD CONSTRAINT `chi_tiet_gio_hang_ma_bien_the_fkey` FOREIGN KEY (`ma_bien_the`) REFERENCES `bien_the_san_pham` (`ma_bien_the`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_gio_hang_ma_gio_hang_fkey` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`ma_gio_hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_gio_hang_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_nhan_san_pham`
--
ALTER TABLE `chi_tiet_nhan_san_pham`
  ADD CONSTRAINT `chi_tiet_nhan_san_pham_ma_nhan_fkey` FOREIGN KEY (`ma_nhan`) REFERENCES `nhan_san_pham` (`ma_nhan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chi_tiet_nhan_san_pham_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danh_gia_san_pham`
--
ALTER TABLE `danh_gia_san_pham`
  ADD CONSTRAINT `danh_gia_san_pham_ma_chi_tiet_don_hang_fkey` FOREIGN KEY (`ma_chi_tiet_don_hang`) REFERENCES `chi_tiet_don_hang` (`ma_chi_tiet_don_hang`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `danh_gia_san_pham_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `danh_gia_san_pham_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danh_muc_san_pham`
--
ALTER TABLE `danh_muc_san_pham`
  ADD CONSTRAINT `danh_muc_san_pham_ma_danh_muc_cha_fkey` FOREIGN KEY (`ma_danh_muc_cha`) REFERENCES `danh_muc_san_pham` (`ma_danh_muc`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danh_sach_yeu_thich`
--
ALTER TABLE `danh_sach_yeu_thich`
  ADD CONSTRAINT `danh_sach_yeu_thich_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `danh_sach_yeu_thich_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dia_chi_giao_hang`
--
ALTER TABLE `dia_chi_giao_hang`
  ADD CONSTRAINT `dia_chi_giao_hang_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_dich_diem_thuong`
--
ALTER TABLE `giao_dich_diem_thuong`
  ADD CONSTRAINT `giao_dich_diem_thuong_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_dich_tai_khoan`
--
ALTER TABLE `giao_dich_tai_khoan`
  ADD CONSTRAINT `giao_dich_tai_khoan_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giao_dich_vi_gioi_thieu`
--
ALTER TABLE `giao_dich_vi_gioi_thieu`
  ADD CONSTRAINT `giao_dich_vi_gioi_thieu_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `gio_hang_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoa_hong_gioi_thieu`
--
ALTER TABLE `hoa_hong_gioi_thieu`
  ADD CONSTRAINT `hoa_hong_gioi_thieu_ma_don_hang_fkey` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`ma_don_hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoa_hong_gioi_thieu_ma_nguoi_duoc_gioi_thieu_fkey` FOREIGN KEY (`ma_nguoi_duoc_gioi_thieu`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoa_hong_gioi_thieu_ma_nguoi_gioi_thieu_fkey` FOREIGN KEY (`ma_nguoi_gioi_thieu`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoi_dap_san_pham`
--
ALTER TABLE `hoi_dap_san_pham`
  ADD CONSTRAINT `hoi_dap_san_pham_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoi_dap_san_pham_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ho_so_gioi_thieu`
--
ALTER TABLE `ho_so_gioi_thieu`
  ADD CONSTRAINT `ho_so_gioi_thieu_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lich_su_dang_nhap`
--
ALTER TABLE `lich_su_dang_nhap`
  ADD CONSTRAINT `lich_su_dang_nhap_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lich_su_trang_thai_don_hang`
--
ALTER TABLE `lich_su_trang_thai_don_hang`
  ADD CONSTRAINT `lich_su_trang_thai_don_hang_ma_don_hang_fkey` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`ma_don_hang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhat_ky_he_thong_gioi_thieu`
--
ALTER TABLE `nhat_ky_he_thong_gioi_thieu`
  ADD CONSTRAINT `nhat_ky_he_thong_gioi_thieu_ma_nguoi_bi_tac_dong_fkey` FOREIGN KEY (`ma_nguoi_bi_tac_dong`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `nhat_ky_he_thong_gioi_thieu_ma_nguoi_thuc_hien_fkey` FOREIGN KEY (`ma_nguoi_thuc_hien`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phan_thuong_moc_gioi_thieu`
--
ALTER TABLE `phan_thuong_moc_gioi_thieu`
  ADD CONSTRAINT `phan_thuong_moc_gioi_thieu_ma_moc_thanh_tich_fkey` FOREIGN KEY (`ma_moc_thanh_tich`) REFERENCES `moc_thanh_tich_gioi_thieu` (`ma_moc_thanh_tich`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phan_thuong_moc_gioi_thieu_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phan_thuong_moc_gioi_thieu_ma_phieu_giam_gia_fkey` FOREIGN KEY (`ma_phieu_giam_gia`) REFERENCES `phieu_giam_gia` (`ma_phieu_giam_gia`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phien_chat_truc_tiep`
--
ALTER TABLE `phien_chat_truc_tiep`
  ADD CONSTRAINT `phien_chat_truc_tiep_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phien_chat_truc_tiep_ma_quan_tri_vien_fkey` FOREIGN KEY (`ma_quan_tri_vien`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phuong_tien_danh_gia`
--
ALTER TABLE `phuong_tien_danh_gia`
  ADD CONSTRAINT `phuong_tien_danh_gia_ma_danh_gia_fkey` FOREIGN KEY (`ma_danh_gia`) REFERENCES `danh_gia_san_pham` (`ma_danh_gia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quan_he_gioi_thieu`
--
ALTER TABLE `quan_he_gioi_thieu`
  ADD CONSTRAINT `quan_he_gioi_thieu_ma_nguoi_duoc_gioi_thieu_fkey` FOREIGN KEY (`ma_nguoi_duoc_gioi_thieu`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quan_he_gioi_thieu_ma_nguoi_gioi_thieu_fkey` FOREIGN KEY (`ma_nguoi_gioi_thieu`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ma_danh_muc_fkey` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc_san_pham` (`ma_danh_muc`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `san_pham_ma_thuong_hieu_fkey` FOREIGN KEY (`ma_thuong_hieu`) REFERENCES `thuong_hieu` (`ma_thuong_hieu`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `san_pham_flash_sale`
--
ALTER TABLE `san_pham_flash_sale`
  ADD CONSTRAINT `san_pham_flash_sale_ma_chien_dich_fkey` FOREIGN KEY (`ma_chien_dich`) REFERENCES `chien_dich_flash_sale` (`ma_chien_dich`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `san_pham_flash_sale_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  ADD CONSTRAINT `thong_bao_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thong_so_ky_thuat`
--
ALTER TABLE `thong_so_ky_thuat`
  ADD CONSTRAINT `thong_so_ky_thuat_ma_san_pham_fkey` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`ma_san_pham`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tin_hieu_gian_lan_gioi_thieu`
--
ALTER TABLE `tin_hieu_gian_lan_gioi_thieu`
  ADD CONSTRAINT `tin_hieu_gian_lan_gioi_thieu_ma_quan_he_fkey` FOREIGN KEY (`ma_quan_he`) REFERENCES `quan_he_gioi_thieu` (`ma_quan_he`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tin_nhan_chat`
--
ALTER TABLE `tin_nhan_chat`
  ADD CONSTRAINT `tin_nhan_chat_ma_phien_chat_fkey` FOREIGN KEY (`ma_phien_chat`) REFERENCES `phien_chat_truc_tiep` (`ma_phien_chat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `voucher_nguoi_dung`
--
ALTER TABLE `voucher_nguoi_dung`
  ADD CONSTRAINT `voucher_nguoi_dung_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `voucher_nguoi_dung_ma_phieu_giam_gia_fkey` FOREIGN KEY (`ma_phieu_giam_gia`) REFERENCES `phieu_giam_gia` (`ma_phieu_giam_gia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `xac_thuc_hai_lop`
--
ALTER TABLE `xac_thuc_hai_lop`
  ADD CONSTRAINT `xac_thuc_hai_lop_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `yeu_cau_hoan_tien`
--
ALTER TABLE `yeu_cau_hoan_tien`
  ADD CONSTRAINT `yeu_cau_hoan_tien_ma_don_hang_fkey` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`ma_don_hang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yeu_cau_hoan_tien_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `yeu_cau_rut_tien_gioi_thieu`
--
ALTER TABLE `yeu_cau_rut_tien_gioi_thieu`
  ADD CONSTRAINT `yeu_cau_rut_tien_gioi_thieu_ma_nguoi_dung_fkey` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
