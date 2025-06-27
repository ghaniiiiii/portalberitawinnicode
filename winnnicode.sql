-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 26 Jun 2025 pada 15.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winnnicode`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `abouts`
--

INSERT INTO `abouts` (`id`, `content`, `language`, `created_at`, `updated_at`) VALUES
(4, '<p>yeyyy</p>', 'en', '2025-06-17 03:02:05', '2025-06-17 03:02:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `image`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'uploads/LT0f9gcU2zfYKlEFecF5USrEonfpoY.jpeg', 'Super Admin', 'admin@gmail.com', NULL, '$2y$10$RxoK28Fal.WuEJRPI4SnUOnE7g897GONA6SYnQg6WNQuukBsBSlfe', 1, 'sLKwBar3aY0sSjjkYwBP05iHR6hdnwgkzBJfWVNvzL09fmg51zPeATRXiGdc', '2023-05-21 06:37:47', '2025-05-19 06:45:55'),
(4, '', 'Lead Writer', 'writer@gmail.com', NULL, '$2y$10$ERKjlgmxyGFrYhC38nIbGO.B8GUoebDHc7lG5QCLwXX7N.LUv9eTS', 1, NULL, '2023-06-12 23:55:45', '2023-06-13 02:20:09'),
(7, '', 'ghani', 'bibubcompany@gamil.com', NULL, '$2y$10$8fDwPHGWRauxPspbr.J3Gu9KArbCuzrbyjG3/4zruN17dYfOLaCxO', 1, NULL, '2025-05-16 02:24:33', '2025-05-16 02:24:33'),
(8, '', 'yoi', 'yoi@gmail.com', NULL, '$2y$10$LxIuuDdp9OEMtjDE4./wbec.VjDr25LdmcVl0OfvdVaY6SWUJsjIW', 1, NULL, '2025-06-17 04:53:29', '2025-06-22 06:27:34'),
(9, '', 'test', 'test@gmail.com', NULL, '$2y$10$3Ludk/x5.sPeqC55iMg7Xem6tT6asieNwT0T9.LnIEI9FV.Na5S9.', 1, NULL, '2025-06-18 08:11:01', '2025-06-18 08:11:01'),
(13, 'uploads/NwJujbpJL4w9Er5I2UAGr0X12NJKH4.png', 'mantap', 'mantap@gmail.com', NULL, '$2y$10$iaQ8KkTSbfbNOFIexyhIl.9XiLD/WLbLPmxVEuCVQ5c.5ReJM/PS6', 1, NULL, '2025-06-22 09:34:18', '2025-06-23 13:13:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_top_bar_ad` text NOT NULL,
  `home_top_bar_ad_status` tinyint(1) NOT NULL,
  `home_middle_ad` text NOT NULL,
  `home_middle_ad_status` tinyint(1) NOT NULL,
  `view_page_ad` text NOT NULL,
  `view_page_ad_status` tinyint(1) NOT NULL,
  `news_page_ad` text NOT NULL,
  `news_page_ad_status` tinyint(1) NOT NULL,
  `side_bar_ad` text NOT NULL,
  `side_bar_ad_status` tinyint(1) NOT NULL,
  `home_top_bar_ad_url` text DEFAULT NULL,
  `home_middle_ad_url` text DEFAULT NULL,
  `view_page_ad_url` text DEFAULT NULL,
  `news_page_ad_url` text DEFAULT NULL,
  `side_bar_ad_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ads`
--

