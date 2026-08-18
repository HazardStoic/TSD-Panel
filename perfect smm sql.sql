-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 19, 2025 at 01:37 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u905191393_sss`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_type` enum('3','2') NOT NULL DEFAULT '2',
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_email` text DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` text NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` varchar(999) NOT NULL,
  `mode` varchar(225) NOT NULL,
  `two_factor` enum('0','1') NOT NULL DEFAULT '0',
  `two_factor_secret_key` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_type`, `admin_name`, `admin_email`, `username`, `password`, `telephone`, `register_date`, `login_date`, `login_ip`, `client_type`, `access`, `mode`, `two_factor`, `two_factor_secret_key`) VALUES
(39, '2', 'Tajammal', 'admin@gmail.com', 'admin', 'admin1122', '9233333356415341', '2025-02-18 03:46:06', '2025-02-18 03:48:34', '154.81.242.228', '2', '{\"admin_access\":\"1\",\"users\":\"1\",\"services\":\"1\",\"update-prices\":\"1\",\"bulk\":\"1\",\"synced-logs\":\"1\",\"orders\":\"1\",\"subscriptions\":\"1\",\"dripfeed\":\"1\",\"tasks\":\"1\",\"payments\":\"1\",\"tickets\":\"1\",\"additionals\":\"1\",\"referral\":\"1\",\"broadcast\":\"1\",\"logs\":\"1\",\"reports\":\"1\",\"videop\":\"1\",\"coupon\":\"1\",\"child-panels\":\"1\",\"updates\":\"1\",\"appearance\":\"1\",\"themes\":\"1\",\"new_year\":\"1\",\"pages\":\"1\",\"news\":\"1\",\"meta\":\"1\",\"blog\":\"1\",\"menu\":\"1\",\"inte\":\"1\",\"language\":\"1\",\"files\":\"1\",\"settings\":\"1\",\"general_settings\":\"1\",\"providers\":\"1\",\"payments_settings\":\"1\",\"bank_accounts\":\"1\",\"modules\":\"1\",\"subject\":\"1\",\"payments_bonus\":\"1\",\"currency-manager\":\"1\",\"alert_settings\":\"1\",\"site_count\":\"1\",\"manager\":\"1\"}', 'sun', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_constants`
--

CREATE TABLE `admin_constants` (
  `id` int(11) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `paidRent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin_constants`
--

INSERT INTO `admin_constants` (`id`, `brand_logo`, `paidRent`) VALUES
(1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_name`, `bank_sube`, `bank_hesap`, `bank_iban`, `bank_alici`) VALUES
(2, 'manul', 'manul', 'manul', 'manul', 'manul');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime NOT NULL,
  `image_file` varchar(200) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `blog_get` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulkedit`
--

CREATE TABLE `bulkedit` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text NOT NULL,
  `category_name_lang` longtext DEFAULT NULL,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') NOT NULL DEFAULT '2',
  `category_icon` text NOT NULL,
  `is_refill` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `category_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `domain` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `child_username` varchar(191) NOT NULL,
  `child_password` varchar(191) NOT NULL,
  `charge` double NOT NULL,
  `status` enum('active','terminated','disabled') NOT NULL,
  `renewal_date` date NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `admin_type` enum('1','2') NOT NULL DEFAULT '2',
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `balance` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `spent` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `apikey` text NOT NULL,
  `tel_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `email_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT 0,
  `currency_type` varchar(10) DEFAULT NULL,
  `ref_code` text NOT NULL,
  `ref_by` text DEFAULT NULL,
  `change_email` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL DEFAULT 3,
  `currency` varchar(225) NOT NULL DEFAULT '1',
  `passwordreset_token` varchar(225) NOT NULL,
  `discount_percentage` int(11) NOT NULL,
  `broadcast_id` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `email`, `username`, `admin_type`, `password`, `telephone`, `balance`, `spent`, `balance_type`, `debit_limit`, `register_date`, `login_date`, `login_ip`, `apikey`, `tel_type`, `email_type`, `client_type`, `access`, `lang`, `timezone`, `currency_type`, `ref_code`, `ref_by`, `change_email`, `resend_max`, `currency`, `passwordreset_token`, `discount_percentage`, `broadcast_id`) VALUES
(1, NULL, 'admin@gmail.com', 'admin', '2', '2464b94ceb49c2115c4238f51be98d8b', NULL, 0.0000, 0.0000, '2', NULL, '2025-02-18 03:48:53', NULL, NULL, '5da2040bd76e5a7321cdb7a9aee40611', '1', '1', '2', 'null', 'en', 0, 'PKR', '', NULL, '2', 3, '1', '', 0, '4');

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(100) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `symbol_position` varchar(10) DEFAULT 'left',
  `currency_rate` double NOT NULL,
  `currency_inverse_rate` double NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 0,
  `currency_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `symbol_position`, `currency_rate`, `currency_inverse_rate`, `is_enable`, `currency_hash`) VALUES
(1, 'Indian Rupee', 'INR', '₹', 'left', 0.31221668453289, 3.2029037829804, 1, 'a4956249500ba31bc01c4b302cfa8e1a22b8a801'),
(15, 'U.S. Dollar', 'USD', '$', 'left', 0.0035950122387995, 278.16316985167, 1, 'ea6ae0540c1d216a23074d0c42c8a7d76f47df64'),
(16, 'Pakistani Rupee', 'PKR', '₨', 'left', 1, 0.0035, 1, 'dab1af3acb44079199c5a5caccc665c69a9c66a8');

-- --------------------------------------------------------

--
-- Table structure for table `custom_settings`
--

CREATE TABLE `custom_settings` (
  `id` int(11) NOT NULL,
  `snow_data` text NOT NULL,
  `snow_data_array` text NOT NULL,
  `snow_status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 - inactive , 2 - active',
  `start_count_parser` text NOT NULL,
  `orders_count_increase` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_settings`
--

INSERT INTO `custom_settings` (`id`, `snow_data`, `snow_data_array`, `snow_status`, `start_count_parser`, `orders_count_increase`) VALUES
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id` int(11) NOT NULL,
  `snow_effect` int(11) NOT NULL,
  `snow_colour` text NOT NULL,
  `diwali_lights` int(11) NOT NULL,
  `video_link` text NOT NULL,
  `christmas_deco` varchar(5000) NOT NULL,
  `action_link` text NOT NULL,
  `pop_noti` int(11) NOT NULL,
  `pop_title` text NOT NULL,
  `pop_desc` text NOT NULL,
  `action_text` varchar(10) NOT NULL,
  `action_button` int(11) NOT NULL,
  `snow_fall` varchar(500) DEFAULT NULL,
  `garlands` text DEFAULT NULL,
  `fire_works` text DEFAULT NULL,
  `toys` text DEFAULT NULL,
  `snowflakes` int(11) NOT NULL,
  `snow_speed` int(11) NOT NULL,
  `gar_shape` text NOT NULL,
  `gar_style` text NOT NULL,
  `fire_size` varchar(100) NOT NULL,
  `fire_speed` text NOT NULL,
  `toy_size` int(11) NOT NULL,
  `toy_quantity` int(11) NOT NULL,
  `toy_speed` int(11) NOT NULL,
  `toy_launch` varchar(100) NOT NULL,
  `toy_a` varchar(50) NOT NULL,
  `toy_b` varchar(50) NOT NULL,
  `toy_c` varchar(50) NOT NULL,
  `toy_d` varchar(50) NOT NULL,
  `toy_e` varchar(50) NOT NULL,
  `toy_f` varchar(50) NOT NULL,
  `toy_g` varchar(50) NOT NULL,
  `toy_h` varchar(50) NOT NULL,
  `toy_i` varchar(50) NOT NULL,
  `toy_j` varchar(50) NOT NULL,
  `toy_k` varchar(50) NOT NULL,
  `psw_license` text NOT NULL,
  `toy_l` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id`, `snow_effect`, `snow_colour`, `diwali_lights`, `video_link`, `christmas_deco`, `action_link`, `pop_noti`, `pop_title`, `pop_desc`, `action_text`, `action_button`, `snow_fall`, `garlands`, `fire_works`, `toys`, `snowflakes`, `snow_speed`, `gar_shape`, `gar_style`, `fire_size`, `fire_speed`, `toy_size`, `toy_quantity`, `toy_speed`, `toy_launch`, `toy_a`, `toy_b`, `toy_c`, `toy_d`, `toy_e`, `toy_f`, `toy_g`, `toy_h`, `toy_i`, `toy_j`, `toy_k`, `psw_license`, `toy_l`) VALUES
(1, 0, '#ffffff', 0, '', '\n<style>.particle-snow{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1;pointer-events:none}.particle-snow canvas{position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none}.christmas-garland{text-align:center;white-space:nowrap;overflow:hidden;position:absolute;z-index:1;padding:0;pointer-events:none;width:100%;height:85px}.christmas-garland .christmas-garland__item{position:relative;width:28px;height:28px;border-radius:50%;display:inline-block;margin-left:20px}.christmas-garland .christmas-garland__item .shape{-webkit-animation-fill-mode:both;animation-fill-mode:both;-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-name:flash-1;animation-name:flash-1;-webkit-animation-duration:2s;animation-duration:2s}.christmas-garland .christmas-garland__item .apple{width:22px;height:22px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:8px}.christmas-garland .christmas-garland__item .pear{width:12px;height:28px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:6px}.christmas-garland .christmas-garland__item:nth-child(2n+1) .shape{-webkit-animation-name:flash-2;animation-name:flash-2;-webkit-animation-duration:.4s;animation-duration:.4s}.christmas-garland .christmas-garland__item:nth-child(4n+2) .shape{-webkit-animation-name:flash-3;animation-name:flash-3;-webkit-animation-duration:1.1s;animation-duration:1.1s}.christmas-garland .christmas-garland__item:nth-child(odd) .shape{-webkit-animation-duration:1.8s;animation-duration:1.8s}.christmas-garland .christmas-garland__item:nth-child(3n+1) .shape{-webkit-animation-duration:1.4s;animation-duration:1.4s}.christmas-garland .christmas-garland__item:before{content:\"\";position:absolute;background:#222;width:10px;height:10px;border-radius:3px;top:-1px;left:9px}.christmas-garland .christmas-garland__item:after{content:\"\";top:-9px;left:14px;position:absolute;width:52px;height:18px;border-bottom:solid #222 2px;border-radius:50%}.christmas-garland .christmas-garland__item:last-child:after{content:none}.christmas-garland .christmas-garland__item:first-child{margin-left:-40px}</style>\n<!-- developed by Raj Patel-->\n      \n<!-- developed by Raj Patel-->  \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/libs/jquery/1.12.4/jquery.min.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/flpbonhmkq9tsp29.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/a4kdpfesx15uh7ae.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/596z6ya3isgxcipy.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/39j8e9yrxs283d1x.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/33srijdbqcgk6lsz.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/wxbh27w4jdzpslxn.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/angedasgma230hxr.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" >\n       window.modules.layouts = {\"theme_id\":1,\"auth\":0,\"live\":true};     </script>\n    \n        \n    <script type=\"text/javascript\" >\n       window.modules.signin = [];     </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" >\n       document.addEventListener(\'DOMContentLoaded\', function() { \nvar newYearEvent = new window.NewYearEvent({\"snow\":{\"init\":true,\"options\":{\"particles\":{\"move\":{\"speed\":3,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":5,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":100,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\"', '', 0, '', '', '', 0, NULL, NULL, NULL, NULL, 20, 5, 'apple', 'style2', '1.02', 'slow', 80, 40, 6, 'infinite', '', '', '', '', '', '', '', '', '1', '1', '', 'dukesmm.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `earn_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `earn_note` text NOT NULL,
  `status` enum('Pending','Under Review','Funds Granted','Rejected','Not Eligible') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `link`, `date`) VALUES
