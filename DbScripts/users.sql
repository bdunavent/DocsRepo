-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2014 at 03:46 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `docdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `emailAddress` varchar(50) NOT NULL,
  `userTypeID` int(10) NOT NULL,
  `password` varchar(128) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `emailOptIn` tinyint(1) DEFAULT NULL,
  `isValidated` tinyint(1) NOT NULL,
  `tempPassKey` varchar(128) DEFAULT NULL,
  `createDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`emailAddress`),
  KEY `userTypeID` (`userTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`emailAddress`, `userTypeID`, `password`, `fname`, `lname`, `emailOptIn`, `isValidated`, `tempPassKey`, `createDate`, `updateDate`) VALUES
('b.dunavent@test.com', 1, 'ee26b0dd4af7e749aa1a8ee3c10ae9923f618980772e473f8819a5d4940e0db27ac185f8a0e1d5f84f88bc887fd67b143732c304cc5fa9ad8e6f57f50028a8ff', 'Brian', 'Dunavent', 1, 0, NULL, '2014-03-24 03:09:51', '2014-03-24 03:09:51'),
('dunavebc@mail.uc.edu', 2, '7ffde559d8276534f862791b6057db944f06394bf63c08c37fa919470816636271c717466d75c86bf1860375633b4f5c172038be454b30feb02450a8996ae08c', 'Brian', 'Dunavent', 1, 1, NULL, '2014-03-25 01:55:06', '2014-03-25 02:22:59');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
