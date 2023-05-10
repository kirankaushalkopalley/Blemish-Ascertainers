-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 11, 2014 at 03:07 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms_sri_indu`
--
CREATE DATABASE `cms_sri_indu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cms_sri_indu`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE IF NOT EXISTS `admin_data` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`Username`, `Password`) VALUES
('anand@sattvaq.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cdate` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `givenby` varchar(200) NOT NULL,
  `postid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `cdate`, `comment`, `givenby`, `postid`) VALUES
(1, 'Wed Apr 02 06:39:48 IST 2014', 'Comment', 'anand@sattvaq.com', 16),
(2, 'Wed Apr 02 06:48:20 IST 2014', 'uhf     owqe', 'anand@sattvaq.com', 16),
(3, 'Wed Apr 02 06:48:28 IST 2014', 'If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for!', 'anand@sattvaq.com', 16),
(4, 'Wed Apr 02 06:50:41 IST 2014', 'm\r\n', 'anand@sattvaq.com', 18),
(5, 'Fri Apr 04 22:28:52 IST 2014', 'fcgvhbjnkml\r\n', 'nu@g.c', 20);

-- --------------------------------------------------------

--
-- Table structure for table `discussion_data`
--

CREATE TABLE IF NOT EXISTS `discussion_data` (
  `discussion_id` int(30) NOT NULL AUTO_INCREMENT,
  `discussed_by` varchar(300) NOT NULL,
  `discussion_date` date NOT NULL,
  `discussion_desc` text NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`discussion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `discussion_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `searchdate` varchar(200) NOT NULL,
  `searchbyid` varchar(200) NOT NULL,
  `status` varchar(110) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hid`, `productid`, `searchdate`, `searchbyid`, `status`) VALUES
