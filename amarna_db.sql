-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2025 at 08:36 AM
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
-- Database: `amarna_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ayurvediclist`
--

CREATE TABLE `ayurvediclist` (
  `id` int(11) NOT NULL,
  `medname` varchar(255) NOT NULL,
  `medform` varchar(100) NOT NULL,
  `batch_number` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `reorder` int(11) NOT NULL DEFAULT 10,
  `mfd` date DEFAULT NULL,
  `exd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ayurvediclist`
--

INSERT INTO `ayurvediclist` (`id`, `medname`, `medform`, `batch_number`, `quantity`, `reorder`, `mfd`, `exd`) VALUES
(24, 'Hair Oil', 'Oil', 'AM001', 100, 10, '2025-09-08', '2025-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `westernlist`
--

CREATE TABLE `westernlist` (
  `id` int(11) NOT NULL,
  `medname` varchar(255) NOT NULL,
  `medform` varchar(100) NOT NULL,
  `batch_number` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `reorder` int(11) NOT NULL DEFAULT 10,
  `mfd` date DEFAULT NULL,
  `exd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `westernlist`
--

INSERT INTO `westernlist` (`id`, `medname`, `medform`, `batch_number`, `quantity`, `reorder`, `mfd`, `exd`) VALUES
(53, 'Panadol', 'Tablet', 'WM001', 30, 30, '2025-08-08', '2025-12-10'),
(54, 'Piriton', 'Syrup', 'WM002', 100, 30, '2025-08-15', '2025-11-27'),
(55, 'Miconazole', 'Cream', 'WM003', 0, 30, '2025-08-09', '2025-12-26'),
(56, 'Piriton', 'Tablet', 'WM004', 100, 10, '2025-08-15', '2025-09-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ayurvediclist`
--
ALTER TABLE `ayurvediclist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `westernlist`
--
ALTER TABLE `westernlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ayurvediclist`
--
ALTER TABLE `ayurvediclist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `westernlist`
--
ALTER TABLE `westernlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
