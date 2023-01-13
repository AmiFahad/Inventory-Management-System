-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 10:02 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `bought`, `sold`, `image`, `created_at`, `updated_at`) VALUES
(10, 'DSLR Camera', 12, 6, 'Uploads/download.jpg', '2021-12-24 11:02:18', '2021-12-24 11:02:18'),
(11, 'Mobile', 16, 2, 'Uploads/images.jpg', '2021-12-24 11:03:09', '2021-12-24 11:03:09'),
(12, 'TV', 13, 2, 'Uploads/latin-en-uhdtv-nu7090-un75nu7090pxpa-frontblack-167767245.png', '2021-12-24 11:03:45', '2021-12-24 11:03:45'),
(13, 'Calculator', 122, 23, 'Uploads/download (1).jpg', '2021-12-24 11:04:34', '2021-12-24 11:04:34'),
(14, 'Mouse', 97, 56, 'Uploads/download (2).jpg', '2021-12-24 11:05:09', '2021-12-24 11:05:09'),
(15, 'DRONE', 8, 2, 'Uploads/download (16).jpg', '2021-12-24 11:06:35', '2021-12-24 11:06:35'),
(16, 'LAPTOP', 27, 12, 'Uploads/download (4).jpg', '2021-12-24 11:07:11', '2021-12-24 11:07:11'),
(17, 'GRAPHICS CARD', 36, 32, 'Uploads/download (5).jpg', '2021-12-24 11:07:57', '2021-12-24 11:07:57'),
(18, 'RAM', 46, 16, 'Uploads/download (6).jpg', '2021-12-24 11:08:52', '2021-12-24 11:08:52'),
(19, 'BAG', 152, 59, 'Uploads/laptop-bag-donvnb7-600.jpg', '2021-12-24 11:09:46', '2021-12-24 11:09:46'),
(20, 'PRINTER', 8, 0, 'Uploads/download (9).jpg', '2021-12-24 11:10:16', '2021-12-24 11:10:16'),
(21, 'SOUND BOX', 4, 0, 'Uploads/download (10).jpg', '2021-12-24 11:10:36', '2021-12-24 11:10:36'),
(22, 'IP CAMERA', 11, 0, 'Uploads/376-3762030_transparent-background-cctv-camera-png-png-download.png', '2021-12-24 11:10:55', '2021-12-24 11:10:55'),
(23, 'ROUTER', 72, 19, 'Uploads/images (1).jpg', '2021-12-24 11:11:14', '2021-12-24 11:11:14'),
(24, 'EARPHONE', 221, 110, 'Uploads/download (12).jpg', '2021-12-24 11:11:44', '2021-12-24 11:11:44'),
(25, 'MOTHERBOARD', 63, 21, 'Uploads/download (15).jpg', '2021-12-24 11:12:12', '2021-12-24 11:12:12'),
(26, 'Speaker', 5, 2, 'Uploads/r.png', '2022-04-19 03:02:32', '2022-04-19 03:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(100) NOT NULL,
  `last_login_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `name`, `u_name`, `email`, `password`, `is_active`, `is_admin`, `avatar`, `last_login_time`, `created_at`) VALUES
(8, 'Bapti Niloy', 'bapti', 'bapti.niloy@gmail.com', '123124', 1, 0, 'Users/bapti.jpg', '2022-04-29 13:11:51', '2022-03-01 23:56:21'),
(9, 'Dipto', 'dipto', 'diptoniloy006@gmail.com', '123124', 1, 0, 'Users/bapti.jpg', '2022-08-23 19:57:28', '2022-04-19 02:13:50'),
(10, 'Rahat', 'rahat', '1820755@iub.edu.bd', '123124', 1, 0, 'Users/rahat.jpg', '2022-04-28 15:24:21', '2022-04-19 23:10:23'),
(11, 'Fahad', 'fahad', '1820729@iub.edu.bd', '123124', 1, 0, 'Users/fahad.jpg', '2022-04-28 13:24:20', '2022-04-19 23:13:09'),
(12, 'User', 'user', 'user@gmail.com', '123124', 1, 0, '', '2022-04-19 17:38:19', '2022-04-19 23:38:19'),
(13, 'User1', 'userd', 'userd@gmail.com', '123124', 1, 0, '', '2022-04-29 13:11:00', '2022-04-29 19:10:12'),
(14, 'h', 'h', 'h@gmail.com', '123', 1, 0, '', '2022-08-23 19:58:16', '2022-08-24 01:58:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
