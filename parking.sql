-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2023 at 04:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `mobile`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 7219154633, 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`name`, `email`, `subject`, `message`) VALUES
('Pratik Kapdi', 'pratikkapdi13@gmail.com', 'parking', 'Parking is not good'),
('prajwal thomaskar', 'prajwalthomaskar10@gmail.com', 'parking', 'space is not proper');

-- --------------------------------------------------------

--
-- Table structure for table `logindetails`
--

CREATE TABLE `logindetails` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_moblie` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logindetails`
--

INSERT INTO `logindetails` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_moblie`) VALUES
(1, 'Pratik Kapdi', 'Pratik@2544', 'pratikkapdi13@gmail.com', 7219154633),
(2, 'Swagat Doke', 'Swagat@02', 'swagatdoke2002@gmail.com', 7887591328),
(3, 'prajwal thomaskar', 'Prajwal@24', 'prajwalthomaskar10@gmail.com', 7058509523);

-- --------------------------------------------------------

--
-- Table structure for table `m1consumer`
--

CREATE TABLE `m1consumer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `in_time` datetime NOT NULL DEFAULT current_timestamp(),
  `out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m1consumer`
--

INSERT INTO `m1consumer` (`cid`, `cname`, `car_no`, `location`, `in_time`, `out_time`) VALUES
(1, 'Wagnor', 'MH12SP5060', 'A7', '2023-05-04 20:13:28', '2023-05-04 20:13:38'),
(2, 'Wagnor', 'MH12SP5060', 'A7', '2023-05-05 19:37:13', NULL),
(3, 'Tata nexon', 'MH14JG1550', 'A5', '2023-05-05 19:37:27', NULL),
(4, 'Honda city', 'MH22JF2561', 'B4', '2023-05-05 19:37:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m2consumer`
--

CREATE TABLE `m2consumer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `in_time` datetime NOT NULL DEFAULT current_timestamp(),
  `out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m2consumer`
--

INSERT INTO `m2consumer` (`cid`, `cname`, `car_no`, `location`, `in_time`, `out_time`) VALUES
(1, 'Wagnor', 'MH14JM3237', 'A9', '2023-05-05 19:38:32', NULL),
(2, 'Honda city', 'MH14JG1550', 'A1', '2023-05-05 19:38:44', '2023-05-05 19:39:56'),
(3, 'indeca', 'MH14JM3237', 'B6', '2023-05-05 19:39:04', NULL),
(4, 'maruti swift', 'MH12LF2540', 'O1', '2023-05-05 19:39:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m3consumer`
--

CREATE TABLE `m3consumer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `in_time` datetime NOT NULL DEFAULT current_timestamp(),
  `out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m3consumer`
--

INSERT INTO `m3consumer` (`cid`, `cname`, `car_no`, `location`, `in_time`, `out_time`) VALUES
(1, 'Wagnor', 'MH14JG1550', 'O3', '2023-05-05 19:40:20', '2023-05-05 19:41:25'),
(2, 'mahindra thar', 'MH14JG1550', 'A7', '2023-05-05 19:40:32', NULL),
(3, 'Tata nexon', 'MH22JF2561', 'A1', '2023-05-05 19:40:48', NULL),
(4, 'I10', 'MH22JF2561', 'B6', '2023-05-05 19:41:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m4consumer`
--

CREATE TABLE `m4consumer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `in_time` datetime NOT NULL DEFAULT current_timestamp(),
  `out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m4consumer`
--

INSERT INTO `m4consumer` (`cid`, `cname`, `car_no`, `location`, `in_time`, `out_time`) VALUES
(1, 'maruti swift', 'MH14JM3237', 'B4', '2023-05-05 19:41:51', '2023-05-05 19:42:30'),
(2, 'Tata nexon', 'MH12SP5060', 'B4', '2023-05-05 19:42:02', '2023-05-05 19:42:30'),
(3, 'Tata nexon', 'MH14JG1550', 'A9', '2023-05-05 19:42:18', NULL),
(4, 'hyundai venue', 'MH12LF2540', 'A5', '2023-05-05 19:42:55', NULL),
(5, 'hyundai creta', 'MH12LF2540', 'O3', '2023-05-05 19:43:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spacem1`
--

CREATE TABLE `spacem1` (
  `sid` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spacem1`
--

INSERT INTO `spacem1` (`sid`, `location`, `status`) VALUES
(1, 'A1', 'available'),
(2, 'A2', 'available'),
(3, 'A3', 'available'),
(4, 'A4', 'available'),
(5, 'A5', 'occupied'),
(6, 'A6', 'available'),
(7, 'A7', 'occupied'),
(8, 'A8', 'available'),
(9, 'A9', 'available'),
(10, 'A10', 'available'),
(11, 'B1', 'available'),
(12, 'B2', 'available'),
(13, 'B3', 'available'),
(14, 'B4', 'occupied'),
(15, 'B5', 'available'),
(16, 'B6', 'available'),
(17, 'B7', 'available'),
(18, 'B8', 'available'),
(19, 'B9', 'available'),
(20, 'B10', 'available'),
(21, 'C1', 'available'),
(22, 'C2', 'available'),
(23, 'C3', 'available'),
(24, 'C4', 'available'),
(25, 'C5', 'available'),
(26, 'C6', 'available'),
(27, 'C7', 'available'),
(28, 'C8', 'available'),
(29, 'C9', 'available'),
(30, 'C10', 'available'),
(31, 'D1', 'available'),
(32, 'D2', 'available'),
(33, 'D3', 'available'),
(34, 'D4', 'available'),
(35, 'D5', 'available'),
(36, 'D6', 'available'),
(37, 'D7', 'available'),
(38, 'D8', 'available'),
(39, 'D9', 'available'),
(40, 'D10', 'available'),
(41, 'E1', 'available'),
(42, 'E2', 'available'),
(43, 'E3', 'available'),
(44, 'E4', 'available'),
(45, 'E5', 'available'),
(46, 'E6', 'available'),
(47, 'E7', 'available'),
(48, 'E8', 'available'),
(49, 'E9', 'available'),
(50, 'E10', 'available'),
(51, 'F1', 'available'),
(52, 'F2', 'available'),
(53, 'F3', 'available'),
(54, 'F4', 'available'),
(55, 'F5', 'available'),
(56, 'F6', 'available'),
(57, 'F7', 'available'),
(58, 'F8', 'available'),
(59, 'F9', 'available'),
(60, 'F10', 'available'),
(61, 'G1', 'available'),
(62, 'G2', 'available'),
(63, 'G3', 'available'),
(64, 'G4', 'available'),
(65, 'G5', 'available'),
(66, 'G6', 'available'),
(67, 'G7', 'available'),
(68, 'G8', 'available'),
(69, 'G9', 'available'),
(70, 'G10', 'available'),
(71, 'H1', 'available'),
(72, 'H2', 'available'),
(73, 'H3', 'available'),
(74, 'H4', 'available'),
(75, 'H5', 'available'),
(76, 'H6', 'available'),
(77, 'H7', 'available'),
(78, 'H8', 'available'),
(79, 'H9', 'available'),
(80, 'H10', 'available'),
(81, 'I1', 'available'),
(82, 'I2', 'available'),
(83, 'I3', 'available'),
(84, 'I4', 'available'),
(85, 'I5', 'available'),
(86, 'I6', 'available'),
(87, 'I7', 'available'),
(88, 'I8', 'available'),
(89, 'I9', 'available'),
(90, 'I10', 'available'),
(91, 'J1', 'available'),
(92, 'J2', 'available'),
(93, 'J3', 'available'),
(94, 'J4', 'available'),
(95, 'J5', 'available'),
(96, 'J6', 'available'),
(97, 'J7', 'available'),
(98, 'J8', 'available'),
(99, 'J9', 'available'),
(100, 'J10', 'available'),
(101, 'K1', 'available'),
(102, 'K2', 'available'),
(103, 'K3', 'available'),
(104, 'K4', 'available'),
(105, 'K5', 'available'),
(106, 'K6', 'available'),
(107, 'K7', 'available'),
(108, 'K8', 'available'),
(109, 'K9', 'available'),
(110, 'K10', 'available'),
(111, 'L1', 'available'),
(112, 'L2', 'available'),
(113, 'L3', 'available'),
(114, 'L4', 'available'),
(115, 'L5', 'available'),
(116, 'L6', 'available'),
(117, 'L7', 'available'),
(118, 'L8', 'available'),
(119, 'L9', 'available'),
(120, 'L10', 'available'),
(121, 'M1', 'available'),
(122, 'M2', 'available'),
(123, 'M3', 'available'),
(124, 'M4', 'available'),
(125, 'M5', 'available'),
(126, 'M6', 'available'),
(127, 'M7', 'available'),
(128, 'M8', 'available'),
(129, 'M9', 'available'),
(130, 'M10', 'available'),
(131, 'N1', 'available'),
(132, 'N2', 'available'),
(133, 'N3', 'available'),
(134, 'N4', 'available'),
(135, 'N5', 'available'),
(136, 'N6', 'available'),
(137, 'N7', 'available'),
(138, 'N8', 'available'),
(139, 'N9', 'available'),
(140, 'N10', 'available'),
(141, 'O1', 'available'),
(142, 'O2', 'available'),
(143, 'O3', 'available'),
(144, 'O4', 'available'),
(145, 'O5', 'available'),
(146, 'O6', 'available'),
(147, 'O7', 'available'),
(148, 'O8', 'available'),
(149, 'O9', 'available'),
(150, 'O10', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `spacem2`
--

CREATE TABLE `spacem2` (
  `sid` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spacem2`
--

INSERT INTO `spacem2` (`sid`, `location`, `status`) VALUES
(1, 'A1', 'available'),
(2, 'A2', 'available'),
(3, 'A3', 'available'),
(4, 'A4', 'available'),
(5, 'A5', 'available'),
(6, 'A6', 'available'),
(7, 'A7', 'available'),
(8, 'A8', 'available'),
(9, 'A9', 'occupied'),
(10, 'A10', 'available'),
(11, 'B1', 'available'),
(12, 'B2', 'available'),
(13, 'B3', 'available'),
(14, 'B4', 'available'),
(15, 'B5', 'available'),
(16, 'B6', 'occupied'),
(17, 'B7', 'available'),
(18, 'B8', 'available'),
(19, 'B9', 'available'),
(20, 'B10', 'available'),
(21, 'C1', 'available'),
(22, 'C2', 'available'),
(23, 'C3', 'available'),
(24, 'C4', 'available'),
(25, 'C5', 'available'),
(26, 'C6', 'available'),
(27, 'C7', 'available'),
(28, 'C8', 'available'),
(29, 'C9', 'available'),
(30, 'C10', 'available'),
(31, 'D1', 'available'),
(32, 'D2', 'available'),
(33, 'D3', 'available'),
(34, 'D4', 'available'),
(35, 'D5', 'available'),
(36, 'D6', 'available'),
(37, 'D7', 'available'),
(38, 'D8', 'available'),
(39, 'D9', 'available'),
(40, 'D10', 'available'),
(41, 'E1', 'available'),
(42, 'E2', 'available'),
(43, 'E3', 'available'),
(44, 'E4', 'available'),
(45, 'E5', 'available'),
(46, 'E6', 'available'),
(47, 'E7', 'available'),
(48, 'E8', 'available'),
(49, 'E9', 'available'),
(50, 'E10', 'available'),
(51, 'F1', 'available'),
(52, 'F2', 'available'),
(53, 'F3', 'available'),
(54, 'F4', 'available'),
(55, 'F5', 'available'),
(56, 'F6', 'available'),
(57, 'F7', 'available'),
(58, 'F8', 'available'),
(59, 'F9', 'available'),
(60, 'F10', 'available'),
(61, 'G1', 'available'),
(62, 'G2', 'available'),
(63, 'G3', 'available'),
(64, 'G4', 'available'),
(65, 'G5', 'available'),
(66, 'G6', 'available'),
(67, 'G7', 'available'),
(68, 'G8', 'available'),
(69, 'G9', 'available'),
(70, 'G10', 'available'),
(71, 'H1', 'available'),
(72, 'H2', 'available'),
(73, 'H3', 'available'),
(74, 'H4', 'available'),
(75, 'H5', 'available'),
(76, 'H6', 'available'),
(77, 'H7', 'available'),
(78, 'H8', 'available'),
(79, 'H9', 'available'),
(80, 'H10', 'available'),
(81, 'I1', 'available'),
(82, 'I2', 'available'),
(83, 'I3', 'available'),
(84, 'I4', 'available'),
(85, 'I5', 'available'),
(86, 'I6', 'available'),
(87, 'I7', 'available'),
(88, 'I8', 'available'),
(89, 'I9', 'available'),
(90, 'I10', 'available'),
(91, 'J1', 'available'),
(92, 'J2', 'available'),
(93, 'J3', 'available'),
(94, 'J4', 'available'),
(95, 'J5', 'available'),
(96, 'J6', 'available'),
(97, 'J7', 'available'),
(98, 'J8', 'available'),
(99, 'J9', 'available'),
(100, 'J10', 'available'),
(101, 'K1', 'available'),
(102, 'K2', 'available'),
(103, 'K3', 'available'),
(104, 'K4', 'available'),
(105, 'K5', 'available'),
(106, 'K6', 'available'),
(107, 'K7', 'available'),
(108, 'K8', 'available'),
(109, 'K9', 'available'),
(110, 'K10', 'available'),
(111, 'L1', 'available'),
(112, 'L2', 'available'),
(113, 'L3', 'available'),
(114, 'L4', 'available'),
(115, 'L5', 'available'),
(116, 'L6', 'available'),
(117, 'L7', 'available'),
(118, 'L8', 'available'),
(119, 'L9', 'available'),
(120, 'L10', 'available'),
(121, 'M1', 'available'),
(122, 'M2', 'available'),
(123, 'M3', 'available'),
(124, 'M4', 'available'),
(125, 'M5', 'available'),
(126, 'M6', 'available'),
(127, 'M7', 'available'),
(128, 'M8', 'available'),
(129, 'M9', 'available'),
(130, 'M10', 'available'),
(131, 'N1', 'available'),
(132, 'N2', 'available'),
(133, 'N3', 'available'),
(134, 'N4', 'available'),
(135, 'N5', 'available'),
(136, 'N6', 'available'),
(137, 'N7', 'available'),
(138, 'N8', 'available'),
(139, 'N9', 'available'),
(140, 'N10', 'available'),
(141, 'O1', 'occupied'),
(142, 'O2', 'available'),
(143, 'O3', 'available'),
(144, 'O4', 'available'),
(145, 'O5', 'available'),
(146, 'O6', 'available'),
(147, 'O7', 'available'),
(148, 'O8', 'available'),
(149, 'O9', 'available'),
(150, 'O10', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `spacem3`
--

CREATE TABLE `spacem3` (
  `sid` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spacem3`
--

INSERT INTO `spacem3` (`sid`, `location`, `status`) VALUES
(1, 'A1', 'occupied'),
(2, 'A2', 'available'),
(3, 'A3', 'available'),
(4, 'A4', 'available'),
(5, 'A5', 'available'),
(6, 'A6', 'available'),
(7, 'A7', 'occupied'),
(8, 'A8', 'available'),
(9, 'A9', 'available'),
(10, 'A10', 'available'),
(11, 'B1', 'available'),
(12, 'B2', 'available'),
(13, 'B3', 'available'),
(14, 'B4', 'available'),
(15, 'B5', 'available'),
(16, 'B6', 'occupied'),
(17, 'B7', 'available'),
(18, 'B8', 'available'),
(19, 'B9', 'available'),
(20, 'B10', 'available'),
(21, 'C1', 'available'),
(22, 'C2', 'available'),
(23, 'C3', 'available'),
(24, 'C4', 'available'),
(25, 'C5', 'available'),
(26, 'C6', 'available'),
(27, 'C7', 'available'),
(28, 'C8', 'available'),
(29, 'C9', 'available'),
(30, 'C10', 'available'),
(31, 'D1', 'available'),
(32, 'D2', 'available'),
(33, 'D3', 'available'),
(34, 'D4', 'available'),
(35, 'D5', 'available'),
(36, 'D6', 'available'),
(37, 'D7', 'available'),
(38, 'D8', 'available'),
(39, 'D9', 'available'),
(40, 'D10', 'available'),
(41, 'E1', 'available'),
(42, 'E2', 'available'),
(43, 'E3', 'available'),
(44, 'E4', 'available'),
(45, 'E5', 'available'),
(46, 'E6', 'available'),
(47, 'E7', 'available'),
(48, 'E8', 'available'),
(49, 'E9', 'available'),
(50, 'E10', 'available'),
(51, 'F1', 'available'),
(52, 'F2', 'available'),
(53, 'F3', 'available'),
(54, 'F4', 'available'),
(55, 'F5', 'available'),
(56, 'F6', 'available'),
(57, 'F7', 'available'),
(58, 'F8', 'available'),
(59, 'F9', 'available'),
(60, 'F10', 'available'),
(61, 'G1', 'available'),
(62, 'G2', 'available'),
(63, 'G3', 'available'),
(64, 'G4', 'available'),
(65, 'G5', 'available'),
(66, 'G6', 'available'),
(67, 'G7', 'available'),
(68, 'G8', 'available'),
(69, 'G9', 'available'),
(70, 'G10', 'available'),
(71, 'H1', 'available'),
(72, 'H2', 'available'),
(73, 'H3', 'available'),
(74, 'H4', 'available'),
(75, 'H5', 'available'),
(76, 'H6', 'available'),
(77, 'H7', 'available'),
(78, 'H8', 'available'),
(79, 'H9', 'available'),
(80, 'H10', 'available'),
(81, 'I1', 'available'),
(82, 'I2', 'available'),
(83, 'I3', 'available'),
(84, 'I4', 'available'),
(85, 'I5', 'available'),
(86, 'I6', 'available'),
(87, 'I7', 'available'),
(88, 'I8', 'available'),
(89, 'I9', 'available'),
(90, 'I10', 'available'),
(91, 'J1', 'available'),
(92, 'J2', 'available'),
(93, 'J3', 'available'),
(94, 'J4', 'available'),
(95, 'J5', 'available'),
(96, 'J6', 'available'),
(97, 'J7', 'available'),
(98, 'J8', 'available'),
(99, 'J9', 'available'),
(100, 'J10', 'available'),
(101, 'K1', 'available'),
(102, 'K2', 'available'),
(103, 'K3', 'available'),
(104, 'K4', 'available'),
(105, 'K5', 'available'),
(106, 'K6', 'available'),
(107, 'K7', 'available'),
(108, 'K8', 'available'),
(109, 'K9', 'available'),
(110, 'K10', 'available'),
(111, 'L1', 'available'),
(112, 'L2', 'available'),
(113, 'L3', 'available'),
(114, 'L4', 'available'),
(115, 'L5', 'available'),
(116, 'L6', 'available'),
(117, 'L7', 'available'),
(118, 'L8', 'available'),
(119, 'L9', 'available'),
(120, 'L10', 'available'),
(121, 'M1', 'available'),
(122, 'M2', 'available'),
(123, 'M3', 'available'),
(124, 'M4', 'available'),
(125, 'M5', 'available'),
(126, 'M6', 'available'),
(127, 'M7', 'available'),
(128, 'M8', 'available'),
(129, 'M9', 'available'),
(130, 'M10', 'available'),
(131, 'N1', 'available'),
(132, 'N2', 'available'),
(133, 'N3', 'available'),
(134, 'N4', 'available'),
(135, 'N5', 'available'),
(136, 'N6', 'available'),
(137, 'N7', 'available'),
(138, 'N8', 'available'),
(139, 'N9', 'available'),
(140, 'N10', 'available'),
(141, 'O1', 'available'),
(142, 'O2', 'available'),
(143, 'O3', 'available'),
(144, 'O4', 'available'),
(145, 'O5', 'available'),
(146, 'O6', 'available'),
(147, 'O7', 'available'),
(148, 'O8', 'available'),
(149, 'O9', 'available'),
(150, 'O10', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `spacem4`
--

CREATE TABLE `spacem4` (
  `sid` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spacem4`
--

INSERT INTO `spacem4` (`sid`, `location`, `status`) VALUES
(1, 'A1', 'available'),
(2, 'A2', 'available'),
(3, 'A3', 'available'),
(4, 'A4', 'available'),
(5, 'A5', 'occupied'),
(6, 'A6', 'available'),
(7, 'A7', 'available'),
(8, 'A8', 'available'),
(9, 'A9', 'occupied'),
(10, 'A10', 'available'),
(11, 'B1', 'available'),
(12, 'B2', 'available'),
(13, 'B3', 'available'),
(14, 'B4', 'available'),
(15, 'B5', 'available'),
(16, 'B6', 'available'),
(17, 'B7', 'available'),
(18, 'B8', 'available'),
(19, 'B9', 'available'),
(20, 'B10', 'available'),
(21, 'C1', 'available'),
(22, 'C2', 'available'),
(23, 'C3', 'available'),
(24, 'C4', 'available'),
(25, 'C5', 'available'),
(26, 'C6', 'available'),
(27, 'C7', 'available'),
(28, 'C8', 'available'),
(29, 'C9', 'available'),
(30, 'C10', 'available'),
(31, 'D1', 'available'),
(32, 'D2', 'available'),
(33, 'D3', 'available'),
(34, 'D4', 'available'),
(35, 'D5', 'available'),
(36, 'D6', 'available'),
(37, 'D7', 'available'),
(38, 'D8', 'available'),
(39, 'D9', 'available'),
(40, 'D10', 'available'),
(41, 'E1', 'available'),
(42, 'E2', 'available'),
(43, 'E3', 'available'),
(44, 'E4', 'available'),
(45, 'E5', 'available'),
(46, 'E6', 'available'),
(47, 'E7', 'available'),
(48, 'E8', 'available'),
(49, 'E9', 'available'),
(50, 'E10', 'available'),
(51, 'F1', 'available'),
(52, 'F2', 'available'),
(53, 'F3', 'available'),
(54, 'F4', 'available'),
(55, 'F5', 'available'),
(56, 'F6', 'available'),
(57, 'F7', 'available'),
(58, 'F8', 'available'),
(59, 'F9', 'available'),
(60, 'F10', 'available'),
(61, 'G1', 'available'),
(62, 'G2', 'available'),
(63, 'G3', 'available'),
(64, 'G4', 'available'),
(65, 'G5', 'available'),
(66, 'G6', 'available'),
(67, 'G7', 'available'),
(68, 'G8', 'available'),
(69, 'G9', 'available'),
(70, 'G10', 'available'),
(71, 'H1', 'available'),
(72, 'H2', 'available'),
(73, 'H3', 'available'),
(74, 'H4', 'available'),
(75, 'H5', 'available'),
(76, 'H6', 'available'),
(77, 'H7', 'available'),
(78, 'H8', 'available'),
(79, 'H9', 'available'),
(80, 'H10', 'available'),
(81, 'I1', 'available'),
(82, 'I2', 'available'),
(83, 'I3', 'available'),
(84, 'I4', 'available'),
(85, 'I5', 'available'),
(86, 'I6', 'available'),
(87, 'I7', 'available'),
(88, 'I8', 'available'),
(89, 'I9', 'available'),
(90, 'I10', 'available'),
(91, 'J1', 'available'),
(92, 'J2', 'available'),
(93, 'J3', 'available'),
(94, 'J4', 'available'),
(95, 'J5', 'available'),
(96, 'J6', 'available'),
(97, 'J7', 'available'),
(98, 'J8', 'available'),
(99, 'J9', 'available'),
(100, 'J10', 'available'),
(101, 'K1', 'available'),
(102, 'K2', 'available'),
(103, 'K3', 'available'),
(104, 'K4', 'available'),
(105, 'K5', 'available'),
(106, 'K6', 'available'),
(107, 'K7', 'available'),
(108, 'K8', 'available'),
(109, 'K9', 'available'),
(110, 'K10', 'available'),
(111, 'L1', 'available'),
(112, 'L2', 'available'),
(113, 'L3', 'available'),
(114, 'L4', 'available'),
(115, 'L5', 'available'),
(116, 'L6', 'available'),
(117, 'L7', 'available'),
(118, 'L8', 'available'),
(119, 'L9', 'available'),
(120, 'L10', 'available'),
(121, 'M1', 'available'),
(122, 'M2', 'available'),
(123, 'M3', 'available'),
(124, 'M4', 'available'),
(125, 'M5', 'available'),
(126, 'M6', 'available'),
(127, 'M7', 'available'),
(128, 'M8', 'available'),
(129, 'M9', 'available'),
(130, 'M10', 'available'),
(131, 'N1', 'available'),
(132, 'N2', 'available'),
(133, 'N3', 'available'),
(134, 'N4', 'available'),
(135, 'N5', 'available'),
(136, 'N6', 'available'),
(137, 'N7', 'available'),
(138, 'N8', 'available'),
(139, 'N9', 'available'),
(140, 'N10', 'available'),
(141, 'O1', 'available'),
(142, 'O2', 'available'),
(143, 'O3', 'occupied'),
(144, 'O4', 'available'),
(145, 'O5', 'available'),
(146, 'O6', 'available'),
(147, 'O7', 'available'),
(148, 'O8', 'available'),
(149, 'O9', 'available'),
(150, 'O10', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `logindetails`
--
ALTER TABLE `logindetails`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `m1consumer`
--
ALTER TABLE `m1consumer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `m2consumer`
--
ALTER TABLE `m2consumer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `m3consumer`
--
ALTER TABLE `m3consumer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `m4consumer`
--
ALTER TABLE `m4consumer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `spacem1`
--
ALTER TABLE `spacem1`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `spacem2`
--
ALTER TABLE `spacem2`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `spacem3`
--
ALTER TABLE `spacem3`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `spacem4`
--
ALTER TABLE `spacem4`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logindetails`
--
ALTER TABLE `logindetails`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m1consumer`
--
ALTER TABLE `m1consumer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m2consumer`
--
ALTER TABLE `m2consumer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m3consumer`
--
ALTER TABLE `m3consumer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m4consumer`
--
ALTER TABLE `m4consumer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `spacem1`
--
ALTER TABLE `spacem1`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `spacem2`
--
ALTER TABLE `spacem2`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `spacem3`
--
ALTER TABLE `spacem3`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `spacem4`
--
ALTER TABLE `spacem4`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
