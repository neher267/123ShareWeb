-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table share.activations
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.activations: ~0 rows (approximately)
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'GPsvygj0pfEuMAj0TpdlHvgLq39nSfmN', 1, '2018-06-27 11:20:25', '2018-06-27 11:20:25', '2018-06-27 11:20:25'),
	(2, 2, 'EHr6ojyxnU5K8PcUKrnml1SwoI6Wg8bt', 1, '2018-06-27 11:41:29', '2018-06-27 11:41:29', '2018-06-27 11:41:29'),
	(3, 3, 'V1RQF0ewl6gxQrW01N3wfxVyu7IeJNiL', 1, '2018-06-27 11:43:15', '2018-06-27 11:43:15', '2018-06-27 11:43:15'),
	(4, 5, 'eP2Ug5M0quYZAmr6ETJWlXGjXrZWDfla', 1, '2018-06-27 11:45:16', '2018-06-27 11:45:16', '2018-06-27 11:45:16');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;

-- Dumping structure for table share.current_requests
CREATE TABLE IF NOT EXISTS `current_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `des_lat` double NOT NULL,
  `des_lng` double NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.current_requests: ~0 rows (approximately)
/*!40000 ALTER TABLE `current_requests` DISABLE KEYS */;
INSERT INTO `current_requests` (`id`, `user_id`, `gender`, `lat`, `lng`, `des_lat`, `des_lng`, `country_code`, `address`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhaka', 1, '2018-06-27 11:34:24', '2018-06-27 11:34:24'),
	(2, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhaka', 1, '2018-06-27 11:34:34', '2018-06-27 11:34:34'),
	(3, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhaka', 1, '2018-06-27 11:34:36', '2018-06-27 11:34:36'),
	(4, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhaka', 1, '2018-06-27 11:34:36', '2018-06-27 11:34:36'),
	(5, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhaka', 1, '2018-06-27 11:34:37', '2018-06-27 11:34:37'),
	(6, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Mirpur', 1, '2018-06-27 11:34:57', '2018-06-27 11:34:57'),
	(7, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Mirpur', 1, '2018-06-27 11:35:01', '2018-06-27 11:35:01'),
	(8, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Mirpur', 1, '2018-06-27 11:36:36', '2018-06-27 11:36:36'),
	(9, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Mirpur', 1, '2018-06-27 11:38:11', '2018-06-27 11:38:11'),
	(10, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Mirpur', 1, '2018-06-27 11:38:20', '2018-06-27 11:38:20'),
	(11, 1, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:38:54', '2018-06-27 11:38:54'),
	(12, 1, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:39:05', '2018-06-27 11:39:05'),
	(13, 1, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:40:20', '2018-06-27 11:40:20'),
	(14, 2, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:42:17', '2018-06-27 11:42:17'),
	(15, 2, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:42:19', '2018-06-27 11:42:19'),
	(16, 3, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:43:41', '2018-06-27 11:43:41'),
	(17, 3, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:43:42', '2018-06-27 11:43:42'),
	(18, 3, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:44:01', '2018-06-27 11:44:01'),
	(19, 3, 'Female', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:44:32', '2018-06-27 11:44:32'),
	(20, 5, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:45:23', '2018-06-27 11:45:23'),
	(21, 1, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:45:56', '2018-06-27 11:45:56'),
	(22, 5, 'Male', 23.1, 31.1, 23.2, 31.2, 'BD', 'Dhanmondi', 1, '2018-06-27 11:46:24', '2018-06-27 11:46:24');
/*!40000 ALTER TABLE `current_requests` ENABLE KEYS */;

-- Dumping structure for table share.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.migrations: ~3 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_06_27_091120_create_current_requests_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table share.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table share.persistences
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.persistences: ~0 rows (approximately)
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 1, 'zqdKMHz82l9UndMiajkXGf5vzc7kTLgx', '2018-06-27 11:26:14', '2018-06-27 11:26:14'),
	(2, 1, 'qnOIQkp4JtyZ5G3YrOTO9783B9LheGOH', '2018-06-27 11:31:26', '2018-06-27 11:31:26'),
	(3, 1, 'V0DVhy9YG0cMUq6K5THAYj9gI1IdXSVa', '2018-06-27 11:31:40', '2018-06-27 11:31:40'),
	(4, 1, 'Hd0js611vpqfrcziZHLBCw7nIBy6Ju3X', '2018-06-27 11:34:24', '2018-06-27 11:34:24'),
	(5, 1, 'dNcIwLp9grHLP1RqiWak7nI1tLaS122p', '2018-06-27 11:34:34', '2018-06-27 11:34:34'),
	(6, 1, 'W8XBYdodK5J6hrxVgvATYumh5r2D2biC', '2018-06-27 11:34:35', '2018-06-27 11:34:35'),
	(7, 1, 'KP0xcXvsI5WX0TNUhoPTnA9iB4HRXTB6', '2018-06-27 11:34:36', '2018-06-27 11:34:36'),
	(8, 1, 'QsbMnzs3N9y3Mn5zUQRPU0NAgt8H4lUW', '2018-06-27 11:34:37', '2018-06-27 11:34:37'),
	(9, 1, 'fDtBp8GhXtJFXIcD0Y1vB9wfYh2zlxKt', '2018-06-27 11:34:57', '2018-06-27 11:34:57'),
	(10, 1, 'jgwLK8tSjdwdqWgz6afitGfJV6XuDVZ8', '2018-06-27 11:35:01', '2018-06-27 11:35:01'),
	(11, 1, 'AuXXprJDs40z6D7iZganurBVI2iuH7fV', '2018-06-27 11:36:36', '2018-06-27 11:36:36'),
	(12, 1, '14hpRRJGxr1aHNN8OcexgNaB0ZjbsAEA', '2018-06-27 11:38:11', '2018-06-27 11:38:11'),
	(13, 1, 'Yp5X9IbQsbjswo16UxBf88f3uY7t5Bn6', '2018-06-27 11:38:20', '2018-06-27 11:38:20'),
	(14, 1, 'AmyqQl0hIwuNUqmzUhnWBLRKkJ5GJMiO', '2018-06-27 11:38:54', '2018-06-27 11:38:54'),
	(15, 1, 'a0qqF3PEri7ibqycSMx4fGiO9isAzTrM', '2018-06-27 11:39:05', '2018-06-27 11:39:05'),
	(16, 1, 'H74we30bqgSIq4ifhLByG6HgiePj6niI', '2018-06-27 11:40:20', '2018-06-27 11:40:20'),
	(17, 2, 'XOy3rEZXsCYDsfYMvUNqMImg1DLuzcip', '2018-06-27 11:42:17', '2018-06-27 11:42:17'),
	(18, 2, 'opmX0a4OT1k4YuIqaedpzGLta7mHtfYO', '2018-06-27 11:42:19', '2018-06-27 11:42:19'),
	(19, 3, 'GwunrdzeEzfEW8YM1OYjy4R5UUtreNNC', '2018-06-27 11:43:40', '2018-06-27 11:43:40'),
	(20, 3, '34n986RVAmiR84fZ0GZUNIw9bJa1iN7k', '2018-06-27 11:43:42', '2018-06-27 11:43:42'),
	(21, 3, 'mi0laMD6vT9dVDSafgfKEeCNOb6Mvx0z', '2018-06-27 11:44:01', '2018-06-27 11:44:01'),
	(22, 3, 'ln1E1H6Ihbb7PPq6jYtlYloWOA27tHRW', '2018-06-27 11:44:32', '2018-06-27 11:44:32'),
	(23, 5, 'pLeOFSWHYdJcXIaR0QwlE1m8mLV8MPwl', '2018-06-27 11:45:23', '2018-06-27 11:45:23'),
	(24, 1, 'Rz8NoJ8DXdre0E2IyNR9xaUt2bcIZ1zA', '2018-06-27 11:45:56', '2018-06-27 11:45:56'),
	(25, 5, 'bLzLCdaUVw09z6DVW8vPMf3YAk9xsP6m', '2018-06-27 11:46:24', '2018-06-27 11:46:24');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;

-- Dumping structure for table share.reminders
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.reminders: ~0 rows (approximately)
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Dumping structure for table share.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table share.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.role_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Dumping structure for table share.throttle
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.throttle: ~0 rows (approximately)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;

-- Dumping structure for table share.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` double NOT NULL,
  `share_with` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table share.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `permissions`, `last_login`, `name`, `gender`, `age`, `share_with`, `created_at`, `updated_at`) VALUES
	(1, '01784255196', '$2y$10$k62n5bTwmAETBKt2szH3ZuwqthZ0FWDCY69/TSqVc4w/yDrSp7FFm', NULL, '2018-06-27 11:45:56', 'Neher', 'Male', 18, 'Male', '2018-06-27 11:20:25', '2018-06-27 11:45:56'),
	(2, '01765768609', '$2y$10$QXxGhgN0hiJxitEyZRidIu4kJA//tjAnTXykXRYC5r/FYVx9FPTca', NULL, '2018-06-27 11:42:19', 'Shreshtha', 'Female', 18, 'Female', '2018-06-27 11:41:29', '2018-06-27 11:42:19'),
	(3, '01765768600', '$2y$10$kvhHEl3YESZTeY3k6XOWOOb0lhOtN4qiw8meHZ/Cw0QPhDYZnqMrK', NULL, '2018-06-27 11:44:32', 'Anika', 'Female', 18, 'Female', '2018-06-27 11:43:15', '2018-06-27 11:44:32'),
	(5, '01765768601', '$2y$10$teyNkJ5r7Y3n2p/X4tiJsecV1KlwFLSInxScaFdkCc7uVWA93LAji', NULL, '2018-06-27 11:46:24', 'Sharif', 'Male', 18, 'Both', '2018-06-27 11:45:16', '2018-06-27 11:46:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
