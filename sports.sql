-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 10:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookig_id` int(11) NOT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `dayId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `payment_method` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookig_id`, `ownerId`, `dayId`, `userId`, `start_time`, `end_time`, `status`, `payment_method`) VALUES
(2, 19, 1, 2, '12:00:00', '13:00:00', 'confirm', 'on'),
(6, 19, 3, 2, '21:00:00', '22:00:00', 'confirm', 'nogod'),
(7, 19, 3, 2, '19:00:00', '20:00:00', 'confirm', 'nogod'),
(8, 21, 2, 2, '22:00:00', '23:00:00', 'confirm', 'nogod'),
(9, 21, 3, 2, '18:00:00', '19:00:00', 'confirm', 'cash'),
(10, 19, 7, 2, '19:00:00', '20:00:00', 'confirm', 'cash'),
(16, 21, 1, 2, '22:30:00', '23:30:00', 'pending', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `email`, `subject`) VALUES
(1, 'Nader Nihal Neep', '01819710384', 'nadernihal606014@gmail.com', 'Hello World BD'),
(3, 'Nader Nihal', '01819710384', 'naderneep252000@gmail.com', 'Leading University'),
(5, 'Ebrahim', '01733688612', 'sajib.it1412@gmail.com', 'Please open your field'),
(6, 'AWE', '12345678', 'infinityweb49@gmail.com', 'hello'),
(8, 'RASEL', '01819170384', 'yonahap755@molyg.com', 'GOOD');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(255) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`) VALUES
(1, 'Saturday'),
(2, 'Sunday'),
(3, 'Monday'),
(4, 'Tuesday'),
(5, 'Wednesday'),
(6, 'Thursday'),
(7, 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(255) NOT NULL,
  `full_name` varchar(500) NOT NULL,
  `username` varchar(50) NOT NULL,
  `OwnerEmail` varchar(50) NOT NULL,
  `OwnerPassword` varchar(20) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `division` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `indoor_name` varchar(50) NOT NULL,
  `indoor_location` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `code` varchar(100) NOT NULL,
  `is_verified` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `full_name`, `username`, `OwnerEmail`, `OwnerPassword`, `mobile`, `division`, `city`, `indoor_name`, `indoor_location`, `usertype`, `code`, `is_verified`) VALUES
(19, 'neep', 'sajib1412', 'nadernihal606014@gmail.com', '12345678', '01819710384', '8', 'Sylhet', 'Sports Gardens', 'Ambarkhana', 'owner', '1251927423', '1'),
(21, 'Nader Nihal Neep', 'neep', 'naderneep252000@gmail.com', '12345678', '018197103841', '8', 'Sylhet', 'Sports ', 'Ambarkhana', 'owner', '1152659306', '1'),
(22, 'Sanjida Sabiha', 'sabiha_123', 'sabiha@gmail.com', '12345678', '0171294321', '8', 'Sylhet', 'Sports Corner', 'noyasorok', 'owner', '3100', '1'),
(23, 'samiha Choudhury', 'samiha', 'samiha@gmail.com', '12345678', '123456789', '8', 'Sylhet', 'Goal', 'kumarpara', 'owner', '1336492630', ''),
(24, 'Sameera Chowdhury', 'sameerachy', 'sameera@gmail.com', '12345678', '01617876554', '1', 'Dhaka', 'Mac Sports Hub', 'Motijheel', 'owner', '314448164', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `status` varchar(32) NOT NULL DEFAULT 'pending',
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `review`, `status`, `date_time`) VALUES
(1, 'Flex Parker', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 'confirm', '2024-01-17 10:02:15'),
(2, 'Flex Parker', 'full_name', 'pending', '2024-01-17 10:07:16'),
(3, 'Flex Parker', 'bhb', 'pending', '2024-01-17 10:07:21'),
(4, 'Flex Parker', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 'confirm', '2024-01-17 10:08:06'),
(5, 'Flex Parker', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 'confirm', '2024-01-17 10:09:59'),
(6, 'Flex Parker', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 'confirm', '2024-01-17 10:11:48'),
(7, 'Kristen', 'they gave us a wonderful service!', 'confirm', '2024-02-09 12:14:29'),
(8, 'Flex Parker', 'have a wonderful time', 'confirm', '2024-02-18 17:16:16'),
(14, 'Flex Parker', 'abcd', 'pending', '2024-02-23 08:27:21'),
(15, 'Flex Parker', 'abcd', 'pending', '2024-02-23 08:27:27'),
(16, 'Flex Parker', 'Your Indoor is very BAD', 'confirm', '2024-02-23 17:43:01'),
(17, 'Mehzabeen', 'very bad', 'confirm', '2024-02-24 11:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `id` int(11) NOT NULL,
  `ownerID` int(11) DEFAULT NULL,
  `dayID` int(11) DEFAULT NULL,
  `start_from` time NOT NULL,
  `end_to` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`id`, `ownerID`, `dayID`, `start_from`, `end_to`) VALUES
