-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2017 at 05:07 PM
-- Server version: 10.1.18-MariaDB-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iliadarm_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sheba` varchar(100) DEFAULT NULL,
  `card_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(250) DEFAULT NULL,
  `account_no` varchar(250) DEFAULT NULL,
  `beneficiary` varchar(250) DEFAULT NULL,
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `sheba`, `card_no`, `bank_name`, `account_no`, `beneficiary`, `meta`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 6, 'IRS234', NULL, 'مسکن', '123', 'طه مهدی کامکار', '{"branch_name":"\\u0634\\u0639\\u0628\\u0647 \\u0646\\u06cc\\u0627\\u0648\\u0631\\u0627\\u0646","branch_code":"\\u06f1\\u06f2\\u06f3\\u06f1"}', '2016-10-21 10:46:46', '2016-11-13 09:42:58', NULL, 1, NULL, NULL),
(2, 0, 'IR18923902138019123098', NULL, 'اقتصاد نوین', '12312312313', 'جعفر اسکندریی', '{"branch_name":"\\u0635\\u0628\\u0627","branch_code":"\\u06f3\\u06f1"}', '2016-11-15 20:09:17', '2016-11-15 20:35:14', NULL, 1, NULL, NULL),
(3, 6, 'IRS234', '6219432312322332', 'سامان', '۱۲۳۴', 'سینا حجازی', '{"branch_name":"\\u0634\\u0639\\u0628\\u0647 \\u0646\\u06cc\\u0627\\u0648\\u0631\\u0627\\u0646","branch_code":"\\u06f1\\u06f2\\u06f3\\u06f1"}', '2016-10-21 10:46:46', '2016-10-21 10:46:46', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `plural_title` varchar(250) DEFAULT NULL,
  `singular_title` varchar(250) DEFAULT NULL,
  `header_title` varchar(250) DEFAULT NULL,
  `template` varchar(250) DEFAULT NULL,
  `hint` varchar(250) DEFAULT '',
  `allowed_meta` varchar(250) DEFAULT '',
  `features` varchar(250) DEFAULT '',
  `icon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `title` (`plural_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `slug`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `plural_title`, `singular_title`, `header_title`, `template`, `hint`, `allowed_meta`, `features`, `icon`) VALUES
(1, 'fa-statics', '2016-10-12 12:58:18', '2016-11-30 12:41:40', NULL, 1, NULL, NULL, 'صفحات ایستا', 'صفحه‌ی ایستا', 'محتوای سایت', 'post', '', '', 'title , header , text , abstract , image', 'file-text-o'),
(3, 'fa-features', '2016-11-30 13:00:14', '2017-01-15 13:32:05', NULL, 4, NULL, NULL, 'امکانات', 'ویژگی', 'محتوای سایت', 'post', '', '', 'title , text , image', 'cubes'),
(4, 'fa-services', '2016-11-30 13:14:42', '2017-01-15 13:34:15', NULL, 4, NULL, NULL, 'خدمات ما', 'خدمت', 'محتوای سایت', 'post', '', '', 'title , text , image', 'gift'),
(5, 'fa-faq', '2016-12-01 15:10:59', '2017-01-15 13:36:54', NULL, 4, NULL, NULL, 'سوالات رایج', 'سوال رایج', 'محتوای سایت', 'post', '', '', 'title , text', 'commenting'),
(6, 'fa-news', '2016-12-05 10:42:02', '2017-01-15 13:31:12', NULL, 4, NULL, NULL, 'خبرها', 'خبر', 'محتوای سایت', 'post', '', '', 'image , text , title', 'newspaper-o'),
(13, 'fa-slide-show', '2016-12-20 22:47:04', '2017-01-15 13:32:40', NULL, 4, NULL, NULL, 'اسلایدشو', 'اسلایدشو', 'محتوای سایت', 'post', '', 'link:text , button:text', 'title , text , image', 'film'),
(15, 'fa-products', '2016-12-20 23:20:21', '2017-01-15 13:35:42', NULL, 4, NULL, NULL, 'محصولات', 'محصول', 'محتوای سایت', 'post', '', '', 'title , text , image , digest , category', 'medkit');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `abstract` longtext,
  `hint` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `title`, `abstract`, `hint`, `image`, `created_at`, `updated_at`, `created_by`, `updated_by`, `branch_id`) VALUES
(2, NULL, 'info', 'اطلاعات عمومی', NULL, NULL, '', '2016-10-12 15:34:30', '2016-10-15 00:35:58', 1, NULL, 2),
(3, NULL, 'persian_Biatain', 'بیاتین', NULL, NULL, 'assets/photos/posts/biatain.jpg', '2017-01-03 00:13:50', '2017-01-07 18:25:01', 4, NULL, 15),
(4, NULL, 'persian_comfeel', 'کامفیل', NULL, NULL, 'assets/photos/posts/comfeel.jpg', '2017-01-03 00:14:50', '2017-01-07 18:25:57', 4, NULL, 15),
(5, NULL, 'persian_accessories', 'متعلقات', NULL, NULL, 'assets/photos/posts/Untitled-1.jpg', '2017-01-03 00:15:34', '2017-01-07 18:39:47', 4, NULL, 15),
(7, NULL, 'english_nuts', 'Nuts', NULL, NULL, 'assets/photos/posts/nuts.png', '2017-01-03 00:45:17', '2017-01-03 00:45:17', 4, NULL, 12),
(8, NULL, 'english_dried_fruit', 'Dried Fruit', NULL, NULL, 'assets/photos/posts/fruit.png', '2017-01-03 00:45:49', '2017-01-03 00:45:49', 4, NULL, 12),
(9, NULL, 'english_candies', 'Candies', NULL, NULL, 'assets/photos/posts/choco.png', '2017-01-03 00:46:23', '2017-01-03 00:46:32', 4, NULL, 12),
(10, NULL, 'english_confectionery_and_souvenirs', 'Confectionery & Souvenirs', NULL, NULL, 'assets/photos/posts/sur.png', '2017-01-03 00:47:22', '2017-01-03 00:47:22', 4, NULL, 12),
(11, NULL, 'arabic_nuts', 'جوز', NULL, NULL, 'assets/photos/posts/nuts.png', '2017-01-03 00:49:57', '2017-01-03 00:51:14', 4, NULL, 17),
(12, NULL, 'arabic_dried_fruit', 'الفواکه المجففة', NULL, NULL, 'assets/photos/posts/fruit.png', '2017-01-03 00:51:08', '2017-01-03 00:51:20', 4, NULL, 17),
(13, NULL, 'arabic_candies', 'شوکولاتة', NULL, NULL, 'assets/photos/posts/choco.png', '2017-01-03 00:51:53', '2017-01-03 00:51:53', 4, NULL, 17),
(14, NULL, 'arabic_confectionery_and_souvenirs', 'الهدایا التذکاریة والحلویات', NULL, NULL, 'assets/photos/posts/sur.png', '2017-01-03 00:52:52', '2017-01-03 00:52:52', 4, NULL, 17);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `slug`, `title`, `meta`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, 'USD', 'دلار آمریکا', '[]', '2016-10-21 15:53:54', '2016-10-29 13:06:38', NULL, 1, NULL, 3),
(3, 'EUR', 'یورو', '"[]"', '2016-10-21 15:54:07', '2016-10-21 15:54:07', NULL, 1, NULL, NULL),
(4, 'UAD', 'درهم امارات متحده عربی', '[]', '2016-10-21 15:54:36', '2016-10-26 14:49:24', NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `can_online` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `slug`, `icon`, `can_online`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'واحد فروش', 'sales', 'shopping-basket', 1, '2016-10-23 20:18:17', '2016-10-23 20:20:33', NULL, 1, NULL, NULL),
(2, 'خدمات', 'services', 'ambulance', 0, '2016-10-23 20:22:01', '2016-10-23 20:22:01', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `IP` varchar(250) DEFAULT NULL,
  `browser` varchar(250) DEFAULT NULL,
  `os` varchar(250) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `original_invoice` int(11) NOT NULL,
  `amount_invoiced` int(11) NOT NULL DEFAULT '0',
  `amount_paid` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `slug`, `user_id`, `product_id`, `card_id`, `type`, `original_invoice`, `amount_invoiced`, `amount_paid`, `status`, `meta`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '14250848', 5, 1, NULL, 'new', 3234000, 3234000, 3224000, 1, '{"rate":"14000","initial_charge":"231"}', '2016-10-24 15:46:53', '2016-11-20 15:49:03', NULL, 5, NULL, NULL),
