-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2025 at 03:57 AM
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
-- Database: `project10/3`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` tinyint UNSIGNED NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_keyword`, `brand_description`, `created_at`, `updated_at`) VALUES
(2, 'Citizen', 'Citizen', 'Citizen', '2021-12-19 12:53:53', '2025-02-17 21:24:24'),
(3, 'Casio', 'Casio', 'Casio', '2021-12-19 12:54:15', '2025-02-17 21:24:06'),
(15, 'Rolex', 'Rolex', 'Rolex', '2023-10-06 00:24:23', '2025-02-17 21:23:57');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_name`, `category_keyword`, `category_description`, `created_at`, `updated_at`) VALUES
(4, 'Trà hoa cúc', 'Trà hoa cúc', 'Trà hoa cúc', '2021-12-19 12:58:04', '2023-09-18 21:28:12'),
(5, 'Trà đại từ', 'Trà đại từ', 'Trà đại từ', '2021-12-19 12:58:37', '2023-09-18 21:26:52'),
(6, 'Đồng hồ nam', 'Đồng hồ nam', 'Đồng hồ nam', '2021-12-20 13:01:29', '2025-02-17 21:49:45'),
(30, 'Đồng hồ nữ', 'Đồng hồ nữ', 'Đồng hồ nữ', '2023-11-23 09:00:21', '2025-02-17 21:49:28'),
(33, 'Đồng hồ thể thao', 'Đồng hồ thể thao', 'Đồng hồ thể thao', '2023-12-03 08:57:45', '2025-02-17 21:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `city_id` int NOT NULL,
  `city_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `comment_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_rating` int DEFAULT NULL,
  `comment_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `product_id`, `comment_customer`, `comment_admin`, `comment_rating`, `comment_status`, `created_at`, `updated_at`) VALUES
(1, 23, 56, 'rất tôt', NULL, 5, 3, '2023-11-08 19:56:41', '2023-11-11 06:46:50'),
(3, 23, 57, 'Không còn gì để diễn tả quá ngon và rẻ', 'Cảm ơn bạn', 5, 3, '2023-11-10 10:28:28', '2023-11-10 10:30:33');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `coupon_name`, `coupon_code`, `coupon_value`, `coupon_status`, `coupon_expiry`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Mã giảm giá thường niên', 'CODE20', 20, 1, '2024-02-29', '23,23,23,23,23,23,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,40,', '2023-11-08 01:28:01', '2023-12-09 00:14:31'),
(3, 'Mã khuyến mãi cho khách hàng', 'CODE 50', 50, 1, '2024-02-29', '62,62,62,', '2023-11-21 03:46:50', '2024-01-11 08:04:09'),
(4, 'Mã cho bạn của Cường', 'CODE NE', 100000, 2, '2024-02-29', '23,57,', '2023-11-21 03:47:28', '2023-12-26 09:26:18'),
(5, 'Mã thường niên 2023', 'CODE 2023', 30, 1, '2024-02-29', NULL, '2023-11-21 11:43:04', '2023-12-09 00:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int NOT NULL,
  `district_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(7, 3, '/storage/images_product/MD6kulqucT_den-gan-tuong-ma-vang-dgt-003-.jpg', '2021-12-21 08:33:59', '2021-12-21 08:33:59'),
