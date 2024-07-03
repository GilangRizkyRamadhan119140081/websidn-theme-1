-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2024 at 03:00 AM
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
-- Database: `tema1`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `judul`, `text`, `video`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Wedding Organizer Terbaik Untuk Pilihan Pernikahan Anda', 'Welcome to our world of love and celebrations! We are a passionate team dedicated to turning your dream wedding into a reality. With years of experience and a heart full of creativity, we strive to make every moment of your special day unforgettable', 'https://www.youtube.com/embed/sEhS83z3XRM?si=x5izIReQ5NraJXHx', 'websidn/uploads/KrDhTrRv9nGydEaa6vtvFwhK4J8NvuIamqLWEcH7.jpg', '2024-07-01 17:40:08', '2024-07-01 17:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `blogconsoles`
--

CREATE TABLE `blogconsoles` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogkategoris`
--

CREATE TABLE `blogkategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogkategoris`
--

INSERT INTO `blogkategoris` (`id`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', 'wedding', '2024-07-01 17:41:29', '2024-07-01 17:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` bigint UNSIGNED DEFAULT NULL,
  `deskripsi_singkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `judul`, `slug`, `id_kategori`, `deskripsi_singkat`, `keyword`, `deskripsi`, `status`, `date`, `image`, `nama_penulis`, `created_at`, `updated_at`) VALUES
(1, 'Wedding Organizer Terbaik Untuk Pilihan Pernikahan Anda', 'wedding-organizer-terbaik-untuk-pilihan-pernikahan-anda', 1, 'Beberapa daftar paket wedding untuk pernikahan pilihan anda', 'Wedding', '<p>Welcome to our world of love and celebrations! We are a passionate team dedicated to turning your dream wedding into a reality. With years of experience and a heart full of creativity, we strive to make every moment of your special day unforgettable</p>\r\n<p>There cursus massa at urnaaculis estieSed aliquamellus vitae ultrs condmentum leo massamollis its estiegittis miristum.</p>\r\n<p>Welcome to our world of love and celebrations! We are a passionate team dedicated to turning your dream wedding into a reality. With years of experience and a heart full of creativity, we strive to make every moment of your special day unforgettable</p>\r\n<p>There cursus massa at urnaaculis estieSed aliquamellus vitae ultrs condmentum leo massamollis its estiegittis miristum.</p>\r\n<p>Welcome to our world of love and celebrations! We are a passionate team dedicated to turning your dream wedding into a reality. With years of experience and a heart full of creativity, we strive to make every moment of your special day unforgettable</p>', '1', '2024-07-01', 'websidn/blogs/xQZygaQCnb21mqMoh8ThbrFySCGTqd4noep9C5CK.jpg', 'Jacque Phillips', '2024-07-01 17:43:49', '2024-07-01 17:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `blogtags`
--

CREATE TABLE `blogtags` (
  `id` bigint UNSIGNED NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogtags`
--

