-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2015 at 08:10 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `packersandmovers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookingdateandtime`
--

CREATE TABLE IF NOT EXISTS `bookingdateandtime` (
  `bookingId` int(11) NOT NULL AUTO_INCREMENT,
  `bookingTime` time NOT NULL,
  `bookingModifiedTime` time NOT NULL,
  `shipingDate` date NOT NULL,
  `deliveryDate` date NOT NULL,
  `packing` int(1) NOT NULL,
  `UnPacking` int(1) NOT NULL,
  `loading` int(1) NOT NULL,
  `unLoading` int(1) NOT NULL,
  `sharingType` tinyint(1) NOT NULL,
  `p/up` int(1) NOT NULL,
  `currentStatus` tinyint(4) NOT NULL,
  PRIMARY KEY (`bookingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `currentaddress`
--

CREATE TABLE IF NOT EXISTS `currentaddress` (
  `currentAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `currentAddress` varchar(25) NOT NULL,
  `floorNumber` int(1) NOT NULL,
  `elevator` tinyint(4) NOT NULL,
  `numberOfBedRooms` int(1) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`currentAddressId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `currentaddress`
--

INSERT INTO `currentaddress` (`currentAddressId`, `currentAddress`, `floorNumber`, `elevator`, `numberOfBedRooms`, `userId`) VALUES
(1, 'hys', 5, 0, 4, 10),
(2, 'hyd', 2, 0, 2, 11),
(3, 'hyd', 2, 0, 2, 11),
(4, 'nalgonda', 5, 0, 4, 11),
(5, 'hello', 5, 0, 4, 11),
(6, 'asdf', 5, 0, 4, 11),
(7, 'asdf', 5, 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currentitems`
--

CREATE TABLE IF NOT EXISTS `currentitems` (
  `roomTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `roomType` varchar(25) NOT NULL,
  `itemName` varchar(25) NOT NULL,
  `itemWeight` int(3) NOT NULL,
  `itemType` varchar(25) NOT NULL,
  `itemQuantity` int(3) NOT NULL,
  `description` varchar(55) NOT NULL,
  PRIMARY KEY (`roomTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `defaultitems`
--

CREATE TABLE IF NOT EXISTS `defaultitems` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `roomType` varchar(25) NOT NULL,
  `itemType` varchar(25) NOT NULL,
  `itemName` varchar(25) NOT NULL,
  `weight` int(3) NOT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `defaultitems`
--

INSERT INTO `defaultitems` (`itemId`, `roomType`, `itemType`, `itemName`, `weight`) VALUES
(1, 'living room', '', 'aquarium', 7),
(2, 'living room', '', 'Center-table', 10),
(3, 'living room', '', 'chandelier', 0),
(4, 'living room', '', 'computer', 5),
(5, 'living room', '', 'computer-table', 8),
(6, 'living room', '', 'foldable-chair', 3),
(7, 'living room', '', 'Plastic-chair', 2),
(8, 'living room', '', 'Non-foldable-chair', 4),
(9, 'living room', '', 'music-system', 6),
(10, 'living room', '', 'sofa-2-seater', 25),
(11, 'living room', '', 'sofa-1-seater', 15),
(12, 'living room', '', 'lcd-tv', 8),
(13, 'living room', '', 'inverter', 10),
(14, 'living room', '', 'home-theater', 6),
(15, 'living room', '', 'portable-tv', 12),
(16, 'living room', '', 'Printer', 5),
(17, 'living room', '', 'show-case-furniture', 30),
(18, 'living room', '', 'sofa-3-seater', 35),
(19, 'living room', '', 'study-table', 5),
(20, 'living room', '', 'television-cabinet', 25),
(21, 'living room', '', 'side-table', 10),
(22, 'bed room', '', 'air-cooler', 10),
(23, 'bed room', '', 'baby-bed', 12),
(24, 'bed room', '', 'double-cot-bed-boxed', 60),
(25, 'bed room', '', 'bed-mattress', 22),
(26, 'bed room', '', 'double-cot-bed-regular', 15),
(27, 'bed room', '', 'drawers-cabinet', 30),
(28, 'bed room', '', 'single-cot-bed-boxed', 50),
(29, 'bed room', '', 'single-cot-bed-regular', 28),
(30, 'bed room', '', 'split-ac', 10),
(31, 'bed room', '', 'wardrobe-steel', 30),
(32, 'bed room', '', 'wardrobe-wooden', 50),
(33, 'bed room', '', 'window-ac', 15),
(34, 'bed room', '', 'bunk-bed', 20),
(35, 'bed room', '', 'clothes-boxes', 5),
(36, 'bed room', '', 'diwan-bed', 16),
(37, 'bed room', '', 'dressing-table', 22),
(38, 'bed room', '', 'folding-bed', 20),
(39, 'bed room', '', 'picture-frame', 5),
(40, 'bed room', '', 'suitcase', 6),
(41, 'bed room', '', 'table-fan', 4),
(42, 'bed room', '', 'trolley-bag', 6);

-- --------------------------------------------------------

--
-- Table structure for table `destinationaddress`
--

CREATE TABLE IF NOT EXISTS `destinationaddress` (
  `destinationAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `destinationAddress` varchar(55) NOT NULL,
  `floorNumber` int(1) NOT NULL,
  `elevator` tinyint(4) NOT NULL,
  `numberOfBedRooms` int(1) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`destinationAddressId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `destinationaddress`
--

INSERT INTO `destinationaddress` (`destinationAddressId`, `destinationAddress`, `floorNumber`, `elevator`, `numberOfBedRooms`, `userId`) VALUES
(1, 'sec', 5, 0, 4, 10),
(2, 'ndl', 1, 0, 2, 11),
(3, 'ndl', 1, 0, 2, 11),
(4, 'nandyal', 5, 0, 4, 11),
(5, 'helloo', 5, 0, 4, 11),
(6, 'as', 5, 0, 4, 11),
(7, 'asdf', 5, 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedbackId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  PRIMARY KEY (`feedbackId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `keycodes`
--

CREATE TABLE IF NOT EXISTS `keycodes` (
  `keyCodesId` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(25) NOT NULL,
  `area` varchar(25) NOT NULL,
  `pinCode` int(1) NOT NULL,
  PRIMARY KEY (`keyCodesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `primaryContact` bigint(10) NOT NULL,
  `secondaryContact` bigint(10) NOT NULL,
  `points` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `userType` int(1) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `email`, `primaryContact`, `secondaryContact`, `points`, `status`, `userType`) VALUES
(1, '', 'sss@gmail.com', 9656569652, 0, 0, 0, 0),
(2, '', 'sss@gmail.com', 9656569652, 0, 0, 0, 0),
(3, '', 'sss@gmail.com', 9656569652, 0, 0, 0, 0),
(4, '', 'msd@gmail.com', 9656569658, 0, 0, 0, 0),
(5, '', 'msd@gmail.com', 9656569658, 0, 0, 0, 0),
(6, '', 'msd1@gmail.com', 9656569658, 0, 0, 0, 0),
(7, '', 'msd12@gmail.com', 9656569658, 0, 0, 0, 0),
(8, '', 'mssd12@gmail.com', 9656569658, 0, 0, 0, 0),
(9, '', 'mssd@gmail.com', 9656569658, 0, 0, 0, 0),
(10, '', 'mssd123@gmail.com', 9656569658, 0, 0, 0, 0),
(11, '', 'sudha@gmail.com', 9656569658, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vendordetailsandprice`
--

CREATE TABLE IF NOT EXISTS `vendordetailsandprice` (
  `vendorId` int(11) NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(25) NOT NULL,
  `price` int(6) NOT NULL,
  `sharingType` tinyint(4) NOT NULL,
  PRIMARY KEY (`vendorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
