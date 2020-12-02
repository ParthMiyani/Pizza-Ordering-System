-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 11, 2019 at 04:32 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javapizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_list`
--

DROP TABLE IF EXISTS `food_list`;
CREATE TABLE IF NOT EXISTS `food_list` (
  `f_id` varchar(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `sz` varchar(200) NOT NULL,
  `pr` varchar(200) NOT NULL,
  `nm` varchar(200) NOT NULL,
  `typ` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_list`
--

INSERT INTO `food_list` (`f_id`, `f_name`, `sz`, `pr`, `nm`, `typ`) VALUES
('211511', 'Chef\'s Veg Wonder\r\n', '1', '450', 'Chef\'s Veg Wonder\r\n', 'veg'),
('565436', 'Chef\'s Veg Wonder', '2', '340', 'Chef\'s Veg Wonder', 'veg'),
('523116', 'Chef\'s Veg Wonder', '3', '300', 'Chef\'s Veg Wonder', 'VEG'),
('536531', 'Country Special', '1', '420', 'Country Special', 'veg'),
('542445', 'Country Special', '2', '340', 'Country Special', 'veg'),
('351624', 'Country Special', '3', '310', 'Country Special', 'veg');

-- --------------------------------------------------------

--
-- Table structure for table `test3`
--

DROP TABLE IF EXISTS `test3`;
CREATE TABLE IF NOT EXISTS `test3` (
  `fn` varchar(200) NOT NULL,
  `ln` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `gn` varchar(200) NOT NULL,
  `lc` varchar(200) NOT NULL,
  `cty` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `pin` varchar(200) NOT NULL,
  `m_no` varchar(200) NOT NULL,
  `e_id` varchar(200) NOT NULL,
  `pw` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test3`
--

INSERT INTO `test3` (`fn`, `ln`, `dob`, `gn`, `lc`, `cty`, `state`, `pin`, `m_no`, `e_id`, `pw`) VALUES
('parth', 'miyani', '01/01/1999', 'male', 'temple', 'asd', 'aaa', '1221', 'adsfdgh', 'aaa@gmail.com', 'aaa'),
('parth', 'mi', '31/01/1999', 'male', 'Temple', 'Navsari', 'Gujarat', '1233111', '1234484890', 'parth@gmail.com', '121212'),
('Nikhil', 'Kats', '31/05/1999', 'male', 'Temple', 'Navsari', 'Gujarat', '396450', '1234567894', 'nikhil@abc.com', '123123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