(8, 3, '/storage/images_product/vGITJ6ZNCF_den-gan-tuong-ma-vang-dgt-003-1.jpg', '2021-12-21 08:33:59', '2021-12-21 08:33:59'),
(9, 3, '/storage/images_product/amx01sbhv9_den-gan-tuong-ma-vang-dgt-003-4.jpg', '2021-12-21 08:33:59', '2021-12-21 08:33:59'),
(10, 4, '/storage/images_product/9LIE3Y0C1Z_den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn.jpg', '2021-12-21 08:39:31', '2021-12-21 08:39:31'),
(11, 4, '/storage/images_product/Um2hl5MtYz_den-trang-tri-phong-ngu-nhap-khau-cao-cap-dn-086-1.jpg', '2021-12-21 08:39:31', '2021-12-21 08:39:31'),
(12, 5, '/storage/images_product/qMYg1V7Z3K_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-10.jpg', '2021-12-21 08:41:41', '2021-12-21 08:41:41'),
(13, 5, '/storage/images_product/YbipzxeRED_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-11.jpg', '2021-12-21 08:41:41', '2021-12-21 08:41:41'),
(14, 5, '/storage/images_product/4vbkhWZX8C_tranh-decor-hien-dai-trang-tri-phong-khach-ts-941-12.jpg', '2021-12-21 08:41:41', '2021-12-21 08:41:41'),
(18, 7, '/storage/images_product/kNXuWrvLze_den-chum-nghe-thuat-thong-tang-dtt-013-1.jpg', '2021-12-21 09:55:11', '2021-12-21 09:55:11'),
(19, 7, '/storage/images_product/BBLZbw3I9m_den-chum-nghe-thuat-thong-tang-dtt-013-2.jpg', '2021-12-21 09:55:11', '2021-12-21 09:55:11'),
(20, 7, '/storage/images_product/C3bZLi4Gqb_den-chum-nghe-thuat-thong-tang-dtt-013-12.jpg', '2021-12-21 09:55:11', '2021-12-21 09:55:11'),
(21, 8, '/storage/images_product/f7KmiSvBJp_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093.jpg', '2021-12-21 09:58:13', '2021-12-21 09:58:13'),
(22, 8, '/storage/images_product/vwxNxjLnvH_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093-1.jpg', '2021-12-21 09:58:13', '2021-12-21 09:58:13'),
(23, 8, '/storage/images_product/uYG3uoC1XP_den-ban-nghe-thuat-trang-tri-phong-ngu-dn-093-3.jpg', '2021-12-21 09:58:13', '2021-12-21 09:58:13'),
(24, 9, '/storage/images_product/OUZ5BezLon_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-2.jpg', '2021-12-21 10:01:23', '2021-12-21 10:01:23'),
(25, 9, '/storage/images_product/EiLuFRD2qt_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-4.jpg', '2021-12-21 10:01:23', '2021-12-21 10:01:23'),
(26, 9, '/storage/images_product/pAJlX3KX7F_tranh-noi-3d-treo-tuong-ton-ngo-khong-tsa-110-7.jpg', '2021-12-21 10:01:23', '2021-12-21 10:01:23'),
(27, 10, '/storage/images_product/zJSEnWb9uO_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-1.jpg', '2021-12-21 10:05:49', '2021-12-21 10:05:49'),
(28, 10, '/storage/images_product/2JXHHx6kqO_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-3.jpg', '2021-12-21 10:05:49', '2021-12-21 10:05:49'),
(29, 10, '/storage/images_product/heSc6r3Bw3_tranh-decor-3d-trang-tri-noi-that-phong-khach-tsa-102-4.jpg', '2021-12-21 10:05:49', '2021-12-21 10:05:49'),
(30, 11, '/storage/images_product/Ww50kcl2UG_guong-trang-tri-nhap-khau-gs-036.jpg', '2021-12-21 10:08:17', '2021-12-21 10:08:17'),
(31, 11, '/storage/images_product/Ha9gEOax44_guong-trang-tri-nhap-khau-gs-036-3.jpg', '2021-12-21 10:08:17', '2021-12-21 10:08:17'),
(32, 11, '/storage/images_product/R0vEayAhto_guong-trang-tri-nhap-khau-gs-036-4.jpg', '2021-12-21 10:08:17', '2021-12-21 10:08:17'),
(36, 13, '/storage/images_product/DZ0cap9zNq_sofa-da-hien-dai-nhap-khau-sf-023-1.jpg', '2021-12-21 10:12:50', '2021-12-21 10:12:50'),
(37, 13, '/storage/images_product/DQgWOLhvvg_sofa-da-hien-dai-nhap-khau-sf-023-3.jpg', '2021-12-21 10:12:50', '2021-12-21 10:12:50'),
(38, 13, '/storage/images_product/4bm9B8z7Os_sofa-da-hien-dai-nhap-khau-sf-023-7.jpg', '2021-12-21 10:12:50', '2021-12-21 10:12:50'),
(39, 14, '/storage/images_product/bfq8OKBjnM_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-1.jpg', '2021-12-21 10:15:10', '2021-12-21 10:15:10'),
(40, 14, '/storage/images_product/6H0lQ5EWI3_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-5.jpg', '2021-12-21 10:15:10', '2021-12-21 10:15:10'),
(41, 14, '/storage/images_product/gZKGguontu_den-chum-pha-le-la-trang-tri-phong-khach-dcc-156-10.jpg', '2021-12-21 10:15:10', '2021-12-21 10:15:10'),
(42, 15, '/storage/images_product/5BS5cWVTlG_bo-3-tranh-trang-guong-treo-tuong-ttga-031.jpg', '2021-12-21 10:18:16', '2021-12-21 10:18:16'),
(43, 15, '/storage/images_product/VtwV7jmsF8_bo-3-tranh-trang-guong-treo-tuong-ttga-031-1.jpg', '2021-12-21 10:18:16', '2021-12-21 10:18:16'),
(44, 15, '/storage/images_product/FM8FaR5L4C_bo-3-tranh-trang-guong-treo-tuong-ttga-031-3.jpg', '2021-12-21 10:18:16', '2021-12-21 10:18:16'),
(45, 16, '/storage/images_product/fHBmMokudC_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-1.jpg', '2021-12-21 10:20:24', '2021-12-21 10:20:24'),
(46, 16, '/storage/images_product/BeuTAr7pZw_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-2.jpg', '2021-12-21 10:20:24', '2021-12-21 10:20:24'),
(47, 16, '/storage/images_product/4E3kSGk6GR_tranh-noi-3d-co-gai-trang-tri-phong-khach-tsa-108-4.jpg', '2021-12-21 10:20:24', '2021-12-21 10:20:24'),
(48, 17, '/storage/images_product/1LIM3zQoFA_den-ban-hien-dai-cao-cap-dn-089-1.jpg', '2021-12-21 10:23:24', '2021-12-21 10:23:24'),
(49, 17, '/storage/images_product/L5OE7XydVV_den-ban-hien-dai-cao-cap-dn-089-2.jpg', '2021-12-21 10:23:24', '2021-12-21 10:23:24'),
(50, 17, '/storage/images_product/cbG0mhB6yZ_den-ban-hien-dai-cao-cap-dn-089-3.jpg', '2021-12-21 10:23:24', '2021-12-21 10:23:24'),
(54, 19, '/storage/images_product/zkxiNth0xf_sofa-nhap-khau-phong-khach-hien-dai-sf-009-10.jpg', '2021-12-21 10:28:38', '2021-12-21 10:28:38'),
(55, 19, '/storage/images_product/NGdIm9vnDj_sofa-nhap-khau-phong-khach-hien-dai-sf-009-11.jpg', '2021-12-21 10:28:38', '2021-12-21 10:28:38'),
(56, 19, '/storage/images_product/gbhglX3DAN_sofa-nhap-khau-phong-khach-hien-dai-sf-009-12.jpg', '2021-12-21 10:28:38', '2021-12-21 10:28:38'),
(57, 20, '/storage/images_product/V3OrabJ7Op_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1 (1) - Copy.jpg', '2021-12-21 10:32:21', '2021-12-21 10:32:21'),
(58, 20, '/storage/images_product/CFNPjHhfLP_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-1.jpg', '2021-12-21 10:32:21', '2021-12-21 10:32:21'),
(59, 20, '/storage/images_product/2ZvUBc16zW_bo-tranh-3d-nghe-thuat-trang-tri-phong-khach-tsa-086-4.jpg', '2021-12-21 10:32:21', '2021-12-21 10:32:21'),
(60, 21, '/storage/images_product/Si9MhX69Qj_den-chum-dong-co-dien-sang-trong-dcda-009-1.jpg', '2021-12-21 19:28:53', '2021-12-21 19:28:53'),
(61, 21, '/storage/images_product/iOUbHcMJQD_den-chum-dong-co-dien-sang-trong-dcda-009-2.jpg', '2021-12-21 19:28:53', '2021-12-21 19:28:53'),
(62, 21, '/storage/images_product/UDrGAk0zyy_den-chum-dong-co-dien-sang-trong-dcda-009-3.jpg', '2021-12-21 19:28:53', '2021-12-21 19:28:53'),
(63, 22, '/storage/images_product/0iwNas0J5e_den-chum-trang-tri-tan-co-dien-dcda-003-1.jpg', '2021-12-21 19:32:09', '2021-12-21 19:32:09'),
(64, 22, '/storage/images_product/WbXIa9Ms3m_den-chum-trang-tri-tan-co-dien-dcda-003-2.jpg', '2021-12-21 19:32:09', '2021-12-21 19:32:09'),
(65, 22, '/storage/images_product/3uWuFHckxw_den-chum-trang-tri-tan-co-dien-dcda-003-3.jpg', '2021-12-21 19:32:09', '2021-12-21 19:32:09'),
(66, 23, '/storage/images_product/TnoGKbPccp_den-chum-nghe-thuat-cao-cap-dcc-147-2.jpg', '2021-12-21 19:40:35', '2021-12-21 19:40:35'),
(67, 23, '/storage/images_product/kWWyMNklZh_den-chum-nghe-thuat-cao-cap-dcc-147-4.jpg', '2021-12-21 19:40:35', '2021-12-21 19:40:35'),
(68, 23, '/storage/images_product/KPVgHq5dcI_den-chum-nghe-thuat-cao-cap-dcc-147-5.jpg', '2021-12-21 19:40:35', '2021-12-21 19:40:35'),
(72, 25, '/storage/images_product/AOzhOFWI0m_den-tha-ban-an-hien-dai-da-005-1.jpg', '2021-12-21 19:46:06', '2021-12-21 19:46:06'),
(73, 26, '/storage/images_product/lvNQnX61Ob_den-ban-an-hinh-cau-tre-trung-da-003-4.jpg', '2021-12-21 19:47:38', '2021-12-21 19:47:38'),
(74, 26, '/storage/images_product/7u1Q33ZCRi_den-ban-an-hinh-cau-tre-trung-da-003-5.jpg', '2021-12-21 19:47:38', '2021-12-21 19:47:38'),
(75, 27, '/storage/images_product/KNnY9EWsTG_den-ban-an-doc-dao-da-002-5.jpg', '2021-12-21 19:49:45', '2021-12-21 19:49:45'),
(76, 27, '/storage/images_product/FJnZVjdnbg_den-ban-an-doc-dao-da-002-7.jpg', '2021-12-21 19:49:45', '2021-12-21 19:49:45'),
(77, 27, '/storage/images_product/mJq4eafWMs_den-ban-an-doc-dao-da-002-14.jpg', '2021-12-21 19:49:45', '2021-12-21 19:49:45'),
(78, 28, '/storage/images_product/jcgkPpNPrO_ban-an-tron-hien-dai-bnk-017.jpg', '2021-12-21 19:54:03', '2021-12-21 19:54:03'),
(79, 29, '/storage/images_product/v6z7JdWA9s_ban-nhap-khau-mat-da-bnk-003.jpg', '2021-12-21 19:56:42', '2021-12-21 19:56:42'),
(81, 31, '/storage/images_product/tbiROHgNaC_ban-an-tron-trang-tri-bnk-015.jpg', '2021-12-21 22:45:19', '2021-12-21 22:45:19'),
(82, 32, '/storage/images_product/51kTPp3rVQ_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-2.jpg', '2021-12-21 22:48:52', '2021-12-21 22:48:52'),
(83, 32, '/storage/images_product/fPynFczBj9_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-4.jpg', '2021-12-21 22:48:52', '2021-12-21 22:48:52'),
(84, 32, '/storage/images_product/uIQpKdrV1A_sofa-da-nhap-khau-kieu-dang-hien-dai-sf-025-5.jpg', '2021-12-21 22:48:52', '2021-12-21 22:48:52'),
(85, 33, '/storage/images_product/ZZwNMHHZqc_den-gan-tuong-trang-tri-dgt-005-1.jpg', '2021-12-21 22:52:08', '2021-12-21 22:52:08'),
(86, 33, '/storage/images_product/nd16s8lBEJ_den-gan-tuong-trang-tri-dgt-005-2.jpg', '2021-12-21 22:52:08', '2021-12-21 22:52:08'),
(87, 33, '/storage/images_product/Rk4EmT7CBl_den-gan-tuong-trang-tri-dgt-005-8.jpg', '2021-12-21 22:52:08', '2021-12-21 22:52:08'),
(88, 34, '/storage/images_product/TBSd1uYwPn_den-gan-tuong-nordic-dgt-009-2.jpg', '2021-12-21 22:54:09', '2021-12-21 22:54:09'),
(89, 34, '/storage/images_product/fY2aJDVHBB_den-gan-tuong-nordic-dgt-009-5.jpg', '2021-12-21 22:54:09', '2021-12-21 22:54:09'),
(90, 35, '/storage/images_product/STQ1rSvhVu_den-gan-tuong-pha-le-trang-tri-dgt-010-2.jpg', '2021-12-21 22:56:31', '2021-12-21 22:56:31'),
(91, 35, '/storage/images_product/vndBbhMqdN_den-gan-tuong-pha-le-trang-tri-dgt-010-3.jpg', '2021-12-21 22:56:31', '2021-12-21 22:56:31'),
(92, 35, '/storage/images_product/NQ6ys75VuJ_den-gan-tuong-pha-le-trang-tri-dgt-010-7.jpg', '2021-12-21 22:56:31', '2021-12-21 22:56:31'),
(93, 36, '/storage/images_product/pJv2iQyvMr_den-gan-tuong-hien-dai-dgt-011-5.jpg', '2021-12-21 22:58:30', '2021-12-21 22:58:30'),
(94, 36, '/storage/images_product/6JUUmuhuOl_den-gan-tuong-hien-dai-dgt-011-7.jpg', '2021-12-21 22:58:30', '2021-12-21 22:58:30'),
(95, 37, '/storage/images_product/NwpdLxkzhT_den-gan-tuong-nhap-khau-dgt-012-4.jpg', '2021-12-21 23:01:11', '2021-12-21 23:01:11'),
(96, 37, '/storage/images_product/RuN1G7yOTk_den-gan-tuong-nhap-khau-dgt-012-7.jpg', '2021-12-21 23:01:11', '2021-12-21 23:01:11'),
(105, 41, '/storage/images_product/VrPm3jGN3J_guong-decor-la-ginko-gs-065.jpg', '2021-12-21 23:15:01', '2021-12-21 23:15:01'),
(109, 43, '/storage/images_product/QquQnVJEEu_guong-nhap-khau-trang-tri-gs-066-1.jpg', '2021-12-21 23:19:46', '2021-12-21 23:19:46'),
(110, 43, '/storage/images_product/Qu9qYk2svQ_guong-nhap-khau-trang-tri-gs-066-10.jpg', '2021-12-21 23:19:46', '2021-12-21 23:19:46'),
(111, 43, '/storage/images_product/xuESCjNQ2x_guong-nhap-khau-trang-tri-gs-066-13.jpg', '2021-12-21 23:19:46', '2021-12-21 23:19:46'),
(115, 45, '/storage/images_product/wgsNrn4Ypb_tranh-decor-trang-guong-trang-tri-ttga-032-1.jpg', '2021-12-21 23:26:23', '2021-12-21 23:26:23'),
(116, 45, '/storage/images_product/4j01XGKdj1_tranh-decor-trang-guong-trang-tri-ttga-032-2.jpg', '2021-12-21 23:26:23', '2021-12-21 23:26:23'),
(117, 45, '/storage/images_product/R46MqrdU7S_tranh-decor-trang-guong-trang-tri-ttga-032-3.jpg', '2021-12-21 23:26:23', '2021-12-21 23:26:23'),
(118, 46, '/storage/images_product/RbbfFKM1Q5_tranh-nghe-thuat-trang-guong-ttga-030-1.jpg', '2021-12-21 23:31:13', '2021-12-21 23:31:13'),
(119, 47, '/storage/images_product/FqeCi7TQEn_tranh-decor-trang-guong-ttga-029-1.jpg', '2021-12-21 23:33:29', '2021-12-21 23:33:29'),
(120, 47, '/storage/images_product/JWzFVdLu3m_tranh-decor-trang-guong-ttga-029-2.jpg', '2021-12-21 23:33:29', '2021-12-21 23:33:29'),
(121, 48, '/storage/images_product/VGna9S5UKb_tranh-bo-trang-guong-nhap-khau-ttga-025-2.jpg', '2021-12-21 23:35:31', '2021-12-21 23:35:31'),
(122, 48, '/storage/images_product/gmCOR5eopW_tranh-bo-trang-guong-nhap-khau-ttga-025-5.jpg', '2021-12-21 23:35:31', '2021-12-21 23:35:31'),
(123, 48, '/storage/images_product/8c6QhOlhAj_tranh-bo-trang-guong-nhap-khau-ttga-025-7.jpg', '2021-12-21 23:35:31', '2021-12-21 23:35:31'),
(161, 54, '/storage/images_product/D4A9hw6XuH_tep-tra-dinh-loc-tan-cuong.webp', '2023-12-10 08:51:16', '2023-12-10 08:51:16'),
(162, 54, '/storage/images_product/fz31a6HZf7_TRA-HUONG-THAO.jpg.webp', '2023-12-10 08:51:16', '2023-12-10 08:51:16'),
(163, 53, '/storage/images_product/BlMUMs6sVE_tra-dinh-25-tep-loc-tan-cuong.webp', '2023-12-10 08:51:44', '2023-12-10 08:51:44'),
(164, 53, '/storage/images_product/sUa9ZWei20_tra-dinh-25-tep-nho-loc-tan-cuong.webp', '2023-12-10 08:51:44', '2023-12-10 08:51:44'),
(165, 50, '/storage/images_product/qWpAIXzX9G_tep-tra-dinh-loc-tan-cuong.webp', '2023-12-10 08:52:16', '2023-12-10 08:52:16'),
(166, 50, '/storage/images_product/0EeY97hft1_tra-moc-cau-thai-nguyen-dac-biet13.webp', '2023-12-10 08:52:16', '2023-12-10 08:52:16'),
(176, 60, '/storage/images_product/XWG3Zj1zJh_citizen-el3100-55a-nu-thumb-600x600.jpg', '2025-02-18 00:45:45', '2025-02-18 00:45:45'),
(177, 60, '/storage/images_product/nB5yQbafTH_citizen-em0500-73l-nu-600x600.jpg', '2025-02-18 00:45:45', '2025-02-18 00:45:45'),
(178, 60, '/storage/images_product/J3PFauGLrl_edifice-casio-eqs-930bl-2avudf-nam-thumb-600x600.jpg', '2025-02-18 00:45:45', '2025-02-18 00:45:45'),
(179, 61, '/storage/images_product/X1IKEgNZOU_casio-ltp-vt01gl-4budf-nu-thumb-fix-600x600.jpg', '2025-02-18 00:46:00', '2025-02-18 00:46:00'),
(180, 61, '/storage/images_product/7N7VQ7Blsr_casio-mtp-vt01gl-1b2udf-nam-thumb-600x600.jpg', '2025-02-18 00:46:00', '2025-02-18 00:46:00'),
(181, 61, '/storage/images_product/MwfiOeHszw_citizen-bi5120-51l-nam-thumb-638702011223823983-600x600.jpg', '2025-02-18 00:46:00', '2025-02-18 00:46:00'),
(182, 59, '/storage/images_product/lZXVzhh0lG_citizen-em0500-73l-nu-600x600.jpg', '2025-02-18 00:47:27', '2025-02-18 00:47:27'),
(183, 59, '/storage/images_product/m9ze3r88SP_citizen-bi5120-51l-nam-thumb-638702011223823983-600x600.jpg', '2025-02-18 00:47:27', '2025-02-18 00:47:27'),
(184, 59, '/storage/images_product/NX4MtNhv8j_citizen-bi5120-51z-nam-thumb-638702013388393690-600x600.jpg', '2025-02-18 00:47:27', '2025-02-18 00:47:27'),
(185, 58, '/storage/images_product/Sf9o91bYkP_elio-ess11-02-unisex-thumb-600x600.jpg', '2025-02-18 00:49:02', '2025-02-18 00:49:02'),
(186, 58, '/storage/images_product/HltJzsUKPK_g-shock-ga-b2100cd-1a4dr-nam-thumb-638727242894017431-600x600.jpg', '2025-02-18 00:49:02', '2025-02-18 00:49:02'),
(187, 58, '/storage/images_product/eVKg9lvxSZ_g-shock-gst-b400cx-1adr-nam-thumb-638727968218434621-600x600.jpg', '2025-02-18 00:49:02', '2025-02-18 00:49:02'),
(188, 57, '/storage/images_product/UX6EtUd554_casio-ltp-vt01gl-4budf-nu-thumb-fix-600x600.jpg', '2025-02-18 00:50:19', '2025-02-18 00:50:19'),
(189, 57, '/storage/images_product/tTZ64yrhmU_casio-mtp-vt01gl-1b2udf-nam-thumb-600x600.jpg', '2025-02-18 00:50:19', '2025-02-18 00:50:19'),
(190, 57, '/storage/images_product/H0sPkVii4S_citizen-bi5120-51z-nam-thumb-638702013388393690-600x600.jpg', '2025-02-18 00:50:19', '2025-02-18 00:50:19'),
(191, 56, '/storage/images_product/OByjG9K9LS_casio-ltp-vt01gl-4budf-nu-thumb-fix-600x600.jpg', '2025-02-18 00:52:21', '2025-02-18 00:52:21'),
(192, 56, '/storage/images_product/DKXc8tLp5H_casio-mtp-vt01gl-1b2udf-nam-thumb-600x600.jpg', '2025-02-18 00:52:21', '2025-02-18 00:52:21'),
(193, 56, '/storage/images_product/XcTKIYnRgS_elio-ess11-02-unisex-thumb-600x600.jpg', '2025-02-18 00:52:21', '2025-02-18 00:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `from` bigint NOT NULL,
  `to` bigint NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 23, 38, 'Đảm bảo rằng factory và model của bạn', 0, '2023-10-20 22:00:01', '2023-10-20 22:00:01'),
