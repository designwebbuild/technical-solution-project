-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2019 at 12:23 PM
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
-- Database: `project_express_food`
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
(2, 'Brandy', 'Rasmussen', '020 916 5878'),
(3, 'Toby', 'Fry', '020 910 7908'),
(4, 'Charis', 'Tomlinson', '020 910 0476'),
(5, 'Trevor', 'O\"neill', '020 9142498'),
(6, 'Najma', 'Wells', '020 919 2714'),
(7, 'Kyran', 'Moody', '020 911 9492'),
(8, 'Prisha', 'Hawkins', '020 911 9141'),
(9, 'Annabella', 'Amin', '020 917 8545'),
(10, 'Nola', 'Naylor', '020 916 1779');

-- --------------------------------------------------------

--
-- Table structure for table `client_order`
--

CREATE TABLE `client_order` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `main_course_id` int(11) DEFAULT NULL,
  `dessert_id` int(11) DEFAULT NULL,
  `main_course_quantity` int(11) DEFAULT NULL,
  `dessert_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_order`
--

INSERT INTO `client_order` (`id`, `client_id`, `main_course_id`, `dessert_id`, `main_course_quantity`, `dessert_quantity`) VALUES
(1, 1, 1, 2, 1, 1),
(2, 2, 2, 1, 2, 2),
(3, 3, 2, NULL, 2, NULL),
(4, 4, 3, 4, 2, 1),
(5, 5, 6, 5, 1, 2),
(6, 6, 4, 3, 2, 1),
(7, 7, 2, NULL, 3, NULL),
(8, 8, 4, 3, 1, 1),
(9, 9, NULL, 5, NULL, 4),
(10, 10, 4, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` int(11) NOT NULL,
  `street_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `street_name`, `street_number`, `post_code`) VALUES
(1, 'Burn Park', '111', '31400'),
(2, 'Burn Heath', '19', '31400'),
(3, 'Blandford Corner', '25', '31400'),
(4, 'Burn Ridge', '37', '31400'),
(5, 'Canning Causeway', '39', '31400'),
(6, 'Thomson Banks', '42', '31400'),
(7, 'Franklin Hill', '5', '31400'),
(8, 'Knox Banks', '53', '31400'),
(9, 'Ledbury Terrace', '60', '31400'),
(10, 'New Cartergate', '72', '31400');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`id`, `first_name`, `last_name`, `phone_number`) VALUES
(1, 'Kaira', 'Gardner', '020 910 2857'),
(2, 'Ziggy', 'Farrell', '020 916 6492'),
(3, 'Hunter', 'Callahan', '020 491 3658'),
(4, 'Ollie', 'Stout', '020 936 8293'),
(5, 'Claire', 'Riddle', '020 838 7254');

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `id` int(11) NOT NULL,
  `dish_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_menu_date` date NOT NULL,
  `dish_price` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`id`, `dish_name`, `daily_menu_date`, `dish_price`) VALUES
(1, 'Cocoa and cinnamon Strudel', '2018-12-01', '7.50'),
(2, 'Gooseberry and Walnut Waffles', '2018-12-01', '6.50'),
(3, 'Strawberry and Melon Pud', '2018-12-02', '10.30'),
(4, 'Peach and Almond Cookies', '2018-12-02', '8.40'),
(5, 'Blueberry Buns', '2018-12-03', '9.50'),
(6, 'Almond Toffee', '2018-12-03', '5.40');

-- --------------------------------------------------------

--
-- Table structure for table `main_course`
--

CREATE TABLE `main_course` (
  `id` int(11) NOT NULL,
  `dish_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_menu_date` date NOT NULL,
  `dish_price` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_course`
--

INSERT INTO `main_course` (`id`, `dish_name`, `daily_menu_date`, `dish_price`) VALUES
(1, 'Stilton and aioli salad', '2018-12-01', '7.50'),
(2, 'Pastrami and crab salad', '2018-12-01', '12.30'),
(3, 'Denjang and creme fraiche salad', '2018-12-02', '11.45'),
(4, 'Basil and pigeon salad', '2018-12-02', '14.00'),
(5, 'Ragu and rice salad', '2018-12-03', '12.40'),
(6, 'Red cabbage and pheasant salad', '2018-12-03', '13.20');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `delivery_address_id` int(11) NOT NULL,
  `delivery_person_id` int(11) NOT NULL,
  `occurred_at` datetime NOT NULL,
  `estimate_del_time` datetime NOT NULL,
  `delivered_on` datetime NOT NULL,
  `order_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `client_id`, `delivery_address_id`, `delivery_person_id`, `occurred_at`, `estimate_del_time`, `delivered_on`, `order_status`) VALUES
(1, 1, 1, 5, '2018-12-01 10:20:13', '2018-12-01 10:40:00', '2018-12-01 10:38:15', 'Delivered'),
(2, 2, 2, 4, '2018-12-01 17:06:14', '2018-12-01 17:24:09', '2018-12-01 17:20:19', 'Delivered'),
(3, 3, 3, 3, '2018-12-01 07:30:19', '2018-12-01 07:50:00', '2018-12-01 07:44:19', 'Delivered'),
(4, 4, 4, 2, '2018-12-31 12:09:00', '2018-12-01 12:25:16', '2018-12-31 12:23:37', 'Delivered'),
(5, 5, 5, 1, '2018-12-02 08:21:17', '2018-12-02 08:41:00', '2018-12-02 08:37:21', 'Delivered'),
(6, 6, 6, 5, '2018-12-03 14:36:20', '2018-12-03 14:52:18', '2018-12-03 14:50:21', 'Delivered'),
(7, 7, 7, 4, '2018-12-03 18:24:18', '2018-12-03 18:41:18', '2018-12-03 18:38:16', 'Delivered'),
(8, 8, 8, 3, '2018-12-02 08:27:18', '2018-12-02 08:32:00', '2018-12-02 08:34:18', 'Delivered'),
(9, 9, 9, 2, '2018-12-01 15:22:24', '2018-12-01 15:41:25', '2018-12-01 15:40:24', 'Delivered'),
(10, 10, 10, 1, '2018-12-03 13:41:18', '2018-12-03 14:04:13', '2018-12-03 14:09:00', 'Delivered');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_order`
--
ALTER TABLE `client_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_course_id` (`main_course_id`),
  ADD KEY `dessert_id` (`dessert_id`),
  ADD KEY `order_history_id` (`client_id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_course`
--
ALTER TABLE `main_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `delivery_address_id` (`delivery_address_id`),
  ADD KEY `delivery_person_id` (`delivery_person_id`);

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
-- AUTO_INCREMENT for table `dessert`
--
ALTER TABLE `dessert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `main_course`
--
ALTER TABLE `main_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_order`
--
ALTER TABLE `client_order`
  ADD CONSTRAINT `client_order_ibfk_1` FOREIGN KEY (`main_course_id`) REFERENCES `main_course` (`id`),
  ADD CONSTRAINT `client_order_ibfk_2` FOREIGN KEY (`dessert_id`) REFERENCES `dessert` (`id`),
  ADD CONSTRAINT `client_order_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `order_history`
--
ALTER TABLE `order_history`
  ADD CONSTRAINT `order_history_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `order_history_ibfk_2` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_address` (`id`),
  ADD CONSTRAINT `order_history_ibfk_3` FOREIGN KEY (`delivery_person_id`) REFERENCES `delivery_person` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
