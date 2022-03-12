-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2022 at 04:47 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--
CREATE DATABASE IF NOT EXISTS `college` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `college`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `UserName`, `Password`, `Email_id`, `Phone_no`) VALUES
(101, 'Praneeta', '1234', 'praneeta@gmail.com', '7779995540'),
(102, 'Nancy', '1234', 'nancy123@gmail.com', '7778009722'),
(103, 'abcd', '123456', 'abcd@gmail.com', '1234567899');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `User_id` int(10) NOT NULL,
  `User_name` varchar(30) NOT NULL,
  `Res_id` int(10) NOT NULL,
  `item` varchar(50) NOT NULL,
  `price` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Cat_id` int(20) NOT NULL,
  `Cat_name` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery guy`
--

DROP TABLE IF EXISTS `delivery guy`;
CREATE TABLE IF NOT EXISTS `delivery guy` (
  `Delivery_id` int(10) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `F_name` varchar(20) NOT NULL,
  `L_name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone no` int(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Address` varchar(10) NOT NULL,
  PRIMARY KEY (`Delivery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback details`
--

DROP TABLE IF EXISTS `feedback details`;
CREATE TABLE IF NOT EXISTS `feedback details` (
  `Seller_id` int(10) NOT NULL,
  `User_id` int(10) NOT NULL,
  `Comment` varchar(30) NOT NULL,
  `Review star` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `Dish_id` int(10) NOT NULL,
  `Rest_id` int(10) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Details` varchar(30) NOT NULL,
  `Price` int(10) NOT NULL,
  `Image` varchar(30) NOT NULL,
  `Image_name` varchar(30) NOT NULL,
  PRIMARY KEY (`Dish_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order track`
--

DROP TABLE IF EXISTS `order track`;
CREATE TABLE IF NOT EXISTS `order track` (
  `Order_id` int(10) NOT NULL,
  `Track_id` int(10) NOT NULL,
  `User_id` int(10) NOT NULL,
  `Delivery_id` int(10) NOT NULL,
  `Track location` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `Status` varchar(20) NOT NULL,
  `Remark` varchar(20) NOT NULL,
  `Remark_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `Res_id` int(10) NOT NULL,
  `Cat_id` int(10) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Phone-no` int(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Url` varchar(30) NOT NULL,
  `Open_hrs` varchar(10) NOT NULL,
  `Close_hrs` varchar(10) NOT NULL,
  `Open days` varchar(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Images` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Res_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE IF NOT EXISTS `seller` (
  `Seller_id` int(10) NOT NULL,
  `Res_id` int(10) NOT NULL,
  `User name` varchar(20) NOT NULL,
  `F_name` varchar(20) NOT NULL,
  `L_name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_no` int(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Total_sell` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Cat_id` int(10) NOT NULL,
  PRIMARY KEY (`Seller_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `User_id` int(10) NOT NULL AUTO_INCREMENT,
  `User_name` varchar(30) NOT NULL,
  `F_name` varchar(30) NOT NULL,
  `L_name` varchar(30) NOT NULL,
  `Email_id` varchar(30) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `Image` varchar(256) NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `user` (`User_name`)
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `User_name`, `F_name`, `L_name`, `Email_id`, `Phone`, `Password`, `Address`, `Image`) VALUES
(201, 'Priya', 'Priya', 'Singh', 'priya123@gmail.com', '6664530032', '1234', 'vesu,surat', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
CREATE TABLE IF NOT EXISTS `user_order` (
  `Order_Id` int(10) NOT NULL,
  `User_Id` int(10) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `Quantity` varchar(10) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Status` varchar(40) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `Track_id` int(10) NOT NULL,
  PRIMARY KEY (`Order_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `kerul`
--
CREATE DATABASE IF NOT EXISTS `kerul` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kerul`;

-- --------------------------------------------------------

--
-- Table structure for table `kerul1`
--

DROP TABLE IF EXISTS `kerul1`;
CREATE TABLE IF NOT EXISTS `kerul1` (
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kerul1`
--

INSERT INTO `kerul1` (`f_name`, `l_name`, `email`, `phoneno`, `password`) VALUES
('kerul', 'chaudary', 'kerul01@gmail.com', 1234567890, '1234'),
('kerul', 'chaudary', 'kerul01@gmail.com', 1234567890, '1234');
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('nancy', '121314156'),
('para', '1234');
--
-- Database: `map`
--
CREATE DATABASE IF NOT EXISTS `map` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `map`;

-- --------------------------------------------------------

--
-- Table structure for table `makers`
--

DROP TABLE IF EXISTS `makers`;
CREATE TABLE IF NOT EXISTS `makers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makers`
--

INSERT INTO `makers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'kerul', 'Kolkata india', 22.861031, 151.123444, 'restaurant');
--
-- Database: `online_rest`
--
CREATE DATABASE IF NOT EXISTS `online_rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_rest`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `date`) VALUES
(6, 'admin', '1234', 'admin@gmail.com', '2022-02-21 06:38:02'),
(8, 'abc888', 'abcd', 'abc@gmail.com', '2022-02-21 08:04:13'),
(112, 'rohit', '7b0f81bdd2b24ba32cb27f6c16e6b900', 'rohitmrn@gmail.com', '2022-02-24 07:14:45'),
(113, 'para1', 'd79c8788088c2193f0244d8f1f36d2db', 'para1234@gmail.com', '2022-02-24 07:43:22'),
(114, 'kerul', 'a2a9495a619569da34191670e1bd2373', 'kerul01@gmail.com', '2022-02-24 07:49:36'),
(115, 'shaksi', 'e10adc3949ba59abbe56e057f20f883e', 'shaksi34@gmail.com', '2022-02-24 07:59:41'),
(116, 'akash', '25f0545844ca326df20d91e4ddfe2f23', 'akash01@gmail.com', '2022-02-24 08:11:18'),
(117, 'shubham ', 'dbc4d84bfcfe2284ba11beffb853a8c4', 'shubham15@gmail.com', '2022-02-27 17:06:30'),
(118, 'mahesh', 'd79c8788088c2193f0244d8f1f36d2db', 'mahesh2@gmail.com', '2022-02-27 17:08:00'),
(119, 'aashi', 'dbc4d84bfcfe2284ba11beffb853a8c4', 'aashi1@gmail.com', '2022-03-03 14:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

DROP TABLE IF EXISTS `admin_codes`;
CREATE TABLE IF NOT EXISTS `admin_codes` (
  `id` int(222) NOT NULL AUTO_INCREMENT,
  `codes` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `del_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(30) NOT NULL,
  `date` timestamp(5) NULL DEFAULT CURRENT_TIMESTAMP(5),
  PRIMARY KEY (`del_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`del_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `date`) VALUES
(1, 'shubham1', 'shubham', 'bhagat', 'Alpha01@gmail.com', '2041237654', '6537e99af2c2223642df9f70a0b5afca', 'ssewcev', NULL),
(3, 'Akash1', 'akash', 'shendage', 'Akash0198@gmail.com', '1123456789', 'c820ec9e8e1d71265ddb048afa8469cc', '11,nagar', '2022-03-02 17:28:05.81035'),
(6, 'kerul1', 'kerul', 'chaudhari', 'kerul1@gmail.com', '9234567889', '31081ad4bbd4f3bd0e159d3d63bf19bb', '12,bardoli', '2022-03-03 16:50:19.27571'),
(7, 'pranav1', 'pranav', 'shete', 'pranav05@gmail.com', '7898765449', 'fce28e6442d3c3cf07cb2fbfd271c640', '01,nagar', '2022-03-04 12:17:20.64108');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int(222) NOT NULL AUTO_INCREMENT,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(11, 51, 'Bonefish', 'Three ounces of lightly seasoned fresh tilapia ', '55.77', '6228e3394435a.jpg'),
(13, 49, 'Uno Pizzeria & Grill', 'Kids can choose their pasta shape, type of sauce, favorite veggies (like broccoli or mushrooms)', '12.35', '5ad7597aa0479.jpg'),
(14, 55, 'Red Robins Chick on a Stick', '', '34.99', '62261c3f7b830.jpg'),
(15, 51, 'Lyfe Kitchens Tofu Taco', 'This chain, known for a wide selection of vegetarian and vegan choices', '11.99', '5ad75a1869e93.jpg'),
(16, 57, 'Houlihans Mini Cheeseburger', '', '25.90', '6226eb16001b0.jpg'),
(19, 55, 'chiken burger', 'chiken corner', '25.90', '6228e2d939b76.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `u_id` int(222) NOT NULL,
  `seller_id` int(222) NOT NULL,
  `del_id` int(222) NOT NULL,
  `your feedback` varchar(222) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `image` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(48, 5, 'Hari Burger', 'HariBurger@gmail.com', ' 090412 64676', 'HariBurger.com', '7am', '4pm', 'mon-tue', ' Palace,   natwar jalandhar', '5ad74ce37c383.jpg', '2018-04-18 13:49:23'),
(49, 5, 'The Great Kabab Factory', 'kwbab@gmail.com', '011 2677 9070', 'kwbab.com', '6am', '5pm', 'mon-fri', 'Radisson Blu Plaza Hotel, Delhi Airport, NH-8, New Delhi, 110037', '5ad74de005016.jpg', '2018-04-18 13:53:36'),
(50, 6, 'Aarkay Vaishno Dhaba', 'Vaishno@gmail.com', '090410 35147', 'Vaishno.com', '6am', '6pm', 'mon-sat', 'Bhargav Nagar, Jalandhar - Nakodar Rd, Jalandhar, Punjab 144003', '5ad74e5310ae4.jpg', '2018-04-18 13:55:31'),
(51, 7, 'Martini', 'martin@gmail.com', '3454345654', 'martin.com', '8am', '4pm', 'mon-thu', '399 L Near Apple Showroom, Model Town,', '5ad74ebf1d103.jpg', '2018-04-18 13:57:19'),
(53, 5, 'kriyana store', 'kari@gmail.com', '4512545784', 'kari.com', '9am', '8pm', '48', '                                         vessu                                                           ', '6226d8faac5fc.jpg', '2022-03-08 04:18:02'),
(55, 7, 'Alpha', 'Alpha01@gmail.com', '1234567879', 'abbc.com', '8am', '8pm', 'mon-sat', ' 11,piplod ', '621fbbbe21471.jpg', '2022-03-02 18:47:26'),
(56, 12, 'Alpha', 'Alpha01@gmail.com', '1234567879', 'abbc.com', '8am', '8pm', 'mon-sat', '01,piplod', '621a5ed5180c9.jpg', '2022-02-26 17:09:41'),
(57, 6, 'PizzaZone', 'pizzazone@hotmail.com', '7878345412', 'www.pizzzazone.com', '10am', '8pm', '24hr-x7', 'vesu,surat', '62207b05a3f6e.jpg', '2022-03-03 08:23:33'),
(58, 6, 'D pizza', 'dpizza19@gmail.com', '7887983789', 'abcd.com', '7am', '8pm', 'mon-sat', '11,surat', '622204d41684d.jpg', '2022-03-04 12:23:48'),
(59, 15, 'oscar', 'abc2@gmail.com', '2041237654', 'oscar.com', '11am', '6pm', 'mon-thu', '11,surat, gujarat', '62260cd41ba96.jpg', '2022-03-07 13:47:00'),
(60, 12, 'KFC', 'kfc01@gmail.com', '8765762786', 'kfc.com', '11am', '8pm', '48', '                                                                                                    dindoli', '6226d93dab07f.jpg', '2022-03-08 04:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

DROP TABLE IF EXISTS `res_category`;
CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'grill', '2018-04-14 18:45:28'),
(6, 'pizza', '2018-04-14 18:44:56'),
(7, 'pasta', '2018-04-14 18:45:13'),
(8, 'thaifood', '2018-04-14 18:32:56'),
(11, 'Non-veg', '2022-02-21 13:41:40'),
(12, 'Punjabi Thali', '2022-03-02 18:48:48'),
(14, 'Veg Biryani', '2022-03-03 16:53:10'),
(15, 'sizzler', '2022-03-07 13:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

DROP TABLE IF EXISTS `sell`;
CREATE TABLE IF NOT EXISTS `sell` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `l_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`s_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(101, 'nancy', 'nancy', 'bhagat', 'nancybhagat881@gmail.com', '7778009733', 'nancy12', '91-raghukul nagar cr patil road dindoli');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
CREATE TABLE IF NOT EXISTS `seller` (
  `seller_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `date` timestamp(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5),
  PRIMARY KEY (`seller_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `date`) VALUES
(1, 'shivani', 'shendage', 'shendage', 'abc29@gmail.com', '12345670', '1234567890', '1,dindoli', '2022-03-03 07:03:28.90267'),
(4, 'pranav1', 'pranav', 'shete', 'pranav01@gmail.com', '9999999999', '6c0a4ce2ce842f02da7c80a0a7b122dd', '05,ahemdnagar', '2022-03-04 12:15:21.83804');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(31, 'nancynavjot789', 'navjot', 'singh', 'ns949405@gmail.com', '9041240385', 'd41d8cd98f00b204e9800998ecf8427e', 'ragukul nagar cr patil road dindoli', 1, '2022-03-02 08:53:11'),
(33, 'shivani', 'pranita', 'deshmukh', 'shivu11@gmail.com', '1234567879', '6de54cc8c5070245d1003e136f311159', '11,dindoli ', 1, '2022-02-21 06:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

DROP TABLE IF EXISTS `users_orders`;
CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int(222) NOT NULL AUTO_INCREMENT,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(37, 31, 'jklmno', 5, '17.99', 'closed', '2018-04-18 19:51:50'),
(38, 31, 'Red Robins Chick on a Stick', 2, '34.99', NULL, '2018-04-18 19:52:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