(3, '14250812', 5, 1, NULL, 'new', 4354000, 4350000, NULL, 2, '{"rate":"14000","initial_charge":"311"}', '2016-11-14 15:20:34', '2016-11-19 16:04:29', NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount_declared` int(11) NOT NULL DEFAULT '0',
  `amount_confirmed` int(11) NOT NULL DEFAULT '0',
  `payment_method` varchar(20) DEFAULT '',
  `direction` varchar(100) DEFAULT NULL COMMENT 'charge / pay',
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `checked_by` int(11) NOT NULL DEFAULT '0',
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `user_id`, `amount_declared`, `amount_confirmed`, `payment_method`, `direction`, `meta`, `created_at`, `updated_at`, `checked_at`, `deleted_at`, `created_by`, `updated_by`, `checked_by`, `deleted_by`) VALUES
(1, 1, 5, 1000, 2000, 'site_credit', 'income', '{"payment_date":"2016\\/11\\/17 12:32","account_no":"","bank_name":"","card_no":"","own_account_id":"","depositor":"","receiver":"\\u062c\\u0639\\u0641\\u0631","sender":"\\u0627\\u0635\\u063a\\u0631","tracking_no":"","cheque_date":"","cheque_no":"","description":"\\u0622\\u0632\\u0645\\u0627\\u06cc\\u0634 \\u0627\\u0648\\u0644\\u06cc\\u0647"}', '2016-11-17 20:32:55', '2016-11-17 20:32:55', '2016-11-17 20:32:55', NULL, 1, NULL, 1, NULL),
(2, 1, 5, 10000, 10000, 'site_credit', 'outcome', '{"payment_date":"","account_no":"","bank_name":"","card_no":"","own_account_id":"","depositor":"","receiver":"","sender":"","tracking_no":"","cheque_date":"","cheque_no":"","description":""}', '2016-11-18 04:22:49', '2016-11-18 20:02:32', '2016-11-18 20:02:32', NULL, 1, NULL, 1, NULL),
(3, 1, 5, 3000, 2000, 'site_credit', 'income', '{"payment_date":"","account_no":"","bank_name":"","card_no":"","own_account_id":"","depositor":"","receiver":"","sender":"","tracking_no":"","cheque_date":"","cheque_no":"","description":"\\u062a\\u0648\\u0636\\u06cc\\u062d\\u0627\\u062a"}', '2016-11-18 04:33:41', '2016-11-18 06:32:35', '2016-11-18 04:33:41', NULL, 1, NULL, 1, NULL),
(4, 1, 5, 10000, 10000, 'cash', 'income', '{"payment_date":"2016-11-17 12:24","account_no":"","bank_name":"","card_no":"","own_account_id":"","depositor":"","receiver":"\\u062d\\u0633\\u0646\\u0639\\u0644\\u06cc","sender":"\\u062c\\u0639\\u0641\\u0631","tracking_no":"","cheque_date":"","cheque_no":"","description":"\\u062f\\u0631\\u06cc\\u0627\\u0641\\u062a \\u0627\\u0632 \\u062d\\u0633\\u0646\\u0639\\u0644\\u06cc \\u0628\\u0647 \\u062c\\u0639\\u0641\\u0631. \\u0631\\u0648\\u0632 \\u06f2\\u06f8 \\u0622\\u0628\\u0627\\u0646\\u060c \\u0633\\u0627\\u0639\\u062a \\u06f1\\u06f2:\\u06f2\\u06f3"}', '2016-11-18 06:35:52', '2016-11-18 20:02:20', '2016-11-18 20:02:20', NULL, 1, NULL, 1, NULL),
(5, 1, 5, 10000, 1742, 'shetab', 'income', '{"payment_date":"2016\\/10\\/22 23:12","account_no":"","bank_name":"","card_no":"6219862302302023","own_account_id":"2","depositor":"","receiver":"","sender":"","tracking_no":"\\u06f1\\u06f2\\u06f3\\u06f4\\u06f5\\u06f6\\u06f7\\u06f8\\u06f9\\u06f0","cheque_date":"","cheque_no":"","description":""}', '2016-11-18 07:08:39', '2016-11-18 19:47:24', '2016-11-18 19:47:24', NULL, 1, NULL, 1, NULL),
(6, 1, 5, 3208258, 3208258, 'cheque', 'income', '{"payment_date":"","account_no":"\\u06f1\\u06f2\\u06f3\\u06f1\\u06f2\\u06f3\\u06f1\\u06f2\\u06f3\\u06f1\\u06f3","bank_name":"\\u0628\\u0627\\u0646\\u06a9 \\u0633\\u0631\\u0645\\u0627\\u06cc\\u0647","card_no":"","own_account_id":"2","depositor":"","receiver":"","sender":"","tracking_no":"","cheque_date":"2016\\/10\\/22","cheque_no":"\\u06f1\\u06f2\\u06f3","description":""}', '2016-11-18 20:32:23', '2016-11-18 20:37:56', '2016-11-18 20:37:56', NULL, 1, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(100) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `abstract` longtext,
  `text` longtext,
  `category_id` int(11) NOT NULL,
  `keywords` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `featured_image` varchar(250) DEFAULT NULL,
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `published_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `published_at` (`published_at`),
  KEY `created_by` (`created_by`),
  KEY `published_by` (`published_by`),
  KEY `title` (`title`),
  KEY `post_cat_id` (`category_id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `branch`, `slug`, `title`, `abstract`, `text`, `category_id`, `keywords`, `featured_image`, `is_draft`, `meta`, `created_at`, `updated_at`, `deleted_at`, `published_at`, `created_by`, `updated_by`, `deleted_by`, `published_by`) VALUES
(6, 'fa-statics', 'fa-index_slide', 'سریع، آسان، امن ', '', '<p>معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند</p>', 0, NULL, '/assets/photos/posts/main-title-bg.jpg', 0, '[]', '2016-11-30 12:47:07', '2016-11-30 13:23:47', NULL, '2016-11-30 12:47:07', 4, NULL, NULL, 4),
(7, 'fa-features', '', 'خدمات آموزشی', NULL, '<p>ارایه کارگاه های مدرن آموزشی جهت کلیه گروه های هدف شامل پزشکان، پرستاران و درمانگران در محل بیمارستان ویا کلینیک با ارایه امتیاز باز آموزی</p>', 0, NULL, '/assets/photos/posts/Untitled-1.png', 0, '[]', '2016-11-30 13:01:26', '2017-01-08 12:36:35', NULL, '2016-11-30 13:01:26', 4, NULL, NULL, 4),
(8, 'fa-features', '', 'خدمات در منزل', NULL, '<p>در صورتی که هر یک از عزیران شما بنا به دلایلی نیاز به ویزت کارشناس دارند کافی است ما را از وضعیت بیمار خود مطلع سازید. اعزام کارشناس و تجهیزات لازم در اسرع وقت انجام خواهد شد.</p>', 0, NULL, '/assets/photos/posts/Untitled-3.png', 0, '[]', '2016-11-30 13:01:50', '2017-01-07 20:13:38', NULL, '2016-11-30 13:01:50', 4, NULL, NULL, 4),
(9, 'fa-features', '', 'مشاوره آنلاین', NULL, '<p>در عصر ارتباطات بر آن شدیم که نزدیک تر از همیشه در کنار شما باشیم. با ارسال سوالات خود به هریک از شبکه های اجتماعی مانند تلگرام ، لاین، واتساپ و وایبر از مشاوره تخصصی و رایگان همکاران ما برخوردار شوید.</p>', 0, NULL, '/assets/photos/posts/Untitled-2.png', 0, '[]', '2016-11-30 13:02:04', '2017-01-07 20:12:41', NULL, '2016-11-30 13:02:04', 4, NULL, NULL, 4),
(10, 'fa-features', '', 'مشاوره تلفنی', NULL, '<p>همکاران ما در مرکز مشاوره ایلیا پاسخگوی کلیه سوالات هموطنان عزیز می باشند. انتخاب روش درمانی مناسب، انتخاب محصول و نحوه درمان از جمله موضوعات روزمره ای است که پاسخگوی شما هستیم.</p>\n<p>همچنین همکاران کادر درمانی ، پزشکان و &nbsp;درمانگران جهت به اشتراک گذاشتن موارد خاص و بهره گیری از نظریات کارشناسی گروه درمان از خدمات رایگان این واحد برخوردار هستند.</p>\n<p>&nbsp;</p>', 0, NULL, '/assets/photos/posts/0012.png', 0, '[]', '2016-11-30 13:02:17', '2017-01-07 20:11:43', NULL, '2016-11-30 13:02:17', 4, NULL, NULL, 4),
(11, 'fa-services', '', 'صدور ویزا کارت', NULL, '<p>صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-11-30 13:16:29', '2017-01-02 19:25:29', NULL, '2016-11-30 13:16:29', 4, NULL, NULL, NULL),
(12, 'fa-services', '', 'خرید با ویزا کارت', NULL, '<p>خرید با ویزا کارت خرید با ویزا کارت خرید با ویزا کارت خرید با ویزا کارت خرید با ویزا کارت</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '[]', '2016-11-30 13:16:34', '2017-01-02 19:25:26', NULL, '2016-11-30 13:16:34', 4, NULL, NULL, NULL),
(13, 'fa-services', '', 'شارژ ویزا کارت', NULL, '<p>شارژ ویزا کارت شارژ ویزا کارت شارژ ویزا کارت شارژ ویزا کارت شارژ ویزا کارت</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '[]', '2016-11-30 13:16:43', '2017-01-02 19:25:23', NULL, '2016-11-30 13:16:43', 4, NULL, NULL, NULL),
(14, 'fa-services', '', 'انواع خشکبار', NULL, '<p>انواع خشکبار تازه با کیفیت بالا</p>', 0, NULL, '/assets/photos/posts/nuts.png', 0, '[]', '2016-11-30 13:16:50', '2017-01-02 19:25:08', NULL, '2016-11-30 13:16:50', 4, NULL, NULL, NULL),
(15, 'fa-services', '', 'صدور ویزا کارت', NULL, '<p>صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-11-30 13:16:56', '2016-12-01 11:04:37', '2016-12-01 11:04:37', '2016-11-30 13:16:56', 4, NULL, 4, 4),
(16, 'fa-services', '', 'صدور ویزا کارت', NULL, '<p>صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-11-30 13:17:03', '2016-12-01 11:04:33', '2016-12-01 11:04:33', '2016-11-30 13:17:03', 4, NULL, 4, 4),
(17, 'fa-services', '', 'صدور ویزا کارت', NULL, '<p>صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-11-30 13:17:11', '2016-12-01 11:04:28', '2016-12-01 11:04:28', '2016-11-30 13:17:11', 4, NULL, 4, 4),
(18, 'fa-services', '', 'صدور ویزا کارت', NULL, '<p>صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت صدور ویزا کارت</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-11-30 13:17:55', '2016-12-01 11:04:22', '2016-12-01 11:04:22', '2016-11-30 13:17:55', 4, NULL, 4, 4),
(19, 'fa-statics', 'fa-index_about', 'چند قدم ساده تا دریافت کارت مورد نظرتان2', '', '<p>تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می&zwnj;رسد و قلم&zwnj;ها و اندازه&zwnj;بندی&zwnj;ها چگونه در نظر گرفته شده&zwnj;است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می&zwnj;باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه&zwnj;آرایی می&zwnj;کنند تا مرحله طراحی و صفحه&zwnj;بندی را به پایان برند.</p>', 0, NULL, '', 0, '[]', '2016-11-30 13:24:02', '2017-01-08 11:54:18', '2017-01-08 11:54:18', '2016-11-30 13:24:02', 4, NULL, 4, 4),
(20, 'fa-statics', 'fa-about_page', 'تیم ما', '', '<p><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">&nbsp;</span> تضمین کیفیت :</p>\n<ul>\n<li>واحد تضمین کیفیت شرکت ایلیا درمان بر آن است که در همه مراحل در راستای حصول اطمینان&zwnj; از ایمنی&zwnj; و اثر بخشی&zwnj; محصولات&zwnj; و اعمال دقیق استانداردها و مقررات بهداشت و درمان در امر واردات، توزیع و عرضه محصولات بهداشتی درمانی گام برداشته و با فراهم اوردن روش های&zwnj; کنترل&zwnj; کیفیت&zwnj; دقیق&zwnj; و مستمر این مهم را تحقق بخشد.</li>\n</ul>\n<p style="text-align: left; padding-right: 30px;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">Quality Assurance</span></p>\n<p style="padding-right: 30px; text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">The quality assurance unit is aiming to verify the process of safety and efficacy, importation SOPs and products distribution, are executed perfectly. We are stepping forward based on ongoing QC instructions.</span></p>\n<p style="padding-right: 30px;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">&nbsp;</span></p>\n<p>واحد علمی:</p>\n<ul>\n<li>همگام با مراکزعلمی و تحقیقاتی دنیا و با چشم انداز رسیدن به بهترین روش های مراقبتی و درمانی ،واحد مدیکال شرکت ایلیا درمان ارائه کننده به روزترین اخبارپزشکی مرتبط با محصولات می باشد. همچنین این بخش در زمینه ی پاسخگویی به سوالات پزشکی و رفع ابهامات موجود در زمینه مراقبت و درمان اماده می باشد.در این راستا این بخش با برگزاری کلاس های اموزشی در سطح حرفه ای جهت ارتقا &nbsp;سطح بهداشت و درمان تلاش می کند.</li>\n</ul>\n<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">Medical</span></p>\n<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">Together with scientific and research center in the world and prospect of reaching to the best care and treatment methods, Ilia Darman Company offers all up-to-date medical news related to products. This unit is ready to respond to all Medical questions and resolving uncertainties existed about care and treatment. Consequently Medical department is ready to hold high level of training and courses</span></p>\n<p>تیم فروش و بازاریابی:</p>\n<ul>\n<li>در راستای ارتقای خدمات بهداشتی و افزایش کیفیت زندگی، تیم فروش و بازاریابی شرکت ایلیا درمان با هدف ایجاد تغییر در نگرش افراد جامعه، اینک ارائه دهنده به روز ترین روشهای آموزشی و خدمت رسانی میباشد. اعضای این تیم &nbsp;مشتمل بر پرستاران آموزش دیده و دلسوز و همکاران مجرب واحد فروش می باشند که با تاکید برکار گروهی و بهبود کیفیت زندگی بیماران &nbsp;خدمات خود را ارائه می نمایند.</li>\n</ul>\n<p><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">&nbsp;</span></p>\n<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">Sales &amp; Marketing team</span></p>\n<p style="text-align: left;"><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">Aligned with the well-reputed multinational companies in pharmaceutical and medical devices area, here in ID we are confident of having the best and very well-trained sales and marketing representatives through which high quality education and services to our customer is presented</span></p>\n<p>&nbsp;</p>', 0, NULL, '', 0, '[]', '2016-12-01 10:14:33', '2017-01-07 19:44:30', NULL, '2016-12-01 10:14:33', 4, NULL, NULL, 4),
(21, 'fa-statics', 'fa-certificate', 'همکاری', '', '<p>&nbsp;</p>\n<p>شرکت ایلیا درمان با هدف ارتقا سطح بهداشت و سلامت و به منظور تامین کادر مورد نیاز جهت همکاری از شما دعوت به عمل می اورد. در صورت تمایل به همکاری، رزومه خود را به ادرس ذیل ارسال فرمایید.</p>\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;HR@iliadarman.com &nbsp;</p>\n<p>&nbsp;</p>\n<p>Looking forward to enhance healthcare and well-being of society and also to attract innovative idea from your side here in Ilia Darman company, we &nbsp;inviting you to corporate with us as one of the influential multinational company in healthcare.</p>\n<p>&nbsp;</p>', 0, NULL, '', 0, '[]', '2016-12-01 11:08:38', '2017-01-07 19:29:36', NULL, '2016-12-01 11:08:38', 4, NULL, NULL, 4),
(22, 'fa-faq', '', 'چگونه کارت بگیرم؟', NULL, '<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-01 15:13:13', '2016-12-01 15:13:13', NULL, '2016-12-01 15:13:13', 4, NULL, NULL, 4),
(23, 'fa-faq', '', 'چگونه کارت را تمدید کنم؟', NULL, '<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-01 15:13:31', '2016-12-01 15:13:31', NULL, '2016-12-01 15:13:31', 4, NULL, NULL, 4),
(24, 'fa-faq', '', 'چگونه کارت را مسدود کنم؟', NULL, '<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-01 15:13:43', '2016-12-01 15:13:43', NULL, '2016-12-01 15:13:42', 4, NULL, NULL, 4),
(25, 'fa-faq', '', 'چگونه کارت را پس بدهم؟', NULL, '<p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-01 15:13:57', '2016-12-01 15:13:57', NULL, '2016-12-01 15:13:57', 4, NULL, NULL, 4),
(26, 'fa-statics', 'term_of_service', 'شرایط و قوانین سایت', '', '<p>شرایط و قوانین سایت&nbsp;شرایط و قوانین سایت&nbsp;شرایط و قوانین سایت&nbsp;شرایط و قوانین سایت&nbsp;شرایط و قوانین سایت</p>', 0, NULL, '', 0, '"[]"', '2016-12-01 16:22:59', '2016-12-01 16:22:59', NULL, '2016-12-01 16:22:59', 4, NULL, NULL, 4),
(27, 'fa-news', '', 'قیمت ارز بار دیگر افزایش چشم‌گیری داشت', NULL, '<p style="box-sizing: inherit; font-stretch: normal; font-size: 16px; font-family: IRANSans, Tahoma, Arial, sans-serif; line-height: 2; margin: 0px 0px 16px; color: #000000; text-align: start;"><span style="font-size: 10pt;">لورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی در صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می&zwnj;رسد و قلم&zwnj;ها و اندازه&zwnj;بندی&zwnj;ها چگونه در نظر گرفته شده&zwnj;است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می&zwnj;باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه&zwnj;آرایی می&zwnj;کنند تا مرحله طراحی و صفحه&zwnj;بندی را به پایان برند.</span></p>\n<p style="box-sizing: inherit; font-stretch: normal; font-size: 16px; font-family: IRANSans, Tahoma, Arial, sans-serif; line-height: 2; margin: 0px 0px 16px; color: #000000; text-align: start;"><span style="font-size: 10pt;">لورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی در صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می&zwnj;رسد و قلم&zwnj;ها و اندازه&zwnj;بندی&zwnj;ها چگونه در نظر گرفته شده&zwnj;است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می&zwnj;باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه&zwnj;آرایی می&zwnj;کنند تا مرحله طراحی و صفحه&zwnj;بندی را به پایان برند.</span></p>\n<p style="box-sizing: inherit; font-stretch: normal; font-size: 16px; font-family: IRANSans, Tahoma, Arial, sans-serif; line-height: 2; margin: 0px 0px 16px; color: #000000; text-align: start;"><span style="font-size: 10pt;">لورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی در صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می&zwnj;رسد و قلم&zwnj;ها و اندازه&zwnj;بندی&zwnj;ها چگونه در نظر گرفته شده&zwnj;است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می&zwnj;باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه&zwnj;آرایی می&zwnj;کنند تا مرحله طراحی و صفحه&zwnj;بندی را به پایان برند.</span></p>', 0, NULL, '/assets/photos/posts/news.jpg', 0, '[]', '2016-12-05 10:43:20', '2017-01-08 13:11:57', '2017-01-08 13:11:57', '2016-12-05 10:43:20', 4, NULL, 4, 4),
(28, 'fa-news', '', 'قیمت ارز بار دیگر افزایش چشم‌گیری داشت دو', NULL, '<p style="box-sizing: inherit; font-stretch: normal; font-size: 16px; font-family: IRANSans, Tahoma, Arial, sans-serif; line-height: 2; margin: 0px 0px 16px; color: #000000; text-align: start;"><span style="font-size: 10pt;">لورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی در صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می&zwnj;رسد و قلم&zwnj;ها و اندازه&zwnj;بندی&zwnj;ها چگونه در نظر گرفته شده&zwnj;است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می&zwnj;باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه&zwnj;آرایی می&zwnj;کنند تا مرحله طراحی و صفحه&zwnj;بندی را به پایان برند.</span></p>\n<p style="box-sizing: inherit; font-stretch: normal; font-size: 16px; font-family: IRANSans, Tahoma, Arial, sans-serif; line-height: 2; margin: 0px 0px 16px; color: #000000; text-align: start;"><span style="font-size: 10pt;">لورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی در صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می&zwnj;رسد و قلم&zwnj;ها و اندازه&zwnj;بندی&zwnj;ها چگونه در نظر گرفته شده&zwnj;است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می&zwnj;باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه&zwnj;آرایی می&zwnj;کنند تا مرحله طراحی و صفحه&zwnj;بندی را به پایان برند.</span></p>\n<p style="box-sizing: inherit; font-stretch: normal; font-size: 16px; font-family: IRANSans, Tahoma, Arial, sans-serif; line-height: 2; margin: 0px 0px 16px; color: #000000; text-align: start;"><span style="font-size: 10pt;">لورم ایپسوم یا طرح&zwnj;نما (به انگلیسی: Lorem ipsum) به متنی آزمایشی و بی&zwnj;معنی در صنعت چاپ، صفحه&zwnj;آرایی و طراحی گرافیک گفته می&zwnj;شود. طراح گرافیک از این متن به عنوان عنصری از ترکیب بندی برای پر کردن صفحه و ارایه اولیه شکل ظاهری و کلی طرح سفارش گرفته شده استفاده می نماید، تا از نظر گرافیکی نشانگر چگونگی نوع و اندازه فونت و ظاهر متن باشد. معمولا طراحان گرافیک برای صفحه&zwnj;آرایی، نخست از متن&zwnj;های آزمایشی و بی&zwnj;معنی استفاده می&zwnj;کنند تا صرفا به مشتری یا صاحب کار خود نشان دهند که صفحه طراحی یا صفحه بندی شده بعد از اینکه متن در آن قرار گیرد چگونه به نظر می&zwnj;رسد و قلم&zwnj;ها و اندازه&zwnj;بندی&zwnj;ها چگونه در نظر گرفته شده&zwnj;است. از آنجایی که طراحان عموما نویسنده متن نیستند و وظیفه رعایت حق تکثیر متون را ندارند و در همان حال کار آنها به نوعی وابسته به متن می&zwnj;باشد آنها با استفاده از محتویات ساختگی، صفحه گرافیکی خود را صفحه&zwnj;آرایی می&zwnj;کنند تا مرحله طراحی و صفحه&zwnj;بندی را به پایان برند.</span></p>', 0, NULL, '/assets/photos/posts/news.jpg', 0, '[]', '2016-12-05 10:43:47', '2017-01-08 13:11:46', '2017-01-08 13:11:46', '2016-12-05 10:43:47', 4, NULL, 4, 4),
(29, 'en-features', '', 'Best price', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</p>', 0, NULL, '/assets/photos/posts/feature-4.png', 0, '"[]"', '2016-12-09 09:23:43', '2016-12-09 09:23:43', NULL, '2016-12-09 09:23:43', 4, NULL, NULL, 4),
(30, 'en-features', '', 'High-speed operations', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</p>', 0, NULL, '/assets/photos/posts/feature-3.png', 0, '"[]"', '2016-12-09 09:24:17', '2016-12-09 09:24:17', NULL, '2016-12-09 09:24:17', 4, NULL, NULL, 4),
(31, 'en-features', '', 'High security', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</p>', 0, NULL, '/assets/photos/posts/feature-2.png', 0, '"[]"', '2016-12-09 09:24:37', '2016-12-09 09:24:37', NULL, '2016-12-09 09:24:37', 4, NULL, NULL, 4),
(32, 'en-features', '', 'Fast Support', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-12-09 09:25:05', '2016-12-09 09:25:05', NULL, '2016-12-09 09:25:05', 4, NULL, NULL, 4),
(33, 'en-news', '', 'Currency prices again rose significantly', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, '/assets/photos/posts/news.jpg', 0, '"[]"', '2016-12-09 09:26:42', '2016-12-09 09:26:42', NULL, '2016-12-09 09:26:42', 4, NULL, NULL, 4),
(34, 'en-news', '', 'Currency prices again rose significantly 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, '/assets/photos/posts/news.jpg', 0, '"[]"', '2016-12-09 09:26:53', '2016-12-09 09:26:53', NULL, '2016-12-09 09:26:52', 4, NULL, NULL, 4),
(35, 'en-services', '', 'Renew Visa card', NULL, '<p>Renew Visa card&nbsp;Renew Visa card&nbsp;Renew Visa card&nbsp;Renew Visa card&nbsp;Renew Visa card</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '[]', '2016-12-09 09:27:51', '2016-12-09 09:31:15', NULL, '2016-12-09 09:27:51', 4, NULL, NULL, 4),
(36, 'en-services', '', 'Visa charge card', NULL, '<p>Visa charge card&nbsp;Visa charge card&nbsp;Visa charge card&nbsp;Visa charge card&nbsp;Visa charge card</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-12-09 09:28:31', '2016-12-09 09:28:31', NULL, '2016-12-09 09:28:31', 4, NULL, NULL, 4),
(37, 'en-services', '', 'Buy with Visa Card', NULL, '<p>Buy with Visa Card&nbsp;Buy with Visa Card&nbsp;Buy with Visa Card&nbsp;Buy with Visa Card&nbsp;Buy with Visa Card</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-12-09 09:28:56', '2016-12-09 09:28:56', NULL, '2016-12-09 09:28:56', 4, NULL, NULL, 4),
(38, 'en-services', '', 'Visa card', NULL, '<p>Visa card&nbsp;Visa card&nbsp;Visa card&nbsp;Visa card&nbsp;Visa card</p>', 0, NULL, '/assets/photos/posts/feature-1.png', 0, '"[]"', '2016-12-09 09:29:21', '2016-12-09 09:29:21', NULL, '2016-12-09 09:29:21', 4, NULL, NULL, 4),
(39, 'en-faq', '', 'How to give your card?', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-09 09:31:55', '2016-12-09 09:31:55', NULL, '2016-12-09 09:31:55', 4, NULL, NULL, 4),
(40, 'en-faq', '', 'How do I block a card?', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-09 09:32:11', '2016-12-09 09:32:11', NULL, '2016-12-09 09:32:11', 4, NULL, NULL, 4),
(41, 'en-faq', '', 'How do I renew my card?', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-09 09:32:25', '2016-12-09 09:32:25', NULL, '2016-12-09 09:32:25', 4, NULL, NULL, 4),
(42, 'en-faq', '', 'How do I get a card?', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, NULL, 0, '"[]"', '2016-12-09 09:32:45', '2016-12-09 09:32:45', NULL, '2016-12-09 09:32:45', 4, NULL, NULL, 4),
(43, 'en-statics', 'en-term_of_service', 'Terms and conditions', NULL, '<p>Terms and conditions&nbsp;Terms and conditions&nbsp;Terms and conditions&nbsp;Terms and conditions&nbsp;Terms and conditions</p>', 0, NULL, '', 0, '"[]"', '2016-12-09 09:34:23', '2016-12-09 09:34:23', NULL, '2016-12-09 09:34:23', 4, NULL, NULL, 4),
(44, 'en-statics', 'en-privacy', 'privacy', NULL, '<p>privacy&nbsp;privacy&nbsp;privacy&nbsp;privacy&nbsp;privacy</p>', 0, NULL, '', 0, '"[]"', '2016-12-09 09:34:59', '2016-12-09 09:34:59', NULL, '2016-12-09 09:34:59', 4, NULL, NULL, 4),
(45, 'en-statics', 'en-about_page', 'About', NULL, '<p>About&nbsp;<span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">About&nbsp;</span><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">About&nbsp;</span><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">About&nbsp;</span><span style="color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;">About</span></p>', 0, NULL, '', 0, '"[]"', '2016-12-09 09:35:45', '2016-12-09 09:35:45', NULL, '2016-12-09 09:35:45', 4, NULL, NULL, 4),
(46, 'en-statics', 'en-index_about', 'A few simple steps to get the desired card', NULL, '<p>A few simple steps to get the desired card&nbsp;A few simple steps to get the desired card&nbsp;A few simple steps to get the desired card&nbsp;A few simple steps to get the desired card&nbsp;A few simple steps to get the desired card</p>', 0, NULL, '', 0, '"[]"', '2016-12-09 09:36:34', '2016-12-09 09:36:34', NULL, '2016-12-09 09:36:34', 4, NULL, NULL, 4),
(47, 'en-statics', 'en-index_slide', 'Fast, easy, safe', NULL, '<p>Consultants graphic designers for layout, the first experimental texts are meaningless to simply show your customer or client</p>', 0, NULL, '/assets/photos/posts/main-title-bg.jpg', 0, '"[]"', '2016-12-09 09:37:26', '2016-12-09 09:37:26', NULL, '2016-12-09 09:37:26', 4, NULL, NULL, 4),
(48, 'en-products', '', 'Visa card Classic', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, NULL, 0, '"{\\"price\\":\\"300$\\",\\"color\\":\\"gray\\"}"', '2016-12-09 17:17:17', '2016-12-09 17:17:17', NULL, '2016-12-09 17:17:17', 4, NULL, NULL, 4),
(49, 'en-products', '', 'Visa card Electron', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, NULL, 0, '"{\\"price\\":\\"200$\\",\\"color\\":\\"blue\\"}"', '2016-12-09 17:21:37', '2016-12-09 17:21:37', NULL, '2016-12-09 17:21:37', 4, NULL, NULL, 4),
(50, 'en-products', '', 'Visa card Travel', NULL, '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>', 0, NULL, NULL, 0, '"{\\"price\\":\\"100$\\",\\"color\\":\\"green\\"}"', '2016-12-09 17:22:10', '2016-12-09 17:22:10', NULL, '2016-12-09 17:22:10', 4, NULL, NULL, 4),
(51, 'fa-slide-show', '', 'خشکبار امیرحسین', NULL, '<p>ارائه انواع خکشبار تازه با کیفیت بالا</p>', 0, NULL, '/assets/photos/posts/1.jpg', 0, '{"link":"","button":""}', '2016-12-20 22:49:17', '2017-01-07 17:20:06', '2017-01-07 17:20:06', '2016-12-20 22:49:16', 4, NULL, 4, 4),
(52, 'en-slide_show', '', 'Fast, easy, safe', NULL, '<p>Consultants graphic designers for layout, the first experimental texts are meaningless to simply show your customer or client</p>', 0, NULL, '/assets/photos/posts/main-title-bg.jpg', 0, '"{\\"link\\":\\"http:\\\\\\/\\\\\\/google.com\\",\\"button\\":\\"more...\\"}"', '2016-12-20 22:50:20', '2016-12-20 22:50:20', NULL, '2016-12-20 22:50:20', 4, NULL, NULL, 4),
(53, 'fa-portfolio', '', 'نمومه کار ۱', NULL, '<p>نمونه کار 1</p>\n<p>نمونه کار 1</p>\n<p>نمونه کار 1</p>\n<p>نمونه کار 1</p>\n<p>نمونه کار 1</p>', 0, NULL, '/assets/photos/posts/gallery/news.jpg', 0, '"{\\"post_photos\\":[{\\"src\\":\\"\\\\\\/assets\\\\\\/photos\\\\\\/posts\\\\\\/gallery\\\\\\/news.jpg\\",\\"label\\":\\"\\\\u0633\\\\u0644\\\\u0627\\\\u0645 \\\\u0646\\\\u0645\\\\u0648\\\\u0646\\\\u0647 \\\\u06f1\\",\\"link\\":\\"\\"},{\\"src\\":\\"\\\\\\/assets\\\\\\/photos\\\\\\/\\\\\\/posts\\\\\\/gallery\\\\\\/card.png\\",\\"label\\":\\"\\\\u0633\\\\u0644\\\\u0627\\\\u0645 \\\\u0646\\\\u0645\\\\u0648\\\\u0646\\\\u0647\\",\\"link\\":\\"\\"}]}"', '2016-12-20 23:27:29', '2017-01-02 19:11:23', NULL, '2016-12-20 23:27:29', 4, NULL, NULL, NULL),
(54, 'fa-slide-show', '', 'خشکبار امیر حسین', NULL, '<p>فرآوری محصولات به صورت روزانه</p>', 0, NULL, '/assets/photos/posts/2.jpg', 0, '"{\\"link\\":\\"\\\\\\/products\\",\\"button\\":\\"\\\\u0645\\\\u062d\\\\u0635\\\\u0648\\\\u0644\\\\u0627\\\\u062a\\"}"', '2017-01-02 18:12:22', '2017-01-07 17:20:02', '2017-01-07 17:20:02', '2017-01-02 18:12:22', 4, NULL, 4, 4),
(55, 'fa-slide-show', '', 'خشکبار امیر حسین', NULL, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', 0, NULL, '/assets/photos/posts/3.jpg', 0, '"{\\"link\\":\\"\\\\\\/products\\",\\"button\\":\\"\\\\u0645\\\\u062d\\\\u0635\\\\u0648\\\\u0644\\\\u0627\\\\u062a\\"}"', '2017-01-02 18:13:28', '2017-01-07 17:19:58', '2017-01-07 17:19:58', '2017-01-02 18:13:28', 4, NULL, 4, 4),
(56, 'fa-slide-show', '', '                                                                                             .', NULL, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>', 0, NULL, '/assets/photos/posts/3.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-02 18:14:25', '2017-01-07 17:20:15', '2017-01-07 17:20:15', '2017-01-02 18:14:25', 4, NULL, 4, 4),
(57, 'fa-slide-show', '', '                                                                                             .', NULL, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>', 0, NULL, '/assets/photos/posts/4.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-02 18:15:04', '2017-01-07 17:19:54', '2017-01-07 17:19:54', '2017-01-02 18:15:04', 4, NULL, 4, 4),
(58, 'fa-slide-show', '', '                                                                                             .', NULL, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>', 0, NULL, '/assets/photos/posts/4.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-02 18:15:09', '2017-01-02 18:15:45', '2017-01-02 18:15:45', '2017-01-02 18:15:09', 4, NULL, 4, 4),
(59, 'fa-slide-show', '', '                                                                                             .', NULL, '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>', 0, NULL, '/assets/photos/posts/5.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-02 18:15:24', '2017-01-07 17:19:50', '2017-01-07 17:19:50', '2017-01-02 18:15:23', 4, NULL, 4, 4),
(60, 'fa-portfolio', '', 'انواع خشکبار', NULL, '<p>خشکبار تازه و مرغوب</p>', 0, NULL, '/assets/photos/posts/nuts.png', 0, '"{\\"post_photos\\":[]}"', '2017-01-02 19:26:14', '2017-01-02 19:26:14', NULL, '2017-01-02 19:26:14', 4, NULL, NULL, 4);
INSERT INTO `posts` (`id`, `branch`, `slug`, `title`, `abstract`, `text`, `category_id`, `keywords`, `featured_image`, `is_draft`, `meta`, `created_at`, `updated_at`, `deleted_at`, `published_at`, `created_by`, `updated_by`, `deleted_by`, `published_by`) VALUES
(61, 'fa-portfolio', '', 'انواع میوه خشک', NULL, '<p>میوه های خشک</p>', 0, NULL, '/assets/photos/posts/fruit.png', 0, '"{\\"post_photos\\":[]}"', '2017-01-02 19:28:27', '2017-01-02 19:28:27', NULL, '2017-01-02 19:28:27', 4, NULL, NULL, 4),
(62, 'fa-portfolio', '', 'انواع شکلات', NULL, '<p>تنوع شکلات و شیرینی</p>', 0, NULL, '/assets/photos/posts/choco.png', 0, '"{\\"post_photos\\":[]}"', '2017-01-02 19:29:23', '2017-01-02 19:29:23', NULL, '2017-01-02 19:29:23', 4, NULL, NULL, 4),
(63, 'fa-portfolio', '', 'انواع سوغات', NULL, '<p>تنوع سوغات از سراسر ایران</p>', 0, NULL, '/assets/photos/posts/sur.png', 0, '"{\\"post_photos\\":[]}"', '2017-01-02 19:30:26', '2017-01-02 19:30:26', NULL, '2017-01-02 19:30:26', 4, NULL, NULL, 4),
(64, 'en-statics', 'en-packing', 'Packing', NULL, '<p>packing</p>', 0, NULL, '', 0, '"[]"', '2017-01-03 01:10:51', '2017-01-03 01:10:51', NULL, '2017-01-03 01:10:51', 4, NULL, NULL, 4),
(65, 'fa-products', '', 'بیاتین آلژینات نقره', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">مشابه بیاتین آلژینات (سیسورب)، با قابلیت کاربرد روی زخم&rlm;های عفونی یا مستعد به عفونت و زخم&rlm;هایی که درمان آنها برای مدت قابل توجهی به دلیل وجود باکتری در زخم متوقف مانده است.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مکانیسم عمل:</p>\n<p style="text-align: justify;">بیاتین آلژینات نقره یک پانسمان از گروه آلژینات&rlm;های نقره&rlm;دار است. ساختار و مکانیسم عمل آن مشابه بیاتین آلژینات (سیسورب) است، با این تفاوت که بیاتین آلژینات نقره تاثیر آنتی باکتریال نقره و همچنین درمان مرطوب زخم را به&rlm;طور همزمان دارد. بیاتین آلژینات نقره ضمن جذب اگزودا و ایجاد محیط تامین کننده درمان مرطوب زخم، بر اثر تماس با اگزودا یون های نقره را آزاد می&rlm;کند. میزان آزادسازی نقره متناسب با حجم اگزودا است و در طول مدت دوام پانسمان بصورت تدریجی و پیوسته (حداکثر تا 7 روز) انجام می&rlm;گیرد. خاصیت آنتی باکتریال بیاتین آلژینات نقره (سیسورب نقره) روی مخمرهایی مانند قارچ کاندیداآلبیکانس و طیف وسیعی از باکتری&rlm;ها که معمولا در زخم&rlm;های مزمن شایع و نسبت به آنتی بیوتیک&rlm;ها مقاوم هستند مؤثر است، باکتری&rlm;هایی نظیر استرپتوکوک بتا همولیتیک، سودومونا، گونه&rlm;های استافیلوکوک مقاوم به متی سیلین (MRSA) و انتروکوکوس مقاوم به وانکومایسین (VRE).&nbsp;</p>\n<p style="text-align: justify;">میزان نقره&rlm; آزاد شده از بیاتین آلژینات نقره کمتر از مقادیری است که به سلول های بدن آسیب برساند یا اثر سمی داشته باشد.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">ویژگی&rlm;های کاربردی:</p>\n<p style="text-align: justify;">بیاتین آلژینات نقره (سیسورب نقره) نیز مانند بیاتین آلژینات (سیسورب) بدون نقره به دو فرم ورقه&rlm;ای با نام بیاتین آلژینات نقره (سیسورب نقره)، به ابعاد 10 &Iuml; 10 و 15 &Iuml; 15 سانتیمتر و نواری با نام &nbsp;بیاتین آلژینات نقره پرکننده (سیسورب نقره پرکننده) موجود است.</p>\n<p style="text-align: justify;">بیاتین آلژینات نقره (سیسورب نقره) بوی بد ناشی از میکروارگانیسم&lrm;های درون زخم را به شدت کاهش می&lrm;دهد.</p>\n<p style="text-align: justify;">بیاتین آلژینات نقره (سیسورب نقره) قابل برش به شکل و اندازه دلخواه بوده و یکی از کاربردهای اصلی آن در زخم&lrm;های پای دیابتی است.</p>\n<p style="text-align: justify;">بیاتین آلژینات نقره (سیسورب نقره) تمام ویژگی&lrm;ها و مزایای بیاتین آلژینات (سیسورب) را نیز دارا می&lrm;باشد.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Calcium Alginate, Sodium Carboxy Methyl Cellulose, Silver compound</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p>&nbsp;</p>', 3, NULL, '/assets/photos/posts/biatain/________________________.jpg', 0, '{"post_photos":[]}', '2017-01-03 01:38:51', '2017-01-07 18:53:35', NULL, '2017-01-03 01:38:51', 4, NULL, NULL, 4),
(66, 'fa-products', '', 'بیاتین آلژینات', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">انواع زخم&rlm;های حاد یا مزمن بصورت حفره&rlm;ای یا سطحی با اگزودای متوسط تا زیاد</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مکانیسم عمل:</p>\n<p style="text-align: justify;">بیاتین آلژینات (سیسورب) یک پانسمان از گروه آلژینات&rlm;ها است. آلژینات کلسیم &nbsp;ماده&rlm;ای است که از جلبک&rlm;های دریایی استخراج می&rlm;گردد و بسیار جاذب رطوبت است.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">پانسمان بیاتین آلژینات (سیسورب) دارای 85% آلژینات کلسیم و 15% CMC است. آلژینات کلسیم ماده&rlm;ای است که جذب آن نسبت به CMC بیشتر و سریعتر است. ذرات این دو ماده جاذب رطوبت در کنار هم در ساختار منحصربفرد پانسمان بیاتین آلژینات (سیسورب) که بصورت رشته&rlm;های میکروسکوپی در هم تنیده است، قرار گرفته&rlm;اند. هنگامی که بیاتین آلژینات (سیسورب) با اگزودای زخم تماس می&rlm;یابد، ملکول&rlm;های آلژینات کلسیم و CMC طی فرایند تبادل یونی، اگزودا را تا حد اشباع شدن جذب می&rlm;کنند و منبسط می&rlm;شوند. به تدریج یک ژل بسیار نرم و در عین حال منسجم تشکیل می&rlm;گردد که حفره یا بستر زخم را پر می&lrm;کند. این ژل شرایط درمان مرطوب زخم (Moist Wound Healing) را فراهم می&rlm;کند و همچنین با حفاظت از انتهای آزاد اعصاب درد بیمار را کاهش می&rlm;دهد. ساختار رشته&rlm;های در هم تنیده بیاتین آلژینات (سیسورب) به&rlm;گونه&rlm;ای است که ژل تشکیل شده در آن حبس می&rlm;گردد و این امر از انتشار آن به اطراف و احتمال خیس خوردگی پوست سالم اطراف زخم (maceration) جلوگیری می&rlm;کند.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">انواع بیاتین آلژینات (سیسورب):</p>\n<p style="text-align: justify;">بیاتین آلژینات (سیسورب) به دوشکل بیاتین آلژینات (سیسورب) و بیاتین آلژینات پرکننده (سیسورب پرکننده) موجود است. بیاتین آلژینات (سیسورب) به شکل ورقه&rlm;های مربعی شکل به ابعاد 10 &Iuml; 10 و 15 &Iuml; 15 سانتیمتری بوده و برای پانسمان زخم&rlm;های سطحی با اگزودای متوسط تا زیاد بکار می&rlm;رود. بیاتین آلژینات پرکننده (سیسورب پرکننده) بصورت نواری به عرض 3 و طول 44 سانتیمتری است و برای استفاده در زخم&rlm;های حفره&rlm;ای بسیار مناسب است.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">ویژگی&rlm;های کاربردی:</p>\n<p style="text-align: justify;">این پانسمان&rlm;ها حتی در زمان اشباع کامل، انسجام و یکپارچگی خود را حفظ می&rlm;کنند و تعویض آنها یکپارچه و بدون بجا گذاشتن رشته&rlm;ها و بقایا در زخم است.</p>\n<p style="text-align: justify;">پانسمان&rlm;های بیاتین آلژینات (سیسورب) قابل برش بطول و شکل دلخواه است.&nbsp;</p>\n<p style="text-align: justify;">هنگام استفاده از بیاتین آلژینات (سیسورب) پرکننده در زخم&rlm;های حفره&rlm;ای، نباید حجم حفره را با آن پر نمود و بهتر است حداقل نیمی از فضای حفره را برای منبسط شدن پانسمان و ژلی که به&rlm;دنبال جذب اگزودا تشکیل می&rlm;گردد، خالی گذاشت.</p>\n<p style="text-align: justify;">این پانسمان&rlm;ها غیر چسبنده هستند و نیاز به یک پانسمان ثانویه دارند. در این مورد کامفیل شفاف، کامفیل ضربدری و بیاتین سوپر (آلیون) گزینه&rlm;های مناسبی هستند. معمولا در زخم پای دیابتی در صورت استفاده از بیاتین آلژینات (سیسورب) روی آن پانسمان بیاتین قرار داده، در نهایت پانسمان با بانداژ در موقعیت خود تثبیت می&rlm;گردد.</p>\n<p style="text-align: justify;">&nbsp;مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Calcium Alginate (85%), Sodium Carboxy Methyl Cellulose (15%</p>\n<p>&nbsp;</p>', 3, NULL, '/assets/photos/posts/biatain/CPWSC_Seasorb_Filler_3x44_Descriptive_001.jpg', 0, '{"post_photos":[]}', '2017-01-03 01:39:30', '2017-01-07 18:51:55', NULL, '2017-01-03 01:39:30', 4, NULL, NULL, 4),
(67, 'fa-products', '', 'بیاتین سوپر', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">زخم های با ترشح کم تا زیاد در تمام مراحل درمان&nbsp;</p>\n<p style="text-align: justify;">&nbsp;مکانیسم عمل:&nbsp;</p>\n<p style="text-align: justify;">بیاتین سوپر (آلیون) نوآوری منحصر به فرد کلوپلاست در بین تمام پانسمان&rlm;های مدرن است. می&lrm;توان به نوعی این پانسمان را در برگیرنده همه خصوصیات خوب پانسمان&rlm;های مختلف دانست.&nbsp;</p>\n<p style="text-align: justify;">در پانسمان بیاتین سوپر (آلیون) یک پد هیدروکاپیلاری &nbsp;(Hydro Capillary Pad) وجود دارد که متشکل از ذرات بسیار جاذب رطوبت است. این ذرات قادرند حجم زیادی از اگزودا را به سرعت جذب کنند. در همین حال، اگزودا از طریق رشته هایی مویین در کل حجم پانسمان بصورت افقی و عمودی منتشر و نگه داشته می&rlm;شود. به این ترتیب تمام ظرفیت پانسمان برای جذب اگزودا بکار گرفته می&lrm;شود و در فرآیند مواد پانسمان و اگزودای زخم، ژل تشکیل می&lrm;شود. در چنین شرایطی، زخم با وجود برخورداری از رطوبت مناسب از مضرات اگزودا و رطوبت اضافی مصون می&lrm;ماند. در زیر این پد هیدروکاپیلاری یک شبکه توری مانند قرار دارد که مانع از چسبندگی پانسمان به زخم می&rlm;گردد. همچنین لایه بیرونی بیاتین سوپر (آلیون) یک لایه نیمه تراوا است که اجازه تبخیر اگزودا و تبادلات گازی را می&lrm;دهد و در برابر میکروارگانیسم&lrm;ها غیر قابل نفوذ است. نیمه شفاف بودن این لایه بیرونی تشخیص اشباع شدن پانسمان و فرارسیدن زمان تعویض آن را فراهم می&lrm;کند. لایه چسبنده&zwnj;ای که دور پد هیدروکاپیلاری قرار گرفته است، ضمن آن که امکان چسباندن بیاتین سوپر (آلیون) در محل مورد نظر را فراهم می&lrm;کند، خودش در واقع یک پانسمان هیدروکلوئید است که در حفظ شرایط مناسب برای زخم و پوست اطراف آن نقش دارد.</p>\n<p style="text-align: justify;">&nbsp;ویژگی های کاربردی:</p>\n<p style="text-align: justify;">ظرفیت جذب اگزودا توسط بیاتین سوپر (آلیون) در بین تمامی پانسمان&lrm;های مدرن بی&lrm;همتا است و به همین دلیل نیاز به تعویض کمتری دارد. این مزیت تاثیر مستقیمی در روند درمان زخم و همچنین هزینه نهایی درمان زخم دارد.</p>\n<p style="text-align: justify;">لایه بیرونی بیاتین سوپر (آلیون) ضد آب است و بیمار می&lrm;تواند با داشتن پانسمان دوش بگیرد.</p>\n<p style="text-align: justify;">بیاتین سوپر (آلیون) بجز زخم&rlm;های خشک و فاقد اگزودا برای تمام زخم&rlm;های با هر میزان اگزودا مناسب است. این گستردگی مصرف از بیاتین سوپر (آلیون) یک پانسمان بسیار کاربردی برای افرادی ساخته است که به تغییر دادن مکرر نوع &nbsp;پانسمان تمایلی ندارند یا در تشخیص میزان اگزودا و انتخاب پانسمان مناسب تردید دارند.</p>\n<p style="text-align: justify;">در زخم&rlm;های حفره&rlm;ای می&lrm;توان پس از قرار دادن بیاتین آلژینات (سیسورب) در حفره زخم، روی حفره را با بیاتین سوپر (آلیون) پوشش داد.</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Polyurethane Film, Super Absorbing Polymer, Thermoplastic Polymer, Cellulose Fiber, Cellulose Tissue, Polyethylene Net, Sodium Carboxy Methyl Cellulose (CMC) &nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p>&nbsp;</p>', 3, NULL, '/assets/photos/posts/biatain/CPWSC_Alione_Descrip.jpg', 0, '{"post_photos":[]}', '2017-01-03 01:40:03', '2017-01-07 18:49:36', NULL, '2017-01-03 01:40:03', 4, NULL, NULL, 4),
(68, 'fa-products', '', 'بیاتین نقره', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">مشابه بیاتین با قابلیت کاربرد روی زخم&rlm;های عفونی، مستعد به عفونت و زخم&rlm;هایی که درمان آنها برای مدت قابل توجهی متوقف مانده است.&nbsp;</p>\n<p style="text-align: justify;">مکانیسم عمل:</p>\n<p style="text-align: justify;">بیاتین نقره متعلق به گروه Hydroactivated Silver Dressings است. بیاتین نقره بر پایه پانسمان فوم بیاتین است که تاثیر نقره و همچنین درمان مرطوب زخم را بطور همزمان دارد. بیاتین نقره ضمن جذب اگزودا و ایجاد محیط تامین کننده درمان مرطوب زخم، بر اثر تماس با اگزودا یون&rlm; های نقره را آزاد می&rlm;کند. میزان آزاد سازی نقره متناسب با حجم اگزودا است و در طول مدت دوام پانسمان بصورت تدریجی و پیوسته (حداکثر تا 7 روز) انجام می&rlm; گیرد. بیاتین نقره روی مخمرهایی مانند قارچ کاندیدا آلبیکانس و طیف وسیعی از باکتری &rlm;های مقاوم نسبت به آنتی بیوتیک &rlm;ها که اغلب در زخم&rlm;های مزمن شایعند، موثر است. این باکتری&rlm; ها عبارتند از سودومونا، گونه&rlm;های استافیلوکوک مقاوم به متی سیلین و ونکومایسین و همچنین استرپتوکوک بتا همولیتیک.&nbsp;</p>\n<p style="text-align: justify;">میزان نقره&rlm;ای که توسط بیاتین نقره آزاد می&rlm;گردد، کمتر از مقادیری است که به سلول&rlm;های بدن آسیب برساند یا اثر سمی داشته باشد.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">ویژگی های کاربردی:</p>\n<p style="text-align: justify;">مانند بیاتین، بیاتین نقره نیز در دو شکل کلی بدون چسب و چسب &rlm;دار وجود دارد و بیاتین نقره چسب&rlm; دار به سه فرم بیاتین نقره چسب&rlm; دار (به شکل مربع)، بیاتین نقره چسب&rlm; دار ساکروم و بیاتین نقره چسب &rlm;دار پاشنه موجود است.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">بیاتین نقره بوی بد ناشی از میکرو ارگانیسم&rlm;های درون زخم را به شدت کاهش می&rlm;دهد.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">بیاتین نقره&rlm; با جذب اگزودا اشباع می&rlm;گردد و سطح بیرونی آن تغییر رنگ می&rlm;دهد. این حالت ممکن است دو یا سه روز طول بکشد. در هر صورت پس از اشباع شدن پانسمان و حداکثر تا یک هفته بیاتین نقره را باید تعویض نمود.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">بیاتین نقره تمام ویژگی &rlm;ها و مزایای بیاتین را نیز دارا است</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Silver Complex</p>\n<p style="text-align: justify;">پد فوم در قالب یک ساختار سه بعدی پلیمری:</p>\n<p style="text-align: justify;">Hydrophilic Polyurethane, Artificial Emulsifier</p>\n<p style="text-align: justify;">لایه بیرونی :</p>\n<p style="text-align: justify;">Semi-permeable Polyurethane</p>\n<p>&nbsp;</p>', 3, NULL, '/assets/photos/posts/biatain/_________.jpg', 0, '{"post_photos":[]}', '2017-01-03 01:40:34', '2017-01-07 18:43:25', NULL, '2017-01-03 01:40:34', 4, NULL, NULL, 4),
(69, 'fa-slide-show', '', 'ایلیا درمان', NULL, '<p>...</p>', 0, NULL, '/assets/photos/posts/slideshow/2.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-07 17:25:53', '2017-01-07 17:25:53', NULL, '2017-01-07 17:25:53', 4, NULL, NULL, 4),
(70, 'fa-slide-show', '', 'ایلیا درمان', NULL, '<p>...</p>', 0, NULL, '/assets/photos/posts/slideshow/3.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-07 17:26:04', '2017-01-07 17:26:04', NULL, '2017-01-07 17:26:04', 4, NULL, NULL, 4),
(71, 'fa-slide-show', '', 'ایلیا درمان', NULL, '<p>...</p>', 0, NULL, '/assets/photos/posts/slideshow/4.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-07 17:26:12', '2017-01-07 17:26:12', NULL, '2017-01-07 17:26:12', 4, NULL, NULL, 4),
(72, 'fa-slide-show', '', 'ایلیا درمان', NULL, '<p>...</p>', 0, NULL, '/assets/photos/posts/slideshow/5.jpg', 0, '"{\\"link\\":\\"\\",\\"button\\":\\"\\"}"', '2017-01-07 17:26:21', '2017-01-07 17:26:21', NULL, '2017-01-07 17:26:21', 4, NULL, NULL, 4),
(73, 'fa-products', '', 'کامفیل شفاف', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">قابلیت کاربرد به تنهایی جهت محافظت و ترمیم زخم &rlm;های سطحی با ترشح کم یا بدون ترشح</p>\n<p style="text-align: justify;">به عنوان پانسمان ثانویه بر روی ژل پیوریلون و بیاتین آلژینات (سیسورب)</p>\n<p style="text-align: justify;">مناسب &rlm;ترین پانسمان جهت انواع سوچورهای جراحی</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مکانیسم عمل:&nbsp;</p>\n<p style="text-align: justify;">کامفیل شفاف از ذرات سلولزی (CMC) جاذب رطوبت تشکیل شده است، که در یک توده الاستیک و چسبنده قرار گرفته&rlm; اند. هنگامی که پانسمان روی زخم قرار می &rlm;گیرد، این ذرات در تماس با اگزودای زخم آن را جدب می&rlm; کنند و ترکیب ژل مانندی، که معمولا شیری رنگ است، تشکیل می&rlm;دهند که به تدریج زخم را می &rlm;پوشاند. با تشکیل این ژل در بستر زخم محیط مناسبی برای درمان مرطوب زخم (Moist Wound Healing) بوجود می&rlm;آید. از ویژگی&rlm; های دیگر این ژل حفاظت آن از انتهای آزاد اعصاب و بافت گرانولاسیون است، که باعث کاهش قابل ملاحظه درد بیمار می&rlm; گردد. اساسا" نام کامفیل از همین خاصیت آن گرفته شده است:</p>\n<p style="text-align: justify;">Comfeel=Comfortable feeling</p>\n<p style="text-align: justify;">سطح خارجی کامفیل شفاف با یک لایه نیمه تراوا پوشانده شده است که با وجود اجازه تبخیر و عبور اکسیژن، نسبت به میکرو ارگانیسم &rlm;ها غیر قابل نفوذ است. همچنین این لایه را "لایه باهوش" می&rlm;نامند، به دلیل آن که منافذ بسیار ریز آن بر حسب میزان اگزودا و رطوبت بستر زخم تنگ یا گشاد می&rlm;شوند و نسبت تبخیر را تنظیم می&rlm;کنند. به این ترتیب در زمانی که اگزودای بیشتری وجود دارد، سرعت تبخیر نیز افزایش پیدا می &rlm;کند و برعکس.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">&nbsp;ویژگی های کاربردی:</p>\n<p style="text-align: justify;">کامفیل شفاف تنها پانسمان شفاف از جنس هیدروکلوئید در دنیا است. این پانسمان هم زمان شرایط درمان مرطوب زخم را همراه با قابلیت مشاهده زخم بدون برداشتن پانسمان را فراهم می&rlm; کند.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">کامفیل شفاف قابل برش به شکل و اندازه دلخواه است.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">سطح بیرونی کامفیل شفاف غیر قابل نفوذ نسبت به آب است و بیمار امکان دوش گرفتن دارد. این سطح صاف و ضد آب در صورت تماس با ادرار و مدفوع قابل پاک کردن است.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">روی کامفیل شفاف (و همچنین مربعی) شبکه مدرجی وجود دارد که امکان ترسیم، ثبت و بررسی تغییرات شکل و اندازه زخم را در هر بار تعویض فراهم می&rlm;کند.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">لبه &rlm;های کامفیل شفاف دارای دستگیره&rlm; های پلاستیکی است که امکان در دست گرفتن آن را برای چسباندن، بدون تماس دست یا دستکش با سطح چسبنده پانسمان فراهم می&rlm; کند.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">تشکیل ژل شیری رنگ و تعویض پانسمان مشابه کامفیل مربعی است.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Sodium Carboxy Methyl Cellulose CMC , Polyurethane Film</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p>&nbsp;</p>', 4, NULL, '/assets/photos/posts/comfeel/_________.jpg', 0, '"{\\"post_photos\\":[]}"', '2017-01-07 18:58:38', '2017-01-07 18:58:38', NULL, '2017-01-07 18:58:38', 4, NULL, NULL, 4),
(74, 'fa-products', '', 'کامفیل مربعی', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">&bull; قابلیت کاربرد به تنهایی جهت ترمیم زخم های سطحی با ترشح کم تا متوسط</p>\n<p style="text-align: justify;">&bull; به عنوان پانسمان ثانویه بر روی ژل پیوریلون و بیاتین آلژینات ( سیسورب)</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مکانیسم عمل:&nbsp;</p>\n<p style="text-align: justify;">کامفیل مربعی از ذرات سلولزی (CMC) جاذب رطوبت تشکیل شده است، که در یک توده الاستیک و چسبنده قرار گرفته &rlm;اند. هنگامی که پانسمان روی زخم قرار می&rlm;گیرد، این ذرات در تماس با اگزودای زخم آن را جدب می&rlm;کنند و ترکیب ژل مانندی، که معمولا شیری رنگ است، تشکیل می&rlm;دهند که به تدریج زخم را می &rlm;پوشاند. با تشکیل این ژل در بستر زخم محیط مناسبی برای درمان مرطوب زخم (Moist Wound Healing) بوجود می&rlm; آید. از ویژگی &rlm;های دیگر این ژل حفاظت آن از انتهای آزاد اعصاب و بافت گرانولاسیون است، که باعث کاهش قابل ملاحظه درد بیمار می &rlm;گردد. اساسا" نام کامفیل از همین خاصیت آن گرفته شده است:</p>\n<p style="text-align: justify;">Comfeel=Comfortable feeling</p>\n<p style="text-align: justify;">وجود 7% آلژینات کلسیم در کامفیل مربعی علاوه بر افزایش ظرفیت جذب اگزودا، به ژلی که تشکیل می&rlm;شود چسبندگی و قوام بیشتری می&rlm;دهد و این امر ریسک خیس خوردگی پوست (maceration) را به حداقل می&rlm; رساند.</p>\n<p style="text-align: justify;">سطح خارجی کامفیل مربعی با یک لایه نیمه تراوا پوشانده شده است که با وجود اجازه تبخیر و عبور اکسیژن، نسبت به میکرو ارگانیسم &rlm;ها غیر قابل نفوذ است. همچنین این لایه را "لایه باهوش" می&rlm;نامند، به دلیل آن که منافذ بسیار ریز آن بر حسب میزان اگزودا و رطوبت بستر زخم تنگ یا گشاد می &rlm;شوند و نسبت تبخیر را تنظیم می&rlm; کنند. به این ترتیب در زمانی که اگزودای بیشتری وجود دارد، سرعت تبخیر نیز افزایش پیدا می &rlm;کند و برعکس.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">ویژگی&rlm; های کاربردی:</p>\n<p style="text-align: justify;">سطح بیرونی کامفیل مربعی نسبت به آب غیر قابل نفوذ است و بیمار امکان دوش گرفتن دارد. این سطح صاف و ضد آب در صورت تماس با ادرار و مدفوع قابل پاک کردن است.</p>\n<p style="text-align: justify;">لبه &rlm;های کامفیل مربعی نازک شده است و بر اثر جابجایی و کشیده شدن روی تخت و اصطکاک با ملافه، لبه &rlm;ها بلند نمی شوند.</p>\n<p style="text-align: justify;">ژل شیری رنگی که در زیر کامفیل مربعی تشکیل می &rlm;گردد، مانند یک چراغ راهنما زمان تعویض پانسمان را اعلام می &rlm;کند. پانسمان را بی جهت نباید تعویض کرد و این کار را تنها باید زمانی انجام داد که ژل شیری رنگ به نزدیکی لبه&rlm;های پانسمان رسیده و پانسمان اشباع شده است. برای تعویض پانسمان باید از لبه &rlm;ها شروع و پس از آزاد کردن آنها به تدریج به سمت مرکز پانسمان حرکت کرد.</p>\n<p style="text-align: justify;">هنگام تعویض پانسمان، ژلی که در زیر آن تشکیل شده است بطور یکپارچه و چسبیده با سطح پانسمان برداشته می &rlm;شود. هیچ بقایایی روی زخم باقی نمی ماند و به این ترتیب شستشوی زخم با نرمال سالین بسیار ساده و راحت خواهد بود.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Calcium Alginate, Sodium Carboxy Methyl Cellulose CMC , Polyurethane Film</p>\n<p>&nbsp;</p>', 4, NULL, '/assets/photos/posts/comfeel/___________.jpg', 0, '"{\\"post_photos\\":[]}"', '2017-01-07 18:59:58', '2017-01-07 18:59:58', NULL, '2017-01-07 18:59:58', 4, NULL, NULL, 4),
(75, 'fa-products', '', 'ژل پیوریلون ', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">دبریدمان بافت نکروز سیاه یا زرد رنگ به روش اتولیتیک</p>\n<p style="text-align: justify;">مکانیسم عمل:</p>\n<p style="text-align: justify;">&nbsp;پانسمان هیدروژل کلوپلاست، ژل پیوریلون (Purilon) نام دارد. این نام برگرفته از کلمه Pure به معنی خالص است، چرا که در ژل پیوریلون هیچ ماده دارویی وجود ندارد. 90% حجم ژل پیوریلون آب مقطر است که در ترکیب با ذرات جاذب رطوبت سلولزی (CMC) و آلژینات کلسیم یک هیدروژل با غلظت متعادل بوجود آورده است که تناسب منحصر بفردی از خصوصیت رطوبت دهی (Hydration) و رطوبت گیری (Absorption) دارد. ژل پیوریلون در تماس با بافت نکروز سیاه رنگ یا زرد رنگ بر حسب میزان اگزودا و رطوبت زخم، به آن رطوبت می &rlm;دهد یا بالعکس، رطوبت اضافه را جذب می &rlm;کند. در چنین شرایطی ژل پیوریلون بافت نکروز را تجزیه و حل می &rlm;کند، بدون آن که به سلول های سالم آسیبی برساند. به این ترتیب در هر نوبت استفاده از ژل پیوریلون، بافت نکروز کمتر می &lrm;شود.</p>\n<p style="text-align: justify;">تصمیم گیری برای انتخاب نوع دبریدمان که به روش جراحی یا شارپ صورت گیرد یا با استفاده از ژل پیوریلون، به شرایط بیمار و ارزیابی زخم بستگی دارد. در مواردی که بافت نکروز اندازه و ضخامت زیادی دارد، دبریدمان جراحی بدلیل سرعت بالاتر ارجح است. از طرف دیگر شرایط خاص بیمار نظیر سطح هوشیاری، سن بالا یا مشکلات قلبی و ریوی ممکن است دبریدمان جراحی را مقدور نسازد. در چنین شرایطی استفاده از ژل پیوریلون چاره ساز است. یک درمانگر با تجربه قادر است با ارزیابی شرایط، روش مناسب را انتخاب کند و حتی آن را به همراه روشی دیگر بصورت تؤام بکار گیرد؛ مثلا" با یک یا دو بار استفاده از ژل پیوریلون و نرم کردن بافت نکروز شرایط مناسب تری برای دبریدمان جراحی بوجود آورد، یا در حالی که دبریدمان را با ژل پیوریلون دنبال می &rlm;کند در بین تعویض&rlm; های پانسمان، با ابزار مناسب بخش &rlm;هایی از بافت نکروز را دبرید کند و به این مرحله از درمان سرعت بیشتری ببخشد.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">ویژگی&rlm; &nbsp;های کاربردی:</p>\n<p style="text-align: justify;">ژل پیوریلون با داشتن انسجام و غلظت مناسب در هر وضعیتی که بیمار داشته باشد، روی موضع زخم ثابت می &rlm;ماند و به پایین سرازیر نمی&rlm; گردد.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;ژل پیوریلون نیاز به یک پانسمان ثانویه دارد. در این مورد کامفیل شفاف یا کامفیل ضربدری گزینه های مناسبی هستند. معمولا در زخم پای دیابتیک در صورت استفاده از ژل پیوریلون روی آن پانسمان بیاتین قرار داده، در نهایت پانسمان با بانداژ در موقعیت خود تثبیت می &rlm;گردد.</p>\n<p style="text-align: justify;">&nbsp;ژل پیوریلون در دو سایز 15 و 25 گرمی موجود است.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;در هر بسته 25 گرمی ژل پیوریلون، در واقع 30 گرم ژل پر شده است تا نگرانی برای اندک ژل باقی مانده در هر بسته وجود نداشته باشد.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Purified Water, Calcium Alginate, Sodium Carboxy Methyl Cellulose (CMC</p>\n<p>&nbsp;</p>', 5, NULL, '/assets/photos/posts/1251452112.jpg', 0, '"{\\"post_photos\\":[]}"', '2017-01-07 19:04:31', '2017-01-07 19:04:31', NULL, '2017-01-07 19:04:31', 4, NULL, NULL, 4),
(76, 'fa-products', '', 'اترک تین', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">مراقبت از پای دیابتیک و پیشگیری از بروز زخم دیابتیک</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مکانیسم عمل:</p>\n<p style="text-align: justify;">تقریبا تمامی مبتلایان به دیابت ملیتوس (نوع اول یا دوم) به نحوی درگیر مشکلات پوستی هستند. شایع&rlm; ترین مشکل پوستی این بیماران، خشکی پوست (Xerosis) است.</p>\n<p style="text-align: justify;">جریان خون ناکافی در عروق خونی کوچک بیماران مبتلا به دیابت موجب تحلیل رفتن پوست (Atrophy)، از دست رفتن موها، تغییر شکل ناخن&rlm;ها (Dystrophy) و درجات مختلفی از خشکی پوست می&rlm; شود. نوروپاتی اعصاب خودکار(Autonomic Neuropathy) که جزء عوارض شایع&rlm; تاخیری دیابت می &rlm;باشد، ممکن است باعث اختلال تعریق، قرمزی (Erythema)، تورم (Edema) و تحلیل رفتن پوست شود و خشکی پوست را نیز تشدید کند. پوست خشک در صورت عدم درمان ترک (Fissure) برمی &rlm;دارد و این ترک&rlm; ها به مرور زمان ایجاد زخم می&rlm;کنند.</p>\n<p style="text-align: justify;">هنگامی &rlm;که پوست خشک در معرض فشار و سایش قرار می&rlm;گیرد، ریسک ایجاد پینه (Callouse) و زخم در آن افزایش می&rlm;یابد.</p>\n<p style="text-align: justify;">پیشگیری از ایجاد زخم &rlm;های دیابتی از اهمیت زیادی برخوردار است؛ زیرا این زخم &rlm;ها نه تنها موجب ناراحتی و مشکل برای بیمار و نزدیکان وی می &rlm;شوند، در شرایط وخیم حتی ممکن است سبب قطع عضو شوند.</p>\n<p style="text-align: justify;">زخم هنگامی به وجود می &rlm;آید که پینه و ترک در پوست خشک ایجاد شده باشد. با استفاده مداوم از کرم&rlm; اترکتین می &rlm;توان از بروز این شرایط جلوگیری کرد. به همین دلیل اترک تین یک مکمل مهم در مراقبت از پای دیابتی است، زیرا از خشکی پوست و ایجاد پینه و ترک متعاقب آن و در نهایت ایجاد زخم جلوگیری می &rlm;کند.</p>\n<p style="text-align: justify;">اترک تین حاوی 10% اوره و 4% اسید لاکتیک (Alpha Hydroxy Acid - AHA) است. این مواد هر دو از مرطوب کننده&rlm;های طبیعی موجود در پوست هستند. اوره مرطوب کننده&rlm;ای است که در قسمت&rlm; های بیرونی لایه شاخی پوست ( Stratum Corneum ) نفوذ می&rlm;کند و با پروتئین &rlm;های پوست پیوند می &rlm;یابد. اسید لاکتیک نیز لایه برداری (Peeling) اپیدرم را افزایش می&rlm; دهد. لایه برداری منجر به بازسازی مجدد پوست و هموار و تازه شدن ظاهر آن می&rlm; شود. اوره و اسید لاکتیک هر دو باعث افزایش میزان مایع درون لایه شاخی پوست می &rlm;گردند. به این ترتیب این دو ماده مرطوب کننده رطوبت و انعطاف پذیری (Elasticity) پوست را از درون و بدون بستن منافذ پوست افزایش می&rlm;دهند.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">ویژگی&rlm; های کاربردی:</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">اترک تین فاقد مواد نگه دارنده و اسانس است و احتمال حساسیت به آن حداقل می &rlm;باشد.</p>\n<p style="text-align: justify;">&nbsp;در مراحل اولیه مصرف بهتر است روزی دو یا سه نوبت از اترک تین استفاده نمود. پس از آن که پوست به شرایط سالم و طبیعی رسید، مصرف یکبار در روز اترک تین این شرایط را حفظ می کند.</p>\n<p style="text-align: justify;">اترک تین به هیچ وجه احساس چرب شدن و بسته شدن منافذ پوستی را ایجاد نمی &rlm;کند و به خوبی جذب آن می&rlm; شود.&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">Aqua, Urea (Carbamid), Isopropyl Palmitate, Octyl Palmitate, Glyceryl Stearate, Lactic Acid, Stearyl Alcohol, Sorbitol, Ammonium Lactate, Stearic Acid, Ceteareth-25, Ceteareth-26</p>\n<p>&nbsp;</p>', 5, NULL, '/assets/photos/posts/251487.jpg', 0, '"{\\"post_photos\\":[]}"', '2017-01-07 19:06:15', '2017-01-07 19:06:15', NULL, '2017-01-07 19:06:15', 4, NULL, NULL, 4),
(77, 'fa-products', '', 'فیزیوتول نقره ', NULL, '<p style="text-align: justify;">موارد مصرف:</p>\n<p style="text-align: justify;">برای زخم&rlm;های با ترشح کم تا زیاد.</p>\n<p style="text-align: justify;">زخم&rlm; هایی که ترمیم آنها بدلیل عفونت به تاخیر افتاده و یا خطر ایجاد عفونت در زخم وجود دارد.</p>\n<p style="text-align: justify;">زخم&rlm; های مزمن مانند زخم &rlm;های عروقی پا، زخم&rlm;های فشاری و زخم پای دیابتی.</p>\n<p style="text-align: justify;">زخم&rlm; های حاد مانند سوختگی&rlm; های با ضخامت نسبی (سوختگی درجه دو)، محل دهنده پیوند پوست، زخم &rlm;های جراحی، سائیدگی &rlm;ها</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">مکانیسم عمل:</p>\n<p style="text-align: justify;">یک لایه پوششی با قابلیت ایجاد محیط مرطوب برای ترمیم زخم است که حاوی سیلور سولفادیازین به عنوان یک ماده دارویی کمکی می&rlm;باشد.</p>\n<p style="text-align: justify;">از یک تور پلی&rlm;استر (PET) حاوی CMC که به وازلین آغشته شده ساخته شده است که به همین دلیل دارای خواص هیدروکولوئیدها می &rlm;باشد. سیلور سولفادیازین بطور یکنواخت با وازلین مخلوط شده است.</p>\n<p style="text-align: justify;">ذرات هیدرو کولوئید و وازلین در تماس با رطوبت یک ژل منسجم تشکیل می &rlm;دهند که این ژل محیط مرطوب را مهیا کرده و هنگام تعویض پانسمان آسیبی به زخم وارد نمی شود.</p>\n<p style="text-align: justify;">آزادسازی یون نقره متناسب با میزان اگزودای زخم است. فیزیوتول نقره میزان مناسبی از یون نقره را در طی زمان آزاد می&rlm;کند و پس از هر تعویض پانسمان، زخم در معرض مقادیر متغیر نقره قرار نمی&rlm;گیرد.</p>\n<p style="text-align: justify;">سیلور سولفادیازین دارای خاصیت آنتی &rlm;باکتریال بر روی باکتری&rlm;های گرم منفی و گرم مثبت شامل MRSA می&rlm;باشد.</p>\n<p style="text-align: justify;">&nbsp;</p>\n<p style="text-align: justify;">ویژگی &rlm;های کاربردی:</p>\n<p style="text-align: justify;">فیزیوتول نقره باید بیش از 1 سانتی&rlm; متر فراتر از لبه &rlm;های زخم را بپوشاند.</p>\n<p style="text-align: justify;">برای پوشش فیزیوتول نقره&rlm; دار به یک پانسمان ثانویه نیاز است که بر اساس میزان اگزودای زخم می&rlm; تواند آلیون، بیاتین یا کامفیل باشد.</p>\n<p style="text-align: justify;">باید حداکثر پس از سه روز تعویض شود.</p>\n<p style="text-align: justify;">برای استفاده طولانی مدت باید هر ماه با یک متخصص مشورت شود.</p>\n<p style="text-align: justify;">بوی نامطبوعی که باکتری&rlm; ها در زخم ایجاد می&rlm;کنند را کاهش می&rlm;دهد.</p>\n<p style="text-align: justify;">هنگام بانداژ فشاری می&rlm;توان از فیزیوتول نقره استفاده کرد.</p>\n<p style="text-align: justify;">هنگام انجام MRI (حداکثر 3 تسلا) بی&rlm;خطر است و می&rlm;توان روی زخم آن را باقی گذاشت.</p>\n<p style="text-align: justify;">مواد تشکیل دهنده:</p>\n<p style="text-align: justify;">تور پلی&rlm; استر (Polyethylene terephthalate, PET)، سدیم کربوکسی متیل سلولز (CMC)، وازلین، سیلور سولفادیازین</p>\n<p>&nbsp;</p>', 5, NULL, '/assets/photos/posts/Untitled-2.jpg', 0, '[]', '2017-01-07 19:14:38', '2017-01-07 19:15:08', NULL, '2017-01-07 19:14:38', 4, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` text,
  `currency` varchar(5) DEFAULT NULL,
  `card_price` decimal(15,0) NOT NULL DEFAULT '0',
  `initial_charge` int(9) NOT NULL DEFAULT '0',
  `inventory` int(9) NOT NULL DEFAULT '0',
  `inventory_low_alarm` int(9) NOT NULL DEFAULT '0',
  `inventory_low_action` int(9) NOT NULL DEFAULT '0',
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `slug`, `title`, `description`, `currency`, `card_price`, `initial_charge`, `inventory`, `inventory_low_alarm`, `inventory_low_action`, `meta`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, NULL, 'کارت طلایی زمرد', 'این کارت قابلیت برداشت و شارژ نقدی را ندارد.', 'USD', '100000', 200, 3, 20, 10, '{"image":"assets\\/photos\\/posts\\/24k-prepaid-visa-rushcard-081716.png","max_purchasable":"0","is_extensible":"0","min_charge":"100","max_charge":"500","is_rechargeable":"0","expiry":"12","color_code":"teal"}', '2016-11-05 21:31:41', '2016-12-09 19:08:12', NULL, 1, NULL, 1),
(2, NULL, 'کارت طلایی جاویدان', 'با این کارت می‌توانید درهم امارات را خرید و فروش نمایید.', 'UAD', '70000', 40000, 5000, 30, 10, '{"image":"assets\\/photos\\/posts\\/24k-prepaid-visa-rushcard-081716.png","max_purchasable":"1","is_extensible":"1","min_charge":"20000","max_charge":"40000","is_rechargeable":"1","expiry":"0","color_code":"orange"}', '2016-11-06 21:15:40', '2016-12-09 19:08:03', NULL, 1, NULL, NULL),
(3, NULL, 'ویزا کارت کلاسیک', 'قابلیت استفاده در POS و ATM بدون سقف روزانه\r\nدرج نام برروی کارت\r\nقابلیت شارژ نامحدود\r\nتاریخ انقضا ۳ سال', 'USD', '4000000', 1000, 100, 10, 0, '"{\\"image\\":\\"assets\\\\\\/photos\\\\\\/posts\\\\\\/24k-prepaid-visa-rushcard-081716.png\\",\\"color_code\\":\\"gray\\",\\"max_purchasable\\":\\"\\",\\"expiry\\":\\"\\",\\"is_extensible\\":\\"0\\",\\"min_charge\\":\\"0\\",\\"max_charge\\":\\"0\\",\\"is_rechargeable\\":\\"1\\"}"', '2016-12-09 19:13:42', '2016-12-09 19:13:42', NULL, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE IF NOT EXISTS `rates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL,
  `price_to_buy` decimal(10,0) DEFAULT NULL,
  `price_to_sell` decimal(10,0) DEFAULT NULL,
  `meta` longtext,
  `effective_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `currency_id`, `price_to_buy`, `price_to_sell`, `meta`, `effective_date`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 4, '12150', '12160', '"[]"', '2016-10-21 09:29:00', '2016-10-21 20:40:53', '2016-10-21 20:40:53', 1, NULL),
(2, 2, '10000', '12000', '"[]"', '2016-10-21 20:59:54', '2016-10-21 20:59:54', '2016-10-21 20:59:54', 1, NULL),
(3, 2, '12000', '14000', '"[]"', '2016-10-21 22:10:00', '2016-10-21 21:00:20', '2016-10-21 21:00:20', 1, NULL),
(4, 2, '20000', '20001', '"[]"', '2016-09-21 20:30:00', '2016-10-21 21:54:06', '2016-10-21 21:54:06', 1, NULL),
(5, 4, '12150', '12161', '"[]"', '2016-10-26 14:48:55', '2016-10-26 14:48:55', '2016-10-26 14:48:55', 1, NULL),
(6, 4, '12150', '12162', '"[]"', '2016-10-26 14:50:33', '2016-10-26 14:50:33', '2016-10-26 14:50:33', 1, NULL),
(7, 4, '12150', '13142', '"[]"', '2016-10-26 14:59:34', '2016-10-26 14:59:34', '2016-10-26 14:59:34', 1, NULL),
(8, 3, '45000', '47000', '"[]"', '2016-11-09 11:34:04', '2016-11-09 11:34:04', '2016-11-09 11:34:04', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `data_type` varchar(250) DEFAULT NULL,
  `default_value` longtext,
  `custom_value` longtext,
  `developers_only` tinyint(1) NOT NULL,
  `is_resident` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `slug`, `title`, `category`, `data_type`, `default_value`, `custom_value`, `developers_only`, `is_resident`, `created_at`, `updated_at`) VALUES
(1, 'working_hours_begin', 'شروع ساعت اداری', 'template', 'text', '۱۱', '۱۱', 0, 0, NULL, '2016-10-21 06:08:56'),
(2, 'working_hours_end', 'پایان ساعت اداری', 'template', 'text', '', '', 0, 0, NULL, '2016-10-21 06:08:56'),
(3, 'working_days', 'روزهای کاری', 'template', 'text', 'tue', 'wed', 1, 0, NULL, '2016-10-14 05:08:07'),
(4, 'slogan', 'شعار سایت', 'template', 'textarea', 'هر زمان که از من خواسته شد، در شنیدن، ایجاد ارتباط و دادن توصیه‌ای که مفید می‌دانم به کارآفرینان دریغ نکنم.', 'هر زمان که از من خواسته شد، در شنیدن، ایجاد ارتباط و دادن توصیه‌ای که مفید می‌دانم به کارآفرینان دریغ نکنم.', 0, 0, '2016-10-14 12:00:58', '2016-10-21 06:07:43'),
(5, 'overall_power', 'فعالیت سایت', 'template', 'boolean', '0', '0', 0, 0, '2016-10-14 12:09:03', '2016-10-14 12:10:33'),
(6, 'site-opening', 'تاریخ افتتاح سایت', 'template', 'date', '2016-09-25', '2017-01-07', 0, 0, '2016-10-14 12:11:10', '2017-01-07 19:27:06'),
(7, 'site_logo', 'لوگوی رنگی سایت', 'template', 'photo', 'assets/photos/posts/CjhuijfXEAEQ8UW.jpg', 'assets/photos/posts/logo.png', 0, 0, '2016-10-14 12:13:30', '2016-12-01 14:21:40'),
(8, 'register_firms', 'سازمان‌های ثبت شرکت', 'database', 'array', 'سازمان ثبت اسناد و املاک کشور\r\nسازمان مدیریت و برنامه‌ریزی کشور\r\nاتاق بازرگانی، صنایع، معادن و کشاورزی جمهوری اسلامی ایران\r\nوزارت کشور ـ‌ شهرداری‌ها و دهیاری‌ها\r\nسازمان اوقاف و امور خیریه ـ بقعه\r\nسازمان اوقاف و امور خیریه ـ موقوفات\r\nحوزه‌ی علمیه\r\nوزارت آموزش و پرورش\r\nوزارت امور اقتصادی و دارایی\r\nوزارت تعاون، کار و رفاه اجتماعی\r\nوزارت بهداشت، درمان و آموزش پزشکی\r\nوزارت جهاد کشاورزی\r\nوزارت ارتباطات و فناوری اطلاعات\r\nوزارت جهاد کشاورزی\r\nوزارت ارتباطات و فناوری اطلاعات\r\nوزارت راه و شهرسازی\r\nشورای عالی مناطق آزاد', 'سازمان ثبت اسناد و املاک کشور\r\nسازمان مدیریت و برنامه‌ریزی کشور\r\nاتاق بازرگانی، صنایع، معادن و کشاورزی جمهوری اسلامی ایران\r\nوزارت کشور ـ‌ شهرداری‌ها و دهیاری‌ها\r\nسازمان اوقاف و امور خیریه ـ بقعه\r\nسازمان اوقاف و امور خیریه ـ موقوفات\r\nحوزه‌ی علمیه\r\nوزارت آموزش و پرورش\r\nوزارت امور اقتصادی و دارایی\r\nوزارت تعاون، کار و رفاه اجتماعی\r\nوزارت بهداشت، درمان و آموزش پزشکی\r\n\r\nوزارت جهاد کشاورزی\r\nوزارت ارتباطات و فناوری اطلاعات\r\nوزارت جهاد کشاورزی\r\nوزارت ارتباطات و فناوری اطلاعات\r\n\r\nوزارت راه و شهرسازی\r\nشورای عالی مناطق آزاد', 0, 1, '2016-10-19 04:48:13', '2016-10-21 05:43:40'),
(9, 'familization', 'نحوه‌ی آشنایی', 'database', 'array', 'دوست‌ها و آشنایان\r\nآگهی‌های تبلیغاتی\r\nرسانه‌های خبری\r\nشبکه‌های اجتماعی\r\nجست‌وجوی اینترنتی\r\nراه‌های دیگر', 'دوست‌ها و آشنایان\r\nآگهی‌های تبلیغاتی\r\nرسانه‌های خبری\r\nشبکه‌های اجتماعی\r\nجست‌وجوی اینترنتی\r\nراه‌های دیگر', 0, 1, '2016-10-19 06:00:03', '2016-10-21 06:14:13'),
(10, 'banks', 'بانک‌های کشور', 'database', 'array', NULL, 'ملی ایران\r\nملت\r\nسرمایه\r\nپاسارگاد\r\nحکمت ایرانیان\r\nسامان\r\nسپه\r\nتجارت\r\nصادرات ایران\r\nتوسعه صادرات ایران\r\nپست بانک\r\nاقتصاد نوین\r\nپارسیان\r\nصنعت و معدن\r\nمسکن\r\nکشاورزی\r\nرفاه', 0, 1, '2016-10-21 06:12:30', '2016-10-21 06:14:13'),
(11, 'site_logo_bw', 'لوگوی سیاه و سفید سایت', 'template', 'photo', '', 'assets/photos/posts/logo-bw.png', 0, 0, '2016-12-01 14:20:37', '2017-01-07 17:18:44'),
(12, 'facebook_account', 'اکانت فیس بوک', 'socials', 'text', NULL, 'kardan_face', 0, 0, '2016-12-01 14:25:02', '2016-12-01 14:28:31'),
(13, 'twitter_account', 'اکانت توئیتر', 'socials', 'text', NULL, 'kardan_tw', 0, 0, '2016-12-01 14:25:48', '2016-12-01 14:28:31'),
(14, 'gplus_account', 'اکانت گوگل پلاس', 'socials', 'text', NULL, 'kardan_gp', 0, 0, '2016-12-01 14:26:45', '2016-12-01 14:28:31'),
(15, 'telegram_account', 'اکانت تلگرام', 'socials', 'text', NULL, 'kardan_tel', 0, 0, '2016-12-01 14:27:17', '2016-12-01 14:28:30'),
(16, 'instagram_account', 'اکانت اینستاگرام', 'socials', 'text', NULL, 'kardan_ins', 0, 0, '2016-12-01 14:27:44', '2016-12-01 14:28:30'),
(18, 'fa-address', 'آدرس فارسی', 'contact', 'text', '', 'خیابان الهیه، مجتمع تجاری و اداری مدرن الهیه، طبقه چهارم، واحد 24', 0, 0, '2016-12-09 18:01:52', '2017-01-07 19:23:28'),
(20, 'fa-phone', 'تلفن فارسی', 'contact', 'text', '', '۰۲۱۲۲۶۵۶۵۷۰', 0, 0, '2016-12-09 18:02:39', '2017-01-07 19:24:53'),
(22, 'fa-fax', 'فکس فارسی', 'contact', 'text', '', '۰۲۱۲۲۶۵۷۸۹۰', 0, 0, '2016-12-09 18:03:14', '2017-01-07 19:25:19'),
(24, 'fa-email', 'آدرس ایمیل فارسی', 'contact', 'text', '', 'info@iliadarman.com', 0, 0, '2016-12-09 18:04:03', '2017-01-07 19:27:33'),
(25, 'domain_name', 'آدرس دامنه سایت', 'database', 'text', 'yasnateam.com', 'iliadarman.com', 1, 1, '2016-12-21 00:12:22', '2017-01-07 17:16:35'),
(26, 'httpd', 'پروتکل ارتباط کاربر', 'database', 'text', 'http://', 'http://', 1, 1, '2016-12-21 00:15:46', '2016-12-21 01:22:59'),
(27, 'use_ip', 'ورود هوشمند کاربر به سایت با استفاده از IP', 'database', 'boolean', '0', '0', 1, 1, '2016-12-21 01:18:12', '2016-12-21 01:31:51'),
(28, 'fa_site_title', 'عنوان سایت', 'template', 'text', NULL, 'ایلیادرمان', 0, 1, '2017-01-15 10:05:30', '2017-01-15 10:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `capital_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `name` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=475 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `title`, `parent_id`, `capital_id`) VALUES
(1, '2016-07-07 00:27:55', '2016-10-11 13:52:14', NULL, NULL, NULL, NULL, 'آذربایجان شرقی', 0, 37),
(2, '2016-07-07 00:27:55', '2016-10-04 16:30:48', NULL, NULL, NULL, NULL, 'آذربایجان غربی', 0, 52),
(3, '2016-07-07 00:27:55', '2016-07-12 05:21:29', NULL, NULL, NULL, NULL, 'اردبیل', 0, 69),
(4, '2016-07-07 00:27:55', '2016-07-07 01:35:19', NULL, NULL, NULL, NULL, 'اصفهان', 0, 81),
(5, '2016-07-07 00:27:55', '2016-07-07 01:35:30', NULL, NULL, NULL, NULL, 'البرز', 0, 108),
(6, '2016-07-07 00:27:55', '2016-07-07 01:36:45', NULL, NULL, NULL, NULL, 'ایلام', 0, 111),
(7, '2016-07-07 00:27:55', '2016-07-07 01:37:21', NULL, NULL, NULL, NULL, 'بوشهر', 0, 120),
(8, '2016-07-07 00:27:55', '2016-07-07 01:35:43', NULL, NULL, NULL, NULL, 'تهران', 0, 135),
(9, '2016-07-07 00:27:55', '2016-07-07 01:44:34', NULL, NULL, NULL, NULL, 'چهار محال و بختیاری', 0, 150),
(10, '2016-07-07 00:27:55', '2016-07-07 01:42:54', NULL, NULL, NULL, NULL, 'خراسان جنوبی', 0, 156),
(11, '2016-07-07 00:27:55', '2016-07-07 01:36:05', NULL, NULL, NULL, NULL, 'خراسان رضوی', 0, 191),
(12, '2016-07-07 00:27:55', '2016-07-07 01:43:03', NULL, NULL, NULL, NULL, 'خراسان شمالی', 0, 195),
(13, '2016-07-07 00:27:55', '2016-07-07 01:37:45', NULL, NULL, NULL, NULL, 'خوزستان', 0, 207),
(14, '2016-07-07 00:27:55', '2016-07-07 01:35:55', NULL, NULL, NULL, NULL, 'زنجان', 0, 233),
(15, '2016-07-07 00:27:55', '2016-07-07 01:38:00', NULL, NULL, NULL, NULL, 'سمنان', 0, 239),
(16, '2016-07-07 00:27:55', '2016-07-07 01:41:36', NULL, NULL, NULL, NULL, 'سیستان و بلوچستان', 0, 249),
(17, '2016-07-07 00:27:55', '2016-07-07 01:35:49', NULL, NULL, NULL, NULL, 'فارس', 0, 278),
(18, '2016-07-07 00:27:55', '2016-07-07 01:38:21', NULL, NULL, NULL, NULL, 'قزوین', 0, 297),
(19, '2016-07-07 00:27:55', '2016-07-07 01:35:36', NULL, NULL, NULL, NULL, 'قم', 0, 298),
(20, '2016-07-07 00:27:55', '2016-07-07 01:42:30', NULL, NULL, NULL, NULL, 'کردستان', 0, 305),
(21, '2016-07-07 00:27:55', '2016-07-07 01:39:03', NULL, NULL, NULL, NULL, 'کرمان', 0, 327),
(22, '2016-07-07 00:27:55', '2016-07-07 01:39:23', NULL, NULL, NULL, NULL, 'کرمانشاه', 0, 342),
(23, '2016-07-07 00:27:55', '2016-07-07 01:46:59', NULL, NULL, NULL, NULL, 'کهگیلویه و بویراحمد', 0, 474),
(24, '2016-07-07 00:27:55', '2016-07-07 01:41:14', NULL, NULL, NULL, NULL, 'گلستان', 0, 363),
(25, '2016-07-07 00:27:55', '2016-07-07 01:40:12', NULL, NULL, NULL, NULL, 'گیلان', 0, 372),
(26, '2016-07-07 00:27:55', '2016-07-07 01:42:08', NULL, NULL, NULL, NULL, 'لرستان', 0, 388),
(27, '2016-07-07 00:27:55', '2016-07-07 01:40:19', NULL, NULL, NULL, NULL, 'مازندران', 0, 403),
(28, '2016-07-07 00:27:55', '2016-07-07 01:40:34', NULL, NULL, NULL, NULL, 'مرکزی', 0, 418),
(29, '2016-07-07 00:27:55', '2016-07-07 01:40:48', NULL, NULL, NULL, NULL, 'هرمزگان', 0, 432),
(30, '2016-07-07 00:27:55', '2016-07-07 01:39:40', NULL, NULL, NULL, NULL, 'همدان', 0, 450),
(31, '2016-07-07 00:27:55', '2016-07-07 01:39:45', NULL, NULL, NULL, NULL, 'یزد', 0, 460),
(32, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'آذرشهر', 1, NULL),
(33, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'اسکو', 1, NULL),
(34, '2016-07-07 00:27:55', '2016-10-11 15:16:51', NULL, NULL, NULL, NULL, 'اهر', 1, NULL),
(35, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'بستان آباد', 1, NULL),
(36, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'بناب', 1, NULL),
(37, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'تبریز', 1, NULL),
(38, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'جلفا', 1, NULL),
(39, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'چاراویماق', 1, NULL),
(40, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'خدا آفرین', 1, NULL),
(41, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'سراب', 1, NULL),
(42, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'شبستر', 1, NULL),
(43, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'عجب شیر', 1, NULL),
(44, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'کلیبر', 1, NULL),
(45, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'مراغه', 1, NULL),
(46, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'مرند', 1, NULL),
(47, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'ملکان', 1, NULL),
(48, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'میانه', 1, NULL),
(49, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'ورزقان', 1, NULL),
(50, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'هریس', 1, NULL),
(51, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'هشترود', 1, NULL),
(52, '2016-07-07 00:27:55', '2016-10-04 16:13:47', NULL, NULL, NULL, NULL, 'ارومیه', 2, NULL),
(53, '2016-07-07 00:27:55', '2016-07-10 11:50:13', NULL, NULL, NULL, NULL, 'اشنویه', 2, NULL),
(54, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'بوکان', 2, NULL),
(55, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'پلدشت', 2, NULL),
(56, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'پیرانشهر', 2, NULL),
(57, '2016-07-07 00:27:55', '2016-10-04 16:29:20', NULL, NULL, NULL, NULL, 'تکاب', 2, NULL),
(58, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'چالدران', 2, NULL),
(59, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'چایپاره', 2, NULL),
(60, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'خوی', 2, NULL),
(61, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'سر دشت', 2, NULL),
(62, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'سلماس', 2, NULL),
(63, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'شاهین دژ', 2, NULL),
(64, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'شوط', 2, NULL),
(65, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'ماکو', 2, NULL),
(66, '2016-07-07 00:27:55', '2016-07-07 01:23:08', NULL, NULL, NULL, NULL, 'مهاباد', 2, NULL),
(67, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'میاندوآب', 2, NULL),
(68, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نقده', 2, NULL),
(69, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اردبیل', 3, NULL),
(70, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بیله سوار', 3, NULL),
(71, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'پارس آباد', 3, NULL),
(72, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خلخال', 3, NULL),
(73, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سرعین', 3, NULL),
(74, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کوثر', 3, NULL),
(75, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گرمی', 3, NULL),
(76, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مشگین شهر', 3, NULL),
(77, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نمین', 3, NULL),
(78, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نیر', 3, NULL),
(79, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آران و بیدگل', 4, NULL),
(80, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اردستان', 4, NULL),
(81, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اصفهان', 4, NULL),
(82, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'برخوار', 4, NULL),
(83, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بوئین میاندشت', 4, NULL),
(84, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تیران و کرون', 4, NULL),
(85, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'چادگان', 4, NULL),
(86, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خمینی شهر', 4, NULL),
(87, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خوانسار', 4, NULL),
(88, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خور و بیابانک', 4, NULL),
(89, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دهاقان', 4, NULL),
(90, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سمیرم', 4, NULL),
(91, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شاهین شهر و میمه', 4, NULL),
(92, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شهرضا', 4, NULL),
(93, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فریدن', 4, NULL),
(94, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فریدونشهر', 4, NULL),
(95, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فلاورجان', 4, NULL),
(96, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کاشان', 4, NULL),
(97, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گلپایگان', 4, NULL),
(98, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لنجان', 4, NULL),
(99, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مبارکه', 4, NULL),
(100, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نائین', 4, NULL),
(101, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نجف آباد', 4, NULL),
(102, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نطنز', 4, NULL),
(104, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اشتهارد', 5, NULL),
(105, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ساوجبلاغ', 5, NULL),
(106, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'طالقان', 5, NULL),
(107, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فردیس', 5, NULL),
(108, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کرج', 5, NULL),
(109, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نظر آباد', 5, NULL),
(110, '2016-07-07 00:27:55', '2016-07-16 11:32:19', NULL, NULL, NULL, NULL, 'آبدانان', 6, NULL),
(111, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ایلام', 6, NULL),
(112, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ایوان', 6, NULL),
(113, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بدره', 6, NULL),
(114, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'چرداول', 6, NULL),
(115, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دره شهر', 6, NULL),
(116, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دهلران', 6, NULL),
(117, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سیروان', 6, NULL),
(118, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ملکشاهی', 6, NULL),
(119, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مهران', 6, NULL),
(120, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بوشهر', 7, NULL),
(121, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تنگستان', 7, NULL),
(122, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'جم', 7, NULL),
(123, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دشتستان', 7, NULL),
(124, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دشتی', 7, NULL),
(125, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دیر', 7, NULL),
(126, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دیلم', 7, NULL),
(127, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'عسلویه', 7, NULL),
(128, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کنگان', 7, NULL),
(129, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گناوه', 7, NULL),
(130, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اسلامشهر', 8, NULL),
(131, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بهارستان', 8, NULL),
(132, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'پاکدشت', 8, NULL),
(133, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'پردیس', 8, NULL),
(134, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'پیشوا', 8, NULL),
(135, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تهران', 8, NULL),
(136, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دماوند', 8, NULL),
(137, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رباط کریم', 8, NULL),
(138, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ری', 8, NULL),
(139, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شمیرانات', 8, NULL),
(140, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شهریار', 8, NULL),
(141, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فیروز کوه', 8, NULL),
(142, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قدس', 8, NULL),
(143, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قرچک', 8, NULL),
(144, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ملارد', 8, NULL),
(145, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ورامین', 8, NULL),
(146, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اردل', 9, NULL),
(147, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بروجن', 9, NULL),
(148, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بن', 9, NULL),
(149, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سامان', 9, NULL),
(150, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شهر کرد', 9, NULL),
(151, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فارسان', 9, NULL),
(152, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کوهرنگ', 9, NULL),
(153, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کیار', 9, NULL),
(154, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لردگان', 9, NULL),
(155, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بشرویه', 10, NULL),
(156, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بیرجند', 10, NULL),
(157, '2016-07-07 00:27:55', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خوسف', 10, NULL),
(158, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'درمیان', 10, NULL),
(159, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زیرکوه', 10, NULL),
(160, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سرایان', 10, NULL),
(161, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سربیشه', 10, NULL),
(162, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'طبس', 10, NULL),
(163, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فردوس', 10, NULL),
(164, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قائنات', 10, NULL),
(165, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نهبندان', 10, NULL),
(166, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'باخرز', 11, NULL),
(167, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بجستان', 11, NULL),
(168, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بردسکن', 11, NULL),
(169, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بینالود', 11, NULL),
(170, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تایباد', 11, NULL),
(171, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تربت جام', 11, NULL),
(172, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تربت حیدریه', 11, NULL),
(173, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'جغتای', 11, NULL),
(174, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'جوین', 11, NULL),
(175, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'چناران', 11, NULL),
(176, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خلیل آباد', 11, NULL),
(177, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خواف', 11, NULL),
(178, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خوشاب', 11, NULL),
(179, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'داورزن', 11, NULL),
(180, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'درگز', 11, NULL),
(181, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رشتخوار', 11, NULL),
(182, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زاوه', 11, NULL),
(183, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سبزوار', 11, NULL),
(184, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سرخس', 11, NULL),
(185, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فریمان', 11, NULL),
(186, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فیروزه', 11, NULL),
(187, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قوچان', 11, NULL),
(188, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کاشمر', 11, NULL),
(189, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کلات', 11, NULL),
(190, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گناباد', 11, NULL),
(191, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مشهد', 11, NULL),
(192, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مه ولات', 11, NULL),
(193, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نیشابور', 11, NULL),
(194, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اسفراین', 12, NULL),
(195, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بجنورد', 12, NULL),
(196, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'جاجرم', 12, NULL),
(197, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'راز و جرگلان', 12, NULL),
(198, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شیروان', 12, NULL),
(199, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فاروج', 12, NULL),
(200, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گرمه', 12, NULL),
(201, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مانه و سملقان', 12, NULL),
(202, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آبادان', 13, NULL),
(203, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آغاجاری', 13, NULL),
(204, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'امیدیه', 13, NULL),
(205, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اندیکا', 13, NULL),
(206, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اندیمشک', 13, NULL),
(207, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اهواز', 13, NULL),
(208, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ایذه', 13, NULL),
(209, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'باغ ملک', 13, NULL),
(210, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'باوی', 13, NULL),
(211, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بندر ماهشهر', 13, NULL),
(212, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بهبهان', 13, NULL),
(213, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'حمیدیه', 13, NULL),
(214, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خرمشهر', 13, NULL),
(215, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دزفول', 13, NULL),
(216, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دشت آزادگان', 13, NULL),
(217, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رامشیر', 13, NULL),
(218, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رامهرمز', 13, NULL),
(219, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شادگان', 13, NULL),
(220, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شوش', 13, NULL),
(221, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شوشتر', 13, NULL),
(222, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کارون', 13, NULL),
(223, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گتوند', 13, NULL),
(224, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لالی', 13, NULL),
(225, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مسجد سلیمان', 13, NULL),
(226, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'هفتگل', 13, NULL),
(227, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'هندیجان', 13, NULL),
(228, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'هویزه', 13, NULL),
(229, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ابهر', 14, NULL),
(230, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ایجرود', 14, NULL),
(231, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خدابنده', 14, NULL),
(232, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خرمدره', 14, NULL),
(233, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زنجان', 14, NULL),
(234, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سلطانیه', 14, NULL),
(235, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'طارم', 14, NULL),
(236, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ماهنشان', 14, NULL),
(237, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آرادان', 15, NULL),
(238, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دامغان', 15, NULL),
(239, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سمنان', 15, NULL),
(240, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شاهرود', 15, NULL),
(241, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گرمسار', 15, NULL),
(242, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مهدی شهر', 15, NULL),
(243, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'میامی', 15, NULL),
(244, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ایرانشهر', 16, NULL),
(245, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'چاه بهار', 16, NULL),
(246, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خاش', 16, NULL),
(247, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دلگان', 16, NULL),
(248, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زابل', 16, NULL),
(249, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زاهدان', 16, NULL),
(250, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زهک', 16, NULL),
(251, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سراوان', 16, NULL),
(252, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سرباز', 16, NULL),
(253, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سیب سوران', 16, NULL),
(254, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فنوج', 16, NULL),
(255, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قصرقند', 16, NULL),
(256, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کنارک', 16, NULL),
(257, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مهرستان', 16, NULL),
(258, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'میرجاوه', 16, NULL),
(259, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نیک شهر', 16, NULL),
(260, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نیمروز', 16, NULL),
(261, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'هامون', 16, NULL),
(262, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'هیرمند', 16, NULL),
(263, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آباده', 17, NULL),
(264, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ارسنجان', 17, NULL),
(265, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'استهبان', 17, NULL),
(266, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اقلید', 17, NULL),
(267, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بوانات', 17, NULL),
(268, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'پاسارگاد', 17, NULL),
(269, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'جهرم', 17, NULL),
(270, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خرامه', 17, NULL),
(271, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خرم بید', 17, NULL),
(272, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خنج', 17, NULL),
(273, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'داراب', 17, NULL),
(274, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رستم', 17, NULL),
(275, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زرین دشت', 17, NULL),
(276, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سپیدان', 17, NULL),
(277, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سروستان', 17, NULL),
(278, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شیراز', 17, NULL),
(279, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فراشبند', 17, NULL),
(280, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فسا', 17, NULL),
(281, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فیروز آباد', 17, NULL),
(282, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قیروکارزین', 17, NULL),
(283, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کازرون', 17, NULL),
(284, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کوار', 17, NULL),
(285, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گراش', 17, NULL),
(286, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لارستان', 17, NULL),
(287, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لامرد', 17, NULL),
(288, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مرودشت', 17, NULL),
(289, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ممسنی', 17, NULL),
(290, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مهر', 17, NULL),
(291, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نی ریز', 17, NULL),
(292, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آبیک', 18, NULL),
(293, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آوج', 18, NULL),
(294, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'البرز', 18, NULL),
(295, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بوئین زهرا', 18, NULL),
(296, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تاکستان', 18, NULL),
(297, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قزوین', 18, NULL),
(298, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قم', 19, NULL),
(299, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بانه', 20, NULL),
(300, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بیجار', 20, NULL),
(301, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دهگلان', 20, NULL),
(302, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دیواندره', 20, NULL),
(303, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سروآباد', 20, NULL),
(304, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سقز', 20, NULL),
(305, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سنندج', 20, NULL),
(306, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قروه', 20, NULL),
(307, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کامیاران', 20, NULL),
(308, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مریوان', 20, NULL),
(309, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ارزوئیه', 21, NULL),
(310, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'انار', 21, NULL),
(311, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بافت', 21, NULL),
(312, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بردسیر', 21, NULL),
(313, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بم', 21, NULL),
(314, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'جیرفت', 21, NULL),
(315, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رابر', 21, NULL),
(316, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'راور', 21, NULL),
(317, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رفسنجان', 21, NULL),
(318, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رودبار جنوب', 21, NULL),
(319, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ریگان', 21, NULL),
(320, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'زرند', 21, NULL),
(321, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سیرجان', 21, NULL),
(322, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شهر بابک', 21, NULL),
(323, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'عنبر آباد', 21, NULL),
(324, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فاریاب', 21, NULL),
(325, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فهرج', 21, NULL),
(326, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قلعه گنج', 21, NULL),
(327, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کرمان', 21, NULL),
(328, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کوهبنان', 21, NULL),
(329, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کهنوج', 21, NULL),
(330, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'منوجان', 21, NULL),
(331, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'نرماشیر', 21, NULL),
(332, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اسلام آباد غرب', 22, NULL),
(333, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'پاوه', 22, NULL),
(334, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ثلاث باباجانی', 22, NULL),
(335, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'جوانرود', 22, NULL),
(336, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دالاهو', 22, NULL),
(337, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'روانسر', 22, NULL),
(338, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سر پل ذهاب', 22, NULL),
(339, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سنقر', 22, NULL),
(340, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'صحنه', 22, NULL),
(341, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'قصر شیرین', 22, NULL),
(342, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کرمانشاه', 22, NULL),
(343, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کنگاور', 22, NULL),
(344, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گیلانغرب', 22, NULL),
(345, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'هرسین', 22, NULL),
(346, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'باشت', 23, NULL),
(347, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بویر احمد', 23, NULL),
(348, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بهمئی', 23, NULL),
(349, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'چرام', 23, NULL),
(350, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'دنا', 23, NULL),
(351, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کهگیلویه', 23, NULL),
(352, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گچساران', 23, NULL),
(353, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لنده', 23, NULL),
(354, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آزاد شهر', 24, NULL),
(355, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آق قلا', 24, NULL),
(356, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بندر گز', 24, NULL),
(357, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ترکمن', 24, NULL),
(358, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رامیان', 24, NULL),
(359, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'علی آباد', 24, NULL),
(360, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کردکوی', 24, NULL),
(361, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'کلاله', 24, NULL),
(362, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گالیکش', 24, NULL),
(363, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گرگان', 24, NULL),
(364, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گمیشان', 24, NULL),
(365, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'گنبد کاووس', 24, NULL),
(366, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مراوه تپه', 24, NULL),
(367, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'مینودشت', 24, NULL),
(368, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آستارا', 25, NULL),
(369, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'آستانه اشرفیه', 25, NULL),
(370, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'املش', 25, NULL),
(371, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'بندر انزلی', 25, NULL),
(372, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رشت', 25, NULL),
(373, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رضوانشهر', 25, NULL),
(374, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رودبار', 25, NULL),
(375, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رودسر', 25, NULL),
(376, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'سیاهکل', 25, NULL),
(377, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'شفت', 25, NULL),
(378, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'صومعه سرا', 25, NULL),
(379, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'تالش', 25, NULL),
(380, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'فومن', 25, NULL),
(381, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لاهیجان', 25, NULL),
(382, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'لنگرود', 25, NULL),
(383, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ماسال', 25, NULL),
(384, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'ازنا', 26, NULL),
(385, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'الیگودرز', 26, NULL),
(386, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بروجرد', 26, NULL),
(387, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'پلدختر', 26, NULL),
(388, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'خرم آباد', 26, NULL),
(389, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'دلفان', 26, NULL),
(390, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'دورود', 26, NULL),
(391, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'دوره', 26, NULL),
(392, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'رومشکان', 26, NULL),
(393, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'سلسله', 26, NULL),
(394, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'کوهدشت', 26, NULL),
(395, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'آمل', 27, NULL),
(396, '2016-07-07 00:27:56', '2016-07-10 14:55:48', NULL, NULL, NULL, NULL, 'بابل', 27, NULL),
(397, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بابلسر', 27, NULL),
(398, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بهشهر', 27, NULL),
(399, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'تنکابن', 27, NULL),
(400, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'جویبار', 27, NULL),
(401, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'چالوس', 27, NULL),
(402, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'رامسر', 27, NULL),
(403, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'ساری', 27, NULL),
(404, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'سواد کوه', 27, NULL),
(405, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'سوادکوه شمالی', 27, NULL),
(406, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'سیمرغ', 27, NULL),
(407, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'عباس آباد', 27, NULL),
(408, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'فریدونکنار', 27, NULL),
(409, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'قائم شهر', 27, NULL),
(410, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'کلاردشت', 27, NULL),
(411, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'گلوگاه', 27, NULL),
(412, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'محمود آباد', 27, NULL),
(413, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'میاندورود', 27, NULL),
(414, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'نکا', 27, NULL),
(415, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'نور', 27, NULL),
(416, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'نوشهر', 27, NULL),
(417, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'آشتیان', 28, NULL),
(418, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'اراک', 28, NULL),
(419, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'تفرش', 28, NULL),
(420, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'خمین', 28, NULL),
(421, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'خنداب', 28, NULL),
(422, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'دلیجان', 28, NULL),
(423, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'زرندیه', 28, NULL),
(424, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'ساوه', 28, NULL),
(425, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'شازند', 28, NULL),
(426, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'فراهان', 28, NULL),
(427, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'کمیجان', 28, NULL),
(428, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'محلات', 28, NULL),
(429, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'ابوموسی', 29, NULL),
(430, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بستک', 29, NULL),
(431, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بشاگرد', 29, NULL),
(432, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بندرعباس', 29, NULL),
(433, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بندرلنگه', 29, NULL),
(434, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'پارسیان', 29, NULL),
(435, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'جاسک', 29, NULL),
(436, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'حاجی آباد', 29, NULL),
(437, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'خمیر', 29, NULL),
(438, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'رودان', 29, NULL),
(439, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'سیریک', 29, NULL),
(440, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'قشم', 29, NULL),
(441, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'میناب', 29, NULL),
(442, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'اسد آباد', 30, NULL),
(443, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بهار', 30, NULL),
(444, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'تویسرکان', 30, NULL),
(445, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'رزن', 30, NULL),
(446, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'فامنین', 30, NULL),
(447, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'کبودرآهنگ', 30, NULL),
(448, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'ملایر', 30, NULL),
(449, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'نهاوند', 30, NULL),
(450, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'همدان', 30, NULL),
(451, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'ابرکوه', 31, NULL),
(452, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'اردکان', 31, NULL),
(453, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بافق', 31, NULL),
(454, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'بهاباد', 31, NULL),
(455, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'تفت', 31, NULL),
(456, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'خاتم', 31, NULL),
(457, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'صدوق', 31, NULL),
(458, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'مهریز', 31, NULL),
(459, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'میبد', 31, NULL),
(460, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'یزد', 31, NULL),
(461, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'زیرآب', 27, NULL),
(462, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'نورآباد', 26, NULL),
(463, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'الشتر', 26, NULL),
(464, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'امیرکلا', 27, NULL),
(465, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'الوند', 18, NULL),
(466, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'رستم آباد', 25, NULL),
(467, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'منجیل', 25, NULL),
(468, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'طوالش', 25, NULL),
(469, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'برازجان', 7, NULL),
(470, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'خورموج', 7, NULL),
(471, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'اهرم', 7, NULL),
(472, '2016-07-07 00:27:56', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'ماهشهر', 13, NULL),
(473, '2016-07-07 00:27:56', '2016-07-07 01:23:10', NULL, NULL, NULL, NULL, 'کیش', 29, NULL),
(474, '2016-07-07 01:23:09', '2016-07-07 01:23:09', NULL, NULL, NULL, NULL, 'یاسوج', 23, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `talks`
--

CREATE TABLE IF NOT EXISTS `talks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `text` text,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `talks`
--

INSERT INTO `talks` (`id`, `ticket_id`, `text`, `is_admin`, `meta`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'این نوشته باید به‌روز شود. بله ظاهراً می‌شود.', 0, NULL, '2016-10-27 07:07:48', '2016-10-27 07:15:31', 5, 1),
(2, 1, 'شاید بگین چه فکر جالبی، ولی از دید من یعنی با اینکه پول خدمتی که دریافت می‌کنم رو نقدا میدم باز تبلیغ هم تو حلقم می‌کنند. یه مدل کاملا ایرانی. t.co/xkXJj4GWGy', 1, NULL, '2016-10-27 07:08:50', '2016-10-27 07:08:50', 1, 1),
(3, 1, 'آها که این طور. عجب!', 0, '[]', '2016-10-27 20:16:10', '2016-10-27 20:16:10', 1, NULL),
(4, 2, 'این سایت کار نمی‌کند.', 0, NULL, '2016-10-28 14:16:31', '2016-10-28 14:16:31', 6, 1),
(5, 2, 'چرا کار می‌کند.', 1, '[]', '2016-10-28 14:16:42', '2016-10-28 14:16:42', 1, NULL),
(6, 2, 'پیام شما را به واحد خدمات انتقال می‌دهم و فوریتش را زیاد می‌کنم. اسمش را هم می‌گذارم «آزمایش انتقال واحد». با تشکر', 1, '[]', '2016-10-28 14:27:11', '2016-10-28 14:27:11', 1, NULL),
(7, 3, 'پیغام من کوش؟', 0, NULL, '2016-10-28 16:08:20', '2016-10-28 16:08:43', 6, 1),
(8, 2, 'آزمایش', 1, '[]', '2016-11-13 10:21:42', '2016-11-13 10:21:42', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `department` varchar(250) DEFAULT NULL,
  `priority` tinyint(1) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `feedback` tinyint(1) NOT NULL DEFAULT '0',
  `meta` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attended_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `attended_by` int(11) DEFAULT NULL,
  `archived_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `department`, `priority`, `title`, `feedback`, `meta`, `created_at`, `updated_at`, `attended_at`, `archived_at`, `deleted_at`, `created_by`, `updated_by`, `attended_by`, `archived_by`, `deleted_by`) VALUES
(1, 5, 'sales', 2, 'فعالیت سایتی', 0, '{"score":0,"first_replied_by":3,"first_replied_at":"2016-11-07 12:21:38"}', '2016-10-24 15:46:53', '2016-11-07 08:51:38', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL),
(2, 6, 'services', 3, 'آزمایش انتقال واحد', 0, '[]', '2016-10-26 12:15:11', '2016-11-13 10:21:33', NULL, NULL, NULL, 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name_first` varchar(250) DEFAULT NULL,
  `name_last` varchar(250) DEFAULT NULL,
  `name_firm` varchar(250) DEFAULT NULL,
  `code_melli` varchar(20) DEFAULT NULL,
  `national_id` varchar(20) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `familization` varchar(250) DEFAULT NULL,
  `meta` longtext,
  `roles` longtext,
  `media` longtext,
  `settings` tinyint(4) DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '1',
  `site_credit` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(250) DEFAULT NULL,
  `reset_token` varchar(250) DEFAULT NULL,
  `password_force_change` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `published_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `destroyed_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `customer_type`, `status`, `name_first`, `name_last`, `name_firm`, `code_melli`, `national_id`, `gender`, `email`, `mobile`, `password`, `city_id`, `province_id`, `familization`, `meta`, `roles`, `media`, `settings`, `newsletter`, `site_credit`, `remember_token`, `reset_token`, `password_force_change`, `created_at`, `updated_at`, `published_at`, `deleted_at`, `created_by`, `updated_by`, `published_by`, `deleted_by`, `destroyed_by`) VALUES
(1, 0, 99, 'طاها', 'کامکار', NULL, '0074715623', NULL, 1, 'chieftaha@gmail.com', '09122835030', '$2y$10$inhy/J0fNfU8IEXGFF/9sOieZC/BjBkah/jtKKBfXPIr46W.Pd0RO', NULL, NULL, NULL, 'null', NULL, NULL, NULL, 1, 0, 'kCVpvK0TuHcnCAOnYZd4q3ET9puRwNQdMpmXfv7k3Mqi1jYNzqeIhv3Gs1Fq', NULL, 0, NULL, '2017-01-15 13:21:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 99, 'محمدهادی', 'رضایی', NULL, '0012071110', NULL, 0, 'mr.mhrezaei@gmail.com', '09122835012', '$2y$10$Twdxt5mHhJALw34u2m/qSeWv1MtMZYyNKCfjYGXXftD94NtDEav.6', NULL, NULL, NULL, '[]', 'eyJpdiI6IjV4MTNPMG1DeG5rZ2ZZYXFzcDRvMHc9PSIsInZhbHVlIjoiK3BYb0I4c1phc1E5aDVUNTFHaWkxU2FkRmhsS2luelNvUTFpMFkzT2NNQ1wvSFpOUVZ5XC9jUkE0bmV0VUZxaG1BazZOMnlhdHVvS1VJMDAwNmNLZHEyeFRBajJqaTUxS2NPOFJoOGlaMW15bUQ3VUxGUFg2YlFPUzdaSjExR21nSmJwMkJvTlpXOVR6bFpITlwvWGVEXC9RR2M4OGtITDR2eFVZOWk3NnRmU1Zibz0iLCJtYWMiOiJlMWU4YzY4MDIzOTU4OGUyYmEyMTY1NDg5MzMwNTQzODIzYjVjYWMyOGZmNWU5NmI2MTg1NmM3MTJiMmZjNzgxIn0=', NULL, NULL, 1, 0, 'pvLKjglxhyGpvtr82gW7pLgBVQqF7KlRcerqW5oDRHupo0K5ouTNy1xz8xee', NULL, 1, '2016-10-17 14:09:59', '2016-12-09 08:49:10', NULL, NULL, 3, NULL, NULL, NULL, NULL),
(5, 1, 8, 'الهه', 'مهرزادگان', '', '0322683394', '', 2, 'elaheh@mehrzadegan.com', '09359682653', '$2y$10$Y2SAQM/7rkLKabgOZy6u4.VFUN2MqkevtHqzAncYPaCNWGV1NDmYu', 135, NULL, 'شبکه‌های اجتماعی', '{"register_no":"","register_date":"2016\\/09\\/20","register_firm":"","economy_code":"","gazette_url":"","code_id":"5796","name_father":"\\u0645\\u062d\\u0645\\u062f","birth_date":"1983\\/09\\/28","marital":"1","education":"6","job":"\\u0622\\u0632\\u0627\\u062f","address":"\\u0646\\u0634\\u0627\\u0646\\u06cc","postal_code":"3435353635","telephone":"02122440439"}', NULL, NULL, NULL, 1, 6000, NULL, NULL, 1, '2016-10-20 14:51:05', '2016-11-18 04:33:41', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(6, 2, 8, 'محمد جعفر', 'مصفا', 'تمیز نظیف منزل', '4608968882', '0041232323', 0, 'chieftaha@gmail.com1', '09359682652', '$2y$10$Fr9WqUgaEHjGTeNitN2IV.zxztMyIY.UpRpO4lp0y6rn5y2uz.reS', 218, NULL, 'رسانه‌های خبری', '{"register_no":"2323234","register_date":"2016\\/10\\/08","register_firm":"\\u0633\\u0627\\u0632\\u0645\\u0627\\u0646 \\u062b\\u0628\\u062a \\u0627\\u0633\\u0646\\u0627\\u062f \\u0648 \\u0627\\u0645\\u0644\\u0627\\u06a9 \\u06a9\\u0634\\u0648\\u0631","economy_code":"1111","gazette_url":"http:\\/\\/www.com","code_id":"","name_father":"","birth_date":"","marital":"","education":"0","job":"","address":"\\u0646\\u0634\\u0627\\u0646\\u06cc","postal_code":"1334567899","telephone":"02122440429"}', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, '2016-10-20 16:15:05', '2016-11-13 10:26:51', '2016-10-20 16:15:04', NULL, 1, NULL, 1, 1, NULL),
(24, 0, 3, 'بلبلبل', 'حسینی', NULL, NULL, NULL, 0, 'yy@gg.com', '09361112030', '$2y$10$Twdxt5mHhJALw34u2m/qSeWv1MtMZYyNKCfjYGXXftD94NtDEav.6', NULL, NULL, NULL, '[]', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, '2016-12-05 08:58:26', '2016-12-05 08:58:57', NULL, NULL, 0, NULL, NULL, NULL, NULL),
(25, 0, 99, 'ادمین', 'ایلیادرمان', NULL, NULL, NULL, 0, 'info@iliadarman.com', '09120000000', '$2y$10$LV9pjIoRm8RPR1LBke2MOukw49orIOgCswaE4.Pr.GhIDpwl/ps4S', NULL, NULL, NULL, '[]', 'eyJpdiI6ImJIUHQ4dElLTjVoek81OGpONm9OM3c9PSIsInZhbHVlIjoiMTRLeHdBS29VWklJQVwvS1JzQ01LdUVmRHpLN3BqRURBaGJsOGFIVlJTMFNrWDFNUEFUTUNydzMxMklOTDFPaHhZeTcxTlF6NlhTb1h4TnNRNlo3M1wvTUxSOEpwajRTUnhRa09uK0VBWkFNYmFYelNUS3dMVlc3RWRkcXBpZ3VcL0pleXArZUF1dGdEcXZQTkZVdGtPSDBwTXZWeTZZOHozK2dlY2tGTk1IVTl5R1RsdkJEVXJudllqYjVzbDFkWThMK3BcL29qdlRGTVAxZmhFSXpLR25nU1VWMXVteUJKWEZmMWRONm1CYUhIdmVkRlBaYjg2YzhIcmFabTFXRFJ1aDNmVmtJVEhJaTIrRmhTcFlWdGtkajJsb1wvU0NUZDlwamp0dU9vTE9lY2ZJM3J5U1ZRT0RXNjBUOHdPSVQ3dXdtcnhPVmNrMnl5OXgrdE1tUWJxRWlraFhiRFBoeExBaTFIMGRmWENJdmVTRWJDZVBIN2hJWUlXb0FLS2JMQVR2UUJJa2h1eUdHYmkyRmtvR1l4a3pQM0h0VlN5S2crOEVrTzVBU1g4SzBueFJocFh2XC9XV2hxSEpER0tWTXRMZHhPS0NZTHNZMTR6cFwvU1BpUHptOWpwQ05hcHJuU1N2d2d4bDU1eGxYeTNpQmxtOEVUbUFwUUduT01SODJwZncrQVQ0TkEzRnVkbHhQMys4TVN3eDIrWldqOUxJNG1FcVpxYURrQmx4cFNFd1RqbWhSK2JMYmV4dm9ib1wvdTZEdGtrNzByWXpXZnRWQThYUTYyaXR3QWJBZ25FR1Q5NFk2cVdwQ29IRVh5Y3pPQWtVb283d2N5UnlpTlFpZTFhczZRSGtXNDBJZmR2T2RwSEoxelEwem1BV0tFN1dEOHpoc2NTSklCV3E5SWRVdGZYQW5XRkVkd09SSkFEWkk4QytBREo4WGZHSUNGM3VqdzFxRGVhV2ZrUStwbDNZUnAzOUx5MGw1MEx5dmtlME1BRGt3YkluK3RLZHUrTTl0UTNiZmEwUE00K3FBSWhqRjU0cndtNEdCcjY3K2pVdlpmaTN3MVBQcFwvK1FuM2ZMOEFEMTJ6eWlvVnIzbEhWXC9NZkV5MThFZ0JCd3BWNEVQajBHNStVcmRYOERWVitRR3BxQWFPaXZqZndSVG9kQ0Q2RGNpMFFYMEx6cTNZbEJxVDRtQXFkNnVMMHNUelRoT2NCUENhNmpLNkEyYVMxeUgyOFdGMFp0dUpUQm1ScWZIa1h2OENjdTZ6RWVKZDlqVFRrTThJc1hLN1RTc0FpZDcxNWxcL0o5V3BNYlY0QUlsR2puWmlWK0w2TVZTMDhGM2xlZUhLYTVKTUIwRzFGSmpNd0IrUE1QSDZSMWF0cEdxVU5sYUtvMHU5RjMxbjU5OTM4Vjh3UXBPWWlPa1RiZUhHNUd6RUVvXC9NczhyZHp3UGhFQnhwY1piVnY1RHBqdURQUmNLMVlXWUhBbnR1WUl4SG9FTkVNdkxUNTZoNk8wWnBoK3FOejZ4TFwvRDFweUtzeWxWcFlZVHRGeWRVeW1pVFZybzRVcG1rSlBkckxxdzQrM3NxeDB6TDJBbXZrQklHM2h2bXZhbWhnelRcLzJuNGc2azBnYTB3dDVLc1BMRndxK2l0N2lWcFROYWxUU2REZzNvdWNLOEJjXC9rMlc2UHBvRjBcL1J3V043a1FGRmRtK1l0YnpXMGd5TVNGTnNFSEFiT3lRMm5HSnZNQjBWNVdxTTJTd1picjdlNXY4WWRrK1FqVk1xcUNqMjJDbXJYeEt4eWpqcDBwNHhkbm5vV0xpNFVrY09jQk9LeVF1OGNJMThuN3F2cVBPdlVNMWdkRVVHdldWZnBlaEVTNElFemswZTlrWUdTWHJNSUdKN2hTK0FFdUhiOGlpUnlcL2VqS28xV2JnY0ZKZnVwQ2FNSWRJZ3Z5TE5KQTJRMjJIU24yRmpuXC9sejZWNjlrRVgiLCJtYWMiOiJlMDg0OWUyMGEzMWQ1NDkwNDk1MzE2OWY4NTAyOThkZDlkNmE0MTFiNmMyNzc0M2JkM2U2ZjVjMzUxZWY3ZGVmIn0=', NULL, NULL, 1, 0, NULL, NULL, 1, '2017-01-15 12:56:26', '2017-01-15 12:58:11', NULL, NULL, 1, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
