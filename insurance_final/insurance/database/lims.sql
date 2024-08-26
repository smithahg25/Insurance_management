-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2020 at 02:17 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lims`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE IF NOT EXISTS `agent` (
  `agent_id` varchar(50) NOT NULL,
  `agent_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agent_password`, `name`, `branch`, `phone`) VALUES
('111', '222', 'megha', 'manglore', '01598745682'),
('1610', '1610', 'madhu', 'mysore', '01698484654'),
('222', '333', 'Shravan', 'banglore', '01521302251'),
('555', '666', 'Amit ', 'udupi', '00111'),
('agent007', '111', 'Rafiq ', 'manglore', '654654654645'),
('agent01', '12345', 'Manoj', 'udupi', '879354232');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_id` varchar(200) NOT NULL,
  `client_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `policy_id` varchar(50) NOT NULL,
  `agent_id` varchar(20) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_password`, `name`, `sex`, `birth_date`, `marital_status`,  `phone`, `address`, `policy_id`, `agent_id`, ) VALUES
('1511986023', '123', 'John Green', 'Male', '11-05-1985', 'Married',  '013548743688', 'Uttara', '2', '555', ),
('1511986129', '123', 'Aemon Task', 'Male', '10-09-1970', 'Married',  '54189465100', 'Dhaka', '1', '555', ),
('1511986256', '123', 'Gareth Walker', 'Male', '05-09-1987', 'Divorced', '0169780980', 'Noakhali', '3', '555', ),
('1511986409', '123', 'Hillary Clinton', 'Female', '15-09-1978', 'Married', '074740548974', 'New York', '1', '555', ),
('1511986641', '123', 'Salman Muktadir', 'Male', '14-02-1992', 'Single', '987451315', 'Dhaka', '2', '555', ),
('1511986754', '123', 'Ashraf Bin Shahadat', 'Male', '03-10-1996', 'Single',  '01658794121', 'Chittagong', '2', '555',),
('1511986912', '123', 'Tisha Khan', 'Female', '19-08-1990', 'Married',  '8798451321320', 'Dhaka', '3', '555', ),
('1511987011', '123', 'S. a. Sadik', 'Male', '05-03-1987', 'Married', '01515644470', 'Hatirpool, Dhaka', '3', '222', ),
('1511987599', '123', 'Aamir Khan', 'Male', '14-03-1965', 'Married', '01833036524', 'Banani, Dhaka', '2', '222', ),
('1511987920', '123', 'Emre Can', 'Male', '12-03-1992', 'Married', '012589746', 'Liverpool', '2', '111', ),


-- --------------------------------------------------------

--
-- Table structure for table `nominee`
--

CREATE TABLE IF NOT EXISTS `nominee` (
  `nominee_id` varchar(200) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(50) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nominee`
--

INSERT INTO `nominee` (`nominee_id`, `client_id`, `name`, `sex`, `birth_date`, `relationship`, `priority`, `phone`) VALUES
('1511986023-414821017', '1511986023', 'Martha Green', 'Female', '15-08-1990', 'Wife', '2nd', '01502816848'),
('1511986129-562418685', '1511986129', 'Aegon Task', 'Male', '10-08-2000', 'Son', '1st', '0152487632'),
('1511986256-1001633290', '1511986256', 'Edmond Walker', 'Male', '12-07-2001', 'Son', '1st', '0187455214854'),
('1511986409-1583368932', '1511986409', 'Chelsea Clinton', 'Female', '26-10-1996',  'Daughter', '1st', '41854548408'),
('1511986570-225462542', '1511986409', 'Bill Clinton', 'Male', '14-11-1970', 'Husband', '2nd', '6546513258451'),
('1511986641-1504036491', '1511986641', 'Salma Khatun', 'Female', '05-06-1975',  'Mother', '1st', '541984516518'),
('1511986754-53418428', '1511986754', 'Ratul BIn Tajul', 'Male', '12-09-1992',  'Brother', '1st', '025884596844'),
('1511986912-1024403548', '1511986912', 'Faruki Khan', 'Male', '10-09-1989',  'Husband', '1st', '5841561651465'),
('1511987011-183007296', '1511987011', 'Salman Mohammad', 'Male', '15-04-1989',  'Brother', '1st', '01744237435'),
('1511987599-513216278', '1511987599', 'Kiran Rao', 'Female', '07-11-1973', 'Wife', '1st', '01239924475'),
('1511987920-2105200552', '1511987920', 'Who Can', 'Female', '16-01-1968', 'Mother', '1st', '4984468151320'),

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `recipt_no` varchar(20) NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `due` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL,
  `agent_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`recipt_no`, `client_id`, `month`, `amount`, `due`, `fine`, `agent_id`) VALUES
('1511987179_452089622', '1511986023', 'May ', '6500', '0', '0', '555'),
('1511987230_390658416', '1511986023', 'July', '6000', '0', '500', '555'),
('1511987272_936407539', '1511986129', 'January', '3000', '0', '0', '555'),
('1511987294_157536829', '1511986129', 'February', '3000', '0', '0', '555'),
('1511987356_228689839', '1511986256', 'September', '13000', '0', '0', '555'),
('1511987375_208594029', '1511986256', 'October', '13000', '0', '0', '555'),
('1511987407_616696691', '1511986409', 'November', '3000', '0', '0', '555'),
('1511987433_196711163', '1511986409', 'December', '3000', '0', '0', '555'),
('1511987516_243604186', '1511986641', 'March', '6500', '0', '0', '555'),
('1511987592_140845877', '1511987011', 'April', '13000', '0', '0', '555'),
('1511987614_130742935', '1511987011', 'July', '13000', '0', '0', '555'),
('1511987665_189868060', '1511986912', 'August', '13000', '0', '0', '555'),
('1511987683_122084269', '1511986912', 'September', '10000', '0', '3000', '555'),
('1511987717_198373690', '1511986912', 'October', '13000', '0', '0', '555'),
('1511987778_123379304', '1511986256', 'June', '13000', '0', '0', '555'),
('1511988103_361528786', '1511987920', 'May ', '6500', '0', '0', '111'),
('1511988119_162172016', '1511987920', 'June', '6500', '0', '0', '111'),


-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE IF NOT EXISTS `policy` (
  `policy_id` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `health_status` varchar(50) NOT NULL,
  `system` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `coverage` varchar(50) NOT NULL,
  `age_limit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy`
--

INSERT INTO `policy` (`policy_id`, `term`, `health_status`, `system`, `payment_method`, `coverage`, `age_limit`) VALUES
('1', '10 year', '500000', '3000', 'Cash/Check', '100%', '50'),
('2', '10 Years', '1000000', '6500', 'Cash/Check', '100%', '50'),
('3', '10 Years', '2000000', '13000', 'Cash/Check', '100%', '50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
 ADD PRIMARY KEY (`agent_id`), ADD UNIQUE KEY `agent_id` (`agent_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`client_id`), ADD UNIQUE KEY `client_id` (`client_id`);

--
-- Indexes for table `nominee`
--
ALTER TABLE `nominee`
 ADD PRIMARY KEY (`nominee_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`recipt_no`), ADD UNIQUE KEY `recipt_no` (`recipt_no`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
 ADD PRIMARY KEY (`policy_id`), ADD UNIQUE KEY `policy_id` (`policy_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