(2, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(3, 1, '2014-03-20', '', '0'),
(4, 1, '2014-03-20', '', '0'),
(5, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(6, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(7, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(8, 1, '2014-03-20', '', '0'),
(9, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(10, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(11, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(12, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(13, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(14, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(15, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(16, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(17, 1, '2014-03-20', '', '0'),
(18, 1, '2014-03-20', '', '0'),
(19, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(20, 1, '2014-03-20', '', '0'),
(21, 1, '2014-03-20', '', '0'),
(22, 1, '2014-03-20', '', '0'),
(23, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(24, 1, '2014-03-20', '', '0'),
(25, 1, '2014-03-20', '', '0'),
(26, 1, '2014-03-20', '', '0'),
(27, 1, '2014-03-20', '', '0'),
(28, 3, '2014-03-20', 'anandnandum@g.c', '0'),
(29, 3, '2014-03-20', 'anandnandum@g.c', '0'),
(30, 1, '2014-03-20', '', '0'),
(31, 3, '2014-03-20', 'anandnandum@g.c', '0'),
(32, 1, '2014-03-20', 'anandnandum@g.c', '0'),
(33, 1, '2014-03-20', '', '0'),
(34, 6, '2014-03-20', '', '0'),
(35, 0, '0000-00-00', '', '0'),
(36, 17, 'Fri Mar 21 18:59:59 IST 2014', 'a@g.c', '0'),
(37, 17, 'Fri Mar 21 19:16:16 IST 2014', 'a@g.c', '0'),
(38, 16, 'Fri Mar 21 19:16:23 IST 2014', 'a@g.c', '0'),
(39, 0, '2014-3-27', '1@g.c', 'login'),
(40, 0, '2014-3-27', '1@g.c', 'login'),
(41, 0, '2014-3-27', '1@g.c', 'logout'),
(42, 18, '2014-3-2', 'anand@sattvaq.com', 'search'),
(43, 17, '2014-3-2', 'anand@sattvaq.com', 'search'),
(44, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(45, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(46, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(47, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(48, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(49, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(50, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(51, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(52, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(53, 17, '2014-3-2', 'anand@sattvaq.com', 'search'),
(54, 17, '2014-3-2', 'anand@sattvaq.com', 'search'),
(55, 17, '2014-3-2', 'anand@sattvaq.com', 'search'),
(56, 17, '2014-3-2', 'anand@sattvaq.com', 'search'),
(57, 17, '2014-3-2', 'anand@sattvaq.com', 'search'),
(58, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(59, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(60, 16, '2014-3-2', 'anand@sattvaq.com', 'search'),
(61, 18, '2014-3-2', 'anand@sattvaq.com', 'search'),
(62, 18, '2014-3-2', 'anand@sattvaq.com', 'search'),
(63, 20, '2014-3-4', 'nu@g.c', 'search'),
(64, 20, '2014-3-4', 'nu@g.c', 'search'),
(65, 17, '2014-3-4', 'nu@g.c', 'search'),
(66, 21, '2014-3-4', 'nu@g.c', 'search'),
(67, 21, '2014-3-4', 'nu@g.c', 'search'),
(68, 18, '2014-3-4', 'nu@g.c', 'search'),
(69, 18, '2014-3-4', 'nu@g.c', 'search'),
(70, 20, '2014-3-4', 'nu@g.c', 'search'),
(71, 0, '2014-4-4', 'nu@g.c', 'logout');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `packageid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `num_of_codes` int(11) NOT NULL,
  `num_of_share` int(11) NOT NULL,
  `num_of_download` int(11) NOT NULL,
  PRIMARY KEY (`packageid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`packageid`, `name`, `duration`, `cost`, `num_of_codes`, `num_of_share`, `num_of_download`) VALUES
(6, 'Small', '200', '10', 20, 10, 12),
(7, 'Large', '22', '22', 22, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_category_data`
--

CREATE TABLE IF NOT EXISTS `post_category_data` (
  `Catid` int(20) NOT NULL AUTO_INCREMENT,
  `Cattitle` varchar(300) NOT NULL,
  `date_of_creation` varchar(100) NOT NULL,
  `who_created` varchar(300) NOT NULL,
  `caturl` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `last_edit_date` varchar(100) NOT NULL,
  PRIMARY KEY (`Catid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `post_category_data`
--

INSERT INTO `post_category_data` (`Catid`, `Cattitle`, `date_of_creation`, `who_created`, `caturl`, `status`, `last_edit_date`) VALUES
(1, 'busu', '2014-03-14', '123456123456', '', 'active', '2014-03-14'),
(2, 'Select Category   Enter Post Titl', 'Fri Feb 14 00:00:00 IST 2014', '123@g.c', 'http://www.yahoo.com/', 'active', 'Fri Feb 14 00:00:00 IST 2014'),
(3, 'basic', 'Fri Feb 14 00:00:00 IST 2014', '123@g.c', '', 'active', 'Fri Feb 14 00:00:00 IST 2014'),
(4, 'beginner', 'Fri Feb 14 00:00:00 IST 2014', '123@g.c', '', 'active', 'Fri Feb 14 00:00:00 IST 2014'),
(5, 'colour', 'Fri Feb 14 00:00:00 IST 2014', '123@g.c', '', 'active', 'Fri Feb 14 00:00:00 IST 2014'),
(6, 'date', 'Fri Feb 14 00:00:00 IST 2014', '123@g.c', '', 'active', 'Fri Feb 14 00:00:00 IST 2014'),
(7, 'plugins', 'Fri Feb 14 00:00:00 IST 2014', '123@g.c', '', 'active', 'Fri Feb 14 00:00:00 IST 2014');

-- --------------------------------------------------------

--
-- Table structure for table `post_data`
--

CREATE TABLE IF NOT EXISTS `post_data` (
  `Post_id` int(11) NOT NULL AUTO_INCREMENT,
  `Post_title` text NOT NULL,
  `Post_description` text NOT NULL,
  `Posted_by` varchar(300) NOT NULL,
  `date_of_post` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `Post_url` varchar(400) NOT NULL,
  `Catid` varchar(200) NOT NULL,
  `Post_tags` text NOT NULL,
  PRIMARY KEY (`Post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `post_data`
--

INSERT INTO `post_data` (`Post_id`, `Post_title`, `Post_description`, `Posted_by`, `date_of_post`, `status`, `Post_url`, `Catid`, `Post_tags`) VALUES
(16, 'If you have any question you can ask below or enter what you are looking for!', 'If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! If you have any question you can ask below or enter what you are looking for! ', '123@g.c', '2014-04-04', 'active', 'If_you_have_any_question_you_can_ask_below_or_enter_what_you_are_looking_for!_1394781647010', 'basic', ''),
(17, 'Search from Posts Type your search terms here', 'Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here Search from Posts Type your search terms here ', '123@g.c', '2014-04-04', 'active', 'Search_from_Posts_Type_your_search_terms_here_1394782958607', 'beginner', 'Search, from,Posts, Type, your, search, terms, here,'),
(18, 'Basic', 'trht', 'anand@sattvaq.com', '2014-04-02', 'active', 'Basic_1396399709068', '3', 'rege'),
(19, 'aate', 'f', 'anand@sattvaq.com', '2014-04-02', 'active', 'aate_1396399731777', '6', 'r'),
(20, '123', 'wze xrcty bun', 'nu@g.c', '2014-04-04', 'active', '123_1396630712493', '4', 'y h j j'),
(21, 'New Color Added', 'New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added ', 'nu@g.c', '2014-04-04', 'active', 'New_Color_Added_1396631548981', '5', 'New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added New Color Added '),
(22, 'trht', 'trht', 'nu@g.c', '2014-04-04', 'active', 'trht_1396632030955', '4', 'trht');

-- --------------------------------------------------------

--
-- Table structure for table `recent_search_data`
--

CREATE TABLE IF NOT EXISTS `recent_search_data` (
  `Search_id` int(11) NOT NULL AUTO_INCREMENT,
  `Search_Keyword` text NOT NULL,
  `date_of_search` date NOT NULL,
  `Searched_by` varchar(300) NOT NULL,
  PRIMARY KEY (`Search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `recent_search_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `response_type`
--

CREATE TABLE IF NOT EXISTS `response_type` (
  `Response_id` int(20) NOT NULL AUTO_INCREMENT,
  `who_discussed` varchar(300) NOT NULL,
  `when_discussed` date NOT NULL,
  `what_discussed` text NOT NULL,
  `discussion_id` int(11) NOT NULL,
  PRIMARY KEY (`Response_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `response_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `Username` varchar(300) NOT NULL,
  `Password` text NOT NULL,
  `Email` varchar(400) NOT NULL,
  `Birthday` date NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `phone` varchar(110) NOT NULL,
  `tou` varchar(110) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`Username`, `Password`, `Email`, `Birthday`, `Gender`, `phone`, `tou`) VALUES
('Laxman', '123456', '123@g.c', '2014-02-28', 'Male', '1231231234', '0'),
('SattvaQ', '1', '1@g.c', '1999-05-08', 'Female', '9492522678', 'user'),
('New User ', '123', 'nu@g.c', '2014-04-24', 'Male', '3132333120', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_packs`
--

CREATE TABLE IF NOT EXISTS `user_packs` (
  `user_pack_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(110) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `packid` int(11) NOT NULL,
  PRIMARY KEY (`user_pack_id`),
  KEY `requesterid` (`userid`),
  KEY `packid` (`packid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_packs`
--

INSERT INTO `user_packs` (`user_pack_id`, `userid`, `startdate`, `enddate`, `status`, `packid`) VALUES
(8, 'nu@g.c', '2014-04-04', '2014-04-26', 'active', 7);
