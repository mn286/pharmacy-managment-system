-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 04:37 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `PHONE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`NAME`, `ADDRESS`, `PHONE`) VALUES
('Cipla', 'Mumbai', '12903'),
('Glenmark', 'Mumbai', '131325352'),
('Med_City', 'Nellore', '010114367832'),
('Sun Pharma', 'Mysore', '01289078443');

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `CODE` varchar(10) NOT NULL,
  `COST_PRICE` double NOT NULL,
  `SELLING_PRICE` double NOT NULL,
  `EXPIRY` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `PRODUCTION_DATE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `PLACE` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`NAME`, `TYPE`, `BARCODE`, `DOSE`, `CODE`, `COST_PRICE`, `SELLING_PRICE`, `EXPIRY`, `COMPANY_NAME`, `PRODUCTION_DATE`, `EXPIRATION_DATE`, `PLACE`, `QUANTITY`) VALUES
('crocin', 'Pills', '1562471', '500', '221', 15, 40, 'Available for use', 'Cipla', '2022-02-04', '2024-02-04', 'B-Up', 37),
('Novalo', 'Pills', 'fsdgjfihjorodsf', 'normal', '3d00', 4, 30, 'Available for use', 'Med_City', '2017-03-03', '2019-03-03', 'N-Right', 26),
('dolo 650', 'Pills', 'fsdgjfihjorodsgh', 'normal', '3d01', 2, 3, 'Available for use', 'Sun Pharma', '2021-03-04', '2025-03-04', 'N-Right', 40),
('novafol', 'Bills', 'ftrkl432432md', 'normal', '2xaa', 33, 40, 'Available for use', 'Med_City', '2016-01-01', '2017-01-01', 'N-Left', 27);

-- --------------------------------------------------------

--
-- Table structure for table `expiry`
--

