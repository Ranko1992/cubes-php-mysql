-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2017 at 02:22 PM
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
-- Table structure for table `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `specification` longtext,
  `price` decimal(10,2) NOT NULL,
  `quantity` float NOT NULL,
  `category` char(20) NOT NULL,
  `on_sale` tinyint(1) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tags` char(50) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`id`, `title`, `description`, `specification`, `price`, `quantity`, `category`, `on_sale`, `discount`, `tags`, `created_at`) VALUES
(1, 'iPhone 7', 'iPhone 7', NULL, '102000.65', 11, 'Mobilni Telefon', 1, '10.00', NULL, '2017-10-25 14:05:26'),
(2, 'Honor 8', 'Honor 8', NULL, '34500.00', 12, 'Mobilni Telefon', 1, '5.00', NULL, '2017-10-25 14:06:38'),
(3, 'Huawei p9', 'Huawei p9', NULL, '45900.00', 3, 'Mobilni Telefon', 2, '2.00', NULL, '2017-10-25 14:07:28'),
(4, 'Samsung J5', 'Samsung J5', NULL, '50000.00', 15, 'Mobilni Telefon', 3, '15.00', NULL, '2017-10-25 14:08:10'),
(5, 'Ves masina Gorenje 3523', 'Ves masina Gorenje 3523', NULL, '65300.00', 20, 'Bela Tehnika', 4, '20.00', NULL, '2017-10-25 14:10:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Polaznici`
--
ALTER TABLE `Polaznici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Polaznici`
--
ALTER TABLE `Polaznici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
