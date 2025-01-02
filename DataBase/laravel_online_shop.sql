-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2025 at 07:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Realme GT Neo6 SE', 'realme-gt-neo6-se', 1, '2024-12-21 09:05:51', '2025-01-02 02:00:58'),
(2, 'Xiaomi 14 Ultra 5G', 'xiaomi-14-ultra-5g', 1, '2024-12-21 09:29:51', '2024-12-21 09:29:51'),
(3, 'Samsung Galaxy S24 FE', 'samsung-galaxy-s24-fe', 0, '2024-12-21 10:11:24', '2024-12-21 10:11:24'),
(4, 'Realme GT Neo5 SE', 'realme-gt-neo5-se', 1, '2024-12-21 10:25:57', '2025-01-02 01:59:46'),
(5, 'AAA444', 'aaa444', 1, '2024-12-21 10:27:48', '2024-12-21 10:32:02'),
(6, 'bbb111', 'bbb111', 1, '2024-12-21 10:28:10', '2024-12-21 10:42:15'),
(7, 'example', 'example', 1, '2024-12-21 10:41:08', '2024-12-21 10:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(1, 'Macbook', 'macbook', NULL, '1', 'No', '2024-10-18 09:55:19', '2024-10-18 09:55:19'),
(3, 'Dr. Moises Kris DDS', 'Clark Becker PhD', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(4, 'Clinton Herman', 'Mr. Darien Anderson', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(5, 'Scarlett Braun', 'Palma Stiedemann', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(7, 'Irving Bauch', 'Prof. Marion Deckow III', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(9, 'Chanel Baumbach Sr.', 'Dr. Gabriel Zemlak', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(10, 'Kamryn Yundt', 'Prof. Kattie Erdman', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(11, 'Mr. Glen Eichmann', 'Justice Dooley', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(12, 'Elenora Osinski III', 'Shannon Gerhold', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(13, 'Mozelle Spinka', 'Muhammad Stokes', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(14, 'Kameron Kulas', 'Shaylee Rice', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(15, 'Moriah Feest', 'Prof. Rylan Mraz I', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(16, 'Kevin Halvorson', 'Jeromy Anderson', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(17, 'Dr. Kathryne Bednar', 'Suzanne Morar', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(18, 'Tara Swift', 'Ms. Kasandra Welch V', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(19, 'Mr. Skylar Heller', 'Vance Gerlach', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(20, 'Herbert Wintheiser', 'Letha Schowalter', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(21, 'Mr. Brody Cruickshank', 'Travis West', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(22, 'Dr. Madilyn Goodwin PhD', 'Yoshiko Luettgen', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(23, 'Mr. Tony Crona IV', 'Violette Harber Jr.', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(24, 'Prof. Gretchen Tillman', 'Odessa Lueilwitz', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(27, 'Miss Damaris Torp', 'Aurelio Predovic', NULL, '1', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(28, 'Maxine Beier I', 'Seamus Tremblay PhD', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(29, 'Gladys Mills', 'Miss Berniece Greenholt', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(30, 'Prof. Chase Stokes', 'German Mertz', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(31, 'Mrs. Vincenza Satterfield', 'April Corkery', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(32, 'Lucienne Parker', 'Miss Chyna Medhurst', NULL, '0', 'No', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(33, 'Electronics', 'electronics', NULL, '0', 'No', '2024-10-25 15:43:49', '2024-10-25 15:43:49'),
(34, 'abc', 'acb', NULL, '0', 'No', '2024-10-25 15:45:48', '2024-10-25 15:45:48'),
(35, 'sdasaf', 'sdasaf', NULL, '0', 'No', '2024-10-25 21:06:23', '2024-10-25 21:06:23'),
(36, 'jhfas', 'jhfas', NULL, '0', 'No', '2024-10-25 21:18:51', '2024-10-25 21:18:51'),
(37, 'fdsaaf', 'fdsaaf', NULL, '0', 'No', '2024-10-25 21:24:41', '2024-10-25 21:24:41'),
(38, 'sdfa', 'sdfa', NULL, '0', 'No', '2024-10-25 21:25:28', '2024-10-25 21:25:28'),
(39, 'test', 'test', NULL, '1', 'No', '2024-11-01 22:35:31', '2024-11-01 22:35:31'),
(40, 'test2', 'test2', NULL, '1', 'No', '2024-11-01 22:39:02', '2024-11-01 22:39:02'),
(41, 'test3', 'test3', NULL, '1', 'No', '2024-11-01 22:47:51', '2024-11-01 22:47:51'),
(42, 'test4', 'test4', NULL, '1', 'No', '2024-11-01 22:53:33', '2024-11-01 22:53:33'),
(43, 'test5', 'test5', NULL, '1', 'No', '2024-11-01 22:57:40', '2024-11-01 22:57:40'),
(45, 'testimage2', 'testimage2', NULL, '1', 'No', '2024-11-01 23:13:09', '2024-11-01 23:13:09'),
(47, 'img test', 'img-test', NULL, '1', 'No', '2024-11-05 04:13:02', '2024-11-05 04:13:02'),
(48, 'testimg', 'testimg', NULL, '1', 'No', '2024-11-05 04:14:10', '2024-11-05 04:14:10'),
(49, 'module', 'module', '49.jpg', '1', 'No', '2024-11-05 04:15:25', '2024-11-05 04:15:25'),
(50, 'example', 'example', NULL, '0', 'No', '2024-12-03 06:57:16', '2024-12-03 06:57:16'),
(52, 'IPhone 11', 'iphone-11', '52-1733240917.jpg', '1', 'Yes', '2024-12-03 07:42:42', '2025-01-01 12:30:13'),
(53, 'Test Show On Home', 'test-show-on-home', '53-1735764449.jpg', '1', 'Yes', '2025-01-01 12:26:49', '2025-01-01 13:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_15_162529_alter_users_table', 2),
(6, '2024_10_18_132515_create_categories_table', 3),
(9, '2024_10_26_223431_create_temp_images_table', 4),
(10, '2024_12_20_071940_create_sub_categories_table', 4),
(11, '2024_12_21_150904_create_brands_table', 5),
(12, '2024_12_22_130056_create_products_table', 6),
(13, '2024_12_22_130155_create_product_images_table', 6),
(14, '2025_01_01_191657_alter_categories_table', 7),
(15, '2025_01_01_193202_alter_products_table', 8),
(16, '2025_01_01_195057_alter_sub_categories_table', 9),
(17, '2025_01_02_162204_alter_products_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product test', 'product-test', '<p>des test</p>', NULL, NULL, NULL, 200.00, NULL, 50, 5, 7, 'No', 'DD', 'Product test', 'Yes', 8, 1, '2024-12-22 12:15:31', '2025-01-02 02:43:07'),
(2, 'Product test 2', 'product-test-2', '<p>Des test 2</p>', NULL, NULL, NULL, 1000.00, NULL, 50, 5, 7, 'Yes', 'SDFD', 'Product test 2', 'Yes', 44, 1, '2024-12-22 12:25:13', '2025-01-02 02:52:02'),
(3, '12h22', '12h22', NULL, NULL, NULL, NULL, 100.00, NULL, 50, 5, 7, 'Yes', 'DDDD', '12h22', 'Yes', 22, 1, '2024-12-23 10:23:07', '2024-12-23 10:23:07'),
(6, '12h33', '12h33', NULL, NULL, NULL, NULL, 1100.00, 300.00, 50, 5, 5, 'No', 'CCC', '12h33', 'Yes', 33, 1, '2024-12-23 10:33:26', '2025-01-02 03:47:26'),
(7, '12h36', '12h36', NULL, NULL, NULL, NULL, 200.00, 350.00, 50, 5, 7, 'No', 'XXXX', '12h36', 'Yes', 36, 1, '2024-12-23 10:36:09', '2024-12-23 10:36:09'),
(9, '12h53', '12h53', NULL, NULL, NULL, '', 200.00, NULL, 50, 5, 7, 'No', 'EEE', '12h53', 'Yes', 1111, 1, '2024-12-23 10:53:35', '2025-01-02 11:18:59'),
(10, '12h57', '12h57', NULL, NULL, NULL, NULL, 200.00, NULL, 50, 5, 7, 'No', 'EEEA', '12h57', 'Yes', 1111, 1, '2024-12-23 10:57:53', '2024-12-23 10:57:53'),
(11, '4h18', '4h18', '<p>ffafaaafs</p>', NULL, NULL, NULL, 300.00, 350.00, 50, 5, 7, 'Yes', 'ZZZ', '4h18', 'Yes', 9, 0, '2024-12-31 02:18:57', '2024-12-31 02:18:57'),
(12, 'Sample', 'sample', '<p>ok sample</p>', NULL, NULL, NULL, 100.00, 300.00, 50, 5, 3, 'No', 'QQQ', 'Sample', 'Yes', 22, 0, '2024-12-31 02:40:07', '2024-12-31 02:40:07'),
(13, 'Sample 1', 'sample-1', '<p>asdasd</p>', NULL, NULL, NULL, 10.00, 11.00, 50, 5, 3, 'No', 'RRR', 'Sample 1', 'Yes', 33, 1, '2024-12-31 02:43:56', '2024-12-31 02:43:56'),
(14, '22h43', '22h43', '<p>ok 22h43</p>', NULL, NULL, NULL, 101.00, 121.00, 34, 11, 5, 'No', 'ZZZB', '323', 'Yes', 12, 0, '2025-01-01 08:13:07', '2025-01-01 08:43:15'),
(17, '0h49', '0h49', '<p>des 0h48</p>', NULL, NULL, NULL, 2.00, 3.00, 52, 3, 1, 'Yes', 'ASD', '223', 'Yes', 44, 1, '2025-01-01 10:49:36', '2025-01-01 16:15:30'),
(19, 'Prof. Kole Rath PhD', 'prof-kole-rath-phd', NULL, NULL, NULL, NULL, 428.00, NULL, 50, 10, 6, 'Yes', '28132', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(20, 'Ms. Dasia Graham', 'ms-dasia-graham', NULL, NULL, NULL, NULL, 513.00, NULL, 50, 4, 1, 'Yes', '95607', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(21, 'Dr. Evalyn Jakubowski', 'dr-evalyn-jakubowski', NULL, NULL, NULL, NULL, 735.00, NULL, 50, 4, 7, 'Yes', '76525', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(22, 'Prof. Lavonne Mann', 'prof-lavonne-mann', NULL, NULL, NULL, NULL, 843.00, NULL, 50, 3, 4, 'Yes', '6737', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(23, 'Mr. Rogelio Vandervort', 'mr-rogelio-vandervort', NULL, NULL, NULL, NULL, 105.00, NULL, 50, 5, 5, 'Yes', '69242', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(24, 'Myron O\'Conner V', 'myron-oconner-v', NULL, NULL, NULL, NULL, 392.00, NULL, 50, 10, 5, 'Yes', '81947', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(25, 'Prof. Deon Wisozk PhD', 'prof-deon-wisozk-phd', NULL, NULL, NULL, NULL, 90.00, NULL, 50, 10, 4, 'Yes', '63943', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(26, 'Miss Pink Brekke', 'miss-pink-brekke', NULL, NULL, NULL, NULL, 817.00, NULL, 50, 3, 5, 'Yes', '35541', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(27, 'Dr. Franz Goldner IV', 'dr-franz-goldner-iv', NULL, NULL, NULL, NULL, 633.00, NULL, 50, 3, 3, 'Yes', '86967', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(28, 'Aurelio Gleichner', 'aurelio-gleichner', NULL, NULL, NULL, NULL, 30.00, NULL, 50, 5, 4, 'Yes', '17949', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(29, 'Erick Gutkowski Jr.', 'erick-gutkowski-jr', NULL, NULL, NULL, NULL, 391.00, NULL, 50, 10, 7, 'Yes', '45597', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(30, 'Aaliyah Hagenes III', 'aaliyah-hagenes-iii', NULL, NULL, NULL, NULL, 779.00, NULL, 50, 5, 1, 'Yes', '81252', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(31, 'Dillon Heathcote DDS', 'dillon-heathcote-dds', NULL, NULL, NULL, NULL, 13.00, NULL, 50, 10, 2, 'Yes', '87510', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(32, 'Dorothea Corwin', 'dorothea-corwin', NULL, NULL, NULL, NULL, 759.00, NULL, 50, 5, 5, 'Yes', '21875', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(33, 'Ms. Marie Block', 'ms-marie-block', NULL, NULL, NULL, NULL, 570.00, NULL, 50, 4, 6, 'Yes', '65424', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(34, 'Prof. Darrin Haag', 'prof-darrin-haag', NULL, NULL, NULL, NULL, 232.00, NULL, 50, 4, 1, 'Yes', '12495', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(35, 'Arvilla Bode', 'arvilla-bode', NULL, NULL, NULL, NULL, 184.00, NULL, 50, 4, 1, 'Yes', '4663', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(36, 'Justus Weimann', 'justus-weimann', NULL, NULL, NULL, NULL, 341.00, NULL, 50, 3, 4, 'Yes', '44847', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(37, 'Kirk Smith', 'kirk-smith', NULL, NULL, NULL, NULL, 555.00, NULL, 50, 3, 6, 'Yes', '15185', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(38, 'Mrs. Dolores Swaniawski III', 'mrs-dolores-swaniawski-iii', NULL, NULL, NULL, NULL, 563.00, NULL, 50, 3, 2, 'Yes', '91649', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(39, 'Antoinette Bailey DVM', 'antoinette-bailey-dvm', NULL, NULL, NULL, NULL, 587.00, NULL, 50, 3, 1, 'Yes', '69544', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(40, 'Jamil Lueilwitz', 'jamil-lueilwitz', NULL, NULL, NULL, NULL, 494.00, NULL, 50, 3, 5, 'Yes', '41818', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(41, 'Kelsi Ratke I', 'kelsi-ratke-i', NULL, NULL, NULL, NULL, 261.00, NULL, 50, 4, 5, 'Yes', '9161', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(42, 'Dr. Freeman Leuschke PhD', 'dr-freeman-leuschke-phd', NULL, NULL, NULL, NULL, 941.00, NULL, 50, 4, 5, 'Yes', '59039', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(43, 'Kristy Koepp', 'kristy-koepp', NULL, NULL, NULL, NULL, 797.00, NULL, 50, 5, 1, 'Yes', '95162', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(44, 'Prof. Westley Roob', 'prof-westley-roob', NULL, NULL, NULL, NULL, 497.00, NULL, 50, 3, 7, 'Yes', '94896', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(45, 'Flavie Breitenberg', 'flavie-breitenberg', NULL, NULL, NULL, NULL, 125.00, NULL, 50, 4, 1, 'Yes', '75241', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(46, 'Miss Hattie Jaskolski IV', 'miss-hattie-jaskolski-iv', NULL, NULL, NULL, NULL, 342.00, NULL, 50, 10, 4, 'Yes', '99811', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(47, 'Alyson Davis', 'alyson-davis', NULL, NULL, NULL, NULL, 477.00, NULL, 50, 5, 4, 'Yes', '65410', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(48, 'Theodore Reinger', 'theodore-reinger', NULL, NULL, NULL, NULL, 958.00, NULL, 50, 5, 5, 'Yes', '46680', NULL, 'Yes', 10, 1, '2025-01-02 04:38:34', '2025-01-02 04:38:34'),
(49, 'Prof. Lowell Emmerich PhD', 'prof-lowell-emmerich-phd', NULL, NULL, NULL, NULL, 366.00, NULL, 52, 3, 7, 'Yes', '70894', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(50, 'Mrs. Isabell Borer', 'mrs-isabell-borer', NULL, NULL, NULL, NULL, 155.00, NULL, 52, 5, 1, 'Yes', '42868', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(51, 'Carey Hodkiewicz MD', 'carey-hodkiewicz-md', NULL, NULL, NULL, NULL, 144.00, NULL, 52, 5, 5, 'Yes', '3365', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(52, 'Mariane Breitenberg', 'mariane-breitenberg', NULL, NULL, NULL, NULL, 688.00, NULL, 52, 5, 1, 'Yes', '91231', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(53, 'Mabelle Prohaska', 'mabelle-prohaska', NULL, NULL, NULL, NULL, 263.00, NULL, 52, 3, 5, 'Yes', '95093', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(54, 'Veronica Ferry DDS', 'veronica-ferry-dds', NULL, NULL, NULL, NULL, 326.00, NULL, 52, 5, 2, 'Yes', '71731', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(55, 'Miss Kaia Rogahn', 'miss-kaia-rogahn', NULL, NULL, NULL, NULL, 419.00, NULL, 52, 5, 6, 'Yes', '42765', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(56, 'Dr. Monique Tromp I', 'dr-monique-tromp-i', NULL, NULL, NULL, NULL, 890.00, NULL, 52, 5, 2, 'Yes', '79411', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(57, 'Darwin Kunze', 'darwin-kunze', NULL, NULL, NULL, NULL, 487.00, NULL, 52, 4, 3, 'Yes', '77200', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(58, 'Gust Abbott', 'gust-abbott', NULL, NULL, NULL, NULL, 831.00, NULL, 52, 10, 2, 'Yes', '72503', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(59, 'Chanelle Wiza', 'chanelle-wiza', NULL, NULL, NULL, NULL, 513.00, NULL, 52, 3, 7, 'Yes', '89957', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(60, 'Dr. Markus Purdy DVM', 'dr-markus-purdy-dvm', NULL, NULL, NULL, NULL, 213.00, NULL, 52, 3, 4, 'Yes', '98014', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(61, 'Rupert Johnston', 'rupert-johnston', NULL, NULL, NULL, NULL, 701.00, NULL, 52, 4, 2, 'Yes', '21858', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(62, 'Nina Bailey', 'nina-bailey', NULL, NULL, NULL, NULL, 662.00, NULL, 52, 3, 3, 'Yes', '55391', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(63, 'Emmanuelle Sauer', 'emmanuelle-sauer', NULL, NULL, NULL, NULL, 857.00, NULL, 52, 10, 1, 'Yes', '90028', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(64, 'Prof. Elliott Kihn DVM', 'prof-elliott-kihn-dvm', NULL, NULL, NULL, NULL, 448.00, NULL, 52, 10, 6, 'Yes', '34477', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(65, 'Robb Will', 'robb-will', NULL, NULL, NULL, NULL, 276.00, NULL, 52, 3, 7, 'Yes', '33446', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(66, 'Kyleigh Price DDS', 'kyleigh-price-dds', NULL, NULL, NULL, NULL, 634.00, NULL, 52, 4, 3, 'Yes', '48655', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(67, 'Miss Eve Frami', 'miss-eve-frami', NULL, NULL, NULL, NULL, 759.00, NULL, 52, 5, 7, 'Yes', '52228', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(68, 'Savanah Lind PhD', 'savanah-lind-phd', NULL, NULL, NULL, NULL, 783.00, NULL, 52, 3, 1, 'Yes', '84006', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(69, 'Ms. Nedra Kuhic', 'ms-nedra-kuhic', NULL, NULL, NULL, NULL, 700.00, NULL, 52, 3, 2, 'Yes', '80852', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(70, 'Dr. Emmanuel Schneider Sr.', 'dr-emmanuel-schneider-sr', NULL, NULL, NULL, NULL, 885.00, NULL, 52, 3, 6, 'Yes', '26096', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(71, 'Prof. Adah Muller', 'prof-adah-muller', NULL, NULL, NULL, NULL, 586.00, NULL, 52, 5, 7, 'Yes', '71244', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(72, 'Rodolfo Flatley', 'rodolfo-flatley', NULL, NULL, NULL, NULL, 751.00, NULL, 52, 10, 7, 'Yes', '46728', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(73, 'Prof. Wilber Roob MD', 'prof-wilber-roob-md', NULL, NULL, NULL, NULL, 588.00, NULL, 52, 4, 5, 'Yes', '13967', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(74, 'Erling Reinger', 'erling-reinger', NULL, NULL, NULL, NULL, 455.00, NULL, 52, 10, 7, 'Yes', '75761', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(75, 'Giuseppe Ankunding V', 'giuseppe-ankunding-v', NULL, NULL, NULL, NULL, 928.00, NULL, 52, 4, 4, 'Yes', '74654', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(76, 'Dr. Schuyler Lehner', 'dr-schuyler-lehner', NULL, NULL, NULL, NULL, 122.00, NULL, 52, 4, 2, 'Yes', '7792', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(77, 'Merle Yundt', 'merle-yundt', NULL, NULL, NULL, NULL, 492.00, NULL, 52, 3, 5, 'Yes', '95822', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(78, 'Dr. Trenton Hilpert', 'dr-trenton-hilpert', NULL, NULL, NULL, NULL, 402.00, NULL, 52, 10, 4, 'Yes', '92826', NULL, 'Yes', 10, 1, '2025-01-02 04:40:36', '2025-01-02 04:40:36'),
(79, 'Dortha Renner', 'dortha-renner', NULL, NULL, NULL, NULL, 508.00, NULL, 53, 3, 1, 'Yes', '27021', NULL, 'Yes', 10, 1, '2025-01-02 04:40:41', '2025-01-02 04:40:41'),
(80, 'Prof. Camden Waters Sr.', 'prof-camden-waters-sr', NULL, NULL, NULL, NULL, 65.00, NULL, 53, 10, 4, 'Yes', '80627', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(81, 'Miss Oleta Heathcote', 'miss-oleta-heathcote', NULL, NULL, NULL, NULL, 107.00, NULL, 53, 10, 2, 'Yes', '33549', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(82, 'Asha Terry', 'asha-terry', NULL, NULL, NULL, NULL, 980.00, NULL, 53, 3, 1, 'Yes', '32906', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(83, 'Nigel Willms', 'nigel-willms', NULL, NULL, NULL, NULL, 25.00, NULL, 53, 4, 2, 'Yes', '84898', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(84, 'Mr. Jacques Cremin', 'mr-jacques-cremin', NULL, NULL, NULL, NULL, 139.00, NULL, 53, 3, 3, 'Yes', '50343', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(85, 'Hannah Berge', 'hannah-berge', NULL, NULL, NULL, NULL, 943.00, NULL, 53, 4, 6, 'Yes', '72512', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(86, 'Ms. Genoveva Aufderhar', 'ms-genoveva-aufderhar', NULL, NULL, NULL, NULL, 612.00, NULL, 53, 10, 2, 'Yes', '60899', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(87, 'Ali Hermann', 'ali-hermann', NULL, NULL, NULL, NULL, 32.00, NULL, 53, 3, 5, 'Yes', '39620', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(88, 'Mr. Lamar Hoppe', 'mr-lamar-hoppe', NULL, NULL, NULL, NULL, 289.00, NULL, 53, 3, 2, 'Yes', '41075', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(89, 'Gunner Ritchie', 'gunner-ritchie', NULL, NULL, NULL, NULL, 840.00, NULL, 53, 10, 6, 'Yes', '55097', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(90, 'Mr. Tristian Fadel', 'mr-tristian-fadel', NULL, NULL, NULL, NULL, 759.00, NULL, 53, 5, 4, 'Yes', '25524', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(91, 'Dario Carroll III', 'dario-carroll-iii', NULL, NULL, NULL, NULL, 190.00, NULL, 53, 10, 3, 'Yes', '3913', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(92, 'Tomasa Herzog DDS', 'tomasa-herzog-dds', NULL, NULL, NULL, NULL, 185.00, NULL, 53, 5, 2, 'Yes', '29402', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(93, 'Pedro Corkery II', 'pedro-corkery-ii', NULL, NULL, NULL, NULL, 646.00, NULL, 53, 3, 1, 'Yes', '79046', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(94, 'Americo Parisian', 'americo-parisian', NULL, NULL, NULL, NULL, 777.00, NULL, 53, 4, 2, 'Yes', '78017', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(95, 'Courtney Hodkiewicz', 'courtney-hodkiewicz', NULL, NULL, NULL, NULL, 314.00, NULL, 53, 4, 7, 'Yes', '20188', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(96, 'Mr. Unique Conroy V', 'mr-unique-conroy-v', NULL, NULL, NULL, NULL, 725.00, NULL, 53, 3, 2, 'Yes', '11370', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(97, 'Verdie Casper', 'verdie-casper', NULL, NULL, NULL, NULL, 674.00, NULL, 53, 3, 2, 'Yes', '10355', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(98, 'Damaris Jacobi', 'damaris-jacobi', NULL, NULL, NULL, NULL, 512.00, NULL, 53, 10, 6, 'Yes', '17245', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(99, 'Hattie Schroeder', 'hattie-schroeder', NULL, NULL, NULL, NULL, 144.00, NULL, 53, 3, 4, 'Yes', '78940', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(100, 'Garrick Sawayn II', 'garrick-sawayn-ii', NULL, NULL, NULL, NULL, 836.00, NULL, 53, 10, 1, 'Yes', '5078', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(101, 'Zoila Corwin', 'zoila-corwin', NULL, NULL, NULL, NULL, 335.00, NULL, 53, 4, 6, 'Yes', '25409', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(102, 'Kristopher Rolfson', 'kristopher-rolfson', NULL, NULL, NULL, NULL, 455.00, NULL, 53, 4, 7, 'Yes', '27162', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(103, 'Keanu Von DVM', 'keanu-von-dvm', NULL, NULL, NULL, NULL, 412.00, NULL, 53, 5, 1, 'Yes', '84349', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(104, 'Dr. Woodrow Flatley', 'dr-woodrow-flatley', NULL, NULL, NULL, NULL, 924.00, NULL, 53, 5, 2, 'Yes', '68794', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(105, 'Quincy Dooley', 'quincy-dooley', NULL, NULL, NULL, NULL, 343.00, NULL, 53, 3, 4, 'Yes', '1371', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(106, 'Prof. Brent Dooley', 'prof-brent-dooley', NULL, NULL, NULL, NULL, 396.00, NULL, 53, 5, 3, 'Yes', '87950', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(107, 'Thomas Johns', 'thomas-johns', NULL, NULL, NULL, NULL, 363.00, NULL, 53, 5, 2, 'Yes', '19713', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 04:40:42'),
(108, 'Greg Cremin MD', 'greg-cremin-md', '<p>This is description</p>', '<p>Short description</p>', '<p>Shipping &amp; Returns</p>', '3,9,21', 20.00, 18.00, 53, NULL, 7, 'Yes', '42628', NULL, 'Yes', 10, 1, '2025-01-02 04:40:42', '2025-01-02 11:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 6, '6-1-1734975206png', NULL, '2024-12-23 10:33:26', '2024-12-23 10:33:26'),
(2, 6, '6-2-1734975206jpg', NULL, '2024-12-23 10:33:26', '2024-12-23 10:33:26'),
(3, 7, '7-3-1734975369jpg', NULL, '2024-12-23 10:36:09', '2024-12-23 10:36:09'),
(4, 7, '7-4-1734975369jpg', NULL, '2024-12-23 10:36:09', '2024-12-23 10:36:09'),
(5, 7, '7-5-1734975369jpg', NULL, '2024-12-23 10:36:09', '2024-12-23 10:36:09'),
(8, 10, '10-8-1734976673jpg', NULL, '2024-12-23 10:57:53', '2024-12-23 10:57:53'),
(9, 10, '10-9-1734976673png', NULL, '2024-12-23 10:57:53', '2024-12-23 10:57:53'),
(10, 11, '11-10-1735636737png', NULL, '2024-12-31 02:18:57', '2024-12-31 02:18:57'),
(11, 12, '12-11-1735638007jpg', NULL, '2024-12-31 02:40:07', '2024-12-31 02:40:07'),
(12, 12, '12-12-1735638007jpg', NULL, '2024-12-31 02:40:07', '2024-12-31 02:40:07'),
(18, 14, '14-18-1735750010jpg', NULL, '2025-01-01 09:46:50', '2025-01-01 09:46:50'),
(21, 14, '14-21-1735753484.jpg', NULL, '2025-01-01 10:44:44', '2025-01-01 10:44:44'),
(22, 14, '14-22-1735753497.jpg', NULL, '2025-01-01 10:44:57', '2025-01-01 10:44:57'),
(23, 17, '17-23-1735753776.jpg', NULL, '2025-01-01 10:49:36', '2025-01-01 10:49:36'),
(24, 17, '17-24-1735753776.jpg', NULL, '2025-01-01 10:49:36', '2025-01-01 10:49:36'),
(25, 17, '17-25-1735753776.jpg', NULL, '2025-01-01 10:49:36', '2025-01-01 10:49:36'),
(26, 13, '13-26-1735766302.png', NULL, '2025-01-01 14:18:22', '2025-01-01 14:18:22'),
(27, 108, '108-27-1735830097.jpg', NULL, '2025-01-02 08:01:37', '2025-01-02 08:01:37'),
(28, 108, '108-28-1735830100.jpg', NULL, '2025-01-02 08:01:40', '2025-01-02 08:01:40'),
(29, 108, '108-29-1735830100.jpg', NULL, '2025-01-02 08:01:40', '2025-01-02 08:01:40'),
(30, 108, '108-30-1735830719.jpg', NULL, '2025-01-02 08:11:59', '2025-01-02 08:11:59'),
(31, 3, '3-31-1735831657.jpg', NULL, '2025-01-02 08:27:37', '2025-01-02 08:27:37'),
(32, 3, '3-32-1735831657.jpg', NULL, '2025-01-02 08:27:37', '2025-01-02 08:27:37'),
(33, 9, '9-33-1735841937.jpg', NULL, '2025-01-02 11:18:57', '2025-01-02 11:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'IPhone 11 pro', 'iphone-11-pro', 1, 'No', 52, '2024-12-20 04:25:53', '2024-12-20 06:23:18'),
(4, 'IPhone 11 Pro Max', 'iphone-11-pro-max', 0, 'No', 52, '2024-12-20 07:56:25', '2024-12-20 07:56:25'),
(5, 'example 1', 'example-1', 1, 'No', 50, '2024-12-20 07:56:58', '2024-12-20 07:56:58'),
(10, 'example 2', 'example-2', 1, 'No', 50, '2025-01-01 07:48:11', '2025-01-01 07:48:11'),
(11, 'abc 1', 'abc-1', 0, 'Yes', 34, '2025-01-01 07:48:30', '2025-01-01 13:00:38'),
(12, 'abc 2', 'abc-2', 0, 'Yes', 34, '2025-01-01 13:01:12', '2025-01-01 13:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1734959960.png', '2024-12-23 06:19:20', '2024-12-23 06:19:20'),
(2, '1734959988.png', '2024-12-23 06:19:48', '2024-12-23 06:19:48'),
(3, '1734960122.png', '2024-12-23 06:22:02', '2024-12-23 06:22:02'),
(4, '1734960367.png', '2024-12-23 06:26:07', '2024-12-23 06:26:07'),
(5, '1734961430.png', '2024-12-23 06:43:50', '2024-12-23 06:43:50'),
(6, '1734961529.png', '2024-12-23 06:45:29', '2024-12-23 06:45:29'),
(7, '1734962708.png', '2024-12-23 07:05:08', '2024-12-23 07:05:08'),
(8, '1734963032.jpg', '2024-12-23 07:10:32', '2024-12-23 07:10:32'),
(9, '1734963070.png', '2024-12-23 07:11:10', '2024-12-23 07:11:10'),
(10, '1734963170.png', '2024-12-23 07:12:50', '2024-12-23 07:12:50'),
(11, '1734964354.jpg', '2024-12-23 07:32:34', '2024-12-23 07:32:34'),
(12, '1734964354.jpg', '2024-12-23 07:32:34', '2024-12-23 07:32:34'),
(13, '1734964354.jpg', '2024-12-23 07:32:34', '2024-12-23 07:32:34'),
(14, '1734964396.png', '2024-12-23 07:33:16', '2024-12-23 07:33:16'),
(15, '1734964397.png', '2024-12-23 07:33:17', '2024-12-23 07:33:17'),
(16, '1734964412.png', '2024-12-23 07:33:32', '2024-12-23 07:33:32'),
(17, '1734964412.jpg', '2024-12-23 07:33:32', '2024-12-23 07:33:32'),
(18, '1734964826.png', '2024-12-23 07:40:26', '2024-12-23 07:40:26'),
(19, '1734964827.png', '2024-12-23 07:40:27', '2024-12-23 07:40:27'),
(20, '1734964827.png', '2024-12-23 07:40:27', '2024-12-23 07:40:27'),
(21, '1734964914.png', '2024-12-23 07:41:54', '2024-12-23 07:41:54'),
(22, '1734964914.png', '2024-12-23 07:41:54', '2024-12-23 07:41:54'),
(23, '1734964914.png', '2024-12-23 07:41:54', '2024-12-23 07:41:54'),
(24, '1734965346.png', '2024-12-23 07:49:06', '2024-12-23 07:49:06'),
(25, '1734972006.png', '2024-12-23 09:40:06', '2024-12-23 09:40:06'),
(26, '1734972381.png', '2024-12-23 09:46:21', '2024-12-23 09:46:21'),
(27, '1734972438.png', '2024-12-23 09:47:18', '2024-12-23 09:47:18'),
(28, '1734972802.jpg', '2024-12-23 09:53:22', '2024-12-23 09:53:22'),
(29, '1734974208.jpg', '2024-12-23 10:16:48', '2024-12-23 10:16:48'),
(30, '1734974420.png', '2024-12-23 10:20:20', '2024-12-23 10:20:20'),
(31, '1734974420.png', '2024-12-23 10:20:20', '2024-12-23 10:20:20'),
(32, '1734974674.jpg', '2024-12-23 10:24:34', '2024-12-23 10:24:34'),
(33, '1734974674.jpg', '2024-12-23 10:24:34', '2024-12-23 10:24:34'),
(34, '1734974780.png', '2024-12-23 10:26:20', '2024-12-23 10:26:20'),
(35, '1734974956.png', '2024-12-23 10:29:16', '2024-12-23 10:29:16'),
(36, '1734975187.png', '2024-12-23 10:33:07', '2024-12-23 10:33:07'),
(37, '1734975199.jpg', '2024-12-23 10:33:19', '2024-12-23 10:33:19'),
(38, '1734975347.jpg', '2024-12-23 10:35:47', '2024-12-23 10:35:47'),
(39, '1734975348.jpg', '2024-12-23 10:35:48', '2024-12-23 10:35:48'),
(40, '1734975348.jpg', '2024-12-23 10:35:48', '2024-12-23 10:35:48'),
(41, '1734975860.jpg', '2024-12-23 10:44:20', '2024-12-23 10:44:20'),
(42, '1734976389.jpg', '2024-12-23 10:53:09', '2024-12-23 10:53:09'),
(43, '1734976641.png', '2024-12-23 10:57:21', '2024-12-23 10:57:21'),
(44, '1735633292.jpg', '2024-12-31 01:21:32', '2024-12-31 01:21:32'),
(45, '1735633424.jpg', '2024-12-31 01:23:44', '2024-12-31 01:23:44'),
(46, '1735633425.jpg', '2024-12-31 01:23:45', '2024-12-31 01:23:45'),
(47, '1735636718.png', '2024-12-31 02:18:38', '2024-12-31 02:18:38'),
(48, '1735637986.jpg', '2024-12-31 02:39:46', '2024-12-31 02:39:46'),
(49, '1735637986.jpg', '2024-12-31 02:39:46', '2024-12-31 02:39:46'),
(50, '1735638220.jpg', '2024-12-31 02:43:40', '2024-12-31 02:43:40'),
(51, '1735638221.png', '2024-12-31 02:43:41', '2024-12-31 02:43:41'),
(52, '1735744358.jpg', '2025-01-01 08:12:39', '2025-01-01 08:12:39'),
(53, '1735744365.png', '2025-01-01 08:12:45', '2025-01-01 08:12:45'),
(54, '1735746439.jpg', '2025-01-01 08:47:19', '2025-01-01 08:47:19'),
(55, '1735753758.jpg', '2025-01-01 10:49:18', '2025-01-01 10:49:18'),
(56, '1735753759.jpg', '2025-01-01 10:49:19', '2025-01-01 10:49:19'),
(57, '1735753759.jpg', '2025-01-01 10:49:19', '2025-01-01 10:49:19'),
(58, '1735764019.jpg', '2025-01-01 13:40:19', '2025-01-01 13:40:19'),
(59, '1735764447.jpg', '2025-01-01 13:47:27', '2025-01-01 13:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', 2, NULL, '$2y$12$kN7iCAjGEShmZ2ELBVjtRejofSEzzRFS6096k.8wBsz4buxUtqCJ6', NULL, '2024-10-15 09:41:28', '2024-10-15 09:41:28'),
(2, 'Ngoc Thu', 'ngocthu@gmail.com', 1, NULL, '$2y$12$v8557mwvvCBcO9K81Q5d1eMNPagjLmINTpZBdJAI47q1PRqWs1EWW', NULL, '2024-10-15 09:48:03', '2024-10-15 09:48:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
