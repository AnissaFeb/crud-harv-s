-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2024 at 08:02 PM
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
-- Database: `crudharvs`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`, `warna`, `ukuran`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Diaper Bag', 'Beige', 'Small', 100, '2024-08-02 18:34:17', '2024-08-03 08:46:53'),
(2, 'Diaper Bag', 'Deep Olive', 'Big', 50, '2024-08-02 18:34:54', '2024-08-02 18:34:54');

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
-- Table structure for table `harvs`
--

CREATE TABLE `harvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `warna_motif` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_28_001306_create_harvs_table', 2),
(5, '2024_07_31_152029_create_items_table', 3),
(6, '2024_07_31_155917_create_categories_table', 4),
(7, '2024_08_03_012515_add_warna_to_categories_table', 5),
(8, '2024_08_03_120133_create_telescope_entries_table', 6);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YfWz5aNsun0xTwL7QOLAJbwEqvNCOjpFRRVP4tvR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2prQ0pINmVESTdIcDZ2bWhPN3g0QjZUTk8yOTZxM0l1QnRoSDVOSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yaWVzLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1722706821);

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `batch_id` char(36) NOT NULL,
  `family_hash` varchar(255) DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '9cad6bca-29b1-4496-bbef-4b7fbbcbf338', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'crudharvs\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"4.48\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\artisan\",\"line\":13,\"hash\":\"d5735bd598f22735a95104dd9e766e45\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:56'),
(2, '9cad6bca-32b1-47cf-be0c-0063fe506290', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select table_name as `name`, (data_length + index_length) as `size`, table_comment as `comment`, engine as `engine`, table_collation as `collation` from information_schema.tables where table_schema = \'crudharvs\' and table_type in (\'BASE TABLE\', \'SYSTEM VERSIONED\') order by table_name\",\"time\":\"2.90\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\artisan\",\"line\":13,\"hash\":\"d5735bd598f22735a95104dd9e766e45\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:56'),
(3, '9cad6bca-3373-434b-be88-151522e17203', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.88\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\artisan\",\"line\":13,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:56'),
(4, '9cad6bca-34ba-40e5-b131-9d97fc4980f6', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.76\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\artisan\",\"line\":13,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:56'),
(5, '9cad6bca-36c5-4788-993c-ccb115d56c43', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"2.57\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\artisan\",\"line\":13,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:56'),
(6, '9cad6bca-5bde-433e-a80e-da1c7c1364c6', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"65.86\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:56'),
(7, '9cad6bca-649b-4202-8bc3-5cb8b7a8882c', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"21.38\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(8, '9cad6bca-6c56-43c2-9997-f2eb486a2a80', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"18.86\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(9, '9cad6bca-72e3-45d8-b26d-97259a9a238d', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"15.85\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(10, '9cad6bca-7880-475d-b537-cf9a1bb2c7eb', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"13.43\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(11, '9cad6bca-7def-489c-8931-4d1e227a4f87', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"12.99\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":24,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(12, '9cad6bca-8600-4ace-a77d-13928a2860e9', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null, primary key (`entry_uuid`, `tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"18.31\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":41,\"hash\":\"f8c7e1e3c3d557b70e7a918609f839f2\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(13, '9cad6bca-8c6e-4b0d-93ce-3d8562962b7a', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"15.50\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":41,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(14, '9cad6bca-a663-415e-8b4d-f4bc6c417497', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"65.48\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":41,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(15, '9cad6bca-ab7c-4e6c-9bb6-8b64c135b168', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null, primary key (`tag`)) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"11.83\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\database\\\\migrations\\\\2024_08_03_120133_create_telescope_entries_table.php\",\"line\":54,\"hash\":\"18d1fa09eade84a80848982d91caec5c\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(16, '9cad6bca-af48-4d60-bed2-0b090c33c642', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2024_08_03_120133_create_telescope_entries_table\', 6)\",\"time\":\"3.18\",\"slow\":false,\"file\":\"C:\\\\xampp\\\\htdocs\\\\crudharvs\\\\artisan\",\"line\":13,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57'),
(17, '9cad6bca-b074-4851-afe7-195f5e62083b', '9cad6bca-b2d4-442b-8901-21b085016399', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"graceful\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"LAPTOP-B3I157JQ\"}', '2024-08-03 12:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `harvs`
--
ALTER TABLE `harvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD PRIMARY KEY (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `telescope_monitoring`
--
ALTER TABLE `telescope_monitoring`
  ADD PRIMARY KEY (`tag`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `harvs`
--
ALTER TABLE `harvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
