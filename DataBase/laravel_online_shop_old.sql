-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2024 lúc 04:02 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_online_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Macbook', 'macbook', NULL, '1', '2024-10-18 09:55:19', '2024-10-18 09:55:19'),
(2, 'Macbook', 'laptop', NULL, '1', '2024-10-18 09:57:05', '2024-10-18 09:57:05'),
(3, 'Dr. Moises Kris DDS', 'Clark Becker PhD', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(4, 'Clinton Herman', 'Mr. Darien Anderson', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(5, 'Scarlett Braun', 'Palma Stiedemann', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(6, 'Antonietta Schmitt', 'Ben Buckridge V', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(7, 'Irving Bauch', 'Prof. Marion Deckow III', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(8, 'Enos Windler', 'Ocie Bayer', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(9, 'Chanel Baumbach Sr.', 'Dr. Gabriel Zemlak', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(10, 'Kamryn Yundt', 'Prof. Kattie Erdman', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(11, 'Mr. Glen Eichmann', 'Justice Dooley', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(12, 'Elenora Osinski III', 'Shannon Gerhold', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(13, 'Mozelle Spinka', 'Muhammad Stokes', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(14, 'Kameron Kulas', 'Shaylee Rice', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(15, 'Moriah Feest', 'Prof. Rylan Mraz I', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(16, 'Kevin Halvorson', 'Jeromy Anderson', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(17, 'Dr. Kathryne Bednar', 'Suzanne Morar', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(18, 'Tara Swift', 'Ms. Kasandra Welch V', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(19, 'Mr. Skylar Heller', 'Vance Gerlach', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(20, 'Herbert Wintheiser', 'Letha Schowalter', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(21, 'Mr. Brody Cruickshank', 'Travis West', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(22, 'Dr. Madilyn Goodwin PhD', 'Yoshiko Luettgen', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(23, 'Mr. Tony Crona IV', 'Violette Harber Jr.', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(24, 'Prof. Gretchen Tillman', 'Odessa Lueilwitz', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(25, 'Carlie Rippin', 'Nicholas Lynch', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(26, 'Prof. Graciela Trantow', 'Olin Ruecker', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(27, 'Miss Damaris Torp', 'Aurelio Predovic', NULL, '1', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(28, 'Maxine Beier I', 'Seamus Tremblay PhD', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(29, 'Gladys Mills', 'Miss Berniece Greenholt', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(30, 'Prof. Chase Stokes', 'German Mertz', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(31, 'Mrs. Vincenza Satterfield', 'April Corkery', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(32, 'Lucienne Parker', 'Miss Chyna Medhurst', NULL, '0', '2024-10-25 15:03:49', '2024-10-25 15:03:49'),
(33, 'Electronics', 'electronics', NULL, '0', '2024-10-25 15:43:49', '2024-10-25 15:43:49'),
(34, 'abc', 'acb', NULL, '0', '2024-10-25 15:45:48', '2024-10-25 15:45:48'),
(35, 'sdasaf', 'sdasaf', NULL, '0', '2024-10-25 21:06:23', '2024-10-25 21:06:23'),
(36, 'jhfas', 'jhfas', NULL, '0', '2024-10-25 21:18:51', '2024-10-25 21:18:51'),
(37, 'fdsaaf', 'fdsaaf', NULL, '0', '2024-10-25 21:24:41', '2024-10-25 21:24:41'),
(38, 'sdfa', 'sdfa', NULL, '0', '2024-10-25 21:25:28', '2024-10-25 21:25:28'),
(39, 'test', 'test', NULL, '1', '2024-11-01 22:35:31', '2024-11-01 22:35:31'),
(40, 'test2', 'test2', NULL, '1', '2024-11-01 22:39:02', '2024-11-01 22:39:02'),
(41, 'test3', 'test3', NULL, '1', '2024-11-01 22:47:51', '2024-11-01 22:47:51'),
(42, 'test4', 'test4', NULL, '1', '2024-11-01 22:53:33', '2024-11-01 22:53:33'),
(43, 'test5', 'test5', NULL, '1', '2024-11-01 22:57:40', '2024-11-01 22:57:40'),
(44, 'testimage', 'testimage', NULL, '1', '2024-11-01 23:06:40', '2024-11-01 23:06:40'),
(45, 'testimage2', 'testimage2', NULL, '1', '2024-11-01 23:13:09', '2024-11-01 23:13:09'),
(46, 'test6', 'test6', '46.jpg', '1', '2024-11-01 23:21:17', '2024-11-01 23:21:17'),
(47, 'img test', 'img-test', NULL, '1', '2024-11-05 04:13:02', '2024-11-05 04:13:02'),
(48, 'testimg', 'testimg', NULL, '1', '2024-11-05 04:14:10', '2024-11-05 04:14:10'),
(49, 'module', 'module', '49.jpg', '1', '2024-11-05 04:15:25', '2024-11-05 04:15:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_15_162529_alter_users_table', 2),
(6, '2024_10_18_132515_create_categories_table', 3),
(7, '2024_10_26_223431_create_temp_images_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1730012198.jpg', '2024-10-26 23:56:38', '2024-10-26 23:56:38'),
(5, '1730014525.jpg', '2024-10-27 00:35:25', '2024-10-27 00:35:25'),
(6, '1730014721.jpg', '2024-10-27 00:38:41', '2024-10-27 00:38:41'),
(7, '1730525706.jpg', '2024-11-01 22:35:06', '2024-11-01 22:35:06'),
(8, '1730525929.jpg', '2024-11-01 22:38:49', '2024-11-01 22:38:49'),
(9, '1730526458.jpg', '2024-11-01 22:47:38', '2024-11-01 22:47:38'),
(10, '1730526801.jpg', '2024-11-01 22:53:21', '2024-11-01 22:53:21'),
(11, '1730527047.jpg', '2024-11-01 22:57:27', '2024-11-01 22:57:27'),
(12, '1730527585.jpg', '2024-11-01 23:06:25', '2024-11-01 23:06:25'),
(13, '1730527974.jpg', '2024-11-01 23:12:54', '2024-11-01 23:12:54'),
(14, '1730528466.jpg', '2024-11-01 23:21:06', '2024-11-01 23:21:06'),
(15, '1730805168.jpg', '2024-11-05 04:12:48', '2024-11-05 04:12:48'),
(16, '1730805238.jpg', '2024-11-05 04:13:58', '2024-11-05 04:13:58'),
(17, '1730805314.jpg', '2024-11-05 04:15:14', '2024-11-05 04:15:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', 2, NULL, '$2y$12$kN7iCAjGEShmZ2ELBVjtRejofSEzzRFS6096k.8wBsz4buxUtqCJ6', NULL, '2024-10-15 09:41:28', '2024-10-15 09:41:28'),
(2, 'Ngoc Thu', 'ngocthu@gmail.com', 1, NULL, '$2y$12$v8557mwvvCBcO9K81Q5d1eMNPagjLmINTpZBdJAI47q1PRqWs1EWW', NULL, '2024-10-15 09:48:03', '2024-10-15 09:48:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `temp_images`
--
ALTER TABLE `temp_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
