-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 27, 2023 at 09:43 AM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `balls`
--

DROP TABLE IF EXISTS `balls`;
CREATE TABLE IF NOT EXISTS `balls` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` double NOT NULL,
  `quantity` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balls`
--

INSERT INTO `balls` (`id`, `name`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(11, 'green', 2, 0, '2023-08-27 04:10:01', '2023-08-27 04:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `ball_buckets`
--

DROP TABLE IF EXISTS `ball_buckets`;
CREATE TABLE IF NOT EXISTS `ball_buckets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ball_id` bigint UNSIGNED NOT NULL,
  `bucket_id` bigint UNSIGNED NOT NULL,
  `purchase_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ball_buckets_purchase_id_unique` (`purchase_id`),
  KEY `ball_buckets_ball_id_foreign` (`ball_id`),
  KEY `ball_buckets_bucket_id_foreign` (`bucket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ball_buckets`
--

INSERT INTO `ball_buckets` (`id`, `ball_id`, `bucket_id`, `purchase_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 11, 13, 1, 1, '2023-08-27 04:10:14', '2023-08-27 04:10:14'),
(2, 11, 13, 2, 1, '2023-08-27 04:10:14', '2023-08-27 04:10:14'),
(3, 11, 13, 3, 1, '2023-08-27 04:10:21', '2023-08-27 04:10:21'),
(4, 11, 13, 4, 1, '2023-08-27 04:10:21', '2023-08-27 04:10:21'),
(5, 11, 13, 5, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(6, 11, 13, 6, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(7, 11, 13, 7, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(8, 11, 13, 8, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(9, 11, 13, 9, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(10, 11, 13, 10, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(11, 11, 13, 11, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(12, 11, 13, 12, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(13, 11, 13, 13, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(14, 11, 13, 14, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(15, 11, 13, 15, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(16, 11, 13, 16, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(17, 11, 13, 17, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(18, 11, 13, 18, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(19, 11, 13, 19, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(20, 11, 13, 20, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(21, 11, 13, 21, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(22, 11, 13, 22, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(23, 11, 13, 23, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(24, 11, 13, 24, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(25, 11, 13, 25, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(26, 11, 13, 26, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(27, 11, 13, 27, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(28, 11, 13, 28, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(29, 11, 13, 29, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(30, 11, 13, 30, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(31, 11, 13, 31, 1, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(32, 11, 13, 32, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(33, 11, 13, 33, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(34, 11, 13, 34, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(35, 11, 13, 35, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(36, 11, 13, 36, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(37, 11, 13, 37, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(38, 11, 13, 38, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(39, 11, 13, 39, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34'),
(40, 11, 13, 40, 1, '2023-08-27 04:10:34', '2023-08-27 04:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `buckets`
--

DROP TABLE IF EXISTS `buckets`;
CREATE TABLE IF NOT EXISTS `buckets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buckets`
--

INSERT INTO `buckets` (`id`, `name`, `capacity`, `created_at`, `updated_at`) VALUES
(13, 'B', 80, '2023-08-27 04:08:43', '2023-08-27 04:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 5),
(17, '2014_10_12_100000_create_password_resets_table', 5),
(18, '2019_08_19_000000_create_failed_jobs_table', 5),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 5),
(11, '2023_08_25_113257_create_buckets_table', 1),
(12, '2023_08_25_113423_create_balls_table', 1),
(13, '2023_08_25_114100_create_ball_bucket_table', 2),
(14, '2023_08_25_135446_create_purchases_table', 3),
(15, '2023_08_25_140227_add_quantity_to_balls', 4),
(20, '2023_08_26_063304_create_buckets_table', 5),
(21, '2023_08_26_063318_create_balls_table', 5),
(22, '2023_08_26_063325_create_purchases_table', 5),
(23, '2023_08_26_063335_create_ball_buckets_table', 5),
(24, '2023_08_26_092858_update_buckets_capacity', 6),
(25, '2023_08_26_093027_update_balls_size', 6),
(26, '2023_08_26_112319_add_unique_constraint_to_ball_buckets_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `ball_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_user_id_foreign` (`user_id`),
  KEY `purchases_ball_id_foreign` (`ball_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `ball_id`, `created_at`, `updated_at`) VALUES
(1, 1, 11, '2023-08-27 04:10:14', '2023-08-27 04:10:14'),
(2, 1, 11, '2023-08-27 04:10:14', '2023-08-27 04:10:14'),
(3, 1, 11, '2023-08-27 04:10:21', '2023-08-27 04:10:21'),
(4, 1, 11, '2023-08-27 04:10:21', '2023-08-27 04:10:21'),
(5, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(6, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(7, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(8, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(9, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(10, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(11, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(12, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(13, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(14, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(15, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(16, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(17, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(18, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(19, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(20, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(21, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(22, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(23, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(24, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(25, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(26, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(27, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(28, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(29, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(30, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(31, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(32, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(33, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(34, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(35, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(36, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(37, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(38, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(39, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(40, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(41, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(42, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(43, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(44, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(45, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(46, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(47, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(48, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(49, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(50, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(51, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(52, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(53, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(54, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(55, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(56, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(57, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(58, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(59, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(60, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(61, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(62, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(63, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(64, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(65, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(66, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(67, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(68, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(69, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(70, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(71, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(72, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(73, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(74, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(75, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(76, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(77, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(78, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(79, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(80, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(81, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(82, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(83, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33'),
(84, 1, 11, '2023-08-27 04:10:33', '2023-08-27 04:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
