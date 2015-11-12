-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2015 at 05:16 AM
-- Server version: 5.6.23
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Art Supply Store`
--

-- --------------------------------------------------------

--
-- Table structure for table `composition`
--

CREATE TABLE IF NOT EXISTS `composition` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `composition`
--

INSERT INTO `composition` (`id`, `products_id`, `package_id`) VALUES
(1, 2, 1),
(2, 4, 1),
(3, 1, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 17, 1),
(9, 18, 1),
(10, 19, 1),
(11, 20, 1),
(12, 21, 1),
(13, 22, 1),
(14, 23, 1),
(15, 24, 1),
(16, 35, 1),
(17, 9, 2),
(18, 10, 2),
(19, 11, 2),
(20, 12, 2),
(21, 13, 2),
(22, 14, 2),
(23, 15, 2),
(24, 16, 2),
(25, 17, 2),
(26, 18, 2),
(27, 9, 2),
(28, 10, 2),
(29, 11, 2),
(30, 12, 2),
(31, 13, 2),
(32, 14, 2),
(33, 15, 2),
(34, 16, 2),
(35, 17, 2),
(36, 18, 2),
(37, 9, 2),
(38, 10, 2),
(39, 11, 2),
(40, 12, 2),
(41, 13, 2),
(42, 14, 2),
(43, 15, 2),
(44, 16, 2),
(45, 17, 2),
(46, 18, 2),
(47, 9, 2),
(48, 10, 2),
(49, 11, 2),
(50, 12, 2),
(51, 13, 2),
(52, 14, 2),
(53, 15, 2),
(54, 16, 2),
(55, 17, 2),
(56, 18, 2),
(57, 19, 2),
(58, 20, 2),
(59, 21, 2),
(60, 22, 2),
(61, 23, 2),
(62, 24, 2),
(63, 17, 3),
(64, 18, 3),
(65, 19, 3),
(66, 20, 3),
(67, 21, 3),
(68, 22, 3),
(69, 23, 3),
(70, 26, 3),
(71, 25, 3),
(72, 27, 3),
(73, 28, 3),
(74, 29, 3),
(75, 30, 3),
(76, 31, 3),
(77, 32, 3),
(78, 25, 4),
(79, 42, 4),
(80, 44, 4),
(81, 49, 4),
(82, 50, 4),
(83, 43, 4),
(84, 25, 5),
(85, 45, 5),
(86, 46, 5),
(87, 47, 5),
(88, 48, 5),
(89, 49, 5),
(90, 50, 5),
(91, 36, 6),
(92, 37, 6),
(93, 38, 6),
(94, 39, 6),
(95, 40, 6),
(96, 41, 6),
(97, 1, 6),
(98, 26, 6),
(99, 1, 7),
(100, 25, 7),
(101, 33, 7),
(102, 34, 7),
(103, 35, 7),
(104, 50, 7),
(105, 49, 7);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE IF NOT EXISTS `package` (
  `package_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `name`) VALUES
(1, 'Acrylic style'),
(2, 'Oil style'),
(3, 'Watercolour style'),
(4, 'Charcoal style'),
(5, 'Drawing style'),
(6, 'Clay style'),
(7, 'Randoms');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL,
  `Image` varchar(290) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `Stock` int(11) NOT NULL,
  `supplier_id` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `Image`, `name`, `description`, `category`, `price`, `Stock`, `supplier_id`) VALUES
