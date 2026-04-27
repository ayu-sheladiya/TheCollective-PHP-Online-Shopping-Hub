-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2026 at 07:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'Dark Clay'),
(22, 'Cognac'),
(23, 'Coffee'),
(24, 'Charcoal'),
(25, 'Navy'),
(26, 'Fuchsia'),
(27, 'Olive'),
(28, 'Burgundy'),
(29, 'Midnight Blue');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_message`
--

CREATE TABLE `tbl_contact_message` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact_message`
--

INSERT INTO `tbl_contact_message` (`id`, `name`, `email`, `phone`, `datetime`, `message`) VALUES
(1, 'Ayu', 'ayu@gmail.com', '9876543210', '2026-04-19 18:22:10', 'Hey! I am Ayu Sheladiya. I want a my past order Invoice.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Afghanistan'),
(4, 'American Samoa'),
(5, 'Andorra'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegovina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Christmas Island'),
(46, 'Cocos (Keeling) Islands'),
(47, 'Colombia'),
(48, 'Comoros'),
(49, 'Congo'),
(50, 'Cook Islands'),
(51, 'Costa Rica'),
(52, 'Croatia (Hrvatska)'),
(53, 'Cuba'),
(54, 'Cyprus'),
(55, 'Czech Republic'),
(56, 'Denmark'),
(57, 'Djibouti'),
(58, 'Dominica'),
(59, 'Dominican Republic'),
(60, 'East Timor'),
(61, 'Ecuador'),
(62, 'Egypt'),
(63, 'El Salvador'),
(64, 'Equatorial Guinea'),
(65, 'Eritrea'),
(66, 'Estonia'),
(67, 'Ethiopia'),
(68, 'Falkland Islands (Malvinas)'),
(69, 'Faroe Islands'),
(70, 'Fiji'),
(71, 'Finland'),
(72, 'France'),
(73, 'France, Metropolitan'),
(74, 'French Guiana'),
(75, 'French Polynesia'),
(76, 'French Southern Territories'),
(77, 'Gabon'),
(78, 'Gambia'),
(79, 'Georgia'),
(80, 'Germany'),
(81, 'Ghana'),
(82, 'Gibraltar'),
(83, 'Guernsey'),
(84, 'Greece'),
(85, 'Greenland'),
(86, 'Grenada'),
(87, 'Guadeloupe'),
(88, 'Guam'),
(89, 'Guatemala'),
(90, 'Guinea'),
(91, 'Guinea-Bissau'),
(92, 'Guyana'),
(93, 'Haiti'),
(94, 'Heard and Mc Donald Islands'),
(95, 'Honduras'),
(96, 'Hong Kong'),
(97, 'Hungary'),
(98, 'Iceland'),
(99, 'India'),
(100, 'Isle of Man'),
(101, 'Indonesia'),
(102, 'Iran (Islamic Republic of)'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Ivory Coast'),
(108, 'Jersey'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kosovo'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Latvia'),
(122, 'Lebanon'),
(123, 'Lesotho'),
(124, 'Liberia'),
(125, 'Libyan Arab Jamahiriya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macau'),
(130, 'Macedonia'),
(131, 'Madagascar'),
(132, 'Malawi'),
(133, 'Malaysia'),
(134, 'Maldives'),
(135, 'Mali'),
(136, 'Malta'),
(137, 'Marshall Islands'),
(138, 'Martinique'),
(139, 'Mauritania'),
(140, 'Mauritius'),
(141, 'Mayotte'),
(142, 'Mexico'),
(143, 'Micronesia, Federated States of'),
(144, 'Moldova, Republic of'),
(145, 'Monaco'),
(146, 'Mongolia'),
(147, 'Montenegro'),
(148, 'Montserrat'),
(149, 'Morocco'),
(150, 'Mozambique'),
(151, 'Myanmar'),
(152, 'Namibia'),
(153, 'Nauru'),
(154, 'Nepal'),
(155, 'Netherlands'),
(156, 'Netherlands Antilles'),
(157, 'New Caledonia'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Northern Mariana Islands'),
(165, 'Norway'),
(166, 'Oman'),
(167, 'Pakistan'),
(168, 'Palau'),
(169, 'Palestine'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Serbia'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Slovakia'),
(197, 'Slovenia'),
(198, 'Solomon Islands'),
(199, 'Somalia'),
(200, 'South Africa'),
(201, 'South Georgia South Sandwich Islands'),
(202, 'Spain'),
(203, 'Sri Lanka'),
(204, 'St. Helena'),
(205, 'St. Pierre and Miquelon'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard and Jan Mayen Islands'),
(209, 'Swaziland'),
(210, 'Sweden'),
(211, 'Switzerland'),
(212, 'Syrian Arab Republic'),
(213, 'Taiwan'),
(214, 'Tajikistan'),
(215, 'Tanzania, United Republic of'),
(216, 'Thailand'),
(217, 'Togo'),
(218, 'Tokelau'),
(219, 'Tonga'),
(220, 'Trinidad and Tobago'),
(221, 'Tunisia'),
(222, 'Turkey'),
(223, 'Turkmenistan'),
(224, 'Turks and Caicos Islands'),
(225, 'Tuvalu'),
(226, 'Uganda'),
(227, 'Ukraine'),
(228, 'United Arab Emirates'),
(229, 'United Kingdom'),
(230, 'United States'),
(231, 'United States minor outlying islands'),
(232, 'Uruguay'),
(233, 'Uzbekistan'),
(234, 'Vanuatu'),
(235, 'Vatican City State'),
(236, 'Venezuela'),
(237, 'Vietnam'),
(238, 'Virgin Islands (British)'),
(239, 'Virgin Islands (U.S.)'),
(240, 'Wallis and Futuna Islands'),
(241, 'Western Sahara'),
(242, 'Yemen'),
(243, 'Zaire'),
(244, 'Zambia'),
(245, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(11, 'Ayu', '', 'ayu@gmail.com', '9876543210', 99, '87 - RadhaKrishna, Valak Patiya, Surat', 'Surat', 'Gujarat', '395006', 'Ayu', '', '9876543210', 99, '87 - RadhaKrishna, Valak Patiya, Surat', 'Surat', 'Gujarat', '395006', 'Ayu', '', '9876543210', 99, '87 - RadhaKrishna, Valak Patiya, Surat', 'Surat', 'Gujarat', '395006', 'fae38bd94701cdf2a9d114425cb40292', '86a05f5184f2c075eecb2c635babc005', '2026-04-19 05:31:33', '1776645093', 1),
(12, 'pinal', '', 'pinal@gmail.com', '9756363686', 99, '87 - RadhaKrishna, Valak Patiya, Surat', 'Surat', 'Gujarat', '395006', 'pinal', '', '9864646369', 99, '87 - RadhaKrishna, Valak Patiya, Surat', 'Surat', 'Gujarat', '395006', 'pinal', '', '9864646369', 99, '87 - RadhaKrishna, Valak Patiya, Surat', 'Surat', 'Gujarat', '395006', '2d428fd9df10e95e650fc965df6a21a6', '1909c564a7ef40c773f3ce35688dd02e', '2026-04-19 08:38:39', '1776656319', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(9, 'Invoice ', 'You can download your Invoice in your profile', '\n<br><b><u>Product Item 1</u></b><br>\nProduct Name: Classic Oxford Shirt<br>\nSize: XS<br>\nColor: Green<br>\nQuantity: 1<br>\nUnit Price: 2200<br>\n            \n<br><b><u>Product Item 2</u></b><br>\nProduct Name: No Days Off Premium Brown Hoodie<br>\nSize: <br>\nColor: <br>\nQuantity: 1<br>\nUnit Price: 1649<br>\n            \n<br><b><u>Product Item 3</u></b><br>\nProduct Name: Premium Wool Overcoat<br>\nSize: XS<br>\nColor: White<br>\nQuantity: 1<br>\nUnit Price: 9500<br>\n            ', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Tops', 1),
(2, 'Bottoms', 1),
(3, 'Outerwear', 1),
(14, 'Hoodies', 7),
(15, 'Coats & Jackets', 7),
(26, 'Boys', 10),
(27, 'Girls', 10),
(32, 'Dresses', 7),
(33, 'Tops', 7),
(34, 'T-Shirts & Vests', 7),
(35, 'Pants & Leggings', 7),
(36, 'Sportswear', 7),
(37, 'Plus Size Clothing', 7),
(38, 'Socks & Hosiery', 7),
(57, 'Belts', 1),
(58, 'Multipacks', 1),
(59, 'Other Accessories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'How to find an item?', '<h4 style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\"><span style=\"font-family: Arial;\">We have a wide range of fabulous products to choose from.</span><br></span></font><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\"><span style=\"font-family: Arial;\">Tip 1: If you\'re looking for a specific product, use the keyword search box located at the top of the site. Simply type what you are looking for, and prepare to be amazed!</span><br></span><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px; font-family: Arial;\">Tip 2: If you want to explore a category of products, use the Shop Categories in the upper menu, and navigate through your favorite categories where we\'ll feature the best products in each.</span></font></h4><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><br></h3>\r\n'),
(2, 'What is your return policy?', '<h4><span style=\"color: rgb(10, 10, 10); font-family: Arial;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;\"=\"\">You have 15 days to make a refund request after your order has been delivered.</span></h4>\r\n'),
(3, ' I received a defective/damaged item, can I get a refund?', '<h4><span style=\"font-family: Arial;\">In case the item you received is damaged or defective, you could return an item in the same condition as you received it with the original box and/or packaging intact. Once we receive the returned item, we will inspect it and if the item is found to be defective or damaged, we will process the refund along with any shipping fees incurred.</span></h4>\r\n'),
(4, 'When are ‘Returns’ not possible?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><span style=\"font-family: Arial;\">There are a few certain scenarios where it is difficult for us to support returns:</span></p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" background-color:=\"\" rgb(250,=\"\" 250,=\"\" 250);\"=\"\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Return request is made outside the specified time frame, of 15 days from delivery.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Product is used, damaged, or is not in the same condition as you received it.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Specific categories like innerwear, lingerie, socks and clothing freebies etc.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Defective products which are covered under the manufacturer\'s warranty.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Any consumable item which has been used or installed.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Products with tampered or missing serial numbers.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Anything missing from the package you\'ve received including price tags, labels, original packing, freebies and accessories.</span></li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\"><span style=\"font-family: Arial;\">Fragile items, hygiene related items.</span></li></ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'Rs. '),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'Review not found', 'Review not found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shopping', 'Continue Shopping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Clothing', 1),
(7, 'Clothing', 2),
(10, 'Clothing', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(6, 4, 'Classic Oxford Shirt', 'XS', 'Green', '1', '2200', '1776645724'),
(7, 11, 'No Days Off Premium Brown Hoodie', '', '', '1', '1649', '1776645724'),
(8, 6, 'Premium Wool Overcoat', 'XS', 'White', '1', '9500', '1776645724'),
(9, 4, 'Classic Oxford Shirt', 'XS', 'Green', '1', '2200', '1776656503'),
(10, 2, 'Raw Edge Relaxed Fit', 'XS', 'Blue', '1', '3200', '1776656503'),
(11, 10, 'Courtside Culture Aesthetic Hoodie', 'XS', 'White', '1', '1899', '1776672316'),
(12, 30, 'Urban Explorer Faux-Leather Moto Set', 'XS', 'Blue', '1', '799', '1776672316'),
(13, 2, 'Raw Edge Relaxed Fit', 'XS', 'Blue', '1', '3200', '1776672316'),
(14, 10, 'Courtside Culture Aesthetic Hoodie', 'XS', 'White', '1', '1899', '1776673160'),
(15, 2, 'Raw Edge Relaxed Fit', 'XS', 'Blue', '1', '3200', '1776673160');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p data-path-to-node=\"5\">At <b data-path-to-node=\"5\" data-index-in-node=\"3\">Collective</b>, we believe that fashion should be simple but powerful. Our brand is built for people who love clean designs and high-quality clothes. We don\'t just follow every trend; we focus on creating \"essentials\"—the kind of clothes that always look good and never go out of style.</p><h3 data-path-to-node=\"6\"><b data-path-to-node=\"6\" data-index-in-node=\"0\">Why We Started</b></h3><p data-path-to-node=\"7\">The name <b data-path-to-node=\"7\" data-index-in-node=\"9\">\'Collective\'</b> comes from our idea of bringing together the best fabrics and the best designs in one place. We wanted to create an online store where you can find premium streetwear and everyday outfits that feel as good as they look.</p><h3 data-path-to-node=\"8\"><b data-path-to-node=\"8\" data-index-in-node=\"0\">What We Offer</b></h3><ul data-path-to-node=\"9\"><li><p data-path-to-node=\"9,0,0\"><b data-path-to-node=\"9,0,0\" data-index-in-node=\"0\">Minimalist Design:</b> No loud logos or messy patterns. Just clean, sharp, and aesthetic looks.</p></li><li><p data-path-to-node=\"9,1,0\"><b data-path-to-node=\"9,1,0\" data-index-in-node=\"0\">Premium Quality:</b> We use heavy, soft, and long-lasting fabrics so your clothes stay fresh for a long time.</p></li><li><p data-path-to-node=\"9,2,0\"><b data-path-to-node=\"9,2,0\" data-index-in-node=\"0\">Perfect Fit:</b> From oversized tees to relaxed hoodies, we focus on making sure our clothes fit you perfectly.</p></li></ul><h3 data-path-to-node=\"10\"><b data-path-to-node=\"10\" data-index-in-node=\"0\">Our Promise</b></h3><blockquote data-path-to-node=\"11\"><p data-path-to-node=\"11,0\">\"Style is a collection of who you are.\"</p></blockquote><p data-path-to-node=\"12\">We are more than just an online shop. We are a community of people who appreciate the \"less is more\" lifestyle. We promise to provide a smooth shopping experience, fast delivery, and the best quality in every box we ship.</p><p data-path-to-node=\"13\"><b data-path-to-node=\"13\" data-index-in-node=\"0\">Join the Collective. Upgrade your wardrobe today.</b></p>\r\n', 'about-banner.jpg', 'About Us', 'about, about us, about fashion, about company, about ecommerce php project', 'Our goal has always been to get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.', 'FAQ', 'faq-banner.jpg', 'FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(56, 11, 'Ayu', 'ayu@gmail.com', '2026-04-19 17:42:04', '', 13349, '', '', '', '', '456789912345678', 'UPI', 'Pending', 'Pending', '1776645724'),
(57, 12, 'pinal', 'pinal@gmail.com', '2026-04-19 20:41:43', '', 5400, '', '', '', '', '', 'Credit / Debit Card', 'Completed', 'Completed', '1776656503'),
(58, 11, 'Ayu', 'ayu@gmail.com', '2026-04-20 01:05:16', '', 5898, '', '', '', '', '', 'Cash On Delivery', 'Pending', 'Pending', '1776672316'),
(59, 11, 'Ayu', 'ayu@gmail.com', '2026-04-20 01:19:20', '', 5099, '', '', '', '', '34567891456789', 'UPI', 'Completed', 'Completed', '1776673160');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(1, 'Collective Essential Heavyweight Tee', '2500', '1800', 50, 'product-featured-1.jpg', '<p>Crafted from 100% organic heavy-weight cotton for a structured, relaxed fit. Features a classic crew neckline and minimal detailing.</p>', 'Crafted from 100% organic cotton with a relaxed fit.', '<p>Organic Cotton</p>', '<p>New</p>', '<p>30 Days Return</p>', 120, 1, 1, 33),
(2, 'Raw Edge Relaxed Fit', '4500', '3200', 27, 'product-featured-2.jpg', '<p>A premium loopback french terry Jacket with dropped shoulders and a raw edge hem for a modern, architectural silhouette.</p>', 'Premium loopback french terry Jacket with dropped shoulders.', '<p>French Terry</p>', '<p>New</p>', '<p>30 Days Return</p>', 94, 1, 1, 15),
(3, 'Minimalist Chino Trousers', '3500', '2800', 40, 'product-featured-3.jpg', '<p>Tailored straight-leg chinos made from a breathable stretch-cotton blend. Designed for effortless styling and all-day comfort.</p>', 'Tailored straight-leg chinos made from a stretch-cotton blend.', '<p>Stretch Cotton</p>', '<p>New</p>', '<p>30 Days Return</p>', 200, 1, 1, 2),
(4, 'Classic Oxford Shirt', '3000', '2200', 58, 'product-featured-4.jpg', '<p>The foundational Oxford shirt. Features a button-down collar, pristine white finish, and perfectly balanced proportions for any occasion.</p>', 'The foundational Oxford shirt with a pristine white finish.', '<p>Oxford Cotton</p>', '<p>New</p>', '<p>30 Days Return</p>', 157, 1, 1, 1),
(5, 'Textured Knit Polo', '5999', '4999', 25, 'product-featured-5.jpg', '<p>A sophisticated take on the classic polo. Made from an ultra-soft textured knit fabric with an open collar and clean, ribbed edges.</p>', 'Ultra-soft textured knit fabric with an open collar.', '<p>Textured Knit</p>', '<p>New</p>', '<p>30 Days Return</p>', 92, 1, 1, 1),
(6, 'Premium Wool Overcoat', '12000', '9500', 14, 'product-featured-6.png', '<p>An investment piece. This structured overcoat is cut from a luxurious wool-cashmere blend and features sharp lapels and a hidden button placket.</p>', 'Structured overcoat cut from a luxurious wool-cashmere blend.', '<p>Wool Cashmere</p>', '<p>New</p>', '<p>30 Days Return</p>', 323, 1, 1, 15),
(7, 'Slim Fit Selvedge Denim', '5500', '4200', 45, 'product-featured-7.jpg', '<p>Woven on vintage shuttle looms, this premium raw selvedge denim will mold perfectly to your body over time. Finished with minimal hardware.</p>', 'Premium raw selvedge denim finished with minimal hardware.', '<p>Selvedge Denim</p>', '<p>New</p>', '<p>30 Days Return</p>', 210, 1, 1, 2),
(8, 'Porsche 911 Turbo \"Legacy\" Oversized Hoodie', '2499', '2199', 20, 'product-featured-8.jpg', '<p>Elevate your streetwear game with the Porsche 911 Turbo \"Legacy\" Hoodie from the Collective. This premium hoodie features a minimalist front embroidery and a high-impact graphic on the back showcasing the legendary 911 silhouette.</p><p>Crafted from high-density heavy-weight cotton, this piece is designed to provide maximum warmth and a structured oversized fit. The deep black fabric serves as the perfect canvas for the sharp, high-definition typography and car graphic, making it a must-have for automotive enthusiasts and trendsetters alike.</p>', 'Short Description: Premium heavy-weight black hoodie featuring a high-definition Porsche 911 Turbo graphic and minimalist front embroidery.', '<p data-path-to-node=\"4,5,0\"><b data-path-to-node=\"4,5,0\" data-index-in-node=\"0\">Features:</b> * 380 GSM Heavy-weight premium cotton blend.</p><ul data-path-to-node=\"4,5,1\"><li><p data-path-to-node=\"4,5,1,0,0\">Signature oversized drop-shoulder fit.</p></li><li><p data-path-to-node=\"4,5,1,1,0\">High-definition back print with minimalist front branding.</p></li><li><p data-path-to-node=\"4,5,1,2,0\">Reinforced kangaroo pocket and adjustable double-layer hood.</p></li><li><p data-path-to-node=\"4,5,1,3,0\">Durable ribbed cuffs and waistband.</p></li></ul>', '<p><b data-path-to-node=\"4,6,0\" data-index-in-node=\"0\">Condition:</b> New / Premium Quality</p>', '<p><b data-path-to-node=\"4,7,0\" data-index-in-node=\"0\">Return Policy:</b> Easy 7-day return policy in original packaging and condition.</p>', 110, 1, 1, 3),
(9, 'Midnight Blue Linen Casual Shirt', '1599', '999', 40, 'Blue-shirt.jpg', 'Experience ultimate comfort with this midnight blue linen casual shirt. Perfect for summer outings and beach vacations, featuring a breathable fabric and a relaxed fit.', 'Breathable linen shirt in a deep midnight blue shade.', '100% Linen, Mandarin collar, Roll-up sleeves', 'New', '7 Days Return', 0, 1, 1, 1),
(10, 'Courtside Culture Aesthetic Hoodie', '2899', '1899', 23, 'product-featured-10.jpg', 'Part of our exclusive Courtside Culture collection, this cream hoodie features a vintage-inspired tennis graphic on the back. Made with ultra-soft fleece for all-day warmth.', 'Vintage aesthetic cream hoodie with high-quality back print.', 'Heavy-weight fleece, Relaxed oversized fit, Durable print', 'New', '7 Days Return', 6, 0, 1, 14),
(11, 'No Days Off Premium Brown Hoodie', '2499', '1649', 29, 'brown-hoodie.jpg', 'Stay motivated with the No Days Off brown hoodie. Featuring bold typography on the back and a minimalist front, this piece is a staple for your winter streetwear collection.', 'Bold brown hoodie with motivational typography.', '320 GSM Cotton, Soft-brushed interior, Kangaroo pocket', 'New', '7 Days Return', 5, 1, 1, 1),
(12, 'Fearless Worldwide Graphic Tee', '1199', '749', 50, 'brown-tshirt.jpg', 'The Fearless Worldwide graphic t-shirt in chocolate brown offers a bold streetwear look with its large back typography and soft cotton feel.', 'Chocolate brown graphic tee with oversized fit.', '100% Bio-wash cotton, High-density print, Drop shoulder', 'New', '7 Days Return', 0, 0, 1, 1),
(13, 'Porsche 911 \"Need Money\" White Hoodie', '2999', '1999', 20, 'classic-white.jpg', 'The ultimate goal-setter hoodie. This classic white piece features the iconic Porsche 911 graphic and \"Need Money For Porsche\" slogan for those who hustle.', 'Iconic car graphic hoodie in premium white.', 'Pre-shrunk cotton blend, High-definition car print', 'New', '7 Days Return', 0, 1, 1, 1),
(14, 'New York Bagels Aesthetic Hoodie', '2699', '1799', 15, 'cream.jpg', 'Bring the New York vibe to your wardrobe with this Bagels & More graphic hoodie. Fun, quirky, and incredibly comfortable for casual hangouts.', 'Quirky New York inspired cream graphic hoodie.', 'Comfort fleece, Ribbed cuffs, High-quality screen print', 'New', '7 Days Return', 0, 0, 1, 1),
(15, 'Urban Layering Cream Casual Shirt', '1899', '1249', 35, 'product-featured-15.jpg', 'A versatile cream shirt perfect for layering over a white tee. Features dual chest pockets and a soft-touch fabric for a polished yet relaxed look.', 'Premium cream shirt for stylish layering.', 'Dual chest pockets, Soft cotton-twill, Regular fit', 'New', '7 Days Return', 0, 0, 1, 1),
(16, 'Vintage Corduroy Tribal Design Shirt', '2299', '1599', 22, 'designed-shirt.jpg', 'Stand out with this unique corduroy shirt featuring a tribal pattern accent and contrast collar. Perfect for those who love vintage and indie aesthetics.', 'Tan corduroy shirt with unique tribal patterns.', 'Premium corduroy, Contrast collar, Unique design accents', 'New', '7 Days Return', 0, 1, 1, 1),
(17, 'Good Storys Dark Green Oversized Hoodie', '2599', '1749', 28, 'product-featured-17.jpg', 'Every moment is a story. This deep forest green hoodie features the \"Bad Ideas Good Storys\" typography, perfect for creating memories in style.', 'Deep forest green hoodie with meaningful typography.', 'Heavy-duty cotton, Deep hood, Relaxed streetwear fit', 'New', '7 Days Return', 0, 1, 1, 1),
(18, 'Premium Ribbed Knit Polo Shirt', '1499', '899', 45, 'product-featured-18.jpg', 'Elevate your smart-casual look with this premium ribbed knit polo. Featuring contrast navy tipping on the collar and sleeves for a sophisticated touch.', 'Elegant ribbed knit polo with contrast tipping.', 'Breathable knit fabric, Slim fit, Sophisticated aesthetic', 'New', '7 Days Return', 0, 0, 1, 1),
(19, 'Urban Noir Graphic Hoodie', '2499', '1799', 25, 'product-featured-19.jpg', 'Elevate your street style with this Urban Noir graphic hoodie. Featuring high-density chest prints and a premium cotton blend, it offers both comfort and a bold aesthetic for any casual occasion.', 'Premium black graphic hoodie with modern typography.', '320 GSM Cotton-Poly blend, Soft-touch finish, Durable chest print', 'New', '7 Days Return', 0, 1, 1, 1),
(20, 'Atlantic Blue Varsity Bomber', '3499', '2199', 15, 'product-featured-20.jpg', 'Classic collegiate style meets modern craftsmanship. This Atlantic blue varsity jacket features contrast sleeves and high-quality patch embroidery, making it a timeless addition to your wardrobe.', 'Classic blue varsity jacket with contrast detailing.', 'Quilted lining for warmth, Contrast ribbed cuffs, High-definition embroidery', 'New', '7 Days Return', 0, 0, 1, 1),
(21, 'Sandstone Ribbed Knit Sweater', '1999', '1349', 30, 'product-featured-21.jpg', 'Stay cozy in our sandstone ribbed knit sweater. Designed with a clean, minimalist silhouette and a premium wool-blend fabric, it provides exceptional warmth without the bulk.', 'Minimalist beige ribbed knit sweater for winter layering.', 'Premium wool-blend fabric, Anti-pilling finish, Classic crew neck', 'New', '7 Days Return', 0, 1, 1, 33),
(22, 'Forest Green Lightweight Utility Shirt', '2799', '1899', 20, 'product-featured-22.jpg', 'Perfect for transitional weather, this forest green utility jacket combines functionality with style. Featuring multiple pockets and a durable outer shell, it is built for the urban explorer.', 'Durable green utility jacket with multi-pocket design.', 'Water-resistant outer shell, Adjustable hood, Multi-pocket functionality', 'New', '7 Days Return', 0, 0, 1, 1),
(23, 'Heather Grey Essential Sweatshirt', '1799', '1199', 40, 'product-featured-23.jpg', 'A staple for every closet, this heather grey sweatshirt features a signature oversized fit. The soft-fleece interior ensures maximum comfort for lounging or a casual day out.', 'Classic grey sweatshirt with a relaxed oversized fit.', 'Heavyweight fleece fabric, Drop-shoulder design, Double-stitched seams', 'New', '7 Days Return', 0, 0, 1, 1),
(24, 'Artistic Vision Graphic Tee', '999', '649', 55, 'product-featured-24.jpg', 'Express your creativity with the Artistic Vision white tee. Featuring a vibrant, high-definition print on the back, this 100% cotton tee is perfect for making a statement.', 'White graphic tee with high-definition back print.', '100% Premium bio-wash cotton, Breathable fabric, Durable screen print', 'New', '7 Days Return', 0, 1, 1, 1),
(25, 'Deep Navy Insulated Puffer Vest', '2299', '1549', 18, 'product-featured-25.jpg', 'Add a layer of warmth with our deep navy puffer vest. Lightweight yet highly insulated, it fits perfectly over a hoodie or sweater for those chilly evening walks.', 'Lightweight navy puffer vest with high insulation.', 'Windproof fabric, Lightweight down alternative, Hidden inner pocket', 'New', '7 Days Return', 0, 0, 1, 1),
(26, 'Autumn Tan Corduroy Trousers', '2199', '1499', 22, 'product-featured-26.jpg', 'Bring back the vintage look with these tan corduroy trousers. Designed with a modern straight-leg cut and soft-touch corduroy fabric, they offer a perfect blend of comfort and style.', 'Vintage-inspired tan corduroy straight-leg trousers.', 'Premium soft-touch corduroy, Relaxed straight fit, Reinforced stitching', 'New', '7 Days Return', 3, 0, 1, 2),
(27, 'Crimson Checkered Flannel Shirt', '1699', '1099', 35, 'product-featured-27.jpg', 'A rugged classic, this crimson checkered flannel shirt is made from heavy-weight cotton for durability. Wear it buttoned up or open over a tee for a versatile look.', 'Heavy-weight red checkered flannel casual shirt.', '100% Brushed cotton, Dual chest pockets, Durable button closure', 'New', '7 Days Return', 0, 1, 1, 1),
(28, 'Charcoal Tech-Wear Cargo Pants', '2599', '1799', 28, 'product-featured-28.jpg', '<li><p data-path-to-node=\"3,5,0\"><b data-path-to-node=\"3,5,0\" data-index-in-node=\"0\">description</b>: Step into the retro vibe with our \"Another Cotton\" Retro Wave Hoodie. This premium cream-colored hoodie features a high-quality artistic back print that blends vintage aesthetics with modern streetwear culture. Crafted from heavy-duty cotton fleece, it ensures you stay warm while looking effortlessly cool. Perfect for those who appreciate detailed graphic design and a relaxed, oversized silhouette. Premium cream hoodie featuring a vintage-style retro wave back graphic.</p></li><li><p data-path-to-node=\"3,7,0\"><b data-path-to-node=\"3,7,0\" data-index-in-node=\"0\">feature</b>:</p><ul data-path-to-node=\"3,7,1\"><li><p data-path-to-node=\"3,7,1,0,0\">350 GSM Heavyweight cotton</p></li><li><p data-path-to-node=\"3,7,1,1,0\">Brushed fleece interior</p></li><li><p data-path-to-node=\"3,7,1,2,0\">High-definition digital back print</p></li><li><p data-path-to-node=\"3,7,1,3,0\">Drop shoulder oversized fit</p></li></ul></li><li><p data-path-to-node=\"3,8,0\"><b data-path-to-node=\"3,8,0\" data-index-in-node=\"0\">condition</b>: New / Premium Quality</p></li><li><p data-path-to-node=\"3,9,0\"><b data-path-to-node=\"3,9,0\" data-index-in-node=\"0\">return_policy</b>: 7 Days Easy Return</p></li>', 'Modern charcoal cargo pants with functional 6-pocket design.', '<p data-path-to-node=\"3,7,0\"><span data-path-to-node=\"3,7,0\" data-index-in-node=\"0\" style=\"font-weight: 700;\">Feature</span>:</p><ul data-path-to-node=\"3,7,1\"><li><p data-path-to-node=\"3,7,1,0,0\">350 GSM Heavyweight cotton</p></li><li><p data-path-to-node=\"3,7,1,1,0\">Brushed fleece interior</p></li><li><p data-path-to-node=\"3,7,1,2,0\">High-definition digital back print</p></li><li><p data-path-to-node=\"3,7,1,3,0\">Drop shoulder oversized fit</p></li></ul>', '<span data-path-to-node=\"3,8,0\" data-index-in-node=\"0\" style=\"font-weight: 700;\">Condition</span>: New / Premium Quality', '7 Days Return', 3, 0, 1, 35),
(29, 'H&M Classy Co-set', '1299', '999', 80, 'product-featured-29.jpg', '<p>Green Polo Tshrits with white shots for Boys Kids 9-15 Years</p>', '<p>Classy Co-Set</p>', '<p>Green and White Pair</p>', '<p>New Premium Collection</p>', '<p>30 day return</p>', 3, 1, 1, 26),
(30, 'Urban Explorer Faux-Leather Moto Set', '899', '799', 59, 'product-featured-30.jpg', '<p>Description: This high-style set brings adult-inspired fashion to a mini silhouette. It includes a supple dark brown faux-leather bomber jacket with utility pockets, a crisp white inner tee, and vintage-wash light denim jeans complete with a matching belt. Perfect for cooler weather and photo-ready moments.</p><p><br></p>', '<p>Short Description: A cool, contemporary 3-piece outfit featuring a chocolate brown jacket and relaxed denim.</p>', '<p>Features:</p><p>Water-resistant faux-leather shell.</p><p>Elasticized high-waist denim for a comfortable fit.</p><p>Full-zip jacket closure with snap-button collar.</p><p><br></p>', '<p>Condition: Brand New with Tags.</p>', '<p>Return Policy: 30-day hassle-free returns. Items must be unworn and in original packaging.</p>', 6, 1, 1, 26),
(31, 'Enchanted Rose Ruffle Dress', '799', '549', 90, 'product-featured-31.jpg', '<p>Designed for celebrations, this dress features a sophisticated tea-length cut in a soft mauve-pink. The bodice is framed by dramatic puff sleeves, while the skirt boasts a unique asymmetrical ruffle detail accented by a dainty side bow.</p>', '<p>Elegant dusty pink dress with puff sleeves and cascading side ruffles.</p>', '<p>Hidden back zipper for easy dressing.</p><p>?Soft, breathable linen-blend fabric.</p><p>?Tiered hemline for extra volume and movement.</p>', '<p>&nbsp;Brand New.</p>', '<p>15-day return window for boutique items.</p>', 0, 1, 1, 27),
(32, 'Sunny Meadow Hand-Crochet Sun Dress', '999', '899', 90, 'product-featured-32.jpg', '<p>Brighten up any day with this artisanal crochet dress. Made from soft cotton yarn, it features a classic square neckline and a beautiful open-knit skirt pattern. Four handcrafted bumblebees \"buzz\" across the dress, adding a playful, tactile element.</p>', '<p>Vibrant yellow knit dress featuring adorable 3D bumblebee appliqués.</p>', '<p>?100% hypoallergenic cotton yarn.</p><p>?Textured 3D bee embellishments.</p><p>?Stretchy knit bodice for a flexible fit.</p>', '<p>Hand-finished, New.</p>', '<p>Final sale on handcrafted knitwear unless defective.</p>', 0, 1, 1, 27),
(33, 'Heirloom Lace Trim Cottagecore Dress', '1299', '999', 90, 'product-featured-33.jpg', '<p>A timeless piece inspired by vintage charm. This cream A-line dress is crafted from breathable crinkle-gauze fabric and features delicate lace panels on the bodice. Decorative wooden buttons and a dainty rope-tie waist add a rustic, organic feel.</p>', '<p>Cream-colored gauze dress with intricate lace detailing and wooden accents.</p>', '<p>?Soft puff sleeves with ruffled cuffs.</p><p>?Adjustable drawstring waist tie.</p><p>?Lightweight and breathable—ideal for summer.</p>', '<p>New.</p>', '<p>Standard 30-day returns.</p>', 1, 0, 1, 27),
(34, 'Little Cub Striped Waffle Romper', '1099', '899', 80, 'product-featured-34.jpg', '<p>This 2-in-1 look combines a navy-and-white striped long-sleeve shirt with a dusty blue waffle-knit romper. The front is adorned with a plush bear face, and the straps feature adorable \"ears\" for maximum cuteness.</p>', '<p>&nbsp;Cozy blue waffle-knit overalls with cute bear-ear details.</p>', '<p>?Snap-button crotch for quick diaper changes.</p><p>?Soft waffle-texture fabric for warmth.</p><p>?Layered look in one easy piece.</p>', '<p>Brand New.</p>', '<p>30-day returns accepted.</p>', 0, 0, 1, 26),
(35, 'Lily Bloom Fitted Baby Tee', '1299', '1199', 90, 'product-featured-35.jpg', '<p>The Lily Bloom tee features a soft, breathable cotton blend with a delicate floral print, perfect for a casual vintage look. The cropped blazer offers a high-fashion edge with dramatic lantern sleeves and a sophisticated textured weave, making it the perfect layering piece for brunch or evening events.</p>', '<p>Elevate your everyday wardrobe with these statement pieces, designed for a chic and feminine silhouette.</p>', '<p>?Fitted Silhouette: Designed to hug your curves comfortably.</p><p>?Unique Textures: High-quality embroidery and puff-sleeve detailing.</p><p>?Versatile Styling: Pairs perfectly with high-waisted denim or skirts.</p><p>?Breathable Fabric: Ideal for all-day wear.</p>', '<p>Brand New.</p>', '<p>&nbsp;30-day returns accepted.</p>', 0, 0, 1, 33),
(36, 'Daisy Embroidered Raw-Hem Denim Shorts', '999', '899', 90, 'product-featured-36.jpg', '<p>Our denim collection blends classic durability with modern feminine details. From the delicate daisy embroidery and frayed hems to the standout wrap-around bow designs, these pieces are crafted from premium denim that holds its shape while&nbsp;</p>', '<p>&nbsp;Playful, durable, and stylish denim essentials that bring a touch of \"coquette\" aesthetic to your outfit.</p>', '<p>Intricate Details: Hand-inspired embroidery and ribbon lace-up accents.</p><p>?Functional Design: Includes skort options (shorts underneath) for maximum movement.</p><p>?Premium Denim: High-quality wash that resists fading.</p><p>?Flattering Fits: High-rise waists to elongate the legs.</p>', '<p>Brand New</p>', '<p>Standard 30-day returns.</p>', 0, 0, 1, 35),
(37, 'Tiered Tulle & Lace \"Cinderella\" Mini Skirt', '799', '699', 90, 'product-featured-37.jpg', '<p>Step into a fairytale with these beautifully layered skirts. The tiered lace design offers a soft, voluminous look, while the blush ruched skirt features adjustable drawstrings and an asymmetrical hem for a modern \"fairy-core\" vibe. Lightweight and flowy, these are must-haves for your next photoshoot or date night.</p>', '<p>Soft, dreamy, and perfectly ruffled skirts for a romantic, aesthetic-driven look.</p>', '<p>?Tiered Construction: Adds volume and movement without being heavy.</p><p>?Adjustable Fit: Ruched drawstrings allow you to customize the length and drape.</p><p>?Elastic Waistbands: Provides a flexible, comfortable fit for various sizes.</p><p>?Delicate Trims: High-quality lace and soft-touch fabrics.</p><p>?General Store Policies&nbsp;</p>', '<p>Brand New: Item is in pristine condition, never worn, and ready for its new home.</p>', 'Accepted within 14 days of delivery.', 0, 1, 1, 35),
(38, 'Urban Classic High-Waisted Tailored Shorts with Utility Belt (Set of 4 Colors)', '2999', '1599', 90, 'product-featured-38.jpg', '<p>Upgrade your warm-weather wardrobe with these essential high-waisted tailored shorts. Designed with a flattering A-line silhouette, these shorts offer a structured look without sacrificing comfort. Each pair comes with a contrasting dark brown canvas belt featuring a silver D-ring buckle, adding a touch of utility-chic to the design. Crafted from a durable, breathable cotton-twill blend, they are ideal for everything from office casual Fridays to weekend brunch. Available in four versatile earth tones: Midnight Black, Sage Green, Crisp White, and Soft Sand.</p>', '<p>Sophisticated, A-line tailored shorts featuring a complimentary woven D-ring belt—the perfect blend of professional polish and casual comfort.</p>', '<p>High-Rise Fit: Designed to sit comfortably at the natural waist for a leg-lengthening effect.</p><p>?Structured Silhouette: Subtle A-line cut provides a roomy yet polished look.</p><p>?Functional Details: Includes deep side pockets and reinforced belt loops.</p><p>?Bonus Accessory: Comes with a detachable, adjustable woven utility belt.</p><p>?Premium Fabric: Breathable, non-stretch twill that holds its shape throughout the day.</p>', '<p>Item is in original condition, unused, and unworn.</p>', '<p>Returns or exchanges are accepted within 30 days of purchase.</p>', 0, 1, 1, 35),
(39, 'Boys’ Urban Tech-Hiker Hoodie & Jogger Set', '1599', '1299', 23, 'product-featured-39.jpg', '<p>A high-contrast streetwear set featuring a white pullover hoodie with a unique tan \"utility vest\" overlay and matching tan cargo joggers.</p>', '<p>Modern 2-piece hoodie set with tactical pocket details.</p>', '<p>?Asymmetric chest panel with adjustable buckle strap.</p><p>?Functional \"Progress\" patch 3D cargo pockets on hoodie and pants.</p><p>?Elasticized ankle cuffs and waistband for a secure fit.</p><p>?Condition: Brand New with Tags.</p><p>?Return Policy: 30-day returns; item must be unworn with tags attached.</p>', '<p>Products must be in original, unwashed, and unworn condition with all tags attached.</p>', '<p>Items can be returned within 30 days of delivery.</p>', 0, 0, 1, 26),
(40, 'Boys’ \"Sun Shine\" Gradient Performance Shorts Set', '899', '749', 90, 'product-featured-40.jpg', '<p>A vibrant, athletic-inspired set featuring a deep teal-to-white ombré transition on both the tee and matching long-line shorts.</p>', '<p>Lightweight gradient sports set with graphic typography.</p>', '<p>?\"Sun Shine // The Young Boy\" chest and leg print.</p><p>?Breathable, moisture-wicking fabric ideal for active play.</p><p>?Soft-stretch crew neck and elastic waist.</p>', '<p>Brand New with Tags.</p>', '<p>30-day returns; item must be unworn with tags attached.</p>', 0, 0, 1, 26),
(41, 'Toddler Bear-Accent Two-Tone Shirt & Shorts', '899', '699', 90, 'product-featured-41.jpg', '<p>A charming, dressier set featuring a split white and tan button-down shirt with a playful 3D teddy bear pocket, paired with matching tan shorts.</p>', '<p>Adorable two-tone shirt set with bear embroidery.</p>', '<p>Contrasting vertical split-color design.</p><p>?Embroidered teddy bear character popping out of the chest pocket.</p><p>?Short-sleeve casual collar for summer comfort.</p>', '<p>Brand New with Tags.</p>', '<p>30-day returns, item must be unworn with tags attached.</p>', 0, 0, 1, 26),
(42, '3-Piece Olive & Sage Striped Adventure Overalls', '999', '849', 90, 'product-featured-42.jpg', '<p>A classic heritage-style outfit including an olive green t-shirt, vertical striped overalls, and a matching wide-brim bucket hat.</p><p><br></p>', '<p>Linen-feel striped overalls with matching hat and tee.</p>', '<p>Traditional button-clasp shoulder straps and side pockets.</p><p>?Includes a matching sun-protection bucket hat.</p><p>?Soft cotton-rich fabric for sensitive skin.</p>', '<p>Brand New with Tags.</p>', '<p>30-day returns, all 3 pieces must be returned together.</p>', 0, 0, 1, 26),
(43, 'Boys’ Junior Commando Utility Tee & Shorts', '1199', '1049', 80, 'product-featured-43.jpg', '<p>A warm-weather version of the tech-style set, featuring an olive green utility overlay on a white crew-neck tee with matching cargo shorts.</p>', '<p>Tactical short-sleeve set with buckle and cargo details.</p>', '<p>?Integrated utility vest panel with buckle closure.</p><p>?Side-entry cargo pockets on shorts for \"treasure\" storage.</p><p>?Durable, easy-wash fabric.</p>', '<p>&nbsp;Brand New with Tags.</p>', '<p>30-day returns, item must be unworn with tags attached.</p>', 0, 0, 1, 26),
(44, 'Boys’ Summer Breeze Linen-Style Set', '1299', '1199', 90, 'product-featured-44.jpg', '<p>A clean, sophisticated pairing of a cream-colored Mandarin collar shirt and soft olive-drab chino shorts.</p>', '<p>Minimalist short-sleeve button-up and chino shorts.</p>', '<p>?Grandad/Mandarin collar for a modern, refined look.</p><p>?Faux-wood buttons and functional chest pocket.</p><p>?Roll-up cuff detail on sleeves and shorts.</p>', '<p>Brand New with Tags.</p>', '<p>&nbsp;30-day returns; item must be unworn with tags attached.</p>', 0, 1, 1, 26),
(45, 'Boys’ Safari Utility Shirt & Shorts Combo', '799', '649', 90, 'product-featured-45.jpg', '<p>&nbsp;A versatile khaki set featuring a structured short-sleeve button-up over-shirt and matching cargo shorts, perfect for layering.</p>', '<p>Khaki utility shirt set with dual chest pockets.</p><p><br></p>', '<p>Oversized twin bellows pockets on the shirt.</p><p>?Adjustable waist shorts with reinforced stitching.</p><p>?Classic sand-khaki colorway for easy mixing and matching.</p>', '<p>Brand New with Tags.</p>', '<p>30-day returns; item must be unworn with tags attached.</p>', 0, 1, 1, 26);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(87, 3, 16),
(100, 7, 29),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(150, 6, 9),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(195, 2, 84),
(201, 2, 86),
(202, 6, 86),
(203, 17, 86),
(222, 16, 93),
(223, 21, 85),
(224, 22, 85),
(225, 23, 85),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 4, 83),
(230, 5, 83),
(231, 6, 83),
(232, 8, 83),
(233, 14, 83),
(234, 17, 83),
(235, 18, 83),
(236, 12, 89),
(237, 27, 91),
(239, 2, 92),
(240, 29, 92),
(241, 2, 88),
(242, 8, 88),
(243, 17, 88),
(244, 2, 90),
(245, 6, 90),
(246, 25, 90),
(247, 27, 90),
(248, 28, 90),
(251, 2, 95),
(252, 6, 95),
(253, 5, 96),
(254, 24, 96),
(256, 2, 94),
(257, 3, 87),
(258, 17, 87),
(261, 25, 97),
(262, 5, 98),
(263, 6, 99),
(264, 14, 100),
(266, 6, 101),
(267, 2, 102),
(268, 2, 8),
(270, 5, 28),
(271, 2, 27),
(272, 4, 27),
(274, 2, 25),
(275, 2, 24),
(276, 2, 23),
(277, 21, 23),
(278, 5, 22),
(279, 1, 21),
(280, 3, 20),
(281, 6, 20),
(282, 3, 19),
(283, 2, 18),
(284, 6, 10),
(285, 4, 15),
(286, 6, 15),
(287, 3, 17),
(288, 2, 7),
(289, 6, 6),
(290, 2, 5),
(291, 6, 5),
(292, 8, 5),
(293, 5, 4),
(294, 2, 3),
(295, 3, 2),
(296, 5, 29),
(298, 3, 30),
(299, 10, 30),
(300, 10, 31),
(301, 4, 32),
(302, 9, 33),
(303, 3, 34),
(304, 6, 26),
(305, 6, 35),
(306, 3, 36),
(307, 3, 37),
(308, 6, 37),
(309, 2, 38),
(310, 5, 38),
(311, 6, 38),
(312, 9, 38),
(313, 6, 39),
(314, 8, 39),
(315, 5, 40),
(316, 6, 41),
(317, 8, 41),
(318, 5, 42),
(319, 5, 43),
(320, 6, 43),
(321, 5, 44),
(322, 6, 44),
(323, 6, 45),
(324, 9, 45);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(122, '122.jpg', 92),
(123, '123.jpg', 92),
(124, '124.jpg', 93),
(125, '125.jpg', 94),
(126, '126.jpg', 95),
(127, '127.jpg', 96),
(128, '128.jpg', 97),
(129, '129.jpg', 98),
(130, '130.jpg', 98),
(131, '131.jpg', 100),
(132, '132.jpg', 102),
(133, '133.jpg', 5),
(134, '134.jpg', 5),
(135, '135.jpg', 35),
(136, '136.jpg', 35),
(137, '137.jpg', 38),
(138, '138.jpg', 38),
(139, '139.jpg', 38);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(214, 3, 9),
(215, 4, 9),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(278, 2, 84),
(279, 3, 84),
(280, 4, 84),
(281, 5, 84),
(282, 6, 84),
(305, 26, 86),
(339, 27, 93),
(340, 15, 85),
(341, 16, 85),
(342, 17, 85),
(343, 18, 85),
(344, 19, 85),
(345, 20, 85),
(346, 21, 85),
(347, 22, 85),
(348, 23, 85),
(349, 24, 85),
(350, 25, 85),
(351, 1, 83),
(352, 2, 83),
(353, 3, 83),
(354, 4, 83),
(355, 5, 83),
(356, 6, 83),
(357, 7, 83),
(358, 3, 89),
(359, 4, 89),
(360, 5, 89),
(361, 6, 89),
(362, 7, 89),
(363, 2, 91),
(364, 3, 91),
(365, 4, 91),
(366, 5, 91),
(367, 6, 91),
(369, 27, 92),
(370, 3, 88),
(371, 4, 88),
(372, 5, 88),
(373, 6, 88),
(374, 7, 88),
(375, 1, 90),
(376, 2, 90),
(377, 3, 90),
(378, 4, 90),
(380, 27, 95),
(381, 3, 96),
(382, 4, 96),
(383, 5, 96),
(384, 6, 96),
(385, 7, 96),
(398, 33, 94),
(399, 29, 87),
(400, 30, 87),
(401, 31, 87),
(402, 32, 87),
(403, 33, 87),
(404, 34, 87),
(405, 35, 87),
(406, 36, 87),
(407, 37, 87),
(408, 38, 87),
(409, 39, 87),
(418, 8, 97),
(419, 9, 97),
(420, 10, 97),
(421, 11, 97),
(422, 12, 97),
(423, 13, 97),
(424, 14, 97),
(425, 15, 97),
(426, 16, 97),
(427, 17, 97),
(428, 18, 97),
(429, 19, 97),
(430, 4, 98),
(431, 5, 98),
(432, 6, 98),
(433, 7, 98),
(434, 40, 99),
(435, 41, 99),
(436, 3, 100),
(437, 4, 100),
(438, 5, 100),
(439, 6, 100),
(441, 27, 101),
(442, 42, 102),
(443, 43, 102),
(444, 44, 102),
(445, 45, 102),
(446, 46, 102),
(447, 47, 102),
(448, 2, 8),
(449, 3, 8),
(450, 4, 8),
(451, 5, 8),
(455, 19, 28),
(456, 20, 28),
(457, 21, 28),
(458, 19, 27),
(459, 20, 27),
(460, 21, 27),
(461, 22, 27),
(466, 18, 25),
(467, 19, 25),
(468, 20, 25),
(469, 21, 25),
(470, 1, 24),
(471, 2, 24),
(472, 3, 24),
(473, 4, 24),
(474, 5, 24),
(475, 15, 23),
(476, 16, 23),
(477, 17, 23),
(478, 15, 22),
(479, 16, 22),
(480, 17, 22),
(481, 1, 21),
(482, 2, 21),
(483, 3, 21),
(484, 4, 21),
(485, 5, 21),
(486, 14, 20),
(487, 15, 20),
(488, 17, 20),
(489, 13, 19),
(490, 14, 19),
(491, 15, 19),
(492, 16, 19),
(493, 17, 19),
(494, 14, 18),
(495, 15, 18),
(496, 16, 18),
(497, 17, 18),
(498, 1, 10),
(499, 2, 10),
(500, 3, 10),
(501, 4, 10),
(502, 5, 10),
(503, 6, 10),
(504, 7, 10),
(505, 8, 15),
(506, 9, 15),
(507, 10, 15),
(508, 11, 15),
(509, 12, 15),
(510, 13, 15),
(511, 1, 17),
(512, 2, 17),
(513, 3, 17),
(514, 4, 17),
(515, 5, 17),
(516, 6, 17),
(517, 2, 7),
(518, 3, 7),
(519, 4, 7),
(520, 1, 6),
(521, 2, 6),
(522, 3, 6),
(523, 4, 6),
(524, 5, 6),
(525, 6, 6),
(526, 2, 5),
(527, 3, 5),
(528, 4, 5),
(529, 5, 5),
(530, 6, 5),
(531, 1, 4),
(532, 2, 4),
(533, 3, 4),
(534, 4, 4),
(535, 5, 4),
(536, 6, 4),
(537, 7, 4),
(538, 1, 3),
(539, 2, 3),
(540, 3, 3),
(541, 4, 3),
(542, 5, 3),
(543, 1, 2),
(544, 2, 2),
(545, 3, 2),
(546, 4, 2),
(547, 5, 2),
(553, 2, 1),
(554, 3, 1),
(555, 4, 1),
(556, 5, 1),
(557, 6, 1),
(558, 1, 29),
(559, 2, 29),
(560, 3, 29),
(564, 1, 30),
(565, 2, 30),
(566, 3, 30),
(567, 4, 30),
(568, 1, 31),
(569, 2, 31),
(570, 3, 31),
(571, 4, 31),
(572, 1, 32),
(573, 2, 32),
(574, 3, 32),
(575, 4, 32),
(576, 1, 33),
(577, 2, 33),
(578, 3, 33),
(579, 4, 33),
(580, 2, 34),
(581, 3, 34),
(582, 4, 34),
(583, 19, 26),
(584, 21, 26),
(585, 22, 26),
(586, 23, 26),
(587, 2, 35),
(588, 3, 35),
(589, 4, 35),
(590, 5, 35),
(591, 2, 36),
(592, 3, 36),
(593, 4, 36),
(594, 3, 37),
(595, 4, 37),
(596, 5, 37),
(597, 2, 38),
(598, 3, 38),
(599, 4, 38),
(600, 5, 38),
(601, 2, 39),
(602, 3, 39),
(603, 4, 39),
(604, 2, 40),
(605, 3, 40),
(606, 4, 40),
(607, 2, 41),
(608, 3, 41),
(609, 4, 41),
(610, 1, 42),
(611, 2, 42),
(612, 3, 42),
(613, 4, 42),
(614, 2, 43),
(615, 3, 43),
(616, 4, 43),
(617, 5, 43),
(618, 2, 44),
(619, 3, 44),
(620, 4, 44),
(621, 5, 44),
(622, 2, 45),
(623, 3, 45),
(624, 4, 45),
(625, 5, 45),
(626, 6, 45);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Return any item before 15 days!', 'service-5.png'),
(6, 'Free Shipping', 'Enjoy free shipping inside US.', 'service-6.png'),
(7, 'Fast Shipping', 'Items are shipped within 24 hours.', 'service-7.png'),
(8, 'Satisfaction Guarantee', 'We guarantee you with our quality satisfaction.', 'service-8.png'),
(9, 'Secure Checkout', 'Providing Secure Checkout Options for all', 'service-9.png'),
(10, 'Money Back Guarantee', 'Offer money back guarantee on our products', 'service-10.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_fax` text NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` text NOT NULL,
  `receive_email_subject` text NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_registration` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_reset_password` text NOT NULL,
  `banner_search` text NOT NULL,
  `banner_cart` text NOT NULL,
  `banner_checkout` text NOT NULL,
  `banner_product_category` text NOT NULL,
  `banner_blog` text NOT NULL,
  `cta_title` text NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` text NOT NULL,
  `cta_read_more_url` text NOT NULL,
  `cta_photo` text NOT NULL,
  `featured_product_title` text NOT NULL,
  `featured_product_subtitle` text NOT NULL,
  `latest_product_title` text NOT NULL,
  `latest_product_subtitle` text NOT NULL,
  `popular_product_title` text NOT NULL,
  `popular_product_subtitle` text NOT NULL,
  `testimonial_title` text NOT NULL,
  `testimonial_subtitle` text NOT NULL,
  `testimonial_photo` text NOT NULL,
  `blog_title` text NOT NULL,
  `blog_subtitle` text NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` text NOT NULL,
  `stripe_public_key` text NOT NULL,
  `stripe_secret_key` text NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2026 - TheCollective - Developed By Ayu Sheladiya', '87 - Ashirwad Palace, Jeevkar Nagar, Surat', 'support@collective.com', '+91 9398976434', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3094.020958405712!2d-84.39261378514685!3d39.151504939531584!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8841acfb8da30203%3A0x193175e741781f21!2s4293%20Simpson%20Ave%2C%20Cincinnati%2C%20OH%2045227%2C%20USA!5e0!3m2!1sen!2snp!4v1647796779407!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'support@collective.com', 'Visitor Email Message from Collective | Clothing Store', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 5, 6, 8, 'Clothing Store', 'online fashion store, garments shop, online garments', 'ecommerce php project with mysql database', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'Our list on Top Featured Products', 'Latest Products', 'Our list of recently added products', 'Popular Products', 'Popular products based on customer\'s choice', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@collective.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: BOB \r\nAccount Number: BOB100270589600\r\nBranch Name: Mota Varachha Branch\r\nCountry: INDIA', '', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '999'),
(2, 167, '599'),
(3, 13, '999'),
(4, 230, '999');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Welcome to Collective', 'Shop Online for Latest Fashion', 'Apply Premium Fashion', 'product-category.php?id=4&type=mid-category', 'Center'),
(2, 'slider-2.jpg', 'Discount on All Products', 'For our Happiness', 'Read More', '#', 'Center'),
(3, 'slider-3.jpg', '24 Hours Customer Support', 'Any Question or Query Contant us now', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(1, 'ruth@mail.com', '2022-03-20', '2022-03-20 10:25:18', 'f4eabc1afed38a08da8d1c6e5fb42187', 1),
(9, 'pinal@gamil.com', '2026-04-19', '2026-04-19 21:00:29', 'f553e39255a96ed33ddb85040c109483', 0),
(10, 'rusha@gamil.com', '2026-04-19', '2026-04-19 21:09:34', '55e8293a3d44b135789d5c3343bc08eb', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Men', 1),
(2, 'Women', 1),
(3, 'Kids', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active'),
(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_contact_message`
--
ALTER TABLE `tbl_contact_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_contact_message`
--
ALTER TABLE `tbl_contact_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
