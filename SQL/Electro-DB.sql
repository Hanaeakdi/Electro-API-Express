-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 03, 2024 at 02:32 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Electro-DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `stock` int NOT NULL DEFAULT '0',
  `price` int NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `company` text COLLATE utf8mb4_general_ci NOT NULL,
  `stars` int NOT NULL DEFAULT '0',
  `img` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `stock`, `price`, `category`, `company`, `stars`, `img`) VALUES
(1, 'TCL Google TV', '4K UHD Smart TV with Google TV, black color', 13, 600, 'TV', 'TCL', 5, 'TV_9.png'),
(2, 'Toshiba UHD 4K', '4K UHD Smart TV with HDR, black color', 9, 450, 'TV', 'Toshiba', 5, 'TV_11.png'),
(3, 'Philips Ambilight', '4K UHD Smart TV with Ambilight, black color', 8, 800, 'TV', 'Philips', 5, 'TV_12.png'),
(4, 'Roku TV', 'Smart TV with streaming apps, black color', 10, 300, 'TV', 'Roku', 4, 'TV_1.png'),
(5, 'LG NanoCell AI', '4K UHD Smart TV with AI, webOS, black color', 8, 750, 'TV', 'LG', 5, 'TV_2.png'),
(6, 'Hisense 50\"', '50\" 4K UHD Smart TV with Dolby Vision, black color', 12, 450, 'TV', 'Hisense', 5, 'TV_3.png'),
(7, 'Toshiba Fire TV', '4K UHD Smart TV with Fire TV built-in, black color', 9, 400, 'TV', 'Toshiba', 4, 'TV_4.png'),
(8, 'Hisense UHD 4K', '4K UHD Smart TV with Dolby Atmos, black color', 11, 500, 'TV', 'Hisense', 5, 'TV_5.png'),
(9, 'Sharp 4K UHD', '4K UHD Smart TV with HDR, black color', 10, 470, 'TV', 'Sharp', 4, 'TV_6.png'),
(10, 'LG UHD AI ThinQ', '4K UHD Smart TV with AI ThinQ, black color', 7, 550, 'TV', 'LG', 5, 'TV_7.png'),
(11, 'Vizio 4K UHD', '4K UHD Smart TV with Dolby Vision, black color', 10, 530, 'TV', 'Vizio', 5, 'TV_8.png'),
(12, 'Sony X1 4K HDR', '4K UHD Smart TV with X1 HDR Processor, black color', 6, 700, 'TV', 'Sony', 5, 'TV_10.png'),
(20, 'Samsung Family Hub', 'Samsung Family Hub 4-Door Refrigerator with Smart Screen', 4, 3500, 'RF', 'Samsung', 5, 'refrigerator-5.png'),
(21, 'LG InstaView Door-in-Door', 'LG InstaView Door-in-Door French Door Refrigerator', 5, 3300, 'RF', 'LG', 3, 'refrigerator-4.png'),
(22, 'LG InstaView Smart Refrigerator', 'LG InstaView French Door Refrigerator with Smart Features', 6, 3100, 'RF', 'LG', 4, 'refrigerator-5.png'),
(23, 'Samsung Bespoke Flex', 'Samsung Bespoke Flex 4-Door Refrigerator with Customizable Panels', 8, 4000, 'RF', 'Samsung', 4, 'refrigerator-4.png'),
(24, 'LG Smart ThinQ Refrigerator', 'LG Smart ThinQ French Door Refrigerator with Wi-Fi Connectivity', 9, 3200, 'RF', 'LG', 3, 'refrigerator-4.png'),
(25, 'Samsung FlexZone', 'Samsung FlexZone Refrigerator with Convertible Freezer', 7, 2900, 'RF', 'Samsung', 5, 'refrigerator-5.png'),
(26, 'LG Door-in-Door French Refrigerator', 'LG Door-in-Door French Refrigerator with InstaView Glass', 6, 3000, 'RF', 'LG', 3, 'refrigerator-4.png'),
(27, 'Samsung Showcase Refrigerator', 'Samsung Showcase Refrigerator with Energy Saving Mode', 4, 3500, 'RF', 'Samsung', 2, 'refrigerator-5.png'),
(30, 'Samsung WW90T554DAW', '9kg capacity, AI control, EcoBubble tech, black', 10, 700, 'WS', 'Samsung', 4, 'wash_1.webp'),
(31, 'LG F4V909BTSE', '9kg capacity, AI DD technology, TurboWash 360', 15, 650, 'WS', 'LG', 5, 'wash_2.png'),
(32, 'Bosch Serie 6 WAU28PH9GB', '9kg capacity, Home Connect, EcoSilence Drive', 12, 800, 'WS', 'Bosch', 4, 'wash_3.png'),
(33, 'Haier HW90-B14959U1', '9kg capacity, Direct Motion Motor, i-Refresh', 10, 650, 'WS', 'Haier', 5, 'wash_7.png'),
(34, 'Bosch Serie 6 WAU28PH9GB', '9kg capacity, Home Connect, EcoSilence Drive', 12, 780, 'WS', 'Bosch', 2, 'wash_5.png'),
(35, 'Indesit BWE 91485X K UK N', '9kg capacity, Push&Go, Rapid 30\' program', 14, 450, 'WS', 'Indesit', 4, 'wash_6.png'),
(36, 'LG WCG 660', '9kg capacity, TwinDos, CapDosing, black color', 7, 1000, 'WS', 'LG', 4, 'wash_4.png'),
(37, 'AEG L9FEC966R', '9kg capacity, ProSteam, ProSense technology', 9, 870, 'WS', 'AEG', 3, 'wash_8.png'),
(38, 'Candy Rapido RO1696DWMCE', '9kg capacity, WiFi connectivity, Rapid\'Ó 59min', 20, 550, 'WS', 'Candy', 4, 'wash_9.png'),
(39, 'Hotpoint ActiveCare NM11 945 BC A UK N', '9kg capacity, Steam Hygiene, Anti-Stain tech', 9, 480, 'WS', 'Hotpoint', 3, 'wash_10.png'),
(40, 'Indesit BWE 91485X W UK N', '9kg capacity, Push&Go, Rapid 30\' program', 14, 430, 'WS', 'Indesit', 2, 'wash_11.png'),
(41, 'Haier HW90-B14959U1', '9kg capacity, Direct Motion Motor, i-Refresh', 10, 640, 'WS', 'Haier', 1, 'wash_12.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` text COLLATE utf8mb4_general_ci NOT NULL,
  `pass` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `cart` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `email`, `pass`, `role`, `cart`) VALUES
(21, 'soso', 'soso', 'soso', 'user', NULL),
(22, 's', 's', 's', 'user', '{\"1\": 20, \"4\": 3, \"23\": 30}'),
(23, 'Akdihanae1@gmail.com', 'Akdihanae1@gmail.com', 'hanae', 'user', NULL),
(24, 'Example', 'Example@gmail.com', 'MD5', 'user', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
