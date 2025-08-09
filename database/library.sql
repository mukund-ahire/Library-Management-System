-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 08, 2025 at 06:58 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `availablility`
--

DROP TABLE IF EXISTS `availablility`;
CREATE TABLE IF NOT EXISTS `availablility` (
  `book_id` varchar(15) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `availablility`
--

INSERT INTO `availablility` (`book_id`, `isbn`, `title`) VALUES
('2', '125', 'Gamperaliya'),
('5', 'T01', 'David Copperfield'),
('6', 'T02', 'Oliver Twist'),
('8', 'T04', 'Harniet'),
('9', 'T05', 'Pride & Prejudice'),
('10', 'T06', 'Sun Also Rises'),
('31', '156', 'Madolduwa'),
('28', 'T12', 'Hathpana'),
('30', 'T15', 'Magul Kema'),
('7', 'T03', 'Emma'),
('36', 'T21', 'Song of Ice & Fire'),
('11', 'T07', 'Macbath');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `catagory` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` varchar(5) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `isbn`, `title`, `author`, `catagory`, `price`, `location`, `details`) VALUES
(1, '123', 'Madolduwa', 'Martin Wickramasinghe', 'Novel', '250', '', '20231019/P220'),
(2, '125', 'Gamperaliya', 'Martin Wickramasinghe', 'Novel', '150', '', '20231019/P302'),
(5, 'T01', 'David Copperfield', 'Dickens', 'History', '500', '', '2023-10-20'),
(6, 'T02', 'Oliver Twist', 'Dickens', 'History', '550', '', '2023-10-20'),
(7, 'T03', 'Emma', 'Austen', 'Computer', '250', '', '2023-10-20'),
(8, 'T04', 'Harniet', 'Shakespeare', 'Novel', '500', '', '2023-10-20'),
(9, 'T05', 'Pride & Prejudice', 'Austen', 'Novel', '300', '', '2023-10-20'),
(10, 'T06', 'Sun Also Rises', 'Herningway', 'Psychology', '250', '', '2023-10-20'),
(11, 'T07', 'Macbath', 'Shakespeare', 'Psychology', '800', '', '2023-10-20'),
(31, '156', 'Madolduwa', 'Martin Wickramasinghe', 'Novel', '250', '', '20231020/P220'),
(28, 'T12', 'Hathpana', 'Kumarathunga Munidasa', 'Children', '', '', '20231021/P260'),
(30, 'T15', 'Magul Kema', 'Kamarathunga Munidasa', 'Children', '250', '', '20231021/P200'),
(36, 'T21', 'Song of Ice & Fire', 'Gorge R.R. Martin', 'History & Fantasy', '1150', '', '20231030/P1120');

-- --------------------------------------------------------

--
-- Table structure for table `deletedbook`
--

DROP TABLE IF EXISTS `deletedbook`;
CREATE TABLE IF NOT EXISTS `deletedbook` (
  `isbn` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `deletedbook`
--

INSERT INTO `deletedbook` (`isbn`, `title`, `author`, `date`) VALUES
('T20', 'Song of Ice and Fire', 'Gorge R.R Martin', '2023-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `deletedmember`
--

DROP TABLE IF EXISTS `deletedmember`;
CREATE TABLE IF NOT EXISTS `deletedmember` (
  `name` varchar(50) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `fromdate` date NOT NULL,
  `sincedate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `deletedmember`
--

INSERT INTO `deletedmember` (`name`, `nic`, `fromdate`, `sincedate`) VALUES
('Mr. WMBH Weerakoon', '20015303306', '2023-10-28', '2023-10-30'),
('Mr. WMBH Weerakoon', '20015303306', '2023-10-28', '2023-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE IF NOT EXISTS `issue` (
  `book_id` varchar(10) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `book_id` (`book_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `book_title`, `member_id`, `member_name`, `issue_date`, `return_date`, `details`) VALUES
('1', 'Madolduwa', '2', 'Mr. WDD Wijerathne', '2023-11-01', '2023-11-07', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '000000');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `membership_date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `id` bigint NOT NULL,
  `address` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'NONE',
  `risk` varchar(3) NOT NULL DEFAULT '0',
  `details` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'NONE',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `membership_date`, `name`, `id`, `address`, `birthdate`, `contact`, `email`, `risk`, `details`) VALUES
(35, '2023-10-30', 'Mr. WMBH Weerakoon', 200215303306, 'Pahala Rambepitiya,Ku/Thisogama.', '2002-06-01', '+94768044146', 'weerakoonhanshana@gmail.com', '0', 'Uni Student'),
(2, '2023-10-18', 'Mr. WDD Wijerathne', 200218469845, 'No 17, Wijerama Rd,Padukka.', '2002-04-04', '+94771978208', 'dammika2002@gmail.com', '1', 'Student'),
(5, '2023-10-18', 'Miss. HMM Perera', 200218794545, 'No 17, Flower Rd,Padukka.', '2002-12-03', '+94745987608', 'perera2002@gmail.com', '0', ''),
(13, '2023-10-18', 'Mr. WM Pathirana', 200248651257, 'Temple Rd, Bngiriya.', '2002-05-13', '+94778564324', '', '0', ''),
(15, '2023-10-19', 'Mr. RAA Rathnayake', 200156897458, 'No 13, Mukalanhena, Bingiriya.', '2001-11-17', '+94786541258', 'rathnayake2001@gmail.com', '0', ''),
(16, '2023-10-19', 'Miss. WE Warusawithana', 200156879547, 'No 13,Hamilton,Piliyandala.', '2001-05-04', '+94778965145', 'warusaa2001@gmail.com', '0', 'HouseWife'),
(18, '2023-10-19', 'Mr. WA Kelum Yapa', 200512568796, 'No 14,Wilaththawa,Bingiriya.', '2005-07-10', '+94765894523', 'KelumY2005@gmail.com', '0', 'Student'),
(20, '2023-10-19', 'Miss. DA Kavinda', 200412568975, 'No14,Mukalanhena,Bingiriya.', '2004-07-09', '+94768975145', '', '1', 'Student'),
(21, '2023-10-19', 'Mr. WE Withanage', 200215259875, 'Mukalanhena,Bingiriya.', '2002-05-04', '+94765894569', '', '0', ''),
(22, '2023-10-19', 'Miss. WMSH Weerakoon', 199565987541, 'Pahala rambepitiya,Thisogama.', '1995-12-10', '+94768549523', 'Hansaniweerakoon@gmail.com', '0', 'Gov. Profession'),
(23, '2023-10-19', 'Miss. WA Wijesinghe', 199459678961, 'Galwewa,Thisogama.', '1994-10-01', '+94776985456', 'wijesin1994@gmail.com', '0', ''),
(29, '2023-10-19', 'Miss. DAM Supuni', 200256452369, 'No 10,Flower rd,Bingiriya.', '2002-10-08', '+94763598416', 'Supun2002\"gmail.com', '0', 'Uni Student'),
(28, '2023-10-19', 'Mr. SS Santha', 198956325987, 'Panawewa,Bingiriya.', '1989-12-04', '+94765894563', '', '0', 'Profession'),
(33, '2023-10-30', 'MSS Perera', 200236596594, 'Panawewa,Kadayaya,Bingiriya.', '2002-07-03', '+94779865412', 'Shehanperera@gmail.com', '0', 'Uni Student');

-- --------------------------------------------------------

--
-- Table structure for table `returntable`
--

DROP TABLE IF EXISTS `returntable`;
CREATE TABLE IF NOT EXISTS `returntable` (
  `id` varchar(15) NOT NULL,
  `member_id` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `issue_date` date NOT NULL,
  `return_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `returntable`
--

INSERT INTO `returntable` (`id`, `member_id`, `date`, `issue_date`, `return_date`) VALUES
('1', '2', '2023-10-27', '2023-10-26', '2023-11-07'),
('1', '5', '2023-10-28', '2023-10-27', '2023-11-08'),
('1', '2', '2023-10-28', '2023-10-15', '2023-10-26'),
('5', '32', '2023-10-29', '2023-10-28', '2023-11-07'),
('2', '13', '2023-10-29', '2023-10-25', '2023-10-31'),
('30', '20', '2023-10-30', '2023-10-20', '2023-10-25'),
('36', '34', '2023-10-30', '2023-10-30', '2023-11-07'),
('1', '22', '2023-10-30', '2023-10-30', '2023-11-07'),
('1', '34', '2023-10-30', '2023-10-25', '2023-10-28'),
('2', '34', '2023-10-30', '2023-10-25', '2023-10-28'),
('5', '34', '2023-10-30', '2023-10-25', '2023-10-28'),
('6', '34', '2023-10-30', '2023-10-25', '2023-10-28'),
('8', '34', '2023-10-30', '2023-10-25', '2023-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `risk`
--

DROP TABLE IF EXISTS `risk`;
CREATE TABLE IF NOT EXISTS `risk` (
  `date` date NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brisk` varchar(3) NOT NULL,
  `risk` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `risk`
--

INSERT INTO `risk` (`date`, `id`, `name`, `brisk`, `risk`) VALUES
('2023-10-28', '2', 'Mr. WDD Wijerathne', '0', '1'),
('2023-10-30', '20', 'Miss. DA Kavinda', '0', '1'),
('2023-10-30', '34', 'Mr. WMBH Weerakoon', '0', '1'),
('2023-10-30', '34', 'Mr. WMBH Weerakoon', '1', '2'),
('2023-10-30', '34', 'Mr. WMBH Weerakoon', '2', '3'),
('2023-10-30', '34', 'Mr. WMBH Weerakoon', '3', '4'),
('2023-10-30', '34', 'Mr. WMBH Weerakoon', '4', '5');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
