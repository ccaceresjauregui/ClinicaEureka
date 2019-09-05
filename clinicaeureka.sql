-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 05, 2019 at 07:19 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinicaeureka`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cmp` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `lastname`, `cmp`, `created_at`, `updated_at`) VALUES
(1, 'Oscar', 'Vargas', '12345', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(2, 'Juan', 'Garcia', '12367', '2019-09-05 23:49:18', '2019-09-05 23:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `especialidads`
--

CREATE TABLE `especialidads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `especialidads`
--

INSERT INTO `especialidads` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Oftalmo', 'jdnd', '2019-09-05 23:51:09', '2019-09-05 23:51:09'),
(2, 'Audiometria', 'Consulta Audio', '2019-09-05 23:51:26', '2019-09-05 23:51:26'),
(3, 'RayosX', 'Radiografias', '2019-09-05 23:51:38', '2019-09-05 23:51:38'),
(5, 'nx', 'bh', '2019-09-06 00:00:15', '2019-09-06 00:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `especialidad_doctor`
--

CREATE TABLE `especialidad_doctor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `especialidad_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(323, '2014_10_12_000000_create_users_table', 1),
(324, '2014_10_12_100000_create_password_resets_table', 1),
(325, '2015_01_20_084450_create_roles_table', 1),
(326, '2015_01_20_084525_create_role_user_table', 1),
(327, '2015_01_24_080208_create_permissions_table', 1),
(328, '2015_01_24_080433_create_permission_role_table', 1),
(329, '2015_12_04_003040_add_special_role_column', 1),
(330, '2017_10_17_170735_create_permission_user_table', 1),
(331, '2019_08_19_000000_create_failed_jobs_table', 1),
(332, '2019_09_05_074811_create_patients_table', 1),
(333, '2019_09_05_074848_create_especialidads_table', 1),
(334, '2019_09_05_074906_create_doctors_table', 1),
(335, '2019_09_05_164047_create_especialidad_doctor_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_number` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `lastname`, `document_number`, `email`, `others`, `created_at`, `updated_at`) VALUES
(1, 'Roberto', 'Perez', '00123456', 'roberto@example.com', 'Ninguno', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(2, 'Rosa', 'Nuñez', '11123456', 'rosa@example.com', 'Ninguno', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(3, 'Paola', 'Oviedo', '22123456', 'paola@example.com', 'Ninguno', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(4, 'Ana', 'Gutierrez', '33123456', 'ana@example.com', 'Ninguno', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(5, 'Lucia', 'Herrera', '44123456', 'lucia@example.com', 'Ninguno', '2019-09-05 23:49:18', '2019-09-05 23:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2019-09-05 23:49:15', '2019-09-05 23:49:15'),
(2, 'Ver detalle de usuario', 'users.show', 'Ver detalle cada usuario del sistema', '2019-09-05 23:49:15', '2019-09-05 23:49:15'),
(3, 'Edición de usuarios', 'users.edit', 'Edital cualquier dato de un usuario del sistema', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(4, 'Eliminar usuario', 'users.destroy', 'Eliminar cualquier usuario del sistema', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(5, 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistema', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(6, 'Ver detalle de rol', 'roles.show', 'Ver detalle cada rol del sistema', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(7, 'Edición de roles', 'roles.edit', 'Editar cualquier dato de un rol del sistema', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(8, 'Creacion de roles', 'roles.create', 'Crear un rol del sistema', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(9, 'Eliminar rol', 'roles.destroy', 'Eliminar cualquier rol del sistema', '2019-09-05 23:49:16', '2019-09-05 23:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'admin', NULL, '2019-09-05 23:49:18', '2019-09-05 23:49:18', 'all-access');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Royal Rutherford', 'uhoppe@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uK2oVNo0m5', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(2, 'Mr. Jasmin Nienow', 'wbogan@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0z13ktsv2O', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(3, 'Mervin Yundt', 'delta.legros@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RJ4nflXWdD', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(4, 'Vicenta Jones', 'bernadette78@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q1FzKmOZ7L', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(5, 'Emelia Bins', 'yratke@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hR3ZNybCtZ', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(6, 'Prof. Tate Roob DDS', 'nschmidt@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QrwNwUrUBZ', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(7, 'Tod Frami', 'xcummings@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YfgYNvC5xd', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(8, 'Mr. Keven Stanton', 'retha.romaguera@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AGU7sgE3me', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(9, 'Mrs. Maureen Harber', 'aletha03@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W0tQVOL1vH', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(10, 'Mr. Luther O\'Conner', 'abbott.watson@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'B0dOng24oY', '2019-09-05 23:49:16', '2019-09-05 23:49:16'),
(11, 'Mr. Jerry Renner DDS', 'fbernhard@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S25gEHskHR', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(12, 'Miss Luella Mitchell I', 'adrienne32@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RCYPTlJKkE', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(13, 'Marilyne Medhurst', 'ohalvorson@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KuPHRxrweQ', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(14, 'Rashawn Carter IV', 'hodkiewicz.autumn@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QE3C8alD1u', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(15, 'Miss Rae Schumm', 'shields.percival@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z4SwV8vlCN', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(16, 'Aiden Gaylord', 'pmurphy@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tX98TLMYp9', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(17, 'Colin Koch', 'alysha34@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uRQz7CCIW1', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(18, 'Santa Mitchell', 'veronica.schinner@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2BWlsJnHkn', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(19, 'Modesta Mayer', 'jodie72@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ik4kDDvTqk', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(20, 'Dr. Charity Emard', 'toy.jay@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n9u3hTiFJs', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(21, 'Derrick Feil III', 'claude.herzog@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OaHAgIY72j', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(22, 'Earlene Mills', 'jenkins.ryley@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5pPOqTQIvJ', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(23, 'Herminio Gislason', 'hoeger.prudence@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Uw0rcecMAU', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(24, 'Kaylah Konopelski', 'pgreenfelder@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HMHe71gCxj', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(25, 'Sadie Hackett', 'dleffler@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RWBHeivtXi', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(26, 'Kathryn Hintz', 'goldner.rosario@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kvj8c2jEcY', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(27, 'Mr. Angelo Hoeger', 'lisandro.satterfield@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XyOa52yu0o', '2019-09-05 23:49:17', '2019-09-05 23:49:17'),
(28, 'Dexter Cassin', 'marques.kris@example.com', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bJlxNimSok', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(29, 'Prof. Paige Gusikowski', 'burnice05@example.org', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DZMRN1ACbc', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(30, 'Walter Barrows', 'kohler.angeline@example.net', '2019-09-05 23:49:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm9wDrPbJ2D', '2019-09-05 23:49:18', '2019-09-05 23:49:18'),
(31, 'CRISTINA CACERES JAUREGUI', 'ccaceres.jauregui@gmail.com', NULL, '$2y$10$ksB4.1YZXrnV21c1m1/o7.O46J9IK7r7QYBJjaJiFSWkduuXZ5foS', NULL, '2019-09-05 23:50:41', '2019-09-05 23:50:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_cmp_unique` (`cmp`);

--
-- Indexes for table `especialidads`
--
ALTER TABLE `especialidads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `especialidad_doctor`
--
ALTER TABLE `especialidad_doctor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `especialidad_doctor_especialidad_id_index` (`especialidad_id`),
  ADD KEY `especialidad_doctor_doctor_id_index` (`doctor_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

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
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `especialidads`
--
ALTER TABLE `especialidads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `especialidad_doctor`
--
ALTER TABLE `especialidad_doctor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `especialidad_doctor`
--
ALTER TABLE `especialidad_doctor`
  ADD CONSTRAINT `especialidad_doctor_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `especialidad_doctor_especialidad_id_foreign` FOREIGN KEY (`especialidad_id`) REFERENCES `especialidads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
