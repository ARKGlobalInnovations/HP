-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2015 at 08:01 PM
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
  `shipingDate` date NOT NULL,
  `deliveryDate` date NOT NULL,
  `currentAddressId` int(11) NOT NULL,
  `destinationAddressId` int(11) NOT NULL,
  `currentItemsId` varchar(25) NOT NULL,
  `otherItemsId` varchar(25) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookingModifiedTime` time NOT NULL,
  `sharingType` tinyint(1) NOT NULL,
  `p/up` int(1) NOT NULL,
  `currentStatus` tinyint(4) NOT NULL,
  PRIMARY KEY (`bookingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bookingdateandtime`
--

INSERT INTO `bookingdateandtime` (`bookingId`, `bookingTime`, `shipingDate`, `deliveryDate`, `currentAddressId`, `destinationAddressId`, `currentItemsId`, `otherItemsId`, `userId`, `bookingModifiedTime`, `sharingType`, `p/up`, `currentStatus`) VALUES
(1, '06:35:00', '2015-12-16', '0000-00-00', 1, 1, '1,2,3,4,5,6,7,8', '1,2,3,4', 1, '00:00:00', 0, 0, 0),
(2, '10:00:00', '2015-12-08', '0000-00-00', 2, 2, '9,10,11,12,13', '5,6,7,8,9', 1, '00:00:00', 0, 0, 0),
(3, '06:30:00', '2015-12-30', '0000-00-00', 3, 3, '14,15,16', '10,11', 1, '00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `currentaddress`
--

CREATE TABLE IF NOT EXISTS `currentaddress` (
  `currentAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `currentAddress` varchar(25) NOT NULL,
  `numberOfBedRooms` int(1) NOT NULL,
  `houseType` varchar(25) NOT NULL,
  `floorNumber` int(1) NOT NULL,
  `elevator` tinyint(4) NOT NULL,
  `packing` tinyint(4) NOT NULL,
  `loading` tinyint(4) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`currentAddressId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `currentaddress`
--

INSERT INTO `currentaddress` (`currentAddressId`, `currentAddress`, `numberOfBedRooms`, `houseType`, `floorNumber`, `elevator`, `packing`, `loading`, `userId`) VALUES
(1, 'nandyal', 2, 'Individual House', 2, 0, 1, 0, 1),
(2, 'kurnool', 2, 'Individual House', 2, 0, 1, 1, 1),
(3, 'bang', 2, 'Individual House', 3, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currentitems`
--

