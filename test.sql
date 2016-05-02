-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 02, 2016 at 10:58 AM
-- Server version: 5.5.41-log
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `Author_id` int(11) NOT NULL DEFAULT '0',
  `Author_Name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`Author_id`, `Author_Name`) VALUES
(1, 'Giada De Laurentiis'),
(2, 'J K. Rowling'),
(3, 'James McGovern'),
(4, 'Per Bothner'),
(5, 'Kurt Cagle'),
(6, 'James Linn'),
(7, 'Vaidyanathan Nagarajan'),
(8, 'Erik T. Ray');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `Book_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `year` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_id`, `title`, `year`, `price`, `category`) VALUES
(1, 'Everyday Italian', 2005, 30.00, 'Cooking'),
(2, 'Harry Potter', 2005, 29.99, 'Children'),
(3, 'XQuery Kick Start', 2003, 49.99, 'Web'),
(4, 'Learning XML', 2003, 39.95, 'Web');

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

CREATE TABLE IF NOT EXISTS `book_authors` (
  `Book_id` int(11) NOT NULL DEFAULT '0',
  `Author_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_authors`
--

INSERT INTO `book_authors` (`Book_id`, `Author_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
 ADD PRIMARY KEY (`Author_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
 ADD PRIMARY KEY (`Book_id`);

--
-- Indexes for table `book_authors`
--
ALTER TABLE `book_authors`
 ADD PRIMARY KEY (`Book_id`,`Author_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
