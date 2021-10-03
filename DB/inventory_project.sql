-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 02:38 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bought` int(11) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `image` varchar(300) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `bought`, `sold`, `image`, `created_at`, `updated_at`) VALUES
(1, 'chair', 120, 100, '', '2021-09-08 20:26:10', '2021-09-12 00:27:12'),
(2, 'table', 150, 110, '', '2020-09-04 20:26:10', '2021-09-01 01:12:14'),
(20, 'bed 45', 126, 0, 'Uploads/b3f088c893a9b8ad1700f1fb94c480de.jpg', '2021-09-16 00:23:51', '2021-09-16 00:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(200) NOT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `name`, `u_name`, `email`, `password`, `is_active`, `is_admin`, `avatar`, `last_login_time`, `created_at`) VALUES
(17, 'shofi ', 'shofi', 'shogi@gmail.com', '56', 1, 0, 'Users/241197837_2941847952811201_4063416453482234047_n.jpg', '2021-09-21 15:51:13', '2021-09-11 12:37:35'),
(19, 'joy', 'raihan30', 'bokachuda@gmail.com', '123', 1, 0, '', '2021-09-20 16:45:11', '2021-09-20 12:14:22'),
(20, 'Alice', 'Alice', 'alice@gmail.com', '123', 1, 1, 'Users/imageone.jpg', '2021-09-21 15:49:06', '2021-09-21 20:40:58'),
(21, 'abc', 'abc', 'as', '67', 1, 0, '', '2021-09-23 06:50:28', '2021-09-23 02:46:50'),
(22, 'A', 'abcd', 'A', '$2y$10$04km6ucmxSKrXhh8LW0vLOgIx1J0Aawl6Ufj7aqtkG3RZ1yI54GcG', 1, 0, '', '2021-09-23 07:05:10', '2021-09-23 12:48:35'),
(23, 'raihan', 'raihan', 'a', '45c48cce2e2d7fbdea1afc51c7c6ad26', 1, 0, '', '2021-09-23 08:08:57', '2021-09-23 14:06:36'),
(24, 'abc', 'abc', 'a', '7647966b7343c29048673252e490f736', 1, 0, '', '2021-10-03 12:14:10', '2021-10-03 18:13:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
