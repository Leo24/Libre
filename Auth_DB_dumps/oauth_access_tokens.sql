-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 08, 2016 at 02:24 PM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-4+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `openemr`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('335791ff3b206eae617f2cfb599f614facf87f4ed4eef12c7292fd95e57308d465045b55549adf1f', 14, 4, NULL, '["*"]', 0, '2016-09-06 10:12:36', '2016-09-06 10:12:36', '2016-09-21 13:12:36'),
('5a48366d381c81624f9567244579806c987f636bb19da48a352370a497496da0ab71dbb450c7d24b', 4, 4, NULL, '["*"]', 0, '2016-09-06 05:20:03', '2016-09-06 05:20:03', '2016-09-21 08:20:03'),
('5edb205dc4dc9868820fc45815bf574664ace71d179f46af7c15f832d4ed9fcc2e1bc14a5b4e0682', 14, 4, NULL, '["*"]', 1, '2016-09-06 10:11:27', '2016-09-06 10:11:27', '2016-09-21 13:11:27'),
('6d55296584149e21289e908cce54dc984678a696ab096a060a7d32d028a103d498fae2ae561aaea9', 2, 4, NULL, '["*"]', 0, '2016-09-05 08:30:45', '2016-09-05 08:30:45', '2016-09-20 11:30:45'),
('9193fa5c850021201049a3b15221b330865e4cb405e9a3b237e1d0c1d578ea1ce313bafa348aa589', 2, 4, NULL, '["*"]', 1, '2016-09-05 05:04:33', '2016-09-05 05:04:33', '2016-09-20 08:04:33'),
('d37ac9faa79a434ed7478ae2e8cedb40a525051d60e806d8d76d390ee91cdd93ffdb236760bf8ede', 2, 4, NULL, '["*"]', 1, '2016-09-05 03:38:21', '2016-09-05 03:38:21', '2016-09-20 06:38:20'),
('dc5b03d436453bf7b6eebd894caee6bb418af4d95c46a3dc09a3abd5c1b73a6095ec2e324cd0236c', 2, 4, NULL, '["*"]', 1, '2016-09-05 08:18:31', '2016-09-05 08:18:31', '2016-09-20 11:18:31'),
('e529b05304064b3ebb1716105240b8f41e04257aab67440fd1de8bb64dc5bdec787692c0ec451e1c', 2, 4, NULL, '["*"]', 1, '2016-09-05 07:29:35', '2016-09-05 07:29:35', '2016-09-20 10:29:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
