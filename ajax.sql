-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2023 lúc 02:10 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ajax`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(2, 'Web Development'),
(3, 'Graphic Design'),
(4, 'Digital Marketing'),
(5, 'Web Design sdfdsfsdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `description`) VALUES
(1, 'Thakur Sahiba', 'quick revision best video I have ever seen. really impressed. you cleared my whole basic concepts in a video.'),
(10, 'Manish Prajapati', 'Best 👍👍👍 video, very helpful questions for freshers to prepare css interview, I recommend this video to all fresher designers, thanks 🙏🙏🙏 sir this video helps me a lot'),
(11, 'Vivek Yadav', 'Nice sir ji , add more videos of interview sir'),
(12, 'Jinal Prajapati', 'Verry use full video thank you sir 🙏'),
(13, 'Ravinder Panchal', 'Yeah 😊😊😊 nice video, your content is good and your explanation is very detailed, it helps me a lot, thanks 🙏🙏🙏🙏 keep it up'),
(16, 'Rakesh kumar', 'testing serialize method'),
(17, 'Ajay Yadav', 'Nice AJAX Tutorial'),
(18, 'Bijender Rana', 'Explanation is good');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `price` text DEFAULT NULL,
  `doc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `gender`, `price`, `doc`) VALUES
(2, 'Rahul Goyal', 'rahul@gmail.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `cname` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course`
--

INSERT INTO `course` (`id`, `catid`, `cname`) VALUES
(1, 1, 'HTML & CSS'),
(2, 1, 'Bootstrap'),
(3, 1, 'JavaScript'),
(4, 1, 'jQuery'),
(5, 2, 'PHP & MYSQL'),
(6, 2, 'CodeIgniter'),
(7, 2, 'Laravel'),
(8, 2, 'CakePHP'),
(9, 3, 'Photoshop'),
(10, 3, 'Illustrator'),
(11, 3, 'Corel Draw'),
(12, 4, 'SEO'),
(13, 4, 'SMO'),
(14, 4, 'Google Adwords');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `catid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `catid`, `brandid`, `name`, `image`, `price`, `description`) VALUES
(1, 1, 1, 'Men Solid Polo Neck', '1.webp', 495, NULL),
(2, 1, 1, 'Men Solid Round Neck Maroon', '2.webp', 299, NULL),
(3, 1, 2, 'Men Solid Polo Neck Green T-Shirt', '3.webp', 319, NULL),
(4, 1, 2, 'Men Checkered Round Neck Blue T-Shirt', '4.webp', 359, NULL),
(5, 1, 3, 'Men Solid Round Neck Grey Tshirt', '5.webp', 2428, NULL),
(6, 1, 2, 'Pack of 2 Men Striped Round Tshirt', '6.webp', 416, NULL),
(7, 1, 3, 'Men Printed Round Neck Blue T-Shirt', '7.webp', 299, NULL),
(8, 1, 2, 'Pack of 2 Men Printed Round Neck Navy Blue, Grey T-Shirt', '8.webp', 336, NULL),
(9, 1, 2, 'Men Color Block Round Neck Tshirt', '9.webp', 349, NULL),
(10, 1, 2, 'TS1 Men Striped Round Neck Tshirt', '10.webp', 206, NULL),
(11, 1, 3, 'Men Color Block Polo Neck Grey Tshirt', '11.webp', 249, NULL),
(12, 1, 3, 'Men Striped Round Neck Blue T-Shirt', '12.webp', 291, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
