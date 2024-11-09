-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 07:43 PM
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
-- Database: `outofcom_community`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'icon-server', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'icon-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 7, 'Helpers', 'icon-cogs', '', NULL, '2024-08-11 21:03:59', '2024-08-11 21:03:59'),
(9, 8, 8, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-08-11 21:03:59', '2024-08-11 21:03:59'),
(10, 8, 9, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-08-11 21:03:59', '2024-08-11 21:03:59'),
(11, 8, 10, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-08-11 21:03:59', '2024-08-11 21:03:59'),
(12, 8, 11, 'Routes', 'icon-list-alt', 'helpers/routes', NULL, '2024-08-11 21:03:59', '2024-08-11 21:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '103.152.101.143', '[]', '2024-08-11 21:03:35', '2024-08-11 21:03:35'),
(2, 1, 'admin', 'GET', '103.152.101.143', '[]', '2024-08-11 21:04:14', '2024-08-11 21:04:14'),
(3, 1, 'admin', 'GET', '103.152.101.143', '[]', '2024-08-11 21:04:21', '2024-08-11 21:04:21'),
(4, 1, 'admin', 'GET', '103.152.101.143', '[]', '2024-08-11 21:04:33', '2024-08-11 21:04:33'),
(5, 1, 'admin/auth/logout', 'GET', '103.152.101.143', '[]', '2024-08-11 21:04:36', '2024-08-11 21:04:36'),
(6, 1, 'admin', 'GET', '103.152.101.143', '[]', '2024-08-11 21:08:05', '2024-08-11 21:08:05'),
(7, 1, 'admin', 'GET', '103.152.101.143', '[]', '2024-08-11 21:08:20', '2024-08-11 21:08:20'),
(8, 1, 'admin', 'GET', '103.152.101.143', '[]', '2024-08-11 21:08:39', '2024-08-11 21:08:39'),
(9, 1, 'admin/auth/logout', 'GET', '103.152.101.143', '[]', '2024-08-11 21:08:46', '2024-08-11 21:08:46'),
(10, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-11 21:56:44', '2024-08-11 21:56:44'),
(11, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-11 22:03:12', '2024-08-11 22:03:12'),
(12, 1, 'admin/auth/login', 'GET', '97.68.130.2', '[]', '2024-08-11 22:04:17', '2024-08-11 22:04:17'),
(13, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-12 02:06:30', '2024-08-12 02:06:30'),
(14, 1, 'admin/auth/menu', 'GET', '97.68.130.2', '[]', '2024-08-12 02:06:40', '2024-08-12 02:06:40'),
(15, 1, 'admin', 'GET', '97.100.69.178', '[]', '2024-08-12 22:42:36', '2024-08-12 22:42:36'),
(16, 1, 'admin/auth/users', 'GET', '97.100.69.178', '[]', '2024-08-12 22:43:02', '2024-08-12 22:43:02'),
(17, 1, 'admin/auth/users/create', 'GET', '97.100.69.178', '[]', '2024-08-12 22:43:23', '2024-08-12 22:43:23'),
(18, 1, 'admin/auth/users', 'GET', '97.100.69.178', '[]', '2024-08-12 22:43:35', '2024-08-12 22:43:35'),
(19, 1, 'admin/auth/roles', 'GET', '97.100.69.178', '[]', '2024-08-12 22:43:41', '2024-08-12 22:43:41'),
(20, 1, 'admin/auth/roles/create', 'GET', '97.100.69.178', '[]', '2024-08-12 22:43:43', '2024-08-12 22:43:43'),
(21, 1, 'admin/auth/roles', 'POST', '97.100.69.178', '{\"slug\":\"community_staff\",\"name\":\"community staff\",\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"w4MYFnHcG13tP82yi1VSY4ZR46YdLvMMrV2ol13w\"}', '2024-08-12 22:44:59', '2024-08-12 22:44:59'),
(22, 1, 'admin/auth/roles', 'GET', '97.100.69.178', '[]', '2024-08-12 22:44:59', '2024-08-12 22:44:59'),
(23, 1, 'admin/auth/roles/create', 'GET', '97.100.69.178', '[]', '2024-08-12 22:45:04', '2024-08-12 22:45:04'),
(24, 1, 'admin/auth/roles', 'POST', '97.100.69.178', '{\"slug\":\"business_staff\",\"name\":\"Business Staff\",\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"w4MYFnHcG13tP82yi1VSY4ZR46YdLvMMrV2ol13w\"}', '2024-08-12 22:45:51', '2024-08-12 22:45:51'),
(25, 1, 'admin/auth/roles', 'GET', '97.100.69.178', '[]', '2024-08-12 22:45:52', '2024-08-12 22:45:52'),
(26, 1, 'admin/auth/roles/create', 'GET', '97.100.69.178', '[]', '2024-08-12 22:46:00', '2024-08-12 22:46:00'),
(27, 1, 'admin/auth/roles', 'POST', '97.100.69.178', '{\"slug\":\"Resident\",\"name\":\"Resident\",\"permissions\":[\"2\",\"3\",\"4\",null],\"_token\":\"w4MYFnHcG13tP82yi1VSY4ZR46YdLvMMrV2ol13w\"}', '2024-08-12 22:46:19', '2024-08-12 22:46:19'),
(28, 1, 'admin/auth/roles', 'GET', '97.100.69.178', '[]', '2024-08-12 22:46:19', '2024-08-12 22:46:19'),
(29, 1, 'admin/auth/permissions', 'GET', '97.100.69.178', '[]', '2024-08-12 22:46:41', '2024-08-12 22:46:41'),
(30, 1, 'admin/auth/menu', 'GET', '97.100.69.178', '[]', '2024-08-12 22:46:52', '2024-08-12 22:46:52'),
(31, 1, 'admin/helpers/terminal/database', 'GET', '97.100.69.178', '[]', '2024-08-12 22:47:45', '2024-08-12 22:47:45'),
(32, 1, 'admin/helpers/scaffold', 'GET', '97.100.69.178', '[]', '2024-08-12 22:47:49', '2024-08-12 22:47:49'),
(33, 1, 'admin/helpers/scaffold', 'POST', '97.100.69.178', '{\"table_name\":\"business_type\",\"model_name\":\"App\\\\Models\\\\\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"id\",\"type\":\"integer\",\"key\":\"index\",\"default\":null,\"comment\":null},{\"name\":\"business_type\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"w4MYFnHcG13tP82yi1VSY4ZR46YdLvMMrV2ol13w\"}', '2024-08-12 22:49:34', '2024-08-12 22:49:34'),
(34, 1, 'admin/helpers/scaffold', 'GET', '97.100.69.178', '[]', '2024-08-12 22:49:34', '2024-08-12 22:49:34'),
(35, 1, 'admin/helpers/scaffold', 'GET', '97.100.69.178', '[]', '2024-08-12 22:49:50', '2024-08-12 22:49:50'),
(36, 1, 'admin/helpers/terminal/artisan', 'GET', '97.100.69.178', '[]', '2024-08-12 22:49:56', '2024-08-12 22:49:56'),
(37, 1, 'admin/helpers/routes', 'GET', '97.100.69.178', '[]', '2024-08-12 22:50:00', '2024-08-12 22:50:00'),
(38, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-26 22:58:51', '2024-08-26 22:58:51'),
(39, 1, 'admin/auth/users', 'GET', '97.68.130.2', '[]', '2024-08-26 22:59:01', '2024-08-26 22:59:01'),
(40, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 22:59:10', '2024-08-26 22:59:10'),
(41, 1, 'admin/auth/users', 'GET', '97.68.130.2', '[]', '2024-08-26 23:00:11', '2024-08-26 23:00:11'),
(42, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-26 23:00:18', '2024-08-26 23:00:18'),
(43, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-26 23:01:19', '2024-08-26 23:01:19'),
(44, 1, 'admin/auth/users', 'GET', '97.68.130.2', '[]', '2024-08-26 23:01:31', '2024-08-26 23:01:31'),
(45, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:01:34', '2024-08-26 23:01:34'),
(46, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:02:33', '2024-08-26 23:02:33'),
(47, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:02:38', '2024-08-26 23:02:38'),
(48, 1, 'admin/auth/logout', 'GET', '97.68.130.2', '[]', '2024-08-26 23:02:42', '2024-08-26 23:02:42'),
(49, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-26 23:03:00', '2024-08-26 23:03:00'),
(50, 1, 'admin/auth/users', 'GET', '97.68.130.2', '[]', '2024-08-26 23:03:11', '2024-08-26 23:03:11'),
(51, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:03:30', '2024-08-26 23:03:30'),
(52, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:04:57', '2024-08-26 23:04:57'),
(53, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-26 23:05:07', '2024-08-26 23:05:07'),
(54, 1, 'admin/auth/users', 'GET', '97.68.130.2', '[]', '2024-08-26 23:05:15', '2024-08-26 23:05:15'),
(55, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:05:18', '2024-08-26 23:05:18'),
(56, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:06:54', '2024-08-26 23:06:54'),
(57, 1, 'admin/auth/users/1/edit', 'GET', '97.68.130.2', '[]', '2024-08-26 23:06:56', '2024-08-26 23:06:56'),
(58, 1, 'admin/auth/logout', 'GET', '97.68.130.2', '[]', '2024-08-26 23:07:08', '2024-08-26 23:07:08'),
(59, 1, 'admin', 'GET', '97.68.130.2', '[]', '2024-08-26 23:07:29', '2024-08-26 23:07:29'),
(60, 1, 'admin/auth/setting', 'GET', '97.68.130.2', '[]', '2024-08-26 23:07:53', '2024-08-26 23:07:53'),
(61, 1, 'admin', 'GET', '72.239.12.208', '[]', '2024-11-01 22:04:22', '2024-11-01 22:04:22'),
(62, 1, 'admin/auth/users', 'GET', '72.239.12.208', '[]', '2024-11-01 22:04:50', '2024-11-01 22:04:50'),
(63, 1, 'admin/auth/users/1/edit', 'GET', '72.239.12.208', '[]', '2024-11-01 22:04:57', '2024-11-01 22:04:57'),
(64, 1, 'admin/auth/users/1', 'PUT', '72.239.12.208', '{\"username\":\"admin\",\"name\":\"Administrator\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"Mojojo@1234\",\"roles\":[\"1\",null],\"search_terms\":null,\"permissions\":[null],\"_token\":\"OFrjXIADpQsy43hC2xCeBHHyPWLqIJH4WxW1ka5g\",\"_method\":\"PUT\"}', '2024-11-01 22:05:32', '2024-11-01 22:05:32'),
(65, 1, 'admin/auth/users', 'GET', '72.239.12.208', '[]', '2024-11-01 22:05:32', '2024-11-01 22:05:32'),
(66, 1, 'admin/auth/menu', 'GET', '72.239.12.208', '[]', '2024-11-01 22:05:47', '2024-11-01 22:05:47'),
(67, 1, 'admin/auth/users', 'GET', '72.239.12.208', '[]', '2024-11-01 22:07:31', '2024-11-01 22:07:31'),
(68, 1, 'admin/auth/users/create', 'GET', '72.239.12.208', '[]', '2024-11-01 22:07:33', '2024-11-01 22:07:33'),
(69, 1, 'admin/auth/users', 'POST', '72.239.12.208', '{\"username\":\"Antonio\",\"name\":\"Antonio Restituyo\",\"password\":\"*****-filtered-out-*****\",\"password_confirmation\":\"Mojojo@1234\",\"roles\":[\"1\",\"3\",\"2\",\"4\",null],\"search_terms\":null,\"permissions\":[\"1\",\"2\",\"3\",\"6\",\"5\",\"4\",null],\"_token\":\"OFrjXIADpQsy43hC2xCeBHHyPWLqIJH4WxW1ka5g\"}', '2024-11-01 22:09:03', '2024-11-01 22:09:03'),
(70, 1, 'admin/auth/users', 'GET', '72.239.12.208', '[]', '2024-11-01 22:09:03', '2024-11-01 22:09:03'),
(71, 1, 'admin/helpers/terminal/database', 'GET', '72.239.12.208', '[]', '2024-11-01 22:09:25', '2024-11-01 22:09:25'),
(72, 1, 'admin/helpers/routes', 'GET', '72.239.12.208', '[]', '2024-11-01 22:15:01', '2024-11-01 22:15:01'),
(73, 1, 'admin', 'GET', '72.239.12.208', '[]', '2024-11-01 22:15:14', '2024-11-01 22:15:14'),
(74, 1, 'admin', 'GET', '72.239.12.208', '[]', '2024-11-01 22:32:01', '2024-11-01 22:32:01'),
(75, 1, 'admin/auth/menu', 'GET', '72.239.12.208', '[]', '2024-11-01 22:32:17', '2024-11-01 22:32:17'),
(76, 1, 'admin/auth/logout', 'GET', '72.239.12.208', '[]', '2024-11-01 22:32:33', '2024-11-01 22:32:33'),
(77, 1, 'admin', 'GET', '72.239.12.208', '[]', '2024-11-01 22:34:51', '2024-11-01 22:34:51'),
(78, 1, 'admin/auth/logout', 'GET', '72.239.12.208', '[]', '2024-11-01 22:35:03', '2024-11-01 22:35:03'),
(79, 2, 'admin', 'GET', '72.239.12.208', '[]', '2024-11-01 22:35:23', '2024-11-01 22:35:23'),
(80, 2, 'admin/auth/users', 'GET', '72.239.12.208', '[]', '2024-11-01 22:35:41', '2024-11-01 22:35:41'),
(81, 2, 'admin', 'GET', '72.239.12.208', '[]', '2024-11-01 22:35:58', '2024-11-01 22:35:58'),
(82, 2, 'admin/auth/roles', 'GET', '72.239.12.208', '[]', '2024-11-01 22:36:14', '2024-11-01 22:36:14'),
(83, 2, 'admin/auth/permissions', 'GET', '72.239.12.208', '[]', '2024-11-01 22:36:19', '2024-11-01 22:36:19'),
(84, 2, 'admin/auth/menu', 'GET', '72.239.12.208', '[]', '2024-11-01 22:36:28', '2024-11-01 22:36:28'),
(85, 2, 'admin/auth/logout', 'GET', '72.239.12.208', '[]', '2024-11-01 22:36:41', '2024-11-01 22:36:41'),
(86, 1, 'admin', 'GET', '172.109.246.114', '[]', '2024-11-03 01:01:08', '2024-11-03 01:01:08'),
(87, 1, 'admin', 'GET', '172.109.246.114', '[]', '2024-11-03 01:01:30', '2024-11-03 01:01:30'),
(88, 1, 'admin/helpers/routes', 'GET', '172.109.246.114', '[]', '2024-11-03 01:02:27', '2024-11-03 01:02:27'),
(89, 1, 'admin', 'GET', '172.56.75.177', '[]', '2024-11-04 21:45:21', '2024-11-04 21:45:21'),
(90, 1, 'admin', 'GET', '119.155.202.51', '[]', '2024-11-04 22:09:00', '2024-11-04 22:09:00'),
(91, 1, 'admin/auth/users', 'GET', '119.155.202.51', '[]', '2024-11-04 22:09:13', '2024-11-04 22:09:13'),
(92, 1, 'admin/helpers/scaffold', 'GET', '119.155.202.51', '[]', '2024-11-04 22:09:25', '2024-11-04 22:09:25'),
(93, 1, 'admin/auth/roles', 'GET', '119.155.202.51', '[]', '2024-11-04 22:09:30', '2024-11-04 22:09:30'),
(94, 1, 'admin/auth/permissions', 'GET', '119.155.202.51', '[]', '2024-11-04 22:09:42', '2024-11-04 22:09:42'),
(95, 1, 'admin/helpers/terminal/database', 'GET', '119.155.195.195', '[]', '2024-11-04 22:10:49', '2024-11-04 22:10:49'),
(96, 1, 'admin/helpers/terminal/artisan', 'GET', '119.155.195.195', '[]', '2024-11-04 22:10:57', '2024-11-04 22:10:57'),
(97, 1, 'admin/helpers/terminal/artisan', 'POST', '119.155.195.195', '{\"c\":null,\"_token\":\"smlkOFsQs4j5bMGKqb0bIXIyd0StfbhyW4hgN7I3\"}', '2024-11-04 22:11:02', '2024-11-04 22:11:02'),
(98, 1, 'admin/helpers/terminal/artisan', 'GET', '119.155.202.51', '[]', '2024-11-04 22:22:53', '2024-11-04 22:22:53'),
(99, 1, 'admin', 'GET', '72.239.12.208', '[]', '2024-11-05 23:37:03', '2024-11-05 23:37:03'),
(100, 1, 'admin/auth/logout', 'GET', '72.239.12.208', '[]', '2024-11-05 23:37:16', '2024-11-05 23:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-08-11 21:03:59', '2024-08-11 21:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-08-11 21:03:25', '2024-08-11 21:03:25'),
(2, 'Community Staff', 'community_staff', '2024-08-12 22:44:59', '2024-08-12 22:44:59'),
(3, 'Business Staff', 'business_staff', '2024-08-12 22:45:51', '2024-08-12 22:45:51'),
(4, 'Resident', 'resident', '2024-08-12 22:46:19', '2024-08-12 22:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(4, 2, NULL, NULL),
(4, 3, NULL, NULL),
(4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(3, 2, NULL, NULL),
(2, 2, NULL, NULL),
(4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$iMR2cSjp643nlhRcl48ZbeB7TOcoJWcKph/TYFcWhr.FNxv8WmhEa', 'Administrator', NULL, 'VkRcl34N2qb2l4XJaMZXBiaM5ShGoYeN9xo6AcgH2eLMzWf83YYgAFw21V5T', '2024-08-11 21:03:25', '2024-11-01 22:05:32'),
(2, 'Antonio', '$2y$10$iMR2cSjp643nlhRcl48ZbeB7TOcoJWcKph/TYFcWhr.FNxv8WmhEa', 'Antonio Restituyo', NULL, '4P1fM7KhQs6Xn2xS3IW9bxnP5Idaj09lxjC51aw3X5BQHlCIZViQynU3tGJ6', '2024-11-01 22:09:03', '2024-11-01 22:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 6, NULL, NULL),
(2, 5, NULL, NULL),
(2, 4, NULL, NULL);

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
(2, '2024_02_16_071811_create_jobs_table', 1),
(3, '2024_02_27_111922_create_failed_jobs_table', 1),
(4, '2016_01_04_173148_create_admin_tables', 2),
(5, '2024_08_10_204755_alter_table_users_add_column_parent_user_id', 2),
(7, '2024_11_08_183212_create_promotional_pdfs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `promotional_pdf`
--

CREATE TABLE `promotional_pdf` (
  `id` int(25) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `banner` varchar(300) DEFAULT NULL,
  `promotional_detail` tinyblob NOT NULL,
  `term_n_conditions` tinyblob NOT NULL,
  `coupon_code` varchar(16) NOT NULL,
  `start_date` date NOT NULL,
  `expiration_date` date NOT NULL,
  `layout` varchar(300) NOT NULL,
  `img1` varchar(300) NOT NULL,
  `img2` varchar(300) NOT NULL,
  `img3` varchar(300) NOT NULL,
  `img4` varchar(300) DEFAULT NULL,
  `img5` varchar(300) DEFAULT NULL,
  `img6` varchar(300) DEFAULT NULL,
  `img7` varchar(300) DEFAULT NULL,
  `img8` varchar(300) DEFAULT NULL,
  `img9` varchar(300) DEFAULT NULL,
  `img10` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotional_pdfs`
--

CREATE TABLE `promotional_pdfs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `promotional_detail` text DEFAULT NULL,
  `term_n_conditions` text DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  `img5` varchar(255) DEFAULT NULL,
  `img6` varchar(255) DEFAULT NULL,
  `img7` varchar(255) DEFAULT NULL,
  `img8` varchar(255) DEFAULT NULL,
  `img9` varchar(255) DEFAULT NULL,
  `img10` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotional_pdfs`
--

INSERT INTO `promotional_pdfs` (`id`, `user_id`, `logo`, `banner`, `promotional_detail`, `term_n_conditions`, `coupon_code`, `start_date`, `expiration_date`, `layout`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `img9`, `img10`, `created_at`, `updated_at`) VALUES
(1, 20, 'uploads/promotional_pdfs/Screenshot_1.png', 'uploads/promotional_pdfs/Screenshot_1.png', 'dasdasd', 'asddsafds', 'fsdfsdfsdf', '2024-11-12', '2024-11-21', 'sadasdsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-09 13:33:59', '2024-11-09 13:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'male',
  `zip_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `user_name`, `role`, `zip_code`, `state`, `city`, `phone_number`, `address`, `referral_code`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `parent_user_id`) VALUES
(1, 'Super', 'Admin', NULL, 'superadmin@admin.com', 'superadmin', 'Super Admin', '51500', 'Punjab', 'Lahore', '+923047718842', 'Lahore', NULL, '1', '2024-08-09 05:25:00', '$2y$10$s8xXMODrYTLuTF1mtpLf1e7pRgoId1ZavhV0o46m5uk...', NULL, '2024-08-09 05:25:00', '2024-08-09 05:25:00', NULL),
(2, 'Muhammad', 'Zafar', NULL, 'farhanzafar1643@gmail.com', 'farhanzafarsahu', 'male', '58150', NULL, NULL, '03416270778', 'khanewal', NULL, '2', '2024-11-07 16:27:12', '$2y$10$ucOV5laNQ9xV3DyfNgLdYOdTW.yk3a3yzbEgwoWFt5zrjv5mT6IPa', NULL, '2024-08-09 00:29:27', '2024-08-09 00:29:27', NULL),
(3, 'Antonio ', 'Restituyo', NULL, 'antonio.restituyo@gmail.com', 'Community Chest', 'male', '34741', NULL, NULL, '3214292237', '2099 Jessa Drive', NULL, '2', '2024-11-07 16:27:17', '$2y$10$MhC7RufOhOxUCiTlx8EwVea7mGmLlUNntt9u2VGftNF3wsVt/TMb6', NULL, '2024-08-09 20:22:47', '2024-08-09 20:22:47', NULL),
(4, 'Heriberto', 'Restituyo', 'Antonio', '420social@gmail.com', 'littleAdmin', 'male', '34741', 'FL', 'Kissimmee', '3214292237', '650 Cecina way Apt C', NULL, '5', '2024-11-07 16:27:21', '$2y$10$MhC7RufOhOxUCiTlx8EwVea7mGmLlUNntt9u2VGftNF3wsVt/TMb6', NULL, '2024-11-01 22:00:41', '2024-11-01 22:00:41', NULL),
(5, 'mirza', 'Uzair', 'sdfas', 'uzeairmirza2121@gmail.com', 'mirza uzair', 'male', '38000', 'Punjabe', 'Faisalabad', '9230864522', 'Razabad', NULL, '5', '2024-11-07 16:27:26', '$2y$10$s8xXMODrYTLuTF1mtpLf1e7pRgoId1ZavhV0o46m5uk...', NULL, '2024-11-01 23:27:52', '2024-11-01 23:27:52', NULL),
(6, 'staff', 'staff', 'staff', 'staff@staff.com', 'staff', 'Resident', '34741', 'FL', 'Kissimmee', '3214292237', '650 Cecina way Apt C', NULL, '5', '2024-11-07 16:27:28', '$2y$10$pAMjb5L.Q5ghJhHXxrxvVe3aQEoSNACEKbHLsVZJ5595UxFu7XP.G', NULL, '2024-11-05 23:03:30', '2024-11-05 23:03:30', NULL),
(7, 'administrator', 'administrator', 'Administrator', 'administrator@admin.com', 'administrator', 'administrator', '34741', 'FL', 'Kissimmee', '3214292237', '650 Cecina way Apt C', NULL, '1', '2024-11-07 16:27:35', '$2y$10$s8xXMODrYTLuTF1mtpLf1e7pRgoId1ZavhV0o46m5uk6CgXO2jYdW', NULL, '2024-11-05 23:34:16', '2024-11-05 23:34:16', NULL),
(8, 'community', 'community', 'community', 'community@community.com', 'community', 'community', '34741', 'FL', 'Kissimmee', '3214292237', '650 Cecina way Apt C', NULL, '2', '2024-11-07 16:27:33', '$2y$10$Nf0jARCZlSb3FpUaIYe7aOtHjQZkozJxCt7fPg4jma/rO513ystPi', NULL, '2024-11-05 23:39:26', '2024-11-05 23:39:26', NULL),
(9, 'business', 'business', 'business', 'business@business.com', 'business', 'business', '34741', 'FL', 'Kissimmee', '3214292237', '650 Cecina way Apt C', NULL, '3', '2024-11-07 16:27:31', '$2y$10$RTq/icuJ/2ptk1StpeduKOPJUv.KmEPWNNARua2xd/psjRtCaBS5S', NULL, '2024-11-05 23:46:26', '2024-11-05 23:46:26', NULL),
(20, 'mirza', 'Uzair', 'sdfas', 'uzairmirza2121@gmail.com', 'uzairmirza2121@32gmail.11', 'Resident', '38000', 'Punjabe', 'Faisalabad', '09230864522', 'Razabad', NULL, '3', '2024-11-07 16:27:31', '$2y$10$/Hr05h1MD9or71DcmLrENeFmBjoLdIN0ouXw3DGS4namh4bPaqraG', NULL, '2024-11-07 11:33:48', '2024-11-08 02:14:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotional_pdf`
--
ALTER TABLE `promotional_pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotional_pdfs`
--
ALTER TABLE `promotional_pdfs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotional_pdfs_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `promotional_pdfs`
--
ALTER TABLE `promotional_pdfs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `promotional_pdfs`
--
ALTER TABLE `promotional_pdfs`
  ADD CONSTRAINT `promotional_pdfs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
