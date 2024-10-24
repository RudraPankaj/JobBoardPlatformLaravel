-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 07:05 PM
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
-- Database: `career_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Accounting/Finance', 1, NULL, NULL),
(2, 'Bank/ Non-Bank Fin. Institution', 1, NULL, NULL),
(3, 'Supply Chain/ Procurement', 1, NULL, NULL),
(4, 'Education/Training', 1, NULL, NULL),
(5, 'Engineer/Architects', 1, NULL, NULL),
(6, 'Garments/Textile', 1, NULL, NULL),
(7, 'HR/Org. Development', 1, NULL, NULL),
(8, 'Gen Mgt/Admin', 1, NULL, NULL),
(9, 'Design/Creative', 1, NULL, NULL),
(10, 'Electrician/Construction/Repair', 1, NULL, NULL),
(11, 'Production/Operation', 1, NULL, NULL),
(12, 'Hospitality/ Travel/ Tourism', 1, NULL, NULL),
(13, 'Commercial', 1, NULL, NULL),
(14, 'Beauty Care/ Health & Fitness', 1, NULL, NULL),
(15, 'IT & Telecommunication', 1, NULL, NULL),
(16, 'Marketing/Sales', 1, NULL, NULL),
(17, 'Customer Service/Call Centre', 1, NULL, NULL),
(18, 'Media/Ad./Event Mgt.', 1, NULL, NULL),
(19, 'Medical/Pharma', 1, NULL, NULL),
(20, 'Others', 1, NULL, NULL),
(21, 'Agro (Plant/Animal/Fisheries)', 1, NULL, NULL),
(22, 'NGO/Development', 1, NULL, NULL),
(23, 'Research/Consultancy', 1, NULL, NULL),
(24, 'Receptionist/ PS', 1, NULL, NULL),
(25, 'Data Entry/Operator/BPO', 1, NULL, NULL),
(26, 'Driving/Motor Technician', 1, NULL, NULL),
(27, 'Security/Support Service', 1, NULL, NULL),
(28, 'Law/Legal', 1, NULL, NULL),
(29, 'Company Secretary/Regulatory affairs', 1, NULL, NULL);

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
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `job_type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `benefits` text DEFAULT NULL,
  `responsibility` text DEFAULT NULL,
  `qualifications` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `experience` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_location` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `isFeatured` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `category_id`, `job_type_id`, `user_id`, `vacancy`, `salary`, `location`, `description`, `benefits`, `responsibility`, `qualifications`, `keywords`, `experience`, `company_name`, `company_location`, `company_website`, `status`, `isFeatured`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer', 15, 1, 3, 2, '4.5 K', 'Chattogram', '<p>We are seeking a talented and skilled Web Developer to join our dynamic team in Chattogram. The ideal candidate will be responsible for designing, developing, and maintaining web applications. You will work closely with the development team to create innovative and user-friendly web experiences.<br></p>', '<p></p><ul><li>Competitive salary package</li><li>Opportunities for professional growth and development</li><li>Health insurance</li><li>Paid leave</li><li>Flexible working hours</li><li>Friendly and supportive work environment</li></ul><p></p>', '<p></p><ul><li>Design, develop, and maintain responsive web applications using modern technologies and frameworks.</li><li>Collaborate with designers and other developers to create visually appealing and functional websites.</li><li>Write clean, efficient, and well-documented code.</li><li>Troubleshoot and resolve technical issues.</li><li>Stay up-to-date with the latest web development trends and technologies.</li><li>Participate in code reviews and provide constructive feedback.</li></ul><p></p>', '<p></p><ul><li>Bachelor\'s degree in Computer Science, Information Technology, or a related field.</li><li>Proven experience in web development with proficiency in HTML, CSS, and JavaScript.</li><li>Strong understanding of frontend frameworks (React, Angular, Vue, etc.) and backend development (Node.js, Python, PHP, etc.).</li><li>Experience with database management systems (MySQL, PostgreSQL, etc.).</li><li>Excellent problem-solving and analytical skills.</li><li>Ability to work independently and as part of a team.</li><li>Strong attention to detail and commitment to quality.</li></ul><p></p>', 'php, laravel, mysql', '2', 'XYZ Company', 'Chattogram', 'www.xyz.com', 1, 0, '2024-07-25 23:46:29', '2024-07-26 00:06:24'),
(2, 'Digital Marketing Manager', 16, 1, 1, 1, 'BDT 80,000 - 120,000 per month', 'Dhaka, Bangladesh', '<p>We are seeking a dynamic Digital Marketing Manager to lead our online marketing efforts. You will be responsible for developing and implementing effective digital marketing strategies to drive brand awareness, generate leads, and increase sales.<br></p>', '<p></p><ul><li>Competitive salary package</li><li>Performance-based bonuses</li><li>Medical insurance</li><li>Paid leave</li><li>Opportunities for professional development</li></ul><p></p>', '<p></p><ul><li>Develop and execute digital marketing campaigns across various channels (SEO, SEM, social media, email marketing, content marketing)</li><li>Analyze website traffic and user behavior to optimize campaigns</li><li>Manage and optimize online advertising campaigns</li><li>Build and maintain strong relationships with clients and partners</li><li>Stay up-to-date with the latest digital marketing trends and technologies</li></ul><p></p>', '<p></p><ul><li>Bachelor\'s degree in Marketing, Business Administration, or related field</li><li>Minimum 3 years of experience in digital marketing</li><li>Strong analytical and problem-solving skills</li><li>Proficiency in Google Analytics and other digital marketing tools</li><li>Excellent communication and interpersonal skills</li></ul><p></p>', 'Digital Marketing, SEO, SEM, Social Media Marketing, Email Marketing, Content Marketing, Google Analytics, Online Advertising, Digital Marketing Manager, Dhaka, Bangladesh, GreenTech Solutions Ltd.', '2', 'GreenTech Solutions Ltd.', 'Dhaka, Bangladesh', 'www.greentechbd.com', 1, 1, '2024-07-26 00:03:29', '2024-07-26 00:06:35'),
(3, 'Contractual Financial Analyst', 1, 3, 3, 3, 'BDT 60,000 - 80,000 per month', 'Dhaka, Bangladesh', '<p>Delta Consulting Ltd. is seeking a highly skilled Financial Analyst for a contract-based position. The successful candidate will be responsible for conducting financial analysis, preparing reports, and providing insights to support strategic decision-making.<br></p>', '<p><ul><li>Competitive contract rate</li><li>Flexible working arrangements</li><li>Opportunity to work on challenging projects</li><li>Potential for permanent employment based on performance</li></ul></p>', '<p><ul><li>Conduct financial analysis, including budgeting, forecasting, and variance analysis</li><li>Prepare financial reports and presentations</li><li>Develop financial models to evaluate investment opportunities</li><li>Perform data analysis and identify trends</li><li>Support financial planning and analysis processes</li></ul></p>', '<p><ul><li>Bachelor\'s degree in Finance, Accounting, or related field</li><li>Minimum 3 years of experience in financial analysis</li><li>Strong analytical and problem-solving skills</li><li>Proficiency in financial modeling and data analysis tools (Excel, SQL, etc.)</li><li>Excellent communication and presentation skills</li></ul></p>', 'Financial Analyst, Contract, Accounting, Finance, Financial Analysis, Budgeting, Forecasting, Data Analysis, Excel, SQL, Dhaka, Bangladesh, Delta Consulting Ltd.', '2', 'Delta Consulting Ltd.', 'Dhaka, Bangladesh', 'http://www.deltaconstructionbd.com', 1, 0, '2024-08-14 01:14:27', '2024-08-14 01:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `applied_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `job_id`, `user_id`, `employer_id`, `applied_date`, `created_at`, `updated_at`) VALUES
(2, 2, 3, 1, '2024-07-26 15:00:55', '2024-07-26 15:00:55', '2024-07-26 15:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Full-time', 1, NULL, NULL),
(2, 'Part-time', 1, NULL, NULL),
(3, 'Contract', 1, NULL, NULL),
(4, 'Freelance', 1, NULL, NULL),
(5, 'Internship', 1, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_21_194133_create_categories_table', 1),
(6, '2023_12_21_194227_create_job_types_table', 1),
(7, '2023_12_21_194315_create_jobs_table', 1),
(8, '2023_12_25_191003_alter_jobs_table', 1),
(9, '2023_12_27_181245_alter_jobs_table', 1),
(10, '2024_01_12_180428_create_job_applications_table', 1),
(11, '2024_01_24_050302_create_saved_jobs_table', 1),
(12, '2024_02_05_194735_alter_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('rudra2pankaj@gmail.com', 'YMPz2Cg3hLhzyNDUIavDkuuGOHF0IwvY0XAUaOM6MMEJy3PrmZTsKf9xi4Rb', '2024-08-21 10:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saved_jobs`
--

INSERT INTO `saved_jobs` (`id`, `job_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2024-07-26 09:33:52', '2024-07-26 09:33:52');

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
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `mobile`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pankaj Rudra', 'rudra2pankaj@gmail.com', NULL, '$2y$12$K7t1ojdHeDhAu6RoG0B2QeVVa6B5PmJalQIeKuo.EDWQueauC/Jfm', NULL, 'Administrator', '+8801632181962', 'admin', NULL, '2024-07-25 22:33:24', '2024-07-26 13:32:06'),
(3, 'Anik Barua', 'anik@gmail.com', NULL, '$2y$12$B2Z2zqL.bBZ8vN6xo/CJo.JGwC/DLzKcDbXxo4oo8a/dxZXG.8y1S', NULL, 'Employer', NULL, 'user', NULL, '2024-07-25 22:51:05', '2024-07-26 14:58:59'),
(4, 'Rabbe Islam', 'rabbe@gmail.com', NULL, '$2y$12$ZCEkpG09F8zdN81BCG.QRuc2Tbr4B8POrtUEnFqc0FSmw/kl3xRw2', NULL, NULL, NULL, 'user', NULL, '2024-07-26 09:31:40', '2024-07-26 09:31:40');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_job_type_id_foreign` (`job_type_id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`),
  ADD KEY `job_applications_user_id_foreign` (`user_id`),
  ADD KEY `job_applications_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saved_jobs_job_id_foreign` (`job_id`),
  ADD KEY `saved_jobs_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD CONSTRAINT `saved_jobs_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