(2, 38, 23, 'Đảm bảo rằng factory và model của bạn', 1, '2023-10-20 22:02:19', '2023-10-29 07:23:17'),
(4, 40, 23, 'Đảm bảo rằng factory và model của bạn', 1, '2023-10-20 22:02:34', '2024-01-09 00:09:43'),
(5, 38, 40, 'Đảm bảo rằng factory và model của bạn', 1, '2023-10-20 22:02:35', '2024-01-03 08:00:56'),
(15, 23, 38, '12313', 0, '2023-10-21 00:52:30', '2023-10-21 00:52:30'),
(16, 23, 38, '1231', 0, '2023-10-21 00:52:45', '2023-10-21 00:52:45'),
(17, 23, 38, '15121990', 0, '2023-10-21 00:53:19', '2023-10-21 00:53:19'),
(18, 40, 23, 'alo', 1, '2023-10-21 08:21:59', '2024-01-09 00:09:43'),
(19, 40, 23, 'bên khách hàng đang muốn chúng ta nhập về cho họ 1 số lượng lớn hàng, sếp thấy thế nào', 1, '2023-10-21 08:22:43', '2024-01-09 00:09:43'),
(21, 23, 38, 'oke tôi hiểu', 0, '2023-10-25 09:25:43', '2023-10-25 09:25:43'),
(22, 40, 23, 'alo', 1, '2023-10-29 09:06:39', '2024-01-09 00:09:43'),
(23, 23, 40, '2', 1, '2023-10-29 09:06:45', '2024-01-03 08:01:12'),
(24, 52, 40, '', 1, NULL, '2024-01-03 08:00:56'),
(25, 54, 40, NULL, 1, NULL, '2024-01-03 08:00:55'),
(26, 55, 40, NULL, 1, NULL, '2024-01-03 08:00:55'),
(27, 24, 23, 'Alo a có đang ở đó k', 1, '2023-11-20 10:12:45', '2024-01-09 00:09:42'),
(28, 23, 24, 'có tôi đây', 1, '2023-11-20 10:13:00', '2023-11-20 10:57:04'),
(29, 23, 40, 'tôi đây', 1, '2023-11-20 10:17:26', '2024-01-03 08:01:12'),
(30, 23, 40, 'bạn cần gì nhỉ', 1, '2023-11-20 10:21:56', '2024-01-03 08:01:12'),
(31, 23, 24, 'sao vậy', 1, '2023-11-20 10:23:51', '2023-11-20 10:57:04'),
(32, 23, 24, 'nói đi bạn', 1, '2023-11-20 10:25:22', '2023-11-20 10:57:04'),
(33, 24, 23, 'tôi muốn lấy lương', 1, '2023-11-20 10:29:53', '2024-01-09 00:09:42'),
(34, 23, 24, 'm10 mới có lương  nhé', 1, '2023-11-20 10:52:08', '2023-11-20 10:57:04'),
(35, 23, 24, 'tôi sẽ xem xét trước cho cậu', 1, '2023-11-20 17:57:03', '2023-11-20 10:57:04'),
(36, 57, 40, NULL, 1, NULL, '2024-01-03 08:00:54'),
(38, 59, 40, NULL, 1, NULL, '2024-01-03 08:00:53'),
(39, 40, 23, 'tôi cần xem vài thứ', 1, '2024-01-03 15:00:24', '2024-01-09 00:09:43'),
(40, 23, 40, 'oce hãy vào việc nào', 1, '2024-01-03 15:01:12', '2024-01-03 08:01:12'),
(41, 23, 40, 'bạn ơi', 0, '2024-01-09 04:01:50', '2024-01-08 21:01:50'),
(42, 60, 40, NULL, 0, NULL, NULL),
(43, 61, 40, NULL, 0, NULL, NULL),
(44, 62, 40, NULL, 1, NULL, '2024-01-12 00:13:40'),
(45, 62, 40, 'xin chào quản lý', 1, '2024-01-11 16:13:27', '2024-01-12 00:13:40'),
(46, 40, 62, 'chào bạn!', 1, '2024-01-11 16:13:36', '2024-01-12 00:13:34'),
(47, 62, 40, 'xin chao bn', 1, '2024-01-12 07:13:33', '2024-01-12 00:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_07_23_173754_create_categorys_table', 1),
(3, '2021_07_23_191036_create_brands_table', 1),
(4, '2021_07_26_183015_create_citys_table', 1),
(5, '2021_07_26_183309_create_districts_table', 1),
(6, '2021_07_26_193520_create_ships_table', 1),
(7, '2021_07_27_155013_create_coupons_table', 1),
(8, '2021_07_27_173951_create_products_table', 1),
(9, '2021_07_28_071501_create_images_table', 1),
(10, '2021_07_30_190602_create_orders_table', 1),
(11, '2021_07_30_191330_create_orderdetail_table', 1),
(12, '2021_07_31_175756_create_comments_table', 1),
(13, '2021_08_01_145126_create_wishlist_table', 1),
(14, '2021_11_27_135149_create_slide_table', 1),
(15, '2021_11_28_093707_create_requirement_table', 1),
(16, '2021_12_01_152558_create_posts_table', 1),
(18, '2023_09_22_024631_add_column_to_users_table', 2),
(19, '2023_10_21_035212_create_messages_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_detail_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `wrist_measurement` double(5,2) DEFAULT NULL,
  `order_detail_quantity` int NOT NULL,
  `order_detail_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_detail_id`, `order_id`, `product_id`, `wrist_measurement`, `order_detail_quantity`, `order_detail_price`, `created_at`, `updated_at`) VALUES
