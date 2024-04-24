-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2023 at 01:13 AM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meatwale`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutimg`
--

CREATE TABLE `aboutimg` (
  `sliderId` int(22) NOT NULL,
  `image` varchar(256) NOT NULL,
  `heading` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `sliderId` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`sliderId`, `heading`, `description`) VALUES
(1, 'About us', ' <h3 class=\"newfont2\">Ordering raw meat shouldn\'t be harder than eating it.</h3><br>\r\n                                        <p align=\"justify\">\r\nMeatwale is simply the easiest way to order raw meat for delivery at your home. Whatever you\'re in the mood for, wherever you\'re in the mood for it, you\'ve got it. We are simply a call away. Meatwale.com is a registered trademark and we make sure to partner with only quality and deserving people who are willing to serve society with full hygiene. </p>\r\n\r\n<p align=\"justify\">Meatwale.com is the pioneer in the unique business model of delivering raw meat items at your door step. We are the leading non vegetarian food chain mainly for raw chicken and raw mutton. The idea behind is to serve the society by giving them a hassle free home delivery for these items. Yet India has an unorganized market for raw chicken and raw mutton and we want to create a platform where users can order non veg items by simply giving a call and we will be more than happy to serve the same at your door step. The idea is to help house wife by making quick decisions to make non veg food with a hassle free doorstep delivery.</p> ');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(22) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nameAdmin` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `imageAdmin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `userName`, `password`, `nameAdmin`, `email`, `imageAdmin`) VALUES
(1, 'adminMeatwale', 'sourceMeat!@#456', 'admin', 'tushar.kumar@sourcekey.in', '15191639273169.php');

-- --------------------------------------------------------

--
-- Table structure for table `built`
--

