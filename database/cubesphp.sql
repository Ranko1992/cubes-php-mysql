-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2017 at 04:35 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

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
  `title` char(50) NOT NULL,
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
(9, 'Sony', ''),
(16, 'Siemens', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` char(20) NOT NULL,
  `description` longtext NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `group_id`) VALUES
(1, 'Mobilni Telefon', '', 1),
(2, 'Televizor', '', 2),
(3, 'Frizider', '', 2),
(4, 'Ves Masina', '', 2),
(5, 'Sporet', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `title`) VALUES
(1, 'Mobilni uredjaji'),
(2, 'Bela tehnika'),
(3, 'Racunari'),
(4, 'Frizideri'),
(5, 'Ugradne ploce');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `section_id` int(11) NOT NULL,
  `description` text,
  `photo_filename` int(255) DEFAULT NULL,
  `content` longtext,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--
INSERT INTO `news` (`id`, `title`, `section_id`, `description`, `photo_filename`, `content`, `created_at`) VALUES
(1, 'Vucic otvorio dusu za ALO: JA ZELIM SLOBODNU SRBIJU, A ONI HOCE SLUGE!', 1, 'Organi SNS-a u subotu donose odluku o gradskim i parlamentarnim izborima.\r\nKad strani ambasadori odlucuju i o dnevnom redu Vlade, sve je besmisleno.\r\nNeki meni bliski ljudi prvi ce krenuti da se obracunaju sa mnom i mojom porodicom.\r\nVelike sile stite svoje a ne srpske interese', 1, '', '2017-11-11 04:23:29'),
(2, 'Vlasi provocira usred Beograda: Nezavisnost KiM je nepovratna!', 1, 'Azem Vlasi, bivsi visoki funkcioner SFRJ, izjavio je juce na medjunarodnom skupu \"Beogradski strateski dijalog\" da je nezavisnos Kosova neopoziva i nepovratna, ali da je potrebno i korisno normalizovati odnose, pre svega, kako je rekao, na dobrobit Srba koji zive na Kosovu.', 0, '', '2017-11-11 12:20:00'),
(3, 'Aleksandra Prijovic potvrdila: Operisala sam nos jer nisam mogla da disem', 2, 'Moram vam priznati da sam imala vrlo veliki problem sa disanjem, tako da je bilo neminovno da dodje do operacije. Jedna nozdrva mi je bila potpuno zapusena i prosto sam morala da odem i resim taj problem- rekla je Aleksandra i time potvrdila pisanja da je u novembru ove godine korigovala svoj nos i resila problem sa devijacijom nosa', 0, '', '2017-11-11 15:16:00'),
(4, 'Rasta otkriva: Menjam pelene kao profesionalac!', 2, 'Reper Stefan Djuric Rasta resio je da otvori dusu i prizna da mu je veoma tesko sto je u medijima okarakterisan kao los muz i otac.Nakon spekulacija da ga je Ana Nikolic ostavila zbog sve cesceg odsustvovanja od kuce, reper je ispricao da on retko izlazi u provod, ali da se i to desava.', 0, '', '2017-11-12 12:26:12'),
(5, 'ORLOVI dobili zlatna krila!', 3, 'Cak sedmorica decaka koji su osvojili \"Mundijalito\" uvrsteni su u A tim, a petorica su vec igrala protiv Kine.', 5, '', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `polaznici`
--

CREATE TABLE `polaznici` (
  `id` int(11) NOT NULL,
  `ime` char(50) CHARACTER SET utf8mb4 NOT NULL,
  `prezime` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polaznici`
--

INSERT INTO `polaznici` (`id`, `ime`, `prezime`) VALUES
(1, 'Aleksandar', 'Dimic');

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
  `photo_filename` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `title`, `description`, `specification`, `price`, `quantity`, `category_id`, `on_sale`, `discount`, `photo_filename`, `created_at`) VALUES
