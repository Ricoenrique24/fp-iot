-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2023 at 08:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `id_data` bigint(20) NOT NULL,
  `temp` float NOT NULL,
  `hum` float NOT NULL,
  `fire_stat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`id_data`, `temp`, `hum`, `fire_stat`) VALUES
(2, 30, 76.9, 'Nonaktif'),
(3, 29.1, 69.3, 'Nonaktif'),
(4, 29, 69, 'Nonaktif'),
(5, 29, 69, 'Nonaktif'),
(6, 29, 69, 'Nonaktif'),
(7, 29, 69, 'Nonaktif'),
(8, 29, 69, 'Nonaktif'),
(9, 29, 69, 'Nonaktif'),
(10, 29, 69, 'Nonaktif'),
(11, 29, 69.2, 'Nonaktif'),
(12, 29, 69, 'Nonaktif'),
(13, 29, 69, 'Nonaktif'),
(14, 29, 69, 'Nonaktif'),
(15, 29, 69, 'Nonaktif'),
(16, 29, 69, 'Nonaktif'),
(17, 29, 69.3, 'Nonaktif'),
(18, 29, 69.3, 'Nonaktif'),
(19, 29, 69, 'Nonaktif'),
(20, 29, 69, 'Nonaktif'),
(21, 29, 69.3, 'Nonaktif'),
(22, 29, 69.3, 'Nonaktif'),
(23, 29, 69, 'Nonaktif'),
(24, 29, 69, 'Nonaktif'),
(25, 29, 69, 'Nonaktif'),
(26, 29, 69, 'Nonaktif'),
(27, 29, 69.1, 'Nonaktif'),
(28, 29, 69.1, 'Nonaktif'),
(29, 29, 69.1, 'Nonaktif'),
(30, 29, 69.1, 'Nonaktif'),
(31, 29, 69.1, 'Nonaktif'),
(32, 29, 69.1, 'Nonaktif'),
(33, 29, 69, 'Nonaktif'),
(34, 29, 69, 'Nonaktif'),
(35, 29, 69.1, 'Nonaktif'),
(36, 29, 69.1, 'Nonaktif'),
(37, 29, 69.1, 'Nonaktif'),
(38, 29, 69.1, 'Nonaktif'),
(39, 29, 69.1, 'Nonaktif'),
(40, 29, 69.1, 'Nonaktif'),
(41, 29, 69.1, 'Nonaktif'),
(42, 29, 69.1, 'Nonaktif'),
(43, 29, 69.1, 'Nonaktif'),
(44, 29, 69.1, 'Nonaktif'),
(45, 30.5, 78.5, 'Nonaktif'),
(46, 30.5, 78.5, 'Nonaktif'),
(47, 31.8, 95, 'Nonaktif'),
(48, 31.8, 95, 'Nonaktif'),
(49, 33.3, 95, 'Nonaktif'),
(50, 33.3, 95, 'Nonaktif'),
(51, 34.5, 95, 'Nonaktif'),
(52, 34.5, 95, 'Nonaktif'),
(53, 34, 95, 'Nonaktif'),
(54, 34, 95, 'Nonaktif'),
(55, 33.5, 95, 'Aktif'),
(56, 33.5, 95, 'Aktif'),
(57, 33.1, 95, 'Nonaktif'),
(58, 33.1, 95, 'Nonaktif'),
(59, 32.7, 95, 'Nonaktif'),
(60, 32.7, 95, 'Nonaktif'),
(61, 32.2, 95, 'Nonaktif'),
(62, 32.2, 95, 'Aktif'),
(63, 31.8, 95, 'Aktif'),
(64, 31.8, 95, 'Nonaktif'),
(65, 31.6, 95, 'Nonaktif'),
(66, 31.6, 95, 'Nonaktif'),
(67, 31.3, 95, 'Nonaktif'),
(68, 31.3, 95, 'Nonaktif'),
(69, 31, 95, 'Nonaktif'),
(70, 31, 95, 'Nonaktif'),
(71, 30.9, 95, 'Nonaktif'),
(72, 30.9, 95, 'Nonaktif'),
(73, 30.7, 95, 'Nonaktif'),
(74, 30.7, 95, 'Nonaktif'),
(75, 30.5, 95, 'Nonaktif'),
(76, 30.5, 95, 'Nonaktif'),
(77, 30.3, 95, 'Nonaktif'),
(78, 30.3, 95, 'Nonaktif'),
(79, 30.2, 95, 'Nonaktif'),
(80, 30.2, 95, 'Nonaktif'),
(81, 30.1, 95, 'Nonaktif'),
(82, 30.1, 95, 'Nonaktif'),
(83, 30, 95, 'Nonaktif'),
(84, 30, 95, 'Nonaktif'),
(85, 29.9, 95, 'Nonaktif'),
(86, 29.9, 95, 'Nonaktif'),
(87, 29.8, 95, 'Nonaktif'),
(88, 29.8, 95, 'Nonaktif'),
(89, 29.7, 99.2, 'Nonaktif'),
(90, 29.7, 99.2, 'Nonaktif'),
(91, 29.7, 99.2, 'Nonaktif'),
(92, 29.7, 99.2, 'Nonaktif'),
(93, 29.6, 98.7, 'Nonaktif'),
(94, 29.6, 98.7, 'Nonaktif'),
(95, 29.5, 98.2, 'Nonaktif'),
(96, 29.5, 98.2, 'Nonaktif'),
(97, 29.5, 98.2, 'Nonaktif'),
(98, 29.5, 98.2, 'Nonaktif'),
(99, 29.5, 96.7, 'Nonaktif'),
(100, 29.5, 96.7, 'Nonaktif'),
(101, 29.4, 98.8, 'Nonaktif'),
(102, 29.4, 98.8, 'Nonaktif'),
(103, 29.4, 98.8, 'Nonaktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`id_data`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `id_data` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
