-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2023 at 03:53 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: ``
--

-- --------------------------------------------------------

--
-- Table structure for table `access_tokens`
--

CREATE TABLE `access_tokens` (
  `id` int(11) NOT NULL,
  `has_received_presence` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) NOT NULL,
  `last_connection` bigint(20) DEFAULT NULL,
  `welcome_time` bigint(20) NOT NULL DEFAULT '0',
  `connection_index` int(11) NOT NULL DEFAULT '0',
  `console_key` varchar(75) NOT NULL,
  `total_xam_challenges` int(11) NOT NULL DEFAULT '0',
  `using_no_kv` int(11) DEFAULT '0',
  `current_title` varchar(75) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Username`, `password`) VALUES
(1, 'admin', 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86');

-- --------------------------------------------------------

--
-- Table structure for table `console_verification`
--

CREATE TABLE `console_verification` (
  `id` int(11) NOT NULL,
  `verification_key` varchar(255) DEFAULT NULL,
  `cpu_key` varchar(75) DEFAULT NULL,
  `time_requested` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kvs`
--

CREATE TABLE `kvs` (
  `id` int(11) NOT NULL,
  `hash` varchar(75) DEFAULT NULL,
  `uses` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kvs`
--

INSERT INTO `kvs` (`id`, `hash`, `uses`) VALUES
(1, '1C18A6C1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kv_stats`
--

CREATE TABLE `kv_stats` (
  `id` int(11) NOT NULL,
  `kv_hash` varchar(75) DEFAULT NULL,
  `first_connection` int(11) DEFAULT '0',
  `last_connection` int(11) DEFAULT '0',
  `banned` int(11) DEFAULT '0',
  `banned_time` int(11) DEFAULT '0',
  `total_challenges` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kv_stats`
--

INSERT INTO `kv_stats` (`id`, `kv_hash`, `first_connection`, `last_connection`, `banned`, `banned_time`, `total_challenges`) VALUES
(1, '12ABEB78', 1654494727, 1654724324, 1, 1654724629, 0),
(2, '8B28A529', 1654737832, 1656304676, 0, 0, 1041),
(3, 'BC2F8F8D', 1655175773, 1664259852, 0, 1655332008, 94),
(4, '2BDE1721', 1656804172, 1656835154, 0, 0, 67),
(5, '47DB0D2E', 1659924353, 1659924659, 0, 0, 0),
(6, 'D1E76653', 1661472711, 1664246929, 0, 0, 258),
(7, 'D8207021', 1664253264, 1664958255, 0, 0, 155),
(9, 'BC2F8F8D', 1664958624, 1664958624, 0, 0, 0),
(10, '2A9E2EBA', 1664958628, 1665032325, 0, 0, 36),
(11, '5BE20C52', 1664958761, 1665023396, 0, 0, 4),
(12, 'BC2F8F8D', 1666849320, 1666849320, 0, 0, 0),
(13, '1C18A6C1', 1666849324, 1666859940, 0, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `id` int(11) NOT NULL,
  `console_key` varchar(75) NOT NULL DEFAULT '',
  `metric_type` int(11) NOT NULL,
  `metric_index` int(11) DEFAULT NULL,
  `additional_info` int(11) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `OpenXbl`
--

CREATE TABLE `OpenXbl` (
  `id` int(11) NOT NULL,
  `CPUKEY` varchar(255) NOT NULL,
  `APIKEY` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `OpenXbl`
--

INSERT INTO `OpenXbl` (`id`, `CPUKEY`, `APIKEY`) VALUES
(5, 'EEC69A986D2D4E9DB6123187A5E0DCD3', '8c0cckgkwk8kc0swg0s4goscc8w8c4wswoo');

-- --------------------------------------------------------

--
-- Table structure for table `redeem_tokens`
--

CREATE TABLE `redeem_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(75) DEFAULT NULL,
  `seconds_to_add` int(11) DEFAULT '0',
  `redeemer_console_key` varchar(75) DEFAULT '--none--'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `redeem_tokens`
--

INSERT INTO `redeem_tokens` (`id`, `token`, `seconds_to_add`, `redeemer_console_key`) VALUES
(10, 'SKMFR2E3CRYM', 259200, 'EEC69A986D2D4E9DB6123187A5E0DCD3'),
(11, '473IY5PDQJ29', 259200, 'EEC69A986D2D4E9DB6123187A5E0DCD3'),
(12, 'AZQO5CU7MAD8', 2678400, 'EEC69A986D2D4E9DB6123187A5E0DCD3'),
(13, '23EV0S9T3W00', 86400, '--none--'),
(14, 'CP6G4UB5YCLB', 86400, '--none--'),
(15, 'IE5EVB4A455N', 86400, '--none--'),
(19, 'DAT734CSTUS6', 259200, '--none--'),
(20, 'NU95T96RAZK9', 259200, '--none--'),
(21, 'YSD8Q5KT4J7R', 259200, '--none--'),
(23, 'BV5S7UQ99NVW', 63072000, 'DACF49DD355AE14E758C54910636EA04');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `name` varchar(255) NOT NULL DEFAULT 'xbLive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`name`) VALUES
('xbLive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `console_linked` int(11) DEFAULT '0',
  `beta_access` int(11) DEFAULT '0',
  `console_key` varchar(255) DEFAULT NULL,
  `cpu` varchar(50) DEFAULT NULL,
  `time_before_freemode` int(11) NOT NULL DEFAULT '0',
  `first_gamertag` varchar(75) DEFAULT '--blankuser--',
  `last_gamertag` varchar(75) DEFAULT '--blankuser--',
  `devkit_cheats` int(11) DEFAULT '0',
  `time_end` int(11) DEFAULT '1656149770',
  `time_before_reserve` int(11) DEFAULT '0',
  `reserve_seconds` int(11) DEFAULT '0',
  `first_ip` varchar(50) DEFAULT NULL,
  `last_ip` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `notify_on_sus` varchar(255) DEFAULT 'nothing',
  `first_kv_hash` varchar(50) DEFAULT NULL,
  `last_kv_hash` varchar(50) DEFAULT NULL,
  `last_connection` int(11) DEFAULT '0',
  `total_challenges` int(11) DEFAULT '0',
  `last_version` int(11) DEFAULT '0',
  `allowed_on_devkit` int(11) DEFAULT '0',
  `no_kv_hash` varchar(75) DEFAULT '00000000',
  `no_kv_last_refresh` int(11) DEFAULT '0',
  `Discord` varchar(32) NOT NULL DEFAULT 'Unknown',
  `Discordid` varchar(32) NOT NULL DEFAULT '0',
  `Username` varchar(32) NOT NULL DEFAULT '--blankuser--',
  `password` varchar(255) NOT NULL DEFAULT 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86',
  `Email` varchar(32) NOT NULL DEFAULT 'silentismydaddy@hookah.com',
  `primaryuicolor` varchar(32) NOT NULL DEFAULT '00CC00',
  `secondaryuicolor` varchar(32) NOT NULL DEFAULT '000000',
  `qtitleid` varchar(32) NOT NULL DEFAULT '12345678',
  `TitleID` varchar(32) NOT NULL DEFAULT 'FFFE07D1',
  `addedby` varchar(32) NOT NULL DEFAULT 'Unknown',
  `activationcode` int(4) NOT NULL DEFAULT '9999',
  `md5_id` varchar(255) NOT NULL DEFAULT 'none',
  `online` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `console_linked`, `beta_access`, `console_key`, `cpu`, `time_before_freemode`, `first_gamertag`, `last_gamertag`, `devkit_cheats`, `time_end`, `time_before_reserve`, `reserve_seconds`, `first_ip`, `last_ip`, `status`, `notify_on_sus`, `first_kv_hash`, `last_kv_hash`, `last_connection`, `total_challenges`, `last_version`, `allowed_on_devkit`, `no_kv_hash`, `no_kv_last_refresh`, `Discord`, `Discordid`, `Username`, `password`, `Email`, `primaryuicolor`, `secondaryuicolor`, `qtitleid`, `TitleID`, `addedby`, `activationcode`, `md5_id`, `online`) VALUES
(8, 0, 0, NULL, 'DACF49DD355AE14E758C54910636EA04', 0, '--blankuser--', '--blankuser--', 0, 1669005218, 0, 63676800, NULL, NULL, 0, 'nothing', NULL, NULL, 0, 0, 0, 0, '00000000', 0, 'Unknown', '0', 'hookah', '33eb3a9f1bdd576006cf7a87db1f0f6698ab34ae57aaf5fc0385b2d9020b5d3c47c2b7bbd87347e99c42638844f5534a8efa390ddd059c3f8c1c8fd52801d6f2', '', '00CC00', '000000', '98789613', 'FFFE07D1', 'admin', 3292, 'c9f0f895fb98ab9159f51fd0297e236d', 1),
(10, 1, 0, '166E9CAF48E30320982E9D4561B876B2C66837B5', 'EEC69A986D2D4E9DB6123187A5E0DCD3', 604800, '----------------', '----------------', 0, 1668835478, 0, 0, '207.45.82.102', '207.45.82.102', 0, 'nothing', 'BC2F8F8D', '1C18A6C1', 1666859943, 21, 124, 0, '1C18A6C1', 0, 'silent#1917', '<@!385597296298950656>', 'silent', '3b5a20656621e8f2aacd5daeb4bec997a229265c4df0ed176729d26fe9178b751480fba534a03306519752ac47ee20cc4f3edf45d4d7d8309de55c4d28e4efeb', 'creech_2008@hotmail.com', '00CC00', '000000', '41560855', 'FFFE07D1', 'Unknown', 3825, 'd3d9446802a44259755d38e6d163e820', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vars`
--

CREATE TABLE `vars` (
  `id` int(11) NOT NULL,
  `freemode` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vars`
--

INSERT INTO `vars` (`id`, `freemode`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xex_data`
--

CREATE TABLE `xex_data` (
  `id` int(11) NOT NULL,
  `latest_version` int(11) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `patch_name` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT '4294838225',
  `title_timestamp` int(11) DEFAULT '1654667867',
  `enabled` int(11) DEFAULT '1',
  `encryption_key` varchar(255) NOT NULL DEFAULT '6549796975722068',
  `beta_only` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='for cheat loading, cheat patches, and client updates';

--
-- Dumping data for table `xex_data`
--

INSERT INTO `xex_data` (`id`, `latest_version`, `name`, `patch_name`, `title`, `title_timestamp`, `enabled`, `encryption_key`, `beta_only`) VALUES
(1, 124, 'xbLive.xex', 'xblive', '4294838225', 1654667868, 1, '6549796975722068', 0),
(2, 100, 'ENGINE.AW.xex', 'AW-patch', '1096157460', 1438827463, 1, '6549796975722069', 0),
(3, 100, 'ENGINE.BO1.xex', 'BO1-patch', '1096157269', 1314138230, 1, '6549796975722068', 0),
(4, 100, 'ENGINE.BO2.xex', 'BO2-patch', '1096157379', 1399078257, 1, '6549796975722068', 0),
(5, 100, 'ENGINE.BO3.xex', 'B03-patch', '1096157469', 1461186423, 1, '6549796975722068', 0),
(6, 100, 'ENGINE.GHOST.xex', 'GHOST-patch', '1096157436', 1414463934, 1, '6549796975722068', 0),
(7, 100, 'ENGINE.MW1.xex', 'MW1-patch', '1096157158', 1249420663, 1, '6549796975722068', 0),
(8, 100, 'ENGINE.MW2.xex', 'MW2-patch', '1096157207', 1527890537, 1, '6549796975722068', 0),
(9, 100, 'ENGINE.MW3.xex', 'MW3-patch', '1096157387', 1527816467, 1, '6549796975722068', 0),
(10, 100, 'ENGINE.WAW.xex', 'WAW-patch', '1096157212', 1255653614, 1, '6549796975722068', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_tokens`
--
ALTER TABLE `access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `console_verification`
--
ALTER TABLE `console_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kvs`
--
ALTER TABLE `kvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kv_stats`
--
ALTER TABLE `kv_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `OpenXbl`
--
ALTER TABLE `OpenXbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem_tokens`
--
ALTER TABLE `redeem_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vars`
--
ALTER TABLE `vars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xex_data`
--
ALTER TABLE `xex_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_tokens`
--
ALTER TABLE `access_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `console_verification`
--
ALTER TABLE `console_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kvs`
--
ALTER TABLE `kvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kv_stats`
--
ALTER TABLE `kv_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `metrics`
--
ALTER TABLE `metrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `OpenXbl`
--
ALTER TABLE `OpenXbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `redeem_tokens`
--
ALTER TABLE `redeem_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vars`
--
ALTER TABLE `vars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `xex_data`
--
ALTER TABLE `xex_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
