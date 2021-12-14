-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 04:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Grains', ''),
(6, 'Vegetables', ''),
(7, 'Fruits', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 6, 'Broccoli', '<p>Edible Green Plant</p>\r\n', 'broccoli', 80, 'broccoli.png', '0000-00-00', 0),
(31, 7, 'Apples', '<p>1 Kilogram of Apple (Washington Apple)</p>\r\n', 'apples', 80, 'apples.jpg', '0000-00-00', 0),
(32, 6, 'Carrots', '<p>It is a root vegetable and it is delicious</p>\r\n', 'carrots', 45, 'carrots.jpg', '0000-00-00', 0),
(33, 6, 'Eggplant', '<p>Fresh</p>\r\n', 'eggplant', 70, 'eggplant.jpg', '0000-00-00', 0),
(34, 6, 'Tomato', '<p>Organic</p>\r\n', 'tomato', 50, 'tomato.jpg', '0000-00-00', 0),
(35, 5, 'Grains', '<p>Sinandomeng rice</p>\r\n', 'grains', 60, 'grains.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@gmail.com', '$2y$10$u1DsNsc.b1/fx7MhuNTqVujFnWOOXpc1qzJVl6VnttsQVfncYdhCi', 1, 'buy-ANI-han', 'Admin', '', '', 'bg.png', 1, '', '', '2018-05-01'),
(13, 'kltdgzmn@gmail.com', '$2y$10$mBkvAbnkLslLlJbPElYrfOiJQiep5HaIWdUj.4djnoGfmoiwr5jBW', 0, 'Khyle', 'De Guzman', 'Imus, Cavite', '09267349642', 'buyer.png', 1, '', '', '2021-12-12'),
(14, 'bermoydevy6@gmail.com', '$2y$10$Oou.dDHWFYL1xjAq/YhsoOtbTIhpxjp5dliMRI5NvKiCyVZeVwlDS', 0, 'Devy', 'Bermoy', 'Sta Ana Manila', '6309298401678', 'devy.png', 1, '', '', '2021-12-12'),
(15, 'jyrillelomat@gmail.com', '$2y$10$NCCb0qpZi/Y0gSka//HVneX.a42NV81vyMZXM77vzaXz/ljxMGOVC', 0, 'Jyrille', 'Lomat', 'Ilas Compound, Imus City, Cavite', '+6309267349642', 'mark.png', 1, '', '', '2021-12-12'),
(16, 'markghub@gmail.com', '$2y$10$Xu8fk/wU03Cs8W3tVaPMMuWlnr/w2fQagxPh/TRtfkioNbzenAM7m', 0, 'Mark', 'Hubilla', 'Mandaluyong', '09347325745', 'lau.png', 1, '', '', '2021-12-12'),
(17, 'aimileey1123@gmail.com', '$2y$10$4HtfYcxps7KAXDMQKeyIe.gtbrxL4LkwMkjof5znaLXmKSIKBaJQy', 0, 'Aimily', 'Policarpio', 'Nueva Ecija', '+6309176801107', 'aim.png', 1, '', '', '2021-12-12'),
(18, 'crazychristine18@gmail.com', '$2y$10$v7C3x.HNa75YVCf8ULV2m.xopJgRLt8.5qNkVGq6Stoj4.y4JYv1K', 0, 'Oly', 'Angelica', 'marikina', '+6309399086317', 'oly.png', 1, '', '', '2021-12-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
