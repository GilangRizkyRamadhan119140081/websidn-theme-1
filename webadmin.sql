-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2024 at 06:34 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `judul`, `text`, `video`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Dipercaya Oleh 200+ Klien Yang Merasa Puas', 'Welcome to our world of love and celebrations! We are a passionate team dedicated to turning your dream wedding into a reality. With years of experience and a heart full of creativity, we strive to make every moment of your special day unforgettable', 'https://www.youtube.com/embed/sEhS83z3XRM?si=x5izIReQ5NraJXHx', 'uploads/tvbVRXLol2FB6oXILk5rRobX915MFT2cLpGPHSjz.jpg', '2024-06-24 22:34:19', '2024-06-24 22:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `kategori`, `judul`, `detail`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Layanan', 'Full Wedding Planning', 'Contrary to popular belief, ipsum is not simply random.', 'cards/0lFHrhOoy1sa8wHU8BZSk5iBhYFiJUB6KNjo7f60.jpg', '2024-06-24 20:16:58', '2024-06-24 20:16:58'),
(2, 'Layanan', 'Day-off Cordination', 'Contrary to popular belief, ipsum is not simply random.', 'cards/D4ugT0lw4YAPUce7GmFujilCtwlTnLBluohZSp4C.jpg', '2024-06-24 20:21:44', '2024-06-24 20:21:44'),
(3, 'Layanan', 'Vendor Management', 'Contrary to popular belief, ipsum is not simply random.', 'cards/VOVnz185nwMWtayidaaCqMD3hHfoFgopZZAtkCI5.jpg', '2024-06-24 20:22:02', '2024-06-24 20:22:02'),
(4, 'Layanan', 'Budget Management', 'Contrary to popular belief, ipsum is not simply random.', 'cards/EmAKIzSLa4yiDaDXHArVSRQ5PHX9CrxZcdXGIk8y.jpg', '2024-06-24 20:22:27', '2024-06-24 20:22:27'),
(5, 'Tim', 'Jemes Born', 'Executive', 'cards/Tnr9nYFGQIRVlXasj2UI1kp4bSXzqBdeXn2jAAq4.jpg', '2024-06-24 21:21:32', '2024-06-24 21:21:32'),
(6, 'Tim', 'Henry', 'Head Chef', 'cards/Xjf0uA4iMwxO4gDsfzMVeWOlGMxKweuC0uMiE7Ql.jpg', '2024-06-24 21:22:11', '2024-06-24 21:22:11'),
(7, 'Tim', 'Maria Hill', 'Head Organizer', 'cards/Kuku5tNLrJm4oUFfLQuC7RxG4PptVyIoCOHCtRVB.jpg', '2024-06-24 21:22:59', '2024-06-24 21:22:59'),
(8, 'Tim', 'Adam Smith', 'Head Operational', 'cards/UkR91hXfXQOzPwV7p2AhBkf5hhMTeHFYhZ7DWQnn.jpg', '2024-06-24 21:24:00', '2024-06-24 21:24:00'),
(9, 'Portofolio', 'Project 1', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/RKCoeoVfPM5ZCQoZ0FCQbVkecHXJrX7S3wm3RTwq.jpg', '2024-06-24 22:57:07', '2024-06-24 22:57:07'),
(10, 'Portofolio', 'Project 2', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/KYoSlJFzYPtVQ4siXvlYFe1HRs23wcIyu78uroEl.jpg', '2024-06-24 22:57:25', '2024-06-24 22:57:25'),
(11, 'Portofolio', 'Project 3', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/F5OhgKzyEs7LCuNtaR2lAeJ8CUN1XTKFrwr6U9bJ.jpg', '2024-06-24 22:58:56', '2024-06-24 22:58:56'),
(12, 'Portofolio', 'Project 4', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/eOfR3ILQnBCqFAeFNt1PAaiHz5obgwAO6CKueyZj.jpg', '2024-06-24 23:00:55', '2024-06-24 23:00:55'),
(13, 'Portofolio', 'Project 5', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/5EPLnffYZq6VuSt14x3FF4KLAdBO3cmgqPVytX7F.jpg', '2024-06-24 23:01:11', '2024-06-24 23:01:11'),
(14, 'Portofolio', 'Project 6', 'Lorem ipsum dolor sit amet sequi consectetur adipisicing elit.', 'cards/I9cwLdeofDdlVORaGIo2oDAnIdkqcR36HkamK9pB.jpg', '2024-06-24 23:01:26', '2024-06-24 23:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(510) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `whatsapp`, `facebook`, `instagram`, `tiktok`, `youtube`, `linkedin`, `map`, `created_at`, `updated_at`) VALUES
(1, '082038491283', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12', '2024-06-24 21:47:35', '2024-06-24 21:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `corosels`
--

CREATE TABLE `corosels` (
  `id` bigint UNSIGNED NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corosels`
--

INSERT INTO `corosels` (`id`, `resolusi`, `path`, `created_at`, `updated_at`) VALUES
(1, '1', 'corosels/AobDipBktxlpCQ92Xfjd9ShTmoo83DNqyo8iLLg4.jpg', '2024-06-23 09:58:30', '2024-06-23 09:58:30'),
(2, '2', 'corosels/HbtXQPoUBiCBaceq1AJPKkzCdbkH0l2ewi3DhoH6.jpg', '2024-06-23 09:58:43', '2024-06-23 09:58:43'),
(3, '3', 'corosels/wgR2w1hZsHEJARnHWobMA3bK7XfzceL4cFNuN6gI.jpg', '2024-06-23 09:58:54', '2024-06-23 09:58:54');

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
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint UNSIGNED NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `id_image`, `id_text`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '2024-06-24 20:55:53', '2024-06-24 20:55:53'),
(2, 7, 3, '2024-06-24 20:56:00', '2024-06-24 20:56:00'),
(3, 8, 2, '2024-06-24 20:56:08', '2024-06-24 20:56:08'),
(4, 9, 3, '2024-06-24 20:56:15', '2024-06-24 20:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `kategori`, `id_image`, `id_text`, `created_at`, `updated_at`) VALUES
(1, 'Logo', 1, 4, '2024-06-23 08:54:39', '2024-06-24 21:55:23'),
(3, 'Tentang Kami', 4, 1, '2024-06-24 19:58:39', '2024-06-24 19:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `resolusi`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Landscape', 'images/cxfyXSpJG3DXVVH3VIBNFfMvN3zIsqFEXtWoUVvz.png', '2024-06-23 08:52:53', '2024-06-24 23:30:50'),
(4, 'Potrait', 'images/vOVpunN5t7VlvRCP2tU1oFoesbkYtLpyLl2x8g8f.jpg', '2024-06-24 19:57:19', '2024-06-24 19:57:19'),
(5, 'Landscape', 'images/PP0cucHdiVzBQxC58lDYxdorezVKNnb2zMX2G8aY.jpg', '2024-06-24 20:52:15', '2024-06-24 20:52:15'),
(7, 'Landscape', 'images/wOzbQTK4XH9Mtj2GlfcPmkbeoXo0iDu7vCnb0cLi.jpg', '2024-06-24 20:52:22', '2024-06-24 20:52:22'),
(8, 'Landscape', 'images/JD6aTo8ItQEoSoORvGiYpTcLrllgwBPh8HkmlIcn.jpg', '2024-06-24 20:52:29', '2024-06-24 20:52:29'),
(9, 'Landscape', 'images/S8bBzCTvJMI0oZQ9ixk7fQo3PVylbBtE0kRb9V1s.jpg', '2024-06-24 20:52:36', '2024-06-24 20:52:36');

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
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint UNSIGNED NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `insertfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '0001_01_01_0000010_create_contact_table', 1),
(3, '0001_01_01_0000011_create_blog_table', 1),
(4, '0001_01_01_0000012_create_card_table', 1),
(5, '0001_01_01_0000012_create_corosel_table', 1),
(6, '0001_01_01_0000012_create_price_table', 1),
(7, '0001_01_01_000001_create_cache_table', 1),
(8, '0001_01_01_000002_create_jobs_table', 1),
(9, '0001_01_01_000003_create_image_table', 1),
(10, '0001_01_01_000004_create_text_table', 1),
(11, '0001_01_01_000005_create_testimoni_table', 1),
(12, '0001_01_01_000006_create_home_table', 1),
(13, '0001_01_01_000007_create_layanan_table', 1),
(14, '0001_01_01_000008_create_galeri_table', 1),
(16, '0001_01_01_000009_create_about_table', 2);

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
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `judul`, `item1`, `item2`, `item3`, `item4`, `item5`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Silver Package', 'Basic package for intimate weddings', 'Set Decoration', 'Wedding Planer', 'Venue & Chattering', 'Up to 300 pax', 'prices/Fbb9Uw4HAzqaZXK0NJK6ngvE80z3hNz6VUWRNH54.jpg', '2024-06-24 20:32:26', '2024-06-24 20:32:26'),
(2, 'Gold Package', 'Luxury package for extravagant celebrations', 'Set Decoration', 'Wedding Planer', 'Venue & Chattering', 'Up to 300 pax', 'prices/o0dDE9R9dKZaf5CdkbfVRuXewCXBJTMIHYdCuNX7.jpg', '2024-06-24 20:32:54', '2024-06-24 20:32:54'),
(3, 'Platinum Package', 'Premium package for fairy tale weddings', 'Set Decoration', 'Wedding Planer', 'Venue & Chattering', 'Up to 300 pax', 'prices/W3s5DFBUyarFHST4AXaZsFSnqHsOIvCknFEuIon3.jpg', '2024-06-24 20:33:21', '2024-06-24 20:33:21'),
(4, 'Diamond Package', 'Exclusive package for the most lavish affairs', 'Set Decoration', 'Wedding Planer', 'Venue & Chattering', 'Up to 1000 pax', 'prices/G2jZm35rHTmyovZoOwdODSWSvYiSgxrYZu8k0NG8.jpg', '2024-06-24 20:34:05', '2024-06-24 20:34:05');

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
('l9ze7Nn2mEZgSReRL8smEgpkiZsNng2q95q4NUsE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXdGckZOYmRXalNrY3A0azBJV3dlMkVVdjM0Q2ZJaVRoNTIyUVZXMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719297093);

-- --------------------------------------------------------

--
-- Table structure for table `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonis`
--

INSERT INTO `testimonis` (`id`, `name`, `job`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Gilang', 'Web Developer', 'Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.', 'testimonis/mwdue30R4ykyIvYEpH47w460Eek6FBjAMktG85Nh.jpg', '2024-06-24 21:10:20', '2024-06-24 21:10:20'),
(2, 'Ryan', 'Arsitek', 'Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.', 'testimonis/4a94dtBHGpjcRnlPDUL3VyJzam8N20XAiNHXQ9ah.jpg', '2024-06-24 21:10:56', '2024-06-24 21:10:56'),
(3, 'Santi', 'Pedagang', 'Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.', 'testimonis/chVKaLDN1FchMhHbyluzixfaMxEcNFKK6HBcTB4l.jpg', '2024-06-24 21:11:24', '2024-06-24 21:11:24'),
(4, 'Raisa', 'Entertainer', 'Lorem ipsum dolor sit amet elit, sed do eiusmod tempor ut labore et dolore magna aliqua.', 'testimonis/veANIo9fLBWNk9d8E7fyXPU4NPIMGdDEDDcEhHdn.jpg', '2024-06-24 21:11:49', '2024-06-24 21:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraph` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `title`, `heading`, `subheading`, `paragraph`, `created_at`, `updated_at`) VALUES
(1, 'Tentang Kami', 'Trusted By 200 satisfied clients', 'Trusted By 200 + satisfied clients', 'Welcome to our world of love and celebrations! We are a passionate team dedicated to turning your dream wedding into a reality.', '2024-06-23 08:54:22', '2024-06-24 20:02:36'),
(2, 'Galeri', 'Wedding', 'Wedding', 'Wedding', '2024-06-24 20:55:04', '2024-06-24 20:55:04'),
(3, 'Galeri', 'Engagement', 'Engagement', 'Engagement', '2024-06-24 20:55:33', '2024-06-24 20:55:33'),
(4, 'Logo', 'Eternall Bliss', 'Eternall Bliss', 'There cursus massa at urnaaculis estieSed aliquamellus vitae ultrs condmentum leo massamollis its estiegittis miristum.', '2024-06-24 21:55:14', '2024-06-24 21:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corosels`
--
ALTER TABLE `corosels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeris_id_image_foreign` (`id_image`),
  ADD KEY `galeris_id_text_foreign` (`id_text`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homes_id_image_foreign` (`id_image`),
  ADD KEY `homes_id_text_foreign` (`id_text`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
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
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `layanans_id_image_foreign` (`id_image`),
  ADD KEY `layanans_id_text_foreign` (`id_text`);

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
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `corosels`
--
ALTER TABLE `corosels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeris`
--
ALTER TABLE `galeris`
  ADD CONSTRAINT `galeris_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `galeris_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);

--
-- Constraints for table `homes`
--
ALTER TABLE `homes`
  ADD CONSTRAINT `homes_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `homes_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);

--
-- Constraints for table `layanans`
--
ALTER TABLE `layanans`
  ADD CONSTRAINT `layanans_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `layanans_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
