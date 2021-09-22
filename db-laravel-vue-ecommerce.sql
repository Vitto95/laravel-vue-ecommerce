-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 22, 2021 at 10:09 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-laravel-vue-ecommerce`
--

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '2014_10_12_000000_create_users_table', 1),
(42, '2014_10_12_100000_create_password_resets_table', 1),
(43, '2019_08_19_000000_create_failed_jobs_table', 1),
(44, '2021_09_18_103636_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(6,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Nome Prodotto 1', 'nome-prodotto-1', '1 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 973.79, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(2, 'Nome Prodotto 2', 'nome-prodotto-2', '2 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 232.56, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(3, 'Nome Prodotto 3', 'nome-prodotto-3', '3 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 25.25, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(4, 'Nome Prodotto 4', 'nome-prodotto-4', '4 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 646.82, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(5, 'Nome Prodotto 5', 'nome-prodotto-5', '5 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 768.71, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(6, 'Nome Prodotto 6', 'nome-prodotto-6', '6 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 952.47, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(7, 'Nome Prodotto 7', 'nome-prodotto-7', '7 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 566.86, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(8, 'Nome Prodotto 8', 'nome-prodotto-8', '8 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '19', 232.63, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(9, 'Nome Prodotto 9', 'nome-prodotto-9', '9 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 224.85, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(10, 'Nome Prodotto 10', 'nome-prodotto-10', '10 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 56.48, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(11, 'Nome Prodotto 11', 'nome-prodotto-11', '11 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 507.63, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(12, 'Nome Prodotto 12', 'nome-prodotto-12', '12 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 719.61, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(13, 'Nome Prodotto 13', 'nome-prodotto-13', '13 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 708.86, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(14, 'Nome Prodotto 14', 'nome-prodotto-14', '14 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 965.67, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(15, 'Nome Prodotto 15', 'nome-prodotto-15', '15 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 651.26, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(16, 'Nome Prodotto 16', 'nome-prodotto-16', '16 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 693.59, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(17, 'Nome Prodotto 17', 'nome-prodotto-17', '17 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 18.00, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(18, 'Nome Prodotto 18', 'nome-prodotto-18', '18 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 458.88, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(19, 'Nome Prodotto 19', 'nome-prodotto-19', '19 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 690.67, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(20, 'Nome Prodotto 20', 'nome-prodotto-20', '20 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 882.64, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(21, 'Nome Prodotto 21', 'nome-prodotto-21', '21 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 33.74, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(22, 'Nome Prodotto 22', 'nome-prodotto-22', '22 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '17', 297.35, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(23, 'Nome Prodotto 23', 'nome-prodotto-23', '23 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 58.78, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(24, 'Nome Prodotto 24', 'nome-prodotto-24', '24 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 449.25, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(25, 'Nome Prodotto 25', 'nome-prodotto-25', '25 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 220.91, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(26, 'Nome Prodotto 26', 'nome-prodotto-26', '26 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 629.29, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(27, 'Nome Prodotto 27', 'nome-prodotto-27', '27 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 348.78, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(28, 'Nome Prodotto 28', 'nome-prodotto-28', '28 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 910.40, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(29, 'Nome Prodotto 29', 'nome-prodotto-29', '29 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '11', 655.63, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(30, 'Nome Prodotto 30', 'nome-prodotto-30', '30 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 35.47, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(31, 'Nome Prodotto 31', 'nome-prodotto-31', '31 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 833.26, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(32, 'Nome Prodotto 32', 'nome-prodotto-32', '32 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '16', 210.55, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(33, 'Nome Prodotto 33', 'nome-prodotto-33', '33 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '3', 517.83, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(34, 'Nome Prodotto 34', 'nome-prodotto-34', '34 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 514.20, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(35, 'Nome Prodotto 35', 'nome-prodotto-35', '35 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 987.72, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(36, 'Nome Prodotto 36', 'nome-prodotto-36', '36 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '7', 667.07, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(37, 'Nome Prodotto 37', 'nome-prodotto-37', '37 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 55.97, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(38, 'Nome Prodotto 38', 'nome-prodotto-38', '38 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 275.58, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(39, 'Nome Prodotto 39', 'nome-prodotto-39', '39 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 223.33, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(40, 'Nome Prodotto 40', 'nome-prodotto-40', '40 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 269.84, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(41, 'Nome Prodotto 41', 'nome-prodotto-41', '41 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 647.48, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(42, 'Nome Prodotto 42', 'nome-prodotto-42', '42 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 847.46, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(43, 'Nome Prodotto 43', 'nome-prodotto-43', '43 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 285.85, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(44, 'Nome Prodotto 44', 'nome-prodotto-44', '44 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '19', 276.66, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(45, 'Nome Prodotto 45', 'nome-prodotto-45', '45 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 209.96, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(46, 'Nome Prodotto 46', 'nome-prodotto-46', '46 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 41.73, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(47, 'Nome Prodotto 47', 'nome-prodotto-47', '47 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '7', 590.47, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(48, 'Nome Prodotto 48', 'nome-prodotto-48', '48 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 97.17, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(49, 'Nome Prodotto 49', 'nome-prodotto-49', '49 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 234.90, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(50, 'Nome Prodotto 50', 'nome-prodotto-50', '50 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '16', 741.66, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(51, 'Nome Prodotto 51', 'nome-prodotto-51', '51 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 375.84, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(52, 'Nome Prodotto 52', 'nome-prodotto-52', '52 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 794.15, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(53, 'Nome Prodotto 53', 'nome-prodotto-53', '53 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 733.47, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(54, 'Nome Prodotto 54', 'nome-prodotto-54', '54 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 208.61, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(55, 'Nome Prodotto 55', 'nome-prodotto-55', '55 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 63.57, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(56, 'Nome Prodotto 56', 'nome-prodotto-56', '56 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '16', 692.68, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(57, 'Nome Prodotto 57', 'nome-prodotto-57', '57 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 632.68, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(58, 'Nome Prodotto 58', 'nome-prodotto-58', '58 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '16', 440.99, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(59, 'Nome Prodotto 59', 'nome-prodotto-59', '59 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 433.77, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(60, 'Nome Prodotto 60', 'nome-prodotto-60', '60 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '11', 986.30, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(61, 'Nome Prodotto 61', 'nome-prodotto-61', '61 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 124.61, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(62, 'Nome Prodotto 62', 'nome-prodotto-62', '62 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '7', 500.84, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(63, 'Nome Prodotto 63', 'nome-prodotto-63', '63 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 282.23, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(64, 'Nome Prodotto 64', 'nome-prodotto-64', '64 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '7', 872.92, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(65, 'Nome Prodotto 65', 'nome-prodotto-65', '65 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 878.27, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(66, 'Nome Prodotto 66', 'nome-prodotto-66', '66 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 988.07, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(67, 'Nome Prodotto 67', 'nome-prodotto-67', '67 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 426.49, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(68, 'Nome Prodotto 68', 'nome-prodotto-68', '68 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 860.70, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(69, 'Nome Prodotto 69', 'nome-prodotto-69', '69 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '17', 210.03, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(70, 'Nome Prodotto 70', 'nome-prodotto-70', '70 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 819.15, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(71, 'Nome Prodotto 71', 'nome-prodotto-71', '71 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 825.34, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(72, 'Nome Prodotto 72', 'nome-prodotto-72', '72 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 480.93, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(73, 'Nome Prodotto 73', 'nome-prodotto-73', '73 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 230.43, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(74, 'Nome Prodotto 74', 'nome-prodotto-74', '74 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 252.13, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(75, 'Nome Prodotto 75', 'nome-prodotto-75', '75 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 706.59, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(76, 'Nome Prodotto 76', 'nome-prodotto-76', '76 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 860.44, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(77, 'Nome Prodotto 77', 'nome-prodotto-77', '77 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 183.87, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(78, 'Nome Prodotto 78', 'nome-prodotto-78', '78 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '3', 308.75, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(79, 'Nome Prodotto 79', 'nome-prodotto-79', '79 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 599.48, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(80, 'Nome Prodotto 80', 'nome-prodotto-80', '80 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 379.34, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(81, 'Nome Prodotto 81', 'nome-prodotto-81', '81 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '16', 434.73, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(82, 'Nome Prodotto 82', 'nome-prodotto-82', '82 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 786.45, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(83, 'Nome Prodotto 83', 'nome-prodotto-83', '83 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 692.91, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(84, 'Nome Prodotto 84', 'nome-prodotto-84', '84 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 949.58, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(85, 'Nome Prodotto 85', 'nome-prodotto-85', '85 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 232.75, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(86, 'Nome Prodotto 86', 'nome-prodotto-86', '86 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 765.63, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(87, 'Nome Prodotto 87', 'nome-prodotto-87', '87 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 139.40, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(88, 'Nome Prodotto 88', 'nome-prodotto-88', '88 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 245.74, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(89, 'Nome Prodotto 89', 'nome-prodotto-89', '89 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 128.19, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(90, 'Nome Prodotto 90', 'nome-prodotto-90', '90 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '11', 811.91, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(91, 'Nome Prodotto 91', 'nome-prodotto-91', '91 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '19', 263.37, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(92, 'Nome Prodotto 92', 'nome-prodotto-92', '92 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '7', 385.93, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(93, 'Nome Prodotto 93', 'nome-prodotto-93', '93 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '7', 331.77, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(94, 'Nome Prodotto 94', 'nome-prodotto-94', '94 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 823.32, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(95, 'Nome Prodotto 95', 'nome-prodotto-95', '95 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 388.55, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(96, 'Nome Prodotto 96', 'nome-prodotto-96', '96 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 549.11, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(97, 'Nome Prodotto 97', 'nome-prodotto-97', '97 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 718.35, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(98, 'Nome Prodotto 98', 'nome-prodotto-98', '98 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 832.36, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(99, 'Nome Prodotto 99', 'nome-prodotto-99', '99 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 828.65, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(100, 'Nome Prodotto 100', 'nome-prodotto-100', '100 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 597.36, '2021-09-22 07:12:34', '2021-09-22 07:12:34'),
(101, 'Nome Prodotto 1', 'nome-prodotto-1', '1 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 953.38, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(102, 'Nome Prodotto 2', 'nome-prodotto-2', '2 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '7', 847.08, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(104, 'Nome Prodotto 4', 'nome-prodotto-4', '4 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '19', 71.79, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(105, 'Nome Prodotto 5', 'nome-prodotto-5', '5 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 15.12, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(106, 'Nome Prodotto 6', 'nome-prodotto-6', '6 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 578.48, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(107, 'Nome Prodotto 7', 'nome-prodotto-7', '7 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 557.26, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(108, 'Nome Prodotto 8', 'nome-prodotto-8', '8 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '3', 534.13, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(109, 'Nome Prodotto 9', 'nome-prodotto-9', '9 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 923.92, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(110, 'Nome Prodotto 10', 'nome-prodotto-10', '10 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 386.30, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(111, 'Nome Prodotto 11', 'nome-prodotto-11', '11 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 255.05, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(112, 'Nome Prodotto 12', 'nome-prodotto-12', '12 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 906.77, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(113, 'Nome Prodotto 13', 'nome-prodotto-13', '13 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 945.04, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(114, 'Nome Prodotto 14', 'nome-prodotto-14', '14 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 188.66, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(115, 'Nome Prodotto 15', 'nome-prodotto-15', '15 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 376.88, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(116, 'Nome Prodotto 16', 'nome-prodotto-16', '16 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 992.98, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(117, 'Nome Prodotto 17', 'nome-prodotto-17', '17 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '17', 516.35, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(118, 'Nome Prodotto 18', 'nome-prodotto-18', '18 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '11', 333.80, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(119, 'Nome Prodotto 19', 'nome-prodotto-19', '19 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 525.92, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(120, 'Nome Prodotto 20', 'nome-prodotto-20', '20 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 178.97, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(121, 'Nome Prodotto 21', 'nome-prodotto-21', '21 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 28.26, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(122, 'Nome Prodotto 22', 'nome-prodotto-22', '22 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 298.91, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(123, 'Nome Prodotto 23', 'nome-prodotto-23', '23 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 478.43, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(124, 'Nome Prodotto 24', 'nome-prodotto-24', '24 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 595.51, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(125, 'Nome Prodotto 25', 'nome-prodotto-25', '25 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 7.18, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(126, 'Nome Prodotto 26', 'nome-prodotto-26', '26 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '3', 142.69, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(127, 'Nome Prodotto 27', 'nome-prodotto-27', '27 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 713.76, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(128, 'Nome Prodotto 28', 'nome-prodotto-28', '28 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 947.79, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(129, 'Nome Prodotto 29', 'nome-prodotto-29', '29 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 559.64, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(130, 'Nome Prodotto 30', 'nome-prodotto-30', '30 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 525.11, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(131, 'Nome Prodotto 31', 'nome-prodotto-31', '31 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 753.03, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(132, 'Nome Prodotto 32', 'nome-prodotto-32', '32 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 600.35, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(133, 'Nome Prodotto 33', 'nome-prodotto-33', '33 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '3', 469.16, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(134, 'Nome Prodotto 34', 'nome-prodotto-34', '34 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 717.68, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(135, 'Nome Prodotto 35', 'nome-prodotto-35', '35 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 251.10, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(136, 'Nome Prodotto 36', 'nome-prodotto-36', '36 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 199.85, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(137, 'Nome Prodotto 37', 'nome-prodotto-37', '37 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 207.88, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(138, 'Nome Prodotto 38', 'nome-prodotto-38', '38 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 811.99, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(139, 'Nome Prodotto 39', 'nome-prodotto-39', '39 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 258.07, '2021-09-22 10:01:17', '2021-09-22 10:01:17');
INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(140, 'Nome Prodotto 40', 'nome-prodotto-40', '40 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 54.57, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(141, 'Nome Prodotto 41', 'nome-prodotto-41', '41 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 439.74, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(142, 'Nome Prodotto 42', 'nome-prodotto-42', '42 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 361.87, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(143, 'Nome Prodotto 43', 'nome-prodotto-43', '43 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 20.96, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(144, 'Nome Prodotto 44', 'nome-prodotto-44', '44 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 856.47, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(145, 'Nome Prodotto 45', 'nome-prodotto-45', '45 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 748.85, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(146, 'Nome Prodotto 46', 'nome-prodotto-46', '46 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 769.56, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(147, 'Nome Prodotto 47', 'nome-prodotto-47', '47 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 25.96, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(148, 'Nome Prodotto 48', 'nome-prodotto-48', '48 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 909.72, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(149, 'Nome Prodotto 49', 'nome-prodotto-49', '49 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 2.80, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(150, 'Nome Prodotto 50', 'nome-prodotto-50', '50 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 809.57, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(151, 'Nome Prodotto 51', 'nome-prodotto-51', '51 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '13', 41.56, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(152, 'Nome Prodotto 52', 'nome-prodotto-52', '52 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 881.33, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(153, 'Nome Prodotto 53', 'nome-prodotto-53', '53 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 305.88, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(154, 'Nome Prodotto 54', 'nome-prodotto-54', '54 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 120.94, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(155, 'Nome Prodotto 55', 'nome-prodotto-55', '55 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '19', 458.05, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(156, 'Nome Prodotto 56', 'nome-prodotto-56', '56 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 488.79, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(157, 'Nome Prodotto 57', 'nome-prodotto-57', '57 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 147.72, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(158, 'Nome Prodotto 58', 'nome-prodotto-58', '58 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 566.46, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(159, 'Nome Prodotto 59', 'nome-prodotto-59', '59 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 458.93, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(160, 'Nome Prodotto 60', 'nome-prodotto-60', '60 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 514.79, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(161, 'Nome Prodotto 61', 'nome-prodotto-61', '61 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 65.70, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(162, 'Nome Prodotto 62', 'nome-prodotto-62', '62 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 787.56, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(163, 'Nome Prodotto 63', 'nome-prodotto-63', '63 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 27.06, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(164, 'Nome Prodotto 64', 'nome-prodotto-64', '64 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '2', 612.06, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(165, 'Nome Prodotto 65', 'nome-prodotto-65', '65 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '11', 6.03, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(166, 'Nome Prodotto 66', 'nome-prodotto-66', '66 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 918.78, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(167, 'Nome Prodotto 67', 'nome-prodotto-67', '67 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 599.88, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(168, 'Nome Prodotto 68', 'nome-prodotto-68', '68 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 177.99, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(169, 'Nome Prodotto 69', 'nome-prodotto-69', '69 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '17', 807.29, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(170, 'Nome Prodotto 70', 'nome-prodotto-70', '70 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 163.13, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(171, 'Nome Prodotto 71', 'nome-prodotto-71', '71 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 543.37, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(172, 'Nome Prodotto 72', 'nome-prodotto-72', '72 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 182.56, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(173, 'Nome Prodotto 73', 'nome-prodotto-73', '73 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 718.60, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(174, 'Nome Prodotto 74', 'nome-prodotto-74', '74 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 611.72, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(175, 'Nome Prodotto 75', 'nome-prodotto-75', '75 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 961.09, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(176, 'Nome Prodotto 76', 'nome-prodotto-76', '76 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 409.77, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(177, 'Nome Prodotto 77', 'nome-prodotto-77', '77 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 250.65, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(178, 'Nome Prodotto 78', 'nome-prodotto-78', '78 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 508.12, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(179, 'Nome Prodotto 79', 'nome-prodotto-79', '79 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 996.17, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(180, 'Nome Prodotto 80', 'nome-prodotto-80', '80 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '4', 243.03, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(181, 'Nome Prodotto 81', 'nome-prodotto-81', '81 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '6', 269.77, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(182, 'Nome Prodotto 82', 'nome-prodotto-82', '82 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '10', 86.42, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(183, 'Nome Prodotto 83', 'nome-prodotto-83', '83 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 348.40, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(184, 'Nome Prodotto 84', 'nome-prodotto-84', '84 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 779.90, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(185, 'Nome Prodotto 85', 'nome-prodotto-85', '85 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '12', 189.11, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(186, 'Nome Prodotto 86', 'nome-prodotto-86', '86 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '9', 407.57, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(187, 'Nome Prodotto 87', 'nome-prodotto-87', '87 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 509.26, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(188, 'Nome Prodotto 88', 'nome-prodotto-88', '88 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 820.45, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(189, 'Nome Prodotto 89', 'nome-prodotto-89', '89 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 598.82, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(190, 'Nome Prodotto 90', 'nome-prodotto-90', '90 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 518.95, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(191, 'Nome Prodotto 91', 'nome-prodotto-91', '91 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '5', 729.33, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(192, 'Nome Prodotto 92', 'nome-prodotto-92', '92 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '14', 994.32, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(193, 'Nome Prodotto 93', 'nome-prodotto-93', '93 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 499.11, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(194, 'Nome Prodotto 94', 'nome-prodotto-94', '94 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '0', 187.68, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(195, 'Nome Prodotto 95', 'nome-prodotto-95', '95 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '18', 584.91, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(196, 'Nome Prodotto 96', 'nome-prodotto-96', '96 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '15', 117.47, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(197, 'Nome Prodotto 97', 'nome-prodotto-97', '97 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '1', 458.98, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(198, 'Nome Prodotto 98', 'nome-prodotto-98', '98 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '20', 363.61, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(199, 'Nome Prodotto 99', 'nome-prodotto-99', '99 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '8', 948.36, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(200, 'Nome Prodotto 100', 'nome-prodotto-100', '100 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nam harum possimus quaerat consequatur eveniet! Ducimus soluta quasi accusamus veritatis dignissimos quas quos esse! Ullam repellat minima aspernatur perferendis necessitatibus numquam.', NULL, '17', 231.37, '2021-09-22 10:01:17', '2021-09-22 10:01:17'),
(201, 'MacBook Air', 'macbook-air', 'Mac 2021', 'products_img/2mkOauDha2e5r9qhdKcGPcPnBj2YBatmxml0vQT3.jpg', '12', 1499.00, '2021-09-22 11:45:58', '2021-09-22 11:45:58'),
(202, 'Iphone 11', 'iphone-11', 'Un chip superpotente. La velocità del 5G. Un sistema evoluto a doppia fotocamera. La resistenza del Ceramic Shield, più robusto di qualsiasi vetro per smartphone. E uno sfolgorante display OLED. iPhone 11 ha proprio tutto. Anche due formati perfetti.', 'products_img/rX5eOwJurxISYliDkneNSawa5Q5nRxzqwKhmi7uJ.png', '14', 749.00, '2021-09-22 13:24:07', '2021-09-22 13:24:07'),
(203, 'Ipad', 'ipad', 'Ipad 128GB grey', 'products_img/swVJzhhHTWQkITfTpUsTYPZ7Ck6xGBatIuqslJ1c.png', '11', 699.00, '2021-09-22 14:38:43', '2021-09-22 14:38:43'),
(204, 'Acer Swift', 'acer-swift', 'Acer Swift Portatile - Colore Grigio', 'products_img/UP7EhgIcY56ciSyewnwGGhKqHSz3aNrpJKGgPMup.jpg', '19', 900.00, '2021-09-22 18:25:38', '2021-09-22 18:25:38'),
(205, 'Ipad Air Green', 'ipad-air-green', 'Ipad Air Green 128gb', 'products_img/yKsbjfWiUXEf89C2FJKjbPx4w7WIqKpqkuNGfyG7.jpg', '0', 1000.00, '2021-09-22 18:27:30', '2021-09-22 18:27:30'),
(206, 'Iphone 13 Pink', 'iphone-13-pink', 'Iphone 13 64 gb pink', 'products_img/TPi4cUA0VDw3lCHsfA3JNaCOqEGAsSy7pgCqscmP.jpg', '15', 1299.00, '2021-09-22 18:28:14', '2021-09-22 18:28:14'),
(207, 'MSI portatile gray', 'msi-portatile-gray', 'MSI portatile gray', 'products_img/Tc1Q8cHNCvowByKDQOFiRJDCY2kABtR3HEolBCEk.jpg', '4', 1600.00, '2021-09-22 18:28:54', '2021-09-22 18:28:54'),
(208, 'Lenovo Tab', 'lenovo-tab', 'Lenovo tab 64 gb black', 'products_img/uUWsrQKKV3Mojnmevx0nUoSB5KahL8HDKFOnQdEG.jpg', '12', 299.00, '2021-09-22 18:29:46', '2021-09-22 18:29:46'),
(209, 'Samsung Galaxy s7 gray', 'samsung-galaxy-s7-gray', 'Samsung Galaxy s7 gray 128gb', 'products_img/a9Dgt44M03yb9RNSYf2KXmJt813cqQNBbJDRug88.jpg', '8', 700.00, '2021-09-22 18:30:40', '2021-09-22 18:30:40'),
(210, 'Samsung Galaxy a32', 'samsung-galaxy-a32', 'Samsung Galaxy a32 5g', 'products_img/zeZdoECkhULevAj6ZUdttJ8oBd4knfMrKoATje0R.jpg', '11', 499.00, '2021-09-22 18:41:38', '2021-09-22 18:41:38'),
(211, 'Xiaomi Redmi Note 10 Pro 5g 128gb', 'xiaomi-redmi-note-10-pro-5g-128gb', 'Xiaomi Redmi Note 10 Pro 5g 128gb - Gray', 'products_img/2W0toHKpN800Tr44ocw0yBXz6OCTYfmQW1XNohZz.jpg', '1', 299.00, '2021-09-22 18:42:30', '2021-09-22 18:42:30'),
(212, 'Samsung Galaxy a7', 'samsung-galaxy-a7', 'Color Black', 'products_img/YU51Nn3wJKR6sp9KWgzIWDXvSsoJwllElR6tHpux.jpg', '0', 500.00, '2021-09-22 18:43:30', '2021-09-22 18:43:30'),
(213, 'Samsung Galaxy s3 fold', 'samsung-galaxy-s3-fold', 'Samsung Galaxy s3 fold 5g', 'products_img/O8vJ6GXlup4CpK6My2q6g4PGLCO3GhN7r49lBrdA.jpg', '3', 2000.00, '2021-09-22 18:53:29', '2021-09-22 18:53:29'),
(214, 'OnePlus 8t', 'oneplus-8t', 'OnePlus 8t 5g 128gb', 'products_img/yje66zg7sh6naQZgkvZcWLhyeOlbANokZ844zmbQ.jpg', '5', 499.00, '2021-09-22 18:54:08', '2021-09-22 18:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Vittorio Grimaldi', 'grimaldi.vitto@gmail.com', NULL, '$2y$10$p03/NwuqVj43o6T0fbyMO.tnG3zL.H3dXzpcsF0Uh9KoQDQwvoQ7K', NULL, '2021-09-22 07:12:16', '2021-09-22 07:12:16');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
