-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2023 at 07:42 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tirdad`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
CREATE TABLE IF NOT EXISTS `todo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(256) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `name`, `email`, `created_at`, `status`, `user_id`) VALUES
(16, 'werawer', 'mojtaba.abedi1381@gmai.com', '2023-09-26 10:37:26', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'mojtaba', 'mojtaba.abedi1381@gmai.com', '6b1e3e358054e18efebbac72d2a56749'),
(3, 'sdfs', 'sdlfksldf@skdjf.com', '6b1e3e358054e18efebbac72d2a56749'),
(4, 'wewef', 'wefwe@wer', '202cb962ac59075b964b07152d234b70'),
(5, 'mojtaba', 'mojtaba.abedi1381@gmail.com', '6b1e3e358054e18efebbac72d2a56749'),
(6, 'melika', 'melika@melika.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'mhsa', 'mhsa@mhsa.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'tets', 'test@tsest', '098f6bcd4621d373cade4e832627b4f6'),
(9, 'mojtaba', 'moj@moj.com', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'erwer', 'qweq@qweq.com', 'e10adc3949ba59abbe56e057f20f883e'),
(11, 'mojtaba', 'asdasd@sdasd.com', '4297f44b13955235245b2497399d7a93');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
CREATE TABLE IF NOT EXISTS `verification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(255) NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`id`, `user_ID`, `code`, `expired_at`, `status`) VALUES
(1, '5', '273959', '2023-09-18 13:59:47', '1'),
(2, '5', '884021', '2023-09-18 14:06:55', '1'),
(3, '5', '329413', '2023-09-18 14:09:59', '1'),
(4, '5', '203559', '2023-09-18 14:10:31', '1'),
(5, '5', '204791', '2023-09-18 14:11:22', '1'),
(6, '5', '280131', '2023-09-18 14:44:15', '1'),
(7, '5', '164881', '2023-09-19 08:29:18', '1'),
(8, '2', '269143', '2023-09-19 08:30:10', '1'),
(9, '2', '149781', '2023-09-19 08:33:53', '1'),
(10, '5', '165422', '2023-09-19 08:35:15', '1'),
(11, '5', '236154', '2023-09-19 08:35:52', '1'),
(12, '5', '143092', '2023-09-19 08:37:34', '1'),
(13, '5', '183339', '2023-09-19 08:46:12', '1'),
(14, '5', '357758', '2023-09-19 08:52:12', '1'),
(15, '5', '256210', '2023-09-19 09:23:04', '1'),
(16, '5', '212890', '2023-09-19 09:24:31', '1'),
(17, '5', '119117', '2023-09-19 09:38:50', '1'),
(18, '5', '292274', '2023-09-19 09:41:58', '1'),
(19, '5', '235597', '2023-09-19 09:46:30', '1'),
(20, '5', '109379', '2023-09-19 09:48:06', '1'),
(21, '5', '610769', '2023-09-19 09:53:39', '0'),
(22, '5', '323283', '2023-09-19 09:55:04', '0'),
(23, '11', '543805', '2023-09-19 09:59:07', '0'),
(24, '11', '469874', '2023-09-19 10:00:52', '0'),
(25, '11', '362937', '2023-09-19 10:01:30', '0'),
(26, '11', '177064', '2023-09-19 10:02:34', '0'),
(27, '11', '270656', '2023-09-19 10:02:20', '1'),
(28, '11', '180542', '2023-09-19 10:05:19', '0'),
(29, '11', '362694', '2023-09-19 10:06:34', '1'),
(30, '11', '525537', '2023-09-19 10:11:51', '1'),
(31, '5', '153947', '2023-09-19 10:21:59', '0'),
(32, '5', '221044', '2023-09-19 10:40:38', '1'),
(33, '5', '288071', '2023-09-19 10:42:43', '1'),
(34, '2', '149107', '2023-09-19 10:44:38', '1'),
(35, '3', '141447', '2023-09-19 10:48:10', '1'),
(36, '3', '238264', '2023-09-19 10:54:03', '1'),
(37, '3', '206126', '2023-09-19 10:54:14', '1'),
(38, '5', '510936', '2023-09-19 11:02:13', '1'),
(39, '5', '807544', '2023-09-19 11:07:53', '0'),
(40, '5', '184247', '2023-09-19 11:33:52', '1'),
(41, '5', '359679', '2023-09-19 11:56:53', '1'),
(42, '5', '242875', '2023-09-19 12:12:21', '1'),
(43, '5', '203545', '2023-09-19 12:27:07', '1'),
(44, '5', '218565', '2023-09-19 12:28:35', '0'),
(45, '5', '106440', '2023-09-19 13:16:14', '0'),
(46, '5', '317542', '2023-09-19 13:18:01', '1'),
(47, '5', '123098', '2023-09-20 08:58:55', '0'),
(48, '5', '504688', '2023-09-20 09:03:24', '1'),
(49, '2', '688882', '2023-09-20 09:06:09', '1'),
(50, '2', '882293', '2023-09-20 09:19:32', '1'),
(51, '2', '292105', '2023-09-20 09:42:53', '1'),
(52, '2', '508927', '2023-09-20 09:49:03', '1'),
(53, '2', '302889', '2023-09-20 09:51:54', '0'),
(54, '5', '168733', '2023-09-20 13:44:33', '1'),
(55, '5', '185600', '2023-09-20 14:15:28', '1'),
(56, '5', '174065', '2023-09-20 14:17:11', '1'),
(57, '13', '103738', '2023-09-20 14:59:33', '1'),
(58, '5', '996954', '2023-09-21 08:40:06', '1'),
(59, '5', '265839', '2023-09-21 09:00:00', '1'),
(60, '5', '157461', '2023-09-21 09:00:30', '1'),
(61, '5', '225572', '2023-09-21 09:06:20', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