CREATE TABLE IF NOT EXISTS `currentitems` (
  `currentItemsId` int(11) NOT NULL AUTO_INCREMENT,
  `itemId` int(11) NOT NULL,
  `itemWeight` int(3) NOT NULL,
  `itemType` varchar(25) NOT NULL,
  `itemQuantity` int(3) NOT NULL,
  `itemsize` varchar(25) NOT NULL,
  `delicate` tinyint(4) NOT NULL,
  PRIMARY KEY (`currentItemsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `currentitems`
--

INSERT INTO `currentitems` (`currentItemsId`, `itemId`, `itemWeight`, `itemType`, `itemQuantity`, `itemsize`, `delicate`) VALUES
(1, 1, 12, '', 2, 'Medium', 0),
(2, 2, 20, '', 1, 'Large', 0),
(3, 3, 0, '', 2, 'Small', 0),
(4, 4, 10, '', 1, 'Ex Large', 0),
(5, 5, 13, '', 1, 'Small', 0),
(6, 86, 50, '', 2, 'Medium', 0),
(7, 92, 1400, '', 1, 'Small', 0),
(8, 106, 150, '', 1, 'Small', 0),
(9, 1, 12, '', 2, 'Small', 0),
(10, 2, 40, '', 2, 'Small', 0),
(11, 3, 0, '', 1, 'Small', 0),
(12, 4, 20, '', 2, 'Small', 0),
(13, 5, 26, '', 2, 'Small', 0),
(14, 1, 12, '', 2, 'Small', 1),
(15, 2, 40, '', 2, 'Small', 1),
(16, 3, 0, '', 1, 'Small', 0);

-- --------------------------------------------------------

--
-- Table structure for table `defaultitems`
--

CREATE TABLE IF NOT EXISTS `defaultitems` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `roomType` int(11) NOT NULL,
  `itemType` varchar(11) NOT NULL,
  `itemName` varchar(25) NOT NULL,
  `weight` int(3) NOT NULL,
  `icons` varchar(255) NOT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `defaultitems`
--

INSERT INTO `defaultitems` (`itemId`, `roomType`, `itemType`, `itemName`, `weight`, `icons`) VALUES
(1, 1, '0', 'Open Aquarium ', 6, 'open aquarium black.png'),
(2, 1, '0', 'Center-Table', 20, 'Centre-Table.png'),
(3, 1, '0', 'Chandelier', 0, 'Chandelier.png'),
(4, 1, '0', 'Computer', 10, 'computer.png'),
(5, 1, '0', 'Computer-Table', 13, 'computer table.png'),
(6, 1, '0', 'Foldable-Chair', 4, 'foldable chair.png'),
(7, 1, '0', 'Plastic-Chair', 3, 'Plastic-Chair.png'),
(8, 1, '0', 'Non-Foldable-chair', 3, 'Non-Foldable-Chair.png'),
(9, 1, '0', 'Music-System', 5, 'Music-System.png'),
(10, 1, '0', 'Sofa-2-Seater', 50, 'Sofa 2 seater.png'),
(11, 1, '0', 'Sofa-1-Seater', 30, 'Sofa 1 seater.png'),
(12, 1, '0', 'Lcd-tv', 26, 'Lcd tv.png'),
(13, 1, '0', 'Inverter', 15, 'Inverter.png'),
(14, 1, '0', 'home-theater', 12, 'Home-Theatre.png'),
(15, 1, '0', 'portable-tv', 9, 'Portable tv.png'),
(16, 1, '0', 'Printer', 8, 'Printer.png'),
(17, 1, '0', 'show-case-furniture', 70, 'Show-Case-Furniture.png'),
(18, 1, '0', 'sofa-3-seater', 120, 'Sofa 3 seater.png'),
(19, 1, '0', 'study-table', 45, 'study table.png'),
(20, 1, '0', 'television-cabinet', 50, 'Television-cabinet.png'),
(21, 1, '0', 'side-table', 37, 'Side-Table.png'),
(22, 2, '0', 'air-cooler', 15, 'air-cooler.png'),
(23, 2, '0', 'baby-bed', 28, 'baby bed.png'),
(24, 2, '0', 'double-cot-bed-boxed', 15, 'Double cot bed boxed.png'),
(25, 2, '0', 'bed-mattress', 22, 'Bed-mattress.png'),
(26, 2, '0', 'double-cot-bed-regular', 15, 'Double-cot-bed-regular.png'),
(27, 2, '0', 'drawers-cabinet', 30, 'Drawers cabinet.png'),
(28, 2, '0', 'single-cot-bed-boxed', 15, 'single-cot-bed-boxed.png'),
(29, 2, '0', 'single-cot-bed-regular', 18, 'single-cot-bed- regular.png'),
(30, 2, '0', 'split-ac', 48, 'split-ac.png'),
(31, 2, '0', 'wardrobe-steel', 30, 'Wardrobe steel.png'),
(32, 2, '0', 'wardrobe-wooden', 50, 'Wardrobe-wood.png'),
(33, 2, '0', 'window-ac', 75, 'window ac.png'),
(34, 2, '0', 'bunk-bed', 25, 'Bunk bed.png'),
(35, 2, '0', 'clothes-boxes', 5, 'clothes-boxes.png'),
(36, 2, '0', 'diwan-bed', 12, 'Diwan-bed.png'),
(37, 2, '0', 'dressing-table', 23, 'Dressing table.png'),
(38, 2, '0', 'folding-bed', 12, 'Folding bed.png'),
(39, 2, '0', 'picture-frame', 5, 'picture frame.png'),
(40, 2, '0', 'suitcase', 3, 'Suitcase.png'),
(41, 2, '0', 'table-fan', 4, 'Table fan.png'),
(42, 2, '0', 'trolley-bag', 6, 'trolley-bag.png'),
(43, 2, '0', 'Plant stand', 4, 'Plant Stand.png'),
(44, 2, '0', 'Paintings', 3, 'Paintings.png'),
(45, 2, '0', 'Ladder(steel)', 20, 'Ladder(steel).png'),
(46, 2, '0', 'Large Ladder', 30, 'Large Ladder.png'),
(47, 2, '0', 'Cradle', 5, 'Cradle.png'),
(48, 2, '0', 'Lawn Chairs', 6, 'Lawn Chairs.png'),
(49, 2, '0', 'Exhauster', 5, 'Exhauster.png'),
(50, 3, '0', 'Coffee maker', 20, 'Coffee maker.png'),
(51, 3, '0', 'Cooker', 5, 'Coocker.png'),
(52, 3, '0', 'Dining Set', 4, 'Dining set.png'),
(53, 3, '0', 'Dining table 4 chairs', 70, 'Dining table 4 chairs.png'),
(54, 3, '0', 'Dining table 6 chairs', 85, 'Dining table 6 chairs.png'),
(55, 3, '0', 'Dish washer', 50, 'Dish washer.png'),
(56, 3, '0', 'Kitchen-Boxes', 10, 'Gas Cylinder.png'),
(57, 3, '0', 'Gas Stove', 10, 'Gas stove.png'),
(58, 3, '0', 'Gas-Stove big', 15, 'Gas-Stove big.png '),
(59, 3, '0', 'Gas-Stove small', 10, 'Gas-Stove small.png'),
(60, 3, '0', 'glass Dining table 4 chai', 70, 'Glass-Dining table 4 chairs.png'),
(61, 3, '0', 'Glass-Dining table 6 chai', 85, 'glass Dining table 6 chairs.png'),
(62, 3, '0', 'kitchen wear', 10, 'kitchen wear.png'),
(63, 3, '0', 'Kitchen-Boxes ', 10, 'Kitchen-Boxes.png'),
(64, 3, '0', 'Kitchen-Boxes ', 15, 'Kitchen-Boxes.png'),
(65, 3, '0', 'Mixer grinder', 20, 'Mixer grinder.png'),
(66, 3, '0', 'oven', 15, 'oven.png'),
(67, 3, '0', 'Refrigerator double door', 70, 'Refrigerator double door.png'),
(68, 3, '0', 'Refrigerator single door', 50, 'Refrigerator single door.png'),
(69, 3, '0', 'RO Water purifier', 15, 'RO Water purifier.png'),
(70, 3, '0', 'Utensil stand', 10, 'Utensil stand.png'),
(71, 3, '0', 'Water Filter', 8, 'Water Filter.png'),
(72, 3, '0', 'Water purifier ', 15, 'Water purifier.png'),
(73, 1, '0', '2-Drawer File', 10, '2-Drawer File.png'),
(74, 1, '0', '3-Drawer File', 13, '3-Drawer File.png'),
(75, 1, '0', '4-Drawer File', 15, '4-Drawer File.png'),
(76, 1, '0', '2-Drawer lat File', 15, '2-Drawer lat File.png'),
(77, 1, '0', '4-Drawer lat File', 20, '4-Drawer lat File.png'),
(78, 1, '0', 'Computers ', 5, 'Computers.png'),
(79, 1, '0', 'Credenza', 15, 'Credenza.png'),
(80, 1, '0', 'Desk Chair', 8, 'Desk Chair.png'),
(81, 1, '0', 'office desk big', 10, 'office desk big.png'),
(82, 1, '0', 'office desk small', 8, 'office desk small.png'),
(83, 1, '0', 'Storage Cabinet', 17, 'Storage Cabinet.png'),
(84, 2, '0', 'Bean bag', 5, 'Bean bag.png'),
(85, 6, '0', 'Bench-gym', 10, 'Bench-gym.png'),
(86, 7, '0', 'bicycle', 25, 'bicycle.png'),
(87, 2, '0', 'Books-boxes', 50, 'Books-boxes.png'),
(88, 2, '0', 'Book-shelf', 20, 'Book-shelf.png'),
(89, 4, '0', 'box under 50kg to 70kg', 60, 'box under 50kg to 70kg.png'),
(90, 4, '0', 'box under 50kg', 50, 'box under 50kg.png'),
(91, 7, '0', 'car(big)', 1800, 'car(big).png'),
(92, 7, '0', 'car(small)', 1400, 'car(small).png'),
(93, 2, '0', 'Ceiling Fans ', 2, 'Ceiling Fans .png'),
(94, 2, '0', 'Chest of Drawers', 8, 'Chest of Drawers.png'),
(95, 2, '0', 'Cloth Stand', 5, 'Cloth Stand.png'),
(96, 6, '0', 'Cross-Trainer', 25, 'Cross-Trainer.png'),
(97, 6, '0', 'dumbbell above 50kg black', 100, 'dumbbell above 50kg black.png'),
(98, 6, '0', 'dumbbell below 50kg black', 60, 'dumbbell below 50kg black.png'),
(99, 6, '0', 'Exercise-cycle', 25, 'Exercise-cycle.png'),
(100, 1, '0', 'Flower-pot', 4, 'Flower-pot.png'),
(101, 2, '0', 'Geyser', 45, 'Geyser.png'),
(102, 6, '0', 'Gym-all-in-one', 100, 'Gym-all-in-one.png'),
(103, 2, '0', 'Iron Rack', 25, 'Iron Rack.png'),
(104, 2, '0', 'Mirror', 15, 'Mirror.png'),
(105, 1, '0', 'Misc-boxes', 25, 'Misc-boxes.png'),
(106, 7, '0', 'motar cycle', 150, 'motar cycle.png'),
(107, 1, '0', 'Piano', 50, 'Piano.png'),
(108, 3, '0', 'Plastic-drum', 5, 'Plastic-drum.png'),
(109, 5, '0', 'Pooja-temple', 10, 'Pooja-temple.png'),
(110, 1, '0', 'Sewing-machine', 13, 'Sewing-machine.png'),
(111, 1, '0', 'Shoe Rack', 20, 'Shoe Rack.png'),
(112, 1, '0', 'Swing-chair', 10, 'Swing-chair.png'),
(113, 6, '0', 'Treadmill', 35, 'Treadmill.png'),
(114, 1, '0', 'Vacuum-cleaner', 5, 'Vacuum-cleaner.png'),
(115, 1, '0', 'Washing-machine', 25, 'Washing-machine.png');

-- --------------------------------------------------------

--
-- Table structure for table `destinationaddress`
--

CREATE TABLE IF NOT EXISTS `destinationaddress` (
  `destinationAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `destinationAddress` varchar(55) NOT NULL,
  `numberOfBedRooms` int(1) NOT NULL,
  `destinationHouseType` varchar(25) NOT NULL,
  `floorNumber` int(1) NOT NULL,
  `elevator` tinyint(4) NOT NULL,
  `unpacking` int(11) NOT NULL,
  `unloading` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`destinationAddressId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `destinationaddress`
--

INSERT INTO `destinationaddress` (`destinationAddressId`, `destinationAddress`, `numberOfBedRooms`, `destinationHouseType`, `floorNumber`, `elevator`, `unpacking`, `unloading`, `userId`) VALUES
(1, 'nalgonda', 0, 'Villa', 5, 1, 1, 0, 1),
(2, 'hyderabad', 0, 'Villa', 11, 1, 1, 1, 1),
(3, 'delhi', 0, 'Individual House', 3, 0, 1, 0, 1);

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
-- Table structure for table `otheritems`
--

CREATE TABLE IF NOT EXISTS `otheritems` (
  `otherItemsId` int(11) NOT NULL AUTO_INCREMENT,
  `otherItemName` varchar(25) NOT NULL,
  `otherItemQuantity` int(11) NOT NULL,
  `otherItemWeight` varchar(25) NOT NULL,
  `otherItemDelicate` tinyint(4) NOT NULL,
  `otherItemType` varchar(22) NOT NULL,
  `otherItemSize` varchar(22) NOT NULL,
  PRIMARY KEY (`otherItemsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `otheritems`
--

INSERT INTO `otheritems` (`otherItemsId`, `otherItemName`, `otherItemQuantity`, `otherItemWeight`, `otherItemDelicate`, `otherItemType`, `otherItemSize`) VALUES
(1, 'aa', 1, '23', 1, 'wood', 'ex large'),
(2, 'bb', 2, '32', 0, 'Glass', 'large'),
(3, 'ccc', 3, '43', 1, 'Plastic', 'medium'),
(4, 'dd', 4, '54', 0, 'Iron', 'small'),
(5, 'ab', 1, '20', 0, 'iron', '="small"'),
(6, 'ac', 1, '24', 1, 'Glass', 'large'),
(7, 'ad', 2, '', 1, 'Wood', 'Ex large'),
(8, 'ae', 1, '', 0, 'Plastic', 'medium'),
(9, 'af', 3, '23', 0, 'Glass', 'small'),
(10, 'aaaa', 1, '1', 1, 'iron', '="small"'),
(11, 'bbbb', 2, '2', 0, 'Iron', 'small');

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE IF NOT EXISTS `roomtype` (
  `roomTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(25) NOT NULL,
  PRIMARY KEY (`roomTypeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`roomTypeId`, `roomName`) VALUES
(1, 'Living Room'),
(2, 'Bed Room'),
(3, 'Kitchen'),
(4, 'Store Room'),
(5, 'Pooja Room'),
(6, 'Gym'),
(7, 'Vehicles'),
(8, 'Others');

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
