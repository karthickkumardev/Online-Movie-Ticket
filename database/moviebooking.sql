-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 06:20 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviebooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
(2405, '2405');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `vehicle_no` varchar(50) NOT NULL,
  `locationid` int(8) DEFAULT NULL,
  `slotid` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(20) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `paid` int(1) NOT NULL DEFAULT 0,
  `location_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bookingid`, `email`, `vehicle_type`, `vehicle_no`, `locationid`, `slotid`, `date`, `time`, `duration`, `cost`, `paid`, `location_name`) VALUES
(66, 'karthicbe2405@gmail.com', 'PLATINUM', '', 2, '2 1 9:00 AM', '', '2021-02-28', '5', '1000', 1, ''),
(69, 'Karthickkumar@gmail.com', 'GOLD', '', 2, '2 2 12:30 PM', '', '2021-03-01', '2', '300', 1, ''),
(70, 'Karthi@gmail.com', 'Elite', '', 2, '2 3 9:30 PM', '', '2021-03-03', '2', '600', 1, ''),
(71, 'Karthi@gmail.com', 'Box', '', 37, '37 1 10 : 15 AM', '', '2021-03-06', '2', '1000', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `locationid` int(8) UNSIGNED NOT NULL,
  `location_name` varchar(80) NOT NULL,
  `area` varchar(100) NOT NULL,
  `slots` int(8) NOT NULL,
  `cast` varchar(2000) NOT NULL,
  `bannerimage` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`locationid`, `location_name`, `area`, `slots`, `cast`, `bannerimage`) VALUES
(1, 'KANNUM KANNUM KOLLAYADITHAL', 'FUN CINEMAS', 3, 'A carefree youngster`s life takes an interesting turn after he meets the girl of his dreams.', 'https://upload.wikimedia.org/wikipedia/en/8/86/Kannum_Kannum_Kollaiyadithaal.jpg'),
(2, 'KAITHI', 'THE SPI CINEMAS', 4, 'Dilli, an ex-convict, endeavours to meet his daughter for the first time after leaving prison.', 'https://i.pinimg.com/originals/93/ef/c8/93efc876eb6ea57c2f28837eec455713.jpg'),
(3, 'REMO', 'SAVEETHA CINEMAS', 1, 'Remo is a Tamil romantic comedy movie directed by Bhagyaraj Kannan. The film stars Sivakarthikeyan and Keerthy Suresh in the leading roles.', 'https://www.filmibeat.com/ph-big/2016/09/remo-movie-poster_147523194960.jpg'),
(4, 'MASTER', 'KG CINEMAS', 0, 'JD, an alcoholic professor, is enrolled to teach at a juvenile facility, unbeknownst to him. He soon clashes with a ruthless gangster, who uses the children as scapegoats for his crimes.', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcShoMBrct_7VEH8S7OEeLW39ylRUGqxzBUQQK3_3tamdMbAbefE'),
(37, 'Soorarai Potru', 'Sangeetha Cinemas', 1, 'Maara, a young man from a remote village, dreams of launching his own airline service. However, he must overcome several obstacles and challenges in order to be successful in his quest.', 'https://www.deccanherald.com/sites/dh/files/articleimages/2020/11/16/file79eu5fnczvr1e74ix3eg-914541-1605524324.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `slotid` varchar(20) NOT NULL,
  `locationid` int(8) NOT NULL,
  `slotno` varchar(20) NOT NULL,
  `status` int(8) NOT NULL,
  `time` varchar(20) NOT NULL,
  `duration` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`slotid`, `locationid`, `slotno`, `status`, `time`, `duration`) VALUES
('1 1 10:30AM', 1, '10:30 AM', 0, '0', 0),
('1 2 2:30 PM', 1, '2:30 PM', 0, '0', 0),
('1 3 6:00 PM', 1, '6:00 PM', 0, '0', 0),
('2 1 9:00 AM', 2, '9:00 AM', 0, '0', 0),
('2 2 12:30 PM', 2, '12:30 PM', 0, '0', 0),
('2 3 9:30 PM', 2, '9:30 PM', 0, '0', 0),
('3 1 9:00 AM', 3, '9:00 AM', 0, '0', 0),
('36 1 10:00 AM', 36, '10 : 00 AM', 0, '0', 0),
('37 1 10 : 15 AM', 37, '10 : 15 AM', 0, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fullname`, `mobno`, `password`) VALUES
('Karthi@gmail.com', 'Karthick Kumar', '1234567890', '123'),
('karthicbe2405@gmail.com', 'KARHTICK KUMAR', '12456789', '123'),
('Karthickkumar@gmail.com', 'Karthick Kumar', '1234567890', '123');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicleid` int(8) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `cost` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicleid`, `vehicle_type`, `cost`) VALUES
(4, 'GOLD', '150'),
(5, 'PLATINUM', '200'),
(7, 'Elite', '300'),
(8, 'Box', '500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `fk_email` (`email`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`slotid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `locationid` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicleid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