CREATE TABLE `built` (
  `categoryid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `built`
--

INSERT INTO `built` (`categoryid`, `image`, `heading`) VALUES
(1, '15097073623277.jpg', 'RAW MUTTON'),
(2, '16467918834767.phtml', 'aasdsa');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `image`, `heading`) VALUES
(1, '15097057646979.jpg', 'RAW CHICKEN'),
(2, '15097057957099.jpg', 'CHICKEN TANGRI'),
(3, '15097058976081.jpg', 'CHICKEN BONELESS'),
(4, '15097059158878.jpg', 'CHICKEN WINGS'),
(5, '15097059329153.jpg', 'CHICKEN THIGH');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(22) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(256) NOT NULL,
  `phone_no` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `email`, `address`, `phone_no`) VALUES
(1, 'joinhands@meatwale.com', 'SB Tower , 1/1A, 5th Floor, Sector-16A Film City, Noida ', '(+91)120-4562267,6645036 ,  9810231861');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(22) NOT NULL,
  `title` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `openhours` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `title`, `phoneno`, `openhours`, `description`) VALUES
(1, 'Welcome TO Meatwale.Com', '1800 2700 026', ' Monday : 10:00 am - 9:00 pm', '<p>Order raw meat &amp; get it delivered at your door steps.</p>\r\n\r\n<p>Well then, go and eat grass out there, but I will not stop eating the meat because I can&rsquo;t live without it dear friend.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `contant`
--

CREATE TABLE `contant` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cook`
--

CREATE TABLE `cook` (
  `categoryid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `qui` varchar(200) NOT NULL,
  `mrp` varchar(255) NOT NULL,
  `subheading` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cook`
--

INSERT INTO `cook` (`categoryid`, `image`, `heading`, `qui`, `mrp`, `subheading`) VALUES
(1, '15619858728966.jpg', 'CHICKEN LIME PUDINA SEEKH KEBAB', '200', '600', ''),
(2, '15619859094110.jpg', 'MUTTON SEEKH KEBAB', '500', '640', ''),
(3, '15619859269498.jpg', 'CHICKEN SEEKH KEBAB', '500', '580', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(22) NOT NULL,
  `name` varchar(256) NOT NULL,
  `image1` varchar(256) NOT NULL,
  `image2` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `image1`, `image2`, `address`, `description`) VALUES
(1, 'Puja', '15000335139366.jpg', '15000335134058.png', 'noida', '<p>Today we can tell you, thanks to your passion, hard work creativity, and expertise, you delivered us the most beautiful kitchen ever! It&rsquo;s been a beautiful ride, there were up&rsquo;s and down&rsquo;s, frustrations, delays at the same time great l'),
(2, 'Manisha', '15000335674997.jpg', '15000335672556.png', 'Delhi', '<p>Today we can tell you, thanks to your passion, hard work creativity, and expertise, you delivered us the most beautiful kitchen ever! Itâ€™s been a beautiful ride, there were upâ€™s and downâ€™s, frustrations, delays at the same time great looks.</p>'),
(3, 'Rinkiy', '15000336176471.jpg', '15000336174281.png', 'noida', '<p>Today we can tell you, thanks to your passion, hard work creativity, and expertise, you delivered us the most beautiful kitchen ever! It&rsquo;s been a beautiful ride, there were up&rsquo;s and down&rsquo;s, frustrations, delays at the same time great l');

-- --------------------------------------------------------

--
-- Table structure for table `datelist`
--

CREATE TABLE `datelist` (
  `id` int(11) NOT NULL,
  `date1` varchar(255) NOT NULL,
  `date2` varchar(255) NOT NULL,
  `date3` varchar(255) NOT NULL,
  `date4` varchar(255) NOT NULL,
  `date5` varchar(255) NOT NULL,
  `date6` varchar(255) NOT NULL,
  `date7` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datelist`
--

INSERT INTO `datelist` (`id`, `date1`, `date2`, `date3`, `date4`, `date5`, `date6`, `date7`) VALUES
(1, '11-02-2018', '12-02-2018', '14-02-2018', '15-02-2018', '16-02-2018', '17-02-2018', '18-02-2018');

-- --------------------------------------------------------

--
-- Table structure for table `frontcontact`
--

CREATE TABLE `frontcontact` (
  `contactId` int(22) NOT NULL,
  `txtName` varchar(256) NOT NULL,
  `txtEmail` varchar(256) NOT NULL,
  `txtMobile` varchar(256) NOT NULL,
  `txtQuery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homenumber`
--

CREATE TABLE `homenumber` (
  `id` int(22) NOT NULL,
  `phone_no` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homenumber`
--

INSERT INTO `homenumber` (`id`, `phone_no`) VALUES
(1, '1800 2700 026');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `InquiryId` int(22) NOT NULL,
  `employee_Id` varchar(255) NOT NULL,
  `employee_Name` varchar(255) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `manager_name` varchar(255) NOT NULL,
  `hod` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(22) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`) VALUES
(1, '15096881215121.png');

-- --------------------------------------------------------

--
-- Table structure for table `middle`
--

CREATE TABLE `middle` (
  `id` int(22) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `middle`
--

INSERT INTO `middle` (`id`, `heading`, `description`) VALUES
(1, ' Check out ! What Our Customer Speaks About us', '<p><strong>Check out ! What Our Customer Speaks About us</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I personally always hated to go to meat shops for buying meat where I have to stand in Queue which I always avoid, Well Meatwale.com has seriously solved this problem of mine.</p>\r\n\r\n<p>( Mr. Gautam --- Indirapuram )</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>I am very much delighted with the service of meat wale guys ,always kept their promises by delivering Fresh Meat always .Now I don&#39;t worry about the unexpected guests. All I do need to do is Give a call to meatwale team.</p>\r\n\r\n<p>( Mr. Sarfaraz Nawaz , Andheri, Mumbai )<br />\r\n<br />\r\n<br />\r\n<strong>About Meatwale.com ?</strong></p>\r\n\r\n<p>Meatwale.com is the pioneer in the unique business model of delivering raw meat items at your door step. At present we have fifty five plus stores across India. We are the leading non vegetarian food chain mainly for raw chicken /raw mutton and varieties of semi cooked non veg snacks.. The idea behind is to serve the society by giving them free home delivery for these items. Yet India has an unorganized market for raw chicken and raw mutton and we want to create a platform where users can order non veg items by simply giving a call and we will be more than happy to serve the same at your door step. The idea is to help a house wife by making quick decisions to make non veg food with a hassle free doorstep delivery.</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `middleimg`
--

CREATE TABLE `middleimg` (
  `id` int(22) NOT NULL,
  `image` varchar(256) NOT NULL,
  `heading` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `middleimg`
--

INSERT INTO `middleimg` (`id`, `image`, `heading`) VALUES
(1, '14968614127697.jpg', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `ourproduct`
--

CREATE TABLE `ourproduct` (
  `sliderId` int(22) NOT NULL,
  `image` varchar(256) NOT NULL,
  `heading` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ourproduct`
--

INSERT INTO `ourproduct` (`sliderId`, `image`, `heading`) VALUES
(1, '15124740409448.jpg', 'Raw Mutton'),
(2, '15097735579360.jpg', 'Raw Chicken'),
(3, '15445972719170.jpg', 'Non Veg Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(22) NOT NULL,
  `itemlist` varchar(255) NOT NULL,
  `list1` varchar(255) NOT NULL,
  `list2` varchar(255) NOT NULL,
  `list3` varchar(255) NOT NULL,
  `list4` varchar(255) NOT NULL,
  `list5` varchar(255) NOT NULL,
  `list6` varchar(255) NOT NULL,
  `list7` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `itemlist`, `list1`, `list2`, `list3`, `list4`, `list5`, `list6`, `list7`) VALUES
(1, 'Whole Chicken-1kg', '135', '135', '135', '135', '135', '', ''),
(2, 'Tandoori Chicken (750-850gm)', '120', '125', '120', '120', '125', '', ''),
(3, 'Chicken Full Leg', '165', '175', '175', '175', '175', '175', '175'),
(4, 'Chicken Tangri', '165', '175', '175', '175', '165', '', ''),
(5, ' Chicken Wings', '155', '165', '165', '165', '155', '', ''),
(7, 'Chicken Thigh Boneless', '175', '185', '185', '185', '195', '', ''),
(8, 'Chicken Breast Boneless', '135', '140', '140', '140', '135', '135', '135');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `sliderId` int(22) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`sliderId`, `image`) VALUES
(1, '16146005704194.png'),
(2, '16146005889842.png'),
(3, '16146006005418.png'),
(4, '16340186315127.jpg'),
(5, '16006723684232.png'),
(6, '16146004249713.png'),
(7, '16088005773876.jpg'),
(8, '16317887607792.jpg'),
(9, '15257620303149.jpg'),
(10, '15523941553211.jpeg'),
(11, '16026509497892.jpg'),
(12, '15674041137196.jpg'),
(13, '15633679049848.jpg'),
(14, '16278965099382.jpg'),
(15, '16317889128535.jpg'),
(16, '16274536177894.jpg'),
(17, '16278959001615.jpg'),
(18, '16087992245548.jpg'),
(19, '16123354323678.png'),
(20, '16087991251302.jpg'),
(21, '16278962312628.jpg'),
(22, '16274535129093.jpg'),
(23, '15633679425189.jpg'),
(24, '15483316473761.jpg'),
(28, '16088736447973.jpg'),
(29, '15795097162826.jpg'),
(30, '15621487575647.jpg'),
(31, '16317889993391.jpg'),
(32, '16026516033850.png'),
(33, '16274537513595.jpg'),
(34, '16278961718629.jpg'),
(35, '16317888638922.jpg'),
(36, '16088006032889.jpg'),
(37, '16274542173652.png'),
(38, '16278966798075.jpg'),
(39, '16146004917641.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(22) NOT NULL,
  `image` varchar(256) NOT NULL,
  `title` varchar(256) NOT NULL,
  `heading` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`, `heading`) VALUES
(1, '15096998684262.jpg', '', ''),
(2, '14999499447078.jpg', 'Give Life For<br>Your Dream <span>kitchen</span>', 'Why Over <span>1,000,000+</span> Customers Have Choosen Interior'),
(3, '14999499525259.jpg', 'Being the best<br>decorators', 'You can work with us from anywhere of the <span> India </span>'),
(4, '14999499618292.jpg', 'We Won Best<br>Designer <span>Awards</span>', 'We Won Best<br>Designer <span>Awards</span>'),
(5, '14999500128282.jpg', 'We Won Best<br>Designer <span>Awards</span>', 'Why Over <span>1,00,000+</span> Customers Have Choosen Interior'),
(6, '15097001355698.jpg', '', ''),
(7, '15097001412258.jpg', '', ''),
(8, '15097001472512.jpg', '', ''),
(9, '15097001692033.jpg', '', ''),
(10, '15156268582886.php', 'hhh', 'hhh');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `socialid` int(22) NOT NULL,
  `facebookURL` varchar(255) NOT NULL,
  `twitterURL` varchar(255) NOT NULL,
  `plusURL` varchar(255) NOT NULL,
  `inUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`socialid`, `facebookURL`, `twitterURL`, `plusURL`, `inUrl`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://plus.google.com', 'https://www.instagram.com/'),
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://plus.google.com', 'https://www.instagram.com/'),
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://plus.google.com', 'https://www.instagram.com/');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(22) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'kkumar', 'meatwale01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutimg`
--
ALTER TABLE `aboutimg`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `built`
--
ALTER TABLE `built`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contant`
--
ALTER TABLE `contant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cook`
--
ALTER TABLE `cook`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datelist`
--
ALTER TABLE `datelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homenumber`
--
ALTER TABLE `homenumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`InquiryId`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `middle`
--
ALTER TABLE `middle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `middleimg`
--
ALTER TABLE `middleimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourproduct`
--
ALTER TABLE `ourproduct`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `built`
--
ALTER TABLE `built`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cook`
--
ALTER TABLE `cook`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datelist`
--
ALTER TABLE `datelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `middle`
--
ALTER TABLE `middle`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ourproduct`
--
ALTER TABLE `ourproduct`
  MODIFY `sliderId` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `sliderId` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
