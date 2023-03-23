-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 05:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `is_seller` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `phone`, `is_seller`) VALUES
(1, 'Joshua Paulo Ynzon', 'admin@gmail.com', 'admin123', '09615740800', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(64) NOT NULL,
  `category_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'new-arrivals', 'Anime Designs'),
(2, 'hot-sales', 'Gaming Designs');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `address` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` enum('pending','processing','shipped','delivered') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` varchar(512) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(256) NOT NULL,
  `thumb_pic` varchar(256) NOT NULL,
  `thumb_pic2` varchar(256) NOT NULL,
  `thumb_pic3` varchar(256) NOT NULL,
  `big_pic` varchar(256) NOT NULL,
  `big_pic2` varchar(256) NOT NULL,
  `big_pic3` varchar(256) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `description`, `price`, `image`, `thumb_pic`, `thumb_pic2`, `thumb_pic3`, `big_pic`, `big_pic2`, `big_pic3`, `admin_id`, `category_id`) VALUES
(3, 'Eren Yeager Shirt', 'Attack on Titan Eren Yeager Black Shirt', '250.00', 'anime-1.jpg', 'thumb-1-1.png', 'thumb-1-2.png', 'thumb-1-3.png', 'big-pic-1-1.png', 'big-pic-1-2.png', 'big-pic-1-3.png', 1, 1),
(4, 'Gojo Satoru Shirt', 'Jujutsu Kaisen Gojo Satoru Black Shirt', '250.00', 'anime-2.jpg', 'thumb-2-1.png', 'thumb-2-2.png', 'thumb-2-3.png', 'big-pic-2-1.png', 'big-pic-2-2.png', 'big-pic-2-3.png', 1, 1),
(7, 'Naruto Shirt', 'Naruto Sage Mode White Shirt', '250.00', 'anime-3.jpg', 'thumb-3-1.png', 'thumb-3-2.png', 'thumb-3-3.png', 'big-pic-3-1.png', 'big-pic-3-2.png', 'big-pic-3-3.png', 1, 1),
(8, 'Luffy Hero Shirt', 'One Piece Luffy Hero Black Shirt', '250.00', 'anime-4.jpg', 'thumb-pic-4-1.png', 'thumb-pic-4-2.png', 'thumb-pic-4-3.png', 'big-pic-4-1.png', 'big-pic-4-2.png', 'big-pic-4-3.png', 1, 1),
(9, 'Phoenix Shirt', 'Valorant Phoenix Agent Shirt', '250.00', 'gaming-1.jpg', 'thumb-pic-5-1.png', 'thumb-pic-5-2.png', 'thumb-pic-5-3.png', 'big-pic-5-1.png', 'big-pic-5-2.png', 'big-pic-5-3.png', 1, 2),
(10, 'Sage Shirt', 'Valorant Sage Agent Shirt', '250.00', 'gaming-2.jpg', 'thumb-pic-6-1.png', 'thumb-pic-6-2.png', 'thumb-pic-6-3.png', 'big-pic-6-1.png', 'big-pic-6-2.png', 'big-pic-6-3.png', 1, 2),
(11, 'Gusion Shirt', 'Mobile Legends Gustion Shirt', '150.00', 'gaming-3.jpg', 'thumb-pic-7-1.png', 'thumb-pic-7-2.png', 'thumb-pic-7-3.png', 'big-pic-7-1.png', 'big-pic-7-2.png', 'big-pic-7-3.png', 1, 2),
(12, 'Vale Shirt', 'Mobile Legends Vale Shirt', '150.00', 'gaming-4.jpg', 'thumb-pic-8-1.png', 'thumb-pic-8-2.png', 'thumb-pic-8-3.png', 'big-pic-8-1.png', 'big-pic-8-2.png', 'big-pic-8-3.png', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
