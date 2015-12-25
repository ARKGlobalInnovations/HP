-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2015 at 09:19 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `defaultitems`
--

CREATE TABLE IF NOT EXISTS `defaultitems` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `roomType` int(11) NOT NULL,
  `itemType` varchar(11) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `weight` int(3) NOT NULL,
  `icons` varchar(255) NOT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `defaultitems`
--

INSERT INTO `defaultitems` (`itemId`, `roomType`, `itemType`, `itemName`, `weight`, `icons`) VALUES
(1, 1, '0', 'Open Aquarium ', 6, 'open aquarium black.png'),
(2, 1, '0', 'Center Table', 20, 'Centre-Table.png'),
(3, 1, '0', 'Chandelier', 20, 'Chandelier.png'),
(4, 4, '0', 'Computer', 10, 'computer.png'),
(5, 4, '0', 'Computer Table', 13, 'computer table.png'),
(6, 1, '0', 'Foldable Chair', 4, 'foldable chair.png'),
(7, 1, '0', 'Plastic Chair', 3, 'Plastic-Chair.png'),
(8, 1, '0', 'Nonfoldable Chair', 3, 'Non-Foldable-Chair.png'),
(9, 1, '0', 'Music System', 5, 'Music-System.png'),
(10, 1, '0', 'Sofa 2 Seater', 50, 'Sofa 2 seater.png'),
(11, 1, '0', 'Sofa 1 Seater', 30, 'Sofa 1 seater.png'),
(12, 1, '0', 'Lcd TV', 26, 'Lcd tv.png'),
(13, 1, '0', 'Inverter', 15, 'Inverter.png'),
(14, 1, '0', 'Home Theater', 12, 'Home-Theatre.png'),
(15, 1, '0', 'Portable TV', 9, 'Portable tv.png'),
(16, 1, '0', 'Printer', 8, 'Printer.png'),
(17, 1, '0', 'Showcase Furniture', 70, 'Show-Case-Furniture.png'),
(18, 1, '0', 'Sofa 3 Seater', 120, 'Sofa 3 seater.png'),
(19, 4, '0', 'Study Table', 45, 'study table.png'),
(20, 1, '0', 'Television Cabinet', 50, 'Television-cabinet.png'),
(21, 1, '0', 'Side Table', 37, 'Side-Table.png'),
(22, 2, '0', 'Air Cooler', 15, 'air-cooler.png'),
(23, 2, '0', 'Baby Bed', 28, 'baby bed.png'),
(24, 2, '0', 'Double Cot Bed Boxed', 15, 'Double cot bed boxed.png'),
(25, 2, '0', 'Bed Mattress', 22, 'Bed-mattress.png'),
(26, 2, '0', 'Double Cot Bed Regular', 15, 'Double-cot-bed-regular.png'),
(27, 4, '0', 'Drawers Cabinet', 30, 'Drawers cabinet.png'),
(28, 2, '0', 'Single Cot Bed Boxed', 15, 'single-cot-bed-boxed.png'),
(29, 2, '0', 'Single Cot Bed Regular', 18, 'single-cot-bed- regular.png'),
(30, 2, '0', 'Split AC', 48, 'split-ac.png'),
(31, 2, '0', 'Wardrobe Steel', 30, 'Wardrobe steel.png'),
(32, 2, '0', 'Wardrobe Wooden', 50, 'Wardrobe-wood.png'),
(33, 2, '0', 'Window AC', 75, 'window ac.png'),
(34, 2, '0', 'Bunk Bed', 25, 'Bunk bed.png'),
(35, 2, '0', 'Clothes Boxes', 8, 'clothes-boxes.png'),
(36, 2, '0', 'Diwan Bed', 12, 'Diwan-bed.png'),
(37, 2, '0', 'Dressing Table', 23, 'Dressing table.png'),
(38, 2, '0', 'Folding Bed', 12, 'Folding bed.png'),
(39, 2, '0', 'Picture Frame', 5, 'picture frame.png'),
(40, 2, '0', 'Suitcase', 3, 'Suitcase.png'),
(41, 2, '0', 'Table Fan', 4, 'Table fan.png'),
(42, 2, '0', 'Trolley Bag', 6, 'trolley-bag.png'),
(43, 2, '0', 'Plant Stand', 4, 'Plant Stand.png'),
(44, 2, '0', 'Paintings', 3, 'Paintings.png'),
(45, 2, '0', 'Ladder(Steel)', 20, 'Ladder(steel).png'),
(46, 2, '0', 'Large Ladder', 30, 'Large Ladder.png'),
(47, 2, '0', 'Cradle', 5, 'Cradle.png'),
(48, 2, '0', 'Lawn Chairs', 6, 'Lawn Chairs.png'),
(49, 2, '0', 'Exhauster', 5, 'Exhauster.png'),
(50, 3, '0', 'Coffee Maker', 20, 'Coffee maker.png'),
(51, 3, '0', 'Cooker', 5, 'Coocker.png'),
(52, 3, '0', 'Dining Set', 4, 'Dining set.png'),
(53, 3, '0', 'Dining Table 4 Chairs', 70, 'Dining table 4 chairs.png'),
(54, 3, '0', 'Dining Table 6 Chairs or Above', 85, 'Dining table 6 chairs.png'),
(55, 3, '0', 'Dish Washer', 50, 'Dish washer.png'),
(56, 3, '0', 'Kitchen Boxes', 10, 'Gas Cylinder.png'),
(57, 3, '0', 'Gas Stove', 10, 'Gas stove.png'),
(58, 3, '0', 'Gas Stove Big', 15, 'Gas-Stove big.png '),
(59, 3, '0', 'Gas Stove Small', 10, 'Gas-Stove small.png'),
(60, 3, '0', 'Glass Dining Table 4 Chair', 70, 'Glass-Dining table 4 chairs.png'),
(61, 3, '0', 'Glass Dining Table 6 Chair or Above', 85, 'glass Dining table 6 chairs.png'),
(62, 3, '0', 'Kitchen Wear', 10, 'kitchen wear.png'),
(63, 3, '0', 'Kitchen Boxes ', 10, 'Kitchen-Boxes.png'),
(64, 3, '0', 'Kitchen Boxes ', 15, 'Kitchen-Boxes.png'),
(65, 3, '0', 'Mixer Grinder', 20, 'Mixer grinder.png'),
(66, 3, '0', 'Oven', 15, 'oven.png'),
(67, 3, '0', 'Refrigerator Double Door', 70, 'Refrigerator double door.png'),
(68, 3, '0', 'Refrigerator Single Door', 50, 'Refrigerator single door.png'),
(69, 3, '0', 'RO Water Purifier', 15, 'RO Water purifier.png'),
(70, 3, '0', 'Utensil Stand', 10, 'Utensil stand.png'),
(71, 3, '0', 'Water Filter', 8, 'Water Filter.png'),
(72, 3, '0', 'Water Purifier ', 15, 'Water purifier.png'),
(73, 4, '0', '2 Drawer File', 10, '2-Drawer File.png'),
(74, 4, '0', '3 Drawer File', 13, '3-Drawer File.png'),
(75, 4, '0', '4 Drawer File', 15, '4-Drawer File.png'),
(76, 4, '0', '2 Drawer Lat File', 15, '2-Drawer lat File.png'),
(77, 4, '0', '4 Drawer Lat File', 20, '4-Drawer lat File.png'),
(78, 4, '0', 'Computers ', 5, 'Computers.png'),
(79, 4, '0', 'Credenza', 15, 'Credenza.png'),
(80, 4, '0', 'Desk Chair', 8, 'Desk Chair.png'),
(81, 4, '0', 'Office Desk Big', 10, 'office desk big.png'),
(82, 4, '0', 'Office Desk Small', 8, 'office desk small.png'),
(83, 4, '0', 'Storage Cabinet', 17, 'Storage Cabinet.png'),
(84, 2, '0', 'Bean Bag', 5, 'Bean bag.png'),
(85, 7, '0', 'Bench Gym', 10, 'Bench-gym.png'),
(86, 8, '0', 'Bicycle', 25, 'bicycle.png'),
(87, 2, '0', 'Books Boxes', 50, 'Books-boxes.png'),
(88, 2, '0', 'Book Shelf', 20, 'Book-shelf.png'),
(89, 5, '0', 'Box Under 50kg to 70kg', 60, 'box under 50kg to 70kg.png'),
(90, 5, '0', 'Box Under 50kg', 50, 'box under 50kg.png'),
(91, 8, '0', 'Car', 1800, 'car(big).png'),
(92, 8, '0', 'Car Hatchback', 1400, 'car(small).png'),
(93, 2, '0', 'Ceiling Fans ', 2, 'Ceiling Fans .png'),
(94, 2, '0', 'Chest of Drawers', 8, 'Chest of Drawers.png'),
(95, 2, '0', 'Cloth Stand', 5, 'Cloth Stand.png'),
(96, 7, '0', 'Cross Trainer', 25, 'Cross-Trainer.png'),
(97, 7, '0', 'Dumbbell 25 Kgs or Above', 50, 'dumbbell above 50kg black.png'),
(98, 7, '0', 'Dumbbell 25 Kgs or Below', 25, 'dumbbell below 50kg black.png'),
(99, 7, '0', 'Exercise Cycle', 40, 'Exercise-cycle.png'),
(100, 1, '0', 'Flower Pot', 4, 'Flower-pot.png'),
(101, 2, '0', 'Geyser', 45, 'Geyser.png'),
(102, 7, '0', 'Gym all in one', 100, 'Gym-all-in-one.png'),
(103, 2, '0', 'Iron Rack', 25, 'Iron Rack.png'),
(104, 2, '0', 'Mirror', 15, 'Mirror.png'),
(105, 1, '0', 'Misc Boxes', 25, 'Misc-boxes.png'),
(106, 8, '0', 'Motor Cycle', 150, 'motar cycle.png'),
(107, 1, '0', 'Piano', 50, 'Piano.png'),
(108, 3, '0', 'Plastic Drum', 5, 'Plastic-drum.png'),
(109, 6, '0', 'Pooja Temple', 10, 'Pooja-temple.png'),
(110, 1, '0', 'Sewing Machine', 13, 'Sewing-machine.png'),
(111, 1, '0', 'Shoe Rack', 20, 'Shoe Rack.png'),
(112, 1, '0', 'Swing Chair', 10, 'Swing-chair.png'),
(113, 7, '0', 'Treadmill', 35, 'Treadmill.png'),
(114, 1, '0', 'Vacuum Cleaner', 5, 'Vacuum-cleaner.png'),
(115, 1, '0', 'Washing Machine', 25, 'Washing-machine.png'),
(116, 0, '', 'Rice Bags 25 Kgs', 25, ''),
(117, 0, '', 'Gym Plates 10 Kgs', 10, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