(36, 28, 57, 0.00, 10, 213, '2023-10-13 00:14:55', '2023-10-13 00:14:55'),
(37, 29, 56, 0.00, 1, 984000, '2023-11-06 09:44:02', '2023-11-06 09:44:02'),
(57, 40, 56, 2.00, 1, 984000, '2023-11-16 10:33:14', '2023-11-16 10:33:14'),
(58, 40, 57, 3.00, 1, 500000, '2023-11-16 10:33:14', '2023-11-16 10:33:14'),
(59, 41, 56, 2.00, 1, 984000, '2023-11-16 11:39:20', '2023-11-16 11:39:20'),
(61, 43, 56, 2.00, 1, 984000, '2023-11-28 21:52:21', '2023-11-28 21:52:21'),
(62, 44, 60, 15.00, 1, 400000, '2023-12-26 08:41:36', '2023-12-26 08:41:36'),
(63, 45, 58, 3.00, 1, 100000, '2023-12-26 09:26:38', '2023-12-26 09:26:38'),
(64, 46, 57, 3.00, 2, 500000, '2024-01-09 09:32:17', '2024-01-09 09:32:17'),
(65, 46, 58, 3.00, 2, 100000, '2024-01-09 09:32:17', '2024-01-09 09:32:17'),
(66, 46, 56, 2.00, 1, 1230000, '2024-01-09 09:32:17', '2024-01-09 09:32:17'),
(67, 47, 58, 3.00, 1, 100000, '2024-01-11 08:04:40', '2024-01-11 08:04:40'),
(68, 47, 61, 3.00, 1, 340000, '2024-01-11 08:04:40', '2024-01-11 08:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `order_shipping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_pay_type` int NOT NULL,
  `order_profit` int NOT NULL,
  `order_total` int NOT NULL,
  `order_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_shipping`, `ward`, `address`, `order_note`, `order_pay_type`, `order_profit`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(11, 52, 'Tên người nhận: Trần Văn Mạnh - Email: vanmanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, NULL, NULL, 1, 840000, 8840000, 1, '2021-12-21 17:00:00', '2021-12-21 10:48:43'),
(13, 52, 'Tên người nhận: Trần Văn Mạnh - Email: vanmanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, NULL, NULL, 1, 70620000, 77620000, 1, '2021-12-21 17:00:00', '2021-12-21 10:49:28'),
(14, 52, 'Tên người nhận: Trần Văn Mạnh - Email: vanmanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, NULL, NULL, 1, 2600000, 13600000, 1, '2021-12-21 17:00:00', '2021-12-21 10:49:43'),
(16, 52, 'Tên người nhận: Trương Hồng Khánh - Email: hongkhanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, NULL, NULL, 1, -40000, 2960000, 1, '2021-12-21 17:00:00', '2021-12-21 10:51:39'),
(17, 52, 'Tên người nhận: Trương Hồng Khánh - Email: hongkhanh123@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, NULL, NULL, 1, 2900000, 5900000, 1, '2021-12-21 17:00:00', '2021-12-21 10:51:56'),
(20, 52, 'Tên người nhận: Nguyễn Văn Thuận - Email: thuannv06022001@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, NULL, NULL, 1, 3970000, 33970000, 1, '2021-12-21 17:00:00', '2021-12-21 10:52:44'),
(21, 52, 'Tên người nhận: Nguyễn Văn Thuận - Email: thuannv06022001@gmail.com - Số điện thoại: 0857086588 - Địa chỉ: Hoa Thủy - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, NULL, NULL, 1, 2900000, 5900000, 1, '2021-12-21 17:00:00', '2021-12-21 10:52:57'),
(22, 23, 'Tên người nhận: admin - Email: info@maitrungkien.com - Số điện thoại: 0774405020 - Địa chỉ: địa chỉ 2 - Huyện Đồng Văn - Tỉnh Hà Giang', NULL, NULL, 'ok', 1, 10320000, 34320000, 1, '2022-11-12 17:00:00', '2022-11-13 08:56:58'),
(23, 23, 'Tên người nhận: admin - Email: maitrungkien.qn@gmail.com - Số điện thoại: 0774405020 - Địa chỉ: địa chỉ 2 - Huyện Đồng Văn - Tỉnh Hà Giang', NULL, NULL, 'ok', 1, 10320000, 34320000, 1, '2022-11-12 17:00:00', '2022-11-13 08:57:37'),
(28, 23, 'Tên người nhận: admin - Email: visang@masterkorean.vn - Số điện thoại: 0842467996 - Địa chỉ: 2123185 - Huyện Đoan Hùng - Tỉnh Phú Thọ', NULL, NULL, '111', 2, 20000, 22130, 1, '2023-10-12 17:00:00', '2023-10-13 00:14:54'),
(29, 23, 'Tên người nhận: admin - Email: khoa.x.bug@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: 2123185 - Huyện Mèo Vạc - Tỉnh Hà Giang', NULL, NULL, '111', 1, 973000, 994000, 2, '2023-11-05 17:00:00', '2023-11-06 09:48:58'),
(30, 23, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', NULL, NULL, '111', 1, 821000, 843000, 1, '2023-11-07 17:00:00', '2023-11-08 09:18:41'),
(31, 23, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', NULL, NULL, '111', 1, 821000, 843000, 1, '2023-11-07 17:00:00', '2023-11-08 09:19:05'),
(32, 23, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', NULL, NULL, '111', 1, 821000, 843000, 1, '2023-11-07 17:00:00', '2023-11-08 09:19:25'),
(33, 23, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', NULL, NULL, '111', 1, 905000, 1405000, 1, '2023-11-07 17:00:00', '2023-11-08 09:24:05'),
(39, 23, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', NULL, NULL, NULL, 1, 973000, 1494000, 5, '2023-11-16 17:00:00', '2024-01-09 10:19:23'),
(40, 23, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', NULL, NULL, NULL, 1, 1025420, 1546420, 6, '2023-11-16 17:00:00', '2024-01-09 10:21:54'),
(41, 23, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: số 10, Nguyễn Văn Trỗi, Hà Đông, Hà Nôi - Quận Hà Đông - Thành phố Hà Nội', 'số 10, Nguyễn Văn Trỗi, Hà Đông, Hà Nôi', 'số 10, Nguyễn Văn Trỗi, Hà Đông, Hà Nôi', NULL, 1, 1003000, 1024000, 1, '2023-11-16 17:00:00', '2023-11-16 11:39:20'),
(43, NULL, 'Tên người nhận: Hoàng Trung Kiên - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', 'Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên', 'Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên', NULL, 2, 1018000, 1039000, 4, '2023-11-28 17:00:00', '2024-01-09 10:19:08'),
(44, 23, 'Tên người nhận: admin - Email: info@maitrungkien.com - Số điện thoại: 0943206425 - Địa chỉ: Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', 'Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên', 'Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên', NULL, 3, 55000, 355000, 2, '2023-12-25 17:00:00', '2023-12-28 10:13:28'),
(45, NULL, 'Tên người nhận: Hoàng Trung Kiên - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', 'Điềm Mặc, Định Hoá, Thái Nguyên', 'Điềm Mặc, Định Hoá, Thái Nguyên', NULL, 3, 54000, 55000, 3, '2023-12-25 17:00:00', '2024-01-09 10:18:54'),
(46, NULL, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên - Huyện Định Hóa - Tỉnh Thái Nguyên', 'Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên', 'Xã Điềm Mặc, Huyện Định Hoá, Tỉnh Thái Nguyên', NULL, 2, 1474150, 2497150, 2, '2024-01-08 17:00:00', '2024-01-11 08:19:24'),
(47, 62, 'Tên người nhận: Phạm Văn Cường - Email: cuongdtnt109@gmail.com - Số điện thoại: 0943206425 - Địa chỉ: 445 Đ. Nguyễn Văn Trỗi, Phường 11, Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam 2021 - Quận Phú Nhuận - Thành phố Hồ Chí Minh', '445 Đ. Nguyễn Văn Trỗi, Phường 11, Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam 2021', '445 Đ. Nguyễn Văn Trỗi, Phường 11, Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam 2021', NULL, 2, 37000, 238000, 2, '2024-01-10 17:00:00', '2024-01-11 08:12:18'),
(48, 23, 'Tên người nhận: admin - Email: info@maitrungkien.com - Số điện thoại: 0985332007 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Quận Ba Đình - Thành phố Hà Nội', 'Điềm Mặc, Định Hoá, Thái Nguyên', 'Điềm Mặc, Định Hoá, Thái Nguyên', NULL, 1, 4150000, 5350000, 1, '2025-02-17 17:00:00', '2025-02-18 01:35:49'),
(49, 23, 'Tên người nhận: admin - Email: info@maitrungkien.com - Số điện thoại: 0985332007 - Địa chỉ: Điềm Mặc, Định Hoá, Thái Nguyên - Quận Cầu Giấy - Thành phố Hà Nội', 'Điềm Mặc, Định Hoá, Thái Nguyên', 'Điềm Mặc, Định Hoá, Thái Nguyên', NULL, 1, 4150000, 5350000, 1, '2025-02-17 17:00:00', '2025-02-18 01:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_title`, `post_content`, `post_image`, `created_at`, `updated_at`) VALUES
(18, 23, 'Giới thiệu thương hiệu', '<p><strong>Tr&agrave; T&acirc;m Tr&agrave; Th&aacute;i Nguy&ecirc;n - Hương Vị Tinh Tế từ V&ugrave;ng Đất Tr&agrave; Quyến Rũ</strong></p>\r\n\r\n<p>Ch&agrave;o mừng đến với thế giới của Tr&agrave; T&acirc;m, nơi m&agrave; hương vị tinh tế h&ograve;a quyện với truyền thống hơn một thế kỷ của nghệ nh&acirc;n tr&agrave; Th&aacute;i Nguy&ecirc;n. Với niềm đam m&ecirc; ch&acirc;n th&agrave;nh, ch&uacute;ng t&ocirc;i tự h&agrave;o giới thiệu đến bạn những trải nghiệm tr&agrave; kh&ocirc;ng giới hạn, mang đến sự trọn vẹn từ những t&aacute;n l&aacute; tr&agrave; tinh khiết nhất.</p>\r\n\r\n<p><strong>Hồn Tr&agrave; Th&aacute;i Nguy&ecirc;n:</strong></p>\r\n\r\n<p>Tr&agrave; T&acirc;m l&agrave; một h&agrave;nh tr&igrave;nh qua những vườn tr&agrave; bậc thầy ở v&ugrave;ng n&uacute;i cao Th&aacute;i Nguy&ecirc;n, nơi tạo n&ecirc;n b&iacute; mật của hương vị đặc trưng kh&ocirc;ng thể nhầm lẫn. H&ograve;a quyện giữa đất trời v&agrave; tay nghề của những người n&ocirc;ng d&acirc;n tận t&acirc;m, ch&uacute;ng t&ocirc;i chọn lựa những t&aacute;n l&aacute; tr&agrave; tốt nhất, mỗi l&aacute; đều l&agrave; một c&acirc;u chuyện kỳ diệu về hương thơm v&agrave; vị ngon.</p>\r\n\r\n<p><strong>Đa Dạng Sản Phẩm:</strong></p>\r\n\r\n<p>Từ tr&agrave; xanh tinh tế đến tr&agrave; đen mạnh mẽ, bộ sưu tập của ch&uacute;ng t&ocirc;i đảm bảo mang lại sự đa dạng v&agrave; độc đ&aacute;o cho mọi người y&ecirc;u tr&agrave;. Bạn c&oacute; thể tận hưởng từng giọt tr&agrave;, cảm nhận hương thơm, v&agrave; kh&aacute;m ph&aacute; những tầng lớp hương vị phong ph&uacute; m&agrave; chỉ c&oacute; Tr&agrave; T&acirc;m mang lại.</p>\r\n\r\n<p><strong>Chất Lượng Đặt L&ecirc;n H&agrave;ng Đầu:</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i kh&ocirc;ng chỉ ch&uacute; trọng đến hương vị, m&agrave; c&ograve;n tận t&acirc;m với chất lượng sản phẩm. Từ qu&aacute; tr&igrave;nh thu h&aacute;i đến chế biến, ch&uacute;ng t&ocirc;i duy tr&igrave; một quy tr&igrave;nh nghi&ecirc;m ngặt để đảm bảo rằng mỗi t&aacute;ch tr&agrave; bạn thưởng thức đều l&agrave; một t&aacute;c phẩm nghệ thuật.</p>\r\n\r\n<p><strong>Sứ Mệnh Văn H&oacute;a:</strong></p>\r\n\r\n<p>Tr&agrave; T&acirc;m kh&ocirc;ng chỉ l&agrave; sản phẩm, m&agrave; c&ograve;n l&agrave; một sứ mệnh văn h&oacute;a để t&ocirc;n vinh v&agrave; bảo tồn di sản tr&agrave; Th&aacute;i Nguy&ecirc;n. Ch&uacute;ng t&ocirc;i cam kết hỗ trợ cộng đồng n&ocirc;ng d&acirc;n, bảo vệ m&ocirc;i trường v&agrave; truyền đạt tinh hoa tr&agrave; Việt đến mọi ng&oacute;c ng&aacute;ch của thế giới.</p>\r\n\r\n<p>H&atilde;y để Tr&agrave; T&acirc;m l&agrave; đối t&aacute;c đồng h&agrave;nh của bạn trong mỗi khoảnh khắc thư gi&atilde;n, để trải nghiệm hương vị tinh tế của tr&agrave; Th&aacute;i Nguy&ecirc;n l&agrave;m dịu d&agrave;ng t&acirc;m hồn v&agrave; l&agrave;m phong ph&uacute; cuộc sống.</p>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với thế giới của Tr&agrave; T&acirc;m - Hương Vị Tinh Tế, Nguồn Cảm Hứng V&ocirc; Tận!</p>', '/storage/images_blog/TfwuiF4XAM_mvw-ml073-02-nam-thumb-fix-600x600.jpg', '2023-12-10 08:39:42', '2025-02-18 00:53:51'),
(19, 23, 'Hình thức thanh toán', '<h2><strong>Thanh to&aacute;n bằng tiền mặt</strong></h2>\r\n\r\n<p><strong>1. Thanh to&aacute;n trực tiếp</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng thanh to&aacute;n trực tiếp ngay khi mua h&agrave;ng tại:</p>\r\n\r\n<ul>\r\n	<li>VPGD: X&oacute;m Hồng Th&aacute;i 2, X. T&acirc;n Cương, Tp. Th&aacute;i Nguy&ecirc;n, Th&aacute;i Nguy&ecirc;n</li>\r\n	<li>Hoặc c&aacute;c cửa h&agrave;ng của T&acirc;m Tr&agrave; Th&aacute;i tr&ecirc;n to&agrave;n quốc.</li>\r\n</ul>\r\n\r\n<p><strong>2. Thanh to&aacute;n khi nhận h&agrave;ng (COD)</strong></p>\r\n\r\n<ul>\r\n	<li>Nếu qu&yacute; kh&aacute;ch ở xa, qu&yacute; kh&aacute;ch c&oacute; thể chọn h&igrave;nh thức giao h&agrave;ng thu tiền (COD). Sau 3-5 ng&agrave;y đặt h&agrave;ng, đơn h&agrave;ng sẽ được chuyển đến tận nh&agrave; qu&yacute; kh&aacute;ch, Qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n to&agrave;n bộ tiền h&agrave;ng (hoặc phần c&ograve;n lại của gi&aacute;o trị đơn h&agrave;ng nếu đ&atilde; đặt cọc) + ph&iacute; ship cho nh&acirc;n vi&ecirc;n giao h&agrave;ng.</li>\r\n</ul>\r\n\r\n<h2><strong>Thanh to&aacute;n chuyển khoản</strong></h2>\r\n\r\n<ul>\r\n	<li>Nếu địa điểm giao h&agrave;ng l&agrave; ngoại th&agrave;nh, ngoại tỉnh hoặc nội th&agrave;nh th&agrave;nh phố H&agrave; Nội nhưng kh&aacute;c với địa điểm thanh to&aacute;n (trong trường hợp Qu&yacute; kh&aacute;ch gửi qu&agrave;, gửi h&agrave;ng cho bạn b&egrave;, đối t&aacute;c &hellip;) ch&uacute;ng t&ocirc;i sẽ thu tiền trước 100% gi&aacute; trị đơn h&agrave;ng + ph&iacute; vận chuyển theo cước ph&iacute; t&iacute;nh trong chinh s&aacute;ch vận chuyển bằng phương thức chuyển khoản trước khi giao h&agrave;ng</li>\r\n	<li>Qu&yacute; kh&aacute;ch chuyển tiền cho ch&uacute;ng t&ocirc;i theo STK của T&acirc;m Tr&agrave; Th&aacute;i.</li>\r\n	<li><strong>Ghi ch&uacute;:</strong>&nbsp;Để h&agrave;ng h&oacute;a v&agrave; gi&aacute; cả được ch&iacute;nh x&aacute;c, ngay sau khi qu&yacute; kh&aacute;ch chuyển tiền xin vui l&ograve;ng fax giấy ủy nhiệm chi c&oacute; dấu ng&acirc;n h&agrave;ng chuyển tiền để nh&acirc;n vi&ecirc;n kinh doanh l&agrave;m căn cứ giữ h&agrave;ng v&agrave; gi&aacute; tiền theo đ&uacute;ng thỏa thuận cho qu&yacute; kh&aacute;ch.</li>\r\n</ul>', '/storage/images_blog/LKSMzyA2YD_orient-ra-tx0306s10b-nam-thumb-638654690266131155-600x600.jpg', '2023-12-10 08:41:14', '2025-02-18 00:53:39'),
(20, 23, 'Hướng dẫn mua hàng', '<p><strong>Qu&yacute; kh&aacute;ch c&oacute; thể mua h&agrave;ng trực tiếp bằng 4 c&aacute;ch:</strong></p>\r\n\r\n<ul>\r\n	<li>Gọi điện thoại đến Hotline&nbsp;<a href=\"tel:0901683938\">0901.68.3938</a>&nbsp;(Mr.Giang) &ndash;&nbsp;<a href=\"tel:0829846777\">0829.84.6777</a>&nbsp;(Mr.Nam)</li>\r\n	<li>Truy cập website:&nbsp;<a href=\"https://tamtrathai.com.vn/\">https://tamtrathai.com.vn/</a></li>\r\n	<li>Đặt h&agrave;ng qua Fanpage:&nbsp;<a href=\"https://www.facebook.com/htxtamtrathai\">https://www.facebook.com/htxtamtrathai</a></li>\r\n	<li>Đến văn ph&ograve;ng giao dịch T&acirc;m Tr&agrave; Th&aacute;i tại X&oacute;m Hồng Th&aacute;i 2, X. T&acirc;n Cương, Tp. Th&aacute;i Nguy&ecirc;n, Th&aacute;i Nguy&ecirc;n. Ngo&agrave;i mua h&agrave;ng, qu&yacute; kh&aacute;ch c&oacute; thể đến thăm quan đồi ch&egrave; của ch&uacute;ng t&ocirc;i.</li>\r\n</ul>\r\n\r\n<p><strong>Mua h&agrave;ng tại website&nbsp;<a href=\"https://tamtrathai.com.vn/\">https://tamtrathai.com.vn&nbsp;</a>:</strong></p>\r\n\r\n<p><strong><em>Bước 1</em></strong>: Truy cập website&nbsp;<a href=\"https://tamtrathai.com.vn/\">tamtrathai.com.vn</a>, t&igrave;m hiểu sản phẩm m&igrave;nh cần tại mục&nbsp;<a href=\"https://tamtrathai.com.vn/san-pham-tra/\" rel=\"noopener\" target=\"_blank\">SẢN PHẨM</a>&nbsp;để tham khảo c&aacute;c chương tr&igrave;nh giảm gi&aacute;, qu&agrave; tặng hấp dẫn.</p>\r\n\r\n<p><em><strong>Bước 2:</strong>&nbsp;</em>Chọn sản phẩm, số lượng cần mua v&agrave; click &ldquo;Bỏ v&agrave;o giỏ h&agrave;ng&rdquo; để tiếp tục mua th&ecirc;m c&aacute;c sản phẩm kh&aacute;c, hoặc click v&agrave;o &ldquo;Mua ngay&rdquo; để tiến h&agrave;nh thanh to&aacute;n.</p>\r\n\r\n<p><em><strong>Bước 3:</strong></em>&nbsp;Sau khi chọn xong tất cả c&aacute;c sản phẩm muốn mua. Click v&agrave;o Giỏ h&agrave;ng ở g&oacute;c tr&ecirc;n b&ecirc;n phải m&agrave;n h&igrave;nh. Kiểm tra lại c&aacute;c sản phẩm v&agrave; số lượng trong giỏ h&agrave;ng v&agrave; điền c&aacute;c th&ocirc;ng tin thanh to&aacute;n cần thiết.</p>\r\n\r\n<p><em><strong>Bước 4:</strong>&nbsp;</em>Ấn X&Aacute;C NHẬN ĐẶT H&Agrave;NG sau khi đ&atilde; điền đầy đủ th&ocirc;ng tin.</p>\r\n\r\n<p><em><strong>Bước 5:</strong></em>&nbsp;Nh&acirc;n vi&ecirc;n T&acirc;m Tr&agrave; Th&aacute;i sẽ gọi điện cho bạn để x&aacute;c nhận đơn h&agrave;ng v&agrave; thực hiện đơn h&agrave;ng.</p>\r\n\r\n<p><strong>Trải nghiệm kh&ocirc;ng gian xanh an l&agrave;nh tại chuỗi cửa h&agrave;ng T&acirc;m Tr&agrave; Th&aacute;i hoặc văn ph&ograve;ng giao dịch tại T&acirc;n Cương &ndash; Th&aacute;i Nguy&ecirc;n:</strong></p>\r\n\r\n<p>Giờ mở cửa: 08h00 s&aacute;ng đến 17h30. Tất cả c&aacute;c ng&agrave;y trong tuần.</p>\r\n\r\n<p>Nghỉ c&aacute;c ng&agrave;y lễ theo quy định của Nh&agrave; nước.</p>', '/storage/images_blog/LAQLEUX42E_g-shock-gst-b400cx-1adr-nam-thumb-638727968218434621-600x600.jpg', '2023-12-10 08:42:04', '2025-02-18 00:53:29'),
(21, 23, 'Chứng nhận ATTP', '<h2><strong>Một số giấy chứng nhận an to&agrave;n thực phẩm của ch&uacute;ng t&ocirc;i:&nbsp;</strong></h2>\r\n\r\n<p>Với mục ti&ecirc;u v&igrave; sức khỏe cộng đồng, sản phẩm HTX T&Acirc;M TR&Agrave;&nbsp; TH&Aacute;I lu&ocirc;n l&agrave; sự lựa chọn tin cậy của người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p>Tr&ecirc;n lộ tr&igrave;nh ph&aacute;t triển Thương hiệu ĐẶC SẢN CH&Egrave; T&Acirc;N CƯƠNG &ndash; T&Acirc;M TR&Agrave; TH&Aacute;I&nbsp; &nbsp;được c&aacute; c&aacute; nh&acirc;n, cơ quan, tổ chức trong v&agrave; ngo&agrave;i nước ủng hộ v&agrave; đ&aacute;nh gi&aacute; cao về quy tr&igrave;nh sản xuất v&agrave; chất lượng sản phẩm. Đ&oacute; l&agrave; động lực th&uacute;c đẩy ch&uacute;ng t&ocirc;i ph&aacute;t triển v&agrave; hưng thịnh m&atilde;i m&atilde;i.</p>\r\n\r\n<p>H&atilde;y r&egrave;n luyện cho m&igrave;nh một tho&aacute;i quen một ch&eacute;n tr&agrave; xanh&nbsp; buổi s&aacute;ng b&ecirc;n gia đ&igrave;nh để bảo vệ sức khỏe v&agrave; cung cấp năng lượng cho một ng&agrave;y l&agrave;m việc hiệu quả c&aacute;c bạn nh&eacute;.</p>\r\n\r\n<p><em>Giấy chứng nhận cơ sở đủ điều kiện an to&agrave;n thực phẩm</em></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/thuc-pham-an-toan.jpg\" title=\"\"><img alt=\"Chuỗi cung ứng thực phẩm an toàn Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/thuc-pham-an-toan.jpg\" style=\"height:1280px; width:923px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/chung-nhan-quyen-su-dung.jpg\" title=\"\"><img alt=\"Chứng nhận quyền sử dụng chỉ dẫn địa lý Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/chung-nhan-quyen-su-dung.jpg\" style=\"height:1280px; width:927px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-2.jpg\" title=\"\"><img alt=\"OCOP Tâm Trà Thái - Trà Tôm Nõn\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-2.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-3.jpg\" title=\"\"><img alt=\"OCOP Tâm Trà Thái - Nhất Đinh Trà\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-3.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-4.jpg\" title=\"\"><img alt=\"Chứng nhận vệ sinh an toàn thực phẩm Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-4.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-6.jpg\" title=\"\"><img alt=\"Chứng nhận Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-6.jpg\" style=\"height:629px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-11.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-11.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-10.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-10.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-9.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-9.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-8.jpg\" title=\"\"><img alt=\"\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/Chung-nhan-che-8.jpg\" style=\"height:1233px; width:900px\" /></a></p>\r\n\r\n<p><a href=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/vietgapttt.jpg\" title=\"\"><img alt=\"Vietgap Tâm Trà Thái\" src=\"https://tamtrathai.com.vn/wp-content/uploads/2021/12/vietgapttt.jpg\" style=\"height:1233px; width:900px\" /></a></p>', '/storage/images_blog/dPhqMqPqbw_casio-ltp-vt01gl-4budf-nu-thumb-fix-600x600.jpg', '2023-12-10 08:42:32', '2025-02-18 00:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` tinyint UNSIGNED DEFAULT NULL,
  `brand_id` tinyint UNSIGNED DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price_buy` int NOT NULL,
  `product_price_sell` int NOT NULL,
  `product_amount` int NOT NULL,
  `product_sale` int DEFAULT NULL,
  `product_attribute` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_keyword` text COLLATE utf8mb4_unicode_ci,
  `product_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(56, 'Đồng hồ nữ Daniel Rose Gold', 30, 2, '/storage/images_product/0OgDLDefzX_elio-ess11-02-unisex-thumb-600x600.jpg', 800000, 800000000, 999, 10, '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng Lượng:</td>\r\n			<td>29g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Đồng hồ 2 kim hiển thị giờ, ph&uacute;t. Vỏ v&agrave; mặt số đ&iacute;nh đ&aacute; qu&yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng ngọc trai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm bảo h&agrave;nh quốc tế), Thay pin miễn ph&iacute; trọn đời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng Lượng:</td>\r\n			<td>29g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Đồng hồ 2 kim hiển thị giờ, ph&uacute;t. Vỏ v&agrave; mặt số đ&iacute;nh đ&aacute; qu&yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng ngọc trai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm bảo h&agrave;nh quốc tế), Thay pin miễn ph&iacute; trọn đời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'DW00100828', 'Đồng hồ nữ Daniel Wellington Crystalline Bezel Black Croc Rose Gold DW00100828'),
(57, 'Đồng hồ nữ Daniel', 30, 2, '/storage/images_product/UbrbXCzEam_casio-ltp-vt01gl-4budf-nu-thumb-fix-600x600.jpg', 500000, 5000000, 99, 10, '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng Lượng:</td>\r\n			<td>29g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Đồng hồ 2 kim hiển thị giờ, ph&uacute;t. Vỏ v&agrave; mặt số đ&iacute;nh đ&aacute; qu&yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng ngọc trai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm bảo h&agrave;nh quốc tế), Thay pin miễn ph&iacute; trọn đời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trọng Lượng:</td>\r\n			<td>29g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Đồng hồ 2 kim hiển thị giờ, ph&uacute;t. Vỏ v&agrave; mặt số đ&iacute;nh đ&aacute; qu&yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng ngọc trai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm bảo h&agrave;nh quốc tế), Thay pin miễn ph&iacute; trọn đời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'DW00100827', 'Đồng hồ nữ Daniel Wellington Crystalline Bezel Black Croc Rose Gold DW00100827'),
(58, 'Đồng Hồ Casio Edifice', 6, 3, '/storage/images_product/JRQmCNcyS0_g-shock-ga-b2100cd-1a4dr-nam-thumb-638727242894017431-600x600.jpg', 1000000, 10000000, 97, 50, '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz Chronograph (M&aacute;y pin bấm giờ thể thao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>48,5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>12,5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>51mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Mobile link (Kết nối kh&ocirc;ng d&acirc;y sử dụng Bluetooth&reg;), 5 chế độ b&aacute;o thức h&agrave;ng ng&agrave;y, Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược...</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm Bảo h&agrave;nh Quốc tế). Thay pin miễn ph&iacute; trọn đời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz Chronograph (M&aacute;y pin bấm giờ thể thao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>48,5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>12,5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>51mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Mobile link (Kết nối kh&ocirc;ng d&acirc;y sử dụng Bluetooth&reg;), 5 chế độ b&aacute;o thức h&agrave;ng ng&agrave;y, Đ&ocirc;̀ng h&ocirc;̀ đ&ecirc;́m ngược...</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm Bảo h&agrave;nh Quốc tế). Thay pin miễn ph&iacute; trọn đời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'ECB-10DB-1ADF', 'Đồng Hồ Casio Edifice ECB-10DB-1ADF'),
(59, 'Đồng hồ nam Casio Edifice EQS-950D-1AVUDF', 6, 3, '/storage/images_product/iNfeT3YZCe_citizen-bi5120-51l-nam-thumb-638702011223823983-600x600.jpg', 250000, 500000, 999, 0, '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Pin năng lượng mặt trời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>44mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>12.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>48.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>5 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 Năm ( Đ&atilde; bao gồm bảo h&agrave;nh Quốc tế )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Pin năng lượng mặt trời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>44mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>12.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>48.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>5 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 Năm ( Đ&atilde; bao gồm bảo h&agrave;nh Quốc tế )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'EQS-950D-1AVUDF', 'Đồng hồ nam Casio Edifice EQS-950D-1AVUDF'),
(60, 'Đồng hồ nam Seiko SPB415J1', 6, 2, '/storage/images_product/EGQKTzVwOS_citizen-em0500-73l-nu-600x600.jpg', 300000, 400000, 99, 0, '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>13.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>47.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Open Heart. Caliber 6R5J, 24 ch&acirc;n k&iacute;nh, trữ c&oacute;t 72h. Sapphire chống l&oacute;a.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>3 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm Bảo h&agrave;nh Quốc tế).</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>13.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>47.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Open Heart. Caliber 6R5J, 24 ch&acirc;n k&iacute;nh, trữ c&oacute;t 72h. Sapphire chống l&oacute;a.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>3 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm Bảo h&agrave;nh Quốc tế).</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'SPB415J1', 'Đồng hồ nam Seiko SPB415J1'),
(61, 'Đồ hồ Casio XX', 6, 3, '/storage/images_product/8mWAbbD7C6_casio-mtp-vt01gl-1b2udf-nam-thumb-600x600.jpg', 200000, 400000, 99, 15, '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Pin năng lượng mặt trời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>44mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>12.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>48.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>5 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 Năm ( Đ&atilde; bao gồm bảo h&agrave;nh Quốc tế )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Pin năng lượng mặt trời</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>44mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>12.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>48.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>5 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 Năm ( Đ&atilde; bao gồm bảo h&agrave;nh Quốc tế )</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'SPB417J1', 'Đồ hồ Casio XX');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `id` bigint UNSIGNED NOT NULL,
  `requirement_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`id`, `requirement_name`, `requirement_email`, `requirement_title`, `requirement_value`, `requirement_active`, `created_at`, `updated_at`) VALUES
(1, 'Mi Trung Kiên', 'maitrungkien1002@gmail.com', 'ggf', 'fffffsfdfdf', 2, '2022-11-19 03:17:32', '2022-11-19 03:17:49');

-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE `ships` (
  `ship_id` int UNSIGNED NOT NULL,
  `city_id` int NOT NULL,
  `district_id` int NOT NULL,
  `ship_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `slide_title`, `image`, `target`, `active`, `type`, `created_at`, `updated_at`) VALUES
(15, 'Logo Footer', '/storage/images_slide/tueZQ7nemF_OIP.jfif', 'Logo Footer', 1, 4, '2023-12-10 08:34:22', '2025-02-17 20:30:01'),
(16, 'Mẫu mã đa dạng', '/storage/images_slide/U8oOTsRUEe_OIP.jfif', 'Lựa chọn thỏa thích', 1, 1, '2023-12-10 08:37:08', '2025-02-17 20:28:23'),
(17, 'Mua 1 tặng 1', '/storage/images_slide/JR0oXZXWzr_OIF.jfif', 'Nhanh tay kẻo hết', 1, 1, '2023-12-10 08:37:26', '2025-02-17 20:27:48'),
(18, 'banner 1', '/storage/images_slide/coK9APvrUp_OIP.jfif', 'banner 1', 1, 2, '2023-12-10 09:32:05', '2025-02-17 20:52:09'),
(19, 'THƯƠNG HIỆU HÀNG ĐẦU ĐỒNG HỒ', '/storage/images_slide/8v301OCcIT_th.jfif', 'Uy tín - Sang Trọng - Lịch Lãm', 1, 1, '2023-12-10 09:32:26', '2025-02-17 20:27:24'),
(20, 'logo chính', '/storage/images_slide/eMpC9RR5fO_OIP.jfif', 'logo chính', 1, 3, '2023-12-14 00:46:35', '2025-02-17 20:30:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_district` int DEFAULT NULL,
  `user_city` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_verify` tinyint(1) NOT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `password`, `user_phone`, `user_address`, `user_district`, `user_city`, `provider`, `provider_id`, `role_id`, `created_at`, `updated_at`, `is_verify`, `verification_code`, `last_seen`) VALUES
(23, 'admin', 'info@maitrungkien.com', '$2a$12$VxqsJdoYt7X2L.EfaL5yGOcBm4RYq4Q/uyvNrZjuZA4rXdb35hUwy', '0943206425', 'Điềm Mặc, Định Hoá, Thái Nguyên', 27, 2, NULL, NULL, 1, '2021-12-21 19:23:27', '2025-02-21 08:47:51', 1, '', '2025-02-21 08:47:51'),
(24, 'MAI TRUNG KIÊN', 'maitrungkien1002@gmail.com', '$2a$12$VxqsJdoYt7X2L.EfaL5yGOcBm4RYq4Q/uyvNrZjuZA4rXdb35hUwy', NULL, NULL, NULL, NULL, 'google', '108963655266565491761', 1, '2022-11-13 08:52:42', '2023-11-20 10:57:04', 1, '', '2023-11-20 10:57:04'),
(38, 'kien đây', 'hoangkienzx@gmail.com', '$2y$10$7Azcbot.9DldE88CYBP2U.5tz3MsEBuHAeARMIpkieYFbONBg79gW', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-09-21 20:57:35', '2023-09-21 20:57:35', 1, 'be6ab80086cb47317769fbbce97a9c0656973807', '2023-10-29 08:56:45'),
(40, 'quản lý sản phẩm', 'cuong.pv@tinasoft.vn', '$2y$10$UCoFS.haL43n4uZvokfu6OBf/L592Q0J2WhgwC6DAzdPFFz2FpNgq', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2023-10-10 00:51:42', '2024-01-12 00:13:40', 1, 'b08150009ca96cd896ab016e33700a8449f44b52', '2024-01-12 00:13:40'),
(46, 'Minh Nhật', 'namseller@gmail.com', '$2y$10$RYABzAGn/KTHznq5dqcGAezSGyLL74iiST9kbAGQt0mM2MRXkv1zy', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-02 09:24:39', '2023-11-02 09:24:39', 1, 'd9afcb057e41b89c3728d01652ef1865eb196daf', NULL),
(51, 'Long Nhật Tuyền', 'visang11@masterkorean.vn', '$2y$10$/FJnNplIUMe.THqCDiVqlO9zubJvHytLHMZ1HBz0jxocdWnfvly02', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-03 02:44:19', '2023-11-03 02:44:19', 1, '9a373a717ec06c90e6761240141de81df6f3ba16', NULL),
(52, 'Phạm Thành An', 'visang123@masterkorean.vn', '$2y$10$TNGSW39GFLYbwejxizqmoe5mcYrgCa0OQGxYmGkpJAjKocVu3NGmG', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-03 02:45:54', '2023-11-03 03:01:33', 1, 'e7cbc1131744064091147668d66a408b85951266', '2023-11-03 03:01:33'),
(53, 'Kiên Nhât Thành', 'cuongatk@yahoo.com.vn', '$2y$10$cSdgWvy5LoXbWMDHwE5uN.m8bVtas5S7.YvAReONDtBcCNL728zdK', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-03 03:01:51', '2023-11-03 03:01:51', 1, '9c1cb8cd2dff302a32e09145038df8b8fee66675', NULL),
(54, 'Nguyễn Văn Nhật', 'email1@gmail.com', '$2y$10$SEx42Tk3o0wZYF69IHQUgOdx2Mzm3bVglHQEjRq/xq9xo23ReFzOG', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-03 03:04:13', '2023-12-03 10:34:48', 1, '663900b7c53d8eb4742ecdae7b33052f3e69e193', '2023-12-03 10:34:48'),
(55, 'admin', 'admin@gmail.com', '$2y$10$2doprg8fL6Wtm/9L37TZCODRtIeCAC6QisarOvZ11djMkMdguzV3q', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-18 06:33:59', '2023-11-18 06:38:58', 1, 'c1c65f53af14e9d1b0885edfcc919812f0821e1f', '2023-11-18 06:38:58'),
(59, 'Hà Quang Uy', 'dtc1955103020102@ictu.edu.vn', '$2y$10$3PcLZWj10EOCLBYy1WNpNeYM7qpGkHF5AQ78y3waJn.C8p7At7jQa', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2023-11-21 21:19:24', '2023-12-03 10:34:55', 1, 'f6d26ecbf7be22220b1de02791816574d126446c', '2023-12-03 10:34:55'),
(62, 'Phạm Văn Cường', 'cuongdtnt109@gmail.com', '$2y$10$jY1H64lIWfyYzRtU4Nwla.RmJhwqwag30s7Ym/EMekzE0DXagfGBK', '0943206425', '445 Đ. Nguyễn Văn Trỗi, Phường 11, Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam 2021', 768, 79, NULL, NULL, 3, '2024-01-11 07:33:24', '2024-01-12 00:34:09', 1, 'af8038beef913a2fd73a2c54e03127afdd539368', '2024-01-12 00:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `product_id`, `user_id`) VALUES
(5, 56, 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`) USING BTREE;

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`city_id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`) USING BTREE,
  ADD KEY `comments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `comments_product_id_foreign` (`product_id`) USING BTREE;

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`) USING BTREE;

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`) USING BTREE;

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`) USING BTREE;

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_detail_id`) USING BTREE,
  ADD KEY `orderdetail_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `orderdetail_product_id_foreign` (`product_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `posts_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`) USING BTREE,
  ADD KEY `products_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `products_brand_id_foreign` (`brand_id`) USING BTREE;

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`ship_id`) USING BTREE;

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`) USING BTREE,
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`) USING BTREE;

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`) USING BTREE,
  ADD KEY `wishlist_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `wishlist_product_id_foreign` (`product_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ships`
--
ALTER TABLE `ships`
  MODIFY `ship_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetail_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE SET NULL,
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
