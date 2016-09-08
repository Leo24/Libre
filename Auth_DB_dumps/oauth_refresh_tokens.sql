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
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('195986501529c3a9496ee3dea2bb64147df7abe87e1d78bade7958ce8afb334aeadfb502af86bd84', 'e529b05304064b3ebb1716105240b8f41e04257aab67440fd1de8bb64dc5bdec787692c0ec451e1c', 0, '2016-10-05 10:29:35'),
('5e487a249e59c689c552e4578d131b1d61503218fce5e5b54adaa1089fb80214956444f1c30f0401', '6d55296584149e21289e908cce54dc984678a696ab096a060a7d32d028a103d498fae2ae561aaea9', 0, '2016-10-05 11:30:45'),
('8261b9aa53ceefa6b9ea9413037bb35a940a5512dfda884604362351bdbedc0a899b53d6c6fee859', '5a48366d381c81624f9567244579806c987f636bb19da48a352370a497496da0ab71dbb450c7d24b', 0, '2016-10-06 08:20:03'),
('84f15b4e3e02e9322682657b1d4f6c0131a6e4b071e4afb42e3721bbd9f66d531929f30bdac17510', 'dc5b03d436453bf7b6eebd894caee6bb418af4d95c46a3dc09a3abd5c1b73a6095ec2e324cd0236c', 0, '2016-10-05 11:18:31'),
('b39c255d8bef2c55085741b01e13ca8f860b903675e38506f993a6b62c9928ebf70f5166eefa3b18', 'd37ac9faa79a434ed7478ae2e8cedb40a525051d60e806d8d76d390ee91cdd93ffdb236760bf8ede', 0, '2016-10-05 06:38:20'),
('b91f1b9c37dfc6edaa2098396d2de83a23335f856c453b4585a9218701ab91d6a031e64757dbccac', '9193fa5c850021201049a3b15221b330865e4cb405e9a3b237e1d0c1d578ea1ce313bafa348aa589', 0, '2016-10-05 08:04:33'),
('cbd82d1447cec95d601cf7580208d979512c237c0e59070b883ec01b2d07650d4e9fe0505544f315', '5edb205dc4dc9868820fc45815bf574664ace71d179f46af7c15f832d4ed9fcc2e1bc14a5b4e0682', 0, '2016-10-06 13:11:27'),
('ccb3d9291cd539762154b0608334804b29cb93cd3720e12bde6230d074c243e789bdfa0620f41d7c', '335791ff3b206eae617f2cfb599f614facf87f4ed4eef12c7292fd95e57308d465045b55549adf1f', 0, '2016-10-06 13:12:36'),
('d798c3ab491f2ce688a6be27621b35c2266541ebbd40cf214358ac7f20a62827cda882564dbca3bd', '11c9a5826b7e140824ecae8f91ecda13c611fb62a0aa1f88311cf6867791d492742c11a49d5565a5', 0, '2016-10-02 13:41:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
