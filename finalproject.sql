-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 02:23 PM
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
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userName`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `no_of_tickets` int(255) NOT NULL,
  `cost` int(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Stay_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `Name`, `address`, `number`, `destination`, `no_of_tickets`, `cost`, `Status`, `Stay_time`) VALUES
(12, 'Sandip Rai', 'patandhoka', '9823723236', 'Pokhara, Nepal', 12, 144000, 'Rejected', '3 days, 4 nights'),
(13, 'Sandip Rai', 'asd', '23123', 'Dhorpatan, Nepal', 12, 264000, 'Accepted', '6 days, 7 nights'),
(14, 'C30105210040', 'asdasd', '9863462432', 'Rara, Nepal', 123, 2460000, 'Accepted', '4 days, 5 nights'),
(15, 'C30105210040', 'asdasd', '9863462432', 'Rara, Nepal', 1, 20000, 'Rejected', '4 days, 5 nights'),
(16, 'C30105210040', 'asdasd', '9863462432', 'Darjeeling', 12, 204000, 'pending', '5 days, 6 nights'),
(17, 'Atal', 'asdasd', '9863462432', 'Darjeeling', 12, 204000, 'pending', '5 days, 6 nights'),
(18, 'Atal', 'asdasd', '9863462432', 'Pokhara, Nepal', 12, 144000, 'pending', '3 days, 4 nights'),
(19, 'Student_BICT', 'asdasd', '9863462432', 'Rara, Nepal', 12, 240000, 'pending', '4 days, 5 nights'),
(20, 'C30105210040', 'asdasd', '9863462432', 'Tibet', 3, 108000, 'pending', '6 days, 7 nights');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Price` int(255) NOT NULL,
  `Time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `Name`, `Price`, `Time`) VALUES
(1, 'Rara, Nepal', 20000, '4 days, 5 nights'),
(2, 'Darjeeling', 17000, '5 days, 6 nights'),
(3, 'Sauraha, Chitwan', 14000, '3 days, 4 nights'),
(4, 'Dhorpatan, Nepal', 22000, '6 days, 7 nights'),
(5, 'Pokhara, Nepal', 12000, '3 days, 4 nights'),
(6, 'Tibet', 36000, '6 days, 7 nights');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `userName`, `email`, `password`) VALUES
(5, 'Sandip Rai', 'sandip@gmail.com', 'aabd333347567f016d0b431391006459');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
