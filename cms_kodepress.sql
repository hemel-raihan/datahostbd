-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 09:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_kodepress`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `deletable`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'hemelraihan1997@gmail.com', NULL, '$2y$10$QCW68LfXiEwKae4/8GUWPOXxY4lpRZQwOgkJNxV4uOd4sD3B8GlpW', 0, NULL, '2021-12-23 02:11:35', '2021-12-23 02:11:35'),
(2, 2, 'author', 'author@gmail.com', NULL, '$2y$10$QCW68LfXiEwKae4/8GUWPOXxY4lpRZQwOgkJNxV4uOd4sD3B8GlpW', 0, NULL, '2021-12-23 02:11:35', '2021-12-23 02:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `image`, `desc`, `leftsidebar_id`, `rightsidebar_id`, `status`, `created_at`, `updated_at`) VALUES
(18, 'Certificate', 'certificate', 0, NULL, NULL, NULL, NULL, 1, '2022-03-10 05:01:51', '2022-03-10 05:01:51'),
(19, 'Clients', 'clients', 0, NULL, NULL, NULL, NULL, 1, '2022-03-10 05:03:45', '2022-03-10 05:03:45'),
(20, 'CONTRACT VEHICLE', 'contract-vehicle', 0, NULL, NULL, NULL, NULL, 1, '2022-03-12 03:43:58', '2022-03-12 03:43:58'),
(21, 'bold', 'bold', 0, NULL, '<b>hi hemel</b>', NULL, NULL, 1, '2022-03-14 05:37:25', '2022-03-14 05:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 4, 18, NULL, NULL),
(2, 5, 18, NULL, NULL),
(3, 6, 18, NULL, NULL),
(4, 7, 19, NULL, NULL),
(5, 8, 19, NULL, NULL),
(6, 9, 19, NULL, NULL),
(7, 10, 19, NULL, NULL),
(8, 11, 19, NULL, NULL),
(10, 13, 20, NULL, NULL),
(11, 14, 20, NULL, NULL),
(12, 15, 20, NULL, NULL),
(17, 20, 18, NULL, NULL),
(18, 21, 19, NULL, NULL),
(19, 22, 18, NULL, NULL),
(20, 23, 18, NULL, NULL),
(21, 25, 21, NULL, NULL),
(22, 28, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `msg`, `created_at`, `updated_at`) VALUES
(1, 'Rakibul Islam', 'Rakibul Islam', '01768618001', 'sdv', '2022-01-05 00:33:19', '2022-01-05 00:33:19'),
(2, 'Mr. Rakibul Islam', 'Mr. Rakibul Islam', '01768618001', 'asfd', '2022-01-05 00:34:55', '2022-01-05 00:34:55'),
(3, 'Rakibul Islam', 'Rakibul Islam', '01648477222', 'asd', '2022-01-05 00:37:17', '2022-01-05 00:37:17'),
(4, 'test', 'test', '015217495184', 'sdfsdsdf', '2022-01-05 01:50:05', '2022-01-05 01:50:05'),
(5, 'test', 'test', '015217495184', 'sdfsdsdf', '2022-01-05 01:50:43', '2022-01-05 01:50:43'),
(6, 'Rakibul Islam', 'Rakibul Islam', '01768618001', 'sfasd', '2022-01-05 01:51:59', '2022-01-05 01:51:59'),
(7, 'Rakibul Islam', 'Rakibul Islam', '01768618001', 'sdf', '2022-01-05 01:53:24', '2022-01-05 01:53:24'),
(8, 'Rakibul Islam', 'Rakibul Islam', '01768618001', 'wdf', '2022-01-05 01:54:15', '2022-01-05 01:54:15'),
(9, 'Rakibul Islam', 'Rakibul Islam', '01768618001', NULL, '2022-01-05 02:00:18', '2022-01-05 02:00:18'),
(10, 'Rakibul Islam', 'Rakibul Islam', '01768618001', 'sd', '2022-01-05 02:01:17', '2022-01-05 02:01:17'),
(11, 'Rakibul Islam', 'Rakibul Islam', '01768618001', 'ds', '2022-01-05 02:05:37', '2022-01-05 02:05:37'),
(12, 'Rakibul Islam', 'Rakibul Islam', '01768618001', 'df', '2022-01-05 02:15:03', '2022-01-05 02:15:03'),
(13, 'test', 'test', '01768618001', 'qwe', '2022-02-18 23:44:31', '2022-02-18 23:44:31'),
(14, 'maisha', 'maisha', '234234234', 'sdf', '2022-02-18 23:45:24', '2022-02-18 23:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `contentcategories`
--

CREATE TABLE `contentcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contentcategories`
--

INSERT INTO `contentcategories` (`id`, `name`, `slug`, `parent_id`, `image`, `desc`, `leftsidebar_id`, `rightsidebar_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rakibul Islam', 'rakibul-islam', 0, 'rakibul-islam-2022-03-10-6229c9cd9c757.png', NULL, 0, 0, 1, '2022-03-10 03:50:05', '2022-03-10 03:50:05'),
(2, 'Ac Manager', 'ac-manager', 0, 'ac-manager-2022-03-10-6229c9dc84472.png', NULL, 0, 0, 1, '2022-03-10 03:50:20', '2022-03-10 03:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `contentcategory_contentpost`
--

CREATE TABLE `contentcategory_contentpost` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contentpost_id` bigint(20) UNSIGNED NOT NULL,
  `contentcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contentposts`
--

CREATE TABLE `contentposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallaryimage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rightsidebar_id` int(11) NOT NULL,
  `leftsidebar_id` int(11) NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custompages`
--

CREATE TABLE `custompages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `container` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `left_margin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right_margin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transparent` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `leftsidebar_id` int(20) DEFAULT NULL,
  `rightsidebar_id` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custompages`
--

INSERT INTO `custompages` (`id`, `name`, `slug`, `type`, `container`, `left_margin`, `right_margin`, `background_img`, `background_color`, `transparent`, `status`, `leftsidebar_id`, `rightsidebar_id`, `created_at`, `updated_at`) VALUES
(1, 'home', 'home', 'Main-Page', 'container-lg', '0px', '0px', NULL, '#f3f3f3', 1, 1, 0, 0, '2021-12-23 03:42:21', '2022-03-31 00:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagebuilder_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_category_id` int(20) DEFAULT NULL,
  `module_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `container` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_margin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `margin_amt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_topmargin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topmargin_amt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title_show` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filemanager`
--

CREATE TABLE `filemanager` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `absolute_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`extra`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filemanager`
--

INSERT INTO `filemanager` (`id`, `name`, `ext`, `file_size`, `user_id`, `absolute_url`, `extra`, `created_at`, `updated_at`) VALUES
(25, 'Management-1.png', 'png', 645339.00, 1, 'http://localhost/colombiafashionbd/public/filemanager/uploads/Management-1.png', '{\"width\":1024,\"height\":573}', '2022-03-07 04:38:58', '2022-03-07 04:38:58'),
(26, 'Profile.jpg', 'jpg', 151156.00, 1, 'http://localhost/colombiafashionbd/public/filemanager/uploads/Profile.jpg', '{\"width\":1024,\"height\":629}', '2022-03-07 04:39:17', '2022-03-07 04:39:17'),
(27, 'agile_scrum_methodology-1024x769-600x450.jpg', 'jpg', 69350.00, 1, 'http://localhost/agile1tech/public/filemanager/uploads/agile_scrum_methodology-1024x769-600x450.jpg', '{\"width\":1024,\"height\":768}', '2022-03-10 01:42:11', '2022-03-10 01:42:11'),
(32, 'Our Mission.png', 'png', 275118.00, 1, 'http://localhost/agile1tech_usa/public/filemanager/uploads/Our Mission.png', '{\"width\":1024,\"height\":585}', '2022-03-12 00:08:34', '2022-03-12 00:08:34'),
(33, 'test-1024x385-800x300.jpg', 'jpg', 25852.00, 1, 'http://localhost/agile1tech_usa/public/filemanager/uploads/test-1024x385-800x300.jpg', '{\"width\":1024,\"height\":384}', '2022-03-12 01:56:26', '2022-03-12 01:56:26'),
(34, 'paper-3154814_1920-1024x624-350x213.jpg', 'jpg', 59473.00, 1, 'http://localhost/agile1tech_usa/public/filemanager/uploads/paper-3154814_1920-1024x624-350x213.jpg', '{\"width\":1024,\"height\":623}', '2022-03-12 01:56:54', '2022-03-12 01:56:54'),
(35, 'services_banner-1024x416-350x142.png', 'png', 238494.00, 1, 'http://localhost/agile1tech_usa/public/filemanager/uploads/services_banner-1024x416-350x142.png', '{\"width\":1024,\"height\":415}', '2022-03-12 01:56:57', '2022-03-12 01:56:57'),
(36, 'project-1024x683.jpg', 'jpg', 71581.00, 1, 'http://localhost/agile1tech_usa/public/filemanager/uploads/project-1024x683.jpg', '{\"width\":1024,\"height\":683}', '2022-03-12 02:08:08', '2022-03-12 02:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `footersettings`
--

CREATE TABLE `footersettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `footer_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `left_margin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_margin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `container` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footersettings`
--

INSERT INTO `footersettings` (`id`, `footer_style`, `text_color`, `background_color`, `left_margin`, `right_margin`, `container`, `created_at`, `updated_at`) VALUES
(1, 'default', '#fff', '#192462', '100px', '100px', 'container-lg', NULL, '2022-03-10 04:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `frontmenuitems`
--

CREATE TABLE `frontmenuitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `frontmenu_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `page_id` int(11) DEFAULT NULL,
  `service_id` int(20) DEFAULT NULL,
  `contentcategory_id` int(11) DEFAULT NULL,
  `blogcategory_id` int(11) DEFAULT NULL,
  `teamcategory_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divider_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontmenuitems`
--

INSERT INTO `frontmenuitems` (`id`, `frontmenu_id`, `type`, `parent_id`, `page_id`, `service_id`, `contentcategory_id`, `blogcategory_id`, `teamcategory_id`, `order`, `title`, `divider_title`, `slug`, `url`, `target`, `created_at`, `updated_at`) VALUES
(58, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 'Home', NULL, NULL, '#', NULL, '2022-03-07 04:43:00', '2022-03-12 06:48:11'),
(59, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 2, 'Services', NULL, NULL, '#', NULL, '2022-03-07 04:43:18', '2022-03-12 06:48:11'),
(70, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 'ABOUT', NULL, NULL, '#', NULL, '2022-03-12 05:03:22', '2022-03-12 05:04:10'),
(71, 2, NULL, 70, NULL, NULL, NULL, 18, NULL, 1, 'Certificate', NULL, 'certificate', NULL, NULL, '2022-03-12 05:03:32', '2022-03-12 05:03:35'),
(72, 2, NULL, 70, NULL, NULL, NULL, 19, NULL, 2, 'Clients', NULL, 'clients', NULL, NULL, '2022-03-12 05:03:32', '2022-03-12 05:03:35'),
(73, 2, NULL, 0, NULL, NULL, NULL, NULL, NULL, 2, 'OUR SERVICES', NULL, NULL, '#', NULL, '2022-03-12 05:03:48', '2022-03-12 05:03:51'),
(74, 2, NULL, 73, NULL, NULL, NULL, 20, NULL, 1, 'CONTRACT VEHICLE', NULL, 'contract-vehicle', NULL, NULL, '2022-03-12 05:03:58', '2022-03-12 05:04:03'),
(82, 1, NULL, 59, NULL, 2, NULL, NULL, NULL, 1, 'SOFTWARE  TESTING', NULL, 'software-testing', NULL, NULL, '2022-03-12 06:44:36', '2022-03-12 06:44:56'),
(83, 1, NULL, 59, NULL, 4, NULL, NULL, NULL, 2, 'CYBER  SECURITY', NULL, 'cyber-security', NULL, NULL, '2022-03-12 06:44:36', '2022-03-12 06:44:58'),
(84, 1, NULL, 59, NULL, 5, NULL, NULL, NULL, 3, 'CLOUD  COMPUTING', NULL, 'cloud-computing', NULL, NULL, '2022-03-12 06:44:37', '2022-03-12 06:44:59'),
(85, 1, NULL, 59, NULL, 6, NULL, NULL, NULL, 4, 'SOFTWARE  DEVELOPMENT', NULL, 'software-development', NULL, NULL, '2022-03-12 06:44:37', '2022-03-12 06:45:01'),
(86, 1, NULL, 59, NULL, 7, NULL, NULL, NULL, 5, 'PROJECT  MANAGEMENT', NULL, 'project-management', NULL, NULL, '2022-03-12 06:44:37', '2022-03-12 06:45:03'),
(87, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 3, 'WHO WE SERVES', NULL, NULL, '#', NULL, '2022-03-12 06:46:36', '2022-03-12 06:48:11'),
(88, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 'CAPABILITIES', NULL, NULL, '#', NULL, '2022-03-12 06:46:47', '2022-03-12 06:48:11'),
(89, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, 'CONTRACT VEHICLE', NULL, NULL, '#', NULL, '2022-03-12 06:47:28', '2022-03-12 06:48:11'),
(90, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, 'CAREER', NULL, NULL, '#', NULL, '2022-03-12 06:47:39', '2022-03-12 06:48:12'),
(91, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 7, 'ABOUT US', NULL, NULL, '#', NULL, '2022-03-12 06:47:50', '2022-03-12 06:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `frontmenus`
--

CREATE TABLE `frontmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontmenus`
--

INSERT INTO `frontmenus` (`id`, `title`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'main-menu', 'main-menu', 1, '2021-12-29 03:03:56', '2022-02-26 22:53:48'),
(2, 'footermenu', 'footer-menu', 1, '2022-02-26 22:45:37', '2022-02-26 22:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `gallaryimages`
--

CREATE TABLE `gallaryimages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallaryimages`
--

INSERT INTO `gallaryimages` (`id`, `page_id`, `image`, `created_at`, `updated_at`) VALUES
(7, 37, '[\"vghhmfkghjk--62177e132bd68.png\",\"vghhmfkghjk--62177e1386292.jpg\",\"vghhmfkghjk--62177e13a6d9f.jpg\",\"vghhmfkghjk--62177e13de464.jpg\"]', '2022-02-24 06:46:12', '2022-02-24 06:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallerycategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallerycategory_id`, `name`, `slug`, `image`, `video`, `desc`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, '1', '', '-2022-03-03-62208ae44a0b2.jpeg', NULL, NULL, 1, '2022-03-03 09:31:16', '2022-03-03 10:04:05'),
(7, 1, '2', '', '-2022-03-03-622091213a7d7.jpeg', NULL, NULL, 1, '2022-03-03 09:57:53', '2022-03-03 09:57:53'),
(8, 1, '3', '', '-2022-03-03-6220914c006e8.jpeg', NULL, NULL, 1, '2022-03-03 09:58:36', '2022-03-03 09:58:36'),
(9, 1, '4', '', '-2022-03-03-62209173226fb.jpeg', NULL, NULL, 1, '2022-03-03 09:59:15', '2022-03-03 09:59:15'),
(10, 1, '5', '', '-2022-03-03-62209183ccd50.jpeg', NULL, NULL, 1, '2022-03-03 09:59:31', '2022-03-03 09:59:31'),
(11, 1, '6', '', '-2022-03-03-622091e9b7481.jpeg', NULL, NULL, 1, '2022-03-03 09:59:58', '2022-03-03 10:01:29'),
(12, 1, '7', '', '-2022-03-03-62209244a9470.jpeg', NULL, NULL, 1, '2022-03-03 10:02:44', '2022-03-03 10:02:44'),
(14, 1, '8', '', '-2022-03-03-622092803387f.jpeg', NULL, NULL, 1, '2022-03-03 10:03:44', '2022-03-03 10:03:44'),
(15, 1, '9', '', '-2022-03-03-622092a9ada30.jpeg', NULL, NULL, 1, '2022-03-03 10:04:25', '2022-03-03 10:04:25'),
(16, 1, '10', '', '-2022-03-03-622092c248412.jpeg', NULL, NULL, 1, '2022-03-03 10:04:50', '2022-03-03 10:04:50'),
(17, 1, '11', '', '-2022-03-03-622092dc5a33b.jpeg', NULL, NULL, 1, '2022-03-03 10:05:16', '2022-03-03 10:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `gallerycategories`
--

CREATE TABLE `gallerycategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallerycategories`
--

INSERT INTO `gallerycategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main', 'main', 1, '2022-03-01 03:08:44', '2022-03-01 11:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobcategories`
--

CREATE TABLE `jobcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobcategories`
--

INSERT INTO `jobcategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Ac Manager', 'ac-manager', 1, '2022-04-02 06:08:43', '2022-04-02 06:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `jobposts`
--

CREATE TABLE `jobposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobcategory_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employement_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_deadline` date DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_in_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_before` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bgcolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_02_100001_create_filemanager_table', 1),
(5, '2021_11_13_082206_create_modules_table', 1),
(6, '2021_11_13_082255_create_permissions_table', 1),
(7, '2021_11_13_082312_create_roles_table', 1),
(8, '2021_11_13_082357_create_permission_role_table', 1),
(9, '2021_11_13_101402_create_admins_table', 1),
(10, '2021_11_15_051524_create_categories_table', 1),
(11, '2021_11_16_061038_create_sidebars_table', 1),
(12, '2021_11_16_120238_create_widgets_table', 1),
(13, '2021_11_17_103409_create_posts_table', 1),
(14, '2021_11_17_103808_create_category_post_table', 1),
(15, '2021_11_20_093651_create_contentcategories_table', 1),
(16, '2021_11_20_113758_create_contentposts_table', 1),
(17, '2021_11_20_121500_create_contentcategory_contentpost_table', 1),
(18, '2021_11_22_052344_create_pages_table', 1),
(19, '2021_11_25_083817_create_frontmenus_table', 1),
(21, '2021_11_27_102443_create_sliders_table', 1),
(22, '2021_11_27_111153_create_slides_table', 1),
(23, '2021_12_01_070139_create_types_table', 1),
(24, '2021_12_01_070512_create_banners_table', 1),
(25, '2021_12_01_130834_create_videos_table', 1),
(26, '2021_12_02_101232_create_notices_table', 1),
(27, '2021_12_04_091955_create_links_table', 1),
(29, '2021_12_15_043505_create_teamcategories_table', 1),
(30, '2021_12_15_061554_create_teamposts_table', 1),
(31, '2021_12_15_064801_create_teamcategory_teampost_table', 1),
(32, '2021_12_18_104815_create_productcategories_table', 1),
(33, '2021_12_18_105320_create_products_table', 1),
(34, '2021_12_18_135640_create_product_productcategory_table', 1),
(35, '2021_12_19_125726_create_servicecategories_table', 1),
(36, '2021_12_20_051328_create_services_table', 1),
(37, '2021_12_20_070308_create_service_servicecategory_table', 1),
(38, '2021_12_20_075654_create_portfoliocategories_table', 1),
(39, '2021_12_20_093442_create_portfolios_table', 1),
(40, '2021_12_21_045526_create_portfolio_portfoliocategory_table', 1),
(41, '2021_12_21_050158_create_pricecategories_table', 1),
(42, '2021_12_21_064427_create_prices_table', 1),
(43, '2021_12_21_100033_create_price_pricecategory_table', 1),
(44, '2021_12_23_071806_create_custompages_table', 1),
(45, '2021_12_23_073236_create_pagebuilders_table', 1),
(49, '2021_11_25_084358_create_frontmenuitems_table', 3),
(50, '2021_12_29_112129_create_navbarsettings_table', 4),
(51, '2021_12_11_114037_create_settings_table', 5),
(52, '2022_01_05_061347_create_contacts_table', 6),
(53, '2022_02_24_095104_create_gallaryimages_table', 7),
(54, '2022_02_26_044142_create_footersettings_table', 8),
(55, '2021_12_26_072146_create_elements_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin Dashboard', '2021-12-23 02:10:52', '2021-12-23 02:10:52'),
(2, 'Role Management', '2021-12-23 02:10:52', '2021-12-23 02:10:52'),
(3, 'User Management', '2021-12-23 02:10:53', '2021-12-23 02:10:53'),
(4, 'Product-Category Management', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(5, 'Product-Post Management', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(6, 'Blog-Category Management', '2021-12-23 02:10:56', '2021-12-23 02:10:56'),
(7, 'Blog-Post Management', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(8, 'Content-Category Management', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(9, 'Content-Post Management', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(10, 'Team-Category Management', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(11, 'Team-Post Management', '2021-12-23 02:11:01', '2021-12-23 02:11:01'),
(12, 'Page Management', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(13, 'Sidebar Management', '2021-12-23 02:11:04', '2021-12-23 02:11:04'),
(14, 'Widget Management', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(15, 'Front Menu Management', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(16, 'Service-Category Management', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(17, 'Service-Post Management', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(18, 'Portfolio-Category Management', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(19, 'Portfolio-Post Management', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(20, 'Price-Category Management', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(21, 'Price-Post Management', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(22, 'Custom-Page Management', '2021-12-23 02:11:13', '2021-12-23 02:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `navbarsettings`
--

CREATE TABLE `navbarsettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `navbar_style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_margin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `right_margin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `container` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navbarsettings`
--

INSERT INTO `navbarsettings` (`id`, `navbar_style`, `text_color`, `background_color`, `left_margin`, `right_margin`, `container`, `created_at`, `updated_at`) VALUES
(1, 'menu2', '#000', '#fff', NULL, NULL, 'container-lg', '2021-12-29 11:54:48', '2022-03-10 00:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagebuilders`
--

CREATE TABLE `pagebuilders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custompage_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one-col',
  `container` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `padding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `margin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bordercolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `border_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `title_show` tinyint(1) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `gallaryimage` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `module_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Access Dashboard', 'app.dashboard', '2021-12-23 02:10:52', '2021-12-23 02:10:52'),
(2, 2, 'View (Global)', 'app.roles.global', '2021-12-23 02:10:52', '2021-12-23 02:10:52'),
(3, 2, 'View (Self)', 'app.roles.self', '2021-12-23 02:10:53', '2021-12-23 02:10:53'),
(4, 2, 'Create Role', 'app.roles.create', '2021-12-23 02:10:53', '2021-12-23 02:10:53'),
(5, 2, 'Edit Role', 'app.roles.edit', '2021-12-23 02:10:53', '2021-12-23 02:10:53'),
(6, 2, 'Delete Role', 'app.roles.destroy', '2021-12-23 02:10:53', '2021-12-23 02:10:53'),
(7, 3, 'View (Global)', 'app.users.global', '2021-12-23 02:10:53', '2021-12-23 02:10:53'),
(8, 3, 'View (Self)', 'app.users.self', '2021-12-23 02:10:53', '2021-12-23 02:10:53'),
(9, 3, 'Create User', 'app.users.create', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(10, 3, 'Edit User', 'app.users.edit', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(11, 3, 'Delete User', 'app.users.destroy', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(12, 4, 'View (Global)', 'app.product.categories.global', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(13, 4, 'View (Self)', 'app.product.categories.self', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(14, 4, 'Create ProductCategory', 'app.product.categories.create', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(15, 4, 'Edit ProductCategory', 'app.product.categories.edit', '2021-12-23 02:10:54', '2021-12-23 02:10:54'),
(16, 4, 'Delete ProductCategory', 'app.product.categories.destroy', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(17, 4, 'Approve ProductCategory', 'app.product.categories.approve', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(18, 5, 'View (Global)', 'app.product.posts.global', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(19, 5, 'View (Self)', 'app.product.posts.self', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(20, 5, 'Create ProductPost', 'app.product.posts.create', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(21, 5, 'Edit ProductPost', 'app.product.posts.edit', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(22, 5, 'Details ProductPost', 'app.product.posts.details', '2021-12-23 02:10:55', '2021-12-23 02:10:55'),
(23, 5, 'Delete ProductPost', 'app.product.posts.destroy', '2021-12-23 02:10:56', '2021-12-23 02:10:56'),
(24, 5, 'Approve ProductPost', 'app.product.posts.status', '2021-12-23 02:10:56', '2021-12-23 02:10:56'),
(25, 5, 'Approve ProductPost', 'app.product.posts.approve', '2021-12-23 02:10:56', '2021-12-23 02:10:56'),
(26, 6, 'View (Global)', 'app.blog.categories.global', '2021-12-23 02:10:56', '2021-12-23 02:10:56'),
(27, 6, 'View (Self)', 'app.blog.categories.self', '2021-12-23 02:10:56', '2021-12-23 02:10:56'),
(28, 6, 'Create BlogCategory', 'app.blog.categories.create', '2021-12-23 02:10:56', '2021-12-23 02:10:56'),
(29, 6, 'Edit BlogCategory', 'app.blog.categories.edit', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(30, 6, 'Delete BlogCategory', 'app.blog.categories.destroy', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(31, 6, 'Approve BlogCategory', 'app.blog.categories.approve', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(32, 7, 'View (Global)', 'app.blog.posts.global', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(33, 7, 'View (Self)', 'app.blog.posts.self', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(34, 7, 'Create BlogPost', 'app.blog.posts.create', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(35, 7, 'Edit BlogPost', 'app.blog.posts.edit', '2021-12-23 02:10:57', '2021-12-23 02:10:57'),
(36, 7, 'Details BlogPost', 'app.blog.posts.details', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(37, 7, 'Delete BlogPost', 'app.blog.posts.destroy', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(38, 7, 'Approve BlogPost', 'app.blog.posts.status', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(39, 7, 'Approve BlogPost', 'app.blog.posts.approve', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(40, 8, 'View (Global)', 'app.content.categories.global', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(41, 8, 'View (Self)', 'app.content.categories.self', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(42, 8, 'Create ContentCategory', 'app.content.categories.create', '2021-12-23 02:10:58', '2021-12-23 02:10:58'),
(43, 8, 'Edit ContentCategory', 'app.content.categories.edit', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(44, 8, 'Delete ContentCategory', 'app.content.categories.destroy', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(45, 8, 'Approve ContentCategory', 'app.content.categories.approve', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(46, 9, 'View (Global)', 'app.content.posts.global', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(47, 9, 'View (Self)', 'app.content.posts.self', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(48, 9, 'Create ContentPost', 'app.content.posts.create', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(49, 9, 'Edit ContentPost', 'app.content.posts.edit', '2021-12-23 02:10:59', '2021-12-23 02:10:59'),
(50, 9, 'Details ContentPost', 'app.content.posts.details', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(51, 9, 'Delete ContentPost', 'app.content.posts.destroy', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(52, 9, 'Approve ContentPost', 'app.content.posts.status', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(53, 9, 'Approve ContentPost', 'app.content.posts.approve', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(54, 10, 'View (Global)', 'app.team.categories.global', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(55, 10, 'View (Self)', 'app.team.categories.self', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(56, 10, 'Create TeamCategory', 'app.team.categories.create', '2021-12-23 02:11:00', '2021-12-23 02:11:00'),
(57, 10, 'Edit TeamCategory', 'app.team.categories.edit', '2021-12-23 02:11:01', '2021-12-23 02:11:01'),
(58, 10, 'Delete TeamCategory', 'app.team.categories.destroy', '2021-12-23 02:11:01', '2021-12-23 02:11:01'),
(59, 10, 'Approve TeamCategory', 'app.team.categories.approve', '2021-12-23 02:11:01', '2021-12-23 02:11:01'),
(60, 11, 'View (Global)', 'app.team.posts.global', '2021-12-23 02:11:01', '2021-12-23 02:11:01'),
(61, 11, 'View (Self)', 'app.team.posts.self', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(62, 11, 'Create TeamPost', 'app.team.posts.create', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(63, 11, 'Edit TeamPost', 'app.team.posts.edit', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(64, 11, 'Details TeamPost', 'app.team.posts.details', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(65, 11, 'Delete TeamPost', 'app.team.posts.destroy', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(66, 11, 'Approve TeamPost', 'app.team.posts.status', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(67, 11, 'Approve TeamPost', 'app.team.posts.approve', '2021-12-23 02:11:02', '2021-12-23 02:11:02'),
(68, 12, 'View (Global)', 'app.pages.global', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(69, 12, 'View (Self)', 'app.pages.self', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(70, 12, 'Create Page', 'app.pages.create', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(71, 12, 'Edit Page', 'app.pages.edit', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(72, 12, 'Details Page', 'app.pages.details', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(73, 12, 'Delete Page', 'app.pages.destroy', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(74, 12, 'Approve Page', 'app.pages.status', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(75, 12, 'Approve Page', 'app.pages.approve', '2021-12-23 02:11:03', '2021-12-23 02:11:03'),
(76, 13, 'View (Global)', 'app.sidebars.global', '2021-12-23 02:11:04', '2021-12-23 02:11:04'),
(77, 13, 'View (Self)', 'app.sidebars.self', '2021-12-23 02:11:04', '2021-12-23 02:11:04'),
(78, 13, 'Create Sidebar', 'app.sidebars.create', '2021-12-23 02:11:04', '2021-12-23 02:11:04'),
(79, 13, 'Edit Sidebar', 'app.sidebars.edit', '2021-12-23 02:11:04', '2021-12-23 02:11:04'),
(80, 13, 'Delete Sidebar', 'app.sidebars.destroy', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(81, 13, 'Approve Sidebar', 'app.sidebars.status', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(82, 13, 'Sidebar Builder', 'app.sidebars.widgetbuilder', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(83, 14, 'View (Global)', 'app.widgets.global', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(84, 14, 'View (Self)', 'app.widgets.self', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(85, 14, 'Create Widget', 'app.widgets.create', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(86, 14, 'Edit Widget', 'app.widgets.edit', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(87, 14, 'Delete Widget', 'app.widgets.destroy', '2021-12-23 02:11:05', '2021-12-23 02:11:05'),
(88, 14, 'Widget Builder', 'app.widgets.widgetbuilder', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(89, 15, 'View (Global)', 'app.front.menus.global', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(90, 15, 'View (Self)', 'app.front.menus.self', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(91, 15, 'Create Frontmenu', 'app.front.menus.create', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(92, 15, 'Edit Frontmenu', 'app.front.menus.edit', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(93, 15, 'Delete Frontmenu', 'app.front.menus.destroy', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(94, 15, 'Approve Frontmenu', 'app.front.menus.status', '2021-12-23 02:11:06', '2021-12-23 02:11:06'),
(95, 15, 'Menu Builder', 'app.front.menus.widgetbuilder', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(96, 14, 'View (Global)', 'app.front.menuitems.global', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(97, 14, 'View (Self)', 'app.front.menuitems.self', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(98, 14, 'Create Frontmenuitem', 'app.front.menuitems.create', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(99, 14, 'Edit Frontmenuitem', 'app.front.menuitems.edit', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(100, 14, 'Delete Frontmenuitem', 'app.front.menuitems.destroy', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(101, 14, 'menuitem Builder', 'app.front.menuitems.widgetbuilder', '2021-12-23 02:11:07', '2021-12-23 02:11:07'),
(102, 16, 'View (Global)', 'app.service.categories.global', '2021-12-23 02:11:08', '2021-12-23 02:11:08'),
(103, 16, 'View (Self)', 'app.service.categories.self', '2021-12-23 02:11:08', '2021-12-23 02:11:08'),
(104, 16, 'Create ServiceCategory', 'app.service.categories.create', '2021-12-23 02:11:08', '2021-12-23 02:11:08'),
(105, 16, 'Edit ServiceCategory', 'app.service.categories.edit', '2021-12-23 02:11:08', '2021-12-23 02:11:08'),
(106, 16, 'Delete ServiceCategory', 'app.service.categories.destroy', '2021-12-23 02:11:08', '2021-12-23 02:11:08'),
(107, 16, 'Approve ServiceCategory', 'app.service.categories.approve', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(108, 17, 'View (Global)', 'app.service.posts.global', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(109, 17, 'View (Self)', 'app.service.posts.self', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(110, 17, 'Create ServicePost', 'app.service.posts.create', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(111, 17, 'Edit ServicePost', 'app.service.posts.edit', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(112, 17, 'Delete ServicePost', 'app.service.posts.destroy', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(113, 17, 'Approve ServicePost', 'app.service.posts.status', '2021-12-23 02:11:09', '2021-12-23 02:11:09'),
(114, 17, 'Approve ServicePost', 'app.service.posts.approve', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(115, 18, 'View (Global)', 'app.portfolio.categories.global', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(116, 18, 'View (Self)', 'app.portfolio.categories.self', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(117, 18, 'Create PortfolioCategory', 'app.portfolio.categories.create', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(118, 18, 'Edit PortfolioCategory', 'app.portfolio.categories.edit', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(119, 18, 'Delete PortfolioCategory', 'app.portfolio.categories.destroy', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(120, 18, 'Approve PortfolioCategory', 'app.portfolio.categories.approve', '2021-12-23 02:11:10', '2021-12-23 02:11:10'),
(121, 19, 'View (Global)', 'app.portfolio.posts.global', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(122, 19, 'View (Self)', 'app.portfolio.posts.self', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(123, 19, 'Create PortfolioPost', 'app.portfolio.posts.create', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(124, 19, 'Edit PortfolioPost', 'app.portfolio.posts.edit', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(125, 19, 'Delete PortfolioPost', 'app.portfolio.posts.destroy', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(126, 19, 'Approve PortfolioPost', 'app.portfolio.posts.status', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(127, 19, 'Approve PortfolioPost', 'app.portfolio.posts.approve', '2021-12-23 02:11:11', '2021-12-23 02:11:11'),
(128, 20, 'View (Global)', 'app.price.categories.global', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(129, 20, 'View (Self)', 'app.price.categories.self', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(130, 20, 'Create PriceCategory', 'app.price.categories.create', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(131, 20, 'Edit PriceCategory', 'app.price.categories.edit', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(132, 20, 'Delete PriceCategory', 'app.price.categories.destroy', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(133, 20, 'Approve PriceCategory', 'app.price.categories.approve', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(134, 21, 'View (Global)', 'app.price.posts.global', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(135, 21, 'View (Self)', 'app.price.posts.self', '2021-12-23 02:11:12', '2021-12-23 02:11:12'),
(136, 21, 'Create PricePost', 'app.price.posts.create', '2021-12-23 02:11:13', '2021-12-23 02:11:13'),
(137, 21, 'Edit PricePost', 'app.price.posts.edit', '2021-12-23 02:11:13', '2021-12-23 02:11:13'),
(138, 21, 'Delete PricePost', 'app.price.posts.destroy', '2021-12-23 02:11:13', '2021-12-23 02:11:13'),
(139, 21, 'Approve PricePost', 'app.price.posts.status', '2021-12-23 02:11:13', '2021-12-23 02:11:13'),
(140, 21, 'Approve PricePost', 'app.price.posts.approve', '2021-12-23 02:11:13', '2021-12-23 02:11:13'),
(141, 22, 'View (Global)', 'app.custom.pages.global', '2021-12-23 02:11:13', '2021-12-23 02:11:13'),
(142, 22, 'View (Self)', 'app.custom.pages.self', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(143, 22, 'Create Custompage', 'app.custom.pages.create', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(144, 22, 'Edit Custompage', 'app.custom.pages.edit', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(145, 22, 'Delete Custompage', 'app.custom.pages.destroy', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(146, 22, 'Approve Custompage', 'app.custom.pages.status', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(147, 14, 'View (Global)', 'app.build.pages.global', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(148, 14, 'View (Self)', 'app.build.pages.self', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(149, 14, 'Create Pagebuilder', 'app.build.pages.create', '2021-12-23 02:11:14', '2021-12-23 02:11:14'),
(150, 14, 'Edit Pagebuilder', 'app.build.pages.edit', '2021-12-23 02:11:15', '2021-12-23 02:11:15'),
(151, 14, 'Delete Pagebuilder', 'app.build.pages.destroy', '2021-12-23 02:11:15', '2021-12-23 02:11:15'),
(152, 14, 'Pagebuilder', 'app.build.pages.pagebuilder', '2021-12-23 02:11:15', '2021-12-23 02:11:15');

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

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 31, 1, NULL, NULL),
(35, 35, 1, NULL, NULL),
(36, 36, 1, NULL, NULL),
(37, 37, 1, NULL, NULL),
(38, 38, 1, NULL, NULL),
(39, 39, 1, NULL, NULL),
(41, 41, 1, NULL, NULL),
(42, 42, 1, NULL, NULL),
(43, 43, 1, NULL, NULL),
(44, 44, 1, NULL, NULL),
(45, 45, 1, NULL, NULL),
(47, 47, 1, NULL, NULL),
(49, 49, 1, NULL, NULL),
(50, 50, 1, NULL, NULL),
(51, 51, 1, NULL, NULL),
(52, 52, 1, NULL, NULL),
(53, 53, 1, NULL, NULL),
(54, 54, 1, NULL, NULL),
(55, 55, 1, NULL, NULL),
(56, 56, 1, NULL, NULL),
(57, 57, 1, NULL, NULL),
(58, 58, 1, NULL, NULL),
(59, 59, 1, NULL, NULL),
(60, 60, 1, NULL, NULL),
(61, 61, 1, NULL, NULL),
(62, 62, 1, NULL, NULL),
(63, 63, 1, NULL, NULL),
(64, 64, 1, NULL, NULL),
(65, 65, 1, NULL, NULL),
(66, 66, 1, NULL, NULL),
(67, 67, 1, NULL, NULL),
(68, 68, 1, NULL, NULL),
(69, 69, 1, NULL, NULL),
(70, 70, 1, NULL, NULL),
(71, 71, 1, NULL, NULL),
(72, 72, 1, NULL, NULL),
(73, 73, 1, NULL, NULL),
(74, 74, 1, NULL, NULL),
(75, 75, 1, NULL, NULL),
(76, 76, 1, NULL, NULL),
(77, 77, 1, NULL, NULL),
(78, 78, 1, NULL, NULL),
(79, 79, 1, NULL, NULL),
(80, 80, 1, NULL, NULL),
(81, 81, 1, NULL, NULL),
(82, 82, 1, NULL, NULL),
(83, 83, 1, NULL, NULL),
(84, 84, 1, NULL, NULL),
(85, 85, 1, NULL, NULL),
(86, 86, 1, NULL, NULL),
(87, 87, 1, NULL, NULL),
(88, 88, 1, NULL, NULL),
(89, 89, 1, NULL, NULL),
(90, 90, 1, NULL, NULL),
(91, 91, 1, NULL, NULL),
(92, 92, 1, NULL, NULL),
(93, 93, 1, NULL, NULL),
(94, 94, 1, NULL, NULL),
(95, 95, 1, NULL, NULL),
(96, 96, 1, NULL, NULL),
(97, 97, 1, NULL, NULL),
(98, 98, 1, NULL, NULL),
(99, 99, 1, NULL, NULL),
(100, 100, 1, NULL, NULL),
(101, 101, 1, NULL, NULL),
(102, 102, 1, NULL, NULL),
(103, 103, 1, NULL, NULL),
(104, 104, 1, NULL, NULL),
(105, 105, 1, NULL, NULL),
(106, 106, 1, NULL, NULL),
(107, 107, 1, NULL, NULL),
(108, 108, 1, NULL, NULL),
(109, 109, 1, NULL, NULL),
(110, 110, 1, NULL, NULL),
(111, 111, 1, NULL, NULL),
(112, 112, 1, NULL, NULL),
(113, 113, 1, NULL, NULL),
(114, 114, 1, NULL, NULL),
(115, 115, 1, NULL, NULL),
(116, 116, 1, NULL, NULL),
(117, 117, 1, NULL, NULL),
(118, 118, 1, NULL, NULL),
(119, 119, 1, NULL, NULL),
(120, 120, 1, NULL, NULL),
(121, 121, 1, NULL, NULL),
(122, 122, 1, NULL, NULL),
(123, 123, 1, NULL, NULL),
(124, 124, 1, NULL, NULL),
(125, 125, 1, NULL, NULL),
(126, 126, 1, NULL, NULL),
(127, 127, 1, NULL, NULL),
(128, 128, 1, NULL, NULL),
(129, 129, 1, NULL, NULL),
(130, 130, 1, NULL, NULL),
(131, 131, 1, NULL, NULL),
(132, 132, 1, NULL, NULL),
(133, 133, 1, NULL, NULL),
(134, 134, 1, NULL, NULL),
(135, 135, 1, NULL, NULL),
(136, 136, 1, NULL, NULL),
(137, 137, 1, NULL, NULL),
(138, 138, 1, NULL, NULL),
(139, 139, 1, NULL, NULL),
(140, 140, 1, NULL, NULL),
(141, 141, 1, NULL, NULL),
(142, 142, 1, NULL, NULL),
(143, 143, 1, NULL, NULL),
(144, 144, 1, NULL, NULL),
(145, 145, 1, NULL, NULL),
(146, 146, 1, NULL, NULL),
(147, 147, 1, NULL, NULL),
(148, 148, 1, NULL, NULL),
(149, 149, 1, NULL, NULL),
(150, 150, 1, NULL, NULL),
(151, 151, 1, NULL, NULL),
(152, 152, 1, NULL, NULL),
(153, 1, 2, NULL, NULL),
(157, 27, 1, NULL, NULL),
(158, 28, 1, NULL, NULL),
(161, 33, 1, NULL, NULL),
(162, 34, 1, NULL, NULL),
(163, 32, 1, NULL, NULL),
(165, 12, 1, NULL, NULL),
(166, 18, 1, NULL, NULL),
(167, 19, 1, NULL, NULL),
(168, 40, 1, NULL, NULL),
(169, 46, 1, NULL, NULL),
(170, 48, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfoliocategories`
--

CREATE TABLE `portfoliocategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfoliocategories`
--

INSERT INTO `portfoliocategories` (`id`, `name`, `slug`, `image`, `desc`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Locked Steel Gate', 'locked-steel-gate', 'ac-manager-2021-12-27-61c9b0bd9d2e7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.', 0, 1, '2021-12-27 06:25:33', '2022-01-02 13:45:50'),
(2, 'Open Imagination', 'open-imagination', 'open-imagination-2022-01-02-61d20118b7ccd.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.', 0, 1, '2021-12-27 06:25:33', '2022-01-02 13:46:33'),
(3, 'Mac Sunglasses', 'mac-sunglasses', 'mac-sunglasses-2022-01-02-61d2012bcd30e.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.', 0, 1, '2021-12-27 06:25:33', '2022-01-02 13:46:52'),
(9, 'Morning Dew', 'morning-dew', 'morning-dew-2022-01-02-61d2013f09e3b.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, quaerat beatae nulla debitis vitae temporibus enim sed. Optio, reprehenderit, ex.', 0, 1, '2022-01-02 13:47:11', '2022-01-02 13:47:11'),
(10, 'Console Activity', 'console-activity', 'console-activity-2022-01-02-61d20279bb9d3.png', 'df', 0, 1, '2022-01-02 13:52:25', '2022-01-02 13:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `gallaryimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `admin_id`, `title`, `slug`, `image`, `gallaryimage`, `body`, `files`, `view_count`, `status`, `is_approved`, `rightsidebar_id`, `leftsidebar_id`, `meta_title`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 1, '‘মার্চ-এপ্রিলে দেশে ওমিক্রনের সংক্রমণ ছড়িয়ে পড়তে পারে’', NULL, 'marc-eprile-dese-oomikrner-sngkrmn-chriye-prte-pare-2022-03-10-6229d4e17cccf.gif', 'test--61d13a8fe4cdf.jpg|test--61d13a90040ff.jpg|test--61d13a9014128.jpg', '<p><strong>স্বাস্থ্য অধিদপ্তরের মহাপরিচালক অধ্যাপক আবুল বাশার মোহাম্মদ খুরশীদ আলম জানিয়েছেন, আগামী মার্চ-এপ্রিলে&nbsp;করোনাভাইরাসের ওমিক্রন ভ্যারিয়েন্ট দেশে বড় ধরনের সংক্রমণ ঘটাতে পারে।</strong></p>\r\n\r\n<p>আজ সোমবার বিকেলে মোহাম্মদ খুরশীদ আলম তার কার্যালয়ে সাংবাদিকদের সঙ্গে আলাপকালে এ তথ্য জানান।</p>\r\n\r\n<p>তিনি আরও বলেন, &#39;আমরা ধারণা করছি মার্চ থেকে এপ্রিল মাসের মধ্যে সংক্রমণ বাড়তে পারে। এ কারণে, আমরা সারা দেশের হাসপাতালগুলোর সক্ষমতা জোরদারের জন্য কাজ করছি।&#39;</p>\r\n\r\n<p>গত বছরের জুন-জুলাইয়ে ডেল্টা ভেরিয়েন্টের সংক্রমণ সর্বোচ্চ পর্যায়ের পৌঁছালে চাহিদার তুলনায় অক্সিজেনের সরবরাহ কম ছিল উল্লেখ করে তিনি বলেন, &#39;বর্তমানে ৪০টি হাসপাতালে অক্সিজেন জেনারেটর স্থাপনের কাজ শেষ পর্যায়ে রয়েছে।&#39;</p>\r\n\r\n<p>&#39;আমরা এই ৪০টি ছাড়াও বিভিন্ন উৎস থেকে আরও কিছু অক্সিজেন জেনারেটর স্থাপন করতে সক্ষম হয়েছি&#39;, বলেও জানান অধ্যাপক খুরশীদ। তবে তিনি সঠিক সংখ্যাটি&nbsp;জানাননি।</p>', NULL, 0, 1, 1, 0, 0, NULL, NULL, '2022-01-01 23:39:28', '2022-03-10 04:37:21'),
(2, 1, 'Diversity and nuance mark the Bangladeshi experience in Sohana Manzoor\'s \'Our Many Longings: Contemporary Short Fiction From Bangladesh\'', NULL, 'diversity-and-nuance-mark-the-bangladeshi-experience-in-sohana-manzoors-our-many-longings-contemporary-short-fiction-from-bangladesh-2022-03-10-6229d6cc5dbb1.jpg', '', '<p>So many words have been used to describe this nation in the last 50 years. Started from a bottomless basket, and along the way we&#39;ve been called resilient, passionate, corrupt, greedy, full of warmth. &quot;Precocious&quot; is a personal favourite&mdash;it is the adjective that always comes to mind when I think about my city and my country, a word I used to describe&nbsp;<a href=\"https://www.thedailystar.net/daily-star-books/news/tender-discerning-look-where-we-are-now-2145306\"><em>Golden: Bangladesh at 50</em></a>&nbsp;(UPL, 2021), one of the other short story anthologies on Bangladesh published this year. In&nbsp;<a href=\"https://www.thedailystar.net/book-reviews/news/creating-appetite-bangladeshi-fiction-2085713\"><em>The Demoness: Best Bangladeshi Short Stories, 1971-2021</em></a>&nbsp;(Aleph Book Company, 2021) and&nbsp;<a href=\"https://www.thedailystar.net/daily-star-books/news/hefty-fifty-when-the-mango-tree-blossomed-and-other-short-stories-bangladesh-2918851\"><em>When The Mango Tree Blossomed</em>&nbsp;</a>(Nymphea Publications, 2021), critic, translator and academic Dr Niaz Zaman takes the more holistic route of curating a vast collection of stories that each reflect a different class, culture, temperament, and generational experience of being Bangladeshi. In&nbsp;<em>Our Many Longings: Contemporary Short Fiction From Bangladesh</em>&nbsp;(Dhauli Books, 2021), editor, translator, and academic Dr Sohana Manzoor settles on yet another emotion that so accurately describes what it feels like to be Bangladeshi. In 19 short stories, the book&#39;s authors and translators remind us of how, and how so very deeply, we&nbsp;<em>long&nbsp;</em>for things.</p>\r\n\r\n<p>What do we long for?</p>\r\n\r\n<h4><a href=\"https://news.google.com/publications/CAAiECW73usLivqPCSeQRsSUvRQqFAgKIhAlu97rC4r6jwknkEbElL0U\"><img src=\"https://www.thedailystar.net/sites/all/themes/tds/images/google_news.svg\" />For all latest news, follow The Daily Star&#39;s Google News channel.</a></h4>\r\n\r\n<p>Freedom. Kindness. Justice. Acceptance. In Farah Ghuznavi&#39;s &quot;First Love, Second Chances&quot;, childhood memories and mothball fragrances of young love sit alongside the grace and clarity brought about by adulthood. I once asked the author, half in jest and half in fear, how she chanced upon this story in her mind, so real does it feel to anyone who has experienced meaningful connections in their life. Fayeza Hasanat&#39;s &quot;Frank and Frida&quot; plays with a similar lightness of tone as it revisits life altering encounters. But it goes a step further with its nods to how Bangladeshi women are made to be exotic in the Western world and are mixed up carelessly with women from India. If the dissection of this Western gaze feels less than precise, this is made up for by the author&#39;s trick in the climax&mdash;she reminds us gently, but with a tinge of mischief, that the lines dividing characters, protagonists, and narrators are etched as though on sand.</p>\r\n\r\n<p>Have we achieved all that we longed for?</p>', NULL, 0, 1, 1, 0, 0, NULL, NULL, '2022-01-02 00:01:44', '2022-03-10 04:45:32'),
(3, 1, 'Revisiting Hogwarts: Harry Potter\'s 20th Anniversary', NULL, 'revisiting-hogwarts-harry-potters-20th-anniversary-2022-03-10-6229d6e08b1ca.png', '', '<p>2001. That&#39;s the year the first&nbsp;<em>Harry Potter</em>&nbsp;(HP) movie came out.&nbsp; If someone knew me some 15 odd years back, they would&#39;ve met a child who was absolutely obsessed with&nbsp;<em>Harry Potter</em>. However, if they fell through some hole in time and encountered me in the present, they would be baffled over how much I loathe the series now. Putting aside the antics of one Joanne Kathleen Rowling, it&#39;s hard to retain that childhood excitement and enthusiasm that I once had for Harry Potter.</p>\r\n\r\n<p>When I heard that the cast of Harry Potter was having a reunion on HBO Max, though, I was intrigued as to the direction the project would take. When the trailer was released, I had only hoped that there would be ZERO screen-time for Rowling, and the special somewhat lives up to that. Rowling is only given screen-time using excerpts from old interviews and that was a compromise I was willing to make.</p>\r\n\r\n<h4><a href=\"https://news.google.com/publications/CAAiECW73usLivqPCSeQRsSUvRQqFAgKIhAlu97rC4r6jwknkEbElL0U\"><img src=\"https://www.thedailystar.net/sites/all/themes/tds/images/google_news.svg\" />For all latest news, follow The Daily Star&#39;s Google News channel.</a></h4>\r\n\r\n<p>But, aside from this one point of contention, the nearly two-hour-long special felt like being splashed in the face with a potion that induces nostalgia. I really didn&#39;t think I still had warm feelings left to give back to the series, and yet here I was, reminiscing about different parts of my childhood corresponding with all the times I was reading HP.&nbsp;</p>', NULL, 0, 1, 1, 0, 0, NULL, NULL, '2022-01-02 00:02:18', '2022-03-10 04:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_portfoliocategory`
--

CREATE TABLE `portfolio_portfoliocategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` bigint(20) UNSIGNED NOT NULL,
  `portfoliocategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_portfoliocategory`
--

INSERT INTO `portfolio_portfoliocategory` (`id`, `portfolio_id`, `portfoliocategory_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallaryimage` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `title_show` tinyint(1) DEFAULT NULL,
  `scrollable` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `admin_id`, `title`, `slug`, `image`, `youtube_link`, `gallaryimage`, `body`, `view_count`, `status`, `title_show`, `scrollable`, `is_approved`, `rightsidebar_id`, `leftsidebar_id`, `files`, `created_at`, `updated_at`) VALUES
(28, 1, 'test', 'test', 'test-2022-03-31-6245686271cdf.jpeg', NULL, '', '<p>wer</p>', 0, 1, 1, 0, 1, NULL, NULL, NULL, '2022-03-31 02:37:54', '2022-03-31 02:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `pricecategories`
--

CREATE TABLE `pricecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricecategories`
--

INSERT INTO `pricecategories` (`id`, `name`, `slug`, `image`, `desc`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Himel Ryhan', 'himel-ryhan', 'himel-ryhan-2021-12-27-61c98ee23a223.png', 'gdfg', 0, 1, '2021-12-27 04:01:06', '2021-12-27 04:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `admin_id`, `title`, `slug`, `image`, `body`, `price`, `duration`, `view_count`, `status`, `is_approved`, `rightsidebar_id`, `leftsidebar_id`, `meta_title`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'Professional', NULL, NULL, '<ul>\r\n	<li><strong>Premium</strong>Plugins</li>\r\n	<li><strong>SEO</strong>Features</li>\r\n	<li><strong>Full</strong>Access</li>\r\n	<li><strong>100</strong>User Accounts</li>\r\n	<li><strong>1 Year</strong>License</li>\r\n	<li><strong>24/7</strong>Support</li>\r\n</ul>', '200', 'Monthly', 0, 1, 1, 0, 0, NULL, NULL, '2022-01-02 06:24:05', '2022-01-02 06:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `price_pricecategory`
--

CREATE TABLE `price_pricecategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL,
  `pricecategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_pricecategory`
--

INSERT INTO `price_pricecategory` (`id`, `price_id`, `pricecategory_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leftsidebar_id` int(11) NOT NULL,
  `rightsidebar_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`id`, `name`, `slug`, `parent_id`, `image`, `desc`, `leftsidebar_id`, `rightsidebar_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product 2', 'product-2', 0, 'product-2-2022-01-04-61d410b7af042.jpg', 'fdg', 0, 0, 1, '2022-01-04 03:17:44', '2022-01-04 03:17:44'),
(2, 'Himel Ryhan', 'himel-ryhan', 0, 'himel-ryhan-2022-01-04-61d410c41c402.jpg', NULL, 0, 0, 1, '2022-01-04 03:17:56', '2022-01-04 03:17:56'),
(3, 'Ac Manager', 'ac-manager', 0, 'ac-manager-2022-01-04-61d410cf3e4c6.jpg', NULL, 0, 0, 1, '2022-01-04 03:18:07', '2022-01-04 03:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_startdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_enddate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `youtube_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallaryimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `scrollable` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `low_stock_qty` int(11) DEFAULT NULL,
  `cash_on_delivery` tinyint(1) DEFAULT NULL,
  `todays_deal` tinyint(1) DEFAULT NULL,
  `estimate_shipping_time` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `admin_id`, `title`, `slug`, `unit`, `purchase_qty`, `tags`, `unit_price`, `discount_startdate`, `discount_enddate`, `discount_rate`, `discount_type`, `quantity`, `sku`, `image`, `youtube_link`, `gallaryimage`, `desc`, `tax`, `tax_type`, `view_count`, `status`, `scrollable`, `is_approved`, `rightsidebar_id`, `leftsidebar_id`, `files`, `shipping`, `low_stock_qty`, `cash_on_delivery`, `todays_deal`, `estimate_shipping_time`, `meta_title`, `meta_desc`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'test', NULL, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, 'test-2022-01-04-61d410f0bbfdc.jpg', NULL, '', '<p>dfsetr</p>', NULL, NULL, 0, 1, 0, 1, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-04 03:18:41', '2022-01-04 03:18:41'),
(2, 1, 'testt22', 'testt22', NULL, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, 'testt22-2022-01-04-61d4115a66cda.jpg', NULL, '', '<p>srttst</p>', NULL, NULL, 0, 1, 0, 1, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-04 03:20:26', '2022-01-04 03:20:26'),
(3, 1, 'estreee', 'estreee', NULL, NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, 'estreee-2022-01-04-61d4116e5a626.jpg', NULL, '', '<p>dfbdfbf</p>', NULL, NULL, 0, 1, 0, 1, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-04 03:20:46', '2022-01-04 03:20:46'),
(4, 1, 'hemel', 'hemel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hemel-2022-01-04-61d41181cbf0e.jpg', NULL, '', '<p>gmk</p>', NULL, NULL, 0, 1, 0, 1, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2022-01-04 03:21:06', '2022-01-04 03:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_productcategory`
--

CREATE TABLE `product_productcategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `productcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_productcategory`
--

INSERT INTO `product_productcategory` (`id`, `product_id`, `productcategory_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `deletable`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 0, '2021-12-23 02:11:15', '2021-12-23 02:11:15'),
(2, 'User', 'user', 0, '2021-12-23 02:11:34', '2021-12-23 02:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `servicecategories`
--

CREATE TABLE `servicecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `servicecategories`
--

INSERT INTO `servicecategories` (`id`, `name`, `slug`, `image`, `desc`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(7, 'main service', 'main-service', 'e-commerce-solutions-2022-01-02-61d1fddf9f779.jpg', 'Start your Own Shop today', 0, 1, '2022-01-02 13:32:48', '2022-03-12 01:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rightsidebar_id` int(11) DEFAULT NULL,
  `leftsidebar_id` int(11) DEFAULT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `admin_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `rightsidebar_id`, `leftsidebar_id`, `order`, `meta_title`, `meta_desc`, `created_at`, `updated_at`) VALUES
(2, 1, 'SOFTWARE  TESTING', 'software-testing', 'software-testing-2022-03-12-622c52a5b208d.jpg', '<h1>Our Services In testing&nbsp; and DevOps</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>We integrate development and QA so you can reduce costs and time-to-market while building a product that is functional, scalable and secure. Then, we will stay on board to help you roll out cool new features and integrations, and increase your user base.</h3>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/agile1tech_usa/public/filemanager/uploads/test-1024x385-800x300.jpg\" style=\"height:384px; width:1024px\" /></p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-6\">\r\n<ul>\r\n	<li>A robust and flexible back-end</li>\r\n	<li>Enterprise-grade information security</li>\r\n	<li>DevOps-powered continuous delivery process</li>\r\n	<li>A fully-fledged automation framework for the web, mobile, and API testing</li>\r\n	<li>End-to-end manual testing, including functional, integratio</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-6\">\r\n<p><img alt=\"\" src=\"http://localhost/agile1tech_usa/public/filemanager/uploads/paper-3154814_1920-1024x624-350x213.jpg\" style=\"height:243px; width:400px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost/agile1tech_usa/public/filemanager/uploads/services_banner-1024x416-350x142.png\" style=\"height:162px; width:400px\" /></p>\r\n</div>\r\n</div>', 0, 1, 1, 0, 0, NULL, NULL, NULL, '2022-01-02 05:52:16', '2022-03-12 06:08:29'),
(4, 1, 'CYBER  SECURITY', 'cyber-security', 'cyber-security-2022-03-12-622c539e688eb.jpeg', NULL, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2022-03-12 02:02:38', '2022-03-12 02:02:38'),
(5, 1, 'CLOUD  COMPUTING', 'cloud-computing', 'cloud-computing-2022-03-12-622c54711c522.jpg', NULL, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-03-12 02:06:09', '2022-03-12 02:06:09'),
(6, 1, 'SOFTWARE  DEVELOPMENT', 'software-development', 'software-development-2022-03-12-622c54b3c38ca.png', '<p><strong>We offer custom software development and consulting services to help you pull off your next project with less stress and less cost. Our team has the technical prowess to power you at every stage of your product development lifecycle, from discovery to ongoing post-launch enhancement. We marry engineering and QA so you can reduce costs and time-to-market while building a product that is functional, scalable and secure. Then, we will stay on board to help you roll out cool new features and integrations, and increase your user base. We absorb your requirements and build a trusted, visually rich user-product relationship to boost adoption and satisfaction. Our front-end team takes it from there to nail that ultimate user journey in code.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A robust and flexible back-en</strong></p>\r\n\r\n<p><strong>Enterprise-grade information security</strong></p>\r\n\r\n<p><strong>DevOps-powered continuous delivery process</strong></p>\r\n\r\n<p><strong>A fully-fledged automation framework for the web, mobile, and API testing</strong></p>\r\n\r\n<p><strong>End-to-end manual testing, including functional, integration and UI</strong></p>', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-03-12 02:07:16', '2022-03-12 06:45:43'),
(7, 1, 'PROJECT  MANAGEMENT', 'project-management', 'project-management-2022-03-12-622c559acc60e.png', '<div class=\"row\">\r\n<div class=\"col-6\">\r\n<p><img alt=\"\" src=\"http://localhost/agile1tech_usa/public/filemanager/uploads/project-1024x683.jpg\" style=\"height:300px; width:500px\" /></p>\r\n</div>\r\n\r\n<div class=\"col-6\">\r\n<p><strong>Streamline your operations and reduce costs with our project management services.</strong></p>\r\n\r\n<p><strong>We have experience working with companies across North America in most industries on small- to large-scale projects. Through the years, we have amassed a collection of resources that enable us to tackle any project&mdash;regardless of complexity and scale. We have the flexibility to help you plan, develop, implement and manage an array of initiatives.</strong></p>\r\n\r\n<p><strong>Of course, it all starts with finding and deploying the ideal talent&mdash;both internally and externally&mdash;with the proper skill sets. With our deep pool of tech professionals and consultants, that&rsquo;s where we excel most.</strong></p>\r\n</div>\r\n</div>\r\n\r\n<h1><strong>&nbsp;</strong><strong>Some of our specific project management staffing services include:</strong></h1>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-6\">\r\n<ul>\r\n	<li>\r\n	<h3>PMI CERTIFIED CONSULTANTS</h3>\r\n	</li>\r\n	<li>\r\n	<h3>RATIONAL UNIFIED PROCESS</h3>\r\n	</li>\r\n	<li>\r\n	<h3>CUSTOM METHODOLOGIES</h3>\r\n	</li>\r\n	<li>\r\n	<h3>PROJECT CYCLE MANAGEMENT</h3>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-6\">\r\n<ul>\r\n	<li>\r\n	<h3>CONFLICT MANAGEMENT</h3>\r\n	</li>\r\n	<li>\r\n	<h3>TEAM BUILDING</h3>\r\n	</li>\r\n	<li>\r\n	<h3>ORGANIZATIONAL CHANGE MANAGEMENT</h3>\r\n	</li>\r\n	<li>\r\n	<h3>FACILITATION SERVICES</h3>\r\n	</li>\r\n	<li>\r\n	<h3>TECHNICAL COMMUNICATION AND SUPPORT</h3>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '2022-03-12 02:11:07', '2022-03-12 06:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `service_servicecategory`
--

CREATE TABLE `service_servicecategory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `servicecategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_servicecategory`
--

INSERT INTO `service_servicecategory` (`id`, `service_id`, `servicecategory_id`, `created_at`, `updated_at`) VALUES
(3, 2, 7, NULL, NULL),
(4, 4, 7, NULL, NULL),
(5, 5, 7, NULL, NULL),
(6, 6, 7, NULL, NULL),
(7, 7, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preloader_status` tinyint(11) DEFAULT NULL,
  `MAIL_MAILER` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_HOST` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_PORT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_USERNAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_PASSWORD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_ENCRYPTION` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_FROM_ADDRESS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MAIL_FROM_NAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `company_name`, `company_slogan`, `phone`, `email`, `facebook_link`, `contact`, `preloader_status`, `MAIL_MAILER`, `MAIL_HOST`, `MAIL_PORT`, `MAIL_USERNAME`, `MAIL_PASSWORD`, `MAIL_ENCRYPTION`, `MAIL_FROM_ADDRESS`, `MAIL_FROM_NAME`, `created_at`, `updated_at`) VALUES
(1, '2022-03-10-622990e60b394.png', 'Kodepress', 'Copyrights©2022 Agile1Tech Corp. All rights reserved.', NULL, NULL, 'test', NULL, 1, 'smtp', 'smtp.gmail.com', '587', 'datahostbd2017@gmail.com', 'Datahost@2019', 'tls', 'datahostbd2017@gmail.com', '\"${APP_NAME}\"', NULL, '2022-04-08 23:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `sidebars`
--

CREATE TABLE `sidebars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sidebars`
--

INSERT INTO `sidebars` (`id`, `title`, `status`, `type`, `created_at`, `updated_at`) VALUES
(4, 'test', 1, 'Right Side Bar', '2022-02-17 04:05:32', '2022-02-17 04:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `container` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `height`, `container`, `width`, `text_color`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st slider', '70', 'container-lg', '70', '#000', 1, '2021-12-29 03:01:46', '2022-03-07 04:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slideimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slider_id`, `title`, `type`, `url`, `content`, `slideimage`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, NULL, 'main-Slide', NULL, '<h2>Brand New Arrivals</h2>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p>NEW COLLECTION FROM COLOMBIA</p>', '-6225dbf1ded13.jpg', 1, '2022-02-27 01:50:42', '2022-03-07 04:19:00'),
(5, 1, NULL, 'main-Slide', NULL, '<h2 style=\"color: #f00099;\">Colombia Fashion</h2>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p style=\"color: #f00099;\">We Are Providing Quality Product With &quot;0&quot; Tolerance</p>', '-6225dbfcacd92.jpg', 1, '2022-02-27 01:51:02', '2022-03-07 04:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `teamcategories`
--

CREATE TABLE `teamcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teamcategory_teampost`
--

CREATE TABLE `teamcategory_teampost` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teampost_id` bigint(20) UNSIGNED NOT NULL,
  `teamcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teamposts`
--

CREATE TABLE `teamposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `deletable`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'author', 'author@gmail.com', NULL, '$2y$10$n2DQ/eIwbctmzdor12CwrOWriT11X2lrqPSQFaEBYZlzwxGEH8dCu', 0, NULL, '2021-12-23 02:11:35', '2021-12-23 02:11:35'),
(2, 1, 'Samsung', 'hemel.1997@gmail.com', NULL, '$2y$10$yKVNE/rVjU18NNzPKCMqC.i6t2SEIyUCgMErAMLY/.3JpH7J7j9We', 1, NULL, '2022-04-10 03:53:38', '2022-04-10 03:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sidebar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `no_of_post` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallary_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `sidebar_id`, `category_id`, `no_of_post`, `title`, `body`, `status`, `type`, `image`, `gallary_image`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 3, '23', NULL, NULL, 'Recent Post', NULL, NULL, NULL, '2021-12-23 05:46:28', '2021-12-23 05:46:28'),
(2, 2, 0, 4, 'recent post', NULL, NULL, 'Recent Post', NULL, NULL, NULL, '2021-12-28 05:11:57', '2021-12-28 06:13:38'),
(3, 2, 1, 2, 'Blog Category', NULL, NULL, 'Blog Category', NULL, NULL, NULL, '2021-12-28 06:14:47', '2021-12-28 06:14:47'),
(4, 3, 0, 2, 'test', NULL, NULL, 'Recent Post', NULL, NULL, NULL, '2021-12-28 06:16:07', '2021-12-28 06:16:07'),
(5, 3, 0, NULL, 'image', '<p>trerfwr wrgwtg rwt 4w4t rt4rt t rt thr xdsfg gw4tyt ggww wg</p>', NULL, 'Image Widget', 'image-2021-12-28-61cb0076743c3.jpg', NULL, NULL, '2021-12-28 06:17:58', '2021-12-28 06:17:58'),
(6, 4, 18, 4, 'test', NULL, NULL, 'Blog Category', NULL, NULL, NULL, '2022-02-17 04:05:55', '2022-03-29 02:47:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contentcategories`
--
ALTER TABLE `contentcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contentcategory_contentpost`
--
ALTER TABLE `contentcategory_contentpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contentcategory_contentpost_contentpost_id_foreign` (`contentpost_id`),
  ADD KEY `contentcategory_contentpost_contentcategory_id_foreign` (`contentcategory_id`);

--
-- Indexes for table `contentposts`
--
ALTER TABLE `contentposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contentposts_slug_unique` (`slug`),
  ADD KEY `contentposts_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `custompages`
--
ALTER TABLE `custompages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footersettings`
--
ALTER TABLE `footersettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontmenuitems`
--
ALTER TABLE `frontmenuitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontmenus`
--
ALTER TABLE `frontmenus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontmenus_title_unique` (`title`);

--
-- Indexes for table `gallaryimages`
--
ALTER TABLE `gallaryimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerycategories`
--
ALTER TABLE `gallerycategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobcategories`
--
ALTER TABLE `jobcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobposts`
--
ALTER TABLE `jobposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_name_unique` (`name`);

--
-- Indexes for table `navbarsettings`
--
ALTER TABLE `navbarsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagebuilders`
--
ALTER TABLE `pagebuilders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_module_id_foreign` (`module_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `portfoliocategories`
--
ALTER TABLE `portfoliocategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portfolios_slug_unique` (`slug`),
  ADD KEY `portfolios_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `portfolio_portfoliocategory`
--
ALTER TABLE `portfolio_portfoliocategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolio_portfoliocategory_portfolio_id_foreign` (`portfolio_id`),
  ADD KEY `portfolio_portfoliocategory_portfoliocategory_id_foreign` (`portfoliocategory_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `pricecategories`
--
ALTER TABLE `pricecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prices_slug_unique` (`slug`),
  ADD KEY `prices_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `price_pricecategory`
--
ALTER TABLE `price_pricecategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price_pricecategory_price_id_foreign` (`price_id`),
  ADD KEY `price_pricecategory_pricecategory_id_foreign` (`pricecategory_id`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `product_productcategory`
--
ALTER TABLE `product_productcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_productcategory_product_id_foreign` (`product_id`),
  ADD KEY `product_productcategory_productcategory_id_foreign` (`productcategory_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `servicecategories`
--
ALTER TABLE `servicecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `service_servicecategory`
--
ALTER TABLE `service_servicecategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_servicecategory_service_id_foreign` (`service_id`),
  ADD KEY `service_servicecategory_servicecategory_id_foreign` (`servicecategory_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebars`
--
ALTER TABLE `sidebars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sidebars_title_unique` (`title`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `teamcategories`
--
ALTER TABLE `teamcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teamcategory_teampost`
--
ALTER TABLE `teamcategory_teampost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teamcategory_teampost_teampost_id_foreign` (`teampost_id`),
  ADD KEY `teamcategory_teampost_teamcategory_id_foreign` (`teamcategory_id`);

--
-- Indexes for table `teamposts`
--
ALTER TABLE `teamposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teamposts_slug_unique` (`slug`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contentcategories`
--
ALTER TABLE `contentcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contentcategory_contentpost`
--
ALTER TABLE `contentcategory_contentpost`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contentposts`
--
ALTER TABLE `contentposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custompages`
--
ALTER TABLE `custompages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `frontmenuitems`
--
ALTER TABLE `frontmenuitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `frontmenus`
--
ALTER TABLE `frontmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallaryimages`
--
ALTER TABLE `gallaryimages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gallerycategories`
--
ALTER TABLE `gallerycategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobcategories`
--
ALTER TABLE `jobcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobposts`
--
ALTER TABLE `jobposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `navbarsettings`
--
ALTER TABLE `navbarsettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagebuilders`
--
ALTER TABLE `pagebuilders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `portfoliocategories`
--
ALTER TABLE `portfoliocategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portfolio_portfoliocategory`
--
ALTER TABLE `portfolio_portfoliocategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pricecategories`
--
ALTER TABLE `pricecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `price_pricecategory`
--
ALTER TABLE `price_pricecategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_productcategory`
--
ALTER TABLE `product_productcategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `servicecategories`
--
ALTER TABLE `servicecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_servicecategory`
--
ALTER TABLE `service_servicecategory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sidebars`
--
ALTER TABLE `sidebars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teamcategories`
--
ALTER TABLE `teamcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teamcategory_teampost`
--
ALTER TABLE `teamcategory_teampost`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teamposts`
--
ALTER TABLE `teamposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
