-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2024 at 04:11 PM
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
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'FEIN', 'feinadmin');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `heading1` varchar(255) NOT NULL,
  `heading2` varchar(255) NOT NULL,
  `btn_txt` varchar(255) DEFAULT NULL,
  `btn_link` varchar(55) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `heading1`, `heading2`, `btn_txt`, `btn_link`, `image`, `status`) VALUES
(1, 'woman\'s clothing', 'Starting  ₹299', 'Shop Now', 'categories.php?id=2', '909018377_Womens_clothings.jpg', 1),
(2, 'men\'s Clothing', 'Starting  ₹499', 'Shop Now', 'categories.php?id=1', '153600468_Mens_clothing.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'man\'s', 1),
(2, 'Women', 1),
(3, 'Kid\'s', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(4, 'deep', 'deep@gmail.com', '123456789', 'thank you', '2024-08-17 08:26:03'),
(5, 'granthik', 'granthik@gmail.com', '1122334455', 'it\'s good site for shopping', '2024-08-17 08:27:03'),
(6, 'Samay', 'Samay@gmail.com', '1234567890', 'it\'s created by me !', '2024-08-17 01:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `txnid` varchar(200) NOT NULL,
  `mihpayid` varchar(200) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `txnid`, `mihpayid`, `payu_status`, `added_on`) VALUES
(1, 1, 'Raiya', 'Rajkot', 360001, 'COD', 788, 'success', 5, '', '', '', '2024-10-05 08:04:45'),
(24, 1, 'Mavdi', 'Rajkot', 360001, 'COD', 2125, 'success', 2, '', '', '', '2024-10-13 03:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 11, 1, 549),
(2, 1, 4, 1, 499),
(3, 1, 2, 1, 299),
(4, 1, 8, 1, 749),
(5, 2, 11, 1, 549),
(6, 2, 4, 1, 499),
(7, 2, 2, 1, 299),
(8, 2, 8, 1, 749),
(9, 3, 5, 1, 499),
(10, 3, 4, 1, 499),
(11, 3, 1, 1, 299),
(12, 4, 13, 1, 549),
(13, 4, 12, 1, 239),
(14, 5, 3, 2, 549),
(15, 6, 3, 2, 549),
(16, 7, 6, 1, 599),
(17, 8, 6, 3, 599),
(18, 9, 4, 1, 499),
(19, 9, 2, 2, 299),
(20, 9, 7, 2, 749),
(21, 9, 3, 1, 549),
(22, 10, 5, 1, 499),
(23, 10, 1, 2, 299),
(24, 11, 12, 1, 239),
(25, 12, 11, 1, 549),
(26, 13, 12, 1, 239),
(27, 13, 13, 1, 549),
(28, 14, 13, 1, 549),
(29, 14, 12, 1, 239),
(30, 15, 12, 1, 239),
(31, 15, 7, 1, 749),
(32, 15, 6, 3, 599),
(33, 16, 29, 1, 759),
(34, 17, 29, 1, 759),
(35, 19, 6, 1, 599),
(36, 19, 5, 1, 499),
(37, 19, 4, 1, 499),
(38, 20, 29, 1, 759),
(39, 21, 29, 1, 759),
(40, 22, 29, 1, 759),
(41, 23, 12, 1, 239),
(42, 23, 13, 1, 549),
(43, 24, 13, 3, 549),
(44, 24, 12, 2, 239);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(2, 1, 'Grey Jeans', 666, 299, 48, '455698891_js_2.jpg', 'Men Regular Mid Rise Grey Jeans', '5 pockets mid rise Regular Fit jeans, has a zip fly with button closure, 2 curved pockets with rivets on the front, waistband with belt loops, 2 patch pockets at the back with a brand patch on the back waistband. Enhance Your Style Quotient With This Pair Of Jeans From Studio Nexx.', 0, 'Grey Jeans', '', '', 1),
(3, 1, 'boy-t-shirt', 799, 549, 62, '876532541_NB nicky boy-t-shirt.jpg', 'Men Typography Round Neck Cotton Blend Black T-Shirt', 'Type:  Round Neck,  \r\n    Sleeve:  3/4 Sleeve,  \r\n    Fit :  Regular,  \r\n    Fabric:  Cotton Blend,  \r\n    Pack of :  1,  \r\n    Style Code :  Triple VV-One,  \r\n    Neck Type:  Round Neck,\r\n    Ideal For:  Men,\r\n    Size : S,  \r\n    Pattern :  Typography,\r\n    Suitable For : Western Wear,  \r\n    Fabric Care : Regular Machine Wash, \r\n    Net Quantity : 1', 0, 'boy-t-shirt', '', '', 1),
(4, 1, 'casual black shirt', 749, 499, 48, '199457016_shirt_3.jpg', 'Men Regular Black shirt', 'Mid rise Relaxed Fit stretchable jeans from Studio Nexx, good quality cotton blend fabric , Perfect jeans for casuals & office wear & it can also blend to perfection on your special ocassions. they are comfortable all day long- a must have in your wardrobe for all seasons & will never go out of fashion This pair of jeans offers a contemporary appeal for a distinctive wardrobe addition.', 1, 'casual black shirt', '', '', 1),
(5, 1, 'casual sky-blue shirt', 749, 499, 50, '690173614_shirt_2.jpg', 'Men Regular Sky-Blue Shirt', 'Mid rise Relaxed Fit stretchable jeans from Studio Nexx, good quality cotton blend fabric , Perfect jeans for casuals & office wear & it can also blend to perfection on your special ocassions. they are comfortable all day long- a must have in your wardrobe for all seasons & will never go out of fashion This pair of jeans offers a contemporary appeal for a distinctive wardrobe addition.', 1, 'casual sky-blue shirt', '', '', 1),
(6, 1, 'casual black design shirt', 899, 599, 52, '440962145_s1_1.jpg', 'Men Regular black design shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque ipsum sed pharetra pellentesque. Nulla tristique, dolor et viverra vestibulum, urna dui finibus massa, vel dapibus ligula sapien eu velit. Sed sit amet semper quam. Nam convallis nunc eget quam porta, nec sodales ligula rutrum. Maecenas volutpat scelerisque facilisis. Maecenas consequat erat vitae mauris iaculis, sit amet bibendum nisl scelerisque. Fusce pellentesque laoreet est, eu porta nunc finibus id. Fusce egestas ante ac augue facilisis, vitae volutpat nunc commodo. Proin consectetur quam at venenatis eleifend. Duis vel libero luctus, iaculis libero congue, molestie tortor.', 1, 'casual black design shirt', '', '', 1),
(7, 2, 'Light-pink dress', 999, 749, 21, '945948429_k_1.jpg', 'Light-pink dress', 'Light-pink dress special for women', 0, 'Light-pink dress', '', '', 1),
(8, 2, 'golden-pink dress', 999, 749, 19, '680738583_k_3.jpg', 'golden-pink dress', 'golden-pink dress specialy for women', 0, 'golden-pink dress', '', '', 1),
(9, 2, 'blue-jeans for women', 799, 549, 48, '357149513_js_1.jpg', 'blue-jeans for women', 'blue-jeans for women', 0, 'blue-jeans for women', '', '', 1),
(10, 2, 'pink Jeans for women', 799, 549, 10, '973151024_js_3.jpg', 'blue-jeans for women', 'blue-jeans for women', 0, 'pink Jeans for women', '', '', 1),
(11, 2, 'white Jeans for women', 799, 549, 24, '971884353_js_4.jpg', 'white Jeans for women', 'white Jeans for women', 0, 'white Jeans for women', '', '', 1),
(12, 3, 'SmartRAHO', 999, 239, 10, '907112943_kc_1.jpg', 'Boys Casual T-shirt Shorts', 'only for 6-12 years childrens', 0, 'SmartRAHO', '', '', 1),
(13, 3, 'T-shirt Shorts', 999, 549, 18, '860610106_kc_2.jpg', 'Boys Casual T-shirt Shorts', 'only for 6-12 years children', 1, 'T-shirt Shorts', '', '', 1),
(29, 1, 'Black Jeans', 999, 759, 52, '169096549_js_1.jpg', 'Black jeans for man\'s', 'Black jeans for man\'s', 0, 'Black Jeans', 'Black Jeans for man\'s', 'jeans, black, man', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Deep', '000000', 'vachhanideep222@gmail.com', '7435943123', '2024-10-03 08:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(40, 5, 11, '2024-09-06 07:38:42'),
(41, 3, 13, '2024-09-06 07:39:18'),
(42, 3, 12, '2024-09-06 07:39:19'),
(43, 3, 11, '2024-09-06 07:39:21'),
(44, 3, 10, '2024-09-06 07:39:23'),
(47, 5, 5, '2024-09-06 08:36:26'),
(48, 3, 13, '2024-09-07 08:36:19'),
(49, 2, 13, '2024-09-28 08:42:45'),
(50, 2, 12, '2024-09-28 08:42:47'),
(51, 1, 29, '2024-10-05 08:44:16'),
(52, 1, 11, '2024-10-05 08:44:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