INSERT INTO `ads` (`id`, `home_top_bar_ad`, `home_top_bar_ad_status`, `home_middle_ad`, `home_middle_ad_status`, `view_page_ad`, `view_page_ad_status`, `news_page_ad`, `news_page_ad_status`, `side_bar_ad`, `side_bar_ad_status`, `home_top_bar_ad_url`, `home_middle_ad_url`, `view_page_ad_url`, `news_page_ad_url`, `side_bar_ad_url`, `created_at`, `updated_at`) VALUES
(1, 'uploads/PtTs3VmrwZjJpsvI7N2vCDyE6zfR1O.png', 1, 'uploads/INOJvmEQTpuDiGQ3iPdNsVMJwAcUwY.png', 1, 'uploads/Vi7YHl9k5iBUCWZUtmRBxeEwLIICxe.png', 1, 'uploads/dW2Cc6NK41uM2Q8NgoC3PROKqfrjIz.png', 1, 'uploads/ZznkF9kv0MnUd4RDvTzobzVRDzx3JS.png', 1, 'https://www.tradingview.com/chart/LM1X8vBX/?symbol=BITSTAMP%3ABTCUSD', 'https://medium.com', 'https://medium.com', 'https://medium.com', 'https://www.tradingview.com/chart/LM1X8vBX/?symbol=BITSTAMP%3ABTCUSD', '2023-06-05 22:14:15', '2025-06-23 12:48:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `show_at_nav` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `language`, `name`, `slug`, `show_at_nav`, `status`, `created_at`, `updated_at`) VALUES
(13, 'en', 'Business', 'business', 1, 1, '2023-06-21 21:40:05', '2023-06-21 21:40:05'),
(15, 'en', 'Lifestyle', 'lifestyle', 1, 1, '2023-06-21 21:40:24', '2023-06-21 21:40:24'),
(16, 'en', 'Politics', 'politics', 1, 1, '2023-06-21 21:40:35', '2023-06-21 21:40:35'),
(17, 'en', 'Sports', 'sports', 1, 1, '2023-06-21 21:40:44', '2023-06-21 21:40:44'),
(18, 'en', 'Tech', 'tech', 0, 1, '2023-06-21 21:40:56', '2023-06-21 21:40:56'),
(35, 'en', 'Crypto', 'crypto', 1, 1, '2025-05-15 23:15:14', '2025-05-15 23:15:14'),
(39, 'en', 'Sains', 'sains', 1, 1, '2025-06-23 08:42:04', '2025-06-23 08:42:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `news_id`, `user_id`, `parent_id`, `comment`, `created_at`, `updated_at`) VALUES
(13, 79, 4, NULL, 'wawww nice info', '2025-05-25 04:41:26', '2025-05-25 04:41:26'),
(14, 84, 4, NULL, 'www', '2025-06-18 11:10:32', '2025-06-18 11:10:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone`, `email`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Jl. Asia Afrika No.158, Kb. Pisang, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40261', '(+62) 85159932501', 'winnicodegarudaofficial@gmail.com', 'en', '2023-06-08 01:24:52', '2025-04-20 22:09:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `footer_grid_ones`
--

CREATE TABLE `footer_grid_ones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footer_grid_ones`
--

INSERT INTO `footer_grid_ones` (`id`, `language`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'en', 'About', '/about', 1, '2023-06-07 01:37:51', '2023-06-07 01:37:51'),
(6, 'en', 'Login', '/login', 1, '2023-06-22 03:10:25', '2023-06-22 03:10:25'),
(7, 'en', 'Regiester', '/register', 1, '2023-06-22 03:10:46', '2025-06-22 09:33:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer_grid_threes`
--

CREATE TABLE `footer_grid_threes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footer_grid_threes`
--

INSERT INTO `footer_grid_threes` (`id`, `language`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(2, 'en', 'Helth', '#', 1, '2023-06-07 04:41:25', '2023-06-22 03:19:02'),
(5, 'en', 'Politics', '#', 1, '2023-06-22 03:19:59', '2023-06-22 03:19:59'),
(9, 'en', 'Event', '#', 1, '2023-06-22 03:22:15', '2023-06-22 03:22:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer_grid_twos`
--

CREATE TABLE `footer_grid_twos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footer_grid_twos`
--

INSERT INTO `footer_grid_twos` (`id`, `language`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(3, 'en', 'Best News', '#', 1, '2023-06-07 03:37:50', '2023-06-22 03:16:20'),
(8, 'en', 'New News', '#', 1, '2023-06-22 03:17:13', '2023-06-22 03:17:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text DEFAULT NULL,
  `description` text NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footer_infos`
--

INSERT INTO `footer_infos` (`id`, `logo`, `description`, `copyright`, `language`, `created_at`, `updated_at`) VALUES
(1, 'uploads/6ebTOIRV9UBK18y0qBXi3Zdscy8lWI.png', 'Journalism Program winnicode is a human resource development program aimed at young people who have a career in reporting', 'Copyright © 2025 Winnicode', 'en', '2023-06-06 23:08:10', '2025-04-28 04:47:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `footer_titles`
--

CREATE TABLE `footer_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footer_titles`
--

INSERT INTO `footer_titles` (`id`, `key`, `value`, `language`, `created_at`, `updated_at`) VALUES
(1, 'grid_one_title', 'Help links', 'en', '2023-06-07 22:15:15', '2025-06-17 11:27:17'),
(3, 'grid_two_title', 'Short Links', 'en', '2023-06-07 22:56:57', '2023-06-22 03:14:35'),
(5, 'grid_three_title', 'Treanding', 'en', '2023-06-07 23:04:23', '2023-06-22 03:18:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_section_settings`
--

CREATE TABLE `home_section_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_section_one` varchar(255) NOT NULL,
  `category_section_two` varchar(255) NOT NULL,
  `category_section_three` varchar(255) NOT NULL,
  `category_section_four` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_section_settings`
--

INSERT INTO `home_section_settings` (`id`, `category_section_one`, `category_section_two`, `category_section_three`, `category_section_four`, `language`, `created_at`, `updated_at`) VALUES
(1, '15', '17', '18', '35', 'en', '2023-06-03 01:22:51', '2025-06-23 13:20:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `name`, `lang`, `slug`, `default`, `status`, `created_at`, `updated_at`) VALUES
(3, 'English', 'en', 'en', 1, 1, '2023-05-27 00:54:48', '2023-05-29 06:35:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_21_092521_create_admins_table', 2),
(7, '2023_05_25_093155_create_languages_table', 3),
(8, '2023_05_27_091159_create_categories_table', 4),
(9, '2023_05_28_040844_create_news_table', 5),
(10, '2023_05_28_093323_create_tags_table', 6),
(11, '2023_05_28_093523_create_news_tags_table', 6),
(12, '2023_05_31_091856_create_comments_table', 7),
(13, '2023_06_03_045954_create_home_section_settings_table', 8),
(15, '2023_06_04_032108_create_social_counts_table', 9),
(18, '2023_06_05_074833_create_ads_table', 10),
(19, '2023_06_06_061800_create_subscribers_table', 11),
(20, '2023_06_06_102406_create_social_links_table', 12),
(21, '2023_06_07_043229_create_footer_infos_table', 13),
(22, '2023_06_07_063900_create_footer_grid_ones_table', 14),
(23, '2023_06_07_092407_create_footer_grid_twos_table', 15),
(24, '2023_06_07_102857_create_footer_grid_threes_table', 16),
(25, '2023_06_08_035931_create_footer_titles_table', 17),
(27, '2023_06_08_053338_create_abouts_table', 18),
(28, '2023_06_08_070724_create_contacts_table', 19),
(30, '2023_06_08_112641_create_recived_mails_table', 20),
(31, '2023_06_10_105757_create_settings_table', 21),
(32, '2023_06_11_110729_create_permission_tables', 22);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\Admin', 1),
(6, 'App\\Models\\Admin', 4),
(6, 'App\\Models\\Admin', 7),
(6, 'App\\Models\\Admin', 13),
(7, 'App\\Models\\Admin', 8),
(7, 'App\\Models\\Admin', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `auther_id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `content` text NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_breaking_news` tinyint(1) NOT NULL DEFAULT 0,
  `show_at_slider` tinyint(1) NOT NULL DEFAULT 0,
  `show_at_popular` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `language`, `category_id`, `auther_id`, `image`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `is_breaking_news`, `show_at_slider`, `show_at_popular`, `status`, `is_approved`, `views`, `created_at`, `updated_at`) VALUES
(79, 'en', 35, 1, 'uploads/qNV5OVaK5RDKqKen7HDVyHzT0uj49w.png', 'Strategy buys 7,390 Bitcoin, holds 2.7% of total supply', 'strategy-buys-7390-bitcoin-holds-27-of-total-supply', '<p>Strategy, the world\'s largest Bitcoin (BTC) treasury company, has added to its holdings by buying 7,390 BTC worth US$764.9 million</p><p>According to Strategy founder and Chairman Michael Saylor, their total BTC holdings now stand at 576,230 pieces, equivalent to 2.7% of the total supply with an accumulated purchase value of around US$40.2 billion, which has the potential to generate profits of around US$18.8 billion.</p><p>Previously, Saylor had signaled this purchase through a post on the X platform by saying, never underestimate people who buy large amounts of dot Bitcoin.</p>', 'saylor', 'saylor', 1, 1, 1, 1, 1, 4, '2025-05-19 06:19:25', '2025-06-22 04:37:17'),
(81, 'en', 18, 1, 'uploads/phax4eDnXpbR8GTgnxHu9dkLOLf8c8.png', 'Jensen Huang Plans to Sell Nvidia\'s AI Chip System to a Competitor, Wow What for?', 'jensen-huang-plans-to-sell-nvidias-ai-chip-system-to-a-competitor-wow-what-for', '<p>Nvidia CEO Jansen Huang plans to sell NVLink Fusion, an artificial intelligence (AI) chip system, to similar manufacturers. This is to speed up the communication between semiconductors needed to build and deploy AI tools.</p><p>According to him, the technology system can help chip designers to build powerful and interconnected specialized AI systems.</p><p>It is known that the global technology giant has spent several years exchanging large amounts of data. Meanwhile, Marvell Technology and MediaTek plan to adopt Nvidia\'s technology to be integrated on their specialized chips.</p>', NULL, NULL, 1, 1, 1, 1, 1, 1, '2025-05-19 06:49:51', '2025-06-16 20:42:13'),
(82, 'en', 18, 1, 'uploads/XwbEpyrnQp9oygBaOhcQLWXkiSiTIr.png', 'Alibaba Shares Plummet Nearly 3% Amid AI-Apple Deal', 'alibaba-shares-plummet-nearly-3-amid-ai-apple-deal', '<p>Alibaba Group Holding Ltd\'s shares fell 3.08% on Monday (19/05) afternoon local time. This decline occurred after the agreement between Apple (APPL) and Alibaba to launch AI features to iPhones in China.</p><p><br></p><p>This agreement sparked a dispute with the United States (US) government because it has the potential to cause social security and data privacy issues. Moreover, the US has negative sentiments with China in this industry.</p><p><br></p><p>The US government is reportedly researching the Apple and Alibaba deal which is feared to threaten user data in the US. This is reinforced because only Alibaba announced the agreement.</p><p><br></p><p>As a result of the cooperation announcement, the e-commerce stock has plummeted after earnings in the last quarter did not meet analysts\' expectations, thus reducing the confidence that was previously projected to continue to lead the AI industry.</p>', NULL, NULL, 1, 1, 1, 1, 1, 2, '2025-05-19 06:56:20', '2025-06-23 10:21:13'),
(83, 'en', 16, 1, 'uploads/KkXm0j45VO5rtmU2qx5dQQFja5KMTx.png', 'QRIS can be used abroad, Gibran: Not Just a Home Champion', 'qris-can-be-used-abroad-gibran-not-just-a-home-champion', '<p>Indonesian Vice President Gibran Rakabuming Raka said the Quick Response Code Indonesian Standard aka QRIS can now be used in several Southeast Asian countries, namely Malaysia, Singapore and Thailand.</p><p>\"QRIS is also not only good at home. QRIS can not only be used domestically, but also in other countries, namely Thailand, Malaysia, Singapore and soon in Japan and South Korea,\" Gibran said on his YouTube channel.</p><p>He revealed that this QRIS expansion makes Indonesian citizens do not need to exchange money when visiting abroad.</p><p>\"This is proof that Indonesia is not only a user, not only a market, but more than that. Indonesia is also capable of creating technological innovations that are recognized and trusted by the world,\" he said.</p>', NULL, NULL, 1, 1, 1, 1, 1, 1, '2025-05-19 07:00:04', '2025-06-22 04:36:32'),
(84, 'en', 17, 1, 'uploads/dO7CBhRSLAZ9nsU9thDYrxSCVjjLLo.png', 'Barcelona\'s championship celebrations marred by Villarreal, Hansi Flick: I Don\'t Care', 'barcelonas-championship-celebrations-marred-by-villarreal-hansi-flick-i-dont-care', '<p>Barcelona coach, Hansi Flick, admitted that he did not care about the defeat suffered by his team to Villarreal in the Spanish League continued. Barcelona hosted Villarreal in jornada 37 of the 2024-2025 Spanish League. The duel was held at the Lluis Companys Olympic Stadium, Monday (5/19/2025) early morning WIB. As a result, Azulgrana went down with a tight score of 2-3 from his guests. This defeat did not have any impact on Barcelona\'s position in the standings.</p>', 'win Barcelona', 'king Barca', 1, 1, 1, 1, 1, 5, '2025-05-19 07:04:30', '2025-06-23 09:11:47'),
(88, 'en', 39, 1, 'uploads/n0r1hnHcjAR2eCp8M3QJvlwngxM0er.jpg', 'The Mystery of the Neanderthal Extinction: Did Cosmic Rays from the Sky Kill Them?', 'the-mystery-of-the-neanderthal-extinction-did-cosmic-rays-from-the-sky-kill-them', '<p>For decades, scientists have debated the cause of the extinction of Neanderthal man - a close relative of Homo sapiens who once lived alongside us in Europe and Asia. Were they outcompeted? Or was it a natural disaster that ended their lives? Now, a radical hypothesis from the realm of astrophysics has surfaced and become the talk of the town. In a recent study published in the journal Science Advances, Agnit Mukhopadhyay, a space physicist from the University of Michigan, proposes that the cause of the Neanderthals\' extinction may not have been earthly, but celestial.</p>', NULL, NULL, 1, 1, 1, 1, 1, 1, '2025-06-23 08:45:12', '2025-06-23 09:11:52'),
(89, 'en', 15, 1, 'uploads/r1MvWquxvk9XRqpi2BZIUDDvypSHVv.jpg', 'Watch out for spitting up in children over 1 year old, could be a symptom of GERD', 'watch-out-for-spitting-up-in-children-over-1-year-old-could-be-a-symptom-of-gerd', '<p>Gumoh or discharge from the mouth of a baby after breastfeeding is often considered normal. However, what if vomiting occurs not in infants, but children over one year old or adolescents? “If vomiting occurs in children over a year old or children towards adolescence, it is something that is not normal,” said pediatrician gastrohepatology subspecialist, Dr. Himawan Aulia Rahman, Sp.A, Subsp.G.H in a Media Discussion with Pondok Indah Group Hospital in Central Jakarta, recently.</p>', NULL, NULL, 1, 1, 1, 1, 1, 2, '2025-06-23 08:47:22', '2025-06-23 10:49:54'),
(90, 'en', 15, 1, 'uploads/5obx1xXt9ak2mufQxI0ZxzBChQ8iWJ.jpg', '3 Impacts if Parents Don\'t Prepare Children\'s Education Funds Early on', '3-impacts-if-parents-dont-prepare-childrens-education-funds-early-on', '<p>What if you don\'t prepare your child\'s education fund early enough? This is related to the new school year which can make the household budget shaky if not allocated from the start. Professional Financial Planner, Rista Zwestika Reni CFP®, WMI, WPS reminds us that the lack of planning for children\'s education not only affects finances, but also family harmony.<br></p>', NULL, NULL, 1, 1, 1, 1, 1, 2, '2025-06-23 08:51:37', '2025-06-23 10:49:58'),
(94, 'en', 15, 13, 'uploads/MOyJdrx48n9WuQw1n5l5C0SQ42qQsP.jpg', '3 Common Causes of Diarrhea and Signs to Watch Out for', '3-common-causes-of-diarrhea-and-signs-to-watch-out-for', '<p>lalalalabubu</p>', NULL, NULL, 0, 0, 0, 1, 1, 0, '2025-06-23 13:11:54', '2025-06-23 13:17:43'),
(95, 'en', 15, 13, 'uploads/WJ2ph2TZVkG7LbEFgOKfb1eR8GQnut.jpg', 'Motivational Words for Burnout Friends', 'motivational-words-for-burnout-friends', '<p>labumu</p>', NULL, NULL, 0, 0, 0, 1, 1, 0, '2025-06-23 13:15:37', '2025-06-23 13:17:40'),
(96, 'en', 17, 13, 'uploads/x9om2bHegUA81R4D8Lr8jTaW9hz1tD.jpg', 'Indonesia vs Australia Volleyball Result 0-3, Red and White Need to Improve', 'indonesia-vs-australia-volleyball-result-0-3-red-and-white-need-to-improve', '<p>labumu goreng</p>', NULL, NULL, 0, 0, 0, 1, 1, 2, '2025-06-23 13:17:18', '2025-06-24 18:44:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news_tags`
--

CREATE TABLE `news_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news_tags`
--

INSERT INTO `news_tags` (`id`, `news_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(424, 79, 424, NULL, NULL),
(426, 81, 426, NULL, NULL),
(427, 82, 427, NULL, NULL),
(428, 83, 428, NULL, NULL),
(433, 84, 433, NULL, NULL),
(434, 88, 434, NULL, NULL),
(435, 89, 435, NULL, NULL),
(436, 90, 436, NULL, NULL),
(440, 94, 440, NULL, NULL),
(441, 95, 441, NULL, NULL),
(442, 96, 442, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$m5NW3rtlO/JqFGIDi6hhJeYWkNOtdJHzgIJcMmgmQdS4k/cJcnhVK', '2023-06-19 22:25:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(2, 'category index', 'admin', 'Category Permissions', '2023-06-12 00:41:28', '2023-06-12 00:41:28'),
(3, 'category create', 'admin', 'Category Permissions', '2023-06-12 00:42:32', '2023-06-12 00:42:32'),
(4, 'category update', 'admin', 'Category Permissions', '2023-06-12 00:42:42', '2023-06-12 00:42:42'),
(5, 'category delete', 'admin', 'Category Permissions', '2023-06-12 00:42:49', '2023-06-12 00:42:49'),
(6, 'news index', 'admin', 'News Permissions', '2023-06-13 05:05:58', '2023-06-13 05:05:58'),
(7, 'news create', 'admin', 'News Permissions', '2023-06-13 05:06:12', '2023-06-13 05:06:12'),
(8, 'news update', 'admin', 'News Permissions', '2023-06-13 05:06:20', '2023-06-13 05:06:20'),
(9, 'news delete', 'admin', 'News Permissions', '2023-06-13 05:06:28', '2023-06-13 05:06:28'),
(10, 'about index', 'admin', 'About Permissions', '2023-06-13 05:13:54', '2023-06-13 05:13:54'),
(11, 'about update', 'admin', 'About Permissions', '2023-06-13 05:14:01', '2023-06-13 05:14:01'),
(12, 'contact index', 'admin', 'Contact Permissions', '2023-06-13 05:15:33', '2023-06-13 05:15:33'),
(13, 'contact update', 'admin', 'Contact Permissions', '2023-06-13 05:15:41', '2023-06-13 05:15:41'),
(22, 'advertisement index', 'admin', 'Advertisement Permissions', '2023-06-13 05:24:20', '2023-06-13 05:24:20'),
(23, 'advertisement update', 'admin', 'Advertisement Permissions', '2023-06-13 05:24:27', '2023-06-13 05:24:27'),
(30, 'footer index', 'admin', 'Footer Permissions', '2023-06-13 05:28:42', '2023-06-13 05:28:42'),
(31, 'footer create', 'admin', 'Footer Permissions', '2023-06-13 05:28:48', '2023-06-13 05:28:48'),
(32, 'footer update', 'admin', 'Footer Permissions', '2023-06-13 05:28:57', '2023-06-13 05:28:57'),
(33, 'footer delete', 'admin', 'Footer Permissions', '2023-06-13 05:29:03', '2023-06-13 05:29:03'),
(34, 'access management index', 'admin', 'Access Management Permissions', '2023-06-13 05:31:34', '2023-06-13 05:31:34'),
(35, 'access management create', 'admin', 'Access Management Permissions', '2023-06-13 05:31:40', '2023-06-13 05:31:40'),
(36, 'access management update', 'admin', 'Access Management Permissions', '2023-06-13 05:31:46', '2023-06-13 05:31:46'),
(37, 'access management delete', 'admin', 'Access Management Permissions', '2023-06-13 05:31:53', '2023-06-13 05:31:53'),
(38, 'setting index', 'admin', 'Settings Permissions', '2023-06-13 05:33:11', '2023-06-13 05:33:11'),
(39, 'setting update', 'admin', 'Settings Permissions', '2023-06-13 05:33:17', '2023-06-13 05:33:17'),
(40, 'news status', 'admin', 'News Permissions', '2023-06-14 23:31:44', '2023-06-14 23:31:44'),
(41, 'news all-access', 'admin', 'News Permissions', '2023-06-14 23:38:27', '2023-06-14 23:38:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `recived_mails`
--

CREATE TABLE `recived_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `replied` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `recived_mails`
--

INSERT INTO `recived_mails` (`id`, `email`, `subject`, `message`, `seen`, `replied`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', 'test sub', 'test sub', 1, 1, '2023-06-08 05:35:29', '2025-06-17 03:58:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Super Admin', 'admin', '2023-06-12 03:28:34', '2023-06-12 03:28:34'),
(6, 'writer', 'admin', '2023-06-12 23:52:28', '2023-06-12 23:52:28'),
(7, 'lalalaa yeyeye', 'admin', '2025-06-17 04:51:32', '2025-06-17 04:51:32'),
(9, 'bibub', 'admin', '2025-06-22 04:24:48', '2025-06-22 04:24:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 6),
(6, 9),
(7, 6),
(7, 9),
(8, 6),
(8, 9),
(9, 6),
(9, 9),
(40, 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Winnicode', '2023-06-10 22:51:50', '2025-03-06 07:01:55'),
(2, 'site_logo', 'uploads/yXl8UNuieBTTibQ2rQB7GHQxHHZ1Et.png', '2023-06-10 22:51:50', '2025-04-23 10:46:50'),
(3, 'site_favicon', 'uploads/k5elbCECaTzlLuQEf8dxOXMTYepkj3.png', '2023-06-10 22:51:50', '2025-04-23 10:46:50'),
(4, 'site_seo_title', 'Ghani Fauzan', '2023-06-11 01:05:31', '2025-04-23 10:47:12'),
(5, 'site_seo_description', 'Mantap', '2023-06-11 01:05:31', '2025-04-23 10:47:12'),
(6, 'site_seo_keywords', 'test', '2023-06-11 01:05:31', '2025-04-23 10:47:12'),
(7, 'site_color', '#0a090a', '2023-06-11 03:45:30', '2025-03-06 07:04:06'),
(8, 'site_microsoft_api_host', 'microsoft-translator-text.p.rapidapi.com', '2023-06-21 03:44:20', '2023-06-21 03:49:24'),
(9, 'site_microsoft_api_key', 'aa2208f1e2mshb45a12358c3d5bdp18fcc3jsn873f59aed28e', '2023-06-21 03:44:20', '2025-06-14 05:18:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_counts`
--

CREATE TABLE `social_counts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `fan_count` varchar(255) NOT NULL,
  `fan_type` varchar(255) NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `social_links`
--

INSERT INTO `social_links` (`id`, `icon`, `url`, `status`, `created_at`, `updated_at`) VALUES
(3, 'fab fa-facebook-f', 'https://www.linkedin.com/', 0, '2023-06-06 21:43:13', '2025-03-06 07:08:51'),
(4, 'fab fa-twitter', 'https://www.linkedin.com/', 0, '2023-06-06 21:43:23', '2025-03-06 07:09:26'),
(5, 'fab fa-linkedin-in', 'https://www.linkedin.com/company/winnicodegarudateknologi/', 1, '2023-06-06 21:44:42', '2025-03-06 07:10:28'),
(6, 'fab fa-instagram', 'https://www.instagram.com/winnicodeofficial/', 1, '2023-06-06 21:44:54', '2025-03-06 07:11:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'test@gmail.com', '2023-06-06 00:22:49', '2023-06-06 00:22:49'),
(3, 'test123@gmail.com', '2023-06-06 03:25:48', '2023-06-06 03:25:48'),
(4, 'ghanifauzan5@gmail.com', '2025-06-02 04:32:07', '2025-06-02 04:32:07'),
(5, 'bibub@gmail.com', '2025-06-17 01:37:14', '2025-06-17 01:37:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`, `language`) VALUES
(424, 'bitcoin', '2025-05-19 06:19:25', '2025-05-19 06:19:25', 'en'),
(426, 'nvidia', '2025-05-19 06:49:51', '2025-05-19 06:49:51', 'en'),
(427, 'Alibaba', '2025-05-19 06:56:20', '2025-05-19 06:56:20', 'en'),
(428, 'Gibran', '2025-05-19 07:00:04', '2025-05-19 07:00:04', 'en'),
(433, 'sport', '2025-06-22 04:30:48', '2025-06-22 04:30:48', 'en'),
(434, 'Neanderthal', '2025-06-23 08:45:12', '2025-06-23 08:45:12', 'en'),
(435, 'GERD', '2025-06-23 08:47:22', '2025-06-23 08:47:22', 'en'),
(436, 'financialfreedom', '2025-06-23 08:51:37', '2025-06-23 08:51:37', 'en'),
(440, 'Diarrhea', '2025-06-23 13:11:54', '2025-06-23 13:11:54', 'en'),
(441, 'Motivational', '2025-06-23 13:15:37', '2025-06-23 13:15:37', 'en'),
(442, 'Volleyball', '2025-06-23 13:17:18', '2025-06-23 13:17:18', 'en');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user123', 'user123@gmail.com', NULL, '$2y$10$63BjxFQWL5PjM4COz1kns.GrtBIc2jo/AV24DxsgbgXykvHz3C6.m', 'mC9dodqrClO5P5eMx5tL6fwzNkHFILYhMfW0I0AAv4tpkvDISRCboCo6KfXY', '2023-05-21 00:06:29', '2023-06-19 23:10:50'),
(2, 'usertest', 'testuser@gmail.com', NULL, '$2y$10$tgMoTZNtFyKdBCT3Hsrvc.P2wZOhekfjk..7vn57Z0I.BuwIlse8a', NULL, '2023-06-19 04:41:23', '2023-06-19 04:41:23'),
(3, 'ghani', 'kocak@gmail.com', NULL, '$2y$10$TAJT6HM7i4u2Rv3zMkFJwOSijFbpq.7vraXLvpz9IqEJ1O6xovV2G', NULL, '2025-03-06 06:53:08', '2025-03-06 06:53:08'),
(4, 'ghani', 'ghanifauzan5@gmail.com', NULL, '$2y$10$B3s6eTAid7cl3lhHeglZEuVJ4vid2JstQLsrsCQHofS7pCdMwrfJC', 'SAgANcyc3hIjoH6ywLaOrCqNBMImIjbgw8SoM8UuxIf8vQgoGzDrRoFuZ3Nq', '2025-04-27 06:07:24', '2025-04-27 06:07:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_news_id_foreign` (`news_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `footer_grid_ones`
--
ALTER TABLE `footer_grid_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footer_infos`
--
ALTER TABLE `footer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `footer_titles`
--
ALTER TABLE `footer_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_section_settings`
--
ALTER TABLE `home_section_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`),
  ADD KEY `news_auther_id_foreign` (`auther_id`);

--
-- Indeks untuk tabel `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_tags_news_id_foreign` (`news_id`),
  ADD KEY `news_tags_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `recived_mails`
--
ALTER TABLE `recived_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_counts`
--
ALTER TABLE `social_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `footer_grid_ones`
--
ALTER TABLE `footer_grid_ones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `footer_grid_threes`
--
ALTER TABLE `footer_grid_threes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `footer_grid_twos`
--
ALTER TABLE `footer_grid_twos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `footer_titles`
--
ALTER TABLE `footer_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `home_section_settings`
--
ALTER TABLE `home_section_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT untuk tabel `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `recived_mails`
--
ALTER TABLE `recived_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `social_counts`
--
ALTER TABLE `social_counts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_auther_id_foreign` FOREIGN KEY (`auther_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `news_tags`
--
ALTER TABLE `news_tags`
  ADD CONSTRAINT `news_tags_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
