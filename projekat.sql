-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2021 at 07:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekat`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `updated_at`, `created_at`) VALUES
(1, 'Beograd', NULL, NULL),
(2, 'Niš', NULL, NULL),
(3, 'Novi Sad', NULL, NULL),
(4, 'Kostolac', '2021-05-11 17:13:18', '2021-05-11 17:13:18'),
(22, 'Lazarevac', '2021-05-15 12:55:20', '2021-05-15 12:55:20'),
(23, 'Prokuplje', '2021-05-15 12:56:26', '2021-05-15 12:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company`, `address`, `address2`, `website_url`, `city_id`, `staff_id`, `created_at`, `updated_at`) VALUES
(6, 'TCP Sowftware', 'Jurija Gagarina 82', NULL, 'tcpsoftware.com', 1, 2, NULL, '2021-05-17 14:31:58'),
(19, 'Oddity', 'Jurija Gagarina 86', NULL, 'oddity.com', 22, 2, '2021-05-15 11:22:14', '2021-05-16 10:52:42'),
(33, 'NCR', 'Jurija Gagarina 90', NULL, 'ncr.com', 2, 2, '2021-05-16 11:22:42', '2021-05-17 14:24:40'),
(34, 'Comtrade', 'Ruzveltova 32', NULL, 'comtrade.com', 23, 2, '2021-05-16 12:12:24', '2021-05-19 09:52:05'),
(35, 'TNation', 'Airport City 32', NULL, 'tnation.com', 1, 5, '2021-05-16 12:39:48', '2021-05-16 12:39:48'),
(36, 'DevTech', 'Veselina Masleše 24', NULL, 'devtech.com', 2, 3, '2021-05-17 11:40:01', '2021-05-19 09:49:10'),
(38, 'Synechron', 'Veselina Masleše 24', NULL, 'synechron.com', 22, 2, '2021-05-21 08:43:20', '2021-05-21 08:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deal_size` double DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `title`, `deal_size`, `follow_up_date`, `phone`, `email`, `contact_method`, `notes`, `stage_id`, `staff_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Janko', 'Kapikula', 'HR', 99000, '2021-09-04', '062/165-1422', 'jankokapikula@dh.com', 'phone', NULL, 2, 2, 19, NULL, '2021-05-16 11:22:46'),
(2, 'Sandra', 'Jovanovic', 'Zvezda', 75000, '2021-07-24', '065/143-5667', 'sandra@hotmail.com', 'phone', NULL, 1, 2, 34, '2021-05-16 12:12:30', '2021-09-09 15:42:04'),
(3, 'Ruđer', 'Bošković', 'IT consultant', 85000, '2021-09-25', '067/163-5543', 'rudjer@ey.rs', 'email', NULL, 4, 5, 35, '2021-05-16 12:39:51', '2021-05-16 12:39:51'),
(6, 'Jovan', 'Jovanovic', 'HR', 120000, '2021-05-18', '063/145-1789', 'jovan@gmail.com', 'email', NULL, 1, 2, 36, '2021-05-18 10:57:47', '2021-05-21 08:42:38'),
(7, 'Anabela', 'Karanovic', 'IT', 123556, '2021-05-28', '068/123-456', 'anabela@gmail.com', 'email', NULL, 4, 2, 33, '2021-05-18 10:58:40', '2021-05-19 09:47:56'),
(9, 'Ivan', 'Pavlović', 'Biznis analitičar', 36980, '2021-06-30', '065/143-5667', 'ivan.pavlovic@gmail.com', 'phone', NULL, 3, 2, 6, '2021-05-28 14:26:35', '2021-05-28 14:26:35'),
(10, 'asdasd', 'sfsdf', 'asdfasdf', 90876, '2021-05-28', '068/123-456', 'milos1998@hotmail.com', 'email', NULL, 1, 2, 6, '2021-05-28 14:31:14', '2021-05-28 14:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2021_03_22_211320_create_staff_table', 1),
(7, '2021_03_22_212001_create_stages_table', 1),
(8, '2021_03_22_213000_create_companies_table', 1),
(9, '2021_03_22_213131_create_contacts_table', 1),
(10, '2021_03_23_155447_adds_api_token_to_staff_table', 1),
(11, '2021_05_11_154307_create_cities_table', 1),
(12, '2021_05_11_161054_add_foreign_keys_to_companies', 1),
(13, '2021_05_11_161716_add_foreign_key_to_contacts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`, `role`, `status`, `manager_id`, `api_token`) VALUES
(1, '0000-00-00', '2021-09-09', 'Ivan Ivanović', 'ivan.ivanovic@gmail.com', 'ivan', 'manager', 1, NULL, '84bd61bf08d8fb5dec485c351fc2d7a40f5a57957254eb81f7b3560b887b4ba8'),
(2, '0000-00-00', '2021-09-09', 'Marko Marković', 'marko.markovic@gmail.com', 'marko', 'sales', 1, 1, '8f51dadfd020babdb751fc7a3110294816adcee2e4e75861a7e23c0212514c83'),
(4, '0000-00-00', '2021-05-16', 'Jovana Jovanović', 'jovana.jovanovic@gmail.com', 'jovana', 'manager', 1, NULL, 'fc677c949c315f79724130abdf0bf879a044a4aa137f6d1ff058cb3a1529ae9b'),
(5, '0000-00-00', '2021-05-16', 'Igor Igić', 'igor.igic@gmail.com', 'igor', 'sales', 1, 4, '2708f2a24a3f2a8beaeb86b26b073affac69fea3940944156a6df2f36d71e7dd'),
(6, '0000-00-00', NULL, 'Katarina Kučić', 'katarina.kucic@gmail.com', 'katarina', 'sales', 1, 4, NULL),
(7, '2021-05-19', '2021-05-19', 'Kevin Spejsi', 'kevin@kevin.org', 'kevin', 'sales', 1, NULL, NULL),
(8, '2021-05-21', '2021-05-21', 'Janko', 'Janković', 'janko', 'sales', 1, NULL, 'dc61284410bda593bc8f38fb9f5332ba1ef462a9ef88f8f0802ad92902b11c33'),
(9, '2021-05-21', '2021-05-21', 'Slobodan Cvijovic', 'slobodan@gmail.com', 'slobodan', 'sales', 1, NULL, NULL),
(18, '2021-05-21', '2021-05-21', 'Milorad Mandić', 'milorad@gmail.com', 'milorad', 'sales', 1, 1, NULL),
(19, '2021-09-09', '2021-09-09', 'Aleksa Petrovic', 'aleksa.petrovic1998@gmail.com', 'aleksa', 'sales', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `stage`) VALUES
(1, '1. Prospect (10%)'),
(2, '2. Forecast (50%)'),
(3, '3. Forecast (80%)'),
(4, '4. Won/Closed (100%)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_city_id_foreign` (`city_id`),
  ADD KEY `companies_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_stage_id_foreign` (`stage_id`),
  ADD KEY `contacts_company_id_foreign` (`company_id`),
  ADD KEY `contacts_staff_id_foreign` (`staff_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_email_unique` (`email`),
  ADD UNIQUE KEY `staff_api_token_unique` (`api_token`),
  ADD KEY `staff_manager_id_foreign` (`manager_id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `contacts_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contacts_stage_id_foreign` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `staff` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
