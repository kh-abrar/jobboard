-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2024 at 04:46 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Larry', 'admin1@gmail.com', '$2y$10$d57L7XCYpodw5Q3FcV.eQuSerN3MQ17dhDEw24R6xE/us2.yOCFLq', '2023-10-12 09:06:07', '2023-10-12 09:06:07'),
(2, 'Abrar', 'admin2@gmail.com', '$2y$10$dHFWUh6MNGqZGKGNoUbZtesci6DpTRweZpdTO1GbFtiXPCusZ9MdO', '2023-10-29 07:47:49', '2023-10-29 07:47:49'),
(3, 'Shadeed', 'admin3@gmail.com', '$2y$10$CnzEOgqbFk/jyCMxfOcgCeaGUPMBZ2DdugVVdGWF2w5eUL8WoZPJK', '2023-10-29 02:59:50', '2023-10-29 02:59:50'),
(4, 'admin1234', 'admin5@gmail.com', '$2y$10$pqJiZ0kSsykduIej3r.eu.w7YXyw4/TrgwEinCC95YTNUZNbvgB9G', '2023-10-29 09:03:37', '2023-10-29 09:03:37'),
(5, 'JKK', 'admin9@gmail.com', '$2y$10$DTB1DdSo0PidPULeC3TNUeyW34DYZ/TBeQygUcNZXZFG.4SYLSTBu', '2023-11-25 07:56:34', '2023-11-25 07:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `cv` varchar(400) NOT NULL,
  `job_id` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `email` varchar(200) NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `cv`, `job_id`, `user_id`, `email`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(6, 'gantt chart.pdf', '5', 2, 'mac@gmail.com', 'nik.jpg', 'MERN DEV', 'Dhaka', 'MV Company', 'Full Time', '2023-11-22 07:20:32', '2023-11-22 07:20:32'),
(7, 'gantt chart.pdf', '3', 2, 'mac@gmail.com', 'job_logo_2.jpg', 'Tester', 'Dhaka', 'MiliTech', 'Full Time', '2023-11-25 08:11:29', '2023-11-25 08:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2023-09-21 13:45:07', '2023-09-21 13:45:07'),
(2, 'Design', '2023-09-21 13:45:07', '2023-09-21 13:45:07'),
(8, 'HR', '2023-11-20 08:27:12', '2023-11-20 08:27:12'),
(9, 'Again', '2023-11-25 07:31:58', '2023-11-25 07:31:58');

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
  `id` int NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `vacancy` varchar(200) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `application_deadline` varchar(200) NOT NULL,
  `jobdescription` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `responsibilities` varchar(200) NOT NULL,
  `education_experience` varchar(200) NOT NULL,
  `otherbenefits` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `company`, `job_type`, `vacancy`, `experience`, `salary`, `Gender`, `application_deadline`, `jobdescription`, `responsibilities`, `education_experience`, `otherbenefits`, `image`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Product Designer', 'Palo Alto', 'Adidas', 'Full Time', '2', '2 to 3 year(s)', '40k BDT', 'Any', '25th April, 2023', 'Design user-centric solutions for digital and physical products, combining creativity with user research.', 'Concept Sketching: Generate initial concept sketches and 3D models for new products. Explore various materials and manufacturing processes.', 'Bachelors Degree any reputed University', 'Teleportation Privileges: Our product designers have access to a cutting-edge teleportation system, allowing them to work from anywhere in the world without the hassle of commuting.', 'job_logo_3.jpg', 'Programming', '2023-09-21 12:05:44', '2023-09-21 12:05:44'),
(2, 'Graphic Designer', 'Palo Alto', 'NewTech', 'Part Time', '2', '1 to 2 year(s)', '30-40k BDT', 'Any', '29th January, 2024', 'Need an adobe illustrator 5 expert', 'Create design mockups, prototypes. Use Jira. Communicate through clients.', 'Diploma in Designing.', 'Transportation availability.', 'job_logo_2.jpg', 'Design', '2023-09-21 13:51:49', '2023-09-21 13:51:49'),
(3, 'Tester', 'Dhaka', 'MiliTech', 'Full Time', '1', '1 to 2 year(s)', '50K BDT', 'Any', '6th June, 2023', 'A hardworking software tester who is also good at programming.', 'Rigorously Test Modules, Api. Give feedback regarding bugs', 'Bachelors in Computer Science', 'Transportation', 'job_logo_2.jpg', 'Programming', '2023-09-21 13:59:29', '2023-09-21 13:59:29'),
(5, 'MERN DEV', 'Dhaka', 'MV Company', 'Full Time', '3', '1-3 years', '50k - 70k BDT', 'Male', '20 April, 2022', 'gdfsgdfsgsdfhdsh', 'Design user-centric solutions for digital and physical products, combining creativity with user research.', 'Bachelors Degree any reputed University', 'Teleportation Privileges: Our product designers have access to a cutting-edge teleportation system, allowing them to work from anywhere in the world without the hassle of commuting.', 'nik.jpg', 'Programming', '2023-11-21 06:46:22', '2023-11-21 06:46:22'),
(6, 'Product Designer', 'Barishal', 'MS Company', 'Full Time', '3', '3-6 years', '70k - 100k BDT', 'Male', '20 April, 2022', 'fgdedgefb', 'dfbsdfbsdfb', 'dfbadfbadfbadb', 'adfbdabadfb', 'ms.jpg', 'Design', '2023-11-21 07:25:29', '2023-11-21 07:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `jobsaved`
--

CREATE TABLE `jobsaved` (
  `id` int NOT NULL,
  `job_id` int NOT NULL,
  `user_id` int NOT NULL,
  `job_image` varchar(200) NOT NULL,
  `job_title` varchar(200) NOT NULL,
  `job_region` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `job_type` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobsaved`
--

INSERT INTO `jobsaved` (`id`, `job_id`, `user_id`, `job_image`, `job_title`, `job_region`, `company`, `job_type`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'job_logo_2.jpg', 'Tester', 'Dhaka', 'MiliTech', 'Full Time', '2023-09-22 02:32:54', '2023-09-22 02:32:54'),
(2, 1, 2, 'job_logo_3.jpg', 'Product Designer', 'Dhaka', 'Adidas', 'Full Time', '2023-09-22 02:54:50', '2023-09-22 02:54:50'),
(3, 3, 2, 'job_logo_2.jpg', 'Tester', 'Dhaka', 'MiliTech', 'Full Time', '2023-09-22 09:57:08', '2023-09-22 09:57:08'),
(4, 3, 2, 'job_logo_2.jpg', 'Tester', 'Dhaka', 'MiliTech', 'Full Time', '2023-09-22 09:59:01', '2023-09-22 09:59:01'),
(5, 3, 2, 'job_logo_2.jpg', 'Tester', 'Dhaka', 'MiliTech', 'Full Time', '2023-09-22 10:03:27', '2023-09-22 10:03:27'),
(6, 1, 2, 'job_logo_3.jpg', 'Product Designer', 'Dhaka', 'Adidas', 'Full Time', '2023-09-22 10:07:33', '2023-09-22 10:07:33'),
(7, 1, 2, 'job_logo_3.jpg', 'Product Designer', 'Dhaka', 'Adidas', 'Full Time', '2023-09-22 10:08:17', '2023-09-22 10:08:17'),
(8, 2, 2, 'job_logo_2.jpg', 'Graphic Designer', 'Palo Alto', 'NewTech', 'Part Time', '2023-11-11 12:39:51', '2023-11-11 12:39:51'),
(9, 5, 2, 'nik.jpg', 'MERN DEV', 'Dhaka', 'MV Company', 'Full Time', '2023-11-22 07:20:35', '2023-11-22 07:20:35');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int NOT NULL,
  `keyword` varchar(400) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Product Designer', '2023-10-03 05:48:08', '2023-10-03 05:48:08'),
(2, 'Graphic Designer', '2023-10-03 05:50:20', '2023-10-03 05:50:20'),
(3, 'Graphic Designer', '2023-10-03 05:50:30', '2023-10-03 05:50:30');

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
  `image` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.jpg',
  `cv` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No CV',
  `job_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Job Title',
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Twitter',
  `facebook` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No Facebook',
  `linkedin` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No LinkedIn',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `cv`, `job_title`, `bio`, `twitter`, `facebook`, `linkedin`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Mac', 'mac@gmail.com', NULL, '$2y$10$RMTAX0dHey3Ahp9sZ8TN6OexZzoe7mVT1AHhHvzdHa9YYik0nubNW', 'avatar.jpg', 'gantt chart.pdf', 'Product Designer', 'No Bio', 'No Twitter', 'No Facebook', 'No LinkedIn', NULL, '2023-09-20 09:01:51', '2023-09-29 12:39:13'),
(3, 'Mac2', 'mac2@gmail.com', NULL, '$2y$10$d57L7XCYpodw5Q3FcV.eQuSerN3MQ17dhDEw24R6xE/us2.yOCFLq', 'avatar.jpg', 'No CV', 'No Job Title', NULL, 'No Twitter', 'No Facebook', 'No LinkedIn', NULL, '2023-10-12 02:59:34', '2023-10-12 02:59:34'),
(4, 'mac3', 'mac3@gmail.com', NULL, '$2y$10$dHFWUh6MNGqZGKGNoUbZtesci6DpTRweZpdTO1GbFtiXPCusZ9MdO', 'avatar.jpg', 'No CV', 'No Job Title', NULL, 'No Twitter', 'No Facebook', 'No LinkedIn', NULL, '2023-10-29 01:47:05', '2023-10-29 01:47:05'),
(5, 'mac5', 'mac5@gmail.com', NULL, '$2y$10$pqJiZ0kSsykduIej3r.eu.w7YXyw4/TrgwEinCC95YTNUZNbvgB9G', 'avatar.jpg', 'No CV', 'No Job Title', NULL, 'No Twitter', 'No Facebook', 'No LinkedIn', NULL, '2023-10-29 03:02:54', '2023-10-29 03:02:54'),
(6, 'Asif Ahmed', 'asifahmed.mist@gmail.com', NULL, '$2y$10$QAZbujeGk.m/sAGDfg5AcuoqXfZe5fz7wTmlu4Wq92ejDtmoCNZDS', 'avatar.jpg', 'moriasimodeleval.pdf', 'No Job Title', NULL, 'No Twitter', 'No Facebook', 'No LinkedIn', NULL, '2023-11-25 08:13:31', '2023-11-25 08:15:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsaved`
--
ALTER TABLE `jobsaved`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobsaved`
--
ALTER TABLE `jobsaved`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