(4, NULL, 'https://beasuperstar.store/img/files/4473634a5b6102e24e38b42d56e61b7c.png', '2025-01-26 11:32:02'),
(5, NULL, 'https://beasuperstar.store/img/files/2b9aaa2baf753f23dde0b2e21d12a74f.png', '2025-01-26 11:37:38'),
(6, NULL, 'https://beasuperstar.store/img/files/73e1af72752365d637bccb8a4e494c9a.png', '2025-01-26 11:50:11'),
(9, NULL, 'https://beasuperstar.store/img/files/9190a995c02968b8bc88c8971a370024.png', '2025-01-26 12:22:57'),
(10, NULL, 'https://beasuperstar.store/img/files/046ad6a9612a6a53315546468447eeff.png', '2025-01-26 12:25:42'),
(11, NULL, 'https://beasuperstar.store/img/files/09aedcf09e0cf9068e97735984b3f648.png', '2025-01-26 12:30:10'),
(12, NULL, 'https://beasuperstar.store/img/files/97a34e8859e946b5313f18f5f5f4c9f6.png', '2025-01-26 12:32:18'),
(13, NULL, 'https://beasuperstar.store/img/files/00eca98c793e9a544d0b7c0e3260f1e7.png', '2025-01-26 13:15:25'),
(14, NULL, 'https://beasuperstar.store/img/files/28ac0edbbb2b9f61928a8788c7e475a3.png', '2025-01-26 13:34:22'),
(15, NULL, 'https://beasuperstar.store/img/files/3834bb908f7437fbe11ea83c9ea16e93.png', '2025-01-26 13:40:17'),
(16, NULL, 'https://beasuperstar.store/img/files/ce6db7cb1d113b0d3cd2dd3632b24e6e.png', '2025-01-26 14:02:30'),
(17, NULL, 'https://beasuperstar.store/img/files/b142de980c5ae452394c3dc8d1a05157.png', '2025-01-26 14:48:37'),
(18, NULL, 'https://beasuperstar.store/img/files/2049911ef17abcebeb7093be46225d5a.png', '2025-01-26 14:52:41'),
(19, NULL, 'https://beasuperstar.store/img/files/95e412fe5fe020a57551d0996cd47049.png', '2025-01-26 15:03:19'),
(20, NULL, 'https://beasuperstar.store/img/files/a13b6c09fb4ce988312da4629f314266.png', '2025-01-26 15:28:45'),
(21, NULL, 'https://beasuperstar.store/img/files/c03045677d2f1a8b083ba288c6848341.png', '2025-01-26 15:43:13'),
(22, NULL, 'https://beasuperstar.store/img/files/a08101b94c88b202d09a7418b16a5623.png', '2025-01-26 15:45:57'),
(23, NULL, 'https://beasuperstar.store/img/files/0af70c26da13b12ec39940d5099bd3e9.png', '2025-01-26 15:46:31'),
(24, NULL, 'https://beasuperstar.store/img/files/bc62fb26d611c10c279200e3f88beb42.png', '2025-01-26 15:47:07'),
(25, NULL, 'https://beasuperstar.store/img/files/fae8bee6f903d543fec39151e3133917.png', '2025-01-26 15:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `General_options`
--

CREATE TABLE `General_options` (
  `id` int(11) NOT NULL,
  `coupon_status` enum('1','2') NOT NULL DEFAULT '1',
  `updates_show` enum('1','2') NOT NULL DEFAULT '1',
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `massorder` enum('1','2') NOT NULL DEFAULT '2',
  `balance_format` enum('0.0','0.00','0.000','0.0000') NOT NULL DEFAULT '0.0',
  `currency_format` enum('0','2','3','4') NOT NULL DEFAULT '3',
  `ticket_system` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `General_options`
--

INSERT INTO `General_options` (`id`, `coupon_status`, `updates_show`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `massorder`, `balance_format`, `currency_format`, `ticket_system`) VALUES
(1, '', '1', 'Active', 1024, 20, '1', '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', '/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', '/img/integrations/Getsitecontrol.svg', '<html>\r\n<body style=\'background-color:black\'>\r\n<canvas id=\'myCanvas\' width=\'800\' height=\'800\'></canvas>\r\n<script>\r\nconst max_fireworks = 5,\r\n  max_sparks = 50;\r\nlet canvas = document.getElementById(\'myCanvas\');\r\nlet context = canvas.getContext(\'2d\');\r\nlet fireworks = [];\r\n \r\nfor (let i = 0; i < max_fireworks; i++) {\r\n  let firework = {\r\n    sparks: []\r\n  };\r\n  for (let n = 0; n < max_sparks; n++) {\r\n    let spark = {\r\n      vx: Math.random() * 5 + .5,\r\n      vy: Math.random() * 5 + .5,\r\n      weight: Math.random() * .3 + .03,\r\n      red: Math.floor(Math.random() * 2),\r\n      green: Math.floor(Math.random() * 2),\r\n      blue: Math.floor(Math.random() * 2)\r\n    };\r\n    if (Math.random() > .5) spark.vx = -spark.vx;\r\n    if (Math.random() > .5) spark.vy = -spark.vy;\r\n    firework.sparks.push(spark);\r\n  }\r\n  fireworks.push(firework);\r\n  resetFirework(firework);\r\n}\r\nwindow.requestAnimationFrame(explode);\r\n \r\nfunction resetFirework(firework) {\r\n  firework.x = Math.floor(Math.random() * canvas.width);\r\n  firework.y = canvas.height;\r\n  firework.age = 0;\r\n  firework.phase = \'fly\';\r\n}\r\n \r\nfunction explode() {\r\n  context.clearRect(0, 0, canvas.width, canvas.height);\r\n  fireworks.forEach((firework,index) => {\r\n    if (firework.phase == \'explode\') {\r\n        firework.sparks.forEach((spark) => {\r\n        for (let i = 0; i < 10; i++) {\r\n          let trailAge = firework.age + i;\r\n          let x = firework.x + spark.vx * trailAge;\r\n          let y = firework.y + spark.vy * trailAge + spark.weight * trailAge * spark.weight * trailAge;\r\n          let fade = i * 20 - firework.age * 2;\r\n          let r = Math.floor(spark.red * fade);\r\n          let g = Math.floor(spark.green * fade);\r\n          let b = Math.floor(spark.blue * fade);\r\n          context.beginPath();\r\n          context.fillStyle = \'rgba(\' + r + \',\' + g + \',\' + b + \',1)\';\r\n          context.rect(x, y, 4, 4);\r\n          context.fill();\r\n        }\r\n      });\r\n      firework.age++;\r\n      if (firework.age > 100 && Math.random() < .05) {\r\n        resetFirework(firework);\r\n      }\r\n    } else {\r\n      firework.y = firework.y - 10;\r\n      for (let spark = 0; spark < 15; spark++) {\r\n        context.beginPath();\r\n        context.fillStyle = \'rgba(\' + index * 50 + \',\' + spark * 17 + \',0,1)\';\r\n        context.rect(firework.x + Math.random() * spark - spark / 2, firework.y + spark * 4, 4, 4);\r\n        context.fill();\r\n      }\r\n      if (Math.random() < .001 || firework.y < 200) firework.phase = \'explode\';\r\n    }\r\n  });\r\n  window.requestAnimationFrame(explode);\r\n}\r\n</script>\r\n</body>\r\n</html>', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', '/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', '/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', '/img/integrations/JivoChat.svg', '<script type=\"text/javascript\">window.$crisp=[];window.CRISP_WEBSITE_ID=\"1b6157f9-f485-4a23-97b2-c9802f29b986\";(function(){d=document;s=d.createElement(\"script\");s.src=\"https://client.crisp.chat/l.js\";s.async=1;d.getElementsByTagName(\"head\")[0].appendChild(s);})();</script>', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', '/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', '/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', '/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', '/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', '/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', '/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', '/img/integrations/Getbutton.svg', 'Help Center', 1, 1),
(13, 'Google reCAPTCHA v2', 'It uses an advanced risk analysis engine and adaptive challenges to prevent malware from engaging in abusive activities on your website.', '/img/integrations/reCAPTCHA.svg', '', 1, 1),
(14, 'Whatsapp', 'Whatsapp is for Personal Support of your Users', '/img/integrations/whatsapp.svg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `invo`
--

CREATE TABLE `invo` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `renewal_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invo`
--

INSERT INTO `invo` (`id`, `client_name`, `domain_name`, `renewal_date`, `amount`) VALUES
(1, 'John Doe', 'johndoe.com', '2024-06-01', 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `kuponlar`
--

CREATE TABLE `kuponlar` (
  `id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `adet` int(11) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_kullananlar`
--

CREATE TABLE `kupon_kullananlar` (
  `id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'English', 'en', '2', '1'),
(2, 'Arabic', 'ar', '2', '0'),
(3, 'Russian', 'ru', '2', '0'),
(4, '', 'ta', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Mailforms`
--

CREATE TABLE `Mailforms` (
  `id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `type` enum('Admins','Users') NOT NULL DEFAULT 'Users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `menu_name_lang` longtext DEFAULT NULL,
  `menu_line` double NOT NULL,
  `type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `slug` varchar(225) NOT NULL DEFAULT '2',
  `icon` varchar(225) DEFAULT NULL,
  `menu_status` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `visible` enum('Internal','External') NOT NULL DEFAULT 'Internal',
  `active` varchar(225) NOT NULL,
  `tiptext` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `menu_name_lang`, `menu_line`, `type`, `slug`, `icon`, `menu_status`, `visible`, `active`, `tiptext`) VALUES
(1, 'NEW ORDER', '{\"en\": \"New Order\"}', 2, '2', '/', 'fa fa-shopping-bag', '1', 'Internal', 'neworder', ''),
(3, 'ORDERS', '{\"en\": \"Orders \"}', 3, '2', '/orders', 'fas fa-server', '1', 'Internal', 'orders', ''),
(6, 'SERVICES', '{\"en\": \"Services\"}', 5, '2', '/services', 'fas fa-file-alt', '1', 'Internal', 'services', ''),
(7, 'ADD FUNDS', '{\"en\": \"Add Funds\"}', 6, '2', '/addfunds', 'fab fa-cc-amazon-pay', '1', 'Internal', 'addfunds', ''),
(8, 'API DOCS', '{\"en\": \"Api\"}', 9, '2', '/api', 'fal fa-plug', '1', 'Internal', 'api', ''),
(9, 'TICKETS', '{\"en\": \"Tickets \"}', 8, '2', '/tickets', 'fas fa-headset', '1', 'Internal', 'tickets', ''),
(10, 'CHILD PANEL', '{\"en\": \"Child Panels\"}', 10, '1', '/child-panels', 'fas fa-child', '1', 'Internal', 'child-panels', 'Shown only if child panels selling enabled'),
(11, 'REFER & EARN', '{\"en\": \"Refer & Earn\"}', 11, '2', '/refer', 'fas fa-bezier-curve', '1', 'Internal', 'refer', 'Shown only if affiliate system enabled for use'),
(13, 'TERMS', '{\"en\": \"Terms\"}', 12, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'Internal', 'terms', ''),
(14, 'SIGNUP', '{\"en\": \"Signup\"}', 2, '2', '/signup', 'fas fa-arrow-right', '1', 'External', 'signup', 'Shown only if Signup system enabled for use'),
(18, 'TERMS', '{\"en\": \"Terms\"}', 3, '2', '/terms', 'fas fa-exclamation-triangle', '1', 'External', 'terms', ''),
(32, 'BLOGS\r\n', '{\"en\": \"blogs\"}', 16, '2', '/blog', 'fab fa-500px', '1', 'Internal', 'blog', ''),
(24, 'SERVICES', '{\"en\": \"Services\"}', 14, '2', '/services', 'fas fa-file-alt', '1', 'External', 'services', ''),
(31, 'BLOGS', '{\"en\": \"blogs\"}', 15, '2', '/blog', 'fab fa-500px', '1', 'External', 'blog', ''),
(36, 'DASHBOARD', '{\"en\":\"Dashboard\",\"ar\":\"\"}', 1, '2', '/dashboard', 'far fa-address-card', '1', 'Internal', 'dashboard', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_title_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_content` varchar(225) NOT NULL,
  `news_content_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_icon`, `news_title`, `news_title_lang`, `news_content`, `news_content_lang`, `news_date`) VALUES
(3, '4', 'Read Description ', '{\"en\":\"Read Description \",\"ar\":\"\",\"ru\":\"\"}', '<p style=\"text-align: center; \"><b>اسلام وعلیکم&nbsp;</b></p><p style=\"text-align: center; \"><b>تمام لوگوں سے گزارش ہے کہ آرڈر لگاتے وقت سروس کی شرائط ایک بار ضرور پڑھیں ۔۔ کسی شکایت یا مسائل کی صورت میں دیے گئے واٹس ایپ پر ر', '{\"en\":\"<p style=\\\"text-align: center; \\\"><b>\\u0627\\u0633\\u0644\\u0627\\u0645 \\u0648\\u0639\\u0644\\u06cc\\u06a9\\u0645&nbsp;<\\/b><\\/p><p style=\\\"text-align: center; \\\"><b>\\u062a\\u0645\\u0627\\u0645 \\u0644\\u0648\\u06af\\u0648\\u06ba \\u0633\\u06d2 \\u06af\\u0632\\u0627\\u0631\\u0634 \\u06c1\\u06d2 \\u06a9\\u06c1 \\u0622\\u0631\\u0688\\u0631 \\u0644\\u06af\\u0627\\u062a\\u06d2 \\u0648\\u0642\\u062a \\u0633\\u0631\\u0648\\u0633 \\u06a9\\u06cc \\u0634\\u0631\\u0627\\u0626\\u0637 \\u0627\\u06cc\\u06a9 \\u0628\\u0627\\u0631 \\u0636\\u0631\\u0648\\u0631 \\u067e\\u0691\\u06be\\u06cc\\u06ba \\u06d4\\u06d4 \\u06a9\\u0633\\u06cc \\u0634\\u06a9\\u0627\\u06cc\\u062a \\u06cc\\u0627 \\u0645\\u0633\\u0627\\u0626\\u0644 \\u06a9\\u06cc \\u0635\\u0648\\u0631\\u062a \\u0645\\u06cc\\u06ba \\u062f\\u06cc\\u06d2 \\u06af\\u0626\\u06d2 \\u0648\\u0627\\u0679\\u0633 \\u0627\\u06cc\\u067e \\u067e\\u0631 \\u0631\\u0627\\u0628\\u0637\\u06c1 \\u06a9\\u0631\\u06cc\\u06ba&nbsp;<\\/b><\\/p><p><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; \\u0634\\u06a9\\u0631\\u06cc\\u06c1<\\/b><\\/p>\",\"ar\":\"\",\"ru\":\"\"}', '2025-01-28 11:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `notifications_popup`
--

CREATE TABLE `notifications_popup` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` text DEFAULT NULL,
  `action_link` text DEFAULT NULL,
  `isAllUser` enum('1','0') NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `status` enum('1','2','0') NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `api_orderid` int(11) NOT NULL DEFAULT 0,
  `order_error` text NOT NULL,
  `order_detail` text DEFAULT NULL,
  `order_api` int(11) NOT NULL DEFAULT 0,
  `api_serviceid` int(11) NOT NULL DEFAULT 0,
  `api_charge` double NOT NULL DEFAULT 0,
  `api_currencycharge` double DEFAULT 1,
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double NOT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT 0,
  `subscriptions_id` double NOT NULL DEFAULT 0,
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT 0,
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT 0,
  `order_finish` double NOT NULL DEFAULT 0,
  `order_remains` double NOT NULL DEFAULT 0,
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text DEFAULT NULL,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT 0,
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site',
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') NOT NULL DEFAULT 'Pending',
  `is_refill` enum('1','2') NOT NULL DEFAULT '1',
  `refill` varchar(225) NOT NULL DEFAULT '1',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'true',
  `api_refillid` double NOT NULL DEFAULT 0,
  `avg_done` enum('0','1') NOT NULL DEFAULT '1',
  `order_increase` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('1','2') NOT NULL DEFAULT '1',
  `seo_title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modified` datetime NOT NULL,
  `del` varchar(255) NOT NULL DEFAULT '1',
  `page_content2` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(2, 'Add funds', 'addfunds', '<iframe width=\"600\" height=\"400\" src=\"https://www.youtube.com/embed/kFVmfDv9cHI?si=KpnSJh-QELDrOUAH\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" referrerpolicy=\"strict-origin-when-cross-origin\" allowfullscreen=\"\"></iframe>', '1', '1', 'BeASuperstar', 'How to Grow social media Accounts.Sure! Here are 50 additional short SEO keywords for your SMM panel:\r\n\r\n- SMM reseller  \r\n- buy followers  \r\n- social media panel  \r\n- Instagram growth  \r\n- YouTube views  \r\n- TikTok likes  \r\n', 'How to Grow Social Media Accounts', '2025-02-13 05:47:55', '2', ''),
(787, 'Login', 'auth', '', '1', '1', 'Social Media Marketing Agency', 'how to get success in social media', 'Increase followers in one day', '2025-02-18 04:16:58', '2', ''),
(9, 'New Order', 'neworder', '', '1', '1', '', '', '', '2025-01-13 11:10:36', '2', ''),
(14, 'Terms', 'terms', '', '1', '1', '', '', '', '2022-02-07 08:41:16', '2', '<h2 class=\"mb-5\">Terms & Conditions of SMMPanel</h2> 																				 <p>The use of services provided by SMMPanel (<b> SMM Panel  </b>) Established the agreement to these terms. By registering or using our services you agree that you have read and fully understood the following terms of Service and SMMPanel will not be help liable for loss in any way for users who have not read the below terms of service.</p>           <b>Delivery Policy</b>            <p> ● By placing an order with <b>SMMPanel</b>, you automatically accept all the below-listed term of services whether you read them or not.</p>            <p> ● We reserve the right to change these terms of service without notice. You are expected to read all terms of service before placing every order to ensure you are up to date with any changes or any future changes. </p> <p> ● You will only use the <b>SMMPanel</b> website in a manner which follows all agreements made with <b>Soundcloud/Vine/Pinterest/Youtube/other social media site</b> on their individual Terms of Service page.</p> <p> ● <b>SMMPanel</b> rates are subject to change at any time without notice. The terms stay in effect in the case of rate changes.</p> <p> ● <b>SMMPanel</b>( Digital SMMPanel ) does not guarantee a delivery time for any services as its depend on the services order quantity. We offer our best estimation for when the order will be delivered. This is only an estimation and <b>SMMPanel</b> will not refund orders that are processing if you feel they are taking too long. </p> <p> ● <b>SMMPanel</b> tries hard to deliver exactly what is expected of us by our resellers. In this case, we reserve the right to change a service type if we deem it necessary to complete an order. </p> <p> ● <b>SMMPanel</b> Always provide the amount mentioned in Service Descriptions , But Remember , If Incase there is Any Update in Any Social Media Platforms then the Drop Ratios of NON DROP or any Guarantee can be Changed , And SMMPanel cant be Responsible for this.  </p>             <b>Disclaimer:</b>           <p><b>SMMPanel</b> will not be responsible for any damages you or your business may suffer.</p>           <b>Liabilities:</b>           <p><b>SMMPanel</b> is in no way liable for any account suspension or picture deletion done by Instagram or Twitter or Facebook or YouTube or Other Social Media.</p>           <br> 	<h2 class=\"mb-5\">Privacy Policy</h2> 	<p> ● This policy covers how we use your personal information. We take your privacy seriously and will take all measures to protect your personal information.  Any personal information received will only be used to fill your order. We will not sell or redistribute your personal information to anyone. All personal information is encrypted and saved in secure servers. </p> 			  <h2 class=\"mb-5\">Refund Policy</h2> 			 													<p>No refunds will be made to your payment method. After a deposit has been completed, there is no way to reverse it. You must use your balance on orders from SMMPanel</p>           <p>You agree that once you complete a payment, you will not file a dispute or a chargeback against us for any reason.</p>           <p>If you file a dispute or charge-back against us after a deposit, we reserve the right to terminate all future orders, ban you from our site. We also reserve the right to take away any followers or likes we delivered to your or your clients Instagram/Facebook/Twitter or other social media account.</p>           <p>Orders placed in SMMPanel will not be refunded or canceled after they are placed.You will receive a refund credit to your SMMPanel account if the order is non deliverable</p>           <p>Misplaced or Private account orders will not qualify for a refund. Be sure to confirm each and every order before placing it.</p>           <p>Wrong Links Orders cant be Refunded , Once Order is Placed !!</p>           <p>Fraudulent activity such as using unauthorized or stolen credit cards will lead to termination of your account. There are no exceptions.</p>           <p>Please do not use more than one server at the same time for the same page. We cannot give you correct followers/likes number in that case. We will not refund for these orders.</p> 										 								 											<h2 class=\"mb-5\">About Services</h2> 											<div class=\"read-text\"> 												 																	<p> ● <b>SMMPanel</b> will only be used to promote your YouTube or Instagram or Telegram or Pinterest or Social account and help boost your \"Appearance\" only. </p>  <p> ● We <b>DO NOT</b> guarantee your new followers will interact with you, we simply <b>guarantee</b> you to get the followers you pay for. </p>  <p> ● We <b>DO NOT</b> guarantee 100% of our accounts will have a profile picture, full bio and uploaded pictures, although we strive to make this the reality for all accounts. </p>  <p> ● We <b>DO NOT</b> guarantee 100% of our accounts will have a profile picture, full bio and uploaded pictures, although we strive to make this the reality for all accounts. </p>  <p> ● You will not upload anything into the <b>SMM Panel</b> site including nudity or any material that is not accepted or suitable for the YouTube or Instagram or Telegram or Pinterest or Social Media community. </p>  <b> ●</b> If your page had 100k+ followers/likes/views already before you order us, it will not cover refill protection, even if you order for refill server from us, as its not possible to understand from where you lost the followers/likes/views.   			</div>'),
(789, 'Mass Order', 'massorder', '', '1', '1', '', '', '', '2022-02-07 08:43:06', '2', ''),
(790, 'Orders', 'orders', '', '1', '1', '', '', '', '2022-02-07 08:53:20', '2', ''),
(791, 'Services', 'services', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(792, 'Tickets', 'tickets', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(793, 'API', 'api', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(794, 'Signup', 'signup', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(795, 'Blog', 'blog', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `panel_categories`
--

CREATE TABLE `panel_categories` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1 -> ENABLE, 0 -> DISABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` int(11) NOT NULL,
  `panel_domain` text NOT NULL,
  `panel_plan` text NOT NULL,
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `renewal_date` datetime NOT NULL,
  `panel_type` enum('Child','Main') NOT NULL DEFAULT 'Main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `panel_info`
--

INSERT INTO `panel_info` (`panel_id`, `panel_domain`, `panel_plan`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `date_created`, `api_key`, `renewal_date`, `panel_type`) VALUES
(1, 'yourpanel.com', 'A', 'Active', 1834, 1834, '2022-01-24 10:58:08', '', '2025-02-23 10:58:08', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `methodId` int(11) NOT NULL,
  `methodName` varchar(300) DEFAULT NULL,
  `methodLogo` varchar(200) DEFAULT NULL,
  `methodVisibleName` varchar(300) DEFAULT NULL,
  `methodCallback` varchar(100) DEFAULT NULL,
  `methodMin` int(11) NOT NULL DEFAULT 1,
  `methodMax` int(11) NOT NULL DEFAULT 1,
  `methodFee` float NOT NULL DEFAULT 0,
  `methodBonusPercentage` float NOT NULL DEFAULT 0,
  `methodBonusStartAmount` int(11) NOT NULL DEFAULT 0,
  `methodCurrency` varchar(3) DEFAULT NULL,
  `methodStatus` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 -> off, 1 -> on',
  `methodExtras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `methodPosition` int(11) DEFAULT NULL,
  `methodInstructions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(1, 'PayTM Checkout', 'https://i.postimg.cc/WzMm5g97/download.jpg', 'PayTM Checkout', 'payTMCheckout', 1, 100000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"\",\"merchantKey\":\"\"}', 3, '');
INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(2, 'PayTM Merchant', 'https://i.postimg.cc/TPLxrggH/paytm-napdxw.png', 'PayTM / Phone PayQr', 'payTMMerchant', 1, 10000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"iKORnF38090297478618\"}', 2, '&lt;p&gt;&lt;img src=&quot;data:image/png;base64,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&quot;&gt;&lt;/p&gt;');
INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(3, 'Perfect Money', 'https://i.postimg.cc/dVnkQ4kC/perfectmoney-wgszxi.png', 'Perfect Money', 'perfectMoney', 10, 1000, 3, 0, 0, 'USD', '0', '{\"accountNumber\":\"\",\"alternatePassPhrase\":\"\"}', 2, ''),
(4, 'Coinbase Commerce', 'https://i.postimg.cc/pXbns9Mm/coinbase-bcpppn.png', 'Coinbase Commerce', 'coinbaseCommerce', 1, 1000, 0, 0, 0, 'USD', '0', '{\"APIKey\":\"\"}', 1, NULL),
(5, 'Kashier', 'https://i.postimg.cc/6pS05WGn/download-4.png', 'Kashier', 'kashier', 1, 1000, 0, 0, 0, 'USD', '0', '{\"MID\":\"\",\"APIKey\":\"\",\"mode\":\"live\"}', 1, NULL),
(6, 'Razorpay', 'https://i.postimg.cc/W4T4Zrrv/download-5.png', 'Razorpay', 'razorPay', 1, 10000, 0, 0, 0, 'INR', '0', '{\"APIPublicKey\":\"\",\"APISecretKey\":\"\",\"gatewayThemeColour\":\"\"}', 1, NULL),
(7, 'PhonePe (Automatic)', 'https://i.postimg.cc/mD97r7GG/download-1.png', 'PhonePe (Automatic)', 'phonepe', 1, 10000, 0, 0, 0, 'INR', '0', '{\"email\":\"sarjeelgamerzone08@gmail.com\",\"password\":\"aobs rgkj vwip iehf\"}', 2, ''),
(8, 'Easypaisa (Automatic)', 'https://i.postimg.cc/SNGQhR31/download-6.png', 'Easypaisa (Automatic)', 'easypaisa', 50, 50000, 2, 0, 0, 'PKR', '0', '{\"email\":false,\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"easypaisa\"}', 2, ''),
(9, 'Jazzcash (Automatic)', 'https://i.postimg.cc/ZqQKMQ2T/download-7.png', 'Jazzcash (Automatic)', 'jazzcash', 10, 50000, 2, 0, 0, 'PKR', '0', '{\"email\":false,\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"jazzcash\"}', 2, ''),
(10, 'Instamojo', 'https://i.postimg.cc/7hmRKFt9/images.png', 'Instamojo', 'instamojo', 1, 1000, 0, 0, 0, 'INR', '0', '{\"APIKey\":\"\",\"authToken\":\"\"}', 3, NULL),
(11, 'Cashmaal', 'https://i.postimg.cc/26q7Z3PC/download-1.jpg', 'Cashmaal', 'cashmaal', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"webId\":\"\"}', 2, NULL),
(12, 'Alipay', 'https://i.postimg.cc/xd8KwcjL/download-8.png', 'Alipay', 'alipay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"partnerId\":\"\",\"privateKey\":\"\"}', 3, NULL),
(13, 'PayU', 'https://i.postimg.cc/bJ21vWtJ/download-9.png', 'PayU', 'payU', 1, 10000, 0, 0, 0, 'INR', '0', '{\"merchantKey\":\"Ijrirk\",\"merchantSalt\":\"ZTZBs5h\"}', 2, '');
INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(14, 'Upiapi', 'https://i.postimg.cc/xCWhkwpF/download-11.png', 'UPI Api', 'upiapi', 1, 10000, 0, 0, 0, 'INR', '0', '{\"productionAPIToken\":\"49d6e18c1fc04a9d9079a2726bbfd7a9\",\"productionAPISecretKey\":\"&quot;isBrandLevelView&quot;:false,&quot;isMerchantLevelView&quot;:true,&quot;isStoreLevelView&quot;:false,&quot;isShowStoreFilter&quot;:false,&quot;brand_id&quot;:null,&quot;merchant_id&quot;:50207214,&quot;store_id&quot;:null,&quot;userName&quot;:&quot;919892756203&quot;,&quot;name&quot;:&quot;&quot;,&quot;userType&quot;:&quot;PRIMARY&quot;,&quot;businessName&quot;:&quot;Flixer Company&quot;,&quot;sideBarPermissions&quot;:[{&quot;imgUrl&quot;:&quot;https:\\/\\/d30gqtvesfc1d5.cloudfront.net\\/organizedDashboard\\/home.png&quot;,&quot;name&quot;:&quot;Home&quot;,&quot;redirectTo&quot;:&quot;home&quot;,&quot;isList&quot;:false,&quot;subList&quot;:[]},{&quot;imgUrl&quot;:&quot;https:\\/\\/d30gqtvesfc1d5.cloudfront.net\\/organizedDashboard\\/transaction-history.png&quot;,&quot;name&quot;:&quot;Transaction History&quot;,&quot;redirectTo&quot;:&quot;transactionhistory&quot;,&quot;isList&quot;:false,&quot;subList&quot;:[]},{&quot;imgUrl&quot;:&quot;https:\\/\\/d30gqtvesfc1d5.cloudfront.net\\/organizedDashboard\\/interset-account.png&quot;,&quot;name&quot;:&quot;BharatPe A\\/c&quot;,&quot;redirectTo&quot;:&quot;interestaccount&quot;,&quot;isList&quot;:false,&quot;subList&quot;:[]},{&quot;imgUrl&quot;:&quot;img\\/speaker.png&quot;,&quot;name&quot;:&quot;Speaker&quot;,&quot;redirectTo&quot;:&quot;speaker&quot;,&quot;isList&quot;:true,&quot;subList&quot;:[{&quot;name&quot;:&quot;My Order&quot;,&quot;redirectTo&quot;:&quot;speakerorderlist&quot;},{&quot;name&quot;:&quot;Active Speakers&quot;,&quot;redirectTo&quot;:&quot;activespeakers&quot;},{&quot;name&quot;:&quot;Service Request&quot;,&quot;redirectTo&quot;:&quot;servicerequest&quot;}]},{&quot;imgUrl&quot;:&quot;https:\\/\\/d30gqtvesfc1d5.cloudfront.net\\/organizedDashboard\\/download-qr.png&quot;,&quot;name&quot;:&quot;Download QR&quot;,&quot;redirectTo&quot;:&quot;downloadqr&quot;,&quot;isList&quot;:false,&quot;subList&quot;:[]},{&quot;imgUrl&quot;:&quot;https:\\/\\/d30gqtvesfc1d5.cloudfront.net\\/organizedDashboard\\/settings.png&quot;,&quot;name&quot;:&quot;Settings&quot;,&quot;redirectTo&quot;:&quot;notificationpreference&quot;,&quot;isList&quot;:false,&quot;subList&quot;:[]}],&quot;agentDetail&quot;:null,&quot;accessToken&quot;:&quot;49d6e18c1fc04a9d9079a2726bbfd7a9&quot;,&quot;infoMssgs&quot;:{&quot;isShow&quot;:false},&quot;loginAt&quot;:&quot;2024-06-13 01:09:56&quot;,&quot;isOrganized&quot;:false,&quot;merchantDetailSettlement&quot;:&quot;BHARATPE_ACCOUNT&quot;,&quot;settlementLevel&quot;:&quot;MERCHANT&quot;\"}', 3, '&lt;p&gt;&lt;img src=&quot;data:image/jpeg;base64,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&quot;&gt;&lt;/p&gt;');
INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(15, 'Opay Express Checkout', 'https://i.postimg.cc/NjfTX5HZ/download-3.png', 'Opay Express Checkout', 'opay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"merchantId\":\"\",\"publicKey\":\"\",\"secretKey\":\"\"}', 3, ''),
(16, 'Flutterwave', 'https://i.postimg.cc/k5LtLspd/download-10.png', 'Flutterwave', 'flutterwave', 1, 1000, 0, 0, 0, 'USD', '0', '{\"secretKey\":\"\"}', 3, ''),
(17, 'Stripe', 'https://i.postimg.cc/j25KX4qp/download-2.png', 'Stripe', 'stripe', 1, 1000, 0, 0, 0, 'USD', '0', '{\"publishableKey\":\"\",\"secretKey\":\"\"}', 3, ''),
(18, 'Payeer', 'https://i.postimg.cc/q7LtRQNn/payeer-ygcgcj.png', 'Payeer', 'payeer', 1, 1000, 0, 0, 0, 'USD', '0', '{\"shopId\":\"\",\"secretKey\":\"\"}', 3, ''),
(22, 'bharatpe', 'https://bp-wp-website-prod.s3.ap-south-1.amazonaws.com/wp-content/uploads/2023/09/bharatpe_logo.png', 'Bharatpe', 'bharatpe', 1, 100000000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"50207214\",\"token\":\"49d6e18c1fc04a9d9079a2726bbfd7a9\"}', 1, '&lt;p class=&quot;ql-align-center&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;ql-align-center&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;ql-align-center&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;'),
(100, 'Manual One', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manuall', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 3, ''),
(101, 'Manual Two', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manual Two', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 1, NULL),
(102, 'Manual Three', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manual Three', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, NULL),
(103, 'Manual Four', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manual Four', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, '&lt;p&gt;&lt;strong style=&quot;color: rgb(230, 0, 0);&quot;&gt;Pay Via our what\'s alpp&lt;/strong&gt;&lt;/p&gt;'),
(104, 'Manual Five', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manual Five', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 3, ''),
(105, 'Manual Six', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manuall', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, '&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;'),
(106, 'Manual Seven', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manuall', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 1, '&lt;h2&gt;&lt;br&gt;&lt;/h2&gt;'),
(107, 'Manual Eight', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manual Eight', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 21, NULL),
(108, 'Manual Nine', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manual Nine', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 22, NULL),
(109, 'Manual Ten', 'https://i.postimg.cc/15LhnN23/images-1.png', 'Manual Ten', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_amount` decimal(15,4) NOT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` varchar(255) NOT NULL DEFAULT 'No',
  `payment_mode` enum('Manual','Automatic') NOT NULL DEFAULT 'Automatic',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int(11) NOT NULL,
  `t_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` int(11) NOT NULL,
  `referral_client_id` int(11) NOT NULL,
  `referral_clicks` double NOT NULL DEFAULT 0,
  `referral_sign_up` double NOT NULL DEFAULT 0,
  `referral_totalFunds_byReffered` double NOT NULL DEFAULT 0,
  `referral_earned_commision` double DEFAULT 0,
  `referral_requested_commision` varchar(225) DEFAULT '0',
  `referral_total_commision` double DEFAULT 0,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `referral_code` text NOT NULL,
  `referral_rejected_commision` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_payouts`
--

CREATE TABLE `referral_payouts` (
  `r_p_id` int(11) NOT NULL,
  `r_p_code` text NOT NULL,
  `r_p_status` enum('1','2','3','4','0') NOT NULL DEFAULT '0',
  `r_p_amount_requested` double NOT NULL,
  `r_p_requested_at` datetime NOT NULL,
  `r_p_updated_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_api` int(11) NOT NULL DEFAULT 0,
  `api_service` int(11) NOT NULL DEFAULT 0,
  `api_servicetype` enum('1','2') NOT NULL DEFAULT '2',
  `api_detail` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') NOT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_price` varchar(225) NOT NULL,
  `service_min` double NOT NULL,
  `service_max` double NOT NULL,
  `service_dripfeed` enum('1','2') NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT 0,
  `service_autopost` double NOT NULL DEFAULT 0,
  `service_speed` enum('1','2','3','4') NOT NULL,
  `want_username` enum('1','2') NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') NOT NULL DEFAULT 'normal',
  `price_cal` text DEFAULT NULL,
  `instagram_second` enum('1','2') NOT NULL DEFAULT '2',
  `start_count` enum('none','instagram_follower','instagram_photo','') NOT NULL,
  `instagram_private` enum('1','2') NOT NULL,
  `name_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time_lang` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `time` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'false',
  `service_profit` varchar(225) NOT NULL,
  `refill_days` varchar(225) NOT NULL DEFAULT '30',
  `refill_hours` varchar(225) NOT NULL DEFAULT '24',
  `avg_days` int(11) NOT NULL,
  `avg_hours` int(11) NOT NULL,
  `avg_minutes` int(11) NOT NULL,
  `avg_many` int(11) NOT NULL,
  `price_profit` int(11) NOT NULL,
  `service_overflow` int(11) NOT NULL DEFAULT 0,
  `service_sync` enum('0','1') NOT NULL DEFAULT '1',
  `service_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int(11) NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int(11) NOT NULL,
  `api_limit` double NOT NULL DEFAULT 0,
  `currency` varchar(200) DEFAULT NULL,
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi',
  `status` enum('1','2') NOT NULL DEFAULT '2',
  `api_sync` enum('0','1') NOT NULL DEFAULT '1',
  `api_login_credentials` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_seo` text NOT NULL,
  `site_title` text DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_keywords` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `site_currency` varchar(2555) NOT NULL DEFAULT 'try',
  `site_base_currency` varchar(20) DEFAULT NULL,
  `site_currency_converter` tinyint(1) NOT NULL DEFAULT 0,
  `site_update_rates_automatically` int(11) NOT NULL DEFAULT 0,
  `last_updated_currency_rates` datetime DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_theme_alt` text DEFAULT NULL,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text DEFAULT NULL,
  `recaptcha_secret` text DEFAULT NULL,
  `custom_header` text DEFAULT NULL,
  `custom_footer` text DEFAULT NULL,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `service_speed` enum('1','2') NOT NULL,
  `service_list` enum('1','2') NOT NULL,
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_apimail` enum('1','2') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `sms_validate` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 -> OK, 0 -> NO',
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `servis_siralama` varchar(255) NOT NULL,
  `bronz_statu` int(11) NOT NULL,
  `silver_statu` int(11) NOT NULL,
  `gold_statu` int(11) NOT NULL,
  `bayi_statu` int(11) NOT NULL,
  `child_panel_nameservers` varchar(255) NOT NULL DEFAULT '{"ns1":"ns1.scriptlux.com","ns2":"ns2.scriptlux.com"}',
  `childpanel_price` double DEFAULT NULL,
  `snow_effect` enum('1','2') NOT NULL DEFAULT '2',
  `snow_colour` text NOT NULL,
  `promotion` enum('1','2') DEFAULT '2',
  `referral_commision` double NOT NULL,
  `referral_payout` double NOT NULL,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `childpanel_selling` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> OFF , 2 -> ON',
  `tickets_per_user` double NOT NULL DEFAULT 5,
  `name_fileds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `skype_feilds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `otp_login` enum('1','2','0') NOT NULL DEFAULT '0',
  `auto_deactivate_payment` enum('1','2') NOT NULL DEFAULT '1',
  `service_avg_time` enum('1','0') NOT NULL DEFAULT '0',
  `alert_orderfail` enum('1','2') NOT NULL DEFAULT '2',
  `alert_welcomemail` enum('1','2') NOT NULL DEFAULT '2',
  `freebalance` enum('1','2') NOT NULL DEFAULT '1',
  `freeamount` double DEFAULT 0,
  `alert_newmessage` enum('1','2') NOT NULL DEFAULT '1',
  `email_confirmation` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `fundstransfer_fees` varchar(10) NOT NULL,
  `permissions` text DEFAULT NULL,
  `fake_order_service_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `fake_order_min` int(11) DEFAULT NULL,
  `fake_order_max` int(11) DEFAULT NULL,
  `panel_orders` int(11) DEFAULT NULL,
  `panel_orders_pattern` varchar(255) NOT NULL DEFAULT '{"panel_orders_prefix":"","panel_orders_suffix":""}',
  `downloaded_category_icons` tinyint(1) NOT NULL DEFAULT 0,
  `summary_card_background_color` varchar(100) DEFAULT 'theme_colour',
  `google_login` varchar(100) NOT NULL DEFAULT '{"purchased":"1","status":"1"}',
  `services_average_time` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_seo`, `site_title`, `site_description`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `site_base_currency`, `site_currency_converter`, `site_update_rates_automatically`, `last_updated_currency_rates`, `favicon`, `site_language`, `site_theme`, `site_theme_alt`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_apimail`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_serviceapialert`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `sms_validate`, `admin_mail`, `admin_telephone`, `resetpass_page`, `resetpass_sms`, `resetpass_email`, `site_maintenance`, `servis_siralama`, `bronz_statu`, `silver_statu`, `gold_statu`, `bayi_statu`, `child_panel_nameservers`, `childpanel_price`, `snow_effect`, `snow_colour`, `promotion`, `referral_commision`, `referral_payout`, `referral_status`, `childpanel_selling`, `tickets_per_user`, `name_fileds`, `skype_feilds`, `otp_login`, `auto_deactivate_payment`, `service_avg_time`, `alert_orderfail`, `alert_welcomemail`, `freebalance`, `freeamount`, `alert_newmessage`, `email_confirmation`, `resend_max`, `status`, `fundstransfer_fees`, `permissions`, `fake_order_service_enabled`, `fake_order_min`, `fake_order_max`, `panel_orders`, `panel_orders_pattern`, `downloaded_category_icons`, `summary_card_background_color`, `google_login`, `services_average_time`) VALUES
(1, 'Smm Panel', 'Smm Panel', 'Social Media Marketing Agency', 'SMM panel SMM services buy social media services best SMM panel cheap SMM panel Instagram growth services Facebook marketing panel social media panel buy Instagram followers social media engagement services Twitter growth services social media marketing panel bulk social media services buy social media followers YouTube views panel TikTok followers panel buy YouTube subscribers high-quality social media services Instagram likes panel Facebook likes panel TikTok engagement panel buy TikTok likes social media growth services auto likes panel Instagram engagement panel social media automation panel buy YouTube views fast SMM services increase Instagram followers buy followers for social media bulk Instagram followers best social media marketing services Instagram likes service YouTube views service Instagram followers for sale Twitter followers panel organic social media growth buy Twitter followers increase social media engagement buy real Instagram followers best panel for social media marketing SMM reseller panel panel for social media growth Facebook growth services TikTok views panel buy TikTok comments increase YouTube views Instagram comments panel cheap Instagram followers SMM reseller services YouTube engagement panel buy social media likes Facebook comments service bulk social media followers premium SMM services reliable SMM panel fast social media services affordable Instagram growth social media promotion panel TikTok followers growth social media management panel SMM panel for marketers online SMM services best Instagram growth panel Instagram story views panel real social media engagement buy social media views SMM services for business viral social media services YouTube engagement services cheap social media marketing fast Instagram likes SMM panel with instant delivery Instagram growth service provider buy Facebook likes Instagram followers real growth buy engagement for social media TikTok followers for sale social media marketing tools buy social media engagement Instagram followers cheap affordable social media promotion high-quality Instagram growth instant SMM panel buy followers for TikTok premium social media marketing TikTok growth services social media marketing panel 2025 increase social media followers SMM tools for social media high-engagement social media panel buy YouTube views cheap buy Instagram comments best SMM provider social media marketing experts buy social media shares increase YouTube subscribers fast fast delivery SMM services real social media followers bulk social media engagement', '', 'Cheap Smm Panel', 'USD', 'PKR', 0, 1, '2025-02-14 20:55:40', '', 'en', 'Simplify', 'Grapes', '1', '', '', ' ', '', '1', '2', '1', '2', 0, 0, '', '', '', '', '0', '2', '2', '2', '2', '2', '2', 'Ali Abbas Online', '', '', '', '1', '', '', '2', '1', '2', '2', 'asc', 500, 2500, 10000, 15000, '{\"1\":\"Ali Abbas Online\",\"2\":\"Ali Abbas Online\"}', 3000, '2', '', '2', 10, 40, '2', '1', 9999999999, '1', '2', '0', '1', '1', '2', '2', '1', 0, '2', '2', 2, '0', '0', '{\"admin access\":{\"admin_access\":{\"name\":\"Admin Access\",\"value\":\"admin_access\"}},\"pages\":{\"users\":{\"name\":\"Users\",\"value\":\"users\"},\"services\":{\"name\":\"Services\",\"value\":\"services\"},\"update-prices\":{\"name\":\"Update Prices\",\"value\":\"update-prices\"},\"bulk\":{\"name\":\"Bulk Services Editor\",\"value\":\"bulk\"},\"bulkc\":{\"name\":\"Bulk Category Editor\",\"value\":\"services\"},\"synced-logs\":{\"name\":\"Seller Sync Logs\",\"value\":\"synced-logs\"},\"orders\":{\"name\":\"Orders\",\"value\":\"orders\"},\"subscriptions\":{\"name\":\"Subscriptions\",\"value\":\"subscriptions\"},\"dripfeed\":{\"name\":\"Dripfeed\",\"value\":\"dripfeed\"},\"tasks\":{\"name\":\"Order Refill and Cancel Tasks\",\"value\":\"tasks\"},\"payments\":{\"name\":\"Payments\",\"value\":\"payments\"},\"tickets\":{\"name\":\"Tickets\",\"value\":\"tickets\"}},\"additionals\":{\"additionals\":{\"name\":\"Additionals\",\"value\":\"additionals\"},\"referral\":{\"name\":\"Affiliates\",\"value\":\"referral\"},\"broadcast\":{\"name\":\"Broadcasts\",\"value\":\"broadcast\"},\"logs\":{\"name\":\"Panel Logs\",\"value\":\"logs\"},\"reports\":{\"name\":\"Reports\",\"value\":\"reports\"},\"videop\":{\"name\":\"Promotion\",\"value\":\"videop\"},\"coupon\":{\"name\":\"Coupons\",\"value\":\"coupon\"},\"child-panels\":{\"name\":\"Child Panels\",\"value\":\"child-panels\"},\"updates\":{\"name\":\"Updates\",\"value\":\"updates\"}},\"appearance\":{\"appearance\":{\"name\":\"Appearance\",\"value\":\"appearance\"},\"themes\":{\"name\":\"Themes\",\"value\":\"themes\"},\"new_year\":{\"name\":\"New Year\",\"value\":\"new_year\"},\"pages\":{\"name\":\"Pages\",\"value\":\"pages\"},\"news\":{\"name\":\"Announcements\",\"value\":\"news\"},\"meta\":{\"name\":\"Meta (SEO) Settings\",\"value\":\"meta\"},\"blog\":{\"name\":\"Blogs\",\"value\":\"blog\"},\"menu\":{\"name\":\"Menu\",\"value\":\"menu\"},\"inte\":{\"name\":\"Integrations\",\"value\":\"inte\"},\"language\":{\"name\":\"Languages\",\"value\":\"language\"},\"files\":{\"name\":\"Uploaded Images\",\"value\":\"files\"}},\"settings\":{\"settings\":{\"name\":\"Settings\",\"value\":\"settings\"},\"general_settings\":{\"name\":\"General Settings\",\"value\":\"general_settings\"},\"providers\":{\"name\":\"Sellers\",\"value\":\"providers\"},\"payments_settings\":{\"name\":\"Payment Methods\",\"value\":\"payments_settings\"},\"bank_accounts\":{\"name\":\"Bank Accounts\",\"value\":\"bank_accounts\"},\"modules\":{\"name\":\"Modules\",\"value\":\"modules\"},\"subject\":{\"name\":\"Support Settings\",\"value\":\"subject\"},\"payments_bonus\":{\"name\":\"Payment Bonuses\",\"value\":\"payments_bonus\"},\"currency-manager\":{\"name\":\"Site Currency Manager\",\"value\":\"currency-manager\"},\"alert_settings\":{\"name\":\"Notification Settings\",\"value\":\"alert_settings\"},\"site_count\":{\"name\":\"Fake Orders\",\"value\":\"site_count\"},\"manager\":{\"name\":\"Manager\",\"value\":\"manager\"}}}', 1, 500, 600, 0, '{\"panel_orders_prefix\":\"\",\"panel_orders_suffix\":\"\"}', 1, 'fixed_colour', '{\"purchased\":\"1\",\"status\":\"0\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) NOT NULL,
  `api_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `task_api` int(11) DEFAULT NULL,
  `task_type` varchar(225) DEFAULT NULL,
  `task_status` varchar(225) DEFAULT 'pending',
  `task_response` text DEFAULT NULL,
  `task_created_at` datetime DEFAULT NULL,
  `task_updated_at` datetime DEFAULT NULL,
  `task_by` text DEFAULT NULL,
  `check_refill_status` int(11) DEFAULT NULL,
  `refill_orderid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL,
  `last_modified` datetime NOT NULL,
  `newpage` text NOT NULL,
  `colour` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`, `last_modified`, `newpage`, `colour`) VALUES
(1, 'Simplify', 'Simplify', '', '2025-01-16 05:21:04', '{% include \'header.twig\' %}\r\n	<br><br><br>\r\n	\r\n	<div class=\"container-fluid container-fluid-spacious\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12\">\r\n			{% if contentText %}\r\n{{ contentText }}\r\n{% endif %}\r\n				{% if contentText2 %}\r\n{{ contentText2 }}\r\n{% endif %}\r\n				\r\n			</div>\r\n		</div>\r\n	</div>\r\n   \r\n      \r\n        \r\n   ', '2'),
(8, 'Eternity', 'Eternity', '', '2025-01-16 05:27:10', '{% include \'header.twig\' %}\r\n	<br><br><br>\r\n	\r\n	<div class=\"container-fluid container-fluid-spacious\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12\">\r\n			{% if contentText %}\r\n{{ contentText }}\r\n{% endif %}\r\n				{% if contentText2 %}\r\n{{ contentText2 }}\r\n{% endif %}\r\n				\r\n			</div>\r\n		</div>\r\n	</div>\r\n   \r\n      \r\n        \r\n   ', '2'),
(9, 'pitchy', 'pitchy', '', '2022-11-16 09:28:01', '{% include \'header.twig\' %}\r\n	<br><br><br>\r\n	\r\n	<div class=\"container-fluid container-fluid-spacious\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12\">\r\n			{% if contentText %}\r\n{{ contentText }}\r\n{% endif %}\r\n				{% if contentText2 %}\r\n{{ contentText2 }}\r\n{% endif %}\r\n				\r\n			</div>\r\n		</div>\r\n	</div>\r\n   \r\n      \r\n        \r\n   ', '2'),
(10, 'xblur', 'xblur', '', '2025-01-16 05:25:41', '{% include \'header.twig\' %}\r\n	<br><br><br>\r\n	\r\n	<div class=\"container-fluid container-fluid-spacious\">\r\n		<div class=\"row\">\r\n			<div class=\"col-md-12\">\r\n			{% if contentText %}\r\n{{ contentText }}\r\n{% endif %}\r\n				{% if contentText2 %}\r\n{{ contentText2 }}\r\n{% endif %}\r\n				\r\n			</div>\r\n		</div>\r\n	</div>\r\n   \r\n      \r\n        \r\n   ', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `readed` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text DEFAULT NULL,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order', '', '0'),
(2, 'Payment', '', '0'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Others', 'You will be answered within minutes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `units_per_page`
--

CREATE TABLE `units_per_page` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `units_per_page`
--

INSERT INTO `units_per_page` (`id`, `unit`, `page`) VALUES
(1, 50, 'clients'),
(2, 50, 'orders'),
(3, 50, 'payments'),
(4, 50, 'refill'),
(5, 50, 'bulk'),
(6, 8000, 'services');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `u_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Not enough data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_constants`
--
ALTER TABLE `admin_constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkedit`
--
ALTER TABLE `bulkedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earn`
--
ALTER TABLE `earn`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `General_options`
--
ALTER TABLE `General_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invo`
--
ALTER TABLE `invo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mailforms`
--
ALTER TABLE `Mailforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `panel_categories`
--
ALTER TABLE `panel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`methodId`),
  ADD KEY `methodId` (`methodId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  ADD PRIMARY KEY (`r_p_id`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `units_per_page`
--
ALTER TABLE `units_per_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulkedit`
--
ALTER TABLE `bulkedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `earn`
--
ALTER TABLE `earn`
  MODIFY `earn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `General_options`
--
ALTER TABLE `General_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invo`
--
ALTER TABLE `invo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Mailforms`
--
ALTER TABLE `Mailforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=920;

--
-- AUTO_INCREMENT for table `panel_categories`
--
ALTER TABLE `panel_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_info`
--
ALTER TABLE `panel_info`
  MODIFY `panel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `methodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  MODIFY `r_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53367;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units_per_page`
--
ALTER TABLE `units_per_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