(7, 1, 'Apple iPhone7 32GB', 'Mobilni Telefon Apple iPhone7 32GB', '', '98546.00', 23, 1, 0, '0.00', '7_host.png', '2016-06-12 12:53:00'),
(8, 1, 'Apple iPhone7 64GB', 'Mobilni Telefon Apple iPhone7 64GB', '', '112345.12', 2, 1, 0, '0.00', '', '2016-12-13 13:53:00'),
(9, 1, 'Apple iPhone7 32GB Gold', 'Mobilni Telefon Apple iPhone7 32GB Gold', '', '101234.23', 1, 1, 0, '0.00', '', '2016-03-14 14:53:00'),
(10, 1, 'Apple iPhone8 32GB', 'Mobilni Telefon Apple iPhone8 32GB', '', '127880.39', 12, 1, 1, '15.00', '', '2017-04-15 15:53:00'),
(11, 1, 'Apple iPhone8 64GB', 'Mobilni Telefon Apple iPhone8 64GB', '', '151339.32', 2, 1, 0, '0.00', '', '2017-06-16 16:53:00'),
(12, 1, 'Apple iPhone8 32GB Gold', 'Mobilni Telefon Apple iPhone8 32GB Gold', '', '161323.37', 0, 1, 0, '0.00', '', '2017-08-17 17:53:00'),
(13, 8, 'Samsung Galaxy S8', 'Mobilni Telefon Samsung Galaxy S8', '', '99876.34', 12, 1, 0, '0.00', '', '2017-06-18 18:53:00'),
(14, 8, 'Samsung Galaxy S7', 'Mobilni Telefon Samsung Galaxy S7', '', '69887.34', 3, 1, 0, '0.00', '', '2016-07-19 14:53:00'),
(15, 8, 'Samsung Galaxy S6', 'Mobilni Telefon Samsung Galaxy S6', '', '55763.34', 3, 1, 0, '0.00', '', '2015-02-20 11:53:00'),
(16, 6, 'Huawei P10', 'Mobilni Telefon Huawei P10', '', '67898.77', 6, 1, 0, '0.00', '', '2016-11-21 12:53:00'),
(17, 6, 'Huawei P9', 'Mobilni Telefon Huawei P9', '', '65632.33', 12, 1, 0, '0.00', '', '2015-03-22 12:53:00'),
(18, 5, 'HTC Desire 820', 'Mobilni Telefon HTC Desire 820', '', '32456.76', 3, 1, 0, '0.00', '', '2014-08-23 12:53:00'),
(19, 5, 'HTC One A9', 'Mobilni Telefon HTC One A9', '', '38271.12', 11, 1, 1, '20.00', '', '2016-05-24 12:53:00'),
(20, 5, 'HTC U12', 'Mobilni Telefon HTC U12', '', '55736.43', 7, 1, 0, '0.00', '', '2017-06-25 12:53:00'),
(21, 8, 'Samsung UE-32J4000AWXXH', 'Televizor Samsung UE-32J4000AWXXH', '', '32985.76', 0, 2, 0, '0.00', '', '2015-12-26 12:53:00'),
(22, 8, 'Samsung UE-32K4102AKXXH', 'Televizor Samsung UE-32K4102AKXXH', '', '34323.32', 5, 2, 0, '0.00', '', '2016-11-27 12:53:00'),
(23, 8, 'Samsung', 'Televizor Samsung', '', '11212.12', 0, 2, 0, '0.00', '', '2017-09-28 12:53:00'),
(24, 7, 'LG 32LH510B', 'Televizor LG 32LH510B', '', '14544.32', 6, 2, 0, '0.00', '', '2017-01-29 12:53:00'),
(25, 7, 'LG 32LH510U', 'Televizor LG 32LH510U', '', '12345.54', 8, 2, 0, '0.00', '', '2016-08-30 12:53:00'),
(26, 9, 'Sony KD 65XE9005BAEP', 'Televizor Sony KD 65XE9005BAEP', '', '89189.33', 12, 2, 1, '10.00', '', '2015-07-01 12:53:00'),
(27, 9, 'Sony LED LCD KDL 50W755CBAEP', 'Televizor Sony LED LCD KDL 50W755CBAEP', '', '72098.23', 2, 2, 0, '0.00', '', '2014-10-02 12:53:00'),
(28, 9, 'Sony 40WD650BAEP', 'Televizor Sony 40WD650BAEP', '', '56765.32', 12, 2, 0, '0.00', '', '2013-10-03 12:53:00'),
(29, 9, 'Sony TV KDL32WE615BAEP', 'Televizor Sony TV KDL32WE615BAEP', '', '32345.56', 4, 2, 0, '0.00', '', '2015-04-04 12:53:00'),
(30, 2, 'Beko RCS A300K 20W', 'Frizider Beko RCS A300K 20W', '', '29199.99', 2, 3, 1, '5.00', '', '2013-07-05 12:53:00'),
(31, 2, 'Beko DSA 28020', 'Frizider Beko DSA 28020', '', '27654.23', 1, 3, 0, '0.00', '', '2017-08-06 12:53:00'),
(33, 4, 'Gorenje RF 4120 AW', 'Frizider Gorenje RF 4120 AW', '', '21987.72', 3, 3, 0, '0.00', '', '2012-03-08 12:53:00'),
(34, 3, 'Bosh KGN 36NL30', 'Frizider Bosh KGN 36NL30', '', '54320.43', 1, 3, 0, '0.00', '', '2013-07-09 12:53:00'),
(39, 1, 'iPhone6 S', 'iPhone6 S', '', '39999.99', 12, 1, 0, '0.00', '', '2016-03-21 18:00:00'),
(40, 1, 'iPhone6 SE', 'iPhone6 SE', '', '37999.99', 11, 1, 0, '0.00', '', '2016-03-21 18:00:00'),
(41, 1, 'iPhone5', 'iPhone5', '', '32999.99', 10, 1, 0, '0.00', '', '2016-03-21 18:00:00'),
(42, NULL, 'Masina za sivenje', 'Masina za sivenje', 'Masina za sivenje', '1200.00', 1, NULL, 0, '0.00', '', '2017-11-13 08:22:20'),
(43, NULL, 'Televizor 8X56P', 'Televizor 8X56P', NULL, '11800.00', 36, 2, 0, '0.00', '', '2017-11-20 07:19:15'),
(44, 1, 'iPod Nano', 'iPod Nano', NULL, '9800.00', 3, NULL, 0, '0.00', '', '2017-11-14 05:12:12'),
(45, 2, 'Pegla 1200W', 'Pegla 1200W', NULL, '3200.00', 1, 99, 0, '0.00', '', '2017-11-14 08:19:18'),
(46, 16, 'Telefon', '', '', '620.00', 0, 6, 0, '0.00', '', '2017-11-19 14:23:30'),
(47, 2, 'Fen za kosu 2000W', '', '', '2500.00', 0, 6, 0, '0.00', '47_11745597_10206905358256349_320526801373108439_n.jpg', '2017-11-19 14:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`) VALUES
(1, 39, 1),
(2, 39, 2),
(3, 39, 4),
(4, 22, 2),
(5, 22, 4),
(6, 31, 5),
(7, 11, 2),
(8, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`) VALUES
(1, 'politika'),
(2, 'zabava'),
(3, 'sport'),
(4, 'drustvo');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`) VALUES
(1, 'Najprodavanije'),
(2, 'Ekstra kvalitet'),
(3, 'Pobednik sajma tehnike'),
(4, 'Garancija 2 godine'),
(5, 'Garancija 5 godina'),
(6, 'Popust 30%'),
(7, 'Totalna rasprodaja');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` char(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `first_name`, `last_name`, `created_at`) VALUES
(1, 'ranko.andric', 'd5908e4aa76277878259ed57c19c5f78', 'andere395@gmail.com', 'Ranko', 'Andric', '2017-11-17 14:00:29'),
(2, 'skola', 'ee86917fd8c98463ce78493811bf6b95', '', '', '', '2017-11-17 15:23:14');

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
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polaznici`
--
ALTER TABLE `polaznici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `polaznici`
--
ALTER TABLE `polaznici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