(1, 'http://www.homegardenplanstore.com/2011/11/woodworking-guide-wood-glue.html', 'woodglue', '150ml', 'glue', 'R50', 50, '1'),
(2, 'http://www.theworks.co.uk/p/paint/200ml-acrylic-paint---white/5052089003187', 'white acrylic paint', '120ml', 'acrylicpaint', 'R8', 50, '1'),
(4, 'http://www.theworks.co.uk/p/paint/200ml-acrylic-paint---black/5052089003170', 'black acrylic paint', '120ml', 'acrylicpaint', 'R8', 50, '1'),
(5, '', 'yellow acrylic paint', '120ml', 'acrylicpaint', 'R8', 50, '1'),
(6, '', 'red acrylic paint', '120ml', 'acrylicpaint', 'R8', 50, '1'),
(7, '', 'green acrylic paint', '120ml', 'acrylicpaint', 'R8', 50, '1'),
(8, '', 'blue acrylic paint', '120ml', 'acrylicpaint', 'R8', 50, '1'),
(9, '', 'caydiemyellow oil paint', '37ml', 'oilpaint', 'R12', 50, '2'),
(10, '', 'cobolyblue oil paint', '37ml', 'oilpaint', 'R12', 50, '2'),
(11, '', 'sapgreen oil paint', '37ml', 'oilpaint', 'R12', 50, '2'),
(12, '', 'cadmiunmorange oil paint', '37ml', 'oilpaint', 'R12', 50, '2'),
(13, '', 'cadmiunmred oil paint', '37ml', 'oilpaint', 'R12', 50, '2'),
(14, '', 'white oil paint', '37ml', 'oilpaint', 'R12', 50, '2'),
(15, '', 'black oil paint', '37ml', 'oilpaint', 'R12', 50, '2'),
(16, '', 'Artisan', '250ml', 'gloss varnish', 'R90', 50, '3'),
(17, '', 'Eclipse Round', 'Sable Hair Brushes', 'paintbrushes', 'R10', 50, '3'),
(18, '', 'Eclipse Flat', 'Sable Hair Brushes', 'paintbrushes', 'R13', 50, '3'),
(19, '', 'Eclipse Thick Bright', 'Sable Hair Brushes', 'paintbrushest', 'R8', 50, '3'),
(20, '', 'Eclipse Filbert', 'Sable Hair Brushes', 'paintbrushest', 'R10', 50, '3'),
(21, '', 'Eclipse Double Thick Filbert', 'Sable Hair Brushes', 'paintbrushes', 'R13', 50, '3'),
(22, '', 'Eclipse Glazing', 'Sable Hair Brushes', 'paintbrushes', 'R9', 50, '3'),
(23, '', 'Eclipse Thick Fan', 'Sable Hair Brushes', 'paintbrushes', 'R12', 50, '3'),
(24, '', 'canvas', 'A3', 'materials', 'R124', 20, '4'),
(25, '', 'paper', 'A4', 'materials', 'R15', 30, '4'),
(26, '', '3panels', 'A2', 'materials', 'R300', 10, '4'),
(27, '', 'white watercolour paint', '120ml', 'watercolour paint', 'R10', 50, '4'),
(28, '', 'black watercolour paint', '120ml', 'awatercolour paint', 'R10', 50, '4'),
(29, '', 'yellow watercolour paint', '120ml', 'watercolour paint', 'R10', 50, '4'),
(30, '', 'red watercolour paint', '120ml', 'watercolour paint', 'R10', 50, '4'),
(31, '', 'green watercolour paint', '120ml', 'watercolour paintt', 'R10', 50, '4'),
(32, '', 'blue watercolour paint', '120ml', 'watercolour paint', 'R10', 50, '4'),
(33, '', 'Blue Ink', '250ml', 'Ink', 'R25', 25, '5'),
(34, '', 'Ink pen', 'medium', 'Inkpen', 'R30', 25, '5'),
(35, '', 'Palette', 'large', 'palette', 'R12', 30, '7'),
(36, '', 'Air dry clay', '10g', 'clay', 'R120', 30, '10'),
(37, '', 'modelling clay', '15g', 'clay', 'R200', 30, '10'),
(38, '', 'cutter', '7inch', 'sculptingtool', 'R30', 20, '10'),
(39, '', 'Spatula', '7inch', 'sculptingtool', 'R30', 20, '10'),
(40, '', 'Smooth tool', '7inch', 'sculptingtool', 'R30', 20, '10'),
(41, '', 'Detailing tool', '7inch', 'sculptingtool', 'R30', 20, '10'),
(42, '', 'Charcoal Pencil', 'willow charcoal', 'drawingmaterials', 'R35', 40, '10'),
(43, '', 'Charcoal Stick', 'willow charcoal', 'drawingmaterials', 'R35', 40, '10'),
(44, '', 'Charcoal Powder', '5g willow charcoal', 'drawingmaterials', 'R35', 40, '10'),
(45, '', 'HB Pencil', 'HB', 'drawingmaterials', 'R25', 30, '9'),
(46, '', '2B Pencil', '2B', 'drawingmaterials', 'R25', 30, '9'),
(47, '', '4B Pencil', '4B', 'drawingmaterials', 'R25', 30, '9'),
(48, '', '6B Pencil', '6B', 'drawingmaterials', 'R25', 30, '9'),
(49, '', 'Rubber', 'rubber', 'drawingmaterials', 'R30', 40, '9'),
(50, '', 'Fixitives', 'Fixitives', 'drawingmaterials', 'R40', 30, '6');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(11) NOT NULL,
  `credit` varchar(16) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `credit`, `item`, `quantity`, `date`) VALUES
(1, '11334477', 'woodglue', '5', '11 January 2015'),
(2, '11225544', 'ink', '4', '5 Jan'),
(3, '1234567890111123', 'woodglue', '2', '12 jan 2014'),
(4, '1234567890111123', 'woodglue', '3', '12 jan 2014'),
(5, '1234567890111123', 'white acrylic paint', '2', '12 jan 2014'),
(6, '1234567890111123', 'cobolyblue oil paint', '4', '12 jan 2014'),
(7, '1234567890111123', 'green acrylic paint', '3', '34'),
(8, '1234567890111123', 'black acrylic paint', '2', '12 jan 2014'),
(9, '1234567890111123', 'black acrylic paint', '2', '12 jan 2014'),
(10, '1234567890111123', 'black acrylic paint', '2', '12 jan 2014'),
(11, '1234567890111123', 'caydiemyellow oil paint', '3', '12 jan 2014'),
(12, '1234567890111123', 'caydiemyellow oil paint', '3', '12 jan 2014');

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE IF NOT EXISTS `Supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `products` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`id`, `name`, `address`, `products`) VALUES
(1, 'Rexart', '4415 Jackson Street \r\nMiddleburg, FL 32068', NULL),
(2, 'Misterart', '807 Deerfield Drive \r\nOzone Park, PTA 11417', NULL),
(3, 'Winsor', '170 Magnolia Avenue \r\nCumming, GA 30040', NULL),
(4, 'Newton', '4962 Park Place \r\nAlexandria, JHB 22304', NULL),
(5, 'Jeryart', '9692 Smith Street \r\nRockville, JHB 20850', NULL),
(6, 'Alibaba', '457 Brandywine Drive \r\nSouthampton, PTA 18966', NULL),
(7, 'Nolyart', '912 Pearl Street \r\nGroton, CT 06340', NULL),
(8, 'Inks', '699 Spring Street \r\nWestmont, JHB 60559', NULL),
(9, 'Globalart', '551 Maple Street \r\nSanford, CT 27330', NULL),
(10, 'Featherwork', '719 Adams Avenue \r\nHixson, PTA 37343', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `composition`
--
ALTER TABLE `composition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Supplier`
--
ALTER TABLE `Supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
