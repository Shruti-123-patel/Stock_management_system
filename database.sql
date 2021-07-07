-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 02:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `ratings` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`ratings`) VALUES
(4),
(3),
(5),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `s1`
--

CREATE TABLE `s1` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(70) NOT NULL,
  `product_catagory` varchar(70) NOT NULL,
  `price` int(11) NOT NULL,
  `available_product` int(11) NOT NULL,
  `required_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `s2`
--

CREATE TABLE `s2` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(70) NOT NULL,
  `product_catagory` varchar(70) NOT NULL,
  `price` int(11) NOT NULL,
  `available_product` int(11) NOT NULL,
  `required_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shruti`
--

CREATE TABLE `shruti` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(70) NOT NULL,
  `product_catagory` varchar(70) NOT NULL,
  `price` int(11) NOT NULL,
  `available_product` int(11) NOT NULL,
  `required_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shruti`
--

INSERT INTO `shruti` (`product_id`, `product_name`, `product_catagory`, `price`, `available_product`, `required_product`) VALUES
(1, 'cloth', 'pant', 300, 16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('google','facebook','twitter','linkedin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'google',
  `oauth_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `username`, `email`, `password`, `cpassword`, `token`) VALUES
(0, 's1', 'shrutipatel.ps2903@gmail.com', '$2y$10$wjaiRM8bjaC90/QRB8oXdOU3zpBbfTxeC8C8Hb1i7dgo3o4AkS1Ze', '$2y$10$yIC9peJRxv5fInEJVLHe4eBF7iGPe0mxTwUhQt0grv6xlxj01VKOy', 'dc1e3c39f3432df0988a7ef4c209ac'),
(0, 's2', 'unnu123@gmail.com', '$2y$10$K2ftkX1bETH9TwTNZVoY5.FSwE7.cGOz5H6eqUsgmxXQ2WxnuC1y6', '$2y$10$/gnTG2xa3ouJnMajh/JkneyZi6ZRK4sQvZrD9u2QowPiIup1rFVH2', '27239b6c261b4dae4871d17f587664'),
(0, 'shruti', 'shruti29032003@gmail.com', '$2y$10$xebB3u99UOxJaDCHHFuzL.sWmdJwTTr0REiwgK0nUxlSPOLgmBpRK', '$2y$10$DyDX1lQ3o6VgdZPcyNrLM.xQJIhQiWYIwchmHWaU8Sz/aTsEipXrm', '704f3727809e9442eaf1ff9f87fe3c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s1`
--
ALTER TABLE `s1`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `s2`
--
ALTER TABLE `s2`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `shruti`
--
ALTER TABLE `shruti`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