INSERT INTO `blogtags` (`id`, `tags`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'WO', 'wo', '2024-07-01 17:41:53', '2024-07-01 17:41:53');

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
(1, 'Layanan', 'Layanan 1', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/lJgyQaie7ZvinHrrnYs7dN9RAFwNV3eoGKMx6Y8u.jpg', '2024-07-01 18:18:23', '2024-07-01 18:18:23'),
(2, 'Layanan', 'Layanan 2', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/HHqX66D3WAnXHVgvSbjoAIIRNcAQuberwg3sxaST.jpg', '2024-07-01 18:18:37', '2024-07-01 18:18:37'),
(3, 'Layanan', 'Layanan 3', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/3x3tfqVFfMvCcb8cyWNblsqgRjWXa4E3m8XJf0zM.jpg', '2024-07-01 18:18:49', '2024-07-01 18:18:49'),
(4, 'Layanan', 'Layanan 4', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/YiVuFFavVhhbSZvawKI9jhsoixnyH0etzvzu6ToM.jpg', '2024-07-01 18:19:03', '2024-07-01 18:19:03'),
(5, 'Layanan', 'Layanan 5', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/KMlVHqIpp5bjTQEfZNC49k6GE9YTpom4OF1r2g6X.jpg', '2024-07-01 18:19:22', '2024-07-01 18:19:22'),
(6, 'Pegawai', 'Orion Frost', 'Kepala Operasional', 'websidn/cards/Uc1XqdkX90uMP2iGJKkJbocTYwnEcOT8fH34v4iq.jpg', '2024-07-01 18:19:57', '2024-07-01 18:19:57'),
(7, 'Pegawai', 'James Sky', 'Kepala Organizer', 'websidn/cards/bEjljAHyLh0jqaFEq1ChAmHtCONrU3a1yuX2Ja7u.jpg', '2024-07-01 18:20:33', '2024-07-01 18:20:33'),
(8, 'Pegawai', 'Jemes Born', 'Executive', 'websidn/cards/mxGXFyWLPk9K94JMn2LYxvUiQt87IUDpjvpPFlcP.jpg', '2024-07-01 18:20:58', '2024-07-01 18:20:58'),
(9, 'Pegawai', 'Maria Hill', 'Kepala Chef', 'websidn/cards/dTQoC0iP3y9grCrOlS4p5hbQPPmpyDGFDHrplkuU.jpg', '2024-07-01 18:21:40', '2024-07-01 18:21:40'),
(10, 'Portofolio', 'Project 1', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/2qbHOxWRIYTv4rViEFJjHJzVn9mp5rrlYWf232yK.jpg', '2024-07-01 18:22:20', '2024-07-01 18:22:20'),
(11, 'Portofolio', 'Project 2', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/emAUbjtT6BSc7WmFFTPU1tK3wjPJdX388M8DvXT9.jpg', '2024-07-01 18:22:34', '2024-07-01 18:22:34'),
(12, 'Portofolio', 'Project 3', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/KRQ8JTPM6OxH03oY83pmk5FLgsScm6iqUEoWo4RU.jpg', '2024-07-01 18:22:49', '2024-07-01 18:22:49'),
(13, 'Portofolio', 'Project 4', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/6BbyFW1LoIVW3UzxnHfNPq7VAQvi67N586zWzkpU.jpg', '2024-07-01 18:23:02', '2024-07-01 18:23:02'),
(14, 'Portofolio', 'Project 5', 'Contrary to popular belief, ipsum is not simply random.', 'websidn/cards/Kpzx5SNeN8NtUdfKhILRVkbvVKTgleIjJQoNbOTS.jpg', '2024-07-01 18:23:20', '2024-07-01 18:23:20');

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
  `map` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `whatsapp`, `facebook`, `instagram`, `tiktok`, `youtube`, `linkedin`, `map`, `created_at`, `updated_at`) VALUES
(1, '082038491283', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7074.183936675103!2d-73.98354113874954!3d40.75243152133734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f7b6376d9b53%3A0xd27fd8e9d8b605d8!2sPerfect%20Wedding%20NYC!5e0!3m2!1sid!2sid!4v1719289912387!5m2!1sid!2sid', '2024-07-01 17:40:32', '2024-07-01 17:40:32');

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
(1, 'Landscape', 'websidn/corosels/lIIz9kEkX1dh9bkVIZvSIsn8W4xy0cuTV7MHDsAv.jpg', '2024-07-01 17:30:20', '2024-07-01 17:30:20'),
(2, 'Landscape', 'websidn/corosels/8oqJkge3ONkXwp5mT8ICizZEKGVBptW1h63M23q0.jpg', '2024-07-01 17:30:38', '2024-07-01 17:30:38'),
(3, 'Landscape', 'websidn/corosels/m09VCoFHCE3dxEYvPmieBWErokMpl3Kkht7byIHG.jpg', '2024-07-01 17:31:11', '2024-07-01 17:31:11');

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `kategori`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Brosur', 'websidn/uploads/files/hv24H59XXdIas8372qmpnq3U5fyf7n1lhGGxT5jm.pdf', '2024-07-01 17:38:05', '2024-07-01 17:38:05'),
(2, 'Pricelist', 'websidn/uploads/files/ExKZqhWNiZZS8HHHFMkFzYTrHhGtV6C6e7VlD5gr.pdf', '2024-07-01 17:38:15', '2024-07-01 17:38:15'),
(3, 'Potrait', 'websidn/uploads/files/FpUUWrfEMLM2BQEbgqQtPOU6oeZvDDuwzPINmgVC.pdf', '2024-07-01 17:38:26', '2024-07-01 17:38:33');

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
(1, 3, 2, '2024-07-01 17:36:41', '2024-07-01 17:36:41'),
(2, 2, 3, '2024-07-01 17:36:50', '2024-07-01 17:36:50'),
(3, 5, 2, '2024-07-01 17:36:59', '2024-07-01 17:36:59'),
(4, 4, 3, '2024-07-01 17:37:06', '2024-07-01 17:37:06'),
(5, 5, 2, '2024-07-01 17:37:13', '2024-07-01 17:37:13');

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
(1, 'Logo', 1, 1, '2024-07-01 17:36:19', '2024-07-01 17:36:19'),
(2, 'Header', 6, 4, '2024-07-02 05:18:37', '2024-07-02 05:18:37');

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
(1, 'Landscape', 'websidn/images/UdWcJGN9n8ENjSDj3Ei73ti3J6ams74FPCDfsC9s.png', '2024-07-01 05:47:26', '2024-07-01 05:47:26'),
(2, 'Landscape', 'websidn/images/aXAGSwRvtMTj66bl5TV9qjheQLqkOj4JgtpiFRvm.jpg', '2024-07-01 05:48:19', '2024-07-01 05:48:19'),
(3, 'Landscape', 'websidn/images/3gAEg7Wj0CekjDUF2aVuWPAzF1ePe8hJlounrL4j.jpg', '2024-07-01 05:48:32', '2024-07-01 05:48:32'),
(4, 'Landscape', 'websidn/images/Of2n0EUOC9W0adEty1gkcz9CRm3NUePthIg7bCeP.jpg', '2024-07-01 17:29:24', '2024-07-01 17:29:24'),
(5, 'Landscape', 'websidn/images/t7yB2wWU0cNxFZfm1eT4bBZFpcxJ5g5sVedOqQcB.jpg', '2024-07-01 17:29:38', '2024-07-01 17:29:38'),
(6, 'Landscape', 'websidn/images/XJtIgdpqbbFX2INVHGxGidp541EPj3fBr8rY0yyx.jpg', '2024-07-02 05:18:27', '2024-07-02 05:24:25');

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
(3, '0001_01_01_0000012_create_card_table', 1),
(4, '0001_01_01_0000013_create_corosel_table', 1),
(5, '0001_01_01_0000014_create_price_table', 1),
(6, '0001_01_01_0000015_create_file_table', 1),
(7, '0001_01_01_0000016_create_blogkategori_table', 1),
(8, '0001_01_01_0000017_create_blogtag_table', 1),
(9, '0001_01_01_0000018_create_blogconsole_table', 1),
(10, '0001_01_01_000001_create_cache_table', 1),
(11, '0001_01_01_0000020_create_blog_table', 1),
(12, '0001_01_01_0000021_create_multitagblog_table', 1),
(13, '0001_01_01_000002_create_jobs_table', 1),
(14, '0001_01_01_000003_create_image_table', 1),
(15, '0001_01_01_000004_create_text_table', 1),
(16, '0001_01_01_000005_create_testimoni_table', 1),
(17, '0001_01_01_000006_create_home_table', 1),
(18, '0001_01_01_000007_create_layanan_table', 1),
(19, '0001_01_01_000008_create_galeri_table', 1),
(20, '0001_01_01_000009_create_about_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multitagblog`
--

CREATE TABLE `multitagblog` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `blogtag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multitagblog`
--

INSERT INTO `multitagblog` (`id`, `blog_id`, `blogtag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

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
(1, 'Basic Package', 'Basic package for intimate wedding', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/LaL5YlgSbQoNb0ImehDNGrpBqPbpPcgZn7deBjyw.jpg', '2024-07-01 17:34:29', '2024-07-01 17:34:29'),
(2, 'Silver Package', 'Luxury package for extravagant', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/dfSuoXkGjNqAW2Uy08EuiGTgFKspaVHZ7zmh7yBu.jpg', '2024-07-01 17:34:57', '2024-07-01 17:34:57'),
(3, 'Premium Package', 'Premium package for fairy tale', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/RzSUl3HQ4rG1sI4buJw8fKZ3PnD1s1Segfh0dIe3.jpg', '2024-07-01 17:35:34', '2024-07-01 17:35:34'),
(4, 'Platinum Package', 'Exclusive package for the wedding', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/fsA2elGUxeYaL83l7aJJNfgwNLedoNB8znwIqd2V.jpg', '2024-07-01 17:36:06', '2024-07-01 17:36:06');

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
('38s56DHNa2j8vVTbkmGAwyGDFCxYu50naGMTBNJT', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1dFN09uczcyNWg3TXNCSzZCdTY2eVVrRnhZeFdTSVY0M3NLOE9hbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1719883531),
('h2iCRbjkzGDIu3oe6mQOkcmk8fKa6gkLAA9UBRVz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXUxRDZsOFpZUTZyNm5lNVVGSTE0ZUV1NzJIeHBwWjhIN2MxNlRzSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1719923670);

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
(1, 'James Fernando', 'Pengusaha', 'There cursus massa at urnaaculis estieSed aliquamellus vitae ultrs condmentum leo massamollis its estiegittis miristum.', 'websidn/testimonis/6yqfkYta9sIzM8zMysaUix6QQUQkcXX1LdghkoCd.jpg', '2024-07-01 17:32:37', '2024-07-01 17:32:37'),
(2, 'Mernanda Vercy', 'Entertainer', 'There cursus massa at urnaaculis estieSed aliquamellus vitae ultrs condmentum leo massamollis its estiegittis miristum.', 'websidn/testimonis/hwIVmq0a9rZ8a01hD5k7pfXimnPIE76G4MjnNPMz.jpg', '2024-07-01 17:33:01', '2024-07-01 17:33:01'),
(3, 'Maria Hill', 'Beauty Blogger', 'There cursus massa at urnaaculis estieSed aliquamellus vitae ultrs condmentum leo massamollis its estiegittis miristum.', 'websidn/testimonis/jtbt2l9nQXrLTzWMWZTo2rowHBpoVEBwF3IpD7v3.jpg', '2024-07-01 17:33:18', '2024-07-01 17:33:18'),
(4, 'Jacque Philips', 'Content Creator', 'There cursus massa at urnaaculis estieSed aliquamellus vitae ultrs condmentum leo massamollis its estiegittis miristum.', 'websidn/testimonis/d8rWMCAvatpGRnxAvBTQqdzSxaimN8LmzMruKVjb.jpg', '2024-07-01 17:33:46', '2024-07-01 17:33:46');

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
(1, 'Logo', 'Logo', 'Logo', 'Logo', '2024-07-01 05:46:48', '2024-07-01 05:46:48'),
(2, 'Wedding', 'Wedding', 'Wedding', 'Wedding', '2024-07-01 05:46:58', '2024-07-01 05:46:58'),
(3, 'Engagement', 'Engagement', 'Engagement', 'Engagement', '2024-07-01 05:47:09', '2024-07-01 05:47:09'),
(4, 'Header', 'Header', 'Header', 'Header', '2024-07-02 05:17:55', '2024-07-02 05:17:55');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'superadmin@gmail.com', '2024-07-01 05:45:09', '$2y$12$pR4at5RV8urGuVE/pfy5COQRBRROyr21YfloO3FgMpquwWc85iqKO', 'NSkMbpCjaH', '2024-07-01 05:45:10', '2024-07-01 05:45:10'),
(2, 'Admin', 'admin@gmail.com', '2024-07-01 05:45:10', '$2y$12$GnGSNWvt84jW72dYy8pcj.PEwqDNMiwSw922SFkPLJyIpcUQL9UH.', 'MgIT1z0r4g', '2024-07-01 05:45:10', '2024-07-01 05:45:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogconsoles`
--
ALTER TABLE `blogconsoles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogkategoris`
--
ALTER TABLE `blogkategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `blogtags`
--
ALTER TABLE `blogtags`
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
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `multitagblog`
--
ALTER TABLE `multitagblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multitagblog_blog_id_foreign` (`blog_id`),
  ADD KEY `multitagblog_blogtag_id_foreign` (`blogtag_id`);

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
-- AUTO_INCREMENT for table `blogconsoles`
--
ALTER TABLE `blogconsoles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogkategoris`
--
ALTER TABLE `blogkategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogtags`
--
ALTER TABLE `blogtags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multitagblog`
--
ALTER TABLE `multitagblog`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `blogkategoris` (`id`);

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

--
-- Constraints for table `multitagblog`
--
ALTER TABLE `multitagblog`
  ADD CONSTRAINT `multitagblog_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `multitagblog_blogtag_id_foreign` FOREIGN KEY (`blogtag_id`) REFERENCES `blogtags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
