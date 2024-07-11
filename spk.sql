-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 12:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kriterias`
--

CREATE TABLE `kriterias` (
  `kode` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namakriteria` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atribut` enum('Benefit','Cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriterias`
--

INSERT INTO `kriterias` (`kode`, `namakriteria`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
('C1', 'IPK', 'Benefit', 3, NULL, NULL),
('C2', 'Sikap', 'Benefit', 2, NULL, NULL),
('C3', 'Prestasi', 'Benefit', 2, NULL, NULL),
('C4', 'Absensi', 'Benefit', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matrikternormalisasi`
--

CREATE TABLE `matrikternormalisasi` (
  `id` int NOT NULL,
  `id_alternatif` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_kriteria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bobot` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matrikternormalisasi`
--

INSERT INTO `matrikternormalisasi` (`id`, `id_alternatif`, `id_kriteria`, `bobot`) VALUES
(3679, '220101032', 'C1', '1'),
(3680, '220101032', 'C2', '1'),
(3681, '220101032', 'C3', '0.75'),
(3682, '220101032', 'C4', '0.5'),
(3683, '220101070', 'C1', '1'),
(3684, '220101070', 'C2', '1'),
(3685, '220101070', 'C3', '0.25'),
(3686, '220101070', 'C4', '1'),
(3687, '220101078', 'C1', '1'),
(3688, '220101078', 'C2', '0.67'),
(3689, '220101078', 'C3', '1'),
(3690, '220101078', 'C4', '0.75'),
(3691, '220101087', 'C1', '1'),
(3692, '220101087', 'C2', '0.67'),
(3693, '220101087', 'C3', '0.25'),
(3694, '220101087', 'C4', '1');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_31_120217_create_kriterias_table', 1),
(5, '2024_05_31_121113_create_siswas_table', 1),
(6, '2024_05_31_121207_create_subs_table', 1),
(7, '2024_05_31_122114_create_penilaians_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilaireferensi`
--

CREATE TABLE `nilaireferensi` (
  `id` int NOT NULL,
  `id_alternatif` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_kriteria` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bobot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilaireferensi`
--

INSERT INTO `nilaireferensi` (`id`, `id_alternatif`, `id_kriteria`, `bobot`) VALUES
(3639, '220101032', 'C1', '0.3'),
(3640, '220101032', 'C2', '0.2'),
(3641, '220101032', 'C3', '0.15'),
(3642, '220101032', 'C4', '0.15'),
(3643, '220101070', 'C1', '0.3'),
(3644, '220101070', 'C2', '0.2'),
(3645, '220101070', 'C3', '0.05'),
(3646, '220101070', 'C4', '0.3'),
(3647, '220101078', 'C1', '0.3'),
(3648, '220101078', 'C2', '0.13'),
(3649, '220101078', 'C3', '0.2'),
(3650, '220101078', 'C4', '0.23'),
(3651, '220101087', 'C1', '0.3'),
(3652, '220101087', 'C2', '0.13'),
(3653, '220101087', 'C3', '0.05'),
(3654, '220101087', 'C4', '0.3');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaians`
--

CREATE TABLE `penilaians` (
  `id` bigint UNSIGNED NOT NULL,
  `id_alternatif` int NOT NULL,
  `id_kriteria` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sub` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penilaians`
--

INSERT INTO `penilaians` (`id`, `id_alternatif`, `id_kriteria`, `nilai`, `id_sub`, `created_at`, `updated_at`) VALUES
(23, 220101032, 'C1', '3.5', 21, '2024-07-03 00:26:51', '2024-07-03 00:26:51'),
(24, 220101032, 'C2', 'Sangat Baik', 22, '2024-07-03 00:26:51', '2024-07-03 00:26:51'),
(25, 220101032, 'C3', 'Juara Nasional', 26, '2024-07-03 00:26:51', '2024-07-03 00:26:51'),
(26, 220101032, 'C4', '7', 31, '2024-07-03 00:26:51', '2024-07-03 00:26:51'),
(27, 220101070, 'C1', '3.0', 20, '2024-07-03 00:28:11', '2024-07-03 00:28:11'),
(28, 220101070, 'C2', 'Sangat Baik', 22, '2024-07-03 00:28:11', '2024-07-03 00:28:11'),
(29, 220101070, 'C3', '-', 29, '2024-07-03 00:28:11', '2024-07-03 00:28:11'),
(30, 220101070, 'C4', '16', 33, '2024-07-03 00:28:11', '2024-07-03 00:28:11'),
(31, 220101078, 'C1', '3.7', 21, '2024-07-03 00:28:36', '2024-07-03 00:28:36'),
(32, 220101078, 'C2', 'Kurang', 24, '2024-07-03 00:28:36', '2024-07-03 00:28:36'),
(33, 220101078, 'C3', 'Juara Internasional', 27, '2024-07-03 00:28:36', '2024-07-03 00:28:36'),
(34, 220101078, 'C4', '10', 32, '2024-07-03 00:28:36', '2024-07-03 00:28:36'),
(35, 220101087, 'C1', '4.0', 21, '2024-07-03 00:28:54', '2024-07-03 00:28:54'),
(36, 220101087, 'C2', 'Sangat Kurang', 25, '2024-07-03 00:28:54', '2024-07-03 00:28:54'),
(37, 220101087, 'C3', '-', 29, '2024-07-03 00:28:54', '2024-07-03 00:28:54'),
(38, 220101087, 'C4', '16', 33, '2024-07-03 00:28:54', '2024-07-03 00:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `id` int NOT NULL,
  `id_alternatif` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bobot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`id`, `id_alternatif`, `bobot`) VALUES
(934, '220101032', '0.8'),
(935, '220101070', '0.85'),
(936, '220101078', '0.86'),
(937, '220101087', '0.78');

-- --------------------------------------------------------

--
-- Table structure for table `ratingkecocokan`
--

CREATE TABLE `ratingkecocokan` (
  `id` int NOT NULL,
  `id_alternatif` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_kriteria` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bobot` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratingkecocokan`
--

INSERT INTO `ratingkecocokan` (`id`, `id_alternatif`, `id_kriteria`, `bobot`) VALUES
(3690, '220101032', 'C1', 3),
(3691, '220101032', 'C2', 3),
(3692, '220101032', 'C3', 3),
(3693, '220101032', 'C4', 2),
(3694, '220101070', 'C1', 3),
(3695, '220101070', 'C2', 3),
(3696, '220101070', 'C3', 1),
(3697, '220101070', 'C4', 4),
(3698, '220101078', 'C1', 3),
(3699, '220101078', 'C2', 2),
(3700, '220101078', 'C3', 4),
(3701, '220101078', 'C4', 3),
(3702, '220101087', 'C1', 3),
(3703, '220101087', 'C2', 2),
(3704, '220101087', 'C3', 1),
(3705, '220101087', 'C4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ikyIY9BHovNLyyBVJFbQmRDQwKDeOYFJiUHXpPZQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUF3dlpCNldMZXN4Smh1aURFTUxJRU84OUU0aW5wMzVSSjIyM0RXUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9zZXMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1720003496);

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `nisn` int NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lahir` date NOT NULL,
  `jeniskelamin` enum('Laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`nisn`, `nama`, `tempat`, `lahir`, `jeniskelamin`, `kelas`, `created_at`, `updated_at`) VALUES
(220101032, 'RAHMAT NUR SHIDIQ', 'Sukoharjo', '2020-06-01', 'Laki-laki', '22 A1', NULL, NULL),
(220101070, 'RAIHAN FADILLAH', 'Wakanda', '1945-02-06', 'Laki-laki', '22 A2', NULL, NULL),
(220101078, 'VRISCO SENA AJI', 'Sukoharjo', '2024-07-17', 'Laki-laki', '22 A2', NULL, NULL),
(220101087, 'DINAR KURNIAWAN', 'Boyolali', '2019-06-04', 'Laki-laki', '22 A2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subs`
--

CREATE TABLE `subs` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_id` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilaiawal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilaiakhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subs`
--

INSERT INTO `subs` (`id`, `kode_id`, `desc`, `nilaiawal`, `nilaiakhir`, `bobot`, `created_at`, `updated_at`) VALUES
(18, 'C1', '1-1.5', '1', '1.5', 2, '2024-07-02 22:27:37', '2024-07-03 00:11:53'),
(19, 'C1', '1.5-2.5', '1.5', '2.5', 2, '2024-07-03 00:10:30', '2024-07-03 00:12:34'),
(20, 'C1', '2.6-3.5', '2.6', '3.5', 3, '2024-07-03 00:13:02', '2024-07-03 00:13:02'),
(21, 'C1', '3.6-4.0', '3.6', '4.0', 3, '2024-07-03 00:13:22', '2024-07-03 03:35:24'),
(22, 'C2', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 3, '2024-07-03 00:19:11', '2024-07-03 00:19:11'),
(23, 'C2', 'Baik', 'Baik', 'Baik', 3, '2024-07-03 00:19:33', '2024-07-03 00:19:33'),
(24, 'C2', 'Kurang', 'Kurang', 'Kurang', 2, '2024-07-03 00:19:50', '2024-07-03 00:19:50'),
(25, 'C2', 'Sangat Kurang', 'Sangat Kurang', 'Sangat Kurang', 2, '2024-07-03 00:20:08', '2024-07-03 00:20:08'),
(26, 'C3', 'Juara Nasional', 'Juara Nasional', 'Juara Nasional', 3, '2024-07-03 00:20:59', '2024-07-03 00:20:59'),
(27, 'C3', 'Juara Internasional', 'Juara Internasional', 'Juara Internasional', 4, '2024-07-03 00:21:17', '2024-07-03 00:21:30'),
(28, 'C3', 'Juara Provinsi', 'Juara Provinsi', 'Juara Provinsi', 2, '2024-07-03 00:21:46', '2024-07-03 00:21:46'),
(29, 'C3', '-', '-', '-', 1, '2024-07-03 00:22:08', '2024-07-03 00:27:46'),
(31, 'C4', '6-8', '6', '8', 2, '2024-07-03 00:23:34', '2024-07-03 00:26:22'),
(32, 'C4', '9-11', '9', '11', 3, '2024-07-03 00:24:26', '2024-07-03 00:25:19'),
(33, 'C4', '11-16', '11', '16', 4, '2024-07-03 00:24:58', '2024-07-03 00:24:58'),
(34, 'C4', '1-5', '1', '5', 1, '2024-07-03 00:25:45', '2024-07-03 00:25:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Toti', 'Toti', 'toti44@gmail.com', NULL, '$2y$12$0MWPE3nvgSE.9c5D7YEphOpBiiZlI2Sp4ZqxyRc8otcMFnX2e5aAq', NULL, '2024-07-01 00:44:10', '2024-07-01 00:44:10');

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `kriterias`
--
ALTER TABLE `kriterias`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `matrikternormalisasi`
--
ALTER TABLE `matrikternormalisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaireferensi`
--
ALTER TABLE `nilaireferensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaians_id_alternatif_foreign` (`id_alternatif`),
  ADD KEY `penilaians_id_kriteria_foreign` (`id_kriteria`),
  ADD KEY `penilaians_id_sub_foreign` (`id_sub`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratingkecocokan`
--
ALTER TABLE `ratingkecocokan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `subs`
--
ALTER TABLE `subs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subs_kode_id_foreign` (`kode_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matrikternormalisasi`
--
ALTER TABLE `matrikternormalisasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3695;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nilaireferensi`
--
ALTER TABLE `nilaireferensi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3655;

--
-- AUTO_INCREMENT for table `penilaians`
--
ALTER TABLE `penilaians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=938;

--
-- AUTO_INCREMENT for table `ratingkecocokan`
--
ALTER TABLE `ratingkecocokan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3706;

--
-- AUTO_INCREMENT for table `subs`
--
ALTER TABLE `subs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD CONSTRAINT `penilaians_id_alternatif_foreign` FOREIGN KEY (`id_alternatif`) REFERENCES `siswas` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaians_id_kriteria_foreign` FOREIGN KEY (`id_kriteria`) REFERENCES `kriterias` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaians_id_sub_foreign` FOREIGN KEY (`id_sub`) REFERENCES `subs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subs`
--
ALTER TABLE `subs`
  ADD CONSTRAINT `subs_kode_id_foreign` FOREIGN KEY (`kode_id`) REFERENCES `kriterias` (`kode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
