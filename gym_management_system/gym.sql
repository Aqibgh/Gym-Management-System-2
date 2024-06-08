-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 12:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_customer`
--

CREATE TABLE `add_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contactNo` varchar(11) NOT NULL,
  `payments_plan` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `trainer_name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for table `add_customer`
--
ALTER TABLE `add_customer`
  ADD PRIMARY KEY (`id`);

-- --------------------------------------------------------

--
-- Table structure for table `add_trainer`
--

CREATE TABLE `add_trainer` (
  `tid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactNo` varchar(11) NOT NULL,
  `emergencyNo` varchar(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `min_aggrement` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for table `add_trainer`
--
ALTER TABLE `add_trainer`
  ADD PRIMARY KEY (`tid`);

-- --------------------------------------------------------

--
-- Table structure for table `fee_trainer`
--

CREATE TABLE `fee_trainer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `fees` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loginpage`
--

CREATE TABLE `loginpage` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-------------------------------------------------------------
INSERT INTO `loginpage` (`username`, `password`) VALUES
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `pay_customer`
--

CREATE TABLE `pay_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `fees` float NOT NULL,
  `month` varchar(20) NOT NULL,
  `tname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
