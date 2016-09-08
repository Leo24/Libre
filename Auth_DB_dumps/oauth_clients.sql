-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 08, 2016 at 02:25 PM
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
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'My Application Personal Access Client', 'm0szodhVVI5uXiVgvneWpTCThLbh0bd8XExS40J7', 'http://localhost', 1, 0, 0, '2016-09-02 09:02:06', '2016-09-02 09:02:06'),
(2, NULL, 'My Application Password Grant Client', 'WkeX642hPQuhZpjUYF0KB42eeaJxG7QPP04fJcFi', 'http://localhost', 0, 1, 0, '2016-09-02 09:02:06', '2016-09-02 09:02:06'),
(3, 1, 'New Client Name', 'n1vLYQO5wtfnmmZkaQIIx14H0c4oTbkC9gfLtAZs', 'http://localhost/auth/callback', 0, 0, 0, '2016-09-02 09:17:01', '2016-09-02 09:17:01'),
(4, NULL, 'PasswordGrantClient', '7gFUNCm7YrCXHGdG5SOy7AEgf3O6sp0gW7O96xTD', 'http://localhost', 0, 1, 0, '2016-09-02 09:38:32', '2016-09-02 09:38:32'),
(5, NULL, 'My Application Personal Access Client', 'G3SzGrctMW3RJeBoKxU0lqgkuVYYuefJtaoqhhmq', 'http://localhost', 1, 0, 0, '2016-09-05 04:57:31', '2016-09-05 04:57:31'),
(6, NULL, 'My Application Password Grant Client', 'msE9wBiXk9YZVvjhgmwiXWOUuzDCCC13nkZmHhUs', 'http://localhost', 0, 1, 0, '2016-09-05 04:57:33', '2016-09-05 04:57:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
