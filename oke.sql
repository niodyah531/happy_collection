-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2020 at 06:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oke`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cities_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`id`, `cities_id`, `detail`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 305, 'Kecamatan Ngluyu', 2, '2020-12-18 11:26:19', '2020-12-18 11:26:19'),
(2, 22, 'Jl. Bandung No 56', 3, '2020-12-18 22:48:53', '2020-12-20 03:25:37'),
(3, 305, 'Jl. Kertonegoro No.63', 4, '2020-12-20 02:58:08', '2020-12-20 02:58:49'),
(4, 179, 'Jl. Kadiri No 43', 5, '2020-12-20 07:38:41', '2020-12-20 07:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `alamat_toko`
--

CREATE TABLE `alamat_toko` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alamat_toko`
--

INSERT INTO `alamat_toko` (`id`, `city_id`, `detail`, `created_at`, `updated_at`) VALUES
(1, 305, 'Jl. A Yani No.45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dress', NULL, NULL),
(2, 'Atasan', NULL, NULL),
(3, 'Bawahan', NULL, NULL),
(4, 'Sepatu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `city_id`, `title`, `created_at`, `updated_at`) VALUES
(38, 1, 114, 'Denpasar', '2020-03-22 00:06:13', '2020-03-22 00:06:13'),
(43, 1, 447, 'Tabanan', '2020-03-22 00:06:13', '2020-03-22 00:06:13'),
(49, 2, 57, 'Belitung Timur', '2020-03-22 00:06:14', '2020-03-22 00:06:14'),
(51, 3, 106, 'Cilegon', '2020-03-22 00:06:15', '2020-03-22 00:06:15'),
(57, 3, 456, 'Tangerang', '2020-03-22 00:06:15', '2020-03-22 00:06:15'),
(59, 4, 62, 'Bengkulu', '2020-03-22 00:06:16', '2020-03-22 00:06:16'),
(68, 4, 397, 'Seluma', '2020-03-22 00:06:16', '2020-03-22 00:06:16'),
(69, 5, 39, 'Bantul', '2020-03-22 00:06:18', '2020-03-22 00:06:18'),
(74, 6, 151, 'Jakarta Barat', '2020-03-22 00:06:23', '2020-03-22 00:06:23'),
(79, 6, 189, 'Kepulauan Seribu', '2020-03-22 00:06:23', '2020-03-22 00:06:23'),
(81, 7, 88, 'Bone Bolango', '2020-03-22 00:06:24', '2020-03-22 00:06:24'),
(85, 7, 361, 'Pohuwato', '2020-03-22 00:06:24', '2020-03-22 00:06:24'),
(87, 8, 97, 'Bungo', '2020-03-22 00:06:26', '2020-03-22 00:06:26'),
(95, 8, 461, 'Tanjung Jabung Timur', '2020-03-22 00:06:26', '2020-03-22 00:06:26'),
(97, 9, 22, 'Bandung', '2020-03-22 00:06:27', '2020-03-22 00:06:27'),
(119, 9, 430, 'Sukabumi', '2020-03-22 00:06:28', '2020-03-22 00:06:28'),
(123, 9, 469, 'Tasikmalaya', '2020-03-22 00:06:29', '2020-03-22 00:06:29'),
(133, 10, 163, 'Jepara', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(134, 10, 169, 'Karanganyar', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(135, 10, 177, 'Kebumen', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(136, 10, 181, 'Kendal', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(137, 10, 196, 'Klaten', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(138, 10, 209, 'Kudus', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(139, 10, 249, 'Magelang', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(140, 10, 250, 'Magelang', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(141, 10, 344, 'Pati', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(142, 10, 348, 'Pekalongan', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(143, 10, 349, 'Pekalongan', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(144, 10, 352, 'Pemalang', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(145, 10, 375, 'Purbalingga', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(146, 10, 377, 'Purworejo', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(147, 10, 380, 'Rembang', '2020-03-22 00:06:32', '2020-03-22 00:06:32'),
(148, 10, 386, 'Salatiga', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(149, 10, 398, 'Semarang', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(150, 10, 399, 'Semarang', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(151, 10, 427, 'Sragen', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(152, 10, 433, 'Sukoharjo', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(153, 10, 445, 'Surakarta (Solo)', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(154, 10, 472, 'Tegal', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(155, 10, 473, 'Tegal', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(156, 10, 476, 'Temanggung', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(157, 10, 497, 'Wonogiri', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(158, 10, 498, 'Wonosobo', '2020-03-22 00:06:33', '2020-03-22 00:06:33'),
(159, 11, 31, 'Bangkalan', '2020-03-22 00:06:34', '2020-03-22 00:06:34'),
(160, 11, 42, 'Banyuwangi', '2020-03-22 00:06:34', '2020-03-22 00:06:34'),
(161, 11, 51, 'Batu', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(162, 11, 74, 'Blitar', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(163, 11, 75, 'Blitar', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(164, 11, 80, 'Bojonegoro', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(165, 11, 86, 'Bondowoso', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(166, 11, 133, 'Gresik', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(167, 11, 160, 'Jember', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(168, 11, 164, 'Jombang', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(169, 11, 178, 'Kediri', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(170, 11, 179, 'Kediri', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(171, 11, 222, 'Lamongan', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(172, 11, 243, 'Lumajang', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(173, 11, 247, 'Madiun', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(174, 11, 248, 'Madiun', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(175, 11, 251, 'Magetan', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(176, 11, 255, 'Malang', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(177, 11, 256, 'Malang', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(178, 11, 289, 'Mojokerto', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(179, 11, 290, 'Mojokerto', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(180, 11, 305, 'Nganjuk', '2020-03-22 00:06:35', '2020-03-22 00:06:35'),
(181, 11, 306, 'Ngawi', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(182, 11, 317, 'Pacitan', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(183, 11, 330, 'Pamekasan', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(184, 11, 342, 'Pasuruan', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(185, 11, 343, 'Pasuruan', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(186, 11, 363, 'Ponorogo', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(187, 11, 369, 'Probolinggo', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(188, 11, 370, 'Probolinggo', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(189, 11, 390, 'Sampang', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(190, 11, 409, 'Sidoarjo', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(191, 11, 418, 'Situbondo', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(192, 11, 441, 'Sumenep', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(193, 11, 444, 'Surabaya', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(194, 11, 487, 'Trenggalek', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(195, 11, 489, 'Tuban', '2020-03-22 00:06:36', '2020-03-22 00:06:36'),
(196, 11, 492, 'Tulungagung', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(197, 12, 61, 'Bengkayang', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(198, 12, 168, 'Kapuas Hulu', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(199, 12, 176, 'Kayong Utara', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(200, 12, 195, 'Ketapang', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(201, 12, 208, 'Kubu Raya', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(202, 12, 228, 'Landak', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(203, 12, 279, 'Melawi', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(204, 12, 364, 'Pontianak', '2020-03-22 00:06:37', '2020-03-22 00:06:37'),
(205, 12, 365, 'Pontianak', '2020-03-22 00:06:38', '2020-03-22 00:06:38'),
(206, 12, 388, 'Sambas', '2020-03-22 00:06:38', '2020-03-22 00:06:38'),
(207, 12, 391, 'Sanggau', '2020-03-22 00:06:38', '2020-03-22 00:06:38'),
(208, 12, 395, 'Sekadau', '2020-03-22 00:06:38', '2020-03-22 00:06:38'),
(209, 12, 415, 'Singkawang', '2020-03-22 00:06:38', '2020-03-22 00:06:38'),
(210, 12, 417, 'Sintang', '2020-03-22 00:06:38', '2020-03-22 00:06:38'),
(211, 13, 18, 'Balangan', '2020-03-22 00:06:39', '2020-03-22 00:06:39'),
(212, 13, 33, 'Banjar', '2020-03-22 00:06:39', '2020-03-22 00:06:39'),
(213, 13, 35, 'Banjarbaru', '2020-03-22 00:06:39', '2020-03-22 00:06:39'),
(214, 13, 36, 'Banjarmasin', '2020-03-22 00:06:39', '2020-03-22 00:06:39'),
(215, 13, 43, 'Barito Kuala', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(216, 13, 143, 'Hulu Sungai Selatan', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(217, 13, 144, 'Hulu Sungai Tengah', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(218, 13, 145, 'Hulu Sungai Utara', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(219, 13, 203, 'Kotabaru', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(220, 13, 446, 'Tabalong', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(221, 13, 452, 'Tanah Bumbu', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(222, 13, 454, 'Tanah Laut', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(223, 13, 466, 'Tapin', '2020-03-22 00:06:40', '2020-03-22 00:06:40'),
(224, 14, 44, 'Barito Selatan', '2020-03-22 00:06:41', '2020-03-22 00:06:41'),
(225, 14, 45, 'Barito Timur', '2020-03-22 00:06:41', '2020-03-22 00:06:41'),
(226, 14, 46, 'Barito Utara', '2020-03-22 00:06:41', '2020-03-22 00:06:41'),
(227, 14, 136, 'Gunung Mas', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(228, 14, 167, 'Kapuas', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(229, 14, 174, 'Katingan', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(230, 14, 205, 'Kotawaringin Barat', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(231, 14, 206, 'Kotawaringin Timur', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(232, 14, 221, 'Lamandau', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(233, 14, 296, 'Murung Raya', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(234, 14, 326, 'Palangka Raya', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(235, 14, 371, 'Pulang Pisau', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(236, 14, 405, 'Seruyan', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(237, 14, 432, 'Sukamara', '2020-03-22 00:06:42', '2020-03-22 00:06:42'),
(238, 15, 19, 'Balikpapan', '2020-03-22 00:06:43', '2020-03-22 00:06:43'),
(239, 15, 66, 'Berau', '2020-03-22 00:06:43', '2020-03-22 00:06:43'),
(240, 15, 89, 'Bontang', '2020-03-22 00:06:43', '2020-03-22 00:06:43'),
(241, 15, 214, 'Kutai Barat', '2020-03-22 00:06:43', '2020-03-22 00:06:43'),
(242, 15, 215, 'Kutai Kartanegara', '2020-03-22 00:06:44', '2020-03-22 00:06:44'),
(243, 15, 216, 'Kutai Timur', '2020-03-22 00:06:44', '2020-03-22 00:06:44'),
(244, 15, 341, 'Paser', '2020-03-22 00:06:44', '2020-03-22 00:06:44'),
(245, 15, 354, 'Penajam Paser Utara', '2020-03-22 00:06:44', '2020-03-22 00:06:44'),
(246, 15, 387, 'Samarinda', '2020-03-22 00:06:44', '2020-03-22 00:06:44'),
(247, 16, 96, 'Bulungan (Bulongan)', '2020-03-22 00:06:45', '2020-03-22 00:06:45'),
(248, 16, 257, 'Malinau', '2020-03-22 00:06:45', '2020-03-22 00:06:45'),
(249, 16, 311, 'Nunukan', '2020-03-22 00:06:45', '2020-03-22 00:06:45'),
(250, 16, 450, 'Tana Tidung', '2020-03-22 00:06:45', '2020-03-22 00:06:45'),
(251, 16, 467, 'Tarakan', '2020-03-22 00:06:45', '2020-03-22 00:06:45'),
(252, 17, 48, 'Batam', '2020-03-22 00:07:15', '2020-03-22 00:07:15'),
(253, 17, 71, 'Bintan', '2020-03-22 00:07:15', '2020-03-22 00:07:15'),
(254, 17, 172, 'Karimun', '2020-03-22 00:07:15', '2020-03-22 00:07:15'),
(255, 17, 184, 'Kepulauan Anambas', '2020-03-22 00:07:15', '2020-03-22 00:07:15'),
(256, 17, 237, 'Lingga', '2020-03-22 00:07:15', '2020-03-22 00:07:15'),
(257, 17, 302, 'Natuna', '2020-03-22 00:07:15', '2020-03-22 00:07:15'),
(258, 17, 462, 'Tanjung Pinang', '2020-03-22 00:07:15', '2020-03-22 00:07:15'),
(259, 18, 21, 'Bandar Lampung', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(260, 18, 223, 'Lampung Barat', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(261, 18, 224, 'Lampung Selatan', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(262, 18, 225, 'Lampung Tengah', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(263, 18, 226, 'Lampung Timur', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(264, 18, 227, 'Lampung Utara', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(265, 18, 282, 'Mesuji', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(266, 18, 283, 'Metro', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(267, 18, 355, 'Pesawaran', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(268, 18, 356, 'Pesisir Barat', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(269, 18, 368, 'Pringsewu', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(270, 18, 458, 'Tanggamus', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(271, 18, 490, 'Tulang Bawang', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(272, 18, 491, 'Tulang Bawang Barat', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(273, 18, 496, 'Way Kanan', '2020-03-22 00:07:17', '2020-03-22 00:07:17'),
(274, 19, 14, 'Ambon', '2020-03-22 00:07:18', '2020-03-22 00:07:18'),
(275, 19, 99, 'Buru', '2020-03-22 00:07:18', '2020-03-22 00:07:18'),
(276, 19, 100, 'Buru Selatan', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(277, 19, 185, 'Kepulauan Aru', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(278, 19, 258, 'Maluku Barat Daya', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(279, 19, 259, 'Maluku Tengah', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(280, 19, 260, 'Maluku Tenggara', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(281, 19, 261, 'Maluku Tenggara Barat', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(282, 19, 400, 'Seram Bagian Barat', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(283, 19, 401, 'Seram Bagian Timur', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(284, 19, 488, 'Tual', '2020-03-22 00:07:19', '2020-03-22 00:07:19'),
(285, 20, 138, 'Halmahera Barat', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(286, 20, 139, 'Halmahera Selatan', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(287, 20, 140, 'Halmahera Tengah', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(288, 20, 141, 'Halmahera Timur', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(289, 20, 142, 'Halmahera Utara', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(290, 20, 191, 'Kepulauan Sula', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(291, 20, 372, 'Pulau Morotai', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(292, 20, 477, 'Ternate', '2020-03-22 00:07:20', '2020-03-22 00:07:20'),
(293, 20, 478, 'Tidore Kepulauan', '2020-03-22 00:07:21', '2020-03-22 00:07:21'),
(294, 21, 1, 'Aceh Barat', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(295, 21, 2, 'Aceh Barat Daya', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(296, 21, 3, 'Aceh Besar', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(297, 21, 4, 'Aceh Jaya', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(298, 21, 5, 'Aceh Selatan', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(299, 21, 6, 'Aceh Singkil', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(300, 21, 7, 'Aceh Tamiang', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(301, 21, 8, 'Aceh Tengah', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(302, 21, 9, 'Aceh Tenggara', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(303, 21, 10, 'Aceh Timur', '2020-03-22 00:07:22', '2020-03-22 00:07:22'),
(304, 21, 11, 'Aceh Utara', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(305, 21, 20, 'Banda Aceh', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(306, 21, 59, 'Bener Meriah', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(307, 21, 72, 'Bireuen', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(308, 21, 127, 'Gayo Lues', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(309, 21, 230, 'Langsa', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(310, 21, 235, 'Lhokseumawe', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(311, 21, 300, 'Nagan Raya', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(312, 21, 358, 'Pidie', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(313, 21, 359, 'Pidie Jaya', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(314, 21, 384, 'Sabang', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(315, 21, 414, 'Simeulue', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(316, 21, 429, 'Subulussalam', '2020-03-22 00:07:23', '2020-03-22 00:07:23'),
(317, 22, 68, 'Bima', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(318, 22, 69, 'Bima', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(319, 22, 118, 'Dompu', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(320, 22, 238, 'Lombok Barat', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(321, 22, 239, 'Lombok Tengah', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(322, 22, 240, 'Lombok Timur', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(323, 22, 241, 'Lombok Utara', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(324, 22, 276, 'Mataram', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(325, 22, 438, 'Sumbawa', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(326, 22, 439, 'Sumbawa Barat', '2020-03-22 00:07:26', '2020-03-22 00:07:26'),
(327, 23, 13, 'Alor', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(328, 23, 58, 'Belu', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(329, 23, 122, 'Ende', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(330, 23, 125, 'Flores Timur', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(331, 23, 212, 'Kupang', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(332, 23, 213, 'Kupang', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(333, 23, 234, 'Lembata', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(334, 23, 269, 'Manggarai', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(335, 23, 270, 'Manggarai Barat', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(336, 23, 271, 'Manggarai Timur', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(337, 23, 301, 'Nagekeo', '2020-03-22 00:07:29', '2020-03-22 00:07:29'),
(338, 23, 304, 'Ngada', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(339, 23, 383, 'Rote Ndao', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(340, 23, 385, 'Sabu Raijua', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(341, 23, 412, 'Sikka', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(342, 23, 434, 'Sumba Barat', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(343, 23, 435, 'Sumba Barat Daya', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(344, 23, 436, 'Sumba Tengah', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(345, 23, 437, 'Sumba Timur', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(346, 23, 479, 'Timor Tengah Selatan', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(347, 23, 480, 'Timor Tengah Utara', '2020-03-22 00:07:30', '2020-03-22 00:07:30'),
(348, 24, 16, 'Asmat', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(349, 24, 67, 'Biak Numfor', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(350, 24, 90, 'Boven Digoel', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(351, 24, 111, 'Deiyai (Deliyai)', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(352, 24, 117, 'Dogiyai', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(353, 24, 150, 'Intan Jaya', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(354, 24, 157, 'Jayapura', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(355, 24, 158, 'Jayapura', '2020-03-22 00:07:31', '2020-03-22 00:07:31'),
(356, 24, 159, 'Jayawijaya', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(357, 24, 180, 'Keerom', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(358, 24, 193, 'Kepulauan Yapen (Yapen Waropen)', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(359, 24, 231, 'Lanny Jaya', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(360, 24, 263, 'Mamberamo Raya', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(361, 24, 264, 'Mamberamo Tengah', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(362, 24, 274, 'Mappi', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(363, 24, 281, 'Merauke', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(364, 24, 284, 'Mimika', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(365, 24, 299, 'Nabire', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(366, 24, 303, 'Nduga', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(367, 24, 335, 'Paniai', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(368, 24, 347, 'Pegunungan Bintang', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(369, 24, 373, 'Puncak', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(370, 24, 374, 'Puncak Jaya', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(371, 24, 392, 'Sarmi', '2020-03-22 00:07:32', '2020-03-22 00:07:32'),
(372, 24, 443, 'Supiori', '2020-03-22 00:07:33', '2020-03-22 00:07:33'),
(373, 24, 484, 'Tolikara', '2020-03-22 00:07:33', '2020-03-22 00:07:33'),
(374, 24, 495, 'Waropen', '2020-03-22 00:07:33', '2020-03-22 00:07:33'),
(375, 24, 499, 'Yahukimo', '2020-03-22 00:07:33', '2020-03-22 00:07:33'),
(376, 24, 500, 'Yalimo', '2020-03-22 00:07:33', '2020-03-22 00:07:33'),
(377, 25, 124, 'Fakfak', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(378, 25, 165, 'Kaimana', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(379, 25, 272, 'Manokwari', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(380, 25, 273, 'Manokwari Selatan', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(381, 25, 277, 'Maybrat', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(382, 25, 346, 'Pegunungan Arfak', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(383, 25, 378, 'Raja Ampat', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(384, 25, 424, 'Sorong', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(385, 25, 425, 'Sorong', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(386, 25, 426, 'Sorong Selatan', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(387, 25, 449, 'Tambrauw', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(388, 25, 474, 'Teluk Bintuni', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(389, 25, 475, 'Teluk Wondama', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(390, 26, 60, 'Bengkalis', '2020-03-22 00:07:36', '2020-03-22 00:07:36'),
(391, 26, 120, 'Dumai', '2020-03-22 00:07:37', '2020-03-22 00:07:37'),
(392, 26, 147, 'Indragiri Hilir', '2020-03-22 00:07:37', '2020-03-22 00:07:37'),
(393, 26, 148, 'Indragiri Hulu', '2020-03-22 00:07:37', '2020-03-22 00:07:37'),
(394, 26, 166, 'Kampar', '2020-03-22 00:07:37', '2020-03-22 00:07:37'),
(395, 26, 187, 'Kepulauan Meranti', '2020-03-22 00:07:37', '2020-03-22 00:07:37'),
(405, 27, 266, 'Mamuju Utara', '2020-03-22 00:07:40', '2020-03-22 00:07:40'),
(406, 27, 362, 'Polewali Mandar', '2020-03-22 00:07:40', '2020-03-22 00:07:40'),
(430, 28, 493, 'Wajo', '2020-03-22 00:07:43', '2020-03-22 00:07:43'),
(431, 29, 25, 'Banggai', '2020-03-22 00:07:44', '2020-03-22 00:07:44'),
(440, 29, 482, 'Tojo Una-Una', '2020-03-22 00:07:45', '2020-03-22 00:07:45'),
(441, 29, 483, 'Toli-Toli', '2020-03-22 00:07:45', '2020-03-22 00:07:45'),
(452, 30, 295, 'Muna', '2020-03-22 00:07:46', '2020-03-22 00:07:46'),
(453, 30, 494, 'Wakatobi', '2020-03-22 00:07:46', '2020-03-22 00:07:46'),
(459, 31, 188, 'Kepulauan Sangihe', '2020-03-22 00:07:48', '2020-03-22 00:07:48'),
(460, 31, 190, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '2020-03-22 00:07:48', '2020-03-22 00:07:48'),
(486, 32, 422, 'Solok Selatan', '2020-03-22 00:07:51', '2020-03-22 00:07:51'),
(487, 32, 453, 'Tanah Datar', '2020-03-22 00:07:51', '2020-03-22 00:07:51'),
(489, 33, 121, 'Empat Lawang', '2020-03-22 00:07:52', '2020-03-22 00:07:52'),
(500, 33, 324, 'Pagar Alam', '2020-03-22 00:07:53', '2020-03-22 00:07:53'),
(503, 34, 15, 'Asahan', '2020-03-22 00:07:55', '2020-03-22 00:07:55'),
(505, 34, 70, 'Binjai', '2020-03-22 00:07:55', '2020-03-22 00:07:55'),
(535, 34, 481, 'Toba Samosir', '2020-03-22 00:07:57', '2020-03-22 00:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `code`, `title`, `created_at`, `updated_at`) VALUES
(1, 'jne', 'JNE', NULL, NULL),
(2, 'pos', 'POS', NULL, NULL),
(3, 'tiki', 'TIKI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_order`
--

INSERT INTO `detail_order` (`id`, `order_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 1, '2020-12-18 11:27:06', '2020-12-18 11:27:06'),
(2, 2, 3, 2, '2020-12-18 11:31:11', '2020-12-18 11:31:11'),
(3, 3, 10, 1, '2020-12-18 17:08:52', '2020-12-18 17:08:52'),
(4, 4, 12, 1, '2020-12-18 22:50:11', '2020-12-18 22:50:11'),
(5, 5, 4, 1, '2020-12-18 23:06:52', '2020-12-18 23:06:52'),
(6, 6, 2, 1, '2020-12-19 07:46:10', '2020-12-19 07:46:10'),
(7, 6, 12, 1, '2020-12-19 07:46:10', '2020-12-19 07:46:10'),
(8, 7, 5, 2, '2020-12-19 19:21:39', '2020-12-19 19:21:39'),
(9, 8, 10, 1, '2020-12-20 02:59:42', '2020-12-20 02:59:42'),
(10, 8, 8, 2, '2020-12-20 02:59:42', '2020-12-20 02:59:42'),
(11, 9, 10, 2, '2020-12-20 03:26:17', '2020-12-20 03:26:17'),
(12, 10, 3, 1, '2020-12-20 07:39:37', '2020-12-20 07:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` int(11) NOT NULL,
  `no_resi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_order_id` bigint(20) UNSIGNED NOT NULL,
  `metode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ongkir` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biaya_cod` int(11) NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `invoice`, `user_id`, `subtotal`, `no_resi`, `status_order_id`, `metode_pembayaran`, `ongkir`, `created_at`, `updated_at`, `biaya_cod`, `no_hp`, `bukti_pembayaran`, `pesan`) VALUES
(1, 'ALV202012180626', 2, 119000, '12345', 5, 'trf', 0, '2020-12-18 11:27:06', '2020-12-18 11:31:24', 0, '087678546234', 'buktibayar/lR6NGGLo5oJqcI7r01vPxhqbLbpdz1h6zL9yPSyx.jpeg', 'kirim cepat'),
(2, 'ALV202012180630', 2, 1468000, NULL, 6, 'cod', 0, '2020-12-18 11:31:11', '2020-12-18 17:07:42', 10000, '082332132566', NULL, 'jne'),
(3, 'ALV202012191208', 2, 999000, '12345', 5, 'trf', 0, '2020-12-18 17:08:52', '2020-12-18 17:11:52', 0, '087678546234', 'buktibayar/iNjHnFsHvcjm63SkfKGpJidHTFHVk6fYnwv9cdgp.jpeg', 'jne'),
(4, 'ALV202012190549', 3, 119000, '12345', 5, 'trf', 0, '2020-12-18 22:50:11', '2020-12-18 22:52:47', 0, '082332132566', 'buktibayar/N2juZcW8TQngfJl0rOmWgQIWs944cDz5NNGscyZV.jpeg', 'kirim cepat'),
(5, 'ALV202012190606', 3, 479000, '12345', 5, 'trf', 0, '2020-12-18 23:06:52', '2020-12-18 23:15:28', 0, '081335876457', 'buktibayar/GfmMcDtPrUkqXqkYJuwsiURvOA6MnnXhMXimEptA.jpeg', 'kirim cepat'),
(6, 'ALV202012190245', 3, 1190000, '12345', 5, 'trf', 0, '2020-12-19 07:46:10', '2020-12-19 07:51:40', 0, '087678546234', 'buktibayar/v4xbofQh4TPlqZ67BCrZj5nJ6PrSXs5MRvcZrhaF.jpeg', 'kirim kilat'),
(7, 'ALV202012200221', 3, 1598000, '12345', 5, 'trf', 0, '2020-12-19 19:21:39', '2020-12-20 03:27:34', 0, '081335876457', 'buktibayar/mK3kMT5ouvl2hdb8VdycpvFodAbT59ILrVI56n6y.jpeg', 'warna sesuai gambar'),
(8, 'ALV202012200959', 4, 1572000, '12345', 5, 'trf', 0, '2020-12-20 02:59:42', '2020-12-20 03:09:08', 0, '085436782496', 'buktibayar/79OuUAYEh2QYZFqFI6V94YKZXZHMLT21tPDJ8dNn.png', 'Kirim cepat'),
(9, 'ALV202012201025', 3, 1998000, NULL, 2, 'trf', 0, '2020-12-20 03:26:17', '2020-12-20 03:27:00', 0, '083858679324', 'buktibayar/QFdtpKD2bafll9EeW03w9bnoRdJ1t4U4OWS62gqG.jpeg', 'kirim cepat'),
(10, 'ALV202012200239', 5, 734000, '12345', 5, 'trf', 0, '2020-12-20 07:39:37', '2020-12-20 07:47:03', 0, '084536787999', 'buktibayar/Y566k85T6vxMzfBKR0i8RmGLeJk9McPNflSHivPL.png', 'kirim cepat');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `weigth` int(11) NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `weigth`, `categories_id`, `created_at`, `updated_at`, `stok`) VALUES
(1, 'Dress Jovita Brukat', 'bahan brukat tile bordir glitter\r\n            + mutiara. lapis furing bahan moscrepe import.\r\n            size L panjang 105cm', 'dress1.jpeg', 599000, 500, 1, NULL, NULL, 9),
(2, 'Dress Joly', 'Dress Joly', 'dress2.jpeg', 796000, 700, 1, NULL, NULL, 5),
(3, 'Dress Solfa', 'bahan moscrepe kombi katun\r\n            ld 100cm, panjang 85cm, tali hidup', 'dress3.jpeg', 734000, 400, 1, NULL, NULL, 9),
(4, 'Nadya Blouse', 'bahan katun, model salur, \r\n            supprot busui', 'atasan1.jpeg', 479000, 300, 2, NULL, NULL, 8),
(5, 'Klona Top', 'Klona Top', 'atasan2.jpeg', 799000, 450, 2, NULL, NULL, 9),
(6, 'Alana Outer Cardigan', 'bahan moscrepe ld 100cm, pj 80cm', 'atasan3.jpeg', 699000, 600, 2, NULL, NULL, 12),
(7, 'Cammomile Celana Kulot Panjang\r\n            Highwaist', 'bahan scuba, lingkar pinggang\r\n            66, lingkar pinggul 90, lingkar paha 58, \r\n            pjg 100cm', 'bawahan1.jpeg', 599000, 800, 3, NULL, NULL, 13),
(8, 'Skirt Rok Midi Jeans Young Flat', 'bahan jeans premium ukuran 27', 'bawahan2.jpeg', 786000, 700, 3, NULL, NULL, 4),
(9, 'Gayla Doe Pants', 'bahan vallerie', 'bawahan3.jpeg', 589000, 500, 3, NULL, NULL, 9),
(10, 'PVN Mujigae Sepatu Sneakers', 'bahan high quality kulit sintesis', 'sepatu1.jpeg', 999000, 400, 4, NULL, NULL, 4),
(11, 'Strappy Sepatu Hak Tali Glossy', 'bahan sintesis, tinggi heels 11 cm', 'sepatu2.jpeg', 1090000, 300, 4, NULL, '2020-12-19 04:05:48', 7),
(12, 'Boots Wanita Ziper YKS', 'bahan suede, tinggi heels 5cm', 'sepatu3.jpeg', 1190000, 400, 4, NULL, '2020-12-20 03:03:06', 11);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province_id`, `title`, `created_at`, `updated_at`) VALUES
(6, 1, 'Bali', NULL, NULL),
(7, 2, 'Bangka Belitung', NULL, NULL),
(8, 3, 'Banten', NULL, NULL),
(9, 4, 'Bengkulu', NULL, NULL),
(10, 5, 'DI Yogyakarta', NULL, NULL),
(11, 6, 'DKI Jakarta', NULL, NULL),
(12, 7, 'Gorontalo', NULL, NULL),
(13, 8, 'Jambi', NULL, NULL),
(14, 9, 'Jawa Barat', NULL, NULL),
(15, 10, 'Jawa Tengah', NULL, NULL),
(16, 11, 'Jawa Timur', NULL, NULL),
(17, 12, 'Kalimantan Barat', NULL, NULL),
(18, 13, 'Kalimantan Selatan', NULL, NULL),
(19, 14, 'Kalimantan Tengah', NULL, NULL),
(20, 15, 'Kalimantan Timur', NULL, NULL),
(21, 16, 'Kalimantan Utara', NULL, NULL),
(22, 17, 'Kepulauan Riau', NULL, NULL),
(23, 18, 'Lampung', NULL, NULL),
(24, 19, 'Maluku', NULL, NULL),
(25, 20, 'Maluku Utara', NULL, NULL),
(26, 21, 'Nanggroe Aceh Darussalam (NAD)', NULL, NULL),
(27, 22, 'Nusa Tenggara Barat (NTB)', NULL, NULL),
(28, 23, 'Nusa Tenggara Timur (NTT)', NULL, NULL),
(29, 24, 'Papua', NULL, NULL),
(30, 25, 'Papua Barat', NULL, NULL),
(31, 26, 'Riau', '2020-03-22 00:07:34', '2020-03-22 00:07:34'),
(32, 27, 'Sulawesi Barat', '2020-03-22 00:07:37', '2020-03-22 00:07:37'),
(33, 28, 'Sulawesi Selatan', '2020-03-22 00:07:40', '2020-03-22 00:07:40'),
(34, 29, 'Sulawesi Tengah', '2020-03-22 00:07:43', '2020-03-22 00:07:43'),
(35, 30, 'Sulawesi Tenggara', '2020-03-22 00:07:45', '2020-03-22 00:07:45'),
(36, 31, 'Sulawesi Utara', '2020-03-22 00:07:46', '2020-03-22 00:07:46'),
(37, 32, 'Sumatera Barat', '2020-03-22 00:07:48', '2020-03-22 00:07:48'),
(38, 33, 'Sumatera Selatan', '2020-03-22 00:07:51', '2020-03-22 00:07:51'),
(39, 34, 'Sumatera Utara', '2020-03-22 00:07:53', '2020-03-22 00:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `bank_name`, `atas_nama`, `no_rekening`, `created_at`, `updated_at`) VALUES
(1, 'BRI', 'RUBY', '111122223333', NULL, NULL),
(2, 'BRI SYARIAH', 'SAPHIERE', '222233334444', NULL, NULL),
(3, 'BCA', 'EMERALD', '333344445555', NULL, NULL),
(4, 'BNI', 'ALKANA', '444455556666', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_order`
--

CREATE TABLE `status_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_order`
--

INSERT INTO `status_order` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Belum Bayar', NULL, NULL),
(2, 'Perlu Di Cek', NULL, NULL),
(3, 'Telah Di Bayar', NULL, NULL),
(4, 'Barang Di Kirim', NULL, NULL),
(5, 'Barang Telah Sampai', NULL, NULL),
(6, 'Pesanan Di Batalkan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@sport.com', NULL, '$2y$10$9iG5hPBTezMZPO1.tygZ8epG0scqSfFwW9y9QMrRlIWQ7Jx4yvm4.', 'admin', NULL, NULL, NULL),
(2, 'Nio Dyah Tribuana', 'niodyah30375@gmail.com', NULL, '$2y$10$.qEr207ouyt55WWbKTofQeeATmCC9FHmkIRuT8mt57TDe6szBPGCm', 'customer', NULL, '2020-12-18 11:25:46', '2020-12-18 11:25:46'),
(3, 'Alecia', 'alecia@gmail.com', NULL, '$2y$10$NZvCvvZJSgLJDWVZKORV6Oqo/S2gOlSA8TkJSnXyWsTMsd5/N0uJq', 'customer', NULL, '2020-12-18 22:44:13', '2020-12-18 22:44:13'),
(4, 'Ilona Saphiere', 'saphiere24@gmail.com', NULL, '$2y$10$RUPmuGjB5Rw0YLwrFmt11.HtoyAvVG7pRLW8RbCVcNQkbVJRTFi0S', 'customer', NULL, '2020-12-20 02:54:01', '2020-12-20 02:54:01'),
(5, 'Rasendrya', 'rasensrya76@gmail.com', NULL, '$2y$10$lhAbw7mSuaMuz3OtJRUpWuOMcD1BM9asmIjdE4kVbjxcbBkFl.poa', 'customer', NULL, '2020-12-20 07:36:20', '2020-12-20 07:36:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alamat_toko`
--
ALTER TABLE `alamat_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_order`
--
ALTER TABLE `status_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alamat`
--
ALTER TABLE `alamat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alamat_toko`
--
ALTER TABLE `alamat_toko`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `status_order`
--
ALTER TABLE `status_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