(3, 19, 3, '19:00:00', '20:00:00'),
(6, 21, 2, '22:00:00', '23:00:00'),
(8, 19, 3, '20:00:00', '21:00:00'),
(9, 21, 4, '16:00:00', '17:00:00'),
(20, 24, 6, '17:00:00', '18:00:00'),
(23, 22, 1, '13:00:00', '14:00:00'),
(25, 22, 2, '12:00:00', '13:00:00'),
(33, 19, 6, '14:00:00', '15:00:00'),
(42, 21, 7, '20:00:00', '21:00:00'),
(43, 21, 1, '22:30:00', '23:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `id` int(255) NOT NULL,
  `all_days` varchar(100) NOT NULL,
  `start_dates` time NOT NULL,
  `end_dates` time NOT NULL,
  `weekend` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`id`, `all_days`, `start_dates`, `end_dates`, `weekend`) VALUES
(8, 'Friday', '10:00:00', '05:00:00', 'Friday'),
(10, 'Sunday to Wednesday', '10:00:00', '11:00:00', 'Monday'),
(11, 'Saturday to Friday', '01:00:00', '14:00:00', 'Friday'),
(12, 'Friday to Saturday', '13:00:00', '14:00:00', 'Sundahy'),
(14, 'Monday', '10:00:00', '11:00:00', 'Monday'),
(15, 'Sunday to Thursday', '10:00:00', '11:00:00', 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `usertype` varchar(10) NOT NULL,
  `code` varchar(11) NOT NULL,
  `is_verified` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `email`, `mobile`, `usertype`, `code`, `is_verified`) VALUES
(2, 'Flex Parker', 'parker123', '9dd1eb7f01a3c3cf358710036f701fa3', 'naderneep252000@gmail.com', '01819710384', 'user', '1664807941', 1),
(4, 'Nader Nihal', 'neep', '25d55ad283aa400af464c76d713c07ad', 'nadernihal606014@gmail.com', '01819710384', 'admin', '', 0),
(5, 'Samiha Choudhury', 'samiha', '25d55ad283aa400af464c76d713c07ad', 'samihaChoudhury@gmail.com', '123456789', 'user', '1631699664', 1),
(7, 'Kristen', 'Doe', '25d55ad283aa400af464c76d713c07ad', 'kristen@gmail.com', '12345678901', 'user', '465958076', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookig_id`),
  ADD KEY `ownerId` (`ownerId`),
  ADD KEY `dayId` (`dayId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ownerID` (`ownerID`),
  ADD KEY `dayID` (`dayID`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookig_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`ownerId`) REFERENCES `owners` (`id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`dayId`) REFERENCES `days` (`id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Constraints for table `slot`
--
ALTER TABLE `slot`
  ADD CONSTRAINT `slot_ibfk_1` FOREIGN KEY (`ownerID`) REFERENCES `owners` (`id`),
  ADD CONSTRAINT `slot_ibfk_2` FOREIGN KEY (`dayID`) REFERENCES `days` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
