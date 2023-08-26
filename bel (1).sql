-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 04:38 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bel`
--

-- --------------------------------------------------------

--
-- Table structure for table `machine1`
--

CREATE TABLE `machine1` (
  `id` int(11) NOT NULL,
  `test` varchar(10) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine1`
--

INSERT INTO `machine1` (`id`, `test`, `result`) VALUES
(1, 'test1', 'passed'),
(2, 'test2', 'passed'),
(3, 'test3', 'passed'),
(4, 'test4', 'failed'),
(5, 'test5', 'passed'),
(6, 'test6', 'failed'),
(7, 'test7', 'failed'),
(8, 'test8', 'failed');

-- --------------------------------------------------------

--
-- Table structure for table `machine2`
--

CREATE TABLE `machine2` (
  `id` int(11) NOT NULL,
  `test` varchar(10) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine2`
--

INSERT INTO `machine2` (`id`, `test`, `result`) VALUES
(1, 'test1', 'passed'),
(2, 'test2', 'failed'),
(3, 'test3', 'passed'),
(4, 'test4', 'passed'),
(5, 'test5', 'failed'),
(6, 'test6', 'passed'),
(7, 'test7', 'passed'),
(8, 'test8', 'passed'),
(9, 'test9', 'passed'),
(10, 'test10', 'failed'),
(11, 'test11', 'passed');

-- --------------------------------------------------------

--
-- Table structure for table `machine3`
--

CREATE TABLE `machine3` (
  `id` int(11) NOT NULL,
  `test` varchar(10) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine3`
--

INSERT INTO `machine3` (`id`, `test`, `result`) VALUES
(1, 'test1', 'failed'),
(2, 'test2', 'passed'),
(3, 'test3', 'passed'),
(4, 'test4', 'passed'),
(5, 'test5', 'passed'),
(6, 'test6', 'passed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'mayank', '$2y$10$VYBgr/aJz.HLo/W12PbRcuP0A0crqqhD4vGayQXF2kdxnw9hRTcWu', '2023-08-01 16:50:09'),
(2, 'jaipal', '$2y$10$z2teQ3DSUVoDoPRlUfGl6eYDLOE8QmtVldRP.DjDDxUVkOTHgkr5G', '2023-08-01 20:50:41'),
(3, 'kashish', '$2y$10$TMVw/oJMwjDY00SnvyzhA.rgzMqDNNc7WVk/3BiXh1TVfZ6C/N/TW', '2023-08-02 19:13:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `machine1`
--
ALTER TABLE `machine1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine2`
--
ALTER TABLE `machine2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine3`
--
ALTER TABLE `machine3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `machine1`
--
ALTER TABLE `machine1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `machine2`
--
ALTER TABLE `machine2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `machine3`
--
ALTER TABLE `machine3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
