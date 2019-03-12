-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 20, 2018 lúc 03:11 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'Apple'),
(5, 'Asus'),
(7, 'Nokia'),
(3, 'Oppo'),
(2, 'SamSung'),
(4, 'Sony'),
(6, 'Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `color`, `html`) VALUES
(1, 'black', '#000000'),
(2, 'gold', '#ffff00'),
(3, 'silver', '#cccccc'),
(4, 'rose', '#ff007f'),
(5, 'blue-coral', '#5656ff'),
(6, 'white', '#ffffff'),
(7, 'Orchid-Grey', '#4c4c4c'),
(8, 'red', '#ff0000'),
(9, 'orange', '#ffff56'),
(10, 'Lilac-Purple', '#7f007f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_product`, `id_user`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Điện thoại đẹp quá hình là muốn mua', '2018-04-03 09:06:08', '0000-00-00 00:00:00'),
(2, 1, 1, 'Bạn thích mình cho bạn 1 cái . Bạn nổ cho mình cái địa chỉ mình ship tới tận giường', '2018-04-03 09:06:57', '0000-00-00 00:00:00'),
(4, 1, 2, 'đù thế thì ngon trym', '2018-04-04 16:38:18', '2018-04-04 16:38:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_product`
--

CREATE TABLE `group_product` (
  `id` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_product`
--

INSERT INTO `group_product` (`id`, `id_brand`, `name`) VALUES
(1, 1, 'iphoneX'),
(2, 1, 'iphone 8'),
(3, 1, 'iphone 8 plus'),
(4, 1, 'iphone 7 plus'),
(5, 1, 'iphone 7'),
(6, 2, 'Samsung Galaxy Note'),
(8, 2, '	\r\nSamsung Galaxy S8'),
(9, 2, '	\r\nSamsung Galaxy S7'),
(11, 3, 'OPPO F5'),
(12, 3, 'OPPO F3'),
(13, 3, 'OPPO F1'),
(14, 4, 'Sony Xperia XZ'),
(15, 4, 'Sony Xperia XA'),
(16, 1, 'iphone 6'),
(17, 1, 'iphone 6s'),
(18, 1, 'iphone 6s plus'),
(20, 2, 'Samsung Galaxy S9'),
(22, 2, 'Samsung Galaxy A'),
(23, 2, 'Samsung Galaxy J'),
(24, 3, 'OPPO A'),
(25, 7, 'Nokia'),
(26, 5, 'ASUS Zenfone'),
(27, 6, 'Xiaomi Redmi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`id`, `id_product`, `image`) VALUES
(3, 2, 'a2.jpg'),
(4, 3, 'b1.jpg'),
(5, 4, 'c1.jpg'),
(6, 5, 'd1.jpg'),
(7, 7, 'iphonex.jpg'),
(8, 7, 'iphonex1.jpg'),
(9, 7, 'iphonex2.jpg'),
(10, 7, 'iphonex3.jpg'),
(11, 6, 's8.jpg'),
(12, 6, 's82.jpg'),
(13, 6, 's83.jpg'),
(14, 6, 's84.jpg'),
(15, 8, 'iphone8p.jpg'),
(16, 8, 'iphone8p1.jpg'),
(17, 8, 'iphone8p3.jpg'),
(18, 9, 'ip8.jpg'),
(19, 10, 'ip8.jpg'),
(20, 11, 'iphon6.jpg'),
(21, 12, 'iphone6-32GB.jpg'),
(22, 12, 'iphone6-32GB-1.jpg'),
(23, 13, '636159432321322011_ip7p-black-1.jpg'),
(24, 14, '636159432321322011_ip7p-black-1.jpg'),
(25, 15, 's9.jpg'),
(26, 15, 's92.jpg'),
(27, 16, 's91.jpg'),
(28, 16, 's92.jpg'),
(29, 16, 's9.jpg'),
(30, 15, 's91.jpg'),
(31, 15, 's92.jpg'),
(32, 15, 's93.jpg'),
(33, 16, 's93.jpg'),
(34, 16, 's92.jpg'),
(35, 16, 's91.jpg'),
(36, 17, 's8o.jpg'),
(37, 18, 's9.jpg'),
(38, 18, 's91.jpg'),
(39, 18, 's92.jpg'),
(40, 18, 's93.jpg'),
(41, 19, 's8po.jpg'),
(42, 19, 's8po1.jpg'),
(43, 19, 's8po2.jpg'),
(44, 20, '636396217066191623_1.jpg'),
(45, 20, '636396217240361623_2.jpg'),
(46, 21, '636523998806629206_1.jpg'),
(47, 21, '636532550569608537_636523998806629206_2.jpg'),
(48, 22, '636494459961121562_1.jpg'),
(49, 22, '636523984491628734_2.jpg'),
(50, 23, 'samsung-galaxy-a7-gold-2017-1.jpg'),
(51, 23, 'samsung-galaxy-a7-gold-2017-2.jpg'),
(52, 23, 'samsung-galaxy-a5-gold-2017-3.jpg'),
(55, 24, 'samsung-galaxy-a7-gold-2017-1.jpg'),
(56, 24, 'samsung-galaxy-a7-gold-2017-2.jpg'),
(57, 24, 'samsung-galaxy-a7-gold-2017-3.jpg'),
(58, 25, '636447215496605018_1.jpg'),
(59, 25, '636447215496605018_2.jpg'),
(60, 26, '636529900670656200_1.jpg'),
(61, 26, '636529900670500211_2.jpg'),
(62, 27, '636450463270636703_1.jpg'),
(63, 27, '636450463270324707_2.jpg'),
(64, 28, 'ubwu_oppoa83.jpg'),
(65, 28, 'oppoa831.jpg'),
(66, 29, 'oppoa71.jpg'),
(67, 29, 'oppoa71_2.jpg'),
(68, 30, 'oppo-f1s-2017-64gb.jpg'),
(69, 30, 'oppo-f1s-2017-64gb-2.jpg'),
(70, 30, 'oppo-f1s-2017-64gb-3.jpg'),
(71, 31, 'oppo-f1-plus.jpg'),
(72, 31, 'oppo-f1-plus2.jpg'),
(73, 32, 'OPPO F3.png'),
(74, 32, 'OPPO F3-1.png'),
(75, 33, 'oppo-f3-plus.png'),
(76, 33, 'oppo-f3-plus1.png'),
(78, 34, 'oppo-f3-lite-1.jpg'),
(79, 34, 'oppo-f3-lite-2.jpg'),
(80, 34, 'oppo-f3-lite-3.jpg'),
(81, 35, 'oppo-f5-6gb-1.jpg'),
(82, 35, 'oppo-f5-6gb-2.jpg'),
(83, 36, 'oppo-f5_1.jpg'),
(84, 36, 'oppo-f5_2.jpg'),
(85, 37, 'sony-xperia-xz-premium1.jpg'),
(86, 37, 'sony-xperia-xz-premium-2.jpg'),
(87, 38, 'sony-xperia-xzs.jpg'),
(88, 38, 'sony-xperia-xzs-1.png'),
(89, 39, '_xz-black-1.jpg'),
(90, 39, '_xz-black-1-2.jpg'),
(91, 39, '_xz-black-12.jpg'),
(92, 40, 'sony-xperia-xa1-ultra1.jpg'),
(93, 40, 'sony-xperia-xa1-ultra2.jpg'),
(94, 41, 'sony-xperia-xa-ultra1.jpg'),
(95, 41, 'sony-xperia-xa-ultra2.jpg'),
(96, 42, 'sony-xperia-xa1-plus1.jpg'),
(97, 42, 'sony-xperia-xa1-plus_2.jpg'),
(98, 43, 'asus-zenfone-4-max-pro_2.jpg'),
(99, 43, 'asus-zenfone-4-max-pro_1.jpg'),
(100, 44, 'asus-zenfone-max-plus-m1_1.jpg'),
(101, 44, 'asus-zenfone-max-plus-m1_2.jpg'),
(102, 45, 'xiaomi-mi-a1_1.jpg'),
(103, 45, 'xiaomi-mi-a1_2.jpg'),
(104, 45, 'xiaomi-mi-a1_3.jpg'),
(105, 45, 'xiaomi-mi-a1_4.jpg'),
(106, 46, 'xiaomi-redmi-note-5_1.jpg'),
(107, 47, 'nokia-8_1.jpg'),
(108, 47, 'nokia-8_2.jpg'),
(109, 48, 'nokia-6-1.png'),
(110, 48, 'nokia-6-2.png'),
(111, 49, 'nokia-5_1.jpg'),
(112, 49, 'nokia-5_2.jpg'),
(113, 1, 'a1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `name`, `summary`, `content`, `image`, `created_at`, `id_user`) VALUES
(1, 'Tổng hợp đánh giá iPhone X: Hoàn thiện, khác biệt và đắt', 'Các trang quốc tế đánh giá rất cao độ hoàn thiện trong thiết kế của iPhone X cũng như các tính.', '<h3>iPhone X</h3> chắc chắn là chiếc iPhone tốt nhất từng ra đời. Nó mỏng, mạnh mẽ, thể hiện những ý tưởng đầy tham vọng về cách sử dụng camera trên smarphone và đưa ngôn ngữ thiết kế của điện thoại đến một nơi lạ lẫm.\r\n\r\nNếu là người đặt trước nó, bạn sẽ hạnh phúc mặc dù phải bước vào một hành tình khám phá cách Face ID hoạt động sao cho tốt nhất với mình.\r\n\r\nTong hop danh gia iPhone X: Hoan thien, khac biet va dat hinh anh 1\r\nTuy nhiên, nếu bạn chưa đặt hàng, cũng không có gì quá mất mát cả. iPhone X có thể là bước tiến lớn về phần cứng nhưng nó vẫn chạy iOS 11, giống với nhiều mẫu iPhone khác. Bạn sẽ không cảm thấy thiếu thốn gì, ngoại trừ tính năng Animoji.\r\n\r\nFace ID sở hữu một sự khởi đầu tốt nhưng vẫn có vấn đề trong các điều kiện ánh sáng khác nhau. Và cho đến khi các ứng dụng được cập nhật, bạn vẫn chưa thể tận dụng tối đa màn hình đẹp của iPhone X.\r\n\r\nCũng phải nói thêm, iPhone X siêu đắt. Với nhiều người, nó đáng giá. Với một số khác, nó là mức giá điên rồ.\r\n\r\nDưới đây là đánh giá iPhone X từ những trang tin Công nghệ hàng đầu thế giới:\r\n\r\nEngadget\r\nNút Home truyền thống đã biến mất trên iPhone X, phần đó giờ dành cho màn hình. Nó là thay đổi lớn nhất trên iPhone từ trước đến nay.\r\n\r\nVề mặt thẩm mỹ, iPhone X cho cảm giác tuyệt vời, với mức độ vừa vặn và hoàn thiện cực kỳ ấn tượng, ngay cả với tiêu chuẩn Apple. Tôi đặc biệt thích khung thép không gỉ và phần kính bao phủ mặt trước và sau của máy hòa nhập với nó một cách tự nhiên.\r\n\r\nTong hop danh gia iPhone X: Hoan thien, khac biet va dat hinh anh 2\r\nHãy nhìn vào màn hình, tấm nền OLED 5,8 inch trải rộng gần như khắp bề mặt chiếc điện thoại. Nó là một trong những màn hình ấn tượng nhất tôi từng gặp trên một chiếc di động. Trong khi Galaxy Note 8 cho màu sắc sống động thì màu của iPhone X tự nhiên hơn.\r\n\r\nTất nhiên, nó không hoàn hảo. Sử dụng bộ chuyển đổi ứng dụng mới có vẻ chậm hơn đôi chút so với nhấn đúp nút Home. Việc tắt một ứng dụng cũng mất thời gian hơn: Bạn phải nhấn và giữ cửa sổ, sau đó chạm vào nút tắt ở góc.\r\n\r\nTrên iPhone X, có 2 tính năng bạn không thể bỏ qua: Face ID và Animoji. Khi mặt của tôi đối diện với Face ID, quá tình mở khóa mất khoảng dưới 20 giây. Quá trình này nhanh gần tương đương với sử dụng Touch ID.\r\n\r\nTrong khi đó, Animoji hoạt động rất tốt và sẽ sớm trở thành hiện tượng. Tôi không muốn nói điều này nhưng tôi đã chấp nhận nó. Tôi cũng cần cảnh báo: bạn càng dành nhiều thời gian cho những biểu tượng đáng yêu mô phỏng gương mặt của mình này, bạn sẽ càng yêu thích nó.', 'top-tech-bloggers.jpg', '2018-04-08 14:32:06', 2),
(2, 'Apple là thương hiệu đầu tiên tạo ra “tai thỏ” ', 'Tai thỏ - Một khái niệm mới xuất hiện trong thời gian vừa qua, nhưng đã trở thành xu hướng thiết kế cho những thương hiệu.', 'Vào những ngày cuối tháng 8, chiếc điện thoại mang tên Essential Phone đã được ra đời, sản phẩm này là nền móng cho những nhà sản xuất di động hiện nay. Điểm nổi bật của Essential Phone chính là cạnh trên của màn hình, nơi xuất hiện một điểm khuyết chứa duy nhất camera selfie và hai phần màn hình chứa thanh thông báo trạng thái mà chúng ta thường gọi là “Tai thỏ”.\r\n\r\nEssential Phone hoạt động trên nền tảng Android gốc qua đó đảm bảo được tính ổn định hệ thống, người tạo ra mẫu smartphone này cũng muốn thông qua Esssential Phone để khẳng định Android gốc mới thực sự là nền tảng hệ điều hành đáng sử dụng. Mặc dù có rất nhiều tính đột phá trong công nghệ màn hình, thiết kế và cả nền tảng phần mềm, nhưng Essential Phone không được thương mại hóa rộng rãi ở nhiều thị trường, vì vậy độ phổ biến của chiếc máy này vẫn còn rất hạn hẹp', 'mr-technology-post.jpg', '2018-04-02 08:50:48', 1),
(3, 'Tất tần tật thông tin về Moto G6 & G6 Play', 'Nhiều tin đồn cho biết, Lenovo sẽ công bố dòng Moto G6 và Moto G6 Play', 'Đối với Moto G thế hệ thứ 6, Lenovo đang chuyển sang xu hướng thiết kế màn hình hiển thị tỉ lệ 18:9 hiện đại mà hãng gọi là Max Vision. Cụ thể, Moto G6 sở hữu màn hình 5.7 inch Full HD+ được bảo vệ bằng mặt kính cường lực Gorilla Glass.\r\n\r\nCùng với đó mặt lưng của Moto G6 cũng được thiết kế lại được làm từ kính cong 3D. Tuy nhiên, máy vẫn có tính năng kháng nước và bụi. Moto G6 trang bị cụm camera kép sau nhưng nhà bán lẻ Frys không đề cập đến thông số của hai camera này. Nhưng họ chỉ cho biết rằng camera trước là một cảm biến 8 MP đi kèm với đèn flash LED trợ sáng.', 'blogging-428955_1280.jpg', '2018-04-02 08:51:00', 2),
(4, 'Minigame: \"Chinh phục bóng tối, gặp người nói dối?\", tặng Galaxy J7 Pro!', '1/4, Team Tin công nghệ Thế Giới Di Động tổ chức 01 minigame \"Chinh phục bóng tối, gặp người nói dối ngày Cá tháng Tư?\", tặng 01 chiếc Galaxy J7 Pro', 'Thời gian ngay từ bây giờ đến 23h59 ngày 05/04/2018. Cách tham gia rất đơn giản:\r\n\r\nĐầu tiên, bạn giải câu đố này và trả lời vào ô bình luận cuối bài:\r\n\r\nCó một khách hàng đi tìm mua Galaxy J7 Pro, đến ngã 3, bên trái là đường đến khu phố chuyên nói dối (không bán Galaxy J7 Pro) và bên phải là đường đến khu phố chuyên nói thật (có siêu thị Thế Giới Di Động bán Galaxy J7 Pro).\r\n\r\nNgười khách hàng này đến gặp một người dân biết nơi bán Galaxy J7 Pro ở ở ngã 3, nhưng đoán biết người dân này là người ở khu phố chuyên nói dối. Người khách hàng hỏi người dân này chỉ một câu hỏi duy nhất, mà khách hàng xác định được nơi nào có Thế Giới Di Động đang bán Galaxy J7 Pro.\r\n\r\nVậy, người khách hàng đã hỏi câu gì? (câu trả lời sẽ được cập nhật khi kết thúc minigame).', '7-tech-blogging-ideas.jpg', '2018-04-02 08:51:22', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `read_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifiable_id` int(11) NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `data`, `read_at`, `notifiable_id`, `notifiable_type`, `updated_at`, `created_at`) VALUES
('051107c5-1b4e-4264-b676-0be10fd97c82', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', '2018-04-23 16:26:28', 1, 'App\\User', '2018-04-23 09:26:28', '2018-04-23 08:58:06'),
('08b255c5-82c0-4991-83ac-0ae4ed4432e6', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', '2018-04-23 14:57:08', 1, 'App\\User', '2018-04-23 07:57:08', '2018-04-22 08:50:40'),
('3b9b6fe5-0f61-4c20-87b6-5b0887dd30f1', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', NULL, 6, 'App\\User', '2018-04-22 07:31:25', '2018-04-22 07:31:25'),
('40f04142-8b9e-4368-a75c-e6db8c53215f', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', NULL, 3, 'App\\User', '2018-04-22 08:50:40', '2018-04-22 08:50:40'),
('43160be6-07ef-48f7-a848-d8fd7add02e5', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', NULL, 7, 'App\\User', '2018-04-22 08:50:40', '2018-04-22 08:50:40'),
('5ffb9807-1845-4755-b47f-e3d8c8efe53e', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', '2018-04-22 15:25:27', 1, 'App\\User', '2018-04-22 08:25:27', '2018-04-22 07:31:24'),
('65de1a12-326a-47dc-a8a7-e857410ad3b3', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', NULL, 4, 'App\\User', '2018-04-22 08:50:40', '2018-04-22 08:50:40'),
('791f3ec1-a2f7-482e-987a-ac32ef49607c', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', NULL, 7, 'App\\User', '2018-04-22 07:31:25', '2018-04-22 07:31:25'),
('85721770-9075-48ed-bd8a-73217d9fc4a9', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', '2018-04-22 15:44:23', 2, 'App\\User', '2018-04-22 08:44:23', '2018-04-22 07:31:24'),
('86b2fe53-00f9-4f40-b34a-18e6fb1be308', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', NULL, 8, 'App\\User', '2018-04-22 07:31:25', '2018-04-22 07:31:25'),
('886862f7-ff2e-4fe9-b3a4-e4f45e5f9d41', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 6, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06'),
('8ef35e5e-3c4f-4ea3-b722-1ac77a5d0537', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', NULL, 5, 'App\\User', '2018-04-22 07:31:25', '2018-04-22 07:31:25'),
('9b882306-7543-427d-928b-7beda35693bc', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', '2018-04-22 15:50:44', 2, 'App\\User', '2018-04-22 08:50:44', '2018-04-22 08:50:40'),
('9c5aadec-611d-4f23-88e9-5f92a97d146e', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 7, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06'),
('afa22f69-660d-4e95-919e-1254ef1574e1', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 8, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06'),
('b52de3e5-b48e-4876-99e9-47254f83893c', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', NULL, 5, 'App\\User', '2018-04-22 08:50:40', '2018-04-22 08:50:40'),
('b7d98d02-22c2-4d4f-8089-5f08a15fdb97', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', NULL, 6, 'App\\User', '2018-04-22 08:50:40', '2018-04-22 08:50:40'),
('bd8bb3e2-2fc3-413d-aa86-88f12defcac2', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 2, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06'),
('beb7a4a0-0b3a-4822-8ad4-cdf619c0d4a3', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 3, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06'),
('d48f63c2-a556-4555-a6c0-321e93c88b25', 'App\\Notifications\\order', '{\"data\":\"We have new order 23 time 22\\/04\\/18 -15:50 PM\"}', NULL, 8, 'App\\User', '2018-04-22 08:50:40', '2018-04-22 08:50:40'),
('dc0280c1-3d54-4df9-8540-3b41f4a24b1d', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', NULL, 3, 'App\\User', '2018-04-22 07:31:25', '2018-04-22 07:31:25'),
('dce856c3-7584-4441-a2aa-7f8b1b6b1c95', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 9, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06'),
('e508c69a-cb60-41a5-960b-f5274c4fc019', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 5, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06'),
('e8caa088-e2bd-40bf-a344-eab0a6ad3bf2', 'App\\Notifications\\order', '{\"data\":\"We have New Order\"}', NULL, 4, 'App\\User', '2018-04-22 07:31:25', '2018-04-22 07:31:25'),
('eafaddf7-3f00-44a3-81fa-ed0a2619dc5a', 'App\\Notifications\\order', '{\"data\":\"We have new order 24 time 23\\/04\\/18 -15:58 PM\"}', NULL, 4, 'App\\User', '2018-04-23 08:58:06', '2018-04-23 08:58:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `payment`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hoàn Thành', 83970000, '2018-03-13 11:16:58', '2018-04-15 12:02:28'),
(4, 4, 'đang xử lý', 23990000, '2018-03-06 18:13:22', '2018-04-12 18:13:22'),
(7, 8, 'đang xử lý', 22490000, '2018-03-13 07:08:35', '2018-04-14 07:08:35'),
(8, 4, 'đang xử lý', 12380000, '2018-02-12 16:42:38', '2018-04-14 16:42:38'),
(9, 1, 'đang xử lý', 63960000, '2018-04-25 18:11:38', '2018-04-19 17:48:25'),
(10, 1, 'đang xử lý', 29990000, '2018-02-11 17:58:52', '2018-04-19 17:58:52'),
(11, 1, 'đang xử lý', 15998000, '2018-04-25 18:11:41', '2018-04-20 07:31:46'),
(12, 1, 'đang xử lý', 57580000, '2018-04-25 18:11:43', '2018-04-20 07:35:46'),
(13, 1, 'đang xử lý', 28790000, '2018-04-25 18:11:46', '2018-04-21 18:33:43'),
(14, 1, 'đang xử lý', 28790000, '2018-01-01 18:35:13', '2018-04-21 18:35:13'),
(15, 1, 'đang xử lý', 28790000, '2018-04-25 18:11:50', '2018-04-21 18:38:01'),
(16, 1, 'đang xử lý', 23990000, '2017-12-31 18:38:50', '2018-04-21 18:38:50'),
(17, 1, 'đang xử lý', 23990000, '2018-04-25 18:11:54', '2018-04-21 18:39:21'),
(18, 2, 'Hoàn Thành', 77370000, '2018-01-12 07:18:48', '2018-04-22 07:18:48'),
(19, 2, 'Hoàn Thành', 51580000, '2018-04-25 18:12:00', '2018-04-22 07:26:27'),
(20, 2, 'Hoàn Thành', 51580000, '2018-04-25 18:12:03', '2018-04-22 07:28:07'),
(21, 2, 'Hoàn Thành', 51580000, '2018-04-25 18:12:05', '2018-04-22 07:31:24'),
(22, 2, 'Hoàn Thành', 79950000, '2018-04-25 18:12:08', '2018-04-22 08:50:16'),
(23, 2, 'Hoàn Thành', 79950000, '2018-04-25 18:12:09', '2018-04-22 08:50:40'),
(24, 9, 'Hoàn Thành', 41997000, '2018-04-25 18:12:10', '2018-04-23 08:58:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_item`
--

CREATE TABLE `order_item` (
  `id_product_color` int(11) NOT NULL,
  `id_orders` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_item`
--

INSERT INTO `order_item` (`id_product_color`, `id_orders`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 23990000, '2018-03-21 15:20:33', '0000-00-00 00:00:00'),
(1, 4, 1, 23990000, '2018-04-12 18:13:22', '2018-04-12 18:13:22'),
(2, 16, 1, 23990000, '2018-04-21 18:38:50', '2018-04-21 18:38:50'),
(2, 17, 1, 23990000, '2018-04-21 18:39:21', '2018-04-21 18:39:21'),
(3, 1, 2, 29990000, '2018-03-21 16:05:40', '0000-00-00 00:00:00'),
(4, 10, 1, 29990000, '2018-04-19 17:58:52', '2018-04-19 17:58:52'),
(5, 8, 2, 6190000, '2018-04-14 16:42:38', '2018-04-14 16:42:38'),
(7, 7, 1, 22490000, '2018-04-14 07:08:35', '2018-04-14 07:08:35'),
(10, 9, 4, 15990000, '2018-04-19 17:48:25', '2018-04-19 17:48:25'),
(12, 22, 5, 15990000, '2018-04-22 08:50:16', '2018-04-22 08:50:16'),
(12, 23, 5, 15990000, '2018-04-22 08:50:40', '2018-04-22 08:50:40'),
(20, 12, 2, 28790000, '2018-04-20 07:35:46', '2018-04-20 07:35:46'),
(20, 13, 1, 28790000, '2018-04-21 18:33:44', '2018-04-21 18:33:44'),
(20, 14, 1, 28790000, '2018-04-21 18:35:13', '2018-04-21 18:35:13'),
(20, 15, 1, 28790000, '2018-04-21 18:38:01', '2018-04-21 18:38:01'),
(22, 18, 3, 25790000, '2018-04-22 07:18:49', '2018-04-22 07:18:49'),
(22, 19, 2, 25790000, '2018-04-22 07:26:28', '2018-04-22 07:26:28'),
(23, 20, 2, 25790000, '2018-04-22 07:28:07', '2018-04-22 07:28:07'),
(23, 21, 2, 25790000, '2018-04-22 07:31:24', '2018-04-22 07:31:24'),
(28, 11, 2, 7999000, '2018-04-20 07:31:47', '2018-04-20 07:31:47'),
(30, 24, 3, 13999000, '2018-04-23 08:58:05', '2018-04-23 08:58:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_group_product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `screen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `camera` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `os` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chipset` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cpu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `screenresolution` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `displaytype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fcarema` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rcarema` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wirelesstechnology` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `power` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sim` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Bluetooth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `more` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `id_group_product`, `price`, `content`, `status`, `version`, `screen`, `camera`, `ram`, `storage`, `os`, `chipset`, `cpu`, `size`, `screenresolution`, `displaytype`, `fcarema`, `rcarema`, `wirelesstechnology`, `power`, `body`, `sim`, `Bluetooth`, `usb`, `more`) VALUES
(1, 'iPhone X 64GB', 1, 29990000, 'iPhone X 64GB đã lột xác hoàn toàn với việc loại bỏ nút Home truyền thống, màn hình tràn viền và camera kép ở phía sau đã được đặt lại vị trí theo chiều dọc. Khung viền từ thép sáng bóng bền bỉ và mặt lưng kính với các góc bo tròn dễ dàng cầm nắm. Có thể nói đây là một thiết kế khá đột phá mà lâu lắm rồi Apple mới thể hiện lại. Người dùng cần phải trên tay thì mới cảm nhận được hết nét tinh tế và sang trọng của sản phẩm.', 'new', 'cong ty', '5.8 inchs(2436 x 1125 pixel) Super Retina HD', '7.0 MP/ Dual 12.0 MP', '3 GB', '64 GB', 'iOS 11', 'Apple A11 Bionic', 'Hexa-core (2x Monsoon + 4x Mistral)', '143.6 x 70.9 x 7.7 mm', '2436 x 1125 pixel', 'Super Retina HD', '7.0 MP', 'Dual 12.0 MP', '4G LTE', '2716 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim,1 khe cắm', 'v5.0', 'Lightning', NULL),
(2, 'iPhone 8 Plus 64GB', 3, 23990000, 'iPhone 8 Plus 64Gb đã thay đổi về mặt thiết kế so với những đời iPhone cũ: mặt sau đã chuyển sang chất liệu kính bo cong 2.5D đẹp mắt hơn, loại bỏ viền ăng-ten, bộ khung kim loại cứng cáp hơn cùng với 7 lớp xử lý màu tăng mạnh khả năng chống trầy xước. Nhìn tổng thể thì không có nhiều thay đổi so với iPhone 7 Plus nhưng iPhone 8 Plus 64Gb lại mang đến cảm giác tinh tế sang trọng hơn rất nhiều.', 'new', 'công ty', '5.5 inchs HD Retina', '	Camera sau: Dual 12 MP, (28mm, f/1.8, OIS & 56mm, f/2.8), Camera trước: 7 MP, f/2.2', '3 GB', NULL, 'iOS 11', 'Apple A11 Bionic', 'Hexa-core (2x Monsoon + 4x Mistral)', '158.4 x 78.1 x 7.5 mm', '1920 x 1080 pixels', 'Retina HD', '7.0 MP', 'Dual 12.0 MP', '4G LTE', '2675 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim', 'v5.0', 'Lightning', NULL),
(3, 'Samsung Galaxy Note 8', 6, 22490000, 'Chiếc Galaxy Note có màn hình lớn nhất từ trước đến nay sẽ đưa bạn đến những trải nghiệm rộng lớn chưa từng có. Với màn hình vô cực lên tới 6.3 inch, Galaxy Note 8 đã phá vỡ mọi giới hạn. Nhưng điều tuyệt vời hơn là mọi thứ vẫn vừa vặn khi trong tay bạn là một chiếc máy màn hình cong không viền đẳng cấp.', 'new', 'công ty', '6.3 inch', 'Chính: Dual 12.0 MP, Phụ: 8.0 MP', '6 GB', '64 GB', 'Android 7.1.1 (Nougat)', 'Exynos 8895', 'Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm', '162.5 x 74.8 x 8.6 mm', '2960 x 1440 pixels', 'Super AMOLED', '8.0 MP', 'Dual 12.0 MP', '4G', '3300 mAh', 'Thanh (thẳng) + Cảm ứng', '2 Sim', 'v5.0', 'USB Type-C', NULL),
(4, 'OPPO F5 Youth', 11, 6190000, 'Là một phiên bản rút gọn về cấu hình của chiếc OPPO F5 thế nên F5 Youth có ngoại hình gần như giống hoàn toàn. Vẫn sở hữu thiết kế nguyên khối với lớp vỏ ngoài của máy được hoàn thiện từ chất liệu nhựa sơn mờ đẹp mắt, mặt lưng của máy được bo cong nhẹ về cạnh, mỏng và liền mạch, điểm khác biệt duy nhất so với F5 chính là hai dải ăng-ten dạng chữ U được cắt CNC bóng nổi bật so với vỏ máy đã bị lược bỏ.', 'new', 'công ty', '6 inchs', 'Công nghệ Selfie A.I Beauty, Selfie bằng cử chỉ, Chế độ làm đẹp', '3 GB', '32 GB', 'Andoid 7.1', 'Mediatek MT6763T Helio P23', '8 nhân 2.5 Ghz', '156.5 x 76 x 7.5 mm', '1080 x 2160 Pixels', 'IPS LCD', '16 MP', '13 MP', '4G', '3200 mAh', 'Nhựa (mặt kính cong 2,5D)', 'Nano sim Dual Sim', 'v4.2, A2DP, LE', 'Micro USB', NULL),
(5, 'Sony Xperia XZ1', 14, 15990000, 'Sony vẫn tiếp tục giữ cho mình phong cách thiết kế cũ, mặc cho các hãng khác đã tiến tới giai đoạn màn hình \"vô cực\". Ở dòng Xperia XZ1, thiết kế mỏng hơn với độ dày 7,4mm, khiến chiếc điện thoại trở nên tinh tế và sang trọng hơn, Phần viền xung quanh được làm liền mạch với phần lưng bằng kim loại với 3 dải ăng ten bo sóng khá lạ mắt. Hai cạnh trên dưới của máy cũng được bo cong, không có gờ nổi lên và được bọc nhựa ngoài cùng để gia cố máy chắc hơn, gia tăng độ bền.', 'new', 'công ty', '5.2 inchs', 'Chính: 19.0 MP, Phụ: 13.0 MP', '4 GB', '64 GB', 'Android 8 (Oreo)', 'Qualcomm Snapdragon 835', '4 nhân 2.45 GHz Kryo & 4 nhân 1.9 GHz Kryo', '148 x 73 x 7.4mm', '1080 x 1920 pixel', 'Full HD-HDR', '13MP', '19MP', 'LTE (4G) Cat11', '2700 mah', 'Kim loại', 'Nano sim Dual Sim', 'Bluetooth® 4.2', 'USB Type C', NULL),
(6, 'SamSung Galaxy S8 plus', 8, 17990000, 'Samsung S8 Plus ra mắt đã làm hài lòng giới công nghệ lẫn người tiêu dùng hâm mộ hãng điện thoại danh tiếng đến từ Hàn Quốc – Samsung. Thiết kế có thể chưa được xem là đột phá hoàn toàn nhưng ngay từ cái nhìn đầu tiên đã mang lại cảm xúc thán phục bởi sự sắc sảo, tinh tế đến từ chi tiết và một màn hình cong tràn cạnh “không viền” đáng ngạc nhiên. Kèm theo là nhiều tính năng đặc biệt thú vị nhằm nâng cao trải nghiệm cho người dùng. S8 Plus hứa hẹn sẽ mang lại sự thành công mới cho Samsung trong năm nay', 'like new', 'Công ty', '6.2 inch Super AMOLED', 'Chính: 12.0 MP, Phụ: 8.0 MP', '4 GB', '64 GB', 'Android 7.0 (Nougat)', 'Exynos 8895', 'Exynos 8895, 8 Nhân, Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm', '159.5 x 73.4 x 8.1mm', '2960 x 1440 pixels', 'Super AMOLED', '8.0 MP', 'Dual 12.0 MP', 'Có', '3500 mAh', 'Nguyên khối viền kim loại', 'Nano Sim', 'v5.0', 'USB Type-C', NULL),
(7, 'iPhone X 256GB', 1, 33790000, 'Đã lâu lắm rồi Apple mới ra mắt một sản phẩm với thiết kế đột phá và liều lĩnh. Dù vấp phải khá nhiều ý kiến trái chiều nhưng cũng không thể phủ nhận độ hấp dẫn của chiếc iPhone thế hệ thứ 10 này. Công nghệ bảo mật mới, loại bỏ nút home truyền thống, camera với những tính năng độc quyền, tất cả đã khiến người dùng đứng ngồi không yên cho đến khi được trên tay.', 'new', 'Công ty', '5.8 inchs OLED', '7.0 MP/ Dual 12.0 MP', '3 GB', '256GB', 'iOS 11', 'Apple A11 Bionic', 'Apple GPU (three-core graphics)', '143.6 x 70.9 x 7.7 mm', '2436 x 1125 pixel', 'OLED Multi-Touch display HDR display', '7.0 MP', 'Dual 12.0 MP', '4G LTE ', '2716 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim', 'v5.0', 'Lightning', 'Xem phim :HEVC, H.264, MPEG-4 Part 2, and Motion JPEG\r\nNghe nhạc :AAC-LC, HE-AAC, HE-AAC v2, Protected AAC, MP3, Linear PCM, Apple Lossless, FLAC\r\nGhi âm :Có\r\nĐèn pin :Có'),
(8, 'iPhone 8 Plus 256GB', 3, 28790000, 'iPhone 8 Plus 256Gb đã cập bến khá thành công trong sự mong mỏi của hội fan táo khuyết. Với những nâng cấp tuy “ít mà chất”, iPhone 8 Plus 256Gb thật sự là sự lựa chọn chính xác cho những ai đang muốn đổi mới chiếc iPhone cũ ngay bây giờ!\r\n\r\n \r\n\r\niPhone 8 Plus 256GB có thiết kế sang trọng', 'new', 'Công ty', '5.5 inchs HD Retina', '7.0 MP/ Dual 12.0 MP', '3 GB', '256GB', 'iOS 11', 'Apple A11 Bionic', 'Apple GPU (three-core graphics)', '158.4 x 78.1 x 7.5 mm', '1920 x 1080 pixels', 'Widescreen LCD Multi-Touch display with IPS technology', '7.0 MP', 'Dual 12.0 MP', 'TD-LTE (Bands 34, 38, 39, 40, 41)', '2675 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim', 'v5.0', 'Lightning', 'Xem phim :	HEVC, H.264, MPEG-4 Part 2, and Motion JPEG\r\nNghe nhạc :	AAC-LC, HE-AAC, HE-AAC v2, Protected AAC, MP3, Linear PCM, Apple Lossless, FLAC\r\nGhi âm :	Có\r\nFM radio :	Có\r\nĐèn pin :	Có'),
(9, 'iPhone 8 64GB', 2, 20990000, 'iPhone 8 64Gb – Thành viên tiếp theo của dòng siêu phẩm iPhone đã trình làng với những nâng cấp “nhẹ nhàng” so với sản phẩm tiền nhiệm.\r\n\r\n \r\n\r\nThiết kế mới mà không mới\r\n \r\niPhone 8 64Gb không có nhiều thay đổi về phong cách thiết kế so với iPhone 7 ra mắt vào năm ngoái, điểm nổi bật duy nhất là mặt sau đã chuyển sang chất liệu kính đẹp mắt hơn, tăng khả năng chống trầy xước. Sườn máy cứng hơn tạo cảm giác cầm, nắm khá tố', 'new', 'công ty', '4.7 inchs Retina HD', '12.0 MP/ 7.0 MP', '2 GB', '64GB', 'iOS 11', 'Apple A11 Bionic', 'Apple GPU three-core graphics', '138.4 x 67.3 x 7.3 mm', '1334 x 750 pixels', 'Retina HD', '7.0 MP', '12.0 MP', 'Có', '1821 mAh', 'Thanh (thẳng) + Cảm ứng', 'Nano Sim', 'Bluetooth 5.0', 'Lightning', 'Xem phim :	Có\r\nNghe nhạc :	Có\r\nGhi âm :	Có\r\nFM radio :	Không\r\nĐèn pin :	Có'),
(10, 'iPhone 8 256GB', 2, 25790000, 'iPhone 8 256GB – Thành viên tiếp theo của dòng siêu phẩm iPhone đã trình làng với những nâng cấp “nhẹ nhàng” so với sản phẩm tiền nhiệm.\r\n\r\n \r\n\r\nThiết kế mới mà không mới\r\n \r\niPhone 8 64Gb không có nhiều thay đổi về phong cách thiết kế so với iPhone 7 ra mắt vào năm ngoái, điểm nổi bật duy nhất là mặt sau đã chuyển sang chất liệu kính đẹp mắt hơn, tăng khả năng chống trầy xước. Sườn máy cứng hơn tạo cảm giác cầm, nắm khá tố', 'new', 'công ty', '4.7 inchs Retina HD', '12.0 MP/ 7.0 MP', '2 GB', '64GB', 'iOS 11', 'Apple A11 Bionic', 'Apple GPU three-core graphics', '138.4 x 67.3 x 7.3 mm', '1334 x 750 pixels', 'Retina HD', '7.0 MP', '12.0 MP', 'Có', '1821 mAh', 'Thanh (thẳng) + Cảm ứng', 'Nano Sim', 'Bluetooth 5.0', 'Lightning', 'Xem phim :	Có\r\nNghe nhạc :	Có\r\nGhi âm :	Có\r\nFM radio :	Không\r\nĐèn pin :	Có'),
(11, 'iPhone 6 32GB (2017)', 16, 7999000, 'iPhone 6 32GB (2017) là một phiên bản iPhone màn hình lớn, không chỉ đơn thuần về kích thước mà còn tốt về mọi mặt. Thiết kế kim loại cao cấp bao phủ màn hình Retina HD tuyệt đẹp; mạnh mẽ hơn, nhưng lại tiết kiệm pin hơn. Sự phối hợp hoàn hảo giữa phần cứng và phần mềm, đem đến cho bạn một siêu phẩm trong tầm tay.', 'new', 'Công ty', '4.7 inch LED IPS', 'Chính: 8.0 MP, Phụ: 1.2 MP', '1GB', '32GB', 'iOS', 'Apple A8', 'Apple A8 2 nhân 64-bit, 2 Nhân, 1.4 GHz', '138.1 x 67 x 6.9 mm', '1334 x 750 pixels', 'LED IPS', '1.2 MP', '8.0 MP', '4G Có', '1810mAh', 'Hợp kim nhôm', 'Nano Sim', 'Có,V4.0', 'Lightning', 'Xem phim :	3GP, MP4, AVI, WMV, H.263, H.264(MPEG4-AVC), DivX, Xvid\r\nNghe nhạc :	MP3, WAV, WMA, eAAC+\r\nGhi âm :	Có\r\nFM radio :	Không\r\nĐèn pin :	Có\r\nChức năng khác :	Facebook, Game, Lịch, Đồng hồ, Báo thức, Bản đồ, Sổ tay'),
(12, 'iPhone 6s Plus 32GB', 18, 13999000, 'Apple iPhone 6s Plus là chiếc iPhone màn hình lớn nhất, cho phép người dùng làm được nhiều việc hơn trên không gian rộng lớn. Ngoài ra, những tính năng mới như hệ điều hành iOS 10, 3D Touch, Live Photos hay camera 12MP xuất sắc sẽ mang đến sự hài lòng nhất cho bạn khi sử dụng một chiếc smartphone thực sự cao cấp.', 'like new', 'Quốc tế', '5.5 inch, 1080 x 1920 pixels', '12.0 MP/ 5.0MP', '2 GB', '32GB', 'iOS 10', 'Apple A9', 'Apple A9, 2 Nhân, Dual-core 1.8 GHz', '158.2 x 77.9 x 7.3 mm', '1080 x 1920 pixels', 'Rentina', '5.0 MP', '12.0 MP', '4G TD-LTE (Bands 38, 39, 40, 41)', '2750mAh', 'Hợp kim nhôm nguyên khối (mặt kính cong 2,5D)', 'Nano Sim', 'Bluetooth 4.2 wireless technology', 'Lightning', 'Chức năng khác :	- Siri natural language commands and dictation - iCloud cloud service - Twitter and Facebook integration - Maps - Audio/video player/editor - Image viewer/editor - Voice memo - TV-out - Document viewer - Predictive text input'),
(13, 'iPhone 7 32GB', 5, 15999000, 'iPhone 7 dường như đã gay sốt ngay từ khi ra mắt bởi những nâng cấp đáng giá về tốc độ xử lý, khả năng chụp ảnh, tính năng chống nước, bụi hiện đại... iPhone 7 đã trở thành ước mơ của rất nhiều người đam mê công nghệ, đặc biệt là với phiên bản dung lượng 32 GB có giá thành hợp lý hơn cả.', 'new', 'Quốc tế', '4.7 inch(1334 x 750 pixel)', 'Chính: 12.0 MP, Phụ: 7.0 MP', '2 GB', '32GB', 'iOS 10', 'Apple A10', 'Apple A10, 4 Nhân, 2.3 Ghz', '138.3 x 67.1 x 7.1 mm', '1334 x 750 pixels', 'Retina', '7.0 MP', '12.0 MP', 'Băng tần 4G Có', '1960', 'Hợp kim nhôm nguyên khối (mặt kính cong 2,5D)', 'Nano Sim', 'v4.2', 'Lightning', 'Chụp ảnh nâng cao :	Tự động lấy nét, Chạm lấy nét, Nhận diện khuôn mặt, HDR, Panorama, Chống rung quang học\r\nĐèn Flash :	Có\r\nQuay phim :	Quay phim 4K 2160p@30fps'),
(14, 'iPhone 7 Plus 32GB', 4, 19999000, 'iPhone 7 Plus dường như là sản phẩm được Apple chăm chút để vượt xa iPhone 7, trở thành sản phẩm rất đáng để nâng cấp so với iPhone 6s Plus khi được nâng cấp thêm camera kép cùng chức năng chụp chân dung xoá phông cực \"hot\". Không chỉ vậy, nâng cấp đáng giá khác như tốc độ xử lý nhanh hơn, chống nước, bụi, loa ngoài sống động... Tất cả đã tạo nên một sản phẩm hàng đầu tuyệt vời', 'new', 'Công ty', '5.5 inch (1920 x 1080 pixels)', 'Chính: Dual Camera 12.0MP; Phụ: 7.0MP', '3 GB', '32GB', 'iOS', 'A10', 'Apple A10, 4 Nhân, Quad-core 2.3 GHz', '158.2 x 77.9 x 7.3 mm', '1920 x 1080 pixels', 'Retina', '7.0 MP', 'Dual 12.0 MP', 'Băng tần 4G Có', '11.1 Wh (2900 mAh)', 'Hợp kim nhôm nguyên khối (mặt kính cong 2,5D)', 'Nano Sim', 'Có', 'Lightning', 'Cảm biến :	Vân tay, gia tốc, con quay hồi chuyển, khoảng cách, la bàn, áp kế\r\nThẻ nhớ ngoài :	Không\r\nHỗ trợ thẻ nhớ tối đa :	Không\r\nBộ nhớ còn lại :	~28 GB\r\nDanh bạ lưu trữ :	Không giới hạn\r\nROM :	32 GB'),
(15, 'Samsung Galaxy S9+ 128GB', 20, 24990000, 'Thế hệ điện thoại Samsung Galaxy S tiếp tục được Samsung nâng lên một tầm cao mới. Với Samsung Galaxy S9+ 128 GB, bạn sẽ “nhìn thấy điều không thể” nhờ bộ phận camera được cải tiến toàn diện.\r\n\r\n \r\n\r\nThiết kế tinh tế.', 'new', 'công ty', '6.2 inch', 'Dual 12.0 MP/ 8.0 MP', '6 GB', '128GB', 'Android 8.0', 'Exynos 9810 8 nhân 64 bit', '4 nhân 2.8 GHz & 4 nhân 1.7 GHz', 'Dài 158.1 mm - Ngang 73.8 mm - 8.5 mm', '2K (1440 x 2960 Pixels)', 'Super AMOLED', '8 MP', '2 camera 12 MP', 'Băng tần 4G :Có', '3500 mAh', 'Khung kim loại + mặt kính cường lực', '2 Sim (Sim 2 chung khe thẻ nhớ)', 'v5.0, apt-X, A2DP, LE', 'USB Type-C', 'Xem phim :	H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid\r\nNghe nhạc :	Midi, Lossless, MP3, WAV, WMA, AAC++, eAAC+, OGG, AC3, FLAC\r\nGhi âm :	Có\r\nFM radio :	Có\r\nĐèn pin :	Có\r\nChức năng khác :	Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay, Quét mống mắt\r\nBảo hành\r\nThời gian bảo hành :	12 tháng'),
(16, 'Samsung Galaxy S9+', 20, 23490000, 'Thế hệ điện thoại Samsung Galaxy S tiếp tục được Samsung nâng lên một tầm cao mới. Với Samsung Galaxy S9+ 128 GB, bạn sẽ “nhìn thấy điều không thể” nhờ bộ phận camera được cải tiến toàn diện.\r\n\r\n \r\n\r\nThiết kế tinh tế.', 'new', 'công ty', '6.2 inch', 'Dual 12.0 MP/ 8.0 MP', '6 GB', '128GB', 'Android 8.0', 'Exynos 9810 8 nhân 64 bit', '4 nhân 2.8 GHz & 4 nhân 1.7 GHz', 'Dài 158.1 mm - Ngang 73.8 mm - 8.5 mm', '2K (1440 x 2960 Pixels)', 'Super AMOLED', '8 MP', '2 camera 12 MP', 'Băng tần 4G :Có', '3500 mAh', 'Khung kim loại + mặt kính cường lực', '2 Sim (Sim 2 chung khe thẻ nhớ)', 'v5.0, apt-X, A2DP, LE', 'USB Type-C', 'Xem phim :	H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid\r\nNghe nhạc :	Midi, Lossless, MP3, WAV, WMA, AAC++, eAAC+, OGG, AC3, FLAC\r\nGhi âm :	Có\r\nFM radio :	Có\r\nĐèn pin :	Có\r\nChức năng khác :	Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay, Quét mống mắt\r\nBảo hành\r\nThời gian bảo hành :	12 tháng'),
(17, 'Samsung Galaxy Note 8 Orchid Grey', 6, 22490000, 'Ngoại hình của chiếc Samsung Galaxy Note 8 Orchid Grey không có gì khác biệt so với những chiếc Note 8 khác. Máy vẫn giữ thiết kế khung viền kim loại chắc chắn cùng 2 mặt kính cường lực trước sau \"gợi cảm\". Các góc cạnh của máy được bo cong mềm mại đem lại cảm giác thoải mái khi sử dụng.', 'new', 'Công ty', '6.3 inch', 'Dual 12.0 MP/ 8.0 MP', '6 GB', '64 GB', 'Android 7.1.1 (Nougat)', 'Lõi Tám (lõi Tứ 2.3GHz + lõi Tứ 1.7GHz), 64 bit, vi xử lý 10nm', '4 nhân 2.3 GHz và 4 nhân 1.7 GHz', 'Dài 162,5 mm - Ngang 74,8 mm - Dày 8,6 mm', '2960 x 1440 pixels', 'Super AMOLED', '8 MP', '2 camera 12 MP', 'Có', '3300 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim', 'v5.0, apt-X, A2DP, LE, EDR', 'USB Type-C', 'Xem phim :	H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid\r\nNghe nhạc :	Mid, Lossless, MP3, WAV, WMA, AAC++, eAAC+, OGG, AC3, FLAC\r\nGhi âm :	Có\r\nFM radio :	Có\r\nĐèn pin :	Có\r\nChức năng khác :	Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay, Quét mống mắt'),
(18, 'Samsung Galaxy S9', 20, 19990000, 'Cứ mỗi năm, hãng điện thoại Samsung lại giới thiệu thêm flagship tại sự kiện MWC. Và năm nay, sự xuất hiện của Samsung Galaxy S9 và Samsung Galaxy S9+ là tâm điểm, thu hút mọi ánh nhìn của giới công nghệ. Vẫn giữ hình dáng, thiết kế tương tự như S8, S9 sẽ được nâng cấp về mặt cấu hình, camera và những tính năng mới', 'new', 'Công ty', '2K (1440 x 2960 Pixels)', 'Xịn', '4 GB', '64 GB', 'Android 8.0', 'Exynos 9810 8 nhân 64 bit', '4 nhân 2.8 GHz & 4 nhân 1.7 GHz', 'Dài 147.7 mm - Ngang 68.7 mm - Dày 8.5 mm', '2K (1440 x 2960 Pixels)', 'Super AMOLED', '8 MP', '12 MP', 'Có', '3000 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim', 'v5.0, apt-X, A2DP, LE', 'USB Type-C', 'Xem phim :	H.265, 3GP, MP4, AVI, WMV, H.264(MPEG4-AVC), DivX, WMV9, Xvid\r\nNghe nhạc :	Midi, Lossless, MP3, WAV, WMA, AAC++, eAAC+, OGG, AC3, FLAC\r\nGhi âm :	Có\r\nFM radio :	Có\r\nĐèn pin :	Có\r\nChức năng khác :	Mở khóa bằng khuôn mặt, Mở khóa bằng vân tay, Quét mống mắt'),
(19, 'Samsung Galaxy S8 Plus Orchid Gray', 8, 17990000, 'Samsung S8 Plus Orchid Gray là phiên bản màu mới cực độc cho Galaxy S8 Plus, màu tím khói. Đây là phiên bản rất đáng mua cho những ai đang tìm kiếm một chiếc điện thoại cao cấp. Thiết kế ngay từ cái nhìn đầu tiên đã mang lại cảm xúc thán phục bởi sự sắc sảo, tinh tế đến từ chi tiết và một màn hình cong tràn cạnh “không viền” đáng ngạc nhiên trên nền màu sắc độc đáo. Kèm theo là nhiều tính năng đặc biệt thú vị nhằm nâng cao trải nghiệm cho người dùng', 'new', 'Công ty', '6.2 inch Super AMOLED (2560 x 1440 pixel)', 'Chính: 12.0 MP, Phụ: 8.0 MP', '4 GB', '64 GB', 'Android 7.0', 'Exynos 8895', '4 nhân 2.3 GHz và 4 nhân 1.7 GHz', '159.5 x 73.4 x 8.1mm', '2960 x 1440 pixels', 'Super AMOLED', '8.0 MP', 'Dual 12.0 MP', 'Có', '3500 mAh', 'Thanh (thẳng) + Cảm ứng', 'Nano Sim', 'v5.0', 'USB Type-C', 'Xem phim :	MP4/DivX/XviD/H.265 player\r\nNghe nhạc :	MP3/WAV/eAAC+/Flac player\r\nGhi âm :	Có\r\nFM radio :	Có\r\nĐèn pin :	Có\r\nChức năng khác :	Photo/video editor, Document viewer'),
(20, 'Samsung Galaxy S8', 8, 15990000, 'Galaxy S8 được dự đoán là một siêu phẩm mà Samsung sẽ giới thiệu đến người dùng trong thời gian gần nhất. Theo như hình ảnh của sản phẩm mới được hé lộ, Samsung S8 sẽ sở hữu một thiết kế ấn tượng, hiệu năng cực kỳ mạnh mẽ và tiết kiệm năng lượng, camera sắc nét cùng màn hình Infinity Display, hứa hẹn sẽ trở thành một đối thủ đáng gờm trên thị trường smartphone năm 2017', 'new', 'Công ty', '5.8 inch Super AMOLED (2560 x 1440 pixel)', 'Chính: 12.0 MP, Phụ: 8.0 MP', '4 GB', '64 GB', 'Android 7.0 (Nougat)', 'Exynos 8895', '4 nhân 2.3GHz + 4 nhân 1.7GHz', '148.9 x 68.1 x 8.0mm', '2560 x 1440 pixels', 'Super AMOLED', '8.0 MP', '12.0 MP', 'Có', '3000 mAh', 'Thanh (thẳng) + Cảm ứng', 'Nano-SIM, Dual SIM', 'v5.0', 'USB Type-C', 'Xem phim :	MP4/DivX/XviD/H.265 player\r\nNghe nhạc :	MP3/WAV/eAAC+/Flac player\r\nGhi âm :	Có\r\nFM radio :	Có\r\nĐèn pin :	Có\r\nChức năng khác :	Photo/video editor, Document viewer'),
(21, 'Samsung Galaxy A8+ (2018)', 22, 13490000, 'Samsung Galaxy A8+ 2018 gây ấn tượng với thiết kế kim loại nguyên khối mỏng dần từ đầu đến cuối thân máy, cùng camera selfie kép vi diệu, hứa hẹn bộ đôi sản phẩm này sẽ tiếp bước sự thành công của Samsung tại thị trường Việt Nam', 'new', 'Công ty', '6.0 inch', 'Chính: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP', '6 GB', '64GB', 'Android 7', 'Exynos 7885 Octa, Dual 2.2 + Hexa 1.6', '8 nhân 1.6 GHz', '159,9 x 75,7 x 8,3 mm', '1080 x 2220 pixels', 'Super AMOLED', '16 MP và 8 MP', '16 MP', 'Có', '3500 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim', 'v5.0, A2DP, LE', 'USB Type-C', NULL),
(22, 'Samsung Galaxy A8 (2018)', 22, 13000000, 'Samsung Galaxy A8 2018 gây ấn tượng với thiết kế kim loại nguyên khối mỏng dần từ đầu đến cuối thân máy, cùng camera selfie kép vi diệu, hứa hẹn bộ đôi sản phẩm này sẽ tiếp bước sự thành công của Samsung tại thị trường Việt Nam', 'new', 'Công ty', '5.6 inch', 'Chính: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP', '4 GB', '64GB', 'Android 7', 'Exynos 7885 Octa, Dual 2.2 + Hexa 1.6', '8 nhân 1.6 GHz', '149,2 x 70,6 x 8,4 mm', '1080 x 2220 pixels', 'Super AMOLED', '16 MP và 8 MP', '16 MP', 'Có', '3000 mAh', 'Khung kim loại + mặt kính cường lực', 'Nano Sim', 'v5.0, A2DP, LE', 'USB Type-C', NULL),
(23, 'Samsung Galaxy A7 (2017)', 22, 7990000, 'Samsung Galaxy A7 2017 là sản phẩm sở hữu màn hình kích thước lớn nhất, cùng cấu hình mạnh nhất trong bộ ba sản phẩm được Samsung giới thiệu đầu năm 2017', 'like new', 'quốc tế', 'Super AMOLED, 5.7\", Full HD', 'Chính: 16.0 MP; Phụ: 16.0 MP', '3 GB', '32 GB', 'Android 6.0 (Marshmallow)', 'Exynos', '8 Nhân 1.9 GHz', '156.8 x 77.6 x 7.9 mm', '1080 x 1920 pixels', 'Super AMOLED', '16.0 MP', '16.0 MP', '4G LTE Cat 6', '3600 mAh', 'Kim Loại, Thanh + Cảm ứng', '2 SIM 2 sóng Nano SIM', 'v4.2, A2DP, LE, EDR', 'USB Type-C', NULL),
(24, 'Samsung Galaxy A5 (2017)', 22, 7990000, 'Samsung A5 2017 là một trong những sản phẩm mới thuộc dòng Galaxy A Series vừa được Samsung cho ra mắt vào những ngày đầu năm 2017', 'like new', 'Quốc tế', ' 5.2 inch (1080 x 1920 pixels )', 'Chính: 16.0 MP; Phụ: 16.0 MP', '3 GB', '32 GB', 'Android 6.0 (Marshmallow)', 'Exynos 7880', '8 Nhân, 1.9 GHz', '146,1 x 71,4 x 7.9mm', '1080 x 1920 pixels', 'Super AMOLED', '16.0 MP', '16.0 MP', '4G LTE Cat 6', '3000 mAh', 'Khung kim loại + mặt kính cường lực (Cong 2,5D)', '2 Sim, Nano Sim', 'v4.2, A2DP, LE, EDR', 'USB Type-C', NULL),
(25, 'Samsung Galaxy J7+', 23, 7290000, 'Samsung J7+ là một lựa chọn smartphone phân khúc trung cấp khá nổi bật ở thời điểm hiện tại, máy sở hữu thiết kế kim loại nguyên khối, gia công cứng cáp, camera kép với ống kính khẩu độ lớn', 'like new', 'quốc tế', '5.5 inch', 'Chính: Dual 13.0 + 5.0 MP, Phụ: 16.0 MP', '4 GB', '32 GB', 'Android', 'Mali-T880MP2', '4 nhân 2.39 GHz & 4 nhân 1.69 GHz', '152.4 x 74.7 x 7.9 mm', '1920 x 1080 pixels', 'Super AMOLED', '16.0 MP', 'Dual 12.0 MP và 5.0 MP', '4G LTE', '3000 mAh', 'Thanh (thẳng) + Cảm ứng', '2 Sim, Nano Sim', 'Có', 'Micro USB', NULL),
(26, 'Samsung Galaxy J7 Pro', 23, 6490000, 'Samsung J7 Pro là một mẫu smartphone mới trong phân khúc tầm trung của Samsung có camera thiết kế phẳng cùng ống kính với khẩu độ lớn F1.7,', 'like new', 'Quốc tế', '5.5 inch (1920 x 1080 pixels)', 'Chính: 13.0 MP, Phụ: 13.0 MP', '3 GB', '32 GB', 'Android 7.0 Nougat', 'Exynos 7870', 'Exynos 7870, 8 Nhân, Octa-core 1.6 GHz', '152.4 x 74.7 x 7.9 mm', '1920 x 1080 pixels', 'Super AMOLED.', '13.0 MP (f1.9)', '13.0 MP (f1.7)', '4G LTE Cat 6', '3600 mAh', 'Kim loại nguyên khối(mặt kính cong 2,5D)', '2 Sim, Nano Sim', 'Bluetooth v4.2', 'Micro USB', NULL),
(27, 'Samsung Galaxy J7 Prime', 23, 5490000, 'Samsung Galaxy J7 Prime ra mắt với mục đích đánh mạnh vào phân khúc smartphone tầm trung hiện nay. Sở hữu màn hình lớn 5.5 inch Full HD', 'like new', 'Quốc tế', '5.5 inch (1080 x 1920 pixels)', 'Chính: 13.0 MP, Phụ: 8.0 MP', '3 GB', '32 GB', 'Android Marshmallow 6.0.1', 'Exynos 7870', 'Exynos 7870 8 nhân 64-bit, 8 Nhân, Octa-Core 1.60GHz', '151.5 x 74.9 x 8.1 mm', '1080 x 1920 pixels', 'Kính cường lực Gorilla Glass 4', '8.0 MP', '13.0 MP', 'LTE Cat 4', '3300 mAh', 'Hợp kim nhôm nguyên khối (mặt kính cong 2,5D)', '2 Khe, Nano Sim', 'v4.1', 'Micro USB', NULL),
(28, 'OPPO A83', 24, 4990000, 'OPPO A83 là chiếc smartphone dòng A đầu tiên sở hữu cho mình màn hình tràn viền và cùng với đó là camera với khả năng làm đẹp bằng AI nổi tiếng của OPPO', 'New', 'Công ty', '5.2 inch', 'Chính: 13.0 MP, Phụ: 5.0 MP', '2 GB', '16 GB', 'Android 7.1', 'Qualcomm Snapdragon 450', 'Mediatek MT6763T', '150.5 x 73.1 x 7.7 mm', '720x1440 pixels', 'IPS LCD', '8.0 MP', '13.0 MP', 'Có', '3180 mAh', 'Thanh (thẳng) + Cảm ứng', 'Nano sim', 'v4.2, A2DP, LE', 'Micro USB', NULL),
(29, 'OPPO A71 (2018)', 24, 3690000, 'Điện thoại OPPO A71 (2018) là phiên bản mới của Oppo A71 với sự nâng cấp đáng chú ý của hệ thống phần cứng cùng hệ thống camera cho khả năng chụp ảnh selfie đẹp hơn với hỗ trợ của AI', 'New', 'Công ty', '5.2 inch', 'Chính: 13.0 MP, Phụ: 5.0 MP', '3 GB', '32 GB', 'Android 7.1', 'Qualcomm Snapdragon 450', 'Mediatek MT6763T', '150.5 x 73.1 x 7.7 mm', '720x1440 pixels', 'IPS LCD', '8.0 MP', '13.0 MP', 'Có', '3180 mAh', 'Thanh (thẳng) + Cảm ứng', 'Nano sim', 'v4.2, A2DP, LE', 'Micro USB', NULL),
(30, 'OPPO F1s 2017 (64GB)', 13, 4990000, 'Tiếp nối sự thành công của dòng sản phẩm OPPO F1s, OPPO tiếp tục giới thiệu đến thị trường Việt Nam phiên bản nâng cấp của dòng sản phẩm này với tên gọi OPPO F1s 2017', 'new', 'Công ty', ' 5.5 inch (1280 x 720 pixels)', 'Chính: 13.0MP; Phụ: 16.0MP', '4 GB', '64 GB', 'ColorOS 3.0, nền tảng Android 5.1', 'MTK MT6750', 'MediaTek MT6750, 8 Nhân, Octa-core 1.5GHz', '154.5 x 76 x 7.38 mm', '1280 x 720 pixels', 'IPS LCD', '16.0 MP', '13.0 MP', 'FDD-LTE : Bands 1/3/8', '3075 mAh', 'Hợp kim nhôm nguyên khối (Màn hình Cong 2,5D)', 'Nano Sim, 2 Sim', 'v4.0', 'Micro USB', NULL),
(31, 'OPPO F1 Plus', 13, 4790000, 'OPPO F1 Plus là mẫu phablet tầm trung vừa được OPPO chính thức giới thiệu cách đây không lâu. Sở hữu màn hình kích thước lớn 5,5 inch cùng một thiết kế thời trang và cấu hình mạnh mẽ', 'new', 'Công ty', '5.5 inch (1920 x 1080 pixels)', 'Chính: 13.0 MP, Phụ: 16.0 MP', '4 GB', '64 GB', 'Android 5.1 Lollipop', 'MediaTek MT6755', 'MediaTek MT6755, 8 Nhân, Octa-core 2.0 GHz', '151.8 x 74.3 x 6.6 mm', '1080 x 1920 pixels', 'AMOLED', '16.0 MP', '13.0 MP', 'FDD-LTE 1/3/5/7/8, TD-LTE 38/40/41', '2850 mAh', 'Hợp kim nhôm nguyên khối (Màn hình Cong 2,5D)', 'Nano Sim, 2Sim', 'Bluetooth v4.0,A2DP', 'MicroUSB', NULL),
(32, 'OPPO F3', 12, 4990000, 'OPPO F3 là biến thể nhỏ gọn hơn của OPPO F3 Plus, nổi bật với camera selfie kép phía trước với 2 cảm biến 16 MP và 8 MP, hỗ trợ chụp ảnh selfie góc rộng rất tốt', 'new', 'Công ty', '6.0 inch (1080 x 1920 pixels)', 'Chính: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP', '4 GB', '64 GB', 'ColorOS 3.0, nền tảng Android 6.0', 'MediaTek MT6750T', 'MediaTek MT6750T, 8 Nhân, Octa-core 1.51 Ghz', '153.3 x 75.2 x 7.3 mm', '1080 x 1920 pixels', 'IPS LCD', 'Dual 16.0 MP + 8.0 MP', '13.0 MP', 'FDD-LTE: Bands 1/3/5/7/8,TD-LTE: Bands 38/39/40/41', '3200 mAh', 'Kim loại nguyên khối(mặt kính cong 2,5D)', 'Nano Sim, 2Sim', 'v4.2, A2DP, LE', 'Micro USB', NULL),
(33, 'OPPO F3 Plus', 12, 7490000, 'OPPO F3 Plus là một sản phẩm mới được OPPO giới thiệu đến người dùng, máy được đánh giá rất cao về camera kép mặt trước cho hình ảnh chụp sắc nét, sống động', 'new', 'Công ty', '6.0 inch (1080 x 1920 pixels)', 'Chính: 16.0 MP, Phụ: Dual 16.0 MP + 8.0 MP', '4 GB', '64 GB', 'Android 6.0 (Marshmallow)', 'Qualcomm Snapdragon 653', 'Qualcomm Snapdragon 653, 8 Nhân, Octa-core', '163.63 x 80.8 x 7.35 mm', '1080 x 1920 pixels', 'Corning Gorilla Glass 5', 'Dual 16.0 MP + 8.0 MP', '16.0 MP', 'LTE B1/2/3/4/5/7/8/20/28', 'Li-Ion 4000 mAh', 'Kim loại nguyên khối', '2 Nano Sim Hoặc 1 Sim 1 Thẻ Nhớ', 'Bluetooth v4.1', 'Micro USB', NULL),
(34, 'Oppo F3 Lite', 12, 4290000, 'Oppo F3 Lite là một sản phẩm mới được OPPO giới thiệu đến người dùng, máy được đánh giá rất cao về hệ thống camera cho hình ảnh chụp sắc nét, sống động', 'new', 'Công ty', '5.2 inch (720 x 1280 pixels)', 'Chính: 13.0 MP, Phụ: 16.0 MP', '3 GB', '32 GB', 'ColorOS 3.0, nền tảng Android 6.0', 'Qualcomm MSM8940', 'Qualcomm MSM8940, 8 Nhân, Octa-core 1.4 GHz', '149.1 x 72.9 x 7.65 mm', '720 x 1280 pixels', 'IPS LCD', '16.0 MP', '13.0 MP', 'Có', '2900 mAh', 'Thanh (thẳng) + Cảm ứng', 'Nano Sim, 2Sim', 'Có', 'Micro USB', NULL),
(35, 'OPPO F5 6GB', 11, 8990000, 'OPPO F5 6 GB là phiên bản nâng cấp cấu hình của chiếc OPPO F5, chuyên gia selfie làm đẹp thông minh và màn hình tràn viền tuyệt đẹp', 'new', 'Công ty', '6.0 inch', 'Chính: 16.0 MP, Phụ: 20.0 MP', '6GB', '64 GB', 'Android 7.1', 'Mediatek MT6763T', 'Mediatek MT6763T', '156.5 x 76 x 7.5 mm', '1080 x 2160 Pixels', 'IPS LCD', '20 MP', '16 MP', 'Có', '3200 mAh', 'Nhựa (mặt kính cong 2,5D)', 'Nano sim, 2Sim', 'v4.2, A2DP, LE', 'Micro USB', NULL),
(36, 'OPPO F5', 11, 6990000, 'OPPO F5 là phiên bản nâng cấp cấu hình của chiếc OPPO F5, chuyên gia selfie làm đẹp thông minh và màn hình tràn viền tuyệt đẹp', 'new', 'Công ty', '6.0 inch', 'Chính: 16.0 MP, Phụ: 20.0 MP', '4GB', '64 GB', 'Android 7.1', 'Mediatek MT6763T', 'Mediatek MT6763T', '156.5 x 76 x 7.5 mm', '1080 x 2160 Pixels', 'IPS LCD', '20 MP', '16 MP', 'Có', '3200 mAh', 'Nhựa (mặt kính cong 2,5D)', 'Nano sim, 2Sim', 'v4.2, A2DP, LE', 'Micro USB', NULL),
(37, 'Sony Xperia XZ Premium', 14, 17990000, 'Tiếp nối sự thành công của dòng sản phẩm Sony Xperia XZ, Sony tiếp tục giới thiệu đến người dùng phiên bản nâng cấp của nó với tên gọi là Sony Xperia XZ Premium', 'new', 'Công ty', '5.5 inch ( 3840 x 2160 pixels)', 'Chính: 19.0 MP, Phụ: 13.0 MP', '4 GB', 'UFS 64 GB', 'Android OS, v7.1 (Nougat)', 'Qualcomm Snapdragon 835', 'Qualcomm Snapdragon 835, 8 Nhân', 'updating...', '4K HDR (2160 x 3840 Pixels)', '4K HDR', '13 MP', 'Camera Motion Eye™ 19 MP', 'LTE band 1(2100), 2(1900), 3(1800), 4(1700/2100), 5(850), 7(2600), 8(900), 12(700), 13(700), 17(700), 25(1900), 26(850), 38(2600), 41(2500), 66', '3230 mAh', 'Kim loại nguyên khôi, Kính Corning® Gorilla® 5 ở mặt trước và sau', 'Nano SIM, 2Sim', 'v4.2, A2DP, aptX, LE', 'USB Type-C', NULL),
(38, 'Sony Xperia XZs', 14, 9990000, 'Tại MWC 2017, ngoài Sony Premium, XA1, XA1 Ultra, Sony còn giới thiệu đến người dùng một phiên bản khác của dòng Xperia XZ là Sony XZs', 'new', 'Công ty', '5.2 inch (1080 x 1920 pixels )', 'Chính: 19.0 MP, Phụ: 13.0 MP', '4GB', '64 GB', 'Android 7.0 (Nougat)', 'Qualcomm MSM8996 Snapdragon 820', '4 Nhân, Quad-core (2x2.15 GHz Kryo & 2x1.6 GHz Kryo)', '', 'Full HD (1080 x 1920 pixels)', 'updating...', '13 MP', '19 MP Camera Motion Eye™', 'LTE (4G) Cat11', '2.900 mAh; Smart Stamina', 'Thiết kế nguyên khối ngôn ngữ ALKALEIDO', 'Nano, Sim 2 có thể dùng Sim hoặc thẻ nh', 'Bluetooth® 4.2', 'USB Type-C', NULL),
(39, 'Sony Xperia XZ', 14, 12990000, 'Sony Xperia XZ là sự hoàn thiện cho những yếu tố cơ bản của một chiếc điện thoại thông minh tuyệt vời. Với những công nghệ mới tích hợp', 'new', 'Công ty', '5.2 inch( 1920 x 1080 pixels)', 'Chính: 23.0 MP, Phụ: 13.0 MP', '3 GB', '64 GB', 'Android 6.0 (Marshmallow)', 'qualcomm snapdragon 820', '4 Nhân, Dual-Core 2.2 & Dual-Core 1.6GHz', '146 x 71.9 x 8.1 mm', '1920 x 1080 pixels', 'Adreno 530', '13.0 MP', '23.0 MP', 'Có', '2900 mAh', 'Hợp kim nhôm nguyên khối (Màn hình Cong 2,5D)', 'Nano Sim', 'v4.2, apt-X, A2DP, LE, EDR', 'USB Type-C', NULL),
(40, 'Sony Xperia XA1 Ultra', 15, 7990000, 'Sony Xperia XA1 Ultra là một sản phẩm thuộc dòng smartphone cao cấp mới được Sony giới thiệu đến người dùng tại sự kiện MWC 2017', 'new', 'Công ty', '6.0 inch (1080 x 1920 pixels)', 'Chính: 23.0 MP, Phụ: 16.0 MP', '4GB', '64 GB', 'Android 7.0 (Nougat)', 'MediaTek Helio P20', '8 Nhân, Octa Core 64bit (Quad Core 2.3GHz + Quad Core 1.6GHz)', 'updating...', '1080 x 1920 pixels', 'IPS LCD', '16 MP', '23 MP', 'Có', '2700 mAh', 'Nguyên khối', 'Nano SIM, 2Sim', 'v4.2, A2DP, aptX, LE', 'USB Type-C', NULL),
(41, 'Sony Xperia XA Ultra', 15, 6990000, 'Sony XA Ultra sở hữu camera selfie lên tới 16MP với đèn flash LED và OIS (bộ phận chống rung quang học) cho chất lượng ảnh tốt nhất. Không chỉ vậy', 'new', 'Công ty', '6.0 inch (1080 x 1920 pixels)', 'Chính: 21.5 MP, Phụ: 16.0 MP', '3GB', '64 GB', 'Android 6.0 (Marshmallow)', 'MediaTek Helio P20', '8 Nhân, Octa Core 64bit (Quad Core 2.3GHz + Quad Core 1.6GHz)', 'updating...', '1080 x 1920 pixels', 'IPS LCD', '16 MP', '23 MP', 'Có', '2700 mAh', 'Nguyên khối', 'Nano SIM, 2Sim', 'v4.2, A2DP, aptX, LE', 'USB Type-C', NULL),
(42, 'Sony Xperia XA1 Plus', 15, 6190000, 'Nhà sản xuất Nhật Bản tiếp tục tạo điểm nhấn ở thị trường smartphone tầm trung với Sony Xperia XA1 Plus với camera 23MP', 'new', 'Công ty', '5.5 inch (1920 x 1080 pixels)', 'Chính: 23.0 MP, Phụ: 8.0 MP', '4GB', '64 GB', 'Android 7.0 (Nougat)', 'MediaTek Helio P20', '8 Nhân, Octa Core 64bit (Quad Core 2.3GHz + Quad Core 1.6GHz)', '155 x 75 x 8.7 mm', '1080 x 1920 pixels', 'IPS LCD', '16 MP', '23 MP', 'Có', '2700 mAh', 'Nguyên khối', 'Nano SIM, 2Sim', 'v4.2, A2DP, aptX, LE', 'USB Type-C', NULL),
(43, 'Asus Zenfone 4 Max Pro', 26, 4690000, 'Asus Zenfone tiếp tục thực hiện sứ mệnh mang đến các smartphone giá tốt, cấu hình mạnh nối tiếp sự thành công của người tiền nhiệm Zenfone 3 của nhà Asus', 'new', 'Công ty', '5.5 inch (1280 x 720 pixels)', 'Chính: Dual 16.0 + 5.0 MP, Phụ: 16.0 MP', '3 GB', '32 GB', 'Android 7.1', 'Qualcomm Snapdragon 430', 'Qualcomm Snapdragon 430, 8 Nhân, Octa-core 1.4 GHz', '154.00 x 76.90 x 8.90 mm', '720 x 1280 pixels', 'IPS LCD', '16.0 MP', 'Chính: 16.0 MP và Góc rộng: 5.0MP', 'FDD 1/3/5/7/8/20 TDD 20/40', '5000 mAh', 'Kim loại (mặt kính cong 2,5D)', 'nano sim, 2Sim', 'Bluetooth v4.1', 'Micro USB', NULL),
(44, 'Asus Zenfone Max Plus M1', 26, 5490000, 'Zenfone Max Plus M1 là chiếc smartphone theo xu thế màn hình viền mỏng đầu tiên của ASUS. Với ưu điểm thiết kế đẹp, pin lớn truyền thống dòng Zenfone Max', 'new', 'Công ty', '5.7 inch', 'Chính: Dual 16.0 MP + 8.0 MP, Phụ: 8.0 MP', '3 GB', '32GB', 'Android 7.0(Nougat)', 'MTK MT6750V/WT', 'MTK MT6750V/WT 8 nhân 64 bit 4GHz', '152.60 * 73.00 * 8.80~8.80 mm', '2160 x 1080', 'IPS LCD', '8.0MP', '16 MP và 8 MP (2 camera)', 'FDD-LTE Band 1/2/3/5/7/8/20 TDD-LTE Band 40 Support VoLTE', '4130 mAh', 'Kim loại, nguyên khối', 'Nano sim, 2Sim', 'V4.0', 'Micro USB', NULL),
(45, 'Xiaomi Mi A1', 27, 5490000, 'Xiaomi Mi A1 – là chiếc smartphone đến từ hãng Xiaomi, sở hữu một cấu hình mượt mà, với thiết kế hiện đại, cùng thời lượng pin ấn tượng', 'new', 'Công ty', '5.5 inch (1920 x 1080 pixels)', 'Dual 12.0 MP / 5.0 MP', '4 GB', '64GB', 'Android one 7.1', 'Qualcomm Snapdragon 625', '8 nhân 2.0GHz', 'Dài 155.4 mm - Ngang 75.8 mm - Dày 7.3 mm', '1080 x 1920 pixels', 'LTPS LCD', '5MP', '12MP + 12MP', '1(2100), 3(1800), 5(850),7(2600), 8(900), 20(800), 40(2555),41(2655MHz)', '3080 mAh', 'Kim loại nguyên khối', '2 SIM Nano (SIM 2 chung khe thẻ nhớ)', 'Bluetooth 4.2', 'USB Type-C', NULL),
(46, 'Xiaomi Redmi Note 5', 27, 4899000, 'Sản phẩm thì cũng mới. Nhưng giá của fpt cao. Giá của thị trường di động có 4tr2. Ma fpt 4tr9', 'like new', 'Quốc tế', '5.99 inch', 'Dual 12.0 MP + 5.0 MP, Phụ: 13.0 MP', '3 GB', '32GB', 'Android 8.0', 'Qualcomm Snapdragon 636', '8 nhân 2.0 GHz', 'Dài 155.4 mm - Ngang 75.8 mm - Dày 7.3 mm', '1080 x 1920 pixels', 'LTPS LCD', '13MP', '12M+5M', '1(2100), 3(1800), 5(850),7(2600), 8(900), 20(800), 40(2555),41(2655MHz)', '4000 mAh', 'Kim loại nguyên khối', '2 SIM Nano (SIM 2 chung khe thẻ nhớ)', 'Bluetooth 4.2', 'USB Type-C', NULL),
(47, 'Nokia 8', 25, 12990000, 'Nokia 8 là mẫu smartphone cao cấp nhất hiện tại của HMD Global, tuy chỉ nằm trong phân khúc giá tầm trung nhưng lại được trang bị thông số', 'new', 'Quốc tế', '5.3 inch', 'Chính: Dual 13.0 MP, Phụ: 13.0 MP', '4 GB', '64 GB', 'Android™ 7.1.1 Nougat', 'Qualcomm Snapdragon 835', 'Octa core, (4 2,5GHz Qualcomm® Kryo™ CPU + 4 1,8GHz Kryo)', 'Dài 151.5 mm - Ngang 73.7 mm - Dày 7.9 mm', '2K (1440 x 2560 pixels)', 'IPS LCD', '13 MP PDAF, 1.12um, f/2.0, 78.4˚', '13 MP (Màu sắc + OIS) + 13 MP (Đơn sắc), 1.12um, f/2.0, 76.9˚', '4G LTE Cat 6', '3090mAh2', 'Nhôm nguyên khối serie 6000', '1 khe nano-SIM + 1 khe nano-SIM', 'v5.0, A2DP, LE', 'Type C, USB3.1 Gen 1 (5Gbps)', NULL),
(48, 'Nokia 6', 25, 5590000, 'Nokia 6 là một trong những sản phẩm mới được HDM Global giới thiệu đến người dùng trong năm 2017 này. Máy sở hữu thiết kế ấn tượng', 'like new', 'Công ty', '5.5 inch (1080x1920 pixels)', 'Chính: 16.0 MP, Phụ: 8.0 MP', '3 GB', '32 GB', 'Android™ 7.1.1 Nougat', 'Qualcomm Snapdragon 430', '8 Nhân', '154 x 75.8 x 7.85 mm', '1080 x 1920 pixels', 'IPS LCD', '8.0 MP (f2.0)', '16.0 MP (f2.0)', 'LTE Cat 4', '3000mAh', 'Hợp kim nhôm nguyên khối', 'NanoSim', 'Bluetooth v4.1', 'MicroUSB', NULL),
(49, 'Nokia 5', 25, 4259000, 'Nokia 5 là một mẫu smartphone mới được ra mắt của HDM Global trong năm 2017 này. Sản phẩm sở hữu thiết kế hiện đại và thanh thoát', 'like new', 'Quốc tế', '5.2 inch, 720 x 1280 pixels', 'Chính: 13.0 MP, Phụ: 8.0 MP', '2 GB', '16 GB', 'Android™ 7.1.1 Nougat', 'Qualcomm Snapdragon 430', 'Qualcomm Snapdragon 430, 8 Nhân', '149.7 x 72.5 x 8.05 mm', '1280 x 720 pixels', 'IPS LCD', '8.0 MP (f2.0)', '13.0 MP (f2.0)', 'LTE Cat 4', '3000 mAh', 'Hợp kim nhôm nguyên khối (mặt kính cong 2,5D)\r\n', 'NanoSim', 'Bluetooth v4.1', 'microUSB v2.0', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`id`, `id_product`, `id_color`, `qty`) VALUES
(1, 2, 7, 60),
(2, 2, 2, 80),
(3, 1, 2, 10),
(4, 1, 7, 90),
(5, 4, 3, 8),
(6, 4, 4, 10),
(7, 3, 3, 20),
(8, 3, 1, 10),
(9, 5, 6, 10),
(10, 5, 5, 60),
(11, 4, 5, 10),
(12, 5, 3, 100),
(13, 6, 1, 1),
(14, 6, 5, 100),
(15, 6, 2, 100),
(16, 7, 7, 10),
(17, 7, 3, 10),
(18, 8, 7, 10),
(19, 8, 2, 10),
(20, 8, 3, 5),
(21, 10, 7, 10),
(22, 10, 2, 5),
(23, 10, 3, 6),
(24, 9, 7, 10),
(25, 9, 2, 10),
(26, 9, 3, 10),
(27, 11, 1, 10),
(28, 11, 2, 8),
(29, 11, 4, 10),
(30, 12, 1, 7),
(31, 12, 2, 10),
(32, 12, 4, 6),
(33, 13, 1, 10),
(34, 13, 2, 10),
(35, 13, 4, 10),
(36, 14, 1, 10),
(37, 14, 2, 10),
(38, 14, 4, 10),
(39, 15, 1, 10),
(40, 16, 1, 10),
(41, 16, 10, 10),
(42, 17, 7, 10),
(43, 18, 1, 10),
(44, 18, 10, 10),
(45, 19, 7, 10),
(46, 20, 1, 10),
(47, 20, 2, 10),
(48, 20, 5, 10),
(49, 21, 1, 10),
(50, 21, 2, 10),
(51, 21, 7, 10),
(52, 22, 7, 10),
(53, 22, 1, 10),
(54, 22, 2, 10),
(55, 23, 2, 10),
(56, 23, 1, 10),
(57, 23, 4, 10),
(58, 24, 1, 10),
(59, 24, 2, 10),
(60, 24, 4, 10),
(61, 24, 5, 10),
(62, 25, 1, 10),
(63, 25, 2, 10),
(64, 26, 2, 10),
(65, 26, 1, 10),
(66, 26, 4, 10),
(67, 26, 5, 10),
(68, 27, 5, 10),
(69, 27, 4, 10),
(70, 27, 2, 10),
(71, 27, 1, 10),
(72, 28, 1, 100),
(73, 28, 3, 100),
(74, 28, 7, 100),
(75, 29, 1, 20),
(76, 29, 4, 20),
(77, 29, 6, 20),
(78, 30, 8, 20),
(79, 30, 3, 20),
(80, 30, 1, 20),
(81, 31, 1, 20),
(82, 31, 9, 20),
(83, 31, 10, 20),
(84, 32, 1, 20),
(85, 32, 6, 20),
(86, 32, 10, 20),
(87, 33, 1, 20),
(88, 33, 3, 20),
(89, 33, 5, 20),
(90, 33, 6, 20),
(91, 34, 1, 20),
(92, 34, 3, 20),
(93, 34, 8, 20),
(94, 35, 1, 20),
(95, 35, 2, 20),
(96, 35, 5, 20),
(97, 36, 1, 20),
(98, 36, 3, 20),
(99, 36, 5, 20),
(100, 37, 3, 20),
(101, 37, 5, 20),
(102, 38, 1, 20),
(103, 38, 3, 20),
(104, 39, 1, 20),
(105, 39, 3, 20),
(106, 39, 7, 20),
(107, 40, 1, 20),
(108, 40, 2, 20),
(109, 40, 8, 20),
(110, 41, 2, 20),
(111, 41, 3, 20),
(112, 41, 10, 20),
(113, 42, 3, 10),
(114, 42, 1, 10),
(115, 43, 1, 20),
(116, 43, 3, 20),
(117, 43, 6, 20),
(118, 44, 1, 20),
(119, 44, 3, 20),
(120, 44, 10, 20),
(121, 45, 6, 10),
(122, 45, 1, 10),
(123, 46, 1, 20),
(124, 46, 3, 20),
(125, 46, 5, 20),
(126, 47, 1, 20),
(127, 47, 5, 20),
(128, 47, 2, 20),
(129, 48, 1, 20),
(130, 48, 5, 20),
(131, 48, 2, 20),
(132, 49, 6, 20),
(133, 49, 6, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `link`, `image`) VALUES
(1, 'SamSung Galaxy S8 Super Hot', 'a1', 'a.jpg'),
(2, 'Buy IphoneX Good friends never let U do stupid things', 'undefined', '3UZb_a1.jpg'),
(3, 'I can’t, you can’t but we can', 'b', 'b.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `phone`, `address`, `avatar`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Trần Quang Trung', 'adino@gmail.com', '$2y$10$FjCibwC5hbv/BI3fQ51b/.pk0yH4lbdyzmkAI17IBQooMZ9rXq68C', '987654321', 'Hà Nội', 'ez.jpg', 'admin', '2018-01-01 15:33:04', '0000-00-00 00:00:00'),
(2, 'Bruce Wayne', 'bw@gmail.com', '$2y$10$Y0JZEY6DTPO0.64E5pMZveX.uD.bkf6/F1.zS6n856Ic52wsh4KDq', '987654310', 'Thái Nguyên', 'qMdV_xxixuuu.jpg', 'mod', '2018-01-01 15:33:04', '0000-00-00 00:00:00'),
(3, 'Trần Hạo Nam', 'eeshara10@gmail.com', '$2y$10$SLmpkpFYjd1WYHdGqoEsaOxvZ1RRieeYfZqB6rMBXTi1IzvEu8/Da', '989241104', 'Hà Nội', 'noimage.jpg', 'customer', '2018-04-15 15:33:04', '0000-00-00 00:00:00'),
(4, 'Mi Huyền Diệu', 'bw1@gmail.com', '$2y$10$aqDnFnBiq/KCZFoudyVl.egBVWUOfLM5f6Ut19HoW/DrfDAB90Itm', '989635421', 'Thủ Đức', 'noimage.jpg', 'customer', '2018-04-15 15:33:04', '0000-00-00 00:00:00'),
(5, 'Nguyen van A', 'bw2@gmail.com', 'unknow', '987654311', 'Thái Nguyên', 'noimage.jpg', 'customer', '2018-03-27 14:45:55', '2018-04-23 08:05:37'),
(6, 'Nguyễn văn B', 'bw3@gmail.com', 'unknow', '987654311', 'Thái Nguyên', 'noimage.jpg', 'customer', '2018-03-21 14:45:59', '0000-00-00 00:00:00'),
(7, 'Nguyen van C', 'bw4@gmail.com', 'unknow', '987654311', 'Thái Nguyên', 'noimage.jpg', 'customer', '2018-03-12 14:46:01', '0000-00-00 00:00:00'),
(8, 'Trần Hạo Nam', 'bw5@gmail.com', 'unknow', '987654311', 'Thái Nguyên', 'noimage.jpg', 'customer', '2018-03-12 14:46:03', '0000-00-00 00:00:00'),
(9, 'Trần Thiên Long', 'bw6@gmail.com', 'unknow', '09892411044', 'Cầu giấy Hà Nội', 'noimage.jpg', 'customer', '2018-03-13 14:46:05', '2018-04-23 08:58:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_03` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `group_product`
--
ALTER TABLE `group_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `FK_02` (`id_brand`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Chỉ mục cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id_product_color`,`id_orders`),
  ADD KEY `id_orders` (`id_orders`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_01` (`id_group_product`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_color` (`id_color`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `group_product`
--
ALTER TABLE `group_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_03` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `group_product`
--
ALTER TABLE `group_product`
  ADD CONSTRAINT `FK_02` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`id`);

--
-- Các ràng buộc cho bảng `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`id_orders`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`id_product_color`) REFERENCES `product_color` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_01` FOREIGN KEY (`id_group_product`) REFERENCES `group_product` (`id`);

--
-- Các ràng buộc cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD CONSTRAINT `product_color_ibfk_1` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `product_color_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
