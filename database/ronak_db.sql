-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 17, 2023 at 06:19 PM
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
-- Database: `ronak_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `Feedback_id` int(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `Feedback_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_portfolio`
--

CREATE TABLE `tb_portfolio` (
  `portfolio_id` int(20) NOT NULL,
  `stock_name` varchar(10) NOT NULL,
  `investment_price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `net_amount` float NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_portfolio`
--

INSERT INTO `tb_portfolio` (`portfolio_id`, `stock_name`, `investment_price`, `quantity`, `net_amount`, `username`) VALUES
(7, 'hkjdhc', 4654, 654654, 54564, 'heett');

-- --------------------------------------------------------

--
-- Table structure for table `tb_registration`
--

CREATE TABLE `tb_registration` (
  `registration_id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_watchlist`
--

CREATE TABLE `tb_watchlist` (
  `watchlist_id` int(20) NOT NULL,
  `stock_name` varchar(50) NOT NULL,
  `current_price` int(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_watchlist`
--

INSERT INTO `tb_watchlist` (`watchlist_id`, `stock_name`, `current_price`, `username`) VALUES
(2, 'heet', 9999, 'bh'),
(3, 'tata', 5464, 'bbbb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD PRIMARY KEY (`Feedback_id`);

--
-- Indexes for table `tb_portfolio`
--
ALTER TABLE `tb_portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Indexes for table `tb_registration`
--
ALTER TABLE `tb_registration`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indexes for table `tb_watchlist`
--
ALTER TABLE `tb_watchlist`
  ADD PRIMARY KEY (`watchlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `Feedback_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_portfolio`
--
ALTER TABLE `tb_portfolio`
  MODIFY `portfolio_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_registration`
--
ALTER TABLE `tb_registration`
  MODIFY `registration_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_watchlist`
--
ALTER TABLE `tb_watchlist`
  MODIFY `watchlist_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
