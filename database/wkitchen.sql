-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table wkitchen.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `sl` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.admin: ~6 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`sl`, `username`, `Password`) VALUES
	(1, 'A', '@'),
	(2, 's', 'e'),
	(3, 'aysh', '123321'),
	(4, 'Saif', '4321'),
	(5, 'Rohan07', '12345'),
	(6, 'Admin', '123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table wkitchen.booking
CREATE TABLE IF NOT EXISTS `booking` (
  `sl` int(50) NOT NULL AUTO_INCREMENT,
  `parkerId` varchar(50) NOT NULL,
  `oid` varchar(100) NOT NULL,
  `oname` varchar(100) NOT NULL,
  `oaddress` varchar(300) NOT NULL,
  `ono` varchar(100) NOT NULL,
  `ospace` varchar(10) NOT NULL,
  `hour` varchar(10) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `Date&Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(200) NOT NULL,
  `ReleaseTime` varchar(200) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.booking: ~12 rows (approximately)
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`sl`, `parkerId`, `oid`, `oname`, `oaddress`, `ono`, `ospace`, `hour`, `cost`, `Date&Time`, `Status`, `ReleaseTime`) VALUES
	(1, 'rakib', 'Ayshik112', 'Ayshik Khan', 'Kuril', '01775503498', '8', '13', '390', '2020-09-11 22:59:27', 'Active', 'Sep,26,2020 09:47:42 PM'),
	(2, 'Ayshik000', 'Ayshik112', 'Ayshik Khan', 'Kuril', '01775503498', '8', '13', '390', '2020-09-11 22:59:27', 'Released', 'Sep,26,2020 09:47:42 PM'),
	(3, 'Rohan01', 'Ayshik112', 'Ayshik Khan', 'Kuril', '01775503498', '7', '20', '600', '2020-09-27 01:19:22', 'Released', 'Sep,27,2020 02:17:03 AM'),
	(4, 'Rohan01', 'Rohan', 'Rohan Rashid Dip', 'Basundhara,Dhaka, Mujib Sarak,sirajgonj', '01712345678', '4', '1', '30', '2020-09-27 01:21:34', 'Released', 'Sep,27,2020 01:38:10 AM'),
	(5, 'Rohan01', 'Rohan', 'Rohan Rashid Dip', 'Basundhara,Dhaka, Mujib Sarak,sirajgonj', '01712345678', '3', '1', '30', '2020-09-27 01:21:45', 'Released', 'Sep,27,2020 01:38:12 AM'),
	(6, 'Rohan01', 'Rohan', 'Rohan Rashid Dip', 'Basundhara,Dhaka, Mujib Sarak,sirajgonj', '01712345678', '2', '1', '30', '2020-09-27 01:21:58', 'Released', 'Sep,27,2020 01:38:14 AM'),
	(7, 'Rohan01', 'Rohan', 'Rohan Rashid Dip', 'Basundhara,Dhaka, Mujib Sarak,sirajgonj', '01712345678', '1', '1', '30', '2020-09-27 01:22:19', 'Released', 'Sep,27,2020 02:12:21 AM'),
	(9, 'Rohan01', 'Ayshik112', 'Ayshik Khan', 'Kuril', '01775503498', '7', '1', '30', '2020-09-27 02:18:22', 'Released', 'Sep,27,2020 02:19:22 AM'),
	(10, 'Rohan01', 'Ayshik112', 'Ayshik Khan', 'Kuril', '01775503498', '6', '1', '30', '2020-09-27 02:18:36', 'Released', 'Sep,27,2020 03:14:32 AM'),
	(11, 'Rohan01', 'Ayshik112', 'Ayshik Khan', 'Kuril', '01775503498', '5', '1', '30', '2020-09-27 02:18:56', 'Released', 'Sep,27,2020 03:18:01 AM'),
	(12, 'Ayshik000', 'ayshik', 'Ayshik boss', 'Dhaka', '017933240820', '4', '17', '510', '2020-09-27 05:44:29', 'Released', 'Sep,27,2020 05:54:03 AM'),
	(13, 'Ayshik000', 'Rohan', 'Rohan Rashid Dip', 'Basundhara,Dhaka, Mujib Sarak,sirajgonj', '01712345678', '0', '1', '30', '2020-09-27 06:08:19', 'Released', 'Sep,27,2020 06:10:51 AM');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;

-- Dumping structure for table wkitchen.chatbox
CREATE TABLE IF NOT EXISTS `chatbox` (
  `Sl` int(50) NOT NULL AUTO_INCREMENT,
  `Sender` varchar(100) NOT NULL,
  `Receiver` varchar(100) NOT NULL,
  `Message` varchar(300) NOT NULL,
  `Date&Time` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`Sl`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.chatbox: ~5 rows (approximately)
/*!40000 ALTER TABLE `chatbox` DISABLE KEYS */;
INSERT INTO `chatbox` (`Sl`, `Sender`, `Receiver`, `Message`, `Date&Time`) VALUES
	(45, 'Admin', 'Modarator', 'hi', '2021-08-15 17:41:19'),
	(46, 'Admin', 'Modarator', 'hi who are you', '2021-08-15 21:55:34'),
	(47, 'Admin', 'Modarator', 'fine thank you', '2021-08-16 01:38:40'),
	(48, 'Admin', 'Modarator', 'Kajer ki obosta', '2021-08-16 03:14:00'),
	(49, 'Modarator', 'Admin', 'ayto valo', '2021-08-16 03:14:29');
/*!40000 ALTER TABLE `chatbox` ENABLE KEYS */;

-- Dumping structure for table wkitchen.hirereq
CREATE TABLE IF NOT EXISTS `hirereq` (
  `sl` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `employee` varchar(100) NOT NULL,
  `admin` varchar(10) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table wkitchen.hirereq: ~5 rows (approximately)
/*!40000 ALTER TABLE `hirereq` DISABLE KEYS */;
INSERT INTO `hirereq` (`sl`, `name`, `username`, `phone`, `address`, `package`, `date`, `status`, `payment`, `employee`, `admin`) VALUES
	(4, 'Ayshik Khan bd', 'Ayshik112', '01775503400', 'Kuril dhaka', 'Painting Custom designer ~2000 TK', '2021-08-14 05:41:12', 'done', 'none', 'e', 'read'),
	(5, 'Ayshik Khan bd', 'Ayshik112', '01775503400', 'Kuril dhaka', 'All in All painting ~5000 TK', '2021-08-14 05:41:25', 'pending', 'none', 'Rohan01', 'unread'),
	(7, 'Ayshik Khan bd', 'Ayshik112', '01775503400', 'Kuril dhaka', 'wall painting 1000 tk', '2021-08-15 14:21:12', 'done', 'done', 'Ridoy23', 'unread'),
	(9, 'Ayshik Khan', 'Ayshik112', '01775503400', 'Kuril', 'jhgfsdxjh88', '2021-08-16 01:48:51', 'pending', 'none', 'Rohan01', 'unread'),
	(10, 'Ayshik Khan', 'Ayshik112', '01775503400', 'Kuril', 'House painting 15000 tk', '2021-08-16 03:18:38', 'ongoing', 'none', 'Rohan23', 'unread');
/*!40000 ALTER TABLE `hirereq` ENABLE KEYS */;

-- Dumping structure for table wkitchen.manager
CREATE TABLE IF NOT EXISTS `manager` (
  `sl` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.manager: ~7 rows (approximately)
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` (`sl`, `username`, `email`, `phone`, `Address`, `password`, `nid`, `Name`) VALUES
	(2, 'Rohan01', '', '01723456789', 'Basundhara', '1234', '13123425343463463567', 'Rohan Rashid'),
	(3, 'Ayshik000', 'Ayshikmee@gmail.com', '017933240820', 'Ayshik111', '@Ayshikmee1234', '12345678909876432', 'Ayshik Khan yah'),
	(4, 'Rohan23', 'hasemmama@gmail.com', '01633075341', 'Basundhara', '@Ayshikmee1234', '123456788543256', 'Rohan Khan'),
	(5, 'e', '', '01723456789', 'Basundhara', 'e', '13123425343463463567', 'Rohan Rashid'),
	(6, 'kftygg', 'A@gmail.com', '00000000000', 'ajsvdvuhsudugusgd', '5678765678', '000000000000000', 'gvygvvgyv'),
	(7, 'Rudyard999', 'kekoj@mailinator.com', '00000000000', 'Duis non culpa place', 'Pa$$w0rd!', '000000000000000', 'Quynn Herman'),
	(8, 'Leigh Arnold', 'niganoho@mailinator.com', '88888888888', 'Laborum consequatur ', 'Pa$$w0rd!', '888888888888888', 'Aidan Wilder');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;

-- Dumping structure for table wkitchen.modarator
CREATE TABLE IF NOT EXISTS `modarator` (
  `sl` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Address` varchar(300) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.modarator: ~4 rows (approximately)
/*!40000 ALTER TABLE `modarator` DISABLE KEYS */;
INSERT INTO `modarator` (`sl`, `username`, `email`, `phone`, `password`, `Name`, `Address`) VALUES
	(7, 'm-Saif112', 'Ayshik@gmail.com', '01633075341', '@Saif112', 'Kuddus', 'Basundhara'),
	(8, 'm-Rohan', 'rohan@gmail.com', '01712345678', '123', 'Rohan Rashid Dip', 'Basundhara,Dhaka, Mujib Sarak,sirajgonj'),
	(14, 'm', 'm', '01793324082', 'pranto12', 'Pranto', 'Dhaka,banani'),
	(15, 'sjajdbi', 'Ayshikmee@gmail.com', '09876545679', '87654345678', 'askjdnjka', 'hvdhafcsdgsvdu77777');
/*!40000 ALTER TABLE `modarator` ENABLE KEYS */;

-- Dumping structure for table wkitchen.prequest
CREATE TABLE IF NOT EXISTS `prequest` (
  `sl` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.prequest: ~0 rows (approximately)
/*!40000 ALTER TABLE `prequest` DISABLE KEYS */;
INSERT INTO `prequest` (`sl`, `username`, `email`, `phone`, `Address`, `password`, `status`, `nid`, `Name`) VALUES
	(1, 'a', 'a', 'a', 'a', 'a', 'Active', 'a', 'a');
/*!40000 ALTER TABLE `prequest` ENABLE KEYS */;

-- Dumping structure for table wkitchen.rate
CREATE TABLE IF NOT EXISTS `rate` (
  `sl` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` varchar(100) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `work` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `rate` int(2) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table wkitchen.rate: ~5 rows (approximately)
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` (`sl`, `employeeid`, `userid`, `work`, `date`, `rate`) VALUES
	(2, 'Asif444', 'Ayshik112', 'Painting Custom designer ~2000 TK', 'verry good', 5),
	(3, 'e', 'Ayshik112', 'Painting Custom designer ~2000 TK', 'nice', 5),
	(4, 'Asif444', 'Ayshik112', 'Painting Custom designer ~2000 TK', 'good', 3),
	(5, 'Asif444', 'Ayshik112', 'Painting Custom designer ~2000 TK', 'sei', 5),
	(6, 'Ridoy23', 'Ayshik112', 'wall painting 1000 tk', 'that was nice', 5);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;

-- Dumping structure for table wkitchen.reportbox
CREATE TABLE IF NOT EXISTS `reportbox` (
  `sl` int(10) NOT NULL AUTO_INCREMENT,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(400) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `usertype` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.reportbox: ~3 rows (approximately)
/*!40000 ALTER TABLE `reportbox` DISABLE KEYS */;
INSERT INTO `reportbox` (`sl`, `sender`, `receiver`, `subject`, `message`, `date`, `usertype`, `status`) VALUES
	(5, 'Ayshik112', 'Admin', 'work experience ', 'hi i am .......repoting for bad experience of work.', '2021-08-14 07:28:17', 'User', 'Unread'),
	(6, 'Ayshik112', 'Admin', 'ijjjjjjjjjjjjjj', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '2021-08-15 21:25:50', 'User', 'Unread'),
	(7, 'e', 'Admin', 'ksjdfjsdbhfh', 'jhhbsdjfusdbbfhcsdjhfbhubfhudb', '2021-08-16 05:23:07', 'Employee', 'Unread');
/*!40000 ALTER TABLE `reportbox` ENABLE KEYS */;

-- Dumping structure for table wkitchen.service
CREATE TABLE IF NOT EXISTS `service` (
  `sl` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(300) NOT NULL,
  `pac1` varchar(300) NOT NULL,
  `pac2` varchar(300) NOT NULL,
  `pac3` varchar(300) NOT NULL,
  `pic1` varchar(300) NOT NULL,
  `pic2` varchar(300) NOT NULL,
  `pic3` varchar(300) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table wkitchen.service: ~3 rows (approximately)
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` (`sl`, `heading`, `pac1`, `pac2`, `pac3`, `pic1`, `pic2`, `pic3`) VALUES
	(2, 'Painting & Renovation', 'wall painting 1000 tk', 'Room painting 4000 tk', 'House painting 15000 tk', '../storage/product_image/photo-1571115764595-644a1f56a55c.jfif', '../storage/product_image/images.jfif', '../storage/product_image/14376182_pa12.jpg'),
	(3, 'Electric & Plumbing', 'Wire fix 500tk', 'Main switch Fix 1000tk', 'House Fix  10000 tk', '../storage/product_image/Top-5-Benefits-of-Being-an-Electrician-UEI-College.jpg', '../storage/product_image/20-Electrician-Websites-Recommended-for-2021.jpg', '../storage/product_image/what-does-electrician-do.jpg'),
	(6, 'Mobile', 'hhhhh800', 'jhgfsdxjh88', 'khgcfhgjb99', '../storage/product_image/gg.jpg', '../storage/product_image/5.jpg', '../storage/product_image/4.png');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;

-- Dumping structure for table wkitchen.user
CREATE TABLE IF NOT EXISTS `user` (
  `sl` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  PRIMARY KEY (`sl`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table wkitchen.user: ~5 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`sl`, `username`, `email`, `phone`, `password`, `fullname`, `address`) VALUES
	(6, 'Ayshik112', 'ayshikmee@gmail.com', '01775503400', '@Ayshik1234', 'Ayshik Khan', 'Kuril'),
	(7, 'Saif112', 'Ayshik@gmail.com', '01633075341', '@Saif112', 'Kuddus', 'Basundhara'),
	(8, 'Rohan', 'rohan@gmail.com', '01712345678', '123', 'Rohan Rashid Dip', 'Basundhara,Dhaka, Mujib Sarak,sirajgonj'),
	(9, 'asdasdad', 'Aysh@gmail.com', '09876543234', 'dcfghjhfxd', 'bvhvhvhgv', 'fghjhbvcvb'),
	(10, 'kdhbhbh', 'A@gmail.com', '00000000000', 'ued89uef9u9', 'bvhvgvg', 'kbksdbfkbskdbfk');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
