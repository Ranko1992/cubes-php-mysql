-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2017 at 04:13 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cubesphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `title` char(55) NOT NULL,
  `website_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `website_url`) VALUES
(1, 'Apple', ''),
(2, 'Beko', ''),
(3, 'Bosh', ''),
(4, 'Gorenje', ''),
(5, 'HTC', ''),
(6, 'Huawei', ''),
(7, 'LG', ''),
(8, 'Samsung', ''),
(9, 'Sony', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` char(20) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Mobilni Telefon', ''),
(2, 'Televizor', ''),
(3, 'Frizider', ''),
(4, 'Ves masina', ''),
(5, 'Sporet', '');

-- --------------------------------------------------------

--
-- Table structure for table `Polaznici`
--

CREATE TABLE `Polaznici` (
  `id` int(11) NOT NULL,
  `ime` char(50) NOT NULL,
  `prezime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Polaznici`
--

INSERT INTO `Polaznici` (`id`, `ime`, `prezime`) VALUES
(1, 'Ranko', 'Andric');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `specification` longtext,
  `price` decimal(10,2) NOT NULL,
  `quantity` float NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `on_sale` tinyint(1) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tags` char(50) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `title`, `description`, `specification`, `price`, `quantity`, `category_id`, `on_sale`, `discount`, `tags`, `created_at`) VALUES
(7, 1, 'Apple iPhone7 32GB', 'Mobilni Telefon Apple iPhone7 32GB', '', '98746.21', 23, 1, 0, '0.00', '', '2016-06-12 12:53:00'),
(8, 1, 'Apple iPhone7 64GB', 'Mobilni Telefon Apple iPhone7 64GB', '', '112545.12', 2, 1, 0, '0.00', '', '2016-12-13 13:53:00'),
(9, 1, 'Apple iPhone7 32GB Gold', 'Mobilni Telefon Apple iPhone7 32GB Gold', '', '101434.23', 1, 1, 0, '0.00', '', '2016-03-14 14:53:00'),
(10, 1, 'Apple iPhone8 32GB', 'Mobilni Telefon Apple iPhone8 32GB', '', '128060.39', 12, 1, 1, '15.00', '', '2017-04-15 15:53:00'),
(11, 1, 'Apple iPhone8 64GB', 'Mobilni Telefon Apple iPhone8 64GB', '', '151539.32', 2, 1, 0, '0.00', '', '2017-06-16 16:53:00'),
(12, 1, 'Apple iPhone8 32GB Gold', 'Mobilni Telefon Apple iPhone8 32GB Gold', '', '161523.37', 0, 1, 0, '0.00', '', '2017-08-17 17:53:00'),
(14, 8, 'Samsung Galaxy S7', 'Mobilni Telefon Samsung Galaxy S7', '', '70087.34', 3, 1, 0, '0.00', '', '2016-07-19 14:53:00'),
(15, 8, 'Samsung Galaxy S6', 'Mobilni Telefon Samsung Galaxy S6', '', '55963.34', 3, 1, 0, '0.00', '', '2015-02-20 11:53:00'),
(16, 6, 'Huawei P10', 'Mobilni Telefon Huawei P10', '', '68098.77', 6, 1, 0, '0.00', '', '2016-11-21 12:53:00'),
(17, 6, 'Huawei P9', 'Mobilni Telefon Huawei P9', '', '65832.33', 12, 1, 0, '0.00', '', '2015-03-22 12:53:00'),
(18, 5, 'HTC Desire 820', 'Mobilni Telefon HTC Desire 820', '', '32656.76', 3, 1, 0, '0.00', '', '2014-08-23 12:53:00'),
(19, 5, 'HTC One A9', 'Mobilni Telefon HTC One A9', '', '38451.12', 11, 1, 1, '20.00', '', '2016-05-24 12:53:00'),
(20, 5, 'HTC U12', 'Mobilni telefon HTC U12', '', '55936.43', 7, 1, 0, '0.00', '', '2017-06-25 12:53:00'),
(21, 8, 'Samsung UE-32J4000AWXXH', 'Televizor Samsung UE-32J4000AWXXH', '', '33185.76', 0, 2, 0, '0.00', '', '2015-12-26 12:53:00'),
(22, 8, 'Samsung UE-32K4102AKXXH', 'Televizor Samsung UE-32K4102AKXXH', '', '34523.32', 5, 2, 0, '0.00', '', '2016-11-27 12:53:00'),
(24, 7, 'LG 32LH510B', 'Televizor LG 32LH510B', '', '14744.32', 6, 2, 0, '0.00', '', '2017-01-29 12:53:00'),
(25, 7, 'LG 32LH510U', 'Televizor LG 32LH510U', '', '12545.54', 8, 2, 0, '0.00', '', '2016-08-30 12:53:00'),
(26, 9, 'Sony KD 65XE9005BAEP', 'Televizor Sony KD 65XE9005BAEP', '', '89389.33', 12, 2, 1, '10.00', '', '2015-07-01 12:53:00'),
(27, 9, 'Sony LED LCD KDL 50W755CBAEP', 'Televizor Sony LED LCD KDL 50W755CBAEP', '', '72298.23', 2, 2, 0, '0.00', '', '2014-10-02 12:53:00'),
(28, 9, 'Sony 40WD650BAEP', 'Televizor Sony 40WD650BAEP', '', '56965.32', 12, 2, 0, '0.00', '', '2013-10-03 12:53:00'),
(29, 9, 'Sony TV KDL32WE615BAEP', 'Televizor Sony TV KDL32WE615BAEP', '', '32545.56', 4, 2, 0, '0.00', '', '2015-04-04 12:53:00'),
(30, 2, 'Beko RCS A300K 20W', 'Frizider Beko RCS A300K 20W', '', '29399.99', 2, 3, 1, '5.00', '', '2013-07-05 12:53:00'),
(31, 2, 'Beko DSA 28020', 'Frizider Beko DSA 28020', '', '27854.23', 1, 3, 0, '0.00', '', '2017-08-06 12:53:00'),
(34, 3, 'Bosh KGN 36NL30', 'Frizider Bosh KGN 36NL30', '', '54520.43', 1, 3, 0, '0.00', '', '2013-07-09 12:53:00'),
(39, 1, 'iPhone6 S', 'iPhone6 S', '', '40199.99', 12, 1, 0, '0.00', NULL, '2016-03-21 18:00:00'),
(40, 1, 'iPhone6 SE', 'iPhone6 SE', '', '50199.99', 12, 1, 0, '0.00', NULL, '2016-03-21 18:00:00'),
(41, 1, 'iPhone3A', 'iPhone3A', '', '31439.99', 1, 1, 0, '0.00', NULL, '2016-10-30 11:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Polaznici`
--
ALTER TABLE `Polaznici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Polaznici`
--
ALTER TABLE `Polaznici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