CREATE TABLE `expiry` (
  `PRODUCT_NAME` varchar(50) NOT NULL,
  `PRODUCT_CODE` varchar(20) NOT NULL,
  `DATE_OF_EXPIRY` varchar(10) NOT NULL,
  `QUANTITY_REMAIN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_sales`
--

CREATE TABLE `history_sales` (
  `USER_NAME` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(15) NOT NULL,
  `TIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_sales`
--

INSERT INTO `history_sales` (`USER_NAME`, `BARCODE`, `NAME`, `TYPE`, `DOSE`, `QUANTITY`, `PRICE`, `AMOUNT`, `DATE`, `TIME`) VALUES
('Syed Ibrahim', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '12-02-2017', '05:02:06'),
('Syed Ibrahim', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '12-02-2017', '05:02:26'),
('Syed Ibrahim', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 4, 6, 24, '12-02-2017', '05:02:40'),
('Syed Ibrahim', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 2, 14, 28, '13-02-2017', '01:38:00'),
('Syed Ibrahim', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 2, 14, 28, '13-02-2017', '01:38:10'),
('Syed Ibrahim', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 7, 14, 98, '13-02-2017', '01:38:28'),
('Syed Ibrahim', 'nbhdl4978549', 'Morfin', 'Injection', '1 (Day)', 1, 14, 14, '13-02-2017', '01:38:46'),
('Surya', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 2, 6, 12, '13-02-2017', '01:59:34'),
('Surya', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 5, 6, 30, '13-02-2017', '01:59:43'),
('Syed Ibrahim', 'sgnfsjkfnsdjfkb', 'Breofin', 'Bills', ' Free used', 1, 6, 6, '13-02-2017', '02:12:33'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 14, 28, '17-02-2017', '09:55:43'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 14, 28, '17-02-2017', '09:55:58'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 5, 14, 70, '17-02-2017', '09:56:11'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 17, 34, '17-02-2017', '10:04:58'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 2, 17, 34, '17-02-2017', '10:05:15'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 5, 17, 85, '17-02-2017', '10:05:26'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 4, 20, 80, '18-02-2017', '11:16:08'),
('Syed Ibrahim', 'fsdjkbdfjkffds', 'Declofien', 'Injection', 'Free', 4, 20, 80, '18-02-2017', '11:16:28'),
('Syed Ibrahim', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 4, 14, 56, '18-02-2017', '11:17:06'),
('Syed Ibrahim', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 4, 14, 56, '18-02-2017', '11:17:15'),
('Syed Ibrahim', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 7, 14, 98, '18-02-2017', '11:17:24'),
('Surya', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 6, 14, 84, '18-02-2017', '11:18:29'),
('Surya', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 2, 14, 28, '18-02-2017', '11:18:41'),
('Surya', 'AnyBarcodedaf', 'AnyName', 'Drink', '2 Days', 2, 14, 28, '18-02-2017', '11:18:45'),
('Syed Ibrahim', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 2, 40, 80, '14-04-2017', '04:50:32'),
('Syed Ibrahim', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 2, 40, 80, '14-04-2017', '04:50:53'),
('Syed Ibrahim', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 6, 40, 240, '14-04-2017', '04:51:01'),
('Syed Ibrahim', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2017', '03:33:30'),
('Syed Ibrahim', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2017', '03:33:36'),
('Syed Ibrahim', 'ftrkl432432md', 'novafol', 'Bills', 'normal', 1, 40, 40, '03-05-2017', '03:33:41'),
('Admin', 'fsdgjfihjorodsf', 'Novalo', 'Pills', 'normal', 3, 3, 9, '29-01-2022', '03:56:51 pm'),
('Admin', '123456', 'crocin', 'Pills', '500', 3, 10, 30, '29-01-2022', '03:57:02 pm'),
('Admin', 'fsdgjfihjorodsf', 'Novalo', 'Pills', 'normal', 4, 3, 12, '29-01-2022', '07:08:33 pm'),
('Admin', 'fsdgjfihjorodsf', 'Novalo', 'Pills', 'normal', 3, 3, 9, '29-01-2022', '07:22:56 pm'),
('Admin', '123456', 'crocin', 'Pills', '500', 5, 10, 50, '29-01-2022', '07:23:10 pm'),
('Admin', '123456', 'crocin', 'Pills', '500', 4, 10, 40, '29-01-2022', '08:42:34 pm'),
('Admin', '1562471', 'crocin', 'Pills', '500', 3, 40, 120, '15-02-2022', '12:02:32 pm'),
('Admin', 'fsdgjfihjorodsf', 'Novalo', 'Pills', 'normal', 4, 30, 120, '15-02-2022', '12:02:48 pm');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`MESSAGE_FROM`, `MESSAGE_TO`, `MESSAGE_TEXT`) VALUES
('Syed Ibrahim', 'Surya', 'Welcome surya'),
('Surya', 'Syed Ibrahim', 'Welcome sir'),
('Syed Ibrahim', 'Surya', 'Hay , Surya '),
('Surya', 'Syed Ibrahim', 'Hay '),
('Surya', 'Syed Ibrahim', 'Welcome'),
('Syed Ibrahim', 'Surya', 'Hello , surya'),
('Syed Ibrahim', 'Surya', 'surya , Please go and update\nthe drug roof '),
('Syed Ibrahim', 'Tony', 'Welcome'),
('Syed Ibrahim', 'Surya', 'This is your salary on the disk , \n3000 , close in 12  ; good luck'),
('Syed Ibrahim', 'Surya', 'good job meet me in five'),
('Surya', 'Syed Ibrahim', 'Ok i will '),
('Syed Ibrahim', 'Surya', 'gdfgfdgfdgfdg'),
('Syed Ibrahim', 'Surya', 'haaaaaaaaaaaaaaaai'),
('Syed Ibrahim', 'Surya', 'What is wrong ? '),
('Surya', 'Syed Ibrahim', 'I am okay thanks '),
('Admin', 'Mukunthan', 'Mission Report december 16, 1991');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DATE` varchar(20) NOT NULL,
  `TIME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`NAME`, `TYPE`, `DATE`, `TIME`) VALUES
('Syed Ibrahim', 'Admin', '17-02-2017', '10:30:24'),
('Syed Ibrahim', 'Admin', '17-02-2017', '10:32:48'),
('Surya', 'Employee', '17-02-2017', '10:32:56'),
('Syed Ibrahim', 'Admin', '17-02-2017', '10:33:10'),
('Surya', 'Employee', '17-02-2017', '10:33:37'),
('Syed Ibrahim', 'Admin', '17-02-2017', '10:36:21'),
('Syed Ibrahim', 'Admin', '17-02-2017', '10:36:53'),
('Syed Ibrahim', 'Admin', '17-02-2017', '10:49:27'),
('Syed Ibrahim', 'Admin', '17-02-2017', '11:02:23'),
('Syed Ibrahim', 'Admin', '17-02-2017', '01:40:08'),
('Syed Ibrahim', 'Admin', '18-02-2017', '10:50:29'),
('Syed Ibrahim', 'Admin', '18-02-2017', '10:51:50'),
('Syed Ibrahim', 'Admin', '18-02-2017', '10:53:33'),
('Syed Ibrahim', 'Admin', '18-02-2017', '10:58:41'),
('Syed Ibrahim', 'Admin', '18-02-2017', '11:15:39'),
('Surya', 'Employee', '18-02-2017', '11:18:19'),
('Syed Ibrahim', 'Admin', '18-02-2017', '11:23:25'),
('Surya', 'Employee', '18-02-2017', '11:24:19'),
('Syed Ibrahim', 'Admin', '04-04-2017', '06:32:57'),
('Surya', 'Employee', '04-04-2017', '06:39:00'),
('Syed Ibrahim', 'Admin', '13-04-2017', '02:57:26'),
('Syed Ibrahim', 'Admin', '13-04-2017', '03:06:11'),
('Syed Ibrahim', 'Admin', '13-04-2017', '03:08:31'),
('Syed Ibrahim', 'Admin', '13-04-2017', '03:09:40'),
('Syed Ibrahim', 'Admin', '13-04-2017', '03:13:24'),
('Syed Ibrahim', 'Admin', '13-04-2017', '05:04:26'),
('Syed Ibrahim', 'Admin', '13-04-2017', '05:07:20'),
('Syed Ibrahim', 'Admin', '13-04-2017', '05:10:11'),
('Syed Ibrahim', 'Admin', '13-04-2017', '05:21:53'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:11:57'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:13:44'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:17:42'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:19:38'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:22:00'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:28:37'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:30:48'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:35:00'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:39:54'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:41:53'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:44:29'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:47:08'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:48:24'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:49:36'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:51:28'),
('Syed Ibrahim', 'Admin', '14-04-2017', '05:53:15'),
('Syed Ibrahim', 'Admin', '14-04-2017', '06:22:53'),
('Syed Ibrahim', 'Admin', '14-04-2017', '06:30:59'),
('Syed Ibrahim', 'Admin', '14-04-2017', '02:32:24'),
('Syed Ibrahim', 'Admin', '14-04-2017', '02:40:18'),
('Syed Ibrahim', 'Admin', '14-04-2017', '02:43:43'),
('Syed Ibrahim', 'Admin', '14-04-2017', '02:46:41'),
('Syed Ibrahim', 'Admin', '14-04-2017', '02:48:26'),
('Syed Ibrahim', 'Admin', '14-04-2017', '02:49:19'),
('Surya', 'Employee', '14-04-2017', '02:52:01'),
('Syed Ibrahim', 'Admin', '14-04-2017', '02:58:36'),
('Syed Ibrahim', 'Admin', '14-04-2017', '03:14:22'),
('Syed Ibrahim', 'Admin', '14-04-2017', '03:17:23'),
('Syed Ibrahim', 'Admin', '14-04-2017', '03:19:28'),
('Syed Ibrahim', 'Admin', '14-04-2017', '03:27:34'),
('Syed Ibrahim', 'Admin', '14-04-2017', '04:49:24'),
('Surya', 'Employee', '14-04-2017', '04:55:06'),
('Surya', 'Employee', '14-04-2017', '05:01:50'),
('Surya', 'Employee', '14-04-2017', '05:03:59'),
('Surya', 'Employee', '14-04-2017', '05:14:50'),
('Surya', 'Employee', '14-04-2017', '05:17:01'),
('Surya', 'Employee', '14-04-2017', '05:17:50'),
('Surya', 'Employee', '14-04-2017', '05:21:19'),
('Surya', 'Employee', '14-04-2017', '05:23:30'),
('Surya', 'Employee', '14-04-2017', '05:26:03'),
('Surya', 'Employee', '14-04-2017', '05:28:53'),
('Surya', 'Employee', '14-04-2017', '05:32:36'),
('Surya', 'Employee', '14-04-2017', '05:35:04'),
('Surya', 'Employee', '14-04-2017', '05:37:17'),
('Syed Ibrahim', 'Admin', '14-04-2017', '07:19:33'),
('Surya', 'Employee', '15-04-2017', '02:03:12'),
('Syed Ibrahim', 'Admin', '15-04-2017', '02:47:28'),
('Syed Ibrahim', 'Admin', '15-04-2017', '02:56:16'),
('Syed Ibrahim', 'Admin', '15-04-2017', '03:06:20'),
('Syed Ibrahim', 'Admin', '15-04-2017', '03:36:58'),
('Syed Ibrahim', 'Admin', '15-04-2017', '03:42:44'),
('Syed Ibrahim', 'Admin', '03-05-2017', '01:23:14'),
('Syed Ibrahim', 'Admin', '03-05-2017', '01:51:20'),
('Syed Ibrahim', 'Admin', '03-05-2017', '01:52:35'),
('Syed Ibrahim', 'Admin', '03-05-2017', '03:31:40'),
('Syed Ibrahim', 'Admin', '03-05-2017', '03:47:32'),
('Syed Ibrahim', 'Admin', '05-05-2017', '01:24:00'),
('Syed Ibrahim', 'Admin', '05-05-2017', '03:06:19'),
('Syed Ibrahim', 'Admin', '05-05-2017', '07:54:02'),
('Surya', 'Employee', '05-05-2017', '07:55:52'),
('Syed Ibrahim', 'Admin', '05-05-2017', '08:01:50'),
('Syed Ibrahim', 'Admin', '05-05-2017', '08:02:44'),
('Syed Ibrahim', 'Admin', '05-05-2017', '08:05:37'),
('Syed Ibrahim', 'Admin', '05-05-2017', '08:07:37'),
('Surya', 'Employee', '05-05-2017', '08:09:23'),
('Syed Ibrahim', 'Admin', '05-05-2017', '08:14:18'),
('Surya', 'Employee', '05-05-2017', '08:15:44'),
('Syed Ibrahim', 'Admin', '05-05-2017', '08:16:15'),
('Syed Ibrahim', 'Admin', '06-05-2017', '09:51:33'),
('Surya', 'Employee', '06-05-2017', '09:52:46'),
('Surya', 'Employee', '06-05-2017', '09:54:33'),
('Syed Ibrahim', 'Admin', '07-05-2017', '04:44:39'),
('Syed Ibrahim', 'Admin', '07-05-2017', '10:02:15'),
('Syed Ibrahim', 'Admin', '07-05-2017', '10:12:11'),
('Syed Ibrahim', 'Admin', '27-05-2017', '03:53:36'),
('Syed Ibrahim', 'Admin', '27-05-2017', '03:54:05'),
('Syed Ibrahim', 'Admin', '27-05-2017', '04:05:04'),
('Surya', 'Employee', '27-05-2017', '04:06:02'),
('Syed Ibrahim', 'Admin', '30-05-2017', '03:13:41'),
('Syed Ibrahim', 'Admin', '31-05-2017', '10:57:35'),
('Syed Ibrahim', 'Admin', '31-05-2017', '11:00:02'),
('Syed Ibrahim', 'Admin', '31-05-2017', '11:06:32'),
('Syed Ibrahim', 'Admin', '07-06-2017', '08:38:00'),
('Syed Ibrahim', 'Admin', '07-06-2017', '08:40:43'),
('Syed Ibrahim', 'Admin', '07-06-2017', '08:41:28'),
('Surya', 'Employee', '19-09-2017', '06:10:07'),
('Syed Ibrahim', 'Admin', '07-10-2017', '04:39:50'),
('Syed Ibrahim', 'Admin', '07-10-2017', '04:40:39'),
('Syed Ibrahim', 'Admin', '21-11-2017', '09:06:10'),
('Syed Ibrahim', 'Admin', '21-11-2017', '09:15:39'),
('Surya', 'Employee', '14-12-2017', '02:56:45'),
('Syed Ibrahim', 'Admin', '24-03-2018', '07:20:36'),
('Syed Ibrahim', 'Admin', '24-03-2018', '08:47:14'),
('Syed Ibrahim', 'Admin', '24-03-2018', '08:51:01'),
('Surya', 'Employee', '24-03-2018', '08:52:17'),
('Syed Ibrahim', 'Admin', '24-03-2018', '08:52:50'),
('Syed Ibrahim', 'Admin', '13-12-2021', '11:59:36'),
('Syed Ibrahim', 'Admin', '19-12-2021', '04:18:45'),
('admin', 'Employee', '19-12-2021', '07:32:19'),
('Syed Ibrahim', 'Admin', '20-12-2021', '01:31:41'),
('Syed Ibrahim', 'Admin', '20-12-2021', '01:32:38'),
('Siddharth', 'Employee', '20-12-2021', '01:34:18'),
('Siddharth', 'Employee', '20-12-2021', '01:36:58'),
('Syed Ibrahim', 'Admin', '20-12-2021', '01:37:23'),
('Syed Ibrahim', 'Admin', '20-12-2021', '01:38:50'),
('Syed Ibrahim', 'Admin', '20-12-2021', '01:39:12'),
('Siddharth', 'Employee', '20-12-2021', '01:49:02'),
('Siddharth', 'Employee', '20-12-2021', '01:50:08'),
('Siddharth', 'Employee', '20-12-2021', '01:54:10'),
('Siddharth', 'Employee', '20-12-2021', '02:04:41'),
('Siddharth', 'Employee', '20-12-2021', '02:05:15'),
('Syed Ibrahim', 'Admin', '20-12-2021', '02:06:00'),
('Siddharth', 'Employee', '20-12-2021', '02:10:50'),
('Admin', 'Admin', '20-12-2021', '02:11:26'),
('Admin', 'Admin', '20-12-2021', '02:14:10'),
('Admin', 'Admin', '20-12-2021', '10:41:52'),
('Admin', 'Admin', '20-12-2021', '10:43:50'),
('Admin', 'Admin', '20-12-2021', '10:46:49'),
('Mukunthan', 'Employee', '20-12-2021', '10:59:24'),
('Admin', 'Admin', '07-01-2022', '08:48:24'),
('Admin', 'Admin', '07-01-2022', '08:56:38'),
('Admin', 'Admin', '07-01-2022', '09:02:18'),
('Admin', 'Admin', '22-01-2022', '10:40:21'),
('Admin', 'Admin', '22-01-2022', '10:44:37'),
('Admin', 'Admin', '29-01-2022', '03:21:33'),
('Admin', 'Admin', '29-01-2022', '03:56:45'),
('Admin', 'Admin', '29-01-2022', '07:06:16'),
('Mukunthan', 'Employee', '29-01-2022', '07:14:50'),
('Admin', 'Admin', '29-01-2022', '07:15:57'),
('Admin', 'Admin', '29-01-2022', '07:20:51'),
('Admin', 'Admin', '29-01-2022', '07:21:44'),
('Admin', 'Admin', '29-01-2022', '07:22:45'),
('Admin', 'Admin', '29-01-2022', '07:47:23'),
('Admin', 'Admin', '29-01-2022', '08:00:50'),
('Admin', 'Admin', '29-01-2022', '08:35:09'),
('Admin', 'Admin', '29-01-2022', '08:42:10'),
('Admin', 'Admin', '29-01-2022', '08:50:18'),
('Admin', 'Admin', '29-01-2022', '10:00:26'),
('Admin', 'Admin', '15-02-2022', '11:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `message_history`
--

CREATE TABLE `message_history` (
  `MESSAGE_FROM` varchar(20) NOT NULL,
  `MESSAGE_TO` varchar(20) NOT NULL,
  `MESSAGE_TEXT` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`BARCODE`, `NAME`, `TYPE`, `COMPANY_NAME`, `QUANTITY`, `PRICE`, `AMOUNT`) VALUES
('fsdgjfihjorodsf', 'Novalo', 'Bills', 'Med_City', 40, 2, 80);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `BARCODE` varchar(20) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `AMOUNT` double NOT NULL,
  `DATE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `SALARY` double NOT NULL,
  `PASSWORD` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NAME`, `DOB`, `ADDRESS`, `PHONE`, `SALARY`, `PASSWORD`) VALUES
(1, 'Admin', '23-12-1995', 'Kanakapura Ramanagaram', '9880755666', 50000, 'superadmin'),
(2, 'Mukunthan', '7-4-1999', 'Mumbai', '9003231111', 20000, 'mukunthan'),
(3, 'manoj', '5-4-1997', 'Hebbal', '45682978', 20000, 'manoj123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`NAME`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`BARCODE`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`BARCODE`),
  ADD KEY `fkr3` (`COMPANY_NAME`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `fkr3` FOREIGN KEY (`COMPANY_NAME`) REFERENCES `company` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
