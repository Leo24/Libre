-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 08, 2016 at 02:27 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` longtext,
  `authorized` tinyint(4) DEFAULT NULL,
  `info` longtext,
  `source` tinyint(4) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `federaltaxid` varchar(255) DEFAULT NULL,
  `federaldrugid` varchar(255) DEFAULT NULL,
  `upin` varchar(255) DEFAULT NULL,
  `facility` varchar(255) DEFAULT NULL,
  `facility_id` int(11) NOT NULL DEFAULT '0',
  `see_auth` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `npi` varchar(15) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `billname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_direct` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) DEFAULT NULL,
  `assistant` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `valedictory` varchar(255) DEFAULT NULL,
  `street` varchar(60) DEFAULT NULL,
  `streetb` varchar(60) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `street2` varchar(60) DEFAULT NULL,
  `streetb2` varchar(60) DEFAULT NULL,
  `city2` varchar(30) DEFAULT NULL,
  `state2` varchar(30) DEFAULT NULL,
  `zip2` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `phonew1` varchar(30) DEFAULT NULL,
  `phonew2` varchar(30) DEFAULT NULL,
  `phonecell` varchar(30) DEFAULT NULL,
  `notes` text,
  `cal_ui` tinyint(4) NOT NULL DEFAULT '1',
  `taxonomy` varchar(30) NOT NULL DEFAULT '207Q00000X',
  `ssi_relayhealth` varchar(64) DEFAULT NULL,
  `calendar` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = appears in calendar',
  `abook_type` varchar(31) NOT NULL DEFAULT '',
  `pwd_expiration_date` date DEFAULT NULL,
  `pwd_history1` longtext,
  `pwd_history2` longtext,
  `default_warehouse` varchar(31) NOT NULL DEFAULT '',
  `irnpool` varchar(31) NOT NULL DEFAULT '',
  `state_license_number` varchar(25) DEFAULT NULL,
  `newcrop_user_role` varchar(30) DEFAULT NULL,
  `cpoe` tinyint(1) DEFAULT NULL,
  `physician_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `authorized`, `info`, `source`, `fname`, `mname`, `lname`, `federaltaxid`, `federaldrugid`, `upin`, `facility`, `facility_id`, `see_auth`, `active`, `npi`, `title`, `specialty`, `billname`, `email`, `email_direct`, `url`, `assistant`, `organization`, `valedictory`, `street`, `streetb`, `city`, `state`, `zip`, `street2`, `streetb2`, `city2`, `state2`, `zip2`, `phone`, `fax`, `phonew1`, `phonew2`, `phonecell`, `notes`, `cal_ui`, `taxonomy`, `ssi_relayhealth`, `calendar`, `abook_type`, `pwd_expiration_date`, `pwd_history1`, `pwd_history2`, `default_warehouse`, `irnpool`, `state_license_number`, `newcrop_user_role`, `cpoe`, `physician_type`) VALUES
(1, 'admin', 'NoLongerUsed', 1, NULL, NULL, 'Administrator', NULL, 'Administrator', NULL, NULL, NULL, NULL, 3, 1, 1, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '207Q00000X', NULL, 1, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(2, 'phimail-service', 'NoLogin', 0, NULL, NULL, NULL, NULL, 'phiMail Gateway', NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '207Q00000X', NULL, 0, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(3, 'portal-user', 'NoLogin', 0, NULL, NULL, NULL, NULL, 'Patient Portal User', NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '207Q00000X', NULL, 0, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(14, 'Leo', '$2y$10$.tqLpmq3n47l95ZTvDvL0uYDSpWuKbx3Bb8cdp2Q28IidrWoPyfIi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 'leo510@i.ua', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '207Q00000X', NULL, 0, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(15, 'Leo', '$2y$10$bLUKuJFj5AleJFHFkMKZjO8zENk.m27P/F6sio6lpJn77SX5DUmpC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 'leo2410@i.ua', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '207Q00000X', NULL, 0, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(16, 'Gmail', '$2y$10$SHPppdqjLSRRIEsDTiUAsuheGB6uFsnHiROL2pwvYk2oEgp1MBq26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 'leo2410ua@gmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '207Q00000X', NULL, 0, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(17, 'UkrNet', '$2y$10$GRqmjABdufmUKeQGY6C3deouG5l4JagrJ3o4OjeED1BUh7eVR9Bgi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 'leo2410@ukr.net', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '207Q00000X', NULL, 0, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(18, 'UkrNet', '$2y$10$fLJv5sHMa93ItUs3LwSgl.a51ZgCXWj6wgfy83QUD23TzxPJNLgXy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, 'leo256@ukr.net', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '207Q00000X', NULL, 0, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
