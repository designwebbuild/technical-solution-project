-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 30, 2018 at 02:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `first_name`, `last_name`, `phone_number`) VALUES
(1, 'Yusuf', 'Todd', '020 910 0921'),
(2, 'Brandi', 'Rasmussen', '020 916 5878'),
(3, 'Toby', 'Fry', '020 910 7908'),
(4, 'Charis', 'Tomlinson', '020 9100476'),
(5, 'Trevor', 'O\"Neill', '020 914 2498'),
(6, 'Najma', 'Wells', '020 919 2714'),
(7, 'Kyran', 'Moody', '020 911 9492'),
(8, 'Prisha', 'Hawkins', '020 911 9141'),
(9, 'Annabella', 'Amin', '020 917 8545'),
(10, 'Nola', 'Naylor', '020 916 1779');

-- --------------------------------------------------------

--
-- Table structure for table `client_menu_order`
--

CREATE TABLE `client_menu_order` (
  `client_order_id` int(11) NOT NULL,
  `daily_menu_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_menu_order`
--

INSERT INTO `client_menu_order` (`client_order_id`, `daily_menu_id`, `quantity`) VALUES
(1, 3, 2),
(1, 3, 2),
(1, 11, 2),
(2, 4, 1),
(2, 12, 2),
(3, 5, 3),
(4, 4, 1),
(4, 9, 1),
(5, 6, 2),
(5, 11, 2),
(6, 1, 3),
(6, 2, 2),
(6, 7, 3),
(6, 8, 2),
(7, 1, 1),
(7, 8, 2),
(8, 3, 4),
(8, 10, 2),
(8, 9, 2),
(9, 3, 2),
(9, 10, 2),
(10, 1, 1),
(10, 2, 1),
(10, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `client_order`
--

CREATE TABLE `client_order` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `delivery_person_id` int(11) NOT NULL,
  `ordered_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimate_del_time` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_order`
--

INSERT INTO `client_order` (`id`, `client_id`, `delivery_address_id`, `delivery_person_id`, `ordered_on`, `delivered_on`, `order_status`, `estimate_del_time`) VALUES
(1, 1, 1, 1, '2018-12-01 09:25:00', '2018-12-01 09:42:00', 'Delivered', '15 min'),
(2, 2, 2, 2, '2018-12-01 10:05:00', '2018-12-01 10:20:00', 'Delivered', '20 min'),
(3, 3, 3, 3, '2018-12-01 12:10:00', '2018-12-01 12:29:00', 'Delivered', '20 min'),
(4, 4, 4, 4, '2018-12-02 15:00:00', '2018-12-02 15:12:00', 'Delivered', '15 min'),
(5, 5, 5, 1, '2018-12-02 16:25:00', '2018-12-02 16:38:00', 'Delivered', '16 min'),
(6, 6, 6, 2, '2018-12-02 20:00:00', '2018-12-02 20:20:00', 'Delivered', '20 min'),
(7, 7, 7, 3, '2018-12-03 09:35:00', '2018-12-03 09:50:00', 'Delivered', '20 min'),
(8, 8, 8, 4, '2018-12-03 21:55:00', '2018-12-03 22:15:00', 'Delivered', '20 min'),
(9, 9, 9, 1, '2018-12-03 11:30:00', '2018-12-03 11:45:00', 'Delivered', '18 min'),
(10, 10, 10, 2, '2018-12-03 09:50:00', '2018-12-03 10:13:00', 'Delivered', '20 min');

-- --------------------------------------------------------

--
-- Table structure for table `daily_menu_item`
--

CREATE TABLE `daily_menu_item` (
  `id` int(11) NOT NULL,
  `dish_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dish_course` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_menu_date` date NOT NULL,
  `dish_price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_menu_item`
--

INSERT INTO `daily_menu_item` (`id`, `dish_name`, `dish_course`, `daily_menu_date`, `dish_price`) VALUES
(1, 'Stilton and aioli salad', 'Main Course', '2018-12-01', '7.50'),
(2, 'Pastrami and crab salad', 'Main Course', '2018-12-01', '7.50'),
(3, 'Denjang and creme fraiche salad', 'Main Course', '2018-12-02', '7.50'),
(4, 'Basil and pigeon salad', 'Main Course', '2018-12-02', '7.50'),
(5, 'Ragu and rice salad', 'Main Course', '2018-12-03', '7.50'),
(6, 'Red cabbage and pheasant salad', 'Main Course', '2018-12-03', '7.50'),
(7, 'Cocoa and Cinnamon Strudel', 'Dessert', '2018-12-01', '7.50'),
(8, 'Gooseberry and Walnut Waffles', 'Dessert', '2018-12-01', '7.50'),
(9, 'Strawberry and Melon Pud', 'Dessert', '2018-12-02', '7.50'),
(10, 'Peach and Almond Cookies', 'Dessert', '2018-12-02', '7.50'),
(11, 'lueberry Buns', 'Dessert', '2018-12-03', '7.50'),
(12, 'Almond Toffee', 'Dessert', '2018-12-03', '7.50');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `street_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `client_id`, `street_name`, `street_number`, `post_code`) VALUES
(1, 1, 'Knox Banks', '53', '31400'),
(2, 2, 'Burn Heath', '19', '31400'),
(3, 3, 'Canning Causeway', '39', '31400'),
(4, 4, 'Thomson Banks', '42', '31400'),
(5, 5, 'Blandford Corner', '25', '31400'),
(6, 6, 'Burn Park', '111', '31400'),
(7, 7, 'Ledbury Terrace', '60', '31400'),
(8, 8, 'Burn Ridge', '37', '31400'),
(9, 9, 'Franklin Hill', '5', '31400'),
(10, 10, 'New Cartergate', '72', '31400');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`id`, `first_name`, `last_name`) VALUES
(1, 'Kaira', 'Gardner'),
(2, 'Ziggy', 'Farrell'),
(3, 'Hunter', 'Callahan'),
(4, 'Ollie', 'Stout'),
(5, 'Claire', 'Riddle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_menu_order`
--
ALTER TABLE `client_menu_order`
  ADD KEY `client_order_id` (`client_order_id`),
  ADD KEY `daily_menu_id` (`daily_menu_id`);

--
-- Indexes for table `client_order`
--
ALTER TABLE `client_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `delivery_address_id` (`delivery_address_id`),
  ADD KEY `delivery_person_id` (`delivery_person_id`);

--
-- Indexes for table `daily_menu_item`
--
ALTER TABLE `daily_menu_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_order`
--
ALTER TABLE `client_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `daily_menu_item`
--
ALTER TABLE `daily_menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_person`
--
ALTER TABLE `delivery_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_menu_order`
--
ALTER TABLE `client_menu_order`
  ADD CONSTRAINT `client_menu_order_ibfk_1` FOREIGN KEY (`client_order_id`) REFERENCES `client_order` (`id`),
  ADD CONSTRAINT `client_menu_order_ibfk_2` FOREIGN KEY (`daily_menu_id`) REFERENCES `daily_menu_item` (`id`);

--
-- Constraints for table `client_order`
--
ALTER TABLE `client_order`
  ADD CONSTRAINT `client_order_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `client_order_ibfk_2` FOREIGN KEY (`delivery_person_id`) REFERENCES `delivery_person` (`id`),
  ADD CONSTRAINT `client_order_ibfk_3` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_address` (`id`);

--
-- Constraints for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD CONSTRAINT `delivery_address_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
