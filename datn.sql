-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 07, 2025 at 01:33 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datn`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `category_id` tinyint UNSIGNED NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_name`, `category_keyword`, `category_description`, `created_at`, `updated_at`) VALUES
(1, 'Trà Sữa', 'TS', 'Trà Sữa', '2025-03-06 20:52:38', '2025-03-06 20:52:38'),
(2, 'Trà Trái Cây', 'TTC', 'Trà Trái Cây', '2025-03-06 20:56:47', '2025-03-06 20:56:47'),
(3, 'Kem Sữa & Latte', 'KSL', 'Kem Sữa & Latte', '2025-03-06 20:57:03', '2025-03-06 20:57:03'),
(4, 'Trà Tươi', 'TT', 'Trà Tươi', '2025-03-06 20:58:21', '2025-03-06 20:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `city_id` int NOT NULL,
  `city_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`city_id`, `city_name`, `city_type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` bigint UNSIGNED NOT NULL,
  `coupon_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_value` int NOT NULL,
  `coupon_status` int NOT NULL,
  `coupon_expiry` date NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int NOT NULL,
  `district_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `district_type`, `city_id`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(16, 'Huyện Sóc Sơn', 'Huyện', 1),
(17, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R\'Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(1, 1, '/storage/images_product/hZIB9uUbqf_TS-Dao-PM-Dao-300x300.png', '2025-03-06 20:55:27', '2025-03-06 20:55:27'),
(2, 1, '/storage/images_product/xOee6LBUSt_z6050430969392_bf7c447cf1f9854b92d6c9400bce07b6.jpg', '2025-03-06 20:55:27', '2025-03-06 20:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_03_07_020703_create_categorys_table', 1),
(2, '2025_03_07_020847_create_citys_table', 1),
(3, '2025_03_07_020851_create_districts_table', 1),
(4, '2025_03_07_020857_create_coupons_table', 1),
(5, '2025_03_07_020901_create_images_table', 1),
(6, '2025_03_07_020915_create_users_table', 1),
(7, '2025_03_07_020916_create_products_table', 1),
(8, '2025_03_07_020917_create_toppings_table', 1),
(9, '2025_03_07_020922_create_orders_table', 1),
(10, '2025_03_07_020926_create_orderdetail_table', 1),
(11, '2025_03_07_020929_create_orderdetail_topping_table', 1),
(12, '2025_03_07_020933_create_posts_table', 1),
(13, '2025_03_07_020944_create_slide_table', 1),
(14, '2025_03_07_020952_create_wishlist_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_detail_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` int UNSIGNED DEFAULT NULL,
  `size` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_detail_quantity` int NOT NULL,
  `order_detail_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_detail_id`, `order_id`, `product_id`, `size`, `order_detail_quantity`, `order_detail_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'M', 1, 40000, '2025-03-06 21:06:20', '2025-03-06 21:06:20'),
(2, 1, 1, 'L', 1, 42000, '2025-03-06 21:06:20', '2025-03-06 21:06:20'),
(3, 2, 1, 'M', 1, 40000, '2025-03-06 21:11:44', '2025-03-06 21:11:44'),
(4, 2, 1, 'L', 1, 42000, '2025-03-06 21:11:44', '2025-03-06 21:11:44'),
(5, 3, 1, 'M', 1, 40000, '2025-03-06 21:12:24', '2025-03-06 21:12:24'),
(6, 3, 1, 'L', 1, 42000, '2025-03-06 21:12:24', '2025-03-06 21:12:24'),
(7, 4, 1, 'M', 1, 40000, '2025-03-06 21:13:57', '2025-03-06 21:13:57'),
(8, 4, 1, 'L', 1, 42000, '2025-03-06 21:13:57', '2025-03-06 21:13:57'),
(9, 5, 1, 'M', 1, 40000, '2025-03-06 21:16:24', '2025-03-06 21:16:24'),
(10, 5, 1, 'L', 1, 42000, '2025-03-06 21:16:24', '2025-03-06 21:16:24'),
(11, 6, 1, 'M', 1, 40000, '2025-03-06 21:38:30', '2025-03-06 21:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail_topping`
--

CREATE TABLE `orderdetail_topping` (
  `order_detail_id` bigint UNSIGNED NOT NULL,
  `topping_id` int UNSIGNED NOT NULL,
  `topping_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail_topping`
--

INSERT INTO `orderdetail_topping` (`order_detail_id`, `topping_id`, `topping_price`) VALUES
(1, 1, 5000.00),
(2, 1, 5000.00),
(2, 2, 2000.00),
(3, 1, 5000.00),
(4, 1, 5000.00),
(4, 2, 2000.00),
(5, 1, 5000.00),
(6, 1, 5000.00),
(6, 2, 2000.00),
(7, 1, 5000.00),
(8, 1, 5000.00),
(8, 2, 2000.00),
(9, 1, 5000.00),
(10, 1, 5000.00),
(10, 2, 2000.00),
(11, 1, 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `order_shipping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_pay_type` int NOT NULL,
  `order_profit` int NOT NULL,
  `order_total` int NOT NULL,
  `shipping_fee` int DEFAULT NULL,
  `order_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_shipping`, `ward`, `address`, `order_note`, `order_pay_type`, `order_profit`, `order_total`, `shipping_fee`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 23, 'Tên người nhận: admin - Email: info@maitrungkien.com - Số điện thoại: 0943206425 - Địa chỉ:  - Huyện Mèo Vạc - Tỉnh Hà Giang', NULL, NULL, NULL, 1, 54000, 114000, 25000, 1, '2025-03-06 17:00:00', '2025-03-06 21:06:20'),
(2, 63, 'Tên người nhận: NVTEASHOP - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ:  - Huyện Đồng Văn - Tỉnh Hà Giang', NULL, NULL, NULL, 1, 54000, 114000, 25000, 1, '2025-03-06 17:00:00', '2025-03-06 21:11:44'),
(3, 63, 'Tên người nhận: NVTEASHOP - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ:  - Huyện Mèo Vạc - Tỉnh Hà Giang', NULL, NULL, NULL, 1, 54000, 114000, 25000, 1, '2025-03-06 17:00:00', '2025-03-06 21:12:24'),
(4, 63, 'Tên người nhận: NVTEASHOP - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ:  - Huyện Ba Bể - Tỉnh Bắc Kạn', NULL, NULL, NULL, 1, 54000, 114000, 25000, 1, '2025-03-06 17:00:00', '2025-03-06 21:13:57'),
(5, 63, 'Tên người nhận: NVTEASHOP - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ:  - Huyện Bảo Lâm - Tỉnh Cao Bằng', NULL, NULL, NULL, 1, 54000, 114000, 25000, 1, '2025-03-06 17:00:00', '2025-03-06 21:16:24'),
(6, 63, 'Tên người nhận: NVTEASHOP - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ:  - Huyện Yên Minh - Tỉnh Hà Giang', NULL, NULL, NULL, 1, 35000, 65000, 25000, 1, '2025-03-06 17:00:00', '2025-03-06 21:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_content`, `post_image`, `created_at`, `updated_at`) VALUES
(18, 23, 'Giới thiệu thương hiệu', '<p><strong>Tr&agrave; T&acirc;m Tr&agrave; Th&aacute;i Nguy&ecirc;n - Hương Vị Tinh Tế từ V&ugrave;ng Đất Tr&agrave; Quyến Rũ</strong></p>\r\n\r\n<p>Ch&agrave;o mừng đến với thế giới của Tr&agrave; T&acirc;m, nơi m&agrave; hương vị tinh tế h&ograve;a quyện với truyền thống hơn một thế kỷ của nghệ nh&acirc;n tr&agrave; Th&aacute;i Nguy&ecirc;n. Với niềm đam m&ecirc; ch&acirc;n th&agrave;nh, ch&uacute;ng t&ocirc;i tự h&agrave;o giới thiệu đến bạn những trải nghiệm tr&agrave; kh&ocirc;ng giới hạn, mang đến sự trọn vẹn từ những t&aacute;n l&aacute; tr&agrave; tinh khiết nhất.</p>\r\n\r\n<p><strong>Hồn Tr&agrave; Th&aacute;i Nguy&ecirc;n:</strong></p>\r\n\r\n<p>Tr&agrave; T&acirc;m l&agrave; một h&agrave;nh tr&igrave;nh qua những vườn tr&agrave; bậc thầy ở v&ugrave;ng n&uacute;i cao Th&aacute;i Nguy&ecirc;n, nơi tạo n&ecirc;n b&iacute; mật của hương vị đặc trưng kh&ocirc;ng thể nhầm lẫn. H&ograve;a quyện giữa đất trời v&agrave; tay nghề của những người n&ocirc;ng d&acirc;n tận t&acirc;m, ch&uacute;ng t&ocirc;i chọn lựa những t&aacute;n l&aacute; tr&agrave; tốt nhất, mỗi l&aacute; đều l&agrave; một c&acirc;u chuyện kỳ diệu về hương thơm v&agrave; vị ngon.</p>\r\n\r\n<p><strong>Đa Dạng Sản Phẩm:</strong></p>\r\n\r\n<p>Từ tr&agrave; xanh tinh tế đến tr&agrave; đen mạnh mẽ, bộ sưu tập của ch&uacute;ng t&ocirc;i đảm bảo mang lại sự đa dạng v&agrave; độc đ&aacute;o cho mọi người y&ecirc;u tr&agrave;. Bạn c&oacute; thể tận hưởng từng giọt tr&agrave;, cảm nhận hương thơm, v&agrave; kh&aacute;m ph&aacute; những tầng lớp hương vị phong ph&uacute; m&agrave; chỉ c&oacute; Tr&agrave; T&acirc;m mang lại.</p>\r\n\r\n<p><strong>Chất Lượng Đặt L&ecirc;n H&agrave;ng Đầu:</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i kh&ocirc;ng chỉ ch&uacute; trọng đến hương vị, m&agrave; c&ograve;n tận t&acirc;m với chất lượng sản phẩm. Từ qu&aacute; tr&igrave;nh thu h&aacute;i đến chế biến, ch&uacute;ng t&ocirc;i duy tr&igrave; một quy tr&igrave;nh nghi&ecirc;m ngặt để đảm bảo rằng mỗi t&aacute;ch tr&agrave; bạn thưởng thức đều l&agrave; một t&aacute;c phẩm nghệ thuật.</p>\r\n\r\n<p><strong>Sứ Mệnh Văn H&oacute;a:</strong></p>\r\n\r\n<p>Tr&agrave; T&acirc;m kh&ocirc;ng chỉ l&agrave; sản phẩm, m&agrave; c&ograve;n l&agrave; một sứ mệnh văn h&oacute;a để t&ocirc;n vinh v&agrave; bảo tồn di sản tr&agrave; Th&aacute;i Nguy&ecirc;n. Ch&uacute;ng t&ocirc;i cam kết hỗ trợ cộng đồng n&ocirc;ng d&acirc;n, bảo vệ m&ocirc;i trường v&agrave; truyền đạt tinh hoa tr&agrave; Việt đến mọi ng&oacute;c ng&aacute;ch của thế giới.</p>\r\n\r\n<p>H&atilde;y để Tr&agrave; T&acirc;m l&agrave; đối t&aacute;c đồng h&agrave;nh của bạn trong mỗi khoảnh khắc thư gi&atilde;n, để trải nghiệm hương vị tinh tế của tr&agrave; Th&aacute;i Nguy&ecirc;n l&agrave;m dịu d&agrave;ng t&acirc;m hồn v&agrave; l&agrave;m phong ph&uacute; cuộc sống.</p>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với thế giới của Tr&agrave; T&acirc;m - Hương Vị Tinh Tế, Nguồn Cảm Hứng V&ocirc; Tận!</p>', '/storage/images_blog/FnU1FIL27z_900x900-Xanh-Sua-Nhai-Dao-Tien.jpg', '2023-12-10 01:39:42', '2025-03-06 02:47:45'),
(19, 23, 'Hình thức thanh toán', '<h2><strong>Thanh to&aacute;n bằng tiền mặt</strong></h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n trực tiếp</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n trực tiếp ngay khi mua h&agrave;ng tại:</p>\r\n\r\n<ul>\r\n	<li>VPGD: X&oacute;m Hồng Th&aacute;i 2, X. T&acirc;n Cương, Tp. Th&aacute;i Nguy&ecirc;n, Th&aacute;i Nguy&ecirc;n</li>\r\n	<li>Hoặc c&aacute;c cửa h&agrave;ng của T&acirc;m Tr&agrave; Th&aacute;i tr&ecirc;n to&agrave;n quốc.</li>\r\n</ul>\r\n\r\n<p><strong>2. Thanh to&aacute;n khi nhận h&agrave;ng (COD)</strong></p>\r\n\r\n<ul>\r\n	<li>Nếu qu&yacute; kh&aacute;ch ở xa, qu&yacute; kh&aacute;ch c&oacute; thể chọn h&igrave;nh thức giao h&agrave;ng thu tiền (COD). Sau 3-5 ng&agrave;y đặt h&agrave;ng, đơn h&agrave;ng sẽ được chuyển đến tận nh&agrave; qu&yacute; kh&aacute;ch, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n to&agrave;n bộ tiền h&agrave;ng (hoặc phần c&ograve;n lại của gi&aacute;o trị đơn h&agrave;ng nếu đ&atilde; đặt cọc) + ph&iacute; ship cho nh&acirc;n vi&ecirc;n giao h&agrave;ng.</li>\r\n</ul>\r\n\r\n<h2><strong>Thanh to&aacute;n chuyển khoản</strong></h2>\r\n\r\n<ul>\r\n	<li>Nếu địa điểm giao h&agrave;ng l&agrave; ngoại th&agrave;nh, ngoại tỉnh hoặc nội th&agrave;nh th&agrave;nh phố H&agrave; Nội nhưng kh&aacute;c với địa điểm thanh to&aacute;n (trong trường hợp Qu&yacute; kh&aacute;ch gửi qu&agrave;, gửi h&agrave;ng cho bạn b&egrave;, đối t&aacute;c &hellip;) ch&uacute;ng t&ocirc;i sẽ thu tiền trước 100% gi&aacute; trị đơn h&agrave;ng + ph&iacute; vận chuyển theo cước ph&iacute; t&iacute;nh trong chinh s&aacute;ch vận chuyển bằng phương thức chuyển khoản trước khi giao h&agrave;ng</li>\r\n	<li>Qu&yacute; kh&aacute;ch chuyển tiền cho ch&uacute;ng t&ocirc;i theo STK của T&acirc;m Tr&agrave; Th&aacute;i.</li>\r\n	<li><strong>Ghi ch&uacute;:</strong>&nbsp;Để h&agrave;ng h&oacute;a v&agrave; gi&aacute; cả được ch&iacute;nh x&aacute;c, ngay sau khi qu&yacute; kh&aacute;ch chuyển tiền xin vui l&ograve;ng fax giấy ủy nhiệm chi c&oacute; dấu ng&acirc;n h&agrave;ng chuyển tiền để nh&acirc;n vi&ecirc;n kinh doanh l&agrave;m căn cứ giữ h&agrave;ng v&agrave; gi&aacute; tiền theo đ&uacute;ng thỏa thuận cho qu&yacute; kh&aacute;ch.</li>\r\n</ul>', '/storage/images_blog/KvifIekYkx_ts_tran_chau_052aed385e41470db7cec46eddfcfdbb_large.webp', '2023-12-10 01:41:14', '2025-03-06 02:47:21'),
(20, 23, 'Hướng dẫn mua hàng', '<p><strong>Qu&yacute; kh&aacute;ch c&oacute; thể mua h&agrave;ng trực tiếp bằng 4 c&aacute;ch:</strong></p>\r\n\r\n<ul>\r\n	<li>Gọi điện thoại đến Hotline&nbsp;<a href=\"tel:0901683938\">0901.68.3938</a>&nbsp;(Mr.Giang) &ndash;&nbsp;<a href=\"tel:0829846777\">0829.84.6777</a>&nbsp;(Mr.Nam)</li>\r\n	<li>Truy cập website:&nbsp;<a href=\"https://tamtrathai.com.vn/\">https://tamtrathai.com.vn/</a></li>\r\n	<li>Đặt h&agrave;ng qua Fanpage:&nbsp;<a href=\"https://www.facebook.com/htxtamtrathai\">https://www.facebook.com/htxtamtrathai</a></li>\r\n	<li>Đến văn ph&ograve;ng giao dịch T&acirc;m Tr&agrave; Th&aacute;i tại X&oacute;m Hồng Th&aacute;i 2, X. T&acirc;n Cương, Tp. Th&aacute;i Nguy&ecirc;n, Th&aacute;i Nguy&ecirc;n. Ngo&agrave;i mua h&agrave;ng, qu&yacute; kh&aacute;ch c&oacute; thể đến thăm quan đồi ch&egrave; của ch&uacute;ng t&ocirc;i.</li>\r\n</ul>\r\n\r\n<p><strong>Mua h&agrave;ng tại website&nbsp;<a href=\"https://tamtrathai.com.vn/\">https://tamtrathai.com.vn&nbsp;</a>:</strong></p>\r\n\r\n<p><strong><em>Bước 1</em></strong>: Truy cập website&nbsp;<a href=\"https://tamtrathai.com.vn/\">tamtrathai.com.vn</a>, t&igrave;m hiểu sản phẩm m&igrave;nh cần tại mục&nbsp;<a href=\"https://tamtrathai.com.vn/san-pham-tra/\" rel=\"noopener\" target=\"_blank\">SẢN PHẨM</a>&nbsp;để tham khảo c&aacute;c chương tr&igrave;nh giảm gi&aacute;, qu&agrave; tặng hấp dẫn.</p>\r\n\r\n<p><em><strong>Bước 2:</strong>&nbsp;</em>Chọn sản phẩm, số lượng cần mua v&agrave; click &ldquo;Bỏ v&agrave;o giỏ h&agrave;ng&rdquo; để tiếp tục mua th&ecirc;m c&aacute;c sản phẩm kh&aacute;c, hoặc click v&agrave;o &ldquo;Mua ngay&rdquo; để tiến h&agrave;nh thanh to&aacute;n.</p>\r\n\r\n<p><em><strong>Bước 3:</strong></em>&nbsp;Sau khi chọn xong tất cả c&aacute;c sản phẩm muốn mua. Click v&agrave;o Giỏ h&agrave;ng ở g&oacute;c tr&ecirc;n b&ecirc;n phải m&agrave;n h&igrave;nh. Kiểm tra lại c&aacute;c sản phẩm v&agrave; số lượng trong giỏ h&agrave;ng v&agrave; điền c&aacute;c th&ocirc;ng tin thanh to&aacute;n cần thiết.</p>\r\n\r\n<p><em><strong>Bước 4:</strong>&nbsp;</em>Ấn X&Aacute;C NHẬN ĐẶT H&Agrave;NG sau khi đ&atilde; điền đầy đủ th&ocirc;ng tin.</p>\r\n\r\n<p><em><strong>Bước 5:</strong></em>&nbsp;Nh&acirc;n vi&ecirc;n T&acirc;m Tr&agrave; Th&aacute;i sẽ gọi điện cho bạn để x&aacute;c nhận đơn h&agrave;ng v&agrave; thực hiện đơn h&agrave;ng.</p>\r\n\r\n<p><strong>Trải nghiệm kh&ocirc;ng gian xanh an l&agrave;nh tại chuỗi cửa h&agrave;ng T&acirc;m Tr&agrave; Th&aacute;i hoặc văn ph&ograve;ng giao dịch tại T&acirc;n Cương &ndash; Th&aacute;i Nguy&ecirc;n:</strong></p>\r\n\r\n<p>Giờ mở cửa: 08h00 s&aacute;ng đến 17h30. Tất cả c&aacute;c ng&agrave;y trong tuần.</p>\r\n\r\n<p>Nghỉ c&aacute;c ng&agrave;y lễ theo quy định của Nh&agrave; nước.</p>', '/storage/images_blog/T4ghdqnIK1_ts_tran_chau_052aed385e41470db7cec46eddfcfdbb_large.webp', '2023-12-10 01:42:04', '2025-03-06 02:47:06'),
(21, 23, 'Chứng nhận ATTP', '<h2><strong>Một số giấy chứng nhận an to&agrave;n thực phẩm của ch&uacute;ng t&ocirc;i:&nbsp;</strong></h2>\r\n\r\n<p>Với mục ti&ecirc;u v&igrave; sức khỏe cộng đồng, sản phẩm HTX T&Acirc;M TR&Agrave;&nbsp; TH&Aacute;I lu&ocirc;n l&agrave; sự lựa chọn tin cậy của người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>Tr&ecirc;n lộ tr&igrave;nh ph&aacute;t triển Thương hiệu ĐẶC SẢN CH&Egrave; T&Acirc;N CƯƠNG &ndash; T&Acirc;M TR&Agrave; TH&Aacute;I&nbsp; &nbsp;được c&aacute; c&aacute; nh&acirc;n, cơ quan, tổ chức trong v&agrave; ngo&agrave;i nước ủng hộ v&agrave; đ&aacute;nh gi&aacute; cao về quy tr&igrave;nh sản xuất v&agrave; chất lượng sản phẩm. Đ&oacute; l&agrave; động lực th&uacute;c đẩy ch&uacute;ng t&ocirc;i ph&aacute;t triển v&agrave; hưng thịnh m&atilde;i m&atilde;i.</p>\r\n\r\n<p>H&atilde;y r&egrave;n luyện cho m&igrave;nh một tho&aacute;i quen một ch&eacute;n tr&agrave; xanh&nbsp; buổi s&aacute;ng b&ecirc;n gia đ&igrave;nh để bảo vệ sức khỏe v&agrave; cung cấp năng lượng cho một ng&agrave;y l&agrave;m việc hiệu quả c&aacute;c bạn nh&eacute;.</p>\r\n\r\n<p><em>Giấy chứng nhận cơ sở đủ điều kiện an to&agrave;n thực phẩm</em></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/thuc-pham-an-toan.jpg\" title=\"\"><img alt=\"Chuỗi cung ứng thực phẩm an toàn Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/thuc-pham-an-toan.jpg\" style=\"height:1280px; width:923px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/chung-nhan-quyen-su-dung.jpg\" title=\"\"><img alt=\"Chứng nhận quyền sử dụng chỉ dẫn địa lý Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/chung-nhan-quyen-su-dung.jpg\" style=\"height:1280px; width:927px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-2.jpg\" title=\"\"><img alt=\"OCOP Tâm Trà Thái - Trà Tôm Nõn\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-2.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-3.jpg\" title=\"\"><img alt=\"OCOP Tâm Trà Thái - Nhất Đinh Trà\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-3.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-4.jpg\" title=\"\"><img alt=\"Chứng nhận vệ sinh an toàn thực phẩm Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-4.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-6.jpg\" title=\"\"><img alt=\"Chứng nhận Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-6.jpg\" style=\"height:629px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-11.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-11.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-10.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-10.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-9.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-9.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-8.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-8.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/vietgapttt.jpg\" title=\"\"><img alt=\"Vietgap Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/vietgapttt.jpg\" style=\"height:1233px; width:900px\" /></a></p>', '/storage/images_blog/kJHBvVIg0R_luc_tra_hoang_kim_4b2ef28d7cc04db0a47c0587e05f8963_large.webp', '2023-12-10 01:42:32', '2025-03-06 02:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int UNSIGNED NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` tinyint UNSIGNED DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci,
  `product_price_buy` int NOT NULL,
  `product_price_sell` int NOT NULL,
  `product_amount` int NOT NULL,
  `product_sale` int DEFAULT NULL,
  `product_attribute` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_keyword` text COLLATE utf8mb4_unicode_ci,
  `product_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(1, 'Trà Sữa Trân Châu', 1, '/storage/images_product/2q1e2vpunc_TS-Dao-PM-Dao-300x300.png', 30000, 35000, 988, 0, '<p>Tr&agrave; Sữa Tr&acirc;n Ch&acirc;u</p>', '<p>Tr&agrave; Sữa Tr&acirc;n Ch&acirc;u</p>', 'TSTC', 'Trà Sữa Trân Châu');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` bigint UNSIGNED NOT NULL,
  `slide_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int NOT NULL,
  `type` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toppings`
--

CREATE TABLE `toppings` (
  `topping_id` int UNSIGNED NOT NULL,
  `topping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toppings`
--

INSERT INTO `toppings` (`topping_id`, `topping_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Trân châu ', 5000.00, NULL, NULL),
(2, 'Thạch', 2000.00, NULL, NULL),
(3, 'Kem', 3000.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int UNSIGNED NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_district` int DEFAULT NULL,
  `user_city` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_verify` tinyint(1) NOT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`, `user_phone`, `user_address`, `user_district`, `user_city`, `provider`, `provider_id`, `role_id`, `created_at`, `updated_at`, `is_verify`, `verification_code`) VALUES
(23, 'admin', 'info@maitrungkien.com', '$2a$12$VxqsJdoYt7X2L.EfaL5yGOcBm4RYq4Q/uyvNrZjuZA4rXdb35hUwy', '0943206425', 'Điềm Mặc, Định Hoá, Thái Nguyên', 27, 2, NULL, NULL, 1, '2021-12-21 12:23:27', '2025-03-06 04:11:24', 1, ''),
(24, 'MAI TRUNG KIÊN', 'maitrungkien1002@gmail.com', '$2a$12$VxqsJdoYt7X2L.EfaL5yGOcBm4RYq4Q/uyvNrZjuZA4rXdb35hUwy', NULL, NULL, NULL, NULL, 'google', '108963655266565491761', 1, '2022-11-13 01:52:42', '2023-11-20 03:57:04', 1, ''),
(38, 'kien đây', 'hoangkienzx@gmail.com', '$2y$10$7Azcbot.9DldE88CYBP2U.5tz3MsEBuHAeARMIpkieYFbONBg79gW', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-09-21 13:57:35', '2023-09-21 13:57:35', 1, 'be6ab80086cb47317769fbbce97a9c0656973807'),
(40, 'quản lý sản phẩm', 'cuong.pv@tinasoft.vn', '$2y$10$UCoFS.haL43n4uZvokfu6OBf/L592Q0J2WhgwC6DAzdPFFz2FpNgq', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-10-09 17:51:42', '2024-01-11 17:13:40', 1, 'b08150009ca96cd896ab016e33700a8449f44b52'),
(46, 'Minh Nhật', 'namseller@gmail.com', '$2y$10$RYABzAGn/KTHznq5dqcGAezSGyLL74iiST9kbAGQt0mM2MRXkv1zy', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-02 02:24:39', '2023-11-02 02:24:39', 1, 'd9afcb057e41b89c3728d01652ef1865eb196daf'),
(51, 'Long Nhật Tuyền', 'visang11@masterkorean.vn', '$2y$10$/FJnNplIUMe.THqCDiVqlO9zubJvHytLHMZ1HBz0jxocdWnfvly02', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-02 19:44:19', '2023-11-02 19:44:19', 1, '9a373a717ec06c90e6761240141de81df6f3ba16'),
(52, 'Phạm Thành An', 'visang123@masterkorean.vn', '$2y$10$TNGSW39GFLYbwejxizqmoe5mcYrgCa0OQGxYmGkpJAjKocVu3NGmG', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-02 19:45:54', '2023-11-02 20:01:33', 1, 'e7cbc1131744064091147668d66a408b85951266'),
(53, 'Kiên Nhât Thành', 'cuongatk@yahoo.com.vn', '$2y$10$cSdgWvy5LoXbWMDHwE5uN.m8bVtas5S7.YvAReONDtBcCNL728zdK', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-02 20:01:51', '2023-11-02 20:01:51', 1, '9c1cb8cd2dff302a32e09145038df8b8fee66675'),
(54, 'Nguyễn Văn Nhật', 'email1@gmail.com', '$2y$10$SEx42Tk3o0wZYF69IHQUgOdx2Mzm3bVglHQEjRq/xq9xo23ReFzOG', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-02 20:04:13', '2023-12-03 03:34:48', 1, '663900b7c53d8eb4742ecdae7b33052f3e69e193'),
(55, 'admin', 'admin@gmail.com', '$2y$10$2doprg8fL6Wtm/9L37TZCODRtIeCAC6QisarOvZ11djMkMdguzV3q', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-17 23:33:59', '2023-11-17 23:38:58', 1, 'c1c65f53af14e9d1b0885edfcc919812f0821e1f'),
(59, 'Hà Quang Uy', 'dtc1955103020102@ictu.edu.vn', '$2y$10$3PcLZWj10EOCLBYy1WNpNeYM7qpGkHF5AQ78y3waJn.C8p7At7jQa', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-21 14:19:24', '2023-12-03 03:34:55', 1, 'f6d26ecbf7be22220b1de02791816574d126446c'),
(63, 'NVTEASHOP', 'cuongdtnt109@gmail.com', '$2y$10$SP0JNHIdFwq1S/zxYfcAZOpzzyMFcED0GmrpH/BMW85OEVvr5zvdu', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2025-03-05 01:54:27', '2025-03-06 21:11:11', 1, 'dd0798e988e26afaff6f1fa7a7a3aba7fd84de40');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` bigint UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `orderdetail_order_id_foreign` (`order_id`),
  ADD KEY `orderdetail_product_id_foreign` (`product_id`);

--
-- Indexes for table `orderdetail_topping`
--
ALTER TABLE `orderdetail_topping`
  ADD PRIMARY KEY (`order_detail_id`,`topping_id`),
  ADD KEY `orderdetail_topping_topping_id_foreign` (`topping_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppings`
--
ALTER TABLE `toppings`
  ADD PRIMARY KEY (`topping_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toppings`
--
ALTER TABLE `toppings`
  MODIFY `topping_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `citys` (`city_id`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderdetail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orderdetail_topping`
--
ALTER TABLE `orderdetail_topping`
  ADD CONSTRAINT `orderdetail_topping_order_detail_id_foreign` FOREIGN KEY (`order_detail_id`) REFERENCES `orderdetail` (`order_detail_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetail_topping_topping_id_foreign` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`topping_id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`category_id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
