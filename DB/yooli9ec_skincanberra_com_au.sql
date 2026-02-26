-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2026 at 12:21 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yooli9ec_skincanberra.com.au`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_content`
--

CREATE TABLE `tbl_about_content` (
  `id` int(2) NOT NULL,
  `about_title` varchar(255) DEFAULT NULL,
  `about_details` text,
  `about_image` varchar(200) DEFAULT NULL,
  `sec2_title` varchar(255) DEFAULT NULL,
  `sec2_description` text,
  `sec3_title1` varchar(255) DEFAULT NULL,
  `sec3_details1` text,
  `sec3_image1` varchar(200) DEFAULT NULL,
  `sec3_title2` varchar(255) DEFAULT NULL,
  `sec3_details2` text,
  `sec3_image2` varchar(200) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_about_content`
--

INSERT INTO `tbl_about_content` (`id`, `about_title`, `about_details`, `about_image`, `sec2_title`, `sec2_description`, `sec3_title1`, `sec3_details1`, `sec3_image1`, `sec3_title2`, `sec3_details2`, `sec3_image2`, `update_at`) VALUES
(1, 'About Our Brand', '<p class=\"line-height-36\">At Skin Canberra, we believe beauty starts with&nbsp;<strong>healthy, well-cared</strong>-for&nbsp;<strong>skin</strong>&nbsp;and&nbsp;<strong>hair&nbsp;</strong>. Our goal is to offer treatments that are both&nbsp;<strong>effective</strong>&nbsp;and&nbsp;<strong>gentle</strong>&nbsp;&mdash; helping you feel confident in your own skin every day.</p>\r\n<p class=\"line-height-36\">From rejuvenating&nbsp;<strong>facials</strong>&nbsp;and flawless&nbsp;<strong>makeup</strong>&nbsp;to soothing hair care and precision&nbsp;<strong>laser treatments</strong>, each service is tailored to your needs. We combine expert techniques with&nbsp;<strong>premium, skin-friendly</strong>&nbsp;products to ensure visible, lasting results.</p>\r\n<p class=\"line-height-36\"><strong>Every client is unique</strong>, and so is our approach. We&nbsp;<strong>listen, assess,</strong>&nbsp;and&nbsp;<strong>create</strong>&nbsp;a&nbsp;<strong>personalised plan</strong> that fits your lifestyle and comfort. Step into our calm, welcoming studio and experience beauty done with care, honesty, and precision.</p>', 'about-A0zWnztt.webp', 'Our Story', '<p class=\"line-height-36 mb-5 w-75 mx-auto text-center\">Shikha Beauty Studio began with a simple idea: professional beauty should feel personal. We opened our doors to create a calm, welcoming place where clients get honest advice, tailored treatments and real results &mdash; without the hard sell.</p>', 'Our Mission', 'At Skin Canberra, our mission is to enhance natural beauty through personalised care, expert techniques, and safe, high-quality products. We’re committed to helping every client feel confident, radiant, and comfortable in their own skin — not just for a day, but for the long term.', 'sec-3-Hc1EZxu0.webp', 'Our Vision', 'Our vision is to become a trusted name in beauty and wellness by setting new standards for honest, results-driven treatments. We aim to create a space where self-care meets expertise — blending innovation, compassion, and professionalism to bring out your best self, inside and out.', 'sec-3-eXmHj8iJ.webp', '2025-10-25 08:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `address` varchar(400) NOT NULL,
  `added_by` int(5) NOT NULL,
  `update_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `name`, `email`, `password`, `ip_address`, `phone`, `image`, `privilege_id`, `address`, `added_by`, `update_by`, `status`, `created`, `updated`) VALUES
(1, 'Skincanberra', 'bebeautiful@skincanberra.com.au', '$2y$12$joqTPFIVT4sUC9BMyFp81OM0YoRTYhG2cMQCvzvWvESitGhSCsdti', '::1', '2356896589', 'user_1759484555.jpg', 1, 'delhi', 1, 1, 1, '2021-09-06 10:23:19', '2025-12-13 09:49:25'),
(15, 'test1234', 'test@yopmail.com', '$2y$10$fqYWNLFqBT3yt7nCO4xsROQuDPi1Evl74/zTRkNkzlh2k4qVYQ4JG', '::1', '2356897485', 'u_1672132507.jpg', 3, 'delhi', 1, 1, 1, '2022-12-27 09:15:07', '2023-03-05 11:10:42'),
(16, 'test175', 'test175@yopmail.com', '$2y$10$n6uyNrkfB9SHBImdRrCsR.x5sgHFkCCwQtQLODH65CqOasEOrFLBO', '::1', '7865432343', 'u_1672145257.jpg', 3, 'delhi', 1, 1, 1, '2022-12-27 12:47:37', '2023-02-15 10:54:14'),
(17, 'abc', 'abc@yopmail.com', '$2y$10$TbeSFZ0.q5ZSJpfkgnHDiOfsJE0rn29o9L9DiV0PWuYy9SfGwagKi', '::1', '9162925142', 'u_1676480019.jpg', 3, 'ara', 1, 1, 1, '2023-02-14 17:07:38', '2023-02-15 10:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `main_title` varchar(100) DEFAULT NULL,
  `sub_title` varchar(150) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_desktop` varchar(150) NOT NULL,
  `image_tablet` varchar(150) NOT NULL,
  `image_mobile` varchar(150) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `main_title`, `sub_title`, `page`, `url`, `image`, `image_desktop`, `image_tablet`, `image_mobile`, `status`, `created_at`, `update_at`) VALUES
(2, 'Reveal Your Best Skin, Hair & Confidence', 'Personalized skin and hair care by trusted experts.', 1, NULL, 'banner-BO3498JL.webp', 'banner-desktop-zQTKDKBn.webp', 'banner-tablet-7e8SIlLX.webp', 'banner-mobile-tVnMtuFM.webp', 1, '2025-10-23 05:56:09', '2026-02-07 10:03:49'),
(3, 'Beauty & Care Services Designed Just for You', 'From glow-boosting facials to precision haircuts and advanced skin therapies — our professional team delivers personalised treatments with care and cl', 4, NULL, 'banner-xACjIlZw.webp', '', '', '', 1, '2025-10-23 06:22:18', '2025-10-28 02:43:03'),
(4, 'All Your Beauty Needs in One Place', 'From advanced facials to precise hair and brow styling, we bring out the best version of you.', 5, NULL, 'banner-8TcCaip1.webp', '', '', '', 1, '2025-10-23 06:31:42', '2026-01-28 12:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blg_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_details` text NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_url` varchar(255) NOT NULL,
  `related_blogs` varchar(255) NOT NULL,
  `blog_added_by` varchar(255) NOT NULL,
  `blog_cat_id` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `blog_status` enum('0','1') NOT NULL,
  `added_at` datetime NOT NULL,
  `modefied_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blg_id`, `blog_title`, `blog_details`, `blog_image`, `blog_url`, `related_blogs`, `blog_added_by`, `blog_cat_id`, `post_date`, `meta_title`, `meta_description`, `meta_keyword`, `blog_status`, `added_at`, `modefied_at`) VALUES
(1, 'The Most Inspiring Interior Design Of 201688', 'We went down the lane, by the body of the man in black, sodden now from the overnight hail,', 'b_1626281172.jpg', 'the-most-inspiring-interior-design-of-201688', '', 'Admin', 0, '2021-03-23', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', '1', '2021-07-14 23:10:52', '2021-03-23 17:07:18'),
(2, 'daffodills', 'daffodils daffodils daffodils daffodils', '', 'daffodils ', 'the very much design', 'Admin', 0, '2021-03-23', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', '1', '2024-03-03 16:46:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE `tbl_cms` (
  `id` int(11) NOT NULL,
  `page` varchar(100) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_head` varchar(255) DEFAULT NULL,
  `cms_banner` varchar(150) DEFAULT NULL,
  `description` text,
  `description2` text,
  `description3` text,
  `description4` text,
  `description5` text,
  `status` int(2) DEFAULT NULL COMMENT '0-Inactive,1-Active',
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`id`, `page`, `banner_title`, `banner_head`, `cms_banner`, `description`, `description2`, `description3`, `description4`, `description5`, `status`, `added_at`, `update_at`) VALUES
(5, 'privacy-policy', 'Privacy Policy', '', 'banner-mYAu37Mm.webp', '<p class=\"mb-4 line-height-36\">At <strong>SKIN Canberra</strong>, we respect your privacy and are committed to protecting your personal information. This Privacy Policy explains what data we collect, how it is used, and your rights under Australian law.</p>\r\n<h6 class=\"text-20\">Privacy Policy:</h6>\r\n<ul class=\"text-18 line-height-36\">\r\n<li><strong>Information We Collect:</strong> This may include your name, contact details, date of birth, appointment history, and relevant health information such as allergies or skin conditions. Any photos or videos used for advertising are shared only after verbal consent.</li>\r\n<li><strong>Use of Information:</strong> Your information is used to manage bookings, provide safe and effective treatments, send appointment reminders, improve our services, and meet legal obligations.</li>\r\n<li><strong>Data Protection:</strong> All personal information is stored securely and is never shared with third parties unless required by law.</li>\r\n<li><strong>Marketing &amp; Communication:</strong> We may send service updates or promotional messages via email or SMS. You can opt out at any time by unsubscribing or contacting us directly.</li>\r\n<li><strong>Cookies &amp; Analytics:</strong> Our website may use cookies to enhance user experience and track analytics. You may disable cookies through your browser settings.</li>\r\n<li><strong>Your Rights:</strong> You have the right to access, update, correct, or request deletion of your personal information where legally permitted.</li>\r\n<li><strong>Policy Updates:</strong> This Privacy Policy may be updated periodically. Any changes will be published on our website.</li>\r\n<li><strong>Contact Us:</strong> Email: admin@skincanberra.com.au | Phone: 0410 038 603 | Address: Unit 1/46 Jenke Circuit, Kambah, ACT 2902.</li>\r\n</ul>', '', '', '', '', 1, '2024-10-20 06:21:31', '2025-12-15 13:43:38'),
(7, 'terms-condition', 'Terms & Conditions', '', 'banner-Tpq98Soq.webp', '<p class=\"mb-4 line-height-36\">Welcome to <strong>SKIN Canberra</strong>, your trusted Australian hair and skin clinic. By accessing our website or booking our services, you agree to the Terms and Conditions outlined below. Please read them carefully.</p>\r\n<h6 class=\"text-20\">Terms &amp; Conditions:</h6>\r\n<ul class=\"text-18 line-height-36\">\r\n<li><strong>Introduction:</strong> These Terms govern your use of our website and services. If you do not agree, please discontinue use immediately.</li>\r\n<li><strong>Definitions:</strong> &ldquo;We / Us / Our&rdquo; refers to SKIN Canberra. &ldquo;You / Client / Customer&rdquo; refers to anyone using our website or services. &ldquo;Services&rdquo; include hair, skin, beauty treatments, and related products.</li>\r\n<li><strong>Compliance with Australian Law:</strong> We operate under Australian Consumer Law (ACL), the Privacy Act 1988 (Cth), and the Work Health and Safety Act 2011.</li>\r\n<li><strong>Bookings &amp; Appointments:</strong> Appointments can be made online, by phone, or in person. Deposits may be required. Late arrivals may reduce service time. Cancellations require at least 24 hours&rsquo; notice. Medical cancellations require a valid sick certificate for deposit refund.</li>\r\n<li><strong>Pricing &amp; Payment:</strong> All prices are in AUD and include GST. Prices may change without notice. Payments accepted include cash, EFTPOS, credit/debit cards, and digital wallets.</li>\r\n<li><strong>Refunds &amp; Guarantees:</strong> Refunds are provided only in accordance with Australian Consumer Law. No refunds for change of mind. Any service concerns must be reported within 7 days. Refer to our refund policy.</li>\r\n<li><strong>Health &amp; Safety:</strong> Clients must disclose any allergies, medical conditions, or sensitivities before treatment. We follow strict hygiene protocols and are not liable for reactions caused by undisclosed information.</li>\r\n<li><strong>Privacy:</strong> Personal information is collected only for bookings and service delivery and is protected under the Privacy Act 1988. Refer to our privacy policy.</li>\r\n<li><strong>Intellectual Property:</strong> All website content, including text, images, and branding, is the property of SKIN Canberra. Unauthorized use is prohibited.</li>\r\n<li><strong>Limitation of Liability:</strong> We are not responsible for indirect or consequential losses. Liability is limited to the maximum extent permitted by Australian law.</li>\r\n<li><strong>Changes to Terms:</strong> These Terms may be updated at any time. Continued use of our website or services indicates acceptance of any changes.</li>\r\n<li><strong>Contact Us:</strong> Email: admin@skincanberra.com | Phone: 0410 038 603 | Address: Unit 1/46 Jenke Circuit, Kambah, ACT 2902.</li>\r\n</ul>', '', '', '', '', 1, '2025-01-19 11:14:39', '2025-12-15 13:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(2) NOT NULL,
  `vid` varchar(150) DEFAULT NULL,
  `sv_id` varchar(150) DEFAULT NULL,
  `submit_from` enum('BA','CU','HD') NOT NULL COMMENT 'BA- Book Appoiment, CU-Contact Us, HD - Header',
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `message` text,
  `status` int(2) DEFAULT NULL COMMENT '0-new,1-Approve,2-Disapprove,3-Cancel',
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `vid`, `sv_id`, `submit_from`, `fname`, `lname`, `email`, `country`, `phone`, `date`, `time`, `message`, `status`, `added_at`, `update_at`) VALUES
(1, NULL, '6,5', 'HD', 'raj', 'guddu', 'admin@admin.com', 'IN', '1234567890', '2025-10-16', '04:33:00', 'hi', 3, '2025-10-16 16:58:57', NULL),
(2, NULL, '5,4,3,2', 'HD', 'Raj', 'Guddu', 'test152@yopmail.com', 'US', '1234567890', '2025-10-16', '14:00:00', 'test message', 1, '2025-10-16 17:01:19', NULL),
(3, '17,18,19,20', NULL, 'BA', 'raj', 'guddu', 'test152@yopmail.com', 'US', '9162925142', '2025-10-16', '08:00:00', 'test message', 1, '2025-10-16 17:42:49', NULL),
(4, NULL, '13,12,11,10', 'HD', 'raj', 'guddu', 'test152@yopmail.com', 'US', '1234567890', '2025-10-14', '09:00:00', 'test', 0, '2025-10-17 06:30:18', NULL),
(5, '39,40,41', NULL, 'BA', 'Dipanshu', 'Chauhan', 'admin@admin.com', 'IN', '7428401993', '1970-01-01', '01:20:00', 'hello', 0, '2025-10-20 21:55:51', NULL),
(6, '18,19,20', NULL, 'BA', 'Dipanshu', 'Chauhan', 'getdipanshu@gmail.com', 'IN', '7428401993', '1970-01-01', '00:00:00', 'hello', 0, '2025-10-20 21:58:42', NULL),
(7, NULL, '13,10,2', 'HD', 'Sanjeev', 'Kumar', '', 'IN', '9354727012', '2025-10-22', '11:00:00', 'Hello please book me in ', 0, '2025-10-20 22:00:03', NULL),
(8, NULL, '12,11', 'HD', 'Dipanshu', 'Chauhan', 'getdipanshu@gmail.com', 'US', '7428401993', '2025-10-16', '05:11:00', 'hello', 0, '2025-10-20 22:05:09', NULL),
(9, NULL, '3,2', 'HD', 'Dipanshu', 'Chauhan', 'getdipanshu@gmail.com', 'IN', '7428401993', '2025-10-22', '05:18:00', 'hello', 0, '2025-10-20 22:17:24', NULL),
(10, NULL, '16,5,4', 'HD', 'test', 'test', 'applyjhandubaam@yahoo.com', 'AU', '451270383', '2025-11-06', '12:33:00', 'TEST\r\nadsfg nbsfv\r\n', 0, '2025-11-04 14:49:50', NULL),
(11, '70', NULL, 'BA', 'Dipanshu', 'Chauhan', 'dipanshu.chauhan@webpanelsolutions.com', 'IN', '7428401993', '2025-11-06', '03:15:00', 'Mole Removal', 0, '2025-11-05 11:07:17', NULL),
(12, '51', NULL, 'BA', 'Vicki', 'Gilbey', 'vickigilbey602@gmail.com', 'AU', '0413645446', '2025-08-11', '14:30:00', '', 0, '2025-11-08 03:08:51', NULL),
(13, '40', NULL, 'BA', 'dev', 'raj', 'getdipanshu@gmail.com', 'IN', '7428401993', '2025-11-11', '02:19:00', 'hello', 0, '2025-11-10 09:23:48', NULL),
(14, NULL, '19', 'HD', 'Chandra', 'Anand', 'ckfromuk@gmail.com', 'AU', '470034488', '2025-11-12', '16:00:00', 'Hi Shikha, \r\nTesting the website for booking an appointment. \r\n', 0, '2025-11-12 02:56:29', NULL),
(15, NULL, '19,2', 'HD', 'test', 'Sanjeev', 'applyjhandubaam@yahoo.com', 'AU', '451270383', '2025-11-14', '18:33:00', 'please book me in', 0, '2025-11-13 16:53:52', NULL),
(16, '33', NULL, 'BA', 'Manaswi', 'Yetrinthala', '', 'AU', '490419291', '2025-11-17', '09:30:00', '', 0, '2025-11-15 09:36:44', NULL),
(17, '33', NULL, 'BA', 'Manaswi', 'Yetrinthala', '', 'AU', '490419291', '2025-11-17', '09:30:00', '', 0, '2025-11-15 09:37:40', NULL),
(18, '33', NULL, 'BA', 'Manaswi', 'Yetrinthala', '', 'AU', '490419291', '2025-11-17', '09:30:00', '', 0, '2025-11-15 09:42:20', NULL),
(19, '33', NULL, 'BA', 'Manaswi', 'Yetrinthala', '', 'AU', '490419291', '2025-11-19', '01:00:00', '', 0, '2025-11-15 09:46:21', NULL),
(20, '46', NULL, 'BA', 'Destiney', 'Salter', 'destiney.salter23@hotmail.com', 'AU', '0408873413', '2025-11-27', '10:00:00', '', 0, '2025-11-17 06:00:20', NULL),
(21, NULL, '17,4', 'HD', 'Polo', 'Chatterjee', 'poulomichatterjee3@gmail.com', 'AU', '0422295433', '2025-11-19', '15:33:00', 'I am happy to discuss the appointment time, if this does not work. Please give me a call.', 0, '2025-11-17 08:14:19', NULL),
(22, NULL, NULL, 'CU', 'david', 'dean', 'daviddean64@bigpond.com', 'AU', '0412263964', NULL, NULL, 'Hi I trust this email finds you well . I am hoping to hear from Miss Rory .maybe has another name or dosent exist but I dont think so , I would not be writing but I have fallen in love with Rory .hope this finds you well   Regards    David  ', 0, '2026-01-22 13:15:34', NULL),
(23, NULL, NULL, 'CU', 'Jaylee', 'Lewis', 'jayleelewis@optusnet.com.au', 'AU', '0407734868', NULL, NULL, 'Hi there - may I please make an appointment for eye brow wax, eye brow tint and lip wax at 5pm on Wed 4 March? \r\nKind regards\r\nJaylee', 0, '2026-02-25 10:13:36', NULL),
(24, NULL, NULL, 'CU', 'Emma', 'Hand', 'emmahand7@hotmail.com', 'AU', '0493 470 951', NULL, NULL, 'Hi, I had an appointment somewhere else and got messed around with my booking so have limited time to get my treatment. I\'m looking to book in for laser hair removal for Brazilian, lower leg and underarms. Just wondering if you require a patch test before treatment? If so, do you have availability on Saturday afternoon for a patch test and Wednesday afternoon for the treatment? If you don\'t need a patch test, do you have availabilty this Saturday for treatment?\r\nThanks,\r\nEmma', 0, '2026-02-25 10:22:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(64) NOT NULL DEFAULT '',
  `countries_iso_code` varchar(2) NOT NULL,
  `countries_isd_code` varchar(7) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`countries_id`, `countries_name`, `countries_iso_code`, `countries_isd_code`, `status`) VALUES
(1, 'Afghanistan', 'AF', '93', 1),
(2, 'Albania', 'AL', '355', 1),
(3, 'Algeria', 'DZ', '213', 1),
(4, 'American Samoa', 'AS', '1-684', 1),
(5, 'Andorra', 'AD', '376', 1),
(6, 'Angola', 'AO', '244', 1),
(7, 'Anguilla', 'AI', '1-264', 1),
(8, 'Antarctica', 'AQ', '672', 1),
(9, 'Antigua and Barbuda', 'AG', '1-268', 1),
(10, 'Argentina', 'AR', '54', 1),
(11, 'Armenia', 'AM', '374', 1),
(12, 'Aruba', 'AW', '297', 1),
(13, 'Australia', 'AU', '61', 1),
(14, 'Austria', 'AT', '43', 1),
(15, 'Azerbaijan', 'AZ', '994', 1),
(16, 'Bahamas', 'BS', '1-242', 1),
(17, 'Bahrain', 'BH', '973', 1),
(18, 'Bangladesh', 'BD', '880', 1),
(19, 'Barbados', 'BB', '1-246', 1),
(20, 'Belarus', 'BY', '375', 1),
(21, 'Belgium', 'BE', '32', 1),
(22, 'Belize', 'BZ', '501', 1),
(23, 'Benin', 'BJ', '229', 1),
(24, 'Bermuda', 'BM', '1-441', 1),
(25, 'Bhutan', 'BT', '975', 1),
(26, 'Bolivia', 'BO', '591', 1),
(27, 'Bosnia and Herzegowina', 'BA', '387', 1),
(28, 'Botswana', 'BW', '267', 1),
(29, 'Bouvet Island', 'BV', '47', 1),
(30, 'Brazil', 'BR', '55', 1),
(31, 'British Indian Ocean Territory', 'IO', '246', 1),
(32, 'Brunei Darussalam', 'BN', '673', 1),
(33, 'Bulgaria', 'BG', '359', 1),
(34, 'Burkina Faso', 'BF', '226', 1),
(35, 'Burundi', 'BI', '257', 1),
(36, 'Cambodia', 'KH', '855', 1),
(37, 'Cameroon', 'CM', '237', 1),
(38, 'Canada', 'CA', '1', 1),
(39, 'Cape Verde', 'CV', '238', 1),
(40, 'Cayman Islands', 'KY', '1-345', 1),
(41, 'Central African Republic', 'CF', '236', 1),
(42, 'Chad', 'TD', '235', 1),
(43, 'Chile', 'CL', '56', 1),
(44, 'China', 'CN', '86', 1),
(45, 'Christmas Island', 'CX', '61', 1),
(46, 'Cocos (Keeling) Islands', 'CC', '61', 1),
(47, 'Colombia', 'CO', '57', 1),
(48, 'Comoros', 'KM', '269', 1),
(49, 'Congo Democratic Republic of', 'CG', '242', 1),
(50, 'Cook Islands', 'CK', '682', 1),
(51, 'Costa Rica', 'CR', '506', 1),
(52, 'Cote D\'Ivoire', 'CI', '225', 1),
(53, 'Croatia', 'HR', '385', 1),
(54, 'Cuba', 'CU', '53', 1),
(55, 'Cyprus', 'CY', '357', 1),
(56, 'Czech Republic', 'CZ', '420', 1),
(57, 'Denmark', 'DK', '45', 1),
(58, 'Djibouti', 'DJ', '253', 1),
(59, 'Dominica', 'DM', '1-767', 1),
(60, 'Dominican Republic', 'DO', '1-809', 1),
(61, 'Timor-Leste', 'TL', '670', 1),
(62, 'Ecuador', 'EC', '593', 1),
(63, 'Egypt', 'EG', '20', 1),
(64, 'El Salvador', 'SV', '503', 1),
(65, 'Equatorial Guinea', 'GQ', '240', 1),
(66, 'Eritrea', 'ER', '291', 1),
(67, 'Estonia', 'EE', '372', 1),
(68, 'Ethiopia', 'ET', '251', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', '500', 1),
(70, 'Faroe Islands', 'FO', '298', 1),
(71, 'Fiji', 'FJ', '679', 1),
(72, 'Finland', 'FI', '358', 1),
(73, 'France', 'FR', '33', 1),
(75, 'French Guiana', 'GF', '594', 1),
(76, 'French Polynesia', 'PF', '689', 1),
(77, 'French Southern Territories', 'TF', NULL, 1),
(78, 'Gabon', 'GA', '241', 1),
(79, 'Gambia', 'GM', '220', 1),
(80, 'Georgia', 'GE', '995', 1),
(81, 'Germany', 'DE', '49', 1),
(82, 'Ghana', 'GH', '233', 1),
(83, 'Gibraltar', 'GI', '350', 1),
(84, 'Greece', 'GR', '30', 1),
(85, 'Greenland', 'GL', '299', 1),
(86, 'Grenada', 'GD', '1-473', 1),
(87, 'Guadeloupe', 'GP', '590', 1),
(88, 'Guam', 'GU', '1-671', 1),
(89, 'Guatemala', 'GT', '502', 1),
(90, 'Guinea', 'GN', '224', 1),
(91, 'Guinea-bissau', 'GW', '245', 1),
(92, 'Guyana', 'GY', '592', 1),
(93, 'Haiti', 'HT', '509', 1),
(94, 'Heard Island and McDonald Islands', 'HM', '011', 1),
(95, 'Honduras', 'HN', '504', 1),
(96, 'Hong Kong', 'HK', '852', 1),
(97, 'Hungary', 'HU', '36', 1),
(98, 'Iceland', 'IS', '354', 1),
(99, 'India', 'IN', '91', 1),
(100, 'Indonesia', 'ID', '62', 1),
(101, 'Iran (Islamic Republic of)', 'IR', '98', 1),
(102, 'Iraq', 'IQ', '964', 1),
(103, 'Ireland', 'IE', '353', 1),
(104, 'Israel', 'IL', '972', 1),
(105, 'Italy', 'IT', '39', 1),
(106, 'Jamaica', 'JM', '1-876', 1),
(107, 'Japan', 'JP', '81', 1),
(108, 'Jordan', 'JO', '962', 1),
(109, 'Kazakhstan', 'KZ', '7', 1),
(110, 'Kenya', 'KE', '254', 1),
(111, 'Kiribati', 'KI', '686', 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', '850', 1),
(113, 'South Korea', 'KR', '82', 1),
(114, 'Kuwait', 'KW', '965', 1),
(115, 'Kyrgyzstan', 'KG', '996', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', '856', 1),
(117, 'Latvia', 'LV', '371', 1),
(118, 'Lebanon', 'LB', '961', 1),
(119, 'Lesotho', 'LS', '266', 1),
(120, 'Liberia', 'LR', '231', 1),
(121, 'Libya', 'LY', '218', 1),
(122, 'Liechtenstein', 'LI', '423', 1),
(123, 'Lithuania', 'LT', '370', 1),
(124, 'Luxembourg', 'LU', '352', 1),
(125, 'Macao', 'MO', '853', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', '389', 1),
(127, 'Madagascar', 'MG', '261', 1),
(128, 'Malawi', 'MW', '265', 1),
(129, 'Malaysia', 'MY', '60', 1),
(130, 'Maldives', 'MV', '960', 1),
(131, 'Mali', 'ML', '223', 1),
(132, 'Malta', 'MT', '356', 1),
(133, 'Marshall Islands', 'MH', '692', 1),
(134, 'Martinique', 'MQ', '596', 1),
(135, 'Mauritania', 'MR', '222', 1),
(136, 'Mauritius', 'MU', '230', 1),
(137, 'Mayotte', 'YT', '262', 1),
(138, 'Mexico', 'MX', '52', 1),
(139, 'Micronesia, Federated States of', 'FM', '691', 1),
(140, 'Moldova', 'MD', '373', 1),
(141, 'Monaco', 'MC', '377', 1),
(142, 'Mongolia', 'MN', '976', 1),
(143, 'Montserrat', 'MS', '1-664', 1),
(144, 'Morocco', 'MA', '212', 1),
(145, 'Mozambique', 'MZ', '258', 1),
(146, 'Myanmar', 'MM', '95', 1),
(147, 'Namibia', 'NA', '264', 1),
(148, 'Nauru', 'NR', '674', 1),
(149, 'Nepal', 'NP', '977', 1),
(150, 'Netherlands', 'NL', '31', 1),
(151, 'Netherlands Antilles', 'AN', '599', 1),
(152, 'New Caledonia', 'NC', '687	', 1),
(153, 'New Zealand', 'NZ', '64', 1),
(154, 'Nicaragua', 'NI', '505', 1),
(155, 'Niger', 'NE', '227', 1),
(156, 'Nigeria', 'NG', '234', 1),
(157, 'Niue', 'NU', '683', 1),
(158, 'Norfolk Island', 'NF', '672', 1),
(159, 'Northern Mariana Islands', 'MP', '1-670', 1),
(160, 'Norway', 'NO', '47', 1),
(161, 'Oman', 'OM', '968', 1),
(162, 'Pakistan', 'PK', '92', 1),
(163, 'Palau', 'PW', '680', 1),
(164, 'Panama', 'PA', '507', 1),
(165, 'Papua New Guinea', 'PG', '675', 1),
(166, 'Paraguay', 'PY', '595', 1),
(167, 'Peru', 'PE', '51', 1),
(168, 'Philippines', 'PH', '63', 1),
(169, 'Pitcairn', 'PN', '64', 1),
(170, 'Poland', 'PL', '48', 1),
(171, 'Portugal', 'PT', '351', 1),
(172, 'Puerto Rico', 'PR', '1-787', 1),
(173, 'Qatar', 'QA', '974', 1),
(174, 'Reunion', 'RE', '262', 1),
(175, 'Romania', 'RO', '40', 1),
(176, 'Russian Federation', 'RU', '7', 1),
(177, 'Rwanda', 'RW', '250', 1),
(178, 'Saint Kitts and Nevis', 'KN', '1-869', 1),
(179, 'Saint Lucia', 'LC', '1-758', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', '1-784', 1),
(181, 'Samoa', 'WS', '685', 1),
(182, 'San Marino', 'SM', '378', 1),
(183, 'Sao Tome and Principe', 'ST', '239', 1),
(184, 'Saudi Arabia', 'SA', '966', 1),
(185, 'Senegal', 'SN', '221', 1),
(186, 'Seychelles', 'SC', '248', 1),
(187, 'Sierra Leone', 'SL', '232', 1),
(188, 'Singapore', 'SG', '65', 1),
(189, 'Slovakia (Slovak Republic)', 'SK', '421', 1),
(190, 'Slovenia', 'SI', '386', 1),
(191, 'Solomon Islands', 'SB', '677', 1),
(192, 'Somalia', 'SO', '252', 1),
(193, 'South Africa', 'ZA', '27', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', '500', 1),
(195, 'Spain', 'ES', '34', 1),
(196, 'Sri Lanka', 'LK', '94', 1),
(197, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '290', 1),
(198, 'St. Pierre and Miquelon', 'PM', '508', 1),
(199, 'Sudan', 'SD', '249', 1),
(200, 'Suriname', 'SR', '597', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', '47', 1),
(202, 'Swaziland', 'SZ', '268', 1),
(203, 'Sweden', 'SE', '46', 1),
(204, 'Switzerland', 'CH', '41', 1),
(205, 'Syrian Arab Republic', 'SY', '963', 1),
(206, 'Taiwan', 'TW', '886', 1),
(207, 'Tajikistan', 'TJ', '992', 1),
(208, 'Tanzania, United Republic of', 'TZ', '255', 1),
(209, 'Thailand', 'TH', '66', 1),
(210, 'Togo', 'TG', '228', 1),
(211, 'Tokelau', 'TK', '690', 1),
(212, 'Tonga', 'TO', '676', 1),
(213, 'Trinidad and Tobago', 'TT', '1-868', 1),
(214, 'Tunisia', 'TN', '216', 1),
(215, 'Turkey', 'TR', '90', 1),
(216, 'Turkmenistan', 'TM', '993', 1),
(217, 'Turks and Caicos Islands', 'TC', '1-649', 1),
(218, 'Tuvalu', 'TV', '688', 1),
(219, 'Uganda', 'UG', '256', 1),
(220, 'Ukraine', 'UA', '380', 1),
(221, 'United Arab Emirates', 'AE', '971', 1),
(222, 'United Kingdom', 'GB', '44', 1),
(223, 'United States', 'US', '1', 1),
(224, 'United States Minor Outlying Islands', 'UM', '246', 1),
(225, 'Uruguay', 'UY', '598', 1),
(226, 'Uzbekistan', 'UZ', '998', 1),
(227, 'Vanuatu', 'VU', '678', 1),
(228, 'Vatican City State (Holy See)', 'VA', '379', 1),
(229, 'Venezuela', 'VE', '58', 1),
(230, 'Vietnam', 'VN', '84', 1),
(231, 'Virgin Islands (British)', 'VG', '1-284', 1),
(232, 'Virgin Islands (U.S.)', 'VI', '1-340', 1),
(233, 'Wallis and Futuna Islands', 'WF', '681', 1),
(234, 'Western Sahara', 'EH', '212', 1),
(235, 'Yemen', 'YE', '967', 1),
(236, 'Serbia', 'RS', '381', 1),
(238, 'Zambia', 'ZM', '260', 1),
(239, 'Zimbabwe', 'ZW', '263', 1),
(240, 'Aaland Islands', 'AX', '358', 1),
(241, 'Palestine', 'PS', '970', 1),
(242, 'Montenegro', 'ME', '382', 1),
(243, 'Guernsey', 'GG', '44-1481', 1),
(244, 'Isle of Man', 'IM', '44-1624', 1),
(245, 'Jersey', 'JE', '44-1534', 1),
(247, 'Curaçao', 'CW', '599', 1),
(248, 'Ivory Coast', 'CI', '225', 1),
(249, 'Kosovo', 'XK', '383', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `c_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `c_image` varchar(200) NOT NULL,
  `c_pdf` varchar(200) NOT NULL,
  `youtube_link` varchar(200) NOT NULL,
  `c_price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_happy_client`
--

CREATE TABLE `tbl_happy_client` (
  `cl_id` int(5) NOT NULL,
  `client_name` varchar(150) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1-Active, 0-Inactive',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_happy_client`
--

INSERT INTO `tbl_happy_client` (`cl_id`, `client_name`, `logo`, `status`, `added_at`) VALUES
(1, 'a', 'h_1626713649.jpg', '1', '2021-07-19 16:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holiday`
--

CREATE TABLE `tbl_holiday` (
  `id` int(11) NOT NULL,
  `h_name` varchar(200) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `alltime` int(11) DEFAULT NULL,
  `time_slot` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_holiday`
--

INSERT INTO `tbl_holiday` (`id`, `h_name`, `date_from`, `date_to`, `alltime`, `time_slot`, `status`, `added_at`) VALUES
(1, 'Christmas Day', '2025-12-25', '2025-12-26', 1, NULL, 1, '2025-12-30 11:31:02'),
(2, 'New Year', '2025-12-30', '2026-01-01', 1, NULL, 1, '2025-12-30 11:31:10'),
(4, 'Booked out', '2026-01-24', '2026-01-26', 1, NULL, 1, '2026-01-09 21:42:59'),
(5, 'Booked out for feb', '2026-02-07', '2026-02-09', 1, NULL, 1, '2026-01-09 21:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_content`
--

CREATE TABLE `tbl_home_content` (
  `id` int(2) NOT NULL,
  `about_title` varchar(255) DEFAULT NULL,
  `about_details` text,
  `about_image` varchar(200) DEFAULT NULL,
  `sec5_title` varchar(255) DEFAULT NULL,
  `sec5_description` text,
  `sec5_content_title1` varchar(255) DEFAULT NULL,
  `sec5_content_details1` text,
  `sec5_content_image1` varchar(200) DEFAULT NULL,
  `sec5_content_title2` varchar(255) DEFAULT NULL,
  `sec5_content_details2` text,
  `sec5_content_image2` varchar(200) DEFAULT NULL,
  `sec5_content_title3` varchar(255) DEFAULT NULL,
  `sec5_content_details3` text,
  `sec5_content_image3` varchar(200) DEFAULT NULL,
  `sec6_title` varchar(255) DEFAULT NULL,
  `sec6_description` text,
  `pic_title1` varchar(255) DEFAULT NULL,
  `pic_details1` varchar(255) DEFAULT NULL,
  `pic1` varchar(150) DEFAULT NULL,
  `pic1_desktop` varchar(100) NOT NULL,
  `pic1_tablet` varchar(100) NOT NULL,
  `pic1_mobile` varchar(100) NOT NULL,
  `pic_title2` varchar(255) DEFAULT NULL,
  `pic_details2` varchar(255) DEFAULT NULL,
  `pic2` varchar(150) DEFAULT NULL,
  `pic_title3` varchar(255) DEFAULT NULL,
  `pic_details3` varchar(255) DEFAULT NULL,
  `pic3` varchar(150) DEFAULT NULL,
  `pic_title4` varchar(255) DEFAULT NULL,
  `pic_details4` varchar(255) DEFAULT NULL,
  `pic4` varchar(150) DEFAULT NULL,
  `contact_page_image` varchar(150) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_home_content`
--

INSERT INTO `tbl_home_content` (`id`, `about_title`, `about_details`, `about_image`, `sec5_title`, `sec5_description`, `sec5_content_title1`, `sec5_content_details1`, `sec5_content_image1`, `sec5_content_title2`, `sec5_content_details2`, `sec5_content_image2`, `sec5_content_title3`, `sec5_content_details3`, `sec5_content_image3`, `sec6_title`, `sec6_description`, `pic_title1`, `pic_details1`, `pic1`, `pic1_desktop`, `pic1_tablet`, `pic1_mobile`, `pic_title2`, `pic_details2`, `pic2`, `pic_title3`, `pic_details3`, `pic3`, `pic_title4`, `pic_details4`, `pic4`, `contact_page_image`, `update_at`) VALUES
(1, 'Welcome to SKIN Canberra', '<p class=\"mb-4 line-height-36\">Where science meets beauty. We&rsquo;re not just a salon, but a specialized hair and skin clinic focused on helping you look confident and feel your best.</p>\r\n<p class=\"mb-4 line-height-36\">We believe beauty is personal. That&rsquo;s why every treatment is tailored to enhance your natural features with the highest standards of care and safety.</p>\r\n<p class=\"mb-4 line-height-36\">From hair therapy and styling to advanced skin treatments, facials, peels, and injectables, our expert team uses premium products to deliver real results in a calm, modern space.</p>\r\n<p class=\"mb-4 line-height-36\">Whether it&rsquo;s a quick refresh or a complete transformation, SKIN Canberra is here for you.</p>\r\n<p class=\"mb-4 line-height-36\"><a href=\"../book-online\" rel=\"noopener\"><strong data-start=\"602\" data-end=\"668\" data-is-last-node=\"\">Book your appointment and experience beauty backed by science.</strong></a></p>', 'about-pHY4xWW5.webp', 'Why Choose SKIN Canberra?', '<p class=\"mb-4 line-height-36\"><strong>Professional Expertise:</strong> Founded by a qualified nurse and hair &amp; skin therapist, combining medical knowledge with advanced beauty care.</p>\r\n<p class=\"mb-4 line-height-36\"><strong>Personalized Consultations:</strong> Every treatment begins with a detailed skin and hair analysis&mdash;no one-size-fits-all approach.</p>\r\n<p class=\"mb-4 line-height-36\"><strong>Trusted Results:</strong> Safe, precise, and professional treatments, from basic services to advanced procedures like Botox.</p>', 'Expert Care', '<h2>Why Choose SKIN Canberra?</h2>\r\n<p class=\"mb-4 line-height-36\"><strong>Professional Expertise:</strong> Founded by a qualified nurse and hair &amp; skin therapist, combining medical knowledge with advanced beauty care.</p>\r\n<p class=\"mb-4 line-height-36\"><strong>Personalized Consultations:</strong> Every treatment begins with a detailed skin and hair analysis&mdash;no one-size-fits-all approach.</p>\r\n<p class=\"mb-4 line-height-36\"><strong>Trusted Results:</strong> Safe, precise, and professional treatments, from basic services to advanced procedures like Botox.</p>', 'sec-5-n6J2fMVu.webp', 'Premium Products', '<h3><strong>Australian Trusted Products</strong></h3>\r\n<p>Your safety and results matter. That&rsquo;s why we use only <strong>premium, Australian-approved products</strong> that meet the highest standards of quality and care.</p>\r\n<p class=\"mb-4 line-height-36\">We believe results come from quality. That&rsquo;s why we use carefully chosen, skin-friendly formulas and professional-grade tools. Whether it&rsquo;s a soothing serum or a high-performance hair treatment, every product is selected to nurture your skin, hair, and nails safely and effectively.</p>', 'sec-5-aKkmXtpF.webp', 'Personalized Experience', '<p class=\"mb-4 line-height-36\">No two clients are the same &mdash; and neither are our services. From the moment you step in, we tailor each treatment to your needs, lifestyle, and comfort level. Our warm, welcoming environment makes every visit a little moment of self-care you&rsquo;ll look forward to.</p>', 'sec-5-o3qTKT1c.webp', 'Our Most Loved Treatments', 'Discover the services our clients can’t stop talking about — each designed to refresh, restore, and enhance your natural beauty.', 'Carbon Facial', '“Revitalize Your Skin with Laser Precision.”', 'sec-6-zcjZCTz6.webp', 'sec-6-desktop-ZMDdzFaP.webp', 'sec-6-tablet-Fp58Wfts.webp', 'sec-6-mobile-wCRDKTj8.webp', 'Hydra Facial', 'Deeply cleanses, hydrates, and revives dull skin for a fresh, radiant look.', 'sec-6-lTFdzEd0.webp', 'Keratin Hair Therapy', 'Deeply cleanses, hydrates, and revives dull skin for a fresh, radiant look.', 'sec-6-R5ihQFvb.webp', 'Chemical Peeling', 'Deeply cleanses, hydrates, and revives dull skin for a fresh, radiant look.', 'sec-6-b292G3XX.webp', 'contact-img-XkuTdDZT.webp', '2026-02-17 10:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `m_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `address` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`m_id`, `name`, `email`, `password`, `ip_address`, `phone`, `image`, `privilege_id`, `address`, `status`, `created`, `updated`) VALUES
(1, 'raj guddu', 'raj@yopmail.com', '$2y$12$MQKdEY9fSAK9ErPScydyf.UWPS88yeGZGz0m6EZz2dPpJ.V40MGPy', '::1', '1234567890', '', 0, '', 1, '2025-11-01 09:36:36', '2025-11-02 13:40:20'),
(3, 'Dipanshu Chuahan', 'getdipanshu@gmail.com', '$2y$12$MB82wW4H91Dap/8FXUdInuoiYGu4CQ4630BsXdUsg1n1QyIVG0SiS', '122.161.51.8', '', '', 0, '', 1, '2025-12-01 09:21:47', '0000-00-00 00:00:00'),
(4, 'Test kumar', 'applyjhandubaam@yahoo.com', '$2y$12$6YFmFS5KMtJcBkYwkGdSIOzCXlipKc9Fgie6xRbmM7D7k5bh0KbQG', '27.33.188.125', '', '', 0, '', 1, '2025-12-10 18:23:10', '0000-00-00 00:00:00'),
(5, 'Athira Chacko', 'athirakc333@gmail.com', '$2y$12$NTOZG1jaDHVNCDPCJV42q./0.xx/g1yW82Owao/biCBambiyET526', '136.153.22.33', '', '', 0, '', 1, '2026-01-11 10:24:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member_address`
--

CREATE TABLE `tbl_member_address` (
  `add_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_member_address`
--

INSERT INTO `tbl_member_address` (`add_id`, `m_id`, `name`, `phone`, `address`, `status`, `added_at`, `update_at`) VALUES
(1, 1, 'raj guddu', '1234567890', 'noida delhi 230014', 1, '2025-11-01 11:27:13', '0000-00-00 00:00:00'),
(2, 2, 'raj guddu', '1234567890', 'KHESRAHIYAN\r\nSHRIPALPUR\r\nBHOJPUR', 1, '2025-11-01 15:37:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter`
--

CREATE TABLE `tbl_newsletter` (
  `id` int(5) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_newsletter`
--

INSERT INTO `tbl_newsletter` (`id`, `email`) VALUES
(4, 'rajgudduara18@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Inactive 1-Active',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `page_name`, `status`, `added_on`, `updated_on`) VALUES
(1, 'home ', '1', '2021-07-22 16:51:33', '2021-07-22 12:20:22'),
(3, 'contact us', '1', '2021-07-22 17:51:01', '0000-00-00 00:00:00'),
(4, 'about us', '1', '2021-07-22 17:51:18', '0000-00-00 00:00:00'),
(5, 'Service', '1', '2025-10-23 06:20:54', '2025-10-23 11:50:41'),
(6, 'Courses', '1', '2025-10-23 06:20:54', '2025-10-23 11:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_transaction`
--

CREATE TABLE `tbl_payment_transaction` (
  `pt_id` int(11) NOT NULL,
  `pay_from` varchar(50) NOT NULL COMMENT 'service, product, course',
  `sbo_id` int(11) NOT NULL COMMENT 'tbl_service_book_online.id',
  `order_id` varchar(50) NOT NULL COMMENT 'tbl_product_order.order_id',
  `c_id` int(11) NOT NULL COMMENT 'tbl_purchased_course.id',
  `paid_amount` int(11) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment_transaction`
--

INSERT INTO `tbl_payment_transaction` (`pt_id`, `pay_from`, `sbo_id`, `order_id`, `c_id`, `paid_amount`, `payment_mode`, `payment_status`, `paymentIntentId`, `txnId`, `added_at`) VALUES
(1, 'service', 1, '', 0, 100, 'Stripe', 'succeeded', 'pi_3SdHzEK6Q8NnuhoC09gTpLNi', 'TXN17654906992479', '2025-12-11 22:05:28'),
(2, 'service', 2, '', 0, 149, 'Stripe', 'succeeded', 'pi_3SepGEK6Q8NnuhoC0Gg3CZe1', 'TXN17658566468611', '2025-12-16 03:49:30'),
(3, 'service', 3, '', 0, 25, 'Stripe', 'succeeded', 'pi_3SjxLXK6Q8NnuhoC12Abgtmt', 'TXN17670795843686', '2025-12-30 07:28:04'),
(4, 'service', 4, '', 0, 10, 'Stripe', 'succeeded', 'pi_3Sk2aoK6Q8NnuhoC11Utpg66', 'TXN17670997908040', '2025-12-30 13:04:12'),
(5, 'service', 6, '', 0, 15, 'Stripe', 'succeeded', 'pi_3SkehtK6Q8NnuhoC1mEl7JGV', 'TXN17672462581908', '2026-01-01 05:46:02'),
(6, 'service', 8, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SkwHnK6Q8NnuhoC0MCnuPh9', 'TXN17673138995346', '2026-01-02 00:32:20'),
(7, 'service Dues', 6, '', 0, 15, 'Admin', 'Dues Received', '', '', '2026-01-05 08:24:15'),
(8, 'service Dues', 7, '', 0, 149, 'Admin', 'Dues Received', '', '', '2026-01-05 08:24:33'),
(9, 'service Dues', 9, '', 0, 229, 'Admin', 'Dues Received', '', '', '2026-01-05 08:24:50'),
(10, 'service Dues', 5, '', 0, 199, 'Admin', 'Dues Received', '', '', '2026-01-05 08:25:00'),
(11, 'service Dues', 4, '', 0, 30, 'Admin', 'Dues Received', '', '', '2026-01-05 08:25:11'),
(12, 'service Dues', 3, '', 0, 24, 'Admin', 'Dues Received', '', '', '2026-01-05 08:25:38'),
(13, 'service Dues', 1, '', 0, 299, 'Admin', 'Dues Received', '', '', '2026-01-05 10:00:05'),
(14, 'service', 10, '', 0, 50, 'Stripe', 'succeeded', 'pi_3Sn9LfK6Q8NnuhoC1LeIOgFs', 'TXN17678402279666', '2026-01-08 02:53:23'),
(15, 'service', 11, '', 0, 50, 'Stripe', 'succeeded', 'pi_3Sn9RsK6Q8NnuhoC0fcnyp0b', 'TXN17678411112919', '2026-01-08 02:59:48'),
(16, 'service', 12, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SnEdfK6Q8NnuhoC0ADDuGSz', 'TXN17678611199229', '2026-01-08 08:32:22'),
(17, 'service', 13, '', 0, 200, 'Stripe', 'succeeded', 'pi_3SnTf2K6Q8NnuhoC1pTQpfRS', 'TXN17679188642082', '2026-01-09 00:34:46'),
(18, 'service', 14, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SnTugK6Q8NnuhoC0efnperg', 'TXN17679198253990', '2026-01-09 00:50:56'),
(19, 'service', 15, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SnWeMK6Q8NnuhoC1scz7p0P', 'TXN17679302144207', '2026-01-09 03:46:18'),
(20, 'service', 16, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SnY4QK6Q8NnuhoC1ydXzPFh', 'TXN17679357879730', '2026-01-09 05:17:16'),
(21, 'service', 17, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SnpXOK6Q8NnuhoC0S44F0qV', 'TXN17680029631788', '2026-01-09 23:56:21'),
(22, 'service', 18, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SoFyqK6Q8NnuhoC1oWw5sEs', 'TXN17681045899958', '2026-01-11 04:10:26'),
(23, 'service', 19, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SoHyMK6Q8NnuhoC1uON6yyJ', 'TXN17681122638763', '2026-01-11 06:18:05'),
(24, 'service', 17, '', 0, 179, 'Admin', 'Edit Appointment', '', '', '2026-01-13 01:22:49'),
(25, 'service', 20, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SoyV9K6Q8NnuhoC1Qxjpwqw', 'TXN17682757165143', '2026-01-13 03:42:46'),
(26, 'service', 22, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SpGPRK6Q8NnuhoC0FyzEqFP', 'TXN17683445823896', '2026-01-13 22:50:03'),
(27, 'service', 23, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SpOkxK6Q8NnuhoC1xbbH72D', 'TXN17683766462370', '2026-01-14 07:44:47'),
(28, 'service', 24, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SqAziK6Q8NnuhoC0snYFmuq', 'TXN17685620845061', '2026-01-16 11:15:16'),
(29, 'service', 25, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SrnU5K6Q8NnuhoC14iQqhTR', 'TXN17689483287345', '2026-01-20 22:33:16'),
(30, 'service', 26, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SsSJIK6Q8NnuhoC0riGzimx', 'TXN17691052345605', '2026-01-22 18:08:52'),
(31, 'service', 27, '', 0, 50, 'Stripe', 'succeeded', 'pi_3SszhBK6Q8NnuhoC0duvRVg4', 'TXN17692335972363', '2026-01-24 05:47:46'),
(32, 'service', 34, '', 0, 49, 'Admin', 'Add Appointment', '', '', '2026-02-10 02:42:13'),
(33, 'service', 49, '', 0, 49, 'Admin', 'Add Appointment', '', '', '2026-02-22 10:07:18'),
(34, 'service', 54, '', 0, 49, 'Admin', 'Edit Appointment', '', '', '2026-02-23 08:08:11'),
(35, 'service', 58, '', 0, 49, 'Admin', 'Add Appointment', '', '', '2026-02-24 11:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(2) NOT NULL,
  `cat_id` int(2) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `pro_url` varchar(255) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `alt1` varchar(100) NOT NULL,
  `alt2` varchar(100) NOT NULL,
  `alt3` varchar(100) NOT NULL,
  `alt4` varchar(100) NOT NULL,
  `imgTitle1` varchar(100) NOT NULL,
  `imgTitle2` varchar(100) NOT NULL,
  `imgTitle3` varchar(100) NOT NULL,
  `imgTitle4` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keyIngred` text NOT NULL,
  `application` text NOT NULL,
  `status` int(2) NOT NULL,
  `show_front` int(2) NOT NULL,
  `activeTab` int(2) NOT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `cat_id`, `pro_name`, `sub_title`, `pro_url`, `image1`, `image2`, `image3`, `image4`, `alt1`, `alt2`, `alt3`, `alt4`, `imgTitle1`, `imgTitle2`, `imgTitle3`, `imgTitle4`, `description`, `keyIngred`, `application`, `status`, `show_front`, `activeTab`, `added_at`, `update_at`) VALUES
(2, 1, 'Gel Face Cleanser', 'All skin types/ Acne prone / Pretreatment', 'gel-face-cleanser', 'proImage1-qemaU0lw.webp', '', '', '', 'Gel Face Cleanser', '', '', '', 'Gel Face Cleanser', '', '', '', '<p>A foaming cleanser that effortlessly lathers, providing a soothing, cleansing experience leaving the skin feeling revitalised and hydrated.</p>\r\n<ul>\r\n<li>Mild foaming action</li>\r\n<li>Ideal for oily and acne prone skin</li>\r\n<li>Pre-treatment preparation</li>\r\n</ul>', '<ul>\r\n<li>Chamomile</li>\r\n<li>Birch extract</li>\r\n<li>Coconut oil (8%)</li>\r\n</ul>', '<p>Dispense 2-3 pumps and emulsify with water. Massage onto the skin for 2-4 minutes, using circular motions. Rinse with a damp facial cloth .</p>', 1, 1, 3, '2025-10-29 17:26:46', '2025-12-16 07:40:34'),
(3, 1, 'Herbal Face Milk', 'Mature/ sensitive skin', 'herbal-face-milk', 'proImage1-Kq2X8itN.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>Experience luxury with the Herbal Milk Cleanser, a gentle botanical enriched, milk&nbsp;based cleanser that brightens, soothes and refreshes the skin for an indulgent skincare ritual.&nbsp;</p>\r\n<ul>\r\n<li>Deep cleansing and nourishing</li>\r\n<li>Perfect for sensitive and mature skin&nbsp;</li>\r\n</ul>', '<ul>\r\n<li>Herbal extracts</li>\r\n<li>Green tea extract</li>\r\n<li>Chamomile</li>\r\n<li>Chamomile</li>\r\n<li>Peppermint (5%)</li>\r\n<li>Horse chestnut seed oil (.5%)&nbsp;</li>\r\n</ul>', '<p>Dispense 2-3 pumps and emulsify with water. Massage onto the skin for&nbsp; 2-4 minutes, using circular motions. Rinse with a damp facial cloth.&nbsp;</p>', 1, 1, 3, '2025-10-30 10:14:19', '2025-12-16 07:45:39'),
(4, 1, 'Hyaluronic Cleansing Gel', 'Normal/ Congested/ Oily/ Thickened skin', 'hyaluronic-cleansing-gel', 'proImage1-cbpJ0D3V.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>Hyaluronic Gel Cleanser is meticulously crafted with an&nbsp; enhanced AHA delivery system along with potent&nbsp; ingredients to gently exfaliate and deeply clean, resurfacing&nbsp; for a softer, healthier, more youthful appearance.&nbsp;</p>\r\n<ul>\r\n<li>AHA deep cleansing action</li>\r\n<li>Brightening action</li>\r\n<li>Promotes collagen and elastin synthesis&nbsp;</li>\r\n</ul>', '<ul>\r\n<li>Hyaluronic acid 1.5%&nbsp;</li>\r\n<li>AHA Fruit acids 1.5%</li>\r\n<li>Yeast Protein&nbsp;</li>\r\n</ul>', '<p>Dispense 2-3 pumps and emulsify with water. Massage&nbsp; onto the skin for 2-4 minutes, using circular motions.&nbsp; Rinse with a damp facial cloth. Avoid direct contact with</p>', 1, 1, 3, '2025-10-30 10:19:25', '2025-12-16 07:43:08'),
(5, 2, 'Herbal Face Tonic', 'Sensitive / Congested skin', 'herbal-face-tonic', 'proImage1-up8ytzKx.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"148\" data-end=\"278\">An essential elixir, carefully blended with harmonious, herbal ingredients dedicated to balance impurities and restore pH balance.</p>\r\n<p data-start=\"280\" data-end=\"359\">✔ Effectively removes dead skin cells<br data-start=\"317\" data-end=\"320\">✔ Balances pH<br data-start=\"333\" data-end=\"336\">✔ Calms delicate skin</p>', '<p>✔ Comfrey<br data-start=\"400\" data-end=\"403\">✔ Lavendar extract<br data-start=\"421\" data-end=\"424\">✔ Camellia Sinensis (Green Tea) leaf extract<br data-start=\"468\" data-end=\"471\">✔ Tillia Cordata (Linden) flower extract<br data-start=\"511\" data-end=\"514\">✔ Castor oil<br data-start=\"526\" data-end=\"529\">✔ Glycerin</p>', '<p data-start=\"569\" data-end=\"676\">After cleansing, spray the tonic on a cotton pad and wipe the damped cotton pad all over the face and neck.</p>', 1, 1, 3, '2025-11-26 06:39:40', '2025-12-16 07:51:23'),
(6, 2, 'Tonic For Collagen Synthesis', 'Mature skin/ Dry/ Dehydrated', 'tonic-for-collagen-synthesis', 'proImage1-EA7cWKOH.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>An astringent, anti-ageing toner, meticulously crafted&nbsp;with specialised ingredients that stimulate collagen&nbsp;synthesis, cleanse, balance and promote hydration,</p>\r\n<ul>\r\n<li>hydrate and enhance collagen production.</li>\r\n<li>Improve skin texture</li>\r\n<li>PH balance</li>\r\n</ul>', '<ul>\r\n<li>Lactic Acid (3%)</li>\r\n<li>Sodium Citrate (.5%)</li>\r\n</ul>', '<p>After cleansing, spray the tonic over a cotton pad&nbsp;and wipe the damp cotton pad all over the face and&nbsp;neck.&nbsp;</p>', 1, 0, 3, '2025-11-26 06:44:29', '2025-12-16 07:52:22'),
(7, 2, 'Dermal Lotion', 'Oily/ Congested / Break-out prone', 'dermal-lotion-', 'proImage1-kbx9ni5N.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"202\" data-end=\"450\">An advanced clarifying toner specially formulated for oily and breakout-prone skin. It gently exfoliates, removes excess oil, promotes hydration, and helps eliminate harmful bacteria on the skin. Dermal Lotion is also ideal for pre-peel degreasing.</p>\r\n<p data-start=\"452\" data-end=\"588\">✔ Oil control and acne prevention<br data-start=\"485\" data-end=\"488\">✔ Anti-bacterial and anti-inflammatory<br data-start=\"526\" data-end=\"529\">✔ Purifies and cleanses acne-prone skin<br data-start=\"568\" data-end=\"571\">✔ Pore refining</p>', '<p>✔ Salicylic Acid (1%)<br data-start=\"641\" data-end=\"644\">✔ Lactic Acid (0.3%)<br data-start=\"664\" data-end=\"667\">✔ Tea Tree (0.2%)<br data-start=\"684\" data-end=\"687\">✔ Menthol</p>', '<p data-start=\"726\" data-end=\"833\">After cleansing, apply Dermal Lotion to the affected areas using a cotton pad. Avoid the delicate eye area.</p>', 1, 0, 3, '2025-11-26 06:49:01', '2025-12-16 07:53:33'),
(8, 2, 'AHA Tonic', 'Normal / Oily / Uneven Skin Tone', 'aha-tonic', 'proImage1-iA6gQ2t5.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"258\" data-end=\"461\">AHA Tonic is an exfoliating toner formulated to eliminate excess oil and impurities. It helps reveal a softer, smoother, and more even-looking skin texture. Rapid results are visible after the first use.</p>\r\n<p data-start=\"463\" data-end=\"523\">✔ Exfoliates<br data-start=\"475\" data-end=\"478\">✔ Improves skin texture<br data-start=\"501\" data-end=\"504\">✔ Evens skin tone</p>', '<p>✔ Lactic Acid (3%)<br data-start=\"573\" data-end=\"576\">✔ Citric Acid<br data-start=\"589\" data-end=\"592\">✔ Glycolic Acid (2%)<br data-start=\"612\" data-end=\"615\">✔ Glycerin</p>', '<p data-start=\"655\" data-end=\"827\">After cleansing, apply the AHA 5% or 10% Tonic to the face, neck, and d&eacute;collet&eacute; using a cotton pad. Avoid the delicate eye area. For best results, use once or twice a week.</p>', 1, 0, 3, '2025-11-26 06:52:51', '2025-12-16 07:54:34'),
(9, 3, 'C Serum', 'All Skin types/ Pigmentated / Ageing concerns', 'c-serum', 'proImage1-g4V6973l.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"230\" data-end=\"484\">Vitamin C Serum is a powerful C-blend formulated to correct skin tone while stimulating collagen and elastin production. Its high-performance, phyto-whitening complex enhances luminosity, reduces oxidative damage from UV exposure, and nourishes the skin.</p>\r\n<p data-start=\"486\" data-end=\"606\">✔ Reduces oxidative damage caused by UV<br data-start=\"525\" data-end=\"528\">✔ Stimulates collagen and elastin production<br data-start=\"572\" data-end=\"575\">✔ Addresses hyperpigmentation</p>', '<p>✔ Lactic Acid (3%)<br data-start=\"656\" data-end=\"659\">✔ Tilia Vulgaris Flower<br data-start=\"682\" data-end=\"685\">✔ Ascorbic Acid (4%)<br data-start=\"705\" data-end=\"708\">✔ Licorice Root Extract<br data-start=\"731\" data-end=\"734\">✔ Birch Extract</p>', '<p data-start=\"779\" data-end=\"888\">Apply 3&ndash;4 drops of the Vitamin C Serum to the face, neck, and d&eacute;collet&eacute;. Gently massage until fully absorbed.</p>', 1, 0, 3, '2025-11-26 07:24:37', '2025-12-16 07:55:41'),
(10, 3, 'Caviar Serum', 'Mature skin/ Ageing concerns', 'caviar-serum', 'proImage1-xOtZHqCm.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"228\" data-end=\"558\">Experience deep hydration and nourishment with the Caviar Serum. This lightweight yet powerfully restorative formula visibly firms and plumps the skin, promoting a complexion that radiates health and vitality. Enriched with a potent blend of caviar extracts and antioxidants, it is the ultimate serum for youthful, resilient skin.</p>\r\n<p data-start=\"560\" data-end=\"688\">✔ Enhances collagen and elasticity<br data-start=\"594\" data-end=\"597\">✔ Restores moisture and hydration<br data-start=\"630\" data-end=\"633\">✔ Promotes ceramide production<br data-start=\"663\" data-end=\"666\">✔ Smooths fine lines</p>', '<p>✔ Caviar Extract (8%)<br data-start=\"741\" data-end=\"744\">✔ Cetyl Palmitate (3%)<br data-start=\"766\" data-end=\"769\">✔ Elastine (4%)<br data-start=\"784\" data-end=\"787\">✔ Vitamin E (3%)</p>', '<p data-start=\"833\" data-end=\"948\">Apply 3&ndash;4 drops of the Caviar Serum to the face, neck, and d&eacute;collet&eacute; at night. Gently massage until fully absorbed.</p>', 1, 0, 3, '2025-11-26 07:30:26', '2025-12-16 07:56:26'),
(11, 3, 'Hyaluronic Serum', 'All skin types/ Dehydrated / Oily', 'hyaluronic-serum-', 'proImage1-5uJoN1Xd.webp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 3, '2025-11-26 07:33:32', '2025-12-16 07:57:04'),
(12, 3, 'Retinol Serum', 'Mature / Acne-prone / Pigmentated / Age concerns', 'retinol-serum', 'proImage1-QNwh2lxH.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"225\" data-end=\"455\">Retinol Serum supports cellular health through gentle, natural exfoliation, making it an exceptional night treatment for skin renewal. It improves texture, reduces signs of ageing, and promotes a smoother, more radiant complexion.</p>\r\n<p data-start=\"457\" data-end=\"602\">✔ Promotes cellular turnover<br data-start=\"485\" data-end=\"488\">✔ Smooths skin texture<br data-start=\"510\" data-end=\"513\">✔ Reduces fine lines, wrinkles, dark spots &amp; acne<br data-start=\"562\" data-end=\"565\">✔ Hydrates and rejuvenates the skin</p>', '<p>✔ Retinyl Palmitate (1%)<br data-start=\"658\" data-end=\"661\">✔ Vitamin E (3%)<br data-start=\"677\" data-end=\"680\">✔ Glycerin</p>', '<p data-start=\"720\" data-end=\"871\">Apply 3&ndash;4 drops of the Retinol Serum onto the fingertips. Gently massage onto the face, neck, and d&eacute;collet&eacute; until fully absorbed.<br data-start=\"849\" data-end=\"852\"><strong data-start=\"852\" data-end=\"871\">Night use only.</strong></p>', 1, 0, 3, '2025-11-26 07:36:03', '2025-12-16 07:57:58'),
(13, 3, 'Ultra C++ Serum', 'All Skin Types / Hyperpigmented / Photo-Damaged Skin', 'ultra-c-serum', 'proImage1-HOOsbJUD.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"255\" data-end=\"526\">Ultra C++ Serum is a powerful antioxidant-rich formula featuring 15% L-ascorbic acid. It provides strong protection against external aggressors while helping reverse signs of damage and dullness. This high-performance serum brightens the skin and visibly reduces pigment.</p>\r\n<p data-start=\"528\" data-end=\"712\">✔ Comprehensive antioxidant protection<br data-start=\"566\" data-end=\"569\">✔ Brightens skin tone<br data-start=\"590\" data-end=\"593\">✔ Helps smooth the appearance of fine lines &amp; wrinkles<br data-start=\"647\" data-end=\"650\">✔ Protects against environmental stress<br data-start=\"689\" data-end=\"692\">✔ Inhibits pigment</p>', '<p>✔ L-Ascorbic Acid 15%<br data-start=\"765\" data-end=\"768\">✔ Tocopherol Acetate 1%<br data-start=\"791\" data-end=\"794\">✔ Ferulic Acid 0.5%<br data-start=\"813\" data-end=\"816\">✔ Sodium Hyaluronate<br data-start=\"836\" data-end=\"839\">✔ C-blend<br data-start=\"848\" data-end=\"851\">✔ Liquorice Extract<br data-start=\"870\" data-end=\"873\">✔ Arbutin<br data-start=\"882\" data-end=\"885\">✔ Aloe Barbadensis Leaf Juice</p>', '<p>Apply the serum daily on cleansed, dry skin&mdash;preferably in the morning&mdash;before applying moisturiser and sunscreen.</p>', 1, 0, 3, '2025-11-26 07:41:57', '2025-12-16 07:58:59'),
(14, 3, 'Lifting Serum', 'Laxed / Mature Skin', 'lifting-serum', 'proImage1-fb6fJVKk.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"210\" data-end=\"451\">Lifting Serum is a liposome-based, vitamin-rich, peptide-driven formula designed to restore elasticity and smooth fine lines. It is especially suited for prematurely aged or laxed skin, helping to strengthen and nourish the skin from within.</p>\r\n<p data-start=\"453\" data-end=\"544\">✔ Combats loss of elastin and collagen<br data-start=\"491\" data-end=\"494\">✔ Infuses essential nutrients deep into the skin</p>', '<p>✔ Panthenol (0.5%)<br data-start=\"594\" data-end=\"597\">✔ Vitamin E (5%)<br data-start=\"613\" data-end=\"616\">✔ Phospholipids (6%)<br data-start=\"636\" data-end=\"639\">✔ Saccharomyces Lysate Extract (12%)<br data-start=\"675\" data-end=\"678\">✔ Betula Alba Extract (8%)<br data-start=\"704\" data-end=\"707\">✔ Retinyl Palmitate (0.3%)</p>', '<p>Apply 3&ndash;4 drops of the Lifting Serum to the fingertips. Massage in an upward and outward motion across the face and neck. Allow the serum to fully absorb into the skin.</p>', 1, 0, 3, '2025-11-26 07:48:47', '2025-12-16 08:01:18'),
(15, 3, 'Copper Peptide Serum', 'All Skin Types / Age Concerns / Hair Rejuvenation', 'copper-peptide-serum', 'proImage1-TmGVqJLV.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"259\" data-end=\"540\">Copper Peptide Serum contains potent biocidal properties and plays a key role in the synthesis and stabilisation of skin proteins. Designed for superior rejuvenation, it can be applied to the face, neck, and scalp to support repair, cell renewal, and a more revitalised appearance.</p>\r\n<p data-start=\"542\" data-end=\"625\">✔ Improves scalp health<br data-start=\"565\" data-end=\"568\">✔ Neutralises the skin microbiome<br data-start=\"601\" data-end=\"604\">✔ Anti-inflammatory</p>', '<p>✔ Copper Peptide (2%)<br data-start=\"678\" data-end=\"681\">✔ Panthenol (1%)<br data-start=\"697\" data-end=\"700\">✔ Yeast (10%)<br data-start=\"713\" data-end=\"716\">✔ Aloe Barbadensis (5%)<br data-start=\"739\" data-end=\"742\">✔ Horse Chestnut Seed Extract (1%)<br data-start=\"776\" data-end=\"779\">✔ Allantoin (0.1%)</p>', '<p>Apply a pea-sized amount to the desired area and gently massage.<br data-start=\"891\" data-end=\"894\">For optimal results, use at night.</p>', 1, 0, 3, '2025-11-26 07:55:37', '2025-12-16 09:37:08'),
(16, 4, 'C Cream', 'Pigmentation / Age Concerns / Sun-Damaged Skin', 'c-cream', 'proImage1-qYxR1o6J.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"225\" data-end=\"447\">C Cream is a potent vitamin C&ndash;based formula that brightens, refines skin texture, and combats signs of ageing and discoloration. It works effectively to lighten darkened areas while promoting a radiant and even complexion.</p>\r\n<p data-start=\"449\" data-end=\"550\">✔ Reduces the appearance of pigmentation and uneven skin tone<br data-start=\"510\" data-end=\"513\">✔ Brightens overall skin complexion</p>', '<p>✔ Sodium Ascorbyl Phosphate (6%)<br data-start=\"614\" data-end=\"617\">✔ Citric Acid (0.5%)<br data-start=\"637\" data-end=\"640\">✔ Niacinamide (3%)</p>', '<p>Generously apply C Cream to the face and neck in the morning and evening.<br data-start=\"761\" data-end=\"764\">Follow with UV Cream for enhanced protection.</p>', 1, 0, 3, '2025-11-26 08:26:30', '2025-12-16 09:38:14'),
(17, 4, 'Caviar Cream', 'All Skin Types / Age Concerns / Dehydrated Skin', 'caviar-cream', 'proImage1-Vs3dKK62.webp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 3, '2025-11-26 08:29:13', '2025-12-16 09:39:17'),
(18, 4, 'Peptide Cream', 'All Skin Types / Age Concerns / Pigmentation', 'peptide-cream', 'proImage1-mKuiZqsj.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"238\" data-end=\"513\">Peptide Cream is crafted with a luxurious blend of active ingredients designed to boost collagen production, reduce inflammation, even out skin tone, and diminish the appearance of wrinkles. It helps strengthen the skin barrier while promoting healthier, more resilient skin.</p>\r\n<p data-start=\"515\" data-end=\"644\">✔ Strengthens the skin barrier<br data-start=\"545\" data-end=\"548\">✔ Enhances skin metabolism<br data-start=\"574\" data-end=\"577\">✔ Anti-ageing properties<br data-start=\"601\" data-end=\"604\">✔ Hydrates &amp; protects the skin barrier</p>', '<p data-start=\"676\" data-end=\"769\">✔ Pea &amp; Soy Protein (0.5%)<br data-start=\"702\" data-end=\"705\">✔ Grape Seed Oil<br data-start=\"721\" data-end=\"724\">✔ Tocopheryl Acetate<br data-start=\"744\" data-end=\"747\">✔ Sodium Hyaluronate</p>', '<p>Apply Peptide Cream to clean, dry skin and gently massage until fully absorbed.</p>', 1, 0, 3, '2025-11-26 08:31:10', '2025-12-16 09:40:09'),
(19, 4, 'Dermal Cream', 'Oily / Congested / Problem Skin', 'dermal-cream', 'proImage1-YkqXOR47.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"223\" data-end=\"445\">Dermal Cream is a sebum-regulating formula that helps combat inflammation and control breakouts while delivering antioxidant protection. Its lightweight, non-greasy texture supports clearer, calmer, and more balanced skin.</p>\r\n<p data-start=\"447\" data-end=\"547\">✔ Clarifying, non-greasy feel<br data-start=\"476\" data-end=\"479\">✔ Reduces inflammation caused by acne<br data-start=\"516\" data-end=\"519\">✔ Balances moisture levels</p>', '<p>✔ Tea Tree Leaf Extract (2%)<br data-start=\"607\" data-end=\"610\">✔ Colloidal Sulphur (3%)<br data-start=\"634\" data-end=\"637\">✔ <em data-start=\"639\" data-end=\"658\">Additional active</em> (0.5%)</p>', '<p data-start=\"695\" data-end=\"804\">Apply Dermal Cream to clean, dry skin on the face, avoiding the eye area.<br data-start=\"768\" data-end=\"771\">Use at night for optimal results.</p>', 0, 0, 3, '2025-11-26 08:34:18', '2025-12-16 09:41:51'),
(20, 4, 'Hyaluronic Cream', 'All Skin Types / Dry / Dehydrated Skin', 'hyaluronic-cream', 'proImage1-fO5DpDdX.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"238\" data-end=\"491\">Deliver intense hydration with this rich, antioxidant-driven moisturiser designed to soothe, hydrate, and smooth the skin. Hyaluronic Cream locks in moisture to restore softness and promote long-lasting hydration for a healthier, more supple complexion.</p>\r\n<p data-start=\"493\" data-end=\"572\">✔ Provides immediate, long-lasting hydration<br data-start=\"537\" data-end=\"540\">✔ Soothes and smooths the skin</p>', '<p>✔ Vitamin E (2%)<br data-start=\"620\" data-end=\"623\">✔ Lecithin (2%)<br data-start=\"638\" data-end=\"641\">✔ Hyaluronic Acid (1%)<br data-start=\"663\" data-end=\"666\">✔ Avocado Oil</p>', '<p data-start=\"709\" data-end=\"824\">Apply a small amount of Hyaluronic Cream to the skin.<br data-start=\"762\" data-end=\"765\">Massage in upward and outward motions until fully absorbed.</p>', 1, 0, 3, '2025-11-26 08:37:46', '2025-12-16 09:42:43'),
(21, 4, 'AHA Cream', 'Age Concerns / Dry / Rough Skin', 'aha-cream', 'proImage1-Y6kY3bVE.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"217\" data-end=\"463\">AHA Cream is a lactic acid&ndash;based moisturiser designed to resurface and brighten the skin, revealing a smoother and more radiant complexion. It helps improve texture, enhance clarity, and boost overall hydration for visibly healthier-looking skin.</p>\r\n<p data-start=\"465\" data-end=\"565\">✔ Improves skin texture and clarity<br data-start=\"500\" data-end=\"503\">✔ Brightens the complexion<br data-start=\"529\" data-end=\"532\">✔ Hydrates and softens the skin</p>', '<p>✔ Glycolic Acid (0.5%)<br data-start=\"619\" data-end=\"622\">✔ Citric Acid (1%)<br data-start=\"640\" data-end=\"643\">✔ Lactic Acid (3%)<br data-start=\"661\" data-end=\"664\">✔ Vitamin E (0.5%)</p>', '<p data-start=\"712\" data-end=\"822\">Apply AHA 15 Cream at night to clean, dry skin on the face.<br data-start=\"771\" data-end=\"774\">Introduce gradually to allow the skin to adjust.</p>', 1, 0, 3, '2025-11-26 08:41:56', '2025-12-16 09:43:41'),
(22, 4, 'Calendula Cream', 'Irritated / Sensitive Skin', 'calendula-cream', 'proImage1-b4GibWXz.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"224\" data-end=\"526\">Calendula Cream is crafted with soothing, anti-inflammatory ingredients that help quickly relieve extremely dry and irritated skin. Enriched with a botanical complex, it provides calming nourishment while protecting and restoring the skin&rsquo;s barrier. Ideal for reducing redness, dryness, and flaky skin.</p>\r\n<p data-start=\"528\" data-end=\"657\">✔ Facilitates skin healing<br data-start=\"554\" data-end=\"557\">✔ Reduces redness and dry, flaky skin<br data-start=\"594\" data-end=\"597\">✔ Moisturising and soothing<br data-start=\"624\" data-end=\"627\">✔ Provides lasting hydration</p>', '<p>✔ St John&rsquo;s Wort (3%)<br data-start=\"710\" data-end=\"713\">✔ Lanolin (2%)<br data-start=\"727\" data-end=\"730\">✔ Lavender Oil (0.5%)<br data-start=\"751\" data-end=\"754\">✔ Calendula Officinalis (3%)<br data-start=\"782\" data-end=\"785\">✔ Jojoba Oil (3%)<br data-start=\"802\" data-end=\"805\">✔ Vitamin E (1%)</p>', '<p>Gently massage Calendula Cream into the skin as needed for daily moisturising.</p>', 0, 0, 3, '2025-11-26 08:44:13', '2025-12-16 09:44:40'),
(23, 4, 'Retinol Cream', 'All Skin Types / Fine Lines & Wrinkles / Hyperpigmentation', 'retinol-cream', 'proImage1-oqg37p3c.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"252\" data-end=\"524\">Retinol Cream is a luxurious lotion featuring a vitamin A complex combined with hydrating agents and a potent antioxidant blend. It works to accelerate cell turnover, reduce visible signs of ageing, and improve overall skin texture for a smoother, more refined complexion.</p>\r\n<p data-start=\"526\" data-end=\"699\">✔ Increases cell turnover<br data-start=\"551\" data-end=\"554\">✔ Reduces visible signs of ageing<br data-start=\"587\" data-end=\"590\">✔ Smooths fine lines and wrinkles<br data-start=\"623\" data-end=\"626\">✔ Helps to retexturise the skin<br data-start=\"657\" data-end=\"660\">✔ Mimics the skin&rsquo;s natural retinoids</p>', '<p>✔ Retinyl Palmitate (1%)<br data-start=\"755\" data-end=\"758\">✔ Lanolin (3%)<br data-start=\"772\" data-end=\"775\">✔ Vitamin E (2%)</p>', '<p>Apply to clean, dry skin on the face, neck, and d&eacute;colletage.<br data-start=\"881\" data-end=\"884\">Introduce gradually to allow the skin to adapt.<br data-start=\"931\" data-end=\"934\"><strong data-start=\"934\" data-end=\"953\">Night use only.</strong></p>', 1, 0, 3, '2025-11-26 08:48:22', '2025-12-16 09:45:41'),
(24, 4, 'AHA 15 Cream', 'Age Concerns / Dry / Rough Skin / Scarring', 'aha--cream', 'proImage1-wiBMAfsQ.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"234\" data-end=\"519\">AHA 15 Cream is expertly formulated to resurface and brighten the skin, promoting a smoother and more radiant appearance. This potent blend of AHAs supports collagen production, fades pigmentation, smooths fine lines, and helps minimise acne scars while improving overall skin texture.</p>\r\n<p data-start=\"521\" data-end=\"701\">✔ Increases collagen and elastin synthesis<br data-start=\"563\" data-end=\"566\">✔ Diminishes pigmentation<br data-start=\"591\" data-end=\"594\">✔ Smooths fine lines and wrinkles<br data-start=\"627\" data-end=\"630\">✔ Controls problem skin and helps reduce the appearance of acne scars</p>', '<p>✔ Glycolic Acid (1%)<br data-start=\"753\" data-end=\"756\">✔ Citric Acid (3%)<br data-start=\"774\" data-end=\"777\">✔ Lanolin<br data-start=\"786\" data-end=\"789\">✔ Lactic Acid (6%)<br data-start=\"807\" data-end=\"810\">✔ Salicylic Acid (3%)<br data-start=\"831\" data-end=\"834\">✔ Vitamin E (1%)</p>', '<p>Apply AHA 15 Cream at night to clean, dry skin on the face.<br data-start=\"939\" data-end=\"942\">Introduce gradually to allow the skin to adjust.</p>', 1, 0, 3, '2025-11-26 08:51:23', '2025-12-16 09:46:54'),
(30, 6, 'UV Cream', 'All Skin Types', 'uv-cream', 'proImage1-ixKsCtZZ.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"198\" data-end=\"499\">UV Cream is a lightweight, non-greasy moisturiser that blends seamlessly into the skin. Formulated to leave no white cast, it is ideal for daily use and wears beautifully under makeup. This protective cream helps prevent photo-ageing while keeping the skin hydrated and comfortable throughout the day.</p>\r\n<p data-start=\"501\" data-end=\"576\">✔ Two-in-one moisturiser<br data-start=\"525\" data-end=\"528\">✔ Prevents photo-ageing<br data-start=\"551\" data-end=\"554\">✔ Non-greasy formula</p>', '<p>✔ Ethylhexyl Methoxycinnamate<br data-start=\"637\" data-end=\"640\">✔ Benzophenone-3<br data-start=\"656\" data-end=\"659\">✔ Phospholipids (2%)<br data-start=\"679\" data-end=\"682\">✔ Vitamin E (1.5%)</p>', '<p data-start=\"730\" data-end=\"862\">Apply a generous amount 20 minutes before sun exposure or after treatments.<br data-start=\"805\" data-end=\"808\">Reapply at least every 2 hours for optimal protection.</p>', 1, 0, 3, '2025-11-26 09:22:26', '2025-12-16 09:51:08'),
(31, 7, 'Herbal Mask', 'All Skin Types / Dehydrated / Sensitive Skin', 'herbal-mask', 'proImage1-ocOJWwYF.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"234\" data-end=\"622\">The Herbal Mask is infused with a powerful blend of natural extracts that replenish the skin with essential moisture, vitamins, and fatty acids. This soothing formulation helps restore the skin&rsquo;s natural lipid balance while visibly calming, protecting, and nourishing the complexion. It also supports the natural synthesis of collagen and elastin for healthier, more radiant-looking skin.</p>\r\n<p data-start=\"624\" data-end=\"708\">✔ Calms and soothes<br data-start=\"643\" data-end=\"646\">✔ Prevents transepidermal water loss<br data-start=\"682\" data-end=\"685\">✔ Restores pH balance</p>', '<p>✔ Green Tea<br data-start=\"751\" data-end=\"754\">✔ Linden<br data-start=\"762\" data-end=\"765\">✔ St. John&rsquo;s Wort<br data-start=\"782\" data-end=\"785\">✔ Chamomile<br data-start=\"796\" data-end=\"799\">✔ Horse Chestnut Seed Extract (3%)<br data-start=\"833\" data-end=\"836\">✔ Kaolin</p>', '<p>Using a mask brush, apply an even layer of the Herbal Mask over the entire face.<br data-start=\"954\" data-end=\"957\">Leave on for 15 minutes, then rinse thoroughly with lukewarm water.</p>', 1, 0, 3, '2025-11-26 09:35:14', '2025-12-16 09:53:13'),
(32, 7, 'Hyaluronic Mask', 'All Skin Types / Dry / Dehydrated Skin', 'hyaluronic-mask', 'proImage1-0hGMtOxW.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"260\" data-end=\"666\">The Hyaluronic Mask is a luxurious, deeply hydrating treatment designed to revitalise and plump the skin. Formulated with potent humectants, botanicals, and antioxidants, it delivers intense moisture while helping to smooth fine lines and protect the skin from environmental damage. This mask supports healthy collagen production and reinforces the skin&rsquo;s moisture barrier for a supple, radiant complexion.</p>\r\n<p data-start=\"668\" data-end=\"761\">✔ Intense hydration<br data-start=\"687\" data-end=\"690\">✔ Promotes collagen production<br data-start=\"720\" data-end=\"723\">✔ Prevents transepidermal water loss</p>', '<p>✔ Cucumber Extract (3%)<br data-start=\"816\" data-end=\"819\">✔ Hyaluronic Acid (1%)<br data-start=\"841\" data-end=\"844\">✔ Allantoin<br data-start=\"855\" data-end=\"858\">✔ Betula Alba Bark Extract<br data-start=\"884\" data-end=\"887\">✔ Aloe Vera<br data-start=\"898\" data-end=\"901\">✔ Green Tea Extract</p>', '<p>Use a mask brush to apply a generous, even layer of the Hyaluronic Mask to the face and neck, avoiding the eyelids.<br data-start=\"1065\" data-end=\"1068\">Leave on for 5&ndash;10 minutes, then rinse off with lukewarm water.</p>', 1, 0, 3, '2025-11-26 09:38:03', '2025-12-16 09:53:48'),
(33, 7, 'Rebalancing Mask', 'Normal / Oily / Combination / Mature Skin', 'rebalancing-mask', 'proImage1-rOXx7rpg.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"241\" data-end=\"541\">The Rebalancing Mask is a clay-based treatment ideal for mature or congested skin. It rejuvenates the complexion by regulating excess oil, clearing dead skin cells, and calming irritation. This mask helps balance the skin&rsquo;s pH levels while promoting a smoother, clearer, and more youthful appearance.</p>\r\n<p data-start=\"543\" data-end=\"668\">✔ Regulates excess oil production<br data-start=\"576\" data-end=\"579\">✔ Prevents redness and irritation<br data-start=\"612\" data-end=\"615\">✔ Balances pH levels<br data-start=\"635\" data-end=\"638\">✔ Soothes and heals the skin</p>', '<p>✔ Kaolin (15%)<br data-start=\"714\" data-end=\"717\">✔ Zinc Oxide (4%)<br data-start=\"734\" data-end=\"737\">✔ Algae Extract (5%)<br data-start=\"757\" data-end=\"760\">✔ Aloe Barbadensis (2%)</p>', '<p>Apply a generous layer of the Rebalancing Mask to the face and neck using a mask brush, avoiding the delicate eye area.<br data-start=\"932\" data-end=\"935\">Leave on for 15 minutes, then rinse off with lukewarm water.</p>', 1, 0, 3, '2025-11-26 09:41:56', '2025-12-16 09:54:25'),
(34, 7, 'Soothing Mask', 'All Skin Types / Sensitive / Barrier-Impaired Skin', 'soothing-mask', 'proImage1-FaXjWb74.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"244\" data-end=\"618\">The Soothing Mask is formulated with a nourishing blend ideal for sensitive and compromised skin. Enriched with honey, St. John&rsquo;s Wort, calendula extract, and phospholipids, it delivers exceptional moisturising and calming benefits while supporting the skin&rsquo;s natural repair process. This mask helps restore comfort, reduce inflammation, and strengthen the moisture barrier.</p>\r\n<p data-start=\"620\" data-end=\"708\">✔ Promotes cellular turnover<br data-start=\"648\" data-end=\"651\">✔ Provides moisture and hydration<br data-start=\"684\" data-end=\"687\">✔ Anti-inflammatory</p>', '<p>✔ Zinc Oxide (4%)<br data-start=\"757\" data-end=\"760\">✔ Honey (6%)<br data-start=\"772\" data-end=\"775\">✔ Calendula Flower Extract (1%)</p>', '<p>Apply a generous layer of the Soothing Mask to the face and neck using a mask brush, avoiding the delicate eye area.<br data-start=\"952\" data-end=\"955\">Leave on for 15 minutes, then rinse off with lukewarm water.</p>', 1, 0, 3, '2025-11-26 09:44:25', '2025-12-16 09:55:03'),
(35, 7, 'Dermal Mask', 'Oily / Congested / Acne-Prone Skin', 'dermal-mask', 'proImage1-2Fu1Qp5k.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"224\" data-end=\"568\">The Dermal Mask is an antibacterial and anti-inflammatory treatment designed specifically for oily, congested, and acne-prone skin. This purifying formula helps clear impurities, regulate sebum production, and detoxify the skin while supporting gentle exfoliation and renewal. It can also be used as a targeted spot treatment for problem areas.</p>\r\n<p data-start=\"570\" data-end=\"725\">✔ Suitable for use as a targeted spot treatment<br data-start=\"617\" data-end=\"620\">✔ Regulates sebum production<br data-start=\"648\" data-end=\"651\">✔ Anti-inflammatory action<br data-start=\"677\" data-end=\"680\">✔ Supports exfoliation and cellular renewal</p>', '<p>✔ Salicylic Acid (1%)<br data-start=\"778\" data-end=\"781\">✔ Glycerin (3%)<br data-start=\"796\" data-end=\"799\">✔ Zinc Oxide (3%)<br data-start=\"816\" data-end=\"819\">✔ Kaolin (12%)<br data-start=\"833\" data-end=\"836\">✔ Tea Tree Oil (2%)</p>', '<p>Apply a generous layer of the Dermal Mask to the face and neck using a mask brush, avoiding the delicate eye area.<br data-start=\"999\" data-end=\"1002\">Leave on for 15 minutes, then rinse off with lukewarm water.</p>', 1, 0, 3, '2025-11-26 09:47:11', '2025-12-16 09:56:09'),
(36, 8, 'Glow Peel Serum', 'All Skin Types / Age Concerns / Problematic / Dehydrated Skin', 'glow-peel-serum', 'proImage1-qo3zIdsD.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"259\" data-end=\"602\">Glow Peel Serum is an advanced exfoliating formula enriched with a blend of herbal enzymes and lactic acid. It gently removes dull, lifeless skin cells while refining texture and boosting radiance. This rejuvenating serum accelerates cellular renewal, smooths fine lines, and deeply hydrates to reveal a brighter, healthier-looking complexion.</p>\r\n<p data-start=\"604\" data-end=\"724\">✔ Long-lasting hydration<br data-start=\"628\" data-end=\"631\">✔ Accelerates cellular renewal<br data-start=\"661\" data-end=\"664\">✔ Smoothes wrinkles and fine lines<br data-start=\"698\" data-end=\"701\">✔ Brightens skin tone</p>', '<p>✔ Lactic Acid (15%)<br data-start=\"775\" data-end=\"778\">✔ Arginine<br data-start=\"788\" data-end=\"791\">✔ Hyaluronic Acid (2%)<br data-start=\"813\" data-end=\"816\">✔ Aloe Barbadensis Leaf Juice</p>', '<p data-start=\"875\" data-end=\"982\">In the evening, apply 3&ndash;4 drops of Glow Peel Serum to cleansed skin.<br data-start=\"943\" data-end=\"946\">Gently massage until fully absorbed.</p>', 1, 0, 3, '2025-11-26 09:50:01', '2025-12-16 09:57:06'),
(38, 9, 'Q10 Eye Cream', 'All Skin Types / Fine Lines / Dark Circles / Puffiness', 'q-eye-cream', 'proImage1-xDIThGoy.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"248\" data-end=\"593\">Q10 Eye Cream is a peptide-driven formula designed to strengthen, protect, and rejuvenate the delicate skin around the eyes. Enriched with CoQ10 and nourishing botanicals, it supports cell repair, boosts micro-circulation, and helps diminish dark circles and puffiness. With regular use, the eye area appears firmer, smoother, and more youthful.</p>\r\n<p data-start=\"595\" data-end=\"802\">✔ Protects delicate skin from free radical damage<br data-start=\"644\" data-end=\"647\">✔ Provides hydrating and tightening effects<br data-start=\"690\" data-end=\"693\">✔ Boosts micro-circulation around the eyes<br data-start=\"735\" data-end=\"738\">✔ Reduces the appearance of fine lines, wrinkles &amp; crow&rsquo;s feet</p>', '<p>✔ CoQ10 (Coenzyme Q10)<br data-start=\"856\" data-end=\"859\">✔ Grape Seed Oil<br data-start=\"875\" data-end=\"878\">✔ Elastine<br data-start=\"888\" data-end=\"891\">✔ Jojoba Seed Oil</p>', '<p>Apply half a pea-sized amount of Q10 Eye Cream to the desired eye area.<br data-start=\"1009\" data-end=\"1012\">Gently massage until the cream is fully absorbed.<br data-start=\"1061\" data-end=\"1064\">Avoid direct contact with the eyes.</p>', 1, 0, 3, '2025-11-26 09:55:05', '2025-12-16 09:59:25'),
(41, 10, 'Niacin', 'Sensitive / Barrier-Impaired / Problematic / Pigmentation', 'niacin', 'proImage1-PqDoKVBC.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"237\" data-end=\"556\">Niacin helps strengthen the skin barrier, improving moisture retention and boosting resilience. It reduces the appearance of uneven skin tone, dark spots, and fine lines while encouraging collagen production. This gentle yet powerful serum also enhances texture, supports moisture balance, and repairs compromised skin.</p>\r\n<p data-start=\"558\" data-end=\"666\">✔ Reduces pigmentation<br data-start=\"580\" data-end=\"583\">✔ Aids skin moisture<br data-start=\"603\" data-end=\"606\">✔ Repairs the skin barrier<br data-start=\"632\" data-end=\"635\">✔ Evens skin tone and texture</p>', '<p>✔ Niacinamide (10%)</p>', '<p data-start=\"746\" data-end=\"874\">For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 3, '2025-11-26 10:03:47', '2025-12-16 10:04:57'),
(42, 10, 'Caviar', 'Mature Skin', 'caviar', 'proImage1-uW5OkuCk.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"197\" data-end=\"564\">Caviar is a highly effective moisturising and antioxidant-rich treatment designed to deeply hydrate and revitalise mature skin. Its luxurious formula supports overall skin health, restores essential moisture, and enhances softness and suppleness. Caviar also helps strengthen the skin barrier while boosting hydration levels for a more youthful, resilient complexion.</p>\r\n<p data-start=\"566\" data-end=\"690\">✔ Improves skin health<br data-start=\"588\" data-end=\"591\">✔ Restores moisture levels<br data-start=\"617\" data-end=\"620\">✔ Helps restore barrier function<br data-start=\"652\" data-end=\"655\">✔ Increases hydration in the skin</p>', '<p data-start=\"721\" data-end=\"745\">✔ Caviar Extract (10%)</p>', '<p data-start=\"773\" data-end=\"901\">For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 3, '2025-11-26 10:06:04', '2025-12-16 10:05:39'),
(54, 11, 'Chocolate Milk', 'All Skin Types / Dry / Dehydrated Body Skin', 'chocolate-milk', 'proImage1-IUOyONOW.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>Infused with the richness of chocolate, this luxuriously crafted body treatment deeply nourishes and moisturises the skin. Chocolate Milk leaves the body feeling exceptionally soft, smooth, and hydrated, making it perfect for dry or moisture-depleted skin.</p>', '<p data-start=\"527\" data-end=\"571\">✔ Caprylic Acid (9%)<br data-start=\"547\" data-end=\"550\">✔ Cocoa Butter (4%)</p>', '<p>Gently massage onto the skin, concentrating on areas that need extra nourishment.</p>', 1, 0, 3, '2025-11-26 11:14:50', '2025-12-16 10:07:08'),
(55, 11, 'Natural Milk', 'All Skin Types / Dry / Dehydrated Body Skin / Stretch Marks', 'natural-milk', 'proImage1-34wht9P0.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"251\" data-end=\"620\">Crafted from natural, skin-loving ingredients, Natural Milk is a luxurious body treatment designed to relax, deeply hydrate, and visibly improve skin texture. It helps diminish the appearance of stretch marks, leaving the skin soft, smooth, and plump. Its nourishing formula is especially beneficial for pregnant women or anyone seeking extra moisture and skin support.</p>\r\n<p data-start=\"622\" data-end=\"753\">✔ Provides deep hydration for soft, plump skin<br data-start=\"668\" data-end=\"671\">✔ Helps reduce the appearance of stretch marks<br data-start=\"717\" data-end=\"720\">✔ Beneficial for pregnant women</p>', '<p>✔ Marigold<br data-start=\"795\" data-end=\"798\">✔ Olive Oil<br data-start=\"809\" data-end=\"812\">✔ Stearic Acid<br data-start=\"826\" data-end=\"829\">✔ Grape Seed Oil<br data-start=\"845\" data-end=\"848\">✔ Vitamin E<br data-start=\"859\" data-end=\"862\">✔ Allantoin<br data-start=\"873\" data-end=\"876\">✔ Olive Fruit Oil<br data-start=\"893\" data-end=\"896\">✔ Calendula Extract<br data-start=\"915\" data-end=\"918\">✔ Panthenol<br data-start=\"929\" data-end=\"932\">✔ Lavender Oil</p>', '<p data-start=\"976\" data-end=\"1070\">Gently massage Natural Milk onto the skin, concentrating on areas that need extra nourishment.</p>', 1, 0, 3, '2025-11-26 11:23:42', '2025-12-16 10:07:40'),
(56, 11, 'Ultra-Firming Cream', 'All Skin Types / Laxed Skin', 'ultra-firming-cream', 'proImage1-Gkb02rR5.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"233\" data-end=\"536\">Experience the power of an innovative blend of proteins, herbal extracts, and antioxidants with the Ultra-Firming Cream. This rejuvenating formula enhances skin elasticity, improves firmness, and promotes a more toned appearance. With regular use, the skin becomes smoother, tighter, and more resilient.</p>\r\n<p data-start=\"538\" data-end=\"626\">✔ Resistant to loss of elasticity<br data-start=\"571\" data-end=\"574\">✔ Improves firmness and tone<br data-start=\"602\" data-end=\"605\">✔ Astringent action</p>', '<p>✔ Elastin<br data-start=\"667\" data-end=\"670\">✔ Glycine Soya<br data-start=\"684\" data-end=\"687\">✔ Ivy Extract<br data-start=\"700\" data-end=\"703\">✔ Green Tea Extract<br data-start=\"722\" data-end=\"725\">✔ Horse Chestnut Extract<br data-start=\"749\" data-end=\"752\">✔ Stearic Acid</p>', '<p>Apply the cream twice daily to the desired areas of the body.<br data-start=\"857\" data-end=\"860\">Gently massage until fully absorbed.</p>', 1, 0, 3, '2025-11-26 11:32:11', '2025-12-16 10:08:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attributes`
--

CREATE TABLE `tbl_product_attributes` (
  `attrId` int(2) NOT NULL,
  `pro_id` int(2) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `value` int(2) NOT NULL,
  `sp` int(2) NOT NULL,
  `status` int(2) NOT NULL COMMENT '0-inactive, 1-active',
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_attributes`
--

INSERT INTO `tbl_product_attributes` (`attrId`, `pro_id`, `unit`, `value`, `sp`, `status`, `added_at`, `update_at`) VALUES
(1, 2, 'ml', 200, 59, 1, '2025-10-30 07:04:28', '2025-12-16 07:40:34'),
(4, 3, 'ml', 200, 59, 1, '2025-10-30 10:18:00', '2025-12-16 07:45:39'),
(6, 4, 'ml', 200, 69, 1, '2025-10-30 10:22:50', '2025-12-16 07:43:08'),
(7, 5, 'ml', 200, 49, 1, '2025-11-26 06:41:00', '2025-12-16 07:51:23'),
(8, 6, 'ml', 200, 65, 1, '2025-11-26 06:47:35', '2025-12-16 07:52:22'),
(9, 7, 'ml', 200, 59, 1, '2025-11-26 06:50:37', '2025-12-16 07:53:32'),
(10, 8, 'ml', 200, 62, 1, '2025-11-26 06:53:38', '2025-12-16 07:54:34'),
(11, 9, 'ml', 30, 89, 1, '2025-11-26 07:26:44', '2025-12-16 07:55:41'),
(12, 10, 'ml', 30, 89, 1, '2025-11-26 07:32:04', '2025-12-16 07:56:26'),
(13, 11, 'ml', 30, 89, 1, '2025-11-26 07:34:50', '2025-12-16 07:57:04'),
(14, 12, 'ml', 30, 89, 1, '2025-11-26 07:39:48', '2025-12-16 07:57:58'),
(15, 13, 'ml', 30, 179, 1, '2025-11-26 07:46:11', '2025-12-16 07:58:59'),
(16, 14, 'ml', 30, 89, 1, '2025-11-26 07:53:26', '2025-12-16 08:01:18'),
(17, 15, 'ml', 30, 99, 1, '2025-11-26 07:56:48', '2025-12-16 09:37:08'),
(18, 16, 'g', 50, 89, 1, '2025-11-26 08:27:34', '2025-12-16 09:38:14'),
(19, 17, 'g', 50, 110, 1, '2025-11-26 08:29:53', '2025-12-16 09:39:17'),
(20, 18, 'g', 60, 119, 1, '2025-11-26 08:32:01', '2025-12-16 09:40:09'),
(21, 19, 'g', 50, 89, 1, '2025-11-26 08:35:16', '2025-12-16 09:41:51'),
(22, 20, 'g', 30, 89, 1, '2025-11-26 08:40:14', '2025-12-16 09:42:43'),
(23, 21, 'g', 60, 109, 1, '2025-11-26 08:42:50', '2025-12-16 09:43:41'),
(24, 22, 'g', 50, 82, 1, '2025-11-26 08:44:58', '2025-12-16 09:44:40'),
(25, 23, 'ml', 60, 110, 1, '2025-11-26 08:49:04', '2025-12-16 09:45:41'),
(26, 24, 'g', 60, 109, 1, '2025-11-26 08:52:36', '2025-12-16 09:46:54'),
(27, 25, '10', 50, 199, 1, '2025-11-26 08:56:34', '0000-00-00 00:00:00'),
(28, 26, '10', 60, 199, 1, '2025-11-26 09:05:55', '0000-00-00 00:00:00'),
(29, 27, '10', 30, 199, 1, '2025-11-26 09:10:11', '0000-00-00 00:00:00'),
(30, 28, '10', 200, 10, 1, '2025-11-26 09:16:36', '0000-00-00 00:00:00'),
(31, 29, '10', 200, 199, 1, '2025-11-26 09:19:06', '0000-00-00 00:00:00'),
(32, 30, 'g', 50, 88, 1, '2025-11-26 09:23:16', '2025-12-16 09:51:08'),
(33, 31, 'g', 50, 99, 1, '2025-11-26 09:36:09', '2025-12-16 09:53:13'),
(34, 32, 'g', 50, 99, 1, '2025-11-26 09:39:54', '2025-12-16 09:53:48'),
(35, 33, 'g', 50, 99, 1, '2025-11-26 09:42:41', '2025-12-16 09:54:25'),
(36, 34, 'g', 50, 99, 1, '2025-11-26 09:45:24', '2025-12-16 09:55:03'),
(37, 35, 'g', 50, 99, 1, '2025-11-26 09:47:58', '2025-12-16 09:56:09'),
(38, 36, 'ml', 30, 119, 1, '2025-11-26 09:50:44', '2025-12-16 09:57:06'),
(39, 37, '10', 200, 199, 1, '2025-11-26 09:52:40', '0000-00-00 00:00:00'),
(40, 38, 'g', 30, 99, 1, '2025-11-26 09:55:46', '2025-12-16 09:59:25'),
(41, 39, 'ml', 30, 89, 1, '2025-11-26 09:58:59', '2025-12-16 10:00:40'),
(42, 40, '10', 20, 199, 1, '2025-11-26 10:01:31', '0000-00-00 00:00:00'),
(43, 41, 'ml', 30, 89, 1, '2025-11-26 10:04:32', '2025-12-16 10:04:57'),
(44, 42, 'ml', 30, 89, 1, '2025-11-26 10:06:47', '2025-12-16 10:05:39'),
(45, 43, '10', 20, 199, 1, '2025-11-26 10:09:22', '0000-00-00 00:00:00'),
(46, 45, '10', 20, 199, 1, '2025-11-26 10:21:20', '0000-00-00 00:00:00'),
(47, 46, '10', 20, 199, 1, '2025-11-26 10:24:57', '0000-00-00 00:00:00'),
(48, 48, '10', 20, 199, 1, '2025-11-26 10:31:50', '0000-00-00 00:00:00'),
(49, 49, '10', 20, 199, 1, '2025-11-26 10:51:15', '0000-00-00 00:00:00'),
(50, 50, '10', 200, 199, 1, '2025-11-26 10:56:04', '0000-00-00 00:00:00'),
(51, 51, '10', 20, 199, 1, '2025-11-26 11:09:31', '0000-00-00 00:00:00'),
(52, 53, '10', 20, 199, 1, '2025-11-26 11:13:15', '0000-00-00 00:00:00'),
(53, 54, 'ml', 200, 99, 1, '2025-11-26 11:15:40', '2025-12-16 10:07:08'),
(54, 55, 'ml', 200, 99, 1, '2025-11-26 11:29:43', '2025-12-16 10:07:40'),
(55, 56, 'ml', 125, 119, 1, '2025-11-26 11:33:06', '2025-12-16 10:08:52'),
(56, 57, '10', 200, 199, 1, '2025-11-26 11:35:59', '0000-00-00 00:00:00'),
(57, 58, '10', 30, 199, 1, '2025-11-26 11:40:29', '0000-00-00 00:00:00'),
(58, 59, '10', 30, 199, 1, '2025-11-26 11:44:31', '0000-00-00 00:00:00'),
(59, 60, '10', 30, 199, 1, '2025-11-26 11:47:14', '0000-00-00 00:00:00'),
(60, 61, '10', 30, 199, 1, '2025-11-26 11:50:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `id` int(2) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '0-inactive, 1-active, 2-soft delete',
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `category_name`, `status`, `added_at`, `update_at`) VALUES
(1, 'Cleansers', 1, '2025-10-29 07:07:51', '2025-10-29 07:02:37'),
(2, 'Tonics', 1, '2025-10-29 06:46:41', '2025-10-29 07:02:43'),
(3, 'Serums', 1, '2025-10-29 07:14:54', '0000-00-00 00:00:00'),
(4, 'Treatment Creams', 1, '2025-10-29 07:15:09', '0000-00-00 00:00:00'),
(5, 'Intensive Facial Gels', 1, '2025-10-29 07:15:30', '0000-00-00 00:00:00'),
(6, 'Sun Protection', 1, '2025-10-29 07:15:46', '0000-00-00 00:00:00'),
(7, 'Face Masks', 1, '2025-10-29 07:15:56', '0000-00-00 00:00:00'),
(8, 'Exfoliants', 1, '2025-10-29 07:16:09', '0000-00-00 00:00:00'),
(9, 'Eye Cream', 1, '2025-10-29 07:16:20', '2025-11-26 09:54:30'),
(10, 'Technology Serums', 1, '2025-10-29 07:16:30', '2025-10-30 07:10:56'),
(11, 'Body Products', 1, '2025-10-29 07:17:23', '2025-11-26 10:54:04'),
(12, 'Chemical Peels', 1, '2025-10-29 07:17:44', '2025-10-30 07:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_order`
--

CREATE TABLE `tbl_product_order` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `add_id` int(11) NOT NULL,
  `product_details` text NOT NULL,
  `total_qty` int(11) NOT NULL,
  `net_total` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-order place, 2-shipped, 3-delivered, 4-cancel',
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `orderdate` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_order_log`
--

CREATE TABLE `tbl_product_order_log` (
  `log_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `add_id` int(11) NOT NULL,
  `product_details` text NOT NULL,
  `total_qty` int(11) NOT NULL,
  `net_total` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-order place, 2-shipped, 3-delivered, 4-cancel',
  `orderdate` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchased_course`
--

CREATE TABLE `tbl_purchased_course` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `c_price` int(11) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_realresult`
--

CREATE TABLE `tbl_realresult` (
  `id` int(2) NOT NULL,
  `alt` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_realresult`
--

INSERT INTO `tbl_realresult` (`id`, `alt`, `title`, `image`, `status`, `added_at`, `update_at`) VALUES
(1, 'p1', 'p1', 'image-dR6ucQtg.webp', 1, '2025-10-24 10:32:33', '2026-01-16 13:53:17'),
(2, 'p2', 'p2', 'image-kVx6pHJz.webp', 1, '2025-10-24 10:32:33', '2026-01-16 13:53:10'),
(3, 'p3', 'p3', 'image-D35YKXbz.webp', 1, '2025-10-24 10:32:33', '2026-01-16 13:53:02'),
(4, 'p4', 'p4', 'image-dstHV2zt.webp', 1, '2025-10-24 10:32:34', '2026-01-16 13:52:56'),
(5, 's1', 's1', 'image-5Kv2tsgD.webp', 1, '2025-10-24 10:33:55', '2026-01-16 13:52:49'),
(6, 's2', 's2', 'image-ivYxzfV0.webp', 1, '2025-10-24 10:33:55', '2026-01-16 13:52:39'),
(7, 's3', 's3', 'image-1b4LN2RP.webp', 1, '2025-10-24 10:33:55', '2026-01-16 13:52:28'),
(8, 's4', 's4', 'image-T6fGwhwg.webp', 1, '2025-10-24 10:33:56', '2026-01-16 13:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `sv_id` int(2) NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_image` varchar(150) DEFAULT NULL,
  `thumbnail_image` varchar(150) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `serv_title` varchar(255) DEFAULT NULL,
  `serv_url` varchar(255) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `details` text,
  `show_front` int(2) DEFAULT NULL COMMENT '0-notshow, 1-show',
  `status` int(2) DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`sv_id`, `banner_title`, `banner_image`, `thumbnail_image`, `service_name`, `serv_title`, `serv_url`, `photo`, `details`, `show_front`, `status`, `added_at`, `update_at`) VALUES
(2, 'Smooth, Hair-Free Skin with Waxing', 'service-banner-101OBrUK.webp', 'service-t-GVPsg0gd.webp', 'Waxing', 'Smooth, Gentle & Professional Hair Removal', 'waxing', 'service-r67irU0M.webp', '<p class=\"mb-4 line-height-36\">Waxing is a hair removal method in which warm or cold wax is applied to the skin and then pulled off quickly to remove hair from the root. It&rsquo;s used on areas like the legs, arms, face, and bikini line for longer-lasting smoothness.</p>\r\n<h3 class=\"text-20\">Benefits:</h3>\r\n<ul class=\"text-18 line-height-36\">\r\n<li>Hair is removed from the root, so it takes 3&ndash;6 weeks to grow back.</li>\r\n<li>Removes dead skin cells along with hair, leaving skin smoother.</li>\r\n<li>Unlike shaving, waxing avoids skin damage from sharp blades.</li>\r\n<li>Skin feels softer and looks more polished compared to other methods.</li>\r\n</ul>', 0, 1, '2025-10-11 07:32:48', '2026-01-19 09:18:03'),
(3, 'Vibrant Hair Colour for Stunning Look', 'service-banner-rCdbXz3k.webp', 'service-t-LNSQRxrj.webp', 'Hair Colour', 'Color, Highlights & Glam', 'hair-colour', 'service-vVwo8vlI.webp', '<h3 class=\"text-20 mt-4\">Hair Colour</h3>\r\n<p class=\"mb-4 line-height-36\">Hair colour is the process of changing or enhancing the natural color of hair using dyes or pigments. It can be used to cover gray hair, add highlights, or completely transform the hair shade for aesthetic or fashion purposes.</p>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li>Adds vibrancy and complements your skin tone and style.</li>\r\n<li>Provides a youthful look by masking unwanted gray strands.</li>\r\n<li>Techniques like highlights or balayage create texture and movement.</li>\r\n<li>A fresh hair colour can make you feel more attractive and refreshed.</li>\r\n<li>Offers endless options for expressing personality and creativity.</li>\r\n</ul>', 0, 1, '2025-10-11 07:33:36', '2026-01-19 09:15:35'),
(4, 'Stylish Haircuts to Suit Your Personality', 'service-banner-MVYGbRjv.webp', 'service-t-os1DdoPO.webp', 'Haircut', 'Precision Cuts & Wearable Looks', 'haircut-', 'service-xI94iFLr.webp', '<p class=\"mb-4 line-height-36\">A haircut involves trimming or shaping the hair to maintain its health, length, or style. It&rsquo;s done to refresh your look, improve hair condition, and enhance overall appearance &mdash; whether for fashion, hygiene, or personal care.</p>\r\n<h3 class=\"text-20 mt-4\">Benefits:</h3>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li>Removes split ends and damaged strands, promoting healthier growth.</li>\r\n<li>Highlights facial features and complements your personal style with a neat, fresh finish.</li>\r\n<li>Keeps hairstyles tidy and well-defined.</li>\r\n<li>Boosts confidence with a polished, revitalized look.</li>\r\n<li>Makes hair easier to manage, style, and maintain.</li>\r\n</ul>', 0, 1, '2025-10-11 07:34:25', '2026-01-19 09:15:23'),
(5, 'Precise Threading for Perfectly Shaped Brows', 'service-banner-IcbRhH1n.webp', 'service-t-9P3Jspvh.webp', 'Threading', 'Precise Brow & Facial Hair Shaping', 'threading', 'service-wcbnrhVK.webp', '<p class=\"mb-4 line-height-36\">Threading is a hair removal service that uses a twisted cotton thread to remove unwanted facial hair from the root. It is most commonly used for shaping eyebrows and removing upper lip or facial hair with precision.</p>\r\n<h3 class=\"text-20\">Benefits</h3>\r\n<ul class=\"text-18 line-height-36\">\r\n<li>Allows for accurate shaping, especially around the eyebrows.<br>No heat or chemicals, making it safe for sensitive skin.</li>\r\n<li>Hair is removed from the root, so regrowth takes 2&ndash;6 weeks.</li>\r\n<li>Less likely to cause redness, bumps, or ingrown hairs compared to waxing.</li>\r\n<li>Fast process with minimal tools, often more cost-effective than other methods.</li>\r\n</ul>', 0, 1, '2025-10-11 07:35:12', '2026-01-19 09:15:11'),
(6, 'Permanent Makeup for Effortless Beauty', 'service-banner-4R3bWYLu.webp', 'service-t-jG3hCcVu.webp', 'PMU', 'Your Beauty, Enhanced', 'pmu', 'service-HF8pgeRh.webp', '<p class=\"mb-4 line-height-36\">PMU, or Permanent Makeup, is a cosmetic tattooing technique where pigment is implanted into the upper layers of the skin to enhance facial features such as eyebrows, eyes, and lips. It includes procedures like microblading, lip blushing, eyeliner tattoo, and lip neutralization. Benefits</p>\r\n<h3 class=\"text-20\">Benefits:</h3>\r\n<ul class=\"text-18 line-height-36\">\r\n<li>Reduces the need for daily makeup routines like filling in brows or applying lipstick.</li>\r\n<li>Results can last 1&ndash;3 years, depending on the procedure and skin type.</li>\r\n<li>Defines and improves the appearance of eyebrows, lips, and eyes while still looking natural.</li>\r\n<li>Ideal for active lifestyles&mdash;no need to worry about makeup smudging or fading throughout the day.</li>\r\n<li>Helps those with sparse brows, uneven lips, or makeup allergies feel more confident and polished</li>\r\n</ul>', 1, 1, '2025-10-11 07:35:47', '2026-01-21 17:02:14'),
(10, 'Eyebrows            (LASH + TINT + THREADING)', 'service-banner-vm97pDL4.webp', 'service-t-AAelzBI7.webp', 'All about Brows', 'Eyelash Lift and Tint, Henna Brows, Brows wax or thread and Tint', 'all-about-brows', 'service-b4NFm7Kl.webp', '<p class=\"mb-4 line-height-36\">We deeply believe that Eyes speak louder than words and we do all services to pamper your eyebrows.<br>Eyebrow tinting is very comfortable procedure where semi-permanent dye is applied to the eyebrows to enhance, shape, and define them. It darkens lighter brow hairs, making the brows appear fuller and more defined.</p>\r\n<h3 class=\"text-20\">Benefits:</h3>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li>Tinting darkens fine or light hairs, creating the appearance of thicker, fuller brows.</li>\r\n<li>Helps define the natural brow shape by adding depth and dimension.</li>\r\n<li>Reduces the need for daily brow makeup like pencils, powders, or gels.</li>\r\n<li>The tint can be matched to your hair and skin tone for a natural or bold look.</li>\r\n<li>Tint typically lasts 3&ndash;6 weeks, depending on skin type and aftercare.</li>\r\n</ul>', 0, 1, '2025-10-15 08:46:26', '2026-01-21 17:00:18'),
(11, 'Tighten & Lift Skin with Fibroblast', 'service-banner-Yrjmb0Xm.webp', 'service-t-EcF5jprr.webp', 'Fibroblast (Skin Tightening)', 'Smooth & Tight', 'fibroblast-skin-tightening-', 'service-AMYkpQGm.webp', '<p class=\"mb-4 line-height-36\">Fibroblast treatment, also known as Plasma Pen or Plasma Skin Tightening, is a non-surgical cosmetic procedure that uses a plasma device to deliver controlled micro-injuries to the skin&rsquo;s surface. This stimulates fibroblast cells to produce more collagen, elastin, and hyaluronic acid, tightening and rejuvenating the skin naturally.</p>\r\n<h3 class=\"text-20\">Benefits of Fibroblast Treatment:</h3>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li><strong>Non-Surgical Skin Tightening:</strong> Lifts and firms areas like eyelids, neck, and jawline without invasive surgery.</li>\r\n<li><strong>Reduces Wrinkles &amp; Fine Lines:</strong> Smooths out crow&rsquo;s feet, frown lines, and under-eye wrinkles.</li>\r\n<li><strong>Improves Skin Texture:</strong> Helps reduce acne scars, pigmentation, and stretch marks.</li>\r\n<li><strong>Boosts Collagen Production:</strong> Promotes long-term skin regeneration and youthfulness.</li>\r\n<li><strong>Minimal Downtime:</strong> Quicker recovery compared to traditional surgical procedures with long-lasting results.</li>\r\n</ul>', 0, 1, '2025-10-15 09:08:46', '2026-01-21 17:01:57'),
(12, 'Beauty & Care Services Designed Just for You', 'service-banner-4viA4UEN.webp', 'service-t-Z3LTeDoF.webp', 'Mole, Wart, and Skin Tag Removal', 'Tag, Wart & Mole Care', 'mole-wart-and-skin-tag-removal', 'service-3uyRhwVD.webp', '<p class=\"mb-4 line-height-36\">Mole, wart, and skin tag removal is a minor cosmetic or medical procedure used to eliminate unwanted skin growths. Techniques may include <strong>cryotherapy (freezing)</strong>, <strong>electrocautery</strong>, <strong>laser removal</strong>, or <strong>excision</strong>, depending on the type, size, and location of the growth.</p>\r\n<h3 class=\"text-20\">Benefits of Mole, Wart &amp; Skin Tag Removal:</h3>\r\n<ul class=\"text-18 line-height-36\">\r\n<li><strong>Improves Appearance:</strong> Removes unsightly or bothersome growths for smoother, clearer skin.</li>\r\n<li><strong>Enhances Comfort:</strong> Eliminates irritation caused by rubbing against clothing or jewelry.</li>\r\n<li><strong>Boosts Confidence:</strong> Increases self-esteem, especially when growths are on visible areas like the face or neck.</li>\r\n<li><strong>Quick and Minimally Invasive:</strong> Most procedures are fast, low-risk, and performed with little to no downtime.</li>\r\n<li><strong>Prevents Further Issues:</strong> Helps avoid potential complications like bleeding, infection, or growth changes (in some cases, lesions may be sent for testing).</li>\r\n</ul>', 0, 1, '2025-10-15 09:15:59', '2026-01-21 17:01:43'),
(13, 'Expert Solutions for Every Hair Problem', 'service-banner-vA9waXQE.webp', 'service-t-SLntuElL.webp', 'All About Hair concerns', 'Tiny Touch, Big Impact', 'all-about-hair-concerns', 'service-Z7HwpLnK.webp', '<p class=\"mb-4 line-height-36\">Nanoplasty is an advanced, chemical-free hair straightening treatment that uses nanotechnology and natural ingredients (like amino acids and proteins) to restructure and smooth the hair from the inside out. Unlike traditional keratin or chemical relaxers, nanoplasty is formaldehyde-free and safe for all hair types, including damaged or chemically treated hair.</p>\r\n<h3 class=\"text-20\">Benefits of Nanoplasty:</h3>\r\n<ul class=\"text-18 line-height-36\">\r\n<li><strong>Smooths and Straightens Hair Naturally:</strong> Provides sleek, frizz-free, and straight hair without harsh chemicals.</li>\r\n<li><strong>Formaldehyde-Free and Non-Toxic:</strong> A safer alternative to keratin treatments, ideal for sensitive scalps and health-conscious clients.</li>\r\n<li><strong>Long-Lasting Results:</strong> Results can last 3 to 6 months, depending on hair type and aftercare.</li>\r\n<li><strong>Improves Hair Health:</strong> Infuses hair with nutrients like amino acids, making it stronger, shinier, and more manageable.</li>\r\n<li><strong>Suitable for All Hair Types:</strong> Safe to use on bleached, colored, or previously chemically treated hair.</li>\r\n</ul>', 0, 1, '2025-10-15 09:23:24', '2026-01-21 17:01:31'),
(15, 'Enhance Your Beauty with Collagen Biostimulator', 'service-banner-4oEeBDkn.webp', 'service-t-NbTRacnj.webp', 'Collagen Biostimulator and Volume enhancement', 'Collagen Biostimulator and Volume enhancement', 'collagen-biostimulator-and-volume-enhancement', 'service-hRagCJPy.webp', '<p><strong>Botox and Dermal Fillers</strong> are two popular <strong>non-surgical cosmetic treatments</strong> that help reduce signs of aging and enhance facial features.&nbsp;</p>\r\n<h3>Botox</h3>\r\n<ul>\r\n<li>\r\n<p>Temporarily relaxes facial muscles to <strong>smooth dynamic wrinkles</strong> (like forehead lines, crow&rsquo;s feet, and frown lines).</p>\r\n</li>\r\n<li>\r\n<p>Quick procedure with minimal downtime.</p>\r\n</li>\r\n<li>\r\n<p>Effects last <strong>3&ndash;6 months</strong> depending on area and dosage.</p>\r\n</li>\r\n</ul>\r\n<h3>Dermal Fillers</h3>\r\n<ul>\r\n<li>\r\n<p>Restore volume, <strong>plump lips, cheeks, and under-eye areas</strong>, and smooth deep lines.</p>\r\n</li>\r\n<li>\r\n<p>Made of <strong>hyaluronic acid or other safe substances</strong> that mimic natural tissues.</p>\r\n</li>\r\n<li>\r\n<p>Results are immediate and can last <strong>6&ndash;18 months</strong> depending on product and area treated.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Rejuvenates your appearance without surgery</p>\r\n</li>\r\n<li>\r\n<p>Enhances facial symmetry and contours</p>\r\n</li>\r\n<li>\r\n<p>Minimally invasive with fast recovery</p>\r\n</li>\r\n<li>\r\n<p>Combines well for a natural, youthful look</p>\r\n</li>\r\n</ul>', 1, 1, '2025-10-31 09:51:28', '2026-02-06 03:00:02'),
(16, 'Rejuvenate Your Glow with Premium Facials', 'service-banner-FDl8wG3Z.webp', 'service-t-4etuvUJg.webp', 'Premium Facials', 'Premium Facials', 'premium-facials', 'service-NsmuIeJx.webp', '<p data-start=\"126\" data-end=\"395\">Premium facials are luxurious skincare treatments designed to rejuvenate, nourish, and revitalize your skin. Using advanced techniques and high-quality ingredients, these facials target specific skin concerns, leaving your complexion glowing, refreshed, and youthful.</p>\r\n<p data-start=\"397\" data-end=\"431\"><strong data-start=\"397\" data-end=\"429\">Benefits of Premium Facials:</strong></p>\r\n<ul data-start=\"432\" data-end=\"1028\">\r\n<li data-start=\"432\" data-end=\"556\">\r\n<p data-start=\"434\" data-end=\"556\"><strong data-start=\"434\" data-end=\"469\">Deep Cleansing and Exfoliation:</strong> Removes impurities, dead skin cells, and unclogs pores for a smooth, radiant finish.</p>\r\n</li>\r\n<li data-start=\"557\" data-end=\"689\">\r\n<p data-start=\"559\" data-end=\"689\"><strong data-start=\"559\" data-end=\"589\">Hydration and Nourishment:</strong> Infuses skin with essential nutrients, vitamins, and moisturizing agents to restore natural glow.</p>\r\n</li>\r\n<li data-start=\"690\" data-end=\"807\">\r\n<p data-start=\"692\" data-end=\"807\"><strong data-start=\"692\" data-end=\"729\">Anti-Aging and Skin Rejuvenation:</strong> Reduces fine lines, wrinkles, and signs of aging for firmer, youthful skin.</p>\r\n</li>\r\n<li data-start=\"808\" data-end=\"925\">\r\n<p data-start=\"810\" data-end=\"925\"><strong data-start=\"810\" data-end=\"843\">Relaxation and Stress Relief:</strong> Combines soothing massage techniques to relax facial muscles and reduce stress.</p>\r\n</li>\r\n<li data-start=\"926\" data-end=\"1028\">\r\n<p data-start=\"928\" data-end=\"1028\"><strong data-start=\"928\" data-end=\"960\">Suitable for All Skin Types:</strong> Safe and effective for sensitive, dry, oily, or combination skin.</p>\r\n</li>\r\n</ul>', 0, 1, '2025-11-02 23:30:56', '2026-01-21 17:00:57'),
(17, 'Advanced Skin Treatments for Radiant Glow', 'service-banner-mXmQc02P.webp', 'service-t-nPYjMaik.webp', 'Skin Treatment', NULL, 'skin-treatment', 'service-FY4Qcci9.webp', '<p><strong>Skin Treatment</strong> targets and improves <strong>any kind of skin concern</strong> &mdash; from acne and pigmentation to dryness, aging, or sensitivity.&nbsp;</p>\r\n<h3>What It Does</h3>\r\n<ul>\r\n<li>\r\n<p>Deeply cleanses, nourishes, and rejuvenates the skin.</p>\r\n</li>\r\n<li>\r\n<p>Uses customized products and techniques based on your <strong>skin type and condition</strong>.</p>\r\n</li>\r\n<li>\r\n<p>Can include facials, peels, LED therapy, or advanced rejuvenation treatments.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Treats acne, dullness, fine lines, and uneven tone.</p>\r\n</li>\r\n<li>\r\n<p>Restores balance, hydration, and natural glow.</p>\r\n</li>\r\n<li>\r\n<p>Strengthens skin health for long-term improvement.</p>\r\n</li>\r\n<li>\r\n<p>Leaves your skin fresh, smooth, and radiant.&nbsp;</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, 1, '2025-11-02 23:31:22', '2026-01-19 09:12:36'),
(18, 'Expert Skin & Scalp - Analysis & Consultation', 'service-banner-xJqGr0g0.webp', 'service-t-DYT7r5Lt.webp', 'Skin & Scalp     -     Analyze & Consultation', NULL, 'skin--scalp---analyze--consultation', 'service-ITtGK6JG.webp', '<p><strong>Skin and Scalp Analyzer</strong> is an advanced diagnostic tool that helps professionals <strong>analyze your skin or scalp condition</strong> in detail to create a personalized treatment plan.&nbsp;</p>\r\n<h3>How It Works</h3>\r\n<ul>\r\n<li>\r\n<p>Uses <strong>high-resolution imaging and sensors</strong> to examine hydration, oil levels, pores, dandruff, and follicle health.</p>\r\n</li>\r\n<li>\r\n<p>Identifies concerns like dryness, acne, pigmentation, hair thinning, or scalp buildup.</p>\r\n</li>\r\n<li>\r\n<p>Provides accurate, real-time data for customized skincare or haircare solutions.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Detailed insight into your skin or scalp health</p>\r\n</li>\r\n<li>\r\n<p>Helps select the <strong>right treatments and products</strong> for your needs</p>\r\n</li>\r\n<li>\r\n<p>Tracks progress over time with before-and-after images</p>\r\n</li>\r\n<li>\r\n<p>Non-invasive, quick, and completely painless</p>\r\n</li>\r\n</ul>', 0, 1, '2025-11-02 23:32:06', '2026-01-21 17:00:43'),
(19, 'Smooth Skin Forever with Laser Hair Removal', 'service-banner-AiDbchw2.webp', 'service-t-3HXUsHKm.webp', 'Laser Hair removal', NULL, 'laser-hair-removal', 'service-LKqSiaJP.webp', '<p><strong>IPL Hair Reduction</strong> is a non-invasive treatment that uses <strong>Intense Pulsed Light (IPL)</strong> to target hair follicles, reducing unwanted hair growth safely and effectively.</p>\r\n<h3>How It Works</h3>\r\n<ul>\r\n<li>\r\n<p>IPL emits <strong>light energy</strong> that is absorbed by the pigment in hair follicles.</p>\r\n</li>\r\n<li>\r\n<p>This energy <strong>damages the follicle</strong>, slowing down and reducing hair growth over multiple sessions.</p>\r\n</li>\r\n<li>\r\n<p>Suitable for various areas like legs, arms, underarms, face, and bikini line.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Long-lasting hair reduction with smooth results</p>\r\n</li>\r\n<li>\r\n<p>Safe, non-invasive, and precise</p>\r\n</li>\r\n<li>\r\n<p>Minimal discomfort and downtime</p>\r\n</li>\r\n<li>\r\n<p>Can treat large areas efficiently</p>\r\n</li>\r\n<li>\r\n<p>Reduces hair regrowth and thickness over time</p>\r\n</li>\r\n</ul>', 1, 1, '2025-11-03 09:33:07', '2026-02-07 10:50:26'),
(20, 'PRP (Protein Rich Plasma)', 'service-banner-oUQWt9eK.webp', 'service-t-C673KX6B.webp', 'PRP', 'Medically proven, next-generation PRP hair loss treatments at Skin Canberra', 'prp-', 'service-qeBsRa4O.webp', '<p data-start=\"104\" data-end=\"357\">PRP hair loss treatment is a safe, non-surgical solution for men and women experiencing thinning hair or hair loss. By using your own blood platelets, rich in growth factors, this therapy helps stimulate natural hair regrowth and revitalise the scalp.</p>\r\n<p data-start=\"359\" data-end=\"538\">Platelet-Rich Plasma (PRP) therapy is an advanced procedure that leverages your body&rsquo;s natural healing processes to strengthen hair follicles and promote healthier, fuller hair.</p>\r\n<p data-start=\"540\" data-end=\"723\">At <strong data-start=\"543\" data-end=\"560\">Skin Canberra</strong>, we offer personalised, evidence-based care tailored to your needs. Reclaim your confidence and enjoy thicker, fuller-looking hair with PRP Hair Loss Treatment&nbsp;</p>', 1, 1, '2025-12-13 08:05:04', '2026-02-07 10:49:42'),
(21, 'Therapeutic services', 'service-banner-o2XcmYwA.webp', 'service-t-KONpD3lR.webp', 'Head Spa & Body massages', NULL, 'head-spa--body-massages', 'service-QXbwY6Om.webp', '<p data-start=\"119\" data-end=\"292\"><strong data-start=\"119\" data-end=\"131\">Head Spa</strong> is a deeply relaxing and therapeutic treatment designed to cleanse, nourish, and rejuvenate the scalp while promoting healthy hair growth and mental relaxation.</p>\r\n<h3 data-start=\"294\" data-end=\"310\">How It Works</h3>\r\n<p data-start=\"311\" data-end=\"654\">The treatment begins with a detailed scalp analysis, followed by deep cleansing to remove buildup, excess oil, and impurities.<br data-start=\"437\" data-end=\"440\">Gentle massage techniques stimulate blood circulation, relieve tension, and improve scalp health.<br data-start=\"537\" data-end=\"540\">Specialized products and water therapy help hydrate the scalp, strengthen hair roots, and restore natural balance.</p>\r\n<h3 data-start=\"656\" data-end=\"668\">Benefits</h3>\r\n<ul data-start=\"669\" data-end=\"925\">\r\n<li data-start=\"669\" data-end=\"712\">\r\n<p data-start=\"671\" data-end=\"712\">Deep scalp cleansing and detoxification</p>\r\n</li>\r\n<li data-start=\"713\" data-end=\"767\">\r\n<p data-start=\"715\" data-end=\"767\">Promotes healthy hair growth and reduces hair fall</p>\r\n</li>\r\n<li data-start=\"768\" data-end=\"815\">\r\n<p data-start=\"770\" data-end=\"815\">Relieves stress, fatigue, and scalp tension</p>\r\n</li>\r\n<li data-start=\"816\" data-end=\"868\">\r\n<p data-start=\"818\" data-end=\"868\">Improves blood circulation and scalp nourishment</p>\r\n</li>\r\n<li data-start=\"869\" data-end=\"925\">\r\n<p data-start=\"871\" data-end=\"925\">Leaves hair feeling refreshed, soft, and revitalized</p>\r\n</li>\r\n</ul>', 1, 1, '2025-12-31 12:37:35', '2026-02-07 10:48:49'),
(22, 'Eyelash Extension', 'service-banner-wHxobEZI.webp', 'service-t-rIkCxyGs.webp', 'Eyelash Extension', NULL, 'eyelash-extension', 'service-kWU5FCDE.webp', '<p>Eyelash extensions are semi-permanent, synthetic or natural fibers applied individually to natural lashes using professional-grade adhesive to increase length, curl, and volume.</p>\r\n<p>They are applied 1-2mm from the eyelid, lasting 3&ndash;6 weeks depending on natural shedding cycles. Popular styles include Classic (1:1), Hybrid (mix), and Volume (fans).<span class=\"uJ19be notranslate\" data-wiz-uids=\"oWk8Sd_g\"><span class=\"vKEkVd\" data-animation-atomic=\"\" data-wiz-attrbind=\"class=oWk8Sd_f/TKHnVd\">&nbsp;</span></span></p>', 1, 1, '2026-01-27 03:00:41', '2026-02-07 10:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services_variants`
--

CREATE TABLE `tbl_services_variants` (
  `vid` int(2) NOT NULL,
  `sv_id` int(2) DEFAULT NULL,
  `v_name` varchar(200) DEFAULT NULL,
  `v_url` varchar(200) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL COMMENT 'in minutes',
  `mrp` int(2) DEFAULT NULL,
  `sp` int(2) DEFAULT NULL,
  `details` text,
  `status` int(2) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services_variants`
--

INSERT INTO `tbl_services_variants` (`vid`, `sv_id`, `v_name`, `v_url`, `photo`, `duration`, `mrp`, `sp`, `details`, `status`, `position`, `added_at`, `update_at`) VALUES
(7, 6, 'Microblading', 'microblading', 'svariant-RlzTsxE2.webp', '', 350, 649, 'Semi-permanent technique creating natural-looking hair strokes for fuller, defined brows.', 1, 0, '2025-10-15 08:09:10', '2025-11-02 07:28:14'),
(8, 2, 'Eyebrow Waxing', 'eyebrow-waxing', 'svariant-x7dy6pSJ.webp', '', 30, 25, 'Quickly shapes eyebrows for a clean, defined look that lasts weeks.', 1, 0, '2025-10-15 10:17:44', NULL),
(9, 2, 'Full Face', 'full-face', 'svariant-Wk6lznjL.webp', '', 70, 59, 'Removes unwanted facial hair for smooth, even, and glowing skin.', 1, 0, '2025-10-15 10:18:56', '2025-11-02 06:22:30'),
(10, 2, 'Side Locks', 'side-locks', 'svariant-AoeDN62a.webp', '', 30, 20, 'Cleans up sideburns for a sharp, well-groomed appearance.', 1, 0, '2025-10-15 10:20:16', '2025-11-02 06:30:41'),
(11, 2, 'Chin Wax', 'chin-wax', 'svariant-pk8p8ylH.webp', '', 20, 15, 'Smooths the chin by removing unwanted hair, giving a flawless finish.', 1, 0, '2025-10-15 10:21:34', '2025-11-02 06:30:21'),
(12, 2, 'Full Arm Wax', 'full-arm-wax', 'svariant-dBEHQYVB.webp', '', 50, 40, 'Removes hair from the entire arm for long-lasting smoothness.', 1, 0, '2025-10-15 10:22:31', NULL),
(13, 2, 'Full Leg Wax', 'full-leg-wax', 'svariant-41c9Vv3V.webp', '', 80, 70, 'Eliminates hair from ankle to thigh, leaving legs silky and hair-free.', 1, 0, '2025-10-15 10:24:07', NULL),
(14, 2, 'Half Arms Wax', 'half-arms-wax', 'svariant-epZOOPcR.webp', '', 40, 30, 'Targets upper or lower arm for smooth, neat skin.', 1, 0, '2025-10-15 10:25:03', NULL),
(15, 2, 'Half Legs Wax', 'half-legs-wax', 'svariant-p1XVWXw3.webp', '', 40, 30, 'Smooths either upper or lower half of the legs with lasting results.', 1, 0, '2025-10-15 10:26:13', NULL),
(16, 2, '3/4 Legs Wax', '-legs-wax', 'svariant-tlXY6XUi.webp', '', 50, 40, 'Removes hair from ankle to mid-thigh for a polished look.', 1, 0, '2025-10-15 10:27:01', NULL),
(17, 2, 'Underarms Wax', 'underarms-wax', 'svariant-avioR5FQ.webp', '', 20, 15, 'Provides hair-free underarms and helps maintain cleaner, smoother skin.', 1, 0, '2025-10-15 10:27:51', NULL),
(18, 2, 'Back Wax', 'back-wax', 'svariant-x1zhS7T9.webp', '', 40, 30, 'Removes hair from the back for smooth, clean skin and easier maintenance.', 1, 0, '2025-10-15 10:29:06', NULL),
(19, 2, 'Tummy Wax', 'tummy-wax', 'svariant-JdRjKWpW.webp', '', 35, 30, 'Clears unwanted hair from the stomach area for a neat, smooth finish.', 1, 0, '2025-10-15 10:29:50', NULL),
(20, 2, 'Full Body Wax', 'full-body-wax', 'svariant-7fGedTG5.webp', '', 250, 249, 'Professional hair removal from head to toe for weeks of smoothness.', 1, 0, '2025-10-15 10:30:43', '2025-11-01 03:55:11'),
(21, 5, 'Full Face Threading', 'full-face-threading', 'svariant-GqaHnLXd.webp', '', NULL, 57, 'Removes unwanted facial hair, leaving your skin smooth and glowing.', 1, 0, '2025-10-17 07:16:34', '2025-11-02 06:17:50'),
(22, 5, 'Eyebrows', 'eyebrows', 'svariant-gp9EqzXC.webp', '', NULL, 20, 'Perfectly shaped brows to enhance your facial features and give a defined look.', 1, 0, '2025-10-17 07:17:36', '2025-11-02 06:18:08'),
(23, 5, 'Lip Threading', 'lip-threading', 'svariant-TLSCy6rz.webp', '', NULL, 10, 'Removes fine hair around the upper lip for a clean, flawless finish.', 1, 0, '2025-10-17 07:18:08', NULL),
(24, 5, 'Chin', 'chin', 'svariant-J6ZmeIPN.webp', '', NULL, 15, 'Eliminates unwanted hair on the chin area, creating a neat and polished look.', 1, 0, '2025-10-17 07:18:41', NULL),
(25, 5, 'Side Locks', 'side-locks', 'svariant-12BRcRjt.webp', '', NULL, 20, 'Cleans and defines side areas of the face for a smooth, refined appearance.', 1, 0, '2025-10-17 07:19:16', NULL),
(26, 5, 'Forehead', 'forehead', 'svariant-oUTch31m.webp', '', NULL, 10, 'Removes stray hair from the forehead, ensuring a clean and even hairline.', 1, 0, '2025-10-17 07:19:56', NULL),
(27, 4, 'Trimming', 'trimming', 'svariant-gb4mpjgY.webp', '', NULL, 40, 'Neatly removes split ends and uneven lengths to maintain healthy, beautiful hair.', 1, 0, '2025-10-17 07:21:25', '2025-11-02 07:22:32'),
(28, 4, 'U Cut', 'u-cut', 'svariant-nggCLFTD.webp', '', NULL, 47, 'A classic U-shaped cut that adds natural volume and flow to your hair.', 1, 0, '2025-10-17 07:22:04', '2025-11-02 07:22:07'),
(29, 4, 'Full Head Layers', 'full-head-layers', 'svariant-YKAd3cy1.webp', '', NULL, 69, 'Multi-layered cut for added movement, bounce, and a stylish finish.', 1, 0, '2025-10-17 07:22:39', '2025-11-02 07:21:49'),
(30, 4, 'Bangs', 'bangs', 'svariant-n78c4rah.webp', '', NULL, 20, 'Front fringes styled to frame your face and give a trendy, youthful look.', 1, 0, '2025-10-17 07:23:10', '2025-11-02 07:20:56'),
(31, 4, 'Feather Cut', 'feather-cut', 'svariant-pIfle4Ey.webp', '', NULL, 59, 'The feather cut adds soft, airy layers, framing your face with volume, texture, and movement.', 1, 0, '2025-10-17 07:23:38', '2025-11-03 14:05:31'),
(32, 4, 'Face Framing', 'face-framing', 'svariant-ni2aMDeb.webp', '', NULL, 30, 'Face framing shapes front hair sections to highlight features, adding dimension, movement, and balance.', 1, 0, '2025-10-17 07:24:18', '2025-11-03 14:04:53'),
(33, 3, 'Root Touch-up', 'root-touch-up', 'svariant-FnFrTpZV.webp', '', NULL, 149, 'Covers grey or grown-out roots to refresh your hair color seamlessly.', 1, 0, '2025-10-17 07:26:22', NULL),
(34, 3, 'Global', 'global', 'svariant-qMcBCv49.webp', '', NULL, 199, 'Price varies according to length and thickness.\r\nFull hair color application from roots to ends for a complete color transformation.', 1, 0, '2025-10-17 07:29:15', '2025-11-04 10:06:45'),
(35, 3, 'Full Head Foils', 'full-head-foils', 'svariant-qT12TB9j.webp', '', NULL, 279, 'Price varies according to length and thickness.\r\nHighlights applied throughout the entire head for a bright, dimensional look.', 1, 0, '2025-10-17 07:30:26', '2025-11-04 10:06:09'),
(36, 3, 'Half Head Foils', 'half-head-foils', 'svariant-EgwLNCzT.webp', '', NULL, 249, 'Price varies according to length and thickness.\r\nPartial highlights to add subtle brightness and natural depth.', 1, 0, '2025-10-17 07:31:01', '2025-11-04 10:05:43'),
(37, 3, 'Lowlights', 'lowlights', 'svariant-mehH8O3p.webp', '', NULL, 229, 'Price varies according to length and thickness.\r\nAdds darker tones to create contrast, richness, and texture in your hair.', 1, 0, '2025-10-17 07:31:43', '2025-11-04 10:03:53'),
(38, 3, 'Balayage', 'balayage', 'svariant-ZegjG3ef.webp', '', NULL, 279, 'Price varies according to length and thickness.\r\nHand-painted highlights for a soft, sun-kissed, and natural gradient effect.', 1, 0, '2025-10-17 07:32:23', '2025-11-04 10:03:22'),
(39, 3, 'Ombre', 'ombre-', 'svariant-esR1RHUK.webp', '', NULL, 229, 'Price varies according to length and thickness.\r\nGradual color transition from dark roots to lighter ends for a bold, stylish finish.', 1, 0, '2025-10-17 07:32:51', '2025-11-04 10:02:25'),
(40, 3, 'Toner', 'toner', 'svariant-Rsn2sn6E.webp', '', NULL, 149, 'Neutralizes brassy or unwanted tones, enhancing your hair’s overall shade and shine.', 1, 0, '2025-10-17 07:33:33', '2025-11-04 09:50:28'),
(41, 3, 'Glow/Shine hair Therapy', 'glowshine-hair-therapy', 'svariant-DSJ47dxN.webp', '', NULL, 99, 'Price varies according to length and thickness.\r\nRestores gloss, smoothness, and vibrancy to dull or color-treated hair.', 1, 0, '2025-10-17 07:34:13', '2025-11-04 09:52:36'),
(42, 6, 'Ombre Brows', 'ombre-brows', 'svariant-kvd9oWGa.webp', '', NULL, 599, 'Softly shaded brows with a gradient effect, darker at the tail and lighter at the front for a polished look.', 1, 0, '2025-10-17 07:36:21', '2025-11-02 07:27:48'),
(43, 6, 'Combination Eyebrows', 'combination-eyebrows', 'svariant-4vFTze5o.webp', '', NULL, 749, 'A blend of microblading and ombre shading for perfectly defined yet natural brows.', 1, 0, '2025-10-17 07:36:51', '2025-11-02 07:27:13'),
(44, 10, 'Eyebrow Tinting', 'eyebrow-tinting', 'svariant-XnLBmxgB.webp', '', NULL, 25, 'Enhances your brows with rich color, giving them a fuller and more defined appearance.', 1, 0, '2025-10-17 07:39:54', '2025-11-02 06:07:06'),
(45, 10, 'Eyelash Tinting', 'eyelash-tinting', 'svariant-3dJFE2V3.webp', '', NULL, 25, 'Darkens and defines your lashes, creating a mascara-like effect without daily makeup.', 1, 0, '2025-10-17 07:40:24', '2025-11-02 06:05:33'),
(46, 10, 'Lash Lift and Tint', 'lash-lift-and-tint', 'svariant-1MlYBcCK.webp', NULL, NULL, 59, 'Gently curls and lifts your natural lashes for a long-lasting, wide-eyed look.', 1, 0, '2025-10-17 07:41:03', '2026-01-27 01:22:48'),
(47, 13, 'Keratin Treatment', 'keratin-treatment', 'svariant-JFrcPKpK.webp', '', NULL, 229, 'Smooths and straightens the hair while reducing frizz.', 1, 0, '2025-10-17 07:53:55', '2025-11-02 09:16:24'),
(48, 13, 'Hair Botox', 'hair-botox', 'svariant-t3WOZTop.webp', '', NULL, 239, 'Repairs damaged hair, reduces frizz and split ends, improves strength, shine, and manageability for months.', 1, 0, '2025-10-17 07:54:30', '2025-11-03 14:16:09'),
(49, 13, 'Anti Frizz Treatment', 'anti-frizz-treatment-', 'svariant-juL8wXRv.webp', '', NULL, 149, 'Smooths, tames frizz, hydrates hair, protects against humidity, leaving hair soft, shiny, and manageable.', 1, 0, '2025-10-17 07:55:08', '2025-11-03 14:15:41'),
(50, 10, 'Henna Tint', 'henna-tint', 'svariant-N4dZ81ag.webp', NULL, NULL, 29, 'Henna brows are a natural, chemical-free tint that colors skin and hairs for weeks.', 1, 0, '2025-11-02 05:57:23', '2026-01-27 01:22:26'),
(51, 2, 'Brazilian waxing', 'brazilian-waxing-', 'svariant-ZaDEIeuj.webp', '', NULL, 65, 'Get ultra-smooth results with our Brazilian Waxing — clean, confident, and beautifully long-lasting.', 1, 0, '2025-11-02 06:58:15', '2025-11-03 12:47:34'),
(52, 2, 'Bikini waxing', 'bikini-waxing-', 'svariant-1ZXhg02q.webp', '', NULL, 42, 'Experience smooth, clean skin with our Bikini Waxing — gentle, precise, and long-lasting confidence.', 1, 0, '2025-11-02 07:01:10', '2025-11-03 12:46:15'),
(53, 2, 'Buttocks and Behind wax', 'buttocks-and-behind-wax', 'svariant-3zwNSNzV.webp', '', NULL, 42, 'Get smooth, hair-free skin with our Buttocks & Behind Wax for a confident, flawless look.', 1, 0, '2025-11-02 07:01:58', '2025-11-03 12:45:10'),
(54, 6, 'Lip pigmentation', 'lip-pigmentation-', 'svariant-f6MHavBB.webp', NULL, NULL, 699, 'A gentle lip tattoo deposits pigment, creating a natural tint for fuller, even, and defined lips.', 1, 0, '2025-11-02 07:33:16', '2025-11-25 06:18:55'),
(55, 6, 'Lip neutralization', 'lip-neutralization', 'svariant-X9rXCKsP.webp', '', NULL, 599, 'Lip neutralization gently corrects darkness, creating an even base for a natural, enhanced lip appearance.', 1, 0, '2025-11-02 07:34:07', '2025-11-03 14:07:33'),
(56, 11, 'Forehead and Frown lines', 'forehead-and-frown-lines', 'svariant-4lg9hKG1.webp', '', NULL, 199, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:12:41', '2025-11-03 10:38:46'),
(57, 11, 'Crow feet (around eyes)', 'crow-feet-around-eyes', 'svariant-AHmio7vC.webp', '', NULL, 149, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:14:39', '2025-11-03 10:38:38'),
(58, 11, 'Neck/Decolletage', 'neckdecolletage', 'svariant-ItuAkR8M.webp', '', NULL, 299, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:16:27', '2025-11-03 10:39:24'),
(59, 11, 'Upper eyelid or Lower eyelid', 'upper-eyelid-or-lower-eyelid', 'svariant-9h6F8MBK.webp', '', NULL, 299, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:19:05', '2025-11-03 10:38:28'),
(60, 11, 'Fibroblast full face', 'fibroblast-full-face-', 'svariant-muPPxr9y.webp', '', NULL, 999, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:46:40', '2025-11-03 10:38:13'),
(61, 11, 'upper and lower eye and eyebrow lift', 'upper-and-lower-eye-and-eyebrow-lift', 'svariant-rG07xR1l.webp', '', NULL, 349, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:48:00', '2025-11-03 10:38:02'),
(62, 13, 'Hair Fall treatment', 'hair-fall-treatment', 'svariant-3eY5A3oI.webp', '', NULL, 89, 'Reduces shedding, strengthens roots, stimulates growth, nourishes scalp, and promotes thicker, healthier-looking hair over time.', 1, 0, '2025-11-02 09:11:05', '2025-11-03 14:15:20'),
(63, 13, 'Dandruff Treatment', 'dandruff-treatment', 'svariant-Eh5JOCF1.webp', '', NULL, 89, 'Dandruff Treatment soothes scalp, eliminates flakes, restores health, reduces hair fall, and boosts growth.', 1, 0, '2025-11-02 09:18:23', '2025-11-03 14:14:11'),
(64, 13, 'Hair Growth tretment with Xosome', 'hair-growth-tretment-with-xosome', 'svariant-ukccdU5s.webp', '', NULL, 119, 'Hair Growth Treatment with Xosome Penetration stimulates follicles, promotes growth, and strengthens hair using deep-absorbing nanotechnology.', 1, 0, '2025-11-02 09:21:38', '2025-11-03 14:13:02'),
(65, 13, 'Nanoplasty', 'nanoplasty-', 'svariant-lKwEf0UQ.webp', '', NULL, 349, 'Nanoplasty repairs, smooths, and strengthens damaged hair deeply using nanotechnology for frizz-free, shiny hair.', 1, 0, '2025-11-02 09:26:33', '2025-11-03 14:11:44'),
(66, 13, 'Shine/Glow Hair therapy', 'shineglow-hair-therapy', 'svariant-0gkqdLqH.webp', '', NULL, 79, 'Hydrated & Glossy Hair Treatment deeply nourishes, restores moisture, repairs damage, smooths frizz, and enhances shine.', 1, 0, '2025-11-02 09:27:34', '2025-11-03 14:10:58'),
(67, 15, 'Non-surgical Wrinkle reduction', 'non-surgical-wrinkle-reduction', 'svariant-PxD3wOGu.webp', NULL, NULL, 12, 'Temporarily paralyses muscles to relax \"dynamic\" lines caused by movement (e.g., frown lines, crow’s feet). Results appear in 2-14 days and last 3-6 months.', 1, 0, '2025-11-02 10:16:42', '2026-01-27 01:29:07'),
(68, 15, 'Facial volume restoration treatment', 'facial-volume-restoration-treatment', 'svariant-4WsOHITt.webp', NULL, NULL, 599, 'Hyaluronic acid Fillers are non-surgical cosmetic treatments used to restore volume, smooth wrinkles, and enhance facial contours.', 1, 0, '2025-11-02 10:18:07', '2026-01-27 01:31:00'),
(69, 12, 'Tag Removal', 'tag-removal', 'svariant-HhKIZreL.webp', '', NULL, 99, '**Skin Tag Removal** is a quick and safe cosmetic procedure to **eliminate small, harmless skin growths** that appear on areas like the neck, underarms, eyelids, or body folds. ✨💆‍♀️', 1, 0, '2025-11-02 10:24:56', NULL),
(70, 12, 'Mole Removal', 'mole-removal', 'svariant-a6hGZh1s.webp', '', NULL, 59, '**Mole Removal** is a safe and professional procedure to **eliminate unwanted or suspicious moles** for cosmetic or medical reasons. ✨💆‍♀️', 1, 0, '2025-11-02 10:25:57', NULL),
(71, 18, 'Skin analysis', 'skin-analysis', 'svariant-ebK9pYf8.webp', '', NULL, 49, 'Skin Analysis is a professional assessment that helps identify your skin type, condition, and specific concerns to create a personalized skincare plan.', 1, 0, '2025-11-03 07:52:29', '2025-11-04 06:39:34'),
(72, 18, 'Scalp Analysis', 'scalp-analysis', 'svariant-iLytR3BC.webp', '', NULL, 49, 'Scalp Analysis is a professional examination that helps determine the health of your scalp and hair follicles to identify issues like dandruff, hair loss, or oil imbalance.', 1, 0, '2025-11-03 07:54:23', '2025-11-04 06:39:19'),
(73, 16, 'BB Glow', 'bb-glow', 'svariant-WDA1Co6P.webp', '60', NULL, 199, 'Infuses tinted serums to brighten, even skin tone, and reduce dullness for long-lasting glow.', 1, 0, '2025-11-03 08:31:18', '2026-01-27 01:21:19'),
(74, 16, 'Oxygeneo Facial', 'oxygeneo-facial', 'svariant-VOcngim0.webp', '', NULL, 189, 'Exfoliates, infuses, and oxygenates the skin to enhance texture, hydration, and youthful radiance.', 1, 0, '2025-11-03 08:32:14', '2025-11-04 06:16:02'),
(75, 16, 'Healing Facial', 'healing-facial', 'svariant-TdKz811d.webp', '', NULL, 149, 'Relieves stress, improves circulation, and restores natural glow through soothing massage and deep relaxation.', 1, 0, '2025-11-03 08:37:10', '2025-11-04 06:15:45'),
(76, 16, 'Hydrafacial Advanced', 'hydrafacial-advanced', 'svariant-4wVZea66.webp', '', NULL, 229, 'Deeply cleanses, exfoliates, and hydrates the skin using a non-invasive multi-step facial treatment.', 1, 0, '2025-11-03 08:40:13', '2025-11-04 06:15:25'),
(77, 17, 'Plasma Jet', 'plasma-jet', 'svariant-HxH6rnmu.webp', '', NULL, 249, 'Plasma Treatment is an advanced, non-surgical cosmetic therapy that uses plasma energy to rejuvenate the skin and stimulate healing.', 1, 11, '2025-11-03 08:45:16', '2025-11-04 06:22:57'),
(78, 17, 'Microneedling', 'microneedling', 'svariant-DPb02h5m.webp', '', NULL, 249, 'Microneedling is a minimally invasive skin treatment that stimulates collagen and elastin production to improve skin texture, tone, and overall appearance.', 1, 10, '2025-11-03 08:51:31', '2025-11-04 06:23:20'),
(79, 17, 'Serum Penetration (xosome)', 'serum-penetration-xosome', 'svariant-czeacRgd.webp', '', NULL, 229, 'Serum Penetration with Xosome is an advanced skincare treatment that uses Xosome technology to deliver active ingredients deep into the skin for maximum effectiveness.', 1, 9, '2025-11-03 08:53:30', '2025-11-04 06:55:50'),
(80, 17, 'HIFU (Skin Tightening)', 'hifu-skin-tightening', 'svariant-5on6g3Yb.webp', '', NULL, 399, 'HIFU (High-Intensity Focused Ultrasound) is a non-surgical, non-invasive treatment that tightens and lifts the skin using focused ultrasound energy.', 1, 8, '2025-11-03 08:57:58', '2025-11-04 06:29:28'),
(81, 17, 'Rosacea', 'rosacea', 'svariant-rTcSkVie.webp', '', NULL, 169, 'Rosacea Treatment is a specialized skincare approach designed to reduce redness, inflammation, and visible blood vessels caused by rosacea.', 1, 7, '2025-11-03 09:07:05', '2025-11-04 06:29:03'),
(82, 17, 'Chemical Peels', 'chemical-peels', 'svariant-YNWsX581.webp', '', NULL, 129, 'Chemical Peel is a professional skincare treatment that **removes dead skin cells and stimulates skin regeneration** using specially formulated acids.', 1, 6, '2025-11-03 09:12:41', '2025-11-04 06:22:28'),
(83, 17, 'Acne and acne scarring', 'acne-and-acne-scarring', 'svariant-ZADLZeVK.webp', '', NULL, 189, 'Acne & Acne Scarring Treatment is a specialized skincare approach designed to treat active acne and reduce the appearance of scars for clearer, smoother skin with our Medical Grade Products.', 1, 5, '2025-11-03 09:14:53', '2025-11-04 06:19:25'),
(84, 17, 'Back Acne and Scarring', 'back-acne-and-scarring', 'svariant-vJaKukh0.webp', '', NULL, 159, 'Back Acne & Scarring Treatment is a targeted skincare solution designed to treat active back acne and reduce acne scars, leaving your skin smooth and clear.', 1, 4, '2025-11-03 09:16:48', '2025-11-04 06:18:58'),
(85, 17, 'Melasma', 'melasma', 'svariant-j3f6tmrj.webp', '', NULL, 249, 'Melasma Treatment is a professional skincare approach designed to reduce pigmentation, even out skin tone, and prevent recurrence using a combination of advanced treatments and medical-grade products.', 1, 3, '2025-11-03 09:19:23', '2025-11-04 06:18:28'),
(86, 17, 'Carbon laser peel Facial', 'carbon-laser-peel-facial', 'svariant-NbT27rDX.webp', '', NULL, 199, 'Carbon Laser Peel is a non-invasive facial treatment that exfoliates, cleanses, and rejuvenates the skin while reducing acne and pigmentation.', 1, 12, '2025-11-03 09:36:39', '2025-11-04 06:18:02'),
(87, 19, 'Bikini Sides IPL', 'bikini-sides-ipl', 'svariant-qnbprZNn.webp', NULL, NULL, 69, 'Removes unwanted hair from bikini sides, leaving your skin smooth, soft, and irritation-free.', 1, 0, '2025-11-04 06:58:17', '2025-12-31 10:13:12'),
(88, 19, 'Brazilian Labia IPL', 'brazilian-labia-ipl', 'svariant-7qInyYp9.webp', '', NULL, 79, 'Targets hair around the labia area for a clean, long-lasting, and comfortable smooth finish.', 1, 0, '2025-11-04 06:58:43', '2025-11-04 09:36:24'),
(89, 19, 'Brazilian Shaft IPL (Excluding Scrotum)', 'brazilian-shaft-ipl-excluding-scrotum', 'svariant-1p1R2nqa.webp', '', NULL, 199, 'Precisely removes hair along the shaft, excluding scrotum, ensuring a sleek and confident look.', 1, 0, '2025-11-04 06:59:05', '2025-11-04 09:36:10'),
(90, 19, 'Full Body IPL', 'full-body-ipl', 'svariant-jhvquQ3o.webp', '', NULL, 450, 'Comprehensive treatment covering the entire body for smooth, hair-free, and radiant skin all over.', 1, 0, '2025-11-04 06:59:34', '2025-11-04 09:35:52'),
(91, 19, 'Chin IPL add on', 'chin-ipl-add-on', 'svariant-hKr5uqcw.webp', '', NULL, 10, 'Removes coarse chin hair, leaving your face softer, clearer, and beautifully smooth.', 1, 0, '2025-11-04 07:00:56', '2025-11-04 09:35:26'),
(93, 19, 'Fingers and Toes IPL Add on', 'fingers-and-toes-ipl-add-on', 'svariant-diCkDykB.webp', '', NULL, 10, 'Eliminates fine hair from fingers and toes, giving a polished, neat appearance to hands and feet.', 1, 0, '2025-11-04 07:01:41', '2025-11-04 09:35:00'),
(94, 19, '1/2 Arm Lower IPL', '-arm-lower-ipl', 'svariant-xaNCRToO.webp', '', NULL, 89, 'Targets hair from elbow to wrist, providing silky-smooth, hair-free lower arms.', 1, 0, '2025-11-04 07:01:58', '2025-11-04 09:34:48'),
(95, 19, '1/2 Arm top IPL', '-arm-top-ipl', 'svariant-ygFBakYm.webp', '', NULL, 99, 'Removes unwanted hair from upper arms, giving a clean, even-toned, and smooth finish.', 1, 0, '2025-11-04 07:02:19', '2025-11-04 09:34:41'),
(96, 19, '1/2 Leg Lower IPL', '-leg-lower-ipl', 'svariant-D4oLSdbV.webp', '', NULL, 99, 'Removes hair from knees to ankles for soft, touchable, and long-lasting smooth legs.', 1, 0, '2025-11-04 07:02:39', '2025-11-04 09:34:26'),
(97, 19, '1/2 Leg Top IPL', '-leg-top-ipl', 'svariant-LRc8EBUu.webp', '', NULL, 109, 'Eliminates hair from thighs to knees, ensuring smoother, flawless upper legs.', 1, 0, '2025-11-04 07:03:08', '2025-11-04 09:34:17'),
(98, 19, 'Inner Bottom with Labia IPL Add on', 'inner-bottom-with-labia-ipl-add-on', 'svariant-EJxOjZjf.webp', '', NULL, 10, 'Targets intimate inner bottom and labia areas, ensuring cleanliness and lasting smoothness.', 1, 0, '2025-11-04 07:04:39', '2025-11-04 09:41:05'),
(99, 19, 'Inner Bottom with Shaft IPL Add on', 'inner-bottom-with-shaft-ipl-add-on', 'svariant-HjD6ey0F.webp', '', NULL, 10, 'Removes hair from inner bottom and shaft area for smooth, hygienic, and confident skin.', 1, 0, '2025-11-04 07:05:02', '2025-11-04 09:33:20'),
(100, 19, 'Back IPL', 'back-ipl', 'svariant-Vb1Rxmt7.webp', '', NULL, 129, 'Removes unwanted back hair for smooth, clear, and evenly toned skin.', 1, 0, '2025-11-04 07:05:23', '2025-11-04 09:33:08'),
(101, 19, 'Back of thighs or Inner thighs IPL', 'back-of-thighs-or-inner-thighs-ipl', 'svariant-wVumYZdo.webp', '', NULL, 59, 'Targets stubborn hair on back or inner thighs, leaving the area silky and irritation-free.', 1, 0, '2025-11-04 07:05:47', '2025-11-04 09:32:55'),
(102, 19, 'Beard Sculpt IPL', 'beard-sculpt-ipl', 'svariant-79zkyd4N.webp', '', NULL, 69, 'Defines beard edges perfectly, maintaining a clean, sharp, and well-groomed look.', 1, 0, '2025-11-04 07:06:13', '2025-11-04 09:32:43'),
(103, 19, 'Breast bone + Nipples IPL Add on', 'breast-bone--nipples-ipl-add-on', 'svariant-nHHtpb5j.webp', '', NULL, 15, 'Safely removes fine hair around chest and nipples, leaving the skin soft and smooth.', 1, 0, '2025-11-04 07:06:41', '2025-11-04 09:31:47'),
(104, 19, 'Chest IPL', 'chest-ipl', 'svariant-UvklL0JG.webp', '', NULL, 89, 'Eliminates chest hair for a clean, smooth, and masculine or feminine refined appearance.', 1, 0, '2025-11-04 07:06:58', '2025-11-04 09:31:34'),
(105, 19, 'Chin IPL', 'chin-ipl', 'svariant-cAiSWcuj.webp', '', NULL, 29, 'Removes stubborn chin hair, improving facial texture and providing a soft, flawless finish.', 1, 0, '2025-11-04 07:07:13', '2025-11-04 09:31:12'),
(106, 19, 'Full Arm IPL', 'full-arm-ipl', 'svariant-mKiBo91X.webp', '', NULL, 129, 'Covers both upper and lower arms for consistently smooth, hair-free, radiant skin.', 1, 0, '2025-11-04 07:07:29', '2025-11-04 09:31:01'),
(107, 19, 'Full Face IPL', 'full-face-ipl', 'svariant-toJ4IDSb.webp', '', NULL, 69, 'Removes facial hair gently, revealing bright, smooth, and even-toned skin.', 1, 0, '2025-11-04 07:07:46', '2025-11-04 09:30:42'),
(108, 19, 'Full Leg IPL', 'full-leg-ipl', 'svariant-Gz9VFc1r.webp', '', NULL, 199, 'Removes hair from thighs to ankles, ensuring long-lasting smoothness and confidence.', 1, 0, '2025-11-04 07:08:05', '2025-11-04 09:30:29'),
(109, 19, 'Inner + Outer Bottom IPL', 'inner--outer-bottom-ipl', 'svariant-y0UdFxuK.webp', '', NULL, 59, 'Targets both inner and outer bottom areas for complete smoothness and comfort.', 1, 0, '2025-11-04 07:08:22', '2025-11-04 09:30:05'),
(110, 19, 'IPL Consultation + Test Patch Redeemable', 'ipl-consultation--test-patch-redeemable', 'svariant-4daok38E.webp', '', NULL, 49, 'Personalized skin test to ensure IPL suitability and comfort before your full treatment.', 1, 0, '2025-11-04 07:08:40', '2025-11-04 09:29:49'),
(111, 19, 'Lip IPL', 'lip-ipl', 'svariant-ADny3jct.webp', '', NULL, 20, 'Gently removes fine upper lip hair, leaving the skin smooth and makeup-ready.', 1, 0, '2025-11-04 07:08:56', '2025-11-04 09:29:38'),
(112, 19, 'Neck Front or Back', 'neck-front-or-back', 'svariant-xDDZ3e2R.webp', '', NULL, 39, 'Removes neck hair for a clean, polished look from any angle.', 1, 0, '2025-11-04 07:09:13', '2025-11-04 09:29:29'),
(113, 19, 'Outer Bottom IPL', 'outer-bottom-ipl', 'svariant-eVM0mFB3.webp', '', NULL, 49, 'Targets outer bottom area for hygienic, smooth, and irritation-free skin.', 1, 0, '2025-11-04 07:09:34', '2025-11-04 09:29:06'),
(114, 19, 'Shoulders IPL', 'shoulders-ipl', 'svariant-rtySzenl.webp', '', NULL, 59, 'Removes unwanted shoulder hair for a clean, well-groomed, and even-toned appearance.', 1, 0, '2025-11-04 07:09:48', '2025-11-04 09:27:57'),
(115, 19, 'Sides of Face IPL', 'sides-of-face-ipl', 'svariant-L8SeJBp8.webp', '', NULL, 39, 'Smooths facial sides by removing fine hair, giving a soft, radiant glow.', 1, 0, '2025-11-04 07:10:01', '2025-11-04 09:27:32'),
(116, 19, 'Stomach IPL', 'stomach-ipl', 'svariant-zQgqlZBQ.webp', '', NULL, 89, 'Eliminates unwanted hair from the stomach area for smooth, confident skin.', 1, 0, '2025-11-04 07:10:16', '2025-11-04 09:27:08'),
(117, 19, 'Underarms IPL', 'underarms-ipl', 'svariant-ZO6PiUU0.webp', '', NULL, 39, 'Removes underarm hair effectively, reducing regrowth and leaving skin fresh and smooth.', 1, 0, '2025-11-04 07:10:37', '2025-11-04 09:26:46'),
(119, 17, 'Skin Boosters', 'skin-boosters', 'svariant-brGcCf7A.webp', '30', NULL, 349, 'Skin Boosters are injectable medical treatments designed to deeply hydrate and improve skin quality.', 1, 2, '2025-12-31 11:55:54', '2025-12-31 11:58:29'),
(120, 21, 'Japanese Head Spa', 'japanese-head-spa-', 'svariant-w7VgJIbj.webp', '60', NULL, 159, 'Japanese Head Spa is a luxury scalp therapy combining deep cleansing, pressure massage & steam therapy. It improves blood circulation, removes buildup, reduces stress, controls dandruff, and boosts healthy hair growth—while giving total relaxation 🌿💆‍♀️', 1, 1, '2026-01-05 10:07:01', NULL),
(121, 21, 'Japanese Head Spa & Glow Radiance Therapy', 'japanese-head-spa--glow-radiance-therapy-', 'svariant-FdpsHJt6.webp', '90', NULL, 249, 'Experience deep scalp detox, soothing Japanese massage & advanced glow therapy in one treatment. It improves scalp health, boosts hair growth, relieves stress, hydrates skin, and leaves you relaxed with radiant, healthy glow 🌿✨', 1, 2, '2026-01-05 10:09:24', NULL),
(123, 15, 'Collagen Injection', 'collagen-injection', 'svariant-ZihKy5jM.webp', '60', NULL, 799, 'Sculptra is an injectable cosmetic treatment made from poly-L-lactic acid. It works by stimulating your body’s natural collagen production, gradually restoring facial volume and improving skin firmness. Results appear over weeks to months and can last up to two years ( depending on current skin situtation)', 1, 3, '2026-01-08 10:40:01', NULL),
(124, 20, 'PRP for Hair growth and thinning', 'prp-for-hair-growth-and-thinning', 'svariant-K9asEMwz.webp', '60', NULL, 359, 'Platelet-rich plasma therapy supports hair regrowth by stimulating follicle stem cells, enhancing vascular supply, and restoring growth signaling in miniaturized hair follicles. PRP doesn’t create new hair—it revitalizes the follicles you still have.', 1, 1, '2026-01-26 09:43:13', NULL),
(125, 20, 'PRP for full face', 'prp-for-full-face', 'svariant-d3OMwinx.webp', '60', NULL, 499, 'The regenerative effects of PRP on facial skin are driven by platelet-derived growth factors that enhance cellular proliferation, extracellular matrix remodeling, and vascularization. PRP facial therapy uses the body’s own growth factors to improve skin texture, elasticity, and overall facial rejuvenation at a cellular level.', 1, 2, '2026-01-26 09:50:27', '2026-01-26 09:50:58'),
(126, 22, 'Classic Full set Natural Look', 'classic-full-set-natural-look', 'svariant-7EpWhRHu.webp', NULL, NULL, 99, 'Price varies from 99 to 180', 1, 1, '2026-01-27 03:42:47', NULL),
(127, 22, 'Classic infill', 'classic-infill-', 'svariant-r6B30bT2.webp', NULL, NULL, 59, 'Price varies from 49 to 99', 1, 2, '2026-01-27 03:43:55', NULL),
(128, 22, 'Hybrid/Mega volume full set', 'hybridmega-volume-full-set', 'svariant-dKDC8U3p.webp', NULL, NULL, 129, 'Price varies from 129 to 229', 1, 3, '2026-01-27 03:48:20', NULL),
(129, 22, 'Hybrid/Mega Volume infill', 'hybridmega-volume-infill', 'svariant-83Z3r8zC.webp', NULL, NULL, 59, 'Price varies from 59 to 129', 1, 4, '2026-01-27 03:49:02', '2026-01-27 03:49:29'),
(130, 22, 'Lash Removal', 'lash-removal', 'svariant-Zm7uOTuf.webp', NULL, NULL, 10, 'Price Varies from 10 to 50', 1, 5, '2026-01-27 03:50:57', NULL),
(131, 21, 'Indian Hot Oil head massage', 'indian-hot-oil-head-massage', 'svariant-3SZyvBSB.webp', '30', NULL, 65, 'Indian head massage for 30mins effectively reduces tension headaches, migraines, eyestrain, and stiffness in the neck and shoulders.\r\nParticipants reported immediate feelings of calmness, a reduction in anxiety, and an overall sense of psychological well-being post-treatment. The practice of Indian Head Massage stimulates blood flow to the scalp, neck, and shoulders, enhancing circulation to these areas.', 1, 3, '2026-01-27 03:58:50', '2026-01-27 04:01:07'),
(132, 21, 'Back, Neck, Shoulder massage', 'back-neck-shoulder-massage-', 'svariant-tg7jvJHj.webp', '30', NULL, 65, '(30 mins )Concentrated on the back, neck and shoulder area, specific oils are used to release tension and help soothe tight, sore muscles, which result from wear and tear or incorrect posture. This massage applies pressure to muscles, in order to increase the oxygen flow in the blood and release toxins from stressed areas.', 1, 4, '2026-01-27 04:00:52', NULL),
(133, 21, 'Reflexology', 'reflexology-', 'svariant-vFEC8giv.webp', '30', NULL, 65, '30 Mins. Reflexology is a non-invasive, complementary therapy that applies pressure to specific points on the feet, hands, or ears, which are believed to correspond to bodily organs and systems. It aims to reduce stress, improve circulation, induce deep relaxation, and support natural healing. It is often used for managing pain, anxiety, and fatigue.', 1, 5, '2026-01-27 04:02:42', NULL),
(134, 21, 'Hot Stone Oil massage', 'hot-stone-oil-massage', 'svariant-cmKdD8tg.webp', '46', NULL, 89, 'Hot stone massage, is a therapeutic technique using smooth, heated basalt stones—placed on specific body points or used as massage tools—to deeply relax muscles, improve circulation, and ease pain. It alleviates tension, reduces stress, and aids in healing injuries by combining heat therapy with traditional massage techniques.', 1, 6, '2026-01-27 04:06:19', '2026-01-27 04:13:22'),
(135, 21, 'Full Body Massage', 'full-body-massage-', 'svariant-9pmLyWod.webp', '60', NULL, 129, 'Full Body Hot oil and stone massage for Men and women', 1, 7, '2026-01-27 04:12:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_book_log`
--

CREATE TABLE `tbl_service_book_log` (
  `log_id` int(11) NOT NULL,
  `sv_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'tbl_service_time.st_id',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `dues_amount` int(11) NOT NULL,
  `service_date` date NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-Pending, 2-Approved, 3-Declined, 4-Completed',
  `added_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service_book_log`
--

INSERT INTO `tbl_service_book_log` (`log_id`, `sv_id`, `vid`, `st_id`, `total_amount`, `paid_amount`, `dues_amount`, `service_date`, `first_name`, `last_name`, `email`, `dob`, `country`, `phone`, `message`, `status`, `added_at`) VALUES
(45, 18, 71, 2, 49, 50, -1, '2026-01-28', 'Chloe', 'Thornton', 'chloe.c.thornton@gmail.com', '1999-07-22', 'AU', '0478679199', 'Just after a skin consult on treatments/products you would recommend - mains concerns uneven skin tone and breakouts on jawline', 1, '2026-01-24 05:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_book_online`
--

CREATE TABLE `tbl_service_book_online` (
  `id` int(11) NOT NULL,
  `sv_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'tbl_service_time.st_id',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `dues_amount` int(11) NOT NULL,
  `service_date` date NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `country` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-Pending, 2-Approved, 3-Declined, 4-Completed',
  `remind` int(2) NOT NULL COMMENT '0-No, 1-Yes',
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service_book_online`
--

INSERT INTO `tbl_service_book_online` (`id`, `sv_id`, `vid`, `st_id`, `total_amount`, `paid_amount`, `dues_amount`, `service_date`, `first_name`, `last_name`, `email`, `dob`, `country`, `phone`, `message`, `status`, `remind`, `payment_mode`, `payment_status`, `paymentIntentId`, `txnId`, `added_at`, `update_at`) VALUES
(1, 17, 80, 5, 399, 399, 0, '2025-12-12', 'Jane', 'Wood', 'jpwood@tpg.com.au', NULL, 'AU', '0414744770', 'Hello, I am not 100% sure if this is the correct treatment for me, and am hoping you can help with this at my appointment.  Thank you :-)', 1, 0, 'Stripe', 'succeeded', 'pi_3SdHzEK6Q8NnuhoC09gTpLNi', 'TXN17654906992479', '2025-12-11 22:04:59', '2026-01-05 10:00:05'),
(2, 11, 57, 3, 149, 149, 0, '2025-12-18', 'Robynne', 'Croft', 'robynnecroft@gmail.com', NULL, 'AU', '0488707766', '', 1, 1, 'Stripe', 'succeeded', 'pi_3SepGEK6Q8NnuhoC0Gg3CZe1', 'TXN17658566468611', '2025-12-16 03:44:06', '2025-12-16 06:30:10'),
(3, 18, 71, 4, 49, 49, 0, '2026-01-02', 'Meenu', 'Sharma', 'sharmameenu41@gmail.com', NULL, 'AU', '0416799928', 'For 2 people', 2, 1, 'Stripe', 'succeeded', 'pi_3SjxLXK6Q8NnuhoC12Abgtmt', 'TXN17670795843686', '2025-12-30 07:26:24', '2026-01-05 08:25:38'),
(4, 2, 12, 5, 40, 40, 0, '2026-01-02', 'Meenu', 'Sharma', 'sharmameenu41@gmail.com', NULL, 'AU', '0416799928', 'Hand wax for 2 people', 2, 1, 'Stripe', 'succeeded', 'pi_3Sk2aoK6Q8NnuhoC11Utpg66', 'TXN17670997908040', '2025-12-30 13:03:10', '2026-01-05 08:25:11'),
(5, 3, 34, 3, 199, 199, 0, '2026-01-03', 'Catherine ', 'Irvine', 'cathymay2411@gmail.com', NULL, 'AU', '0409443427', '', 2, 1, '', '', '', '', '2025-12-31 11:01:55', '2026-01-05 08:25:00'),
(6, 2, 18, 8, 30, 30, 0, '2026-01-04', 'Will', 'Anderson', 'will.anderson.will@gmail.com', NULL, 'AU', '0429420461', '', 2, 1, 'Stripe', 'succeeded', 'pi_3SkehtK6Q8NnuhoC1mEl7JGV', 'TXN17672462581908', '2026-01-01 05:44:18', '2026-01-05 08:24:15'),
(7, 3, 33, 4, 149, 149, 0, '2026-01-03', 'Saumya', 'menon', 'saumyamenon2709@gmail.com', NULL, 'AU', '0438537283', '', 2, 1, '', '', '', '', '2026-01-01 10:23:19', '2026-01-05 08:24:33'),
(8, 4, 27, 1, 40, 50, -10, '2026-01-03', 'Gabs', 'May', 'gabrielle.may@outlook.com', NULL, 'AU', '0416401864', '', 2, 0, 'Stripe', 'succeeded', 'pi_3SkwHnK6Q8NnuhoC0MCnuPh9', 'TXN17673138995346', '2026-01-02 00:31:39', '2026-01-02 10:51:15'),
(9, 16, 76, 2, 229, 229, 0, '2026-01-04', 'Anita ', 'DHILLON', 'anita.dhillon@y7mail.com', NULL, 'AU', '0481839798', '', 2, 1, '', '', '', '', '2026-01-02 11:13:47', '2026-01-05 08:24:50'),
(10, 4, 28, 8, 47, 50, -3, '2026-01-23', 'Jismi', 'Shinto', 'jismikc871@gmail.com', '1991-01-31', 'AU', '0455207885', 'I would like to do deep U cut.', 1, 1, 'Stripe', 'succeeded', 'pi_3Sn9LfK6Q8NnuhoC1LeIOgFs', 'TXN17678402279666', '2026-01-08 02:43:47', '2026-01-21 00:30:15'),
(11, 3, 36, 7, 249, 50, 199, '2026-01-22', 'Jismi', 'Shinto', 'jismikc871@gmail.com', '1991-01-31', 'AU', '0455207885', 'I would to do changes  the way in which applying the hair colour', 2, 1, 'Stripe', 'succeeded', 'pi_3Sn9RsK6Q8NnuhoC0fcnyp0b', 'TXN17678411112919', '2026-01-13 01:27:03', '2026-01-20 00:30:08'),
(13, 15, 123, 2, 799, 200, 599, '2026-01-31', 'Joanne', 'Croft', 'joannelouisecroft@gmail.com', '1984-09-16', 'AU', '0438427017', '', 2, 1, 'Stripe', 'succeeded', 'pi_3SnTf2K6Q8NnuhoC1pTQpfRS', 'TXN17679188642082', '2026-01-09 00:34:24', '2026-01-29 00:30:12'),
(14, 21, 120, 8, 159, 50, 109, '2026-01-21', 'Sonia', 'Paul', 'soniamrudula@gmail.com', '1982-04-21', 'AU', '0422062308', 'Head spa combo offer', 2, 1, 'Stripe', 'succeeded', 'pi_3SnTugK6Q8NnuhoC0efnperg', 'TXN17679198253990', '2026-01-09 00:50:25', '2026-01-19 00:30:10'),
(15, 21, 120, 7, 159, 50, 109, '2026-02-27', 'Neha', 'Bhullar', 'sharmaneha.1709@gmail.com', '1970-01-01', 'AU', '0466973735', '', 2, 1, 'Stripe', 'succeeded', 'pi_3SnWeMK6Q8NnuhoC1scz7p0P', 'TXN17679302144207', '2026-01-09 21:18:16', '2026-02-25 00:30:19'),
(16, 21, 120, 2, 159, 50, 109, '2026-01-11', 'jisa', 'jose', 'jjisa22@yahoo.com.au', '1987-01-09', 'AU', '0424139618', 'Japanese head eyebrows + full face threading', 2, 1, 'Stripe', 'succeeded', 'pi_3SnY4QK6Q8NnuhoC1ydXzPFh', 'TXN17679357879730', '2026-01-09 21:17:30', '2026-01-09 21:17:30'),
(18, 21, 121, 8, 249, 50, 199, '2026-01-15', 'Ramandeep', 'Kaur', 'jassitatla01@gmail.com', '1996-01-20', 'AU', '0469007965', 'There is no option of 3:30 pm \r\nRefer by navdeep( lyons)', 2, 1, 'Stripe', 'succeeded', 'pi_3SoFyqK6Q8NnuhoC1oWw5sEs', 'TXN17681045899958', '2026-01-11 09:30:08', '2026-01-13 00:30:16'),
(19, 3, 38, 2, 279, 50, 229, '2026-01-22', 'Athira', 'Chacko', 'athirakc333@gmail.com', '1996-01-30', 'AU', '0427853617', '', 2, 1, 'Stripe', 'succeeded', 'pi_3SoHyMK6Q8NnuhoC1uON6yyJ', 'TXN17681122638763', '2026-01-11 10:35:45', '2026-01-20 00:30:08'),
(20, 4, 32, 3, 30, 50, -20, '2026-01-22', 'Athira', 'Chacko', 'athirakc333@gmail.com', '1996-01-30', 'AU', '0427853617', '', 1, 1, 'Stripe', 'succeeded', 'pi_3SoyV9K6Q8NnuhoC1Qxjpwqw', 'TXN17682757165143', '2026-01-13 03:41:56', '2026-01-20 00:30:08'),
(21, 3, 36, 14, 249, 0, 249, '2026-01-15', 'Samara', 'Abdel-Massih', 'kristie_am@hotmail.com', '1970-01-01', 'AU', '0405565600', '', 2, 1, '', '', '', '', '2026-01-13 04:23:11', '2026-01-13 06:30:15'),
(22, 21, 120, 4, 159, 50, 109, '2026-01-22', 'Geetu', 'Kishnani', 'geetud2000@yahoo.co.in', '1970-01-01', 'AU', '0406179964', '', 2, 1, 'Stripe', 'succeeded', 'pi_3SpGPRK6Q8NnuhoC0FyzEqFP', 'TXN17683445823896', '2026-01-15 09:45:21', '2026-01-20 00:30:08'),
(23, 16, 76, 8, 229, 50, 179, '2026-01-30', 'Rubitha', 'Devassia', 'rubitha123@gmail.com', '1970-01-01', 'AU', '0459657617', '', 2, 1, 'Stripe', 'succeeded', 'pi_3SpOkxK6Q8NnuhoC1xbbH72D', 'TXN17683766462370', '2026-01-15 09:43:26', '2026-01-28 00:30:18'),
(24, 5, 22, 4, 20, 50, -30, '2026-01-21', 'Jincy', 'Joseph', 'jincyphilo30@gmail.com', '1970-01-01', 'AU', '0426250516', 'For Spa and massage', 1, 1, 'Stripe', 'succeeded', 'pi_3SqAziK6Q8NnuhoC0snYFmuq', 'TXN17685620845061', '2026-01-16 11:14:44', '2026-01-19 00:30:10'),
(25, 21, 120, 2, 159, 50, 109, '2026-01-21', 'Natalie', 'Graham', 'nattalie_222@hotmail.com', '1987-09-22', 'AU', '0432882207', '', 1, 0, 'Stripe', 'succeeded', 'pi_3SrnU5K6Q8NnuhoC14iQqhTR', 'TXN17689483287345', '2026-01-20 22:32:08', NULL),
(26, 10, 44, 2, 25, 50, -25, '2026-01-23', 'Manjinder', 'Kaur', 'mansaini1988@gmail.com', '1970-01-01', 'AU', '0424751636', '', 1, 0, 'Stripe', 'succeeded', 'pi_3SsSJIK6Q8NnuhoC0riGzimx', 'TXN17691052345605', '2026-01-22 18:07:14', NULL),
(27, 18, 71, 2, 49, 50, -1, '2026-01-28', 'Chloe', 'Thornton', 'chloe.c.thornton@gmail.com', '1999-07-22', 'AU', '0478679199', 'Just after a skin consult on treatments/products you would recommend - mains concerns uneven skin tone and breakouts on jawline', 1, 1, 'Stripe', 'succeeded', 'pi_3SszhBK6Q8NnuhoC0duvRVg4', 'TXN17692335972363', '2026-01-24 05:46:37', '2026-01-26 00:30:12'),
(28, 4, 29, 9, 69, 0, 69, '2026-01-31', 'Nikita', 'Chapman', 'vidya2808@gmail.com', '2013-01-20', 'AU', '0406402003', '', 1, 1, '', '', '', '', '2026-01-29 07:19:38', '2026-01-29 09:30:15'),
(29, 21, 120, 6, 159, 0, 159, '2026-01-31', 'Nikki', 'Wawryk', 'nikki.lw86@gmail.com', '1986-04-04', 'AU', '0411341860', '', 1, 0, '', '', '', '', '2026-01-30 08:45:36', NULL),
(30, 4, 29, 9, 69, 0, 69, '2026-02-01', 'Vidya', 'Chapman', 'vidya2808@gmail.com', '2026-02-01', 'AU', '0406402003', 'Full layer cut for', 1, 0, '', '', '', '', '2026-01-31 21:25:55', NULL),
(31, 21, 120, 9, 159, 0, 159, '2026-03-06', 'Kaylie', 'Cochrane', 'pinkstars17@hotmail.com', '1988-09-21', 'AU', '0413362537', '', 2, 0, '', '', '', '', '2026-02-10 02:55:51', '2026-02-10 02:55:51'),
(32, 2, 9, 2, 59, 0, 59, '2026-02-13', 'Tracey', 'Lenihan', 'tglenihan@gmail.com', '1970-01-01', 'AU', '0401701832', '', 2, 1, '', '', '', '', '2026-02-10 02:58:06', '2026-02-11 00:30:14'),
(33, 2, 9, 5, 59, 0, 59, '2026-02-11', 'Tracey', 'Lenihan', 'tglenihan@gmail.com', '1970-01-01', 'AU', '0401701832', 'I\'d previously booked an appt for Fri 13 Feb at 10am for the same treatment, can you please cancel that one? Thanks', 2, 0, '', '', '', '', '2026-02-10 00:04:02', '2026-02-10 02:53:36'),
(34, 21, 120, 3, 159, 49, 110, '2026-02-28', 'Rebecca', 'Henness', 'bechenness@gmail.com', '1970-01-01', 'AU', '0405148998', '', 2, 1, '', '', '', '', '2026-02-10 02:42:13', '2026-02-26 00:30:20'),
(35, 2, 52, 8, 42, 0, 42, '2026-02-11', 'Rosalind', 'Clarke', 'rosalind.clarke@live.com.au', '1991-02-23', 'AU', '0403105807', '', 1, 0, '', '', '', '', '2026-02-10 23:12:55', NULL),
(36, 5, 22, 8, 20, 0, 20, '2026-02-12', 'Aiden', 'Channell', 'aidenchannell0@gmail.com', '2004-10-06', 'AU', '0408707395', '', 1, 0, '', '', '', '', '2026-02-11 05:34:32', NULL),
(37, 2, 51, 5, 65, 0, 65, '2026-02-28', 'Laura', 'Wilson', 'Thewilson5@tpg.com.au', '1981-03-26', 'AU', '0404250569', '', 2, 1, '', '', '', '', '2026-02-24 08:55:20', '2026-02-26 00:30:20'),
(38, 4, 29, 2, 69, 0, 69, '2026-02-14', 'Beth', 'Schumann', 'Elibeth.schumann@gmail.com', '1970-01-01', 'AU', '0418220341', 'I am after a style change. I have long thick hair. Down to shoulder blades and all one length. \r\nI am not exactly sure what I am after, maybe feathering, layers and or mid length cut.', 1, 0, '', '', '', '', '2026-02-13 03:15:58', NULL),
(39, 5, 25, 6, 20, 0, 20, '2026-02-14', 'Deepshikha', 'Kumar', 'shikhabeautystudio@gmail.com', '1986-02-14', 'AU', '0410038603', '', 2, 0, '', '', '', '', '2026-02-15 06:02:01', '2026-02-15 06:02:01'),
(40, 5, 25, 3, 20, 0, 20, '2026-02-18', 'Deepshikha', 'Kumar', 'Shikhabeautystudio@gmail.com', '1986-02-18', 'AU', '0410038603', '', 2, 1, '', '', '', '', '2026-02-15 06:09:46', '2026-02-16 00:30:11'),
(41, 5, 25, 4, 20, 0, 20, '2026-02-18', 'Depshikha', 'kumar', 'shikhabeautystudio@gmail.com', '1970-01-01', 'AU', '0410038603', '', 2, 1, '', '', '', '', '2026-02-16 06:11:06', '2026-02-16 06:11:06'),
(42, 2, 9, 7, 59, 0, 59, '2026-02-18', 'Carol', 'MOYNIHAN', 'catherinemoynihan57@gmail.com', '1957-04-17', 'AU', '0413540187', 'Can I please book in for a full facial wax. Does it include eyebrows.', 2, 1, '', '', '', '', '2026-02-17 03:19:51', '2026-02-17 03:19:51'),
(44, 5, 22, 5, 20, 0, 20, '2026-02-21', 'Sue', 'Purtell', 'suepurtell@hotmail.com', '1970-01-01', 'AU', '0402202798', '', 2, 1, '', '', '', '', '2026-02-16 04:52:27', '2026-02-21 02:07:03'),
(47, 4, 32, 6, 30, 0, 30, '2026-02-18', 'ann', 'murray', 'sukia2001@yahoo.com.au', '1970-01-01', 'AU', '0413152763', '', 2, 0, '', '', '', '', '2026-02-17 03:24:33', '2026-02-17 03:24:33'),
(48, 5, 22, 9, 20, 0, 20, '2026-02-19', 'Mayuri', 'Reddy', 'mayu.reddy10@gmail.com', '1970-01-01', 'AU', '0406376854', '', 1, 0, '', '', '', '', '2026-02-18 08:04:22', NULL),
(49, 3, 34, 5, 199, 49, 150, '2026-03-01', 'Suba', 'Sherma', 'subavasu1991@gmail.com', '1970-01-01', 'AU', '61481363076', '', 2, 0, '', '', '', '', '2026-02-22 10:07:18', NULL),
(50, 13, 65, 2, 349, 0, 349, '2026-02-25', 'Laura', 'O\'Toole', 'lauraann.hannon@gmail.com', '1970-01-01', 'AU', '0431873281', '', 2, 1, '', '', '', '', '2026-02-23 00:25:53', '2026-02-23 00:30:13'),
(51, 3, 36, 13, 249, 0, 249, '2026-02-25', 'Sumaiya', 'Amjad', 'sumaiya.amjad@gmail.com', '1970-01-01', 'AU', '0434787687', '', 2, 1, '', '', '', '', '2026-02-23 00:33:11', '2026-02-23 03:30:16'),
(52, 4, 27, 9, 40, 0, 40, '2026-02-25', 'Sam', 'Kumar', 'sanjeev4every1@yahoo.com', '1970-01-01', 'AU', '0451270383', '', 2, 1, '', '', '', '', '2026-02-23 00:37:11', '2026-02-23 03:30:16'),
(53, 19, 96, 26, 99, 0, 99, '2026-02-25', 'Vandana', 'Puzhakkal', 'puzhakkalvandana@gmail.com', '1970-01-01', 'AU', '0402472017', '', 2, 1, '', '', '', '', '2026-02-23 00:46:09', '2026-02-23 03:30:16'),
(54, 13, 47, 2, 229, 49, 180, '2026-02-27', 'Akriti', 'Mehandiratta', 'Akritikalra05@gmail.com', '1970-01-01', 'AU', '0491613323', '', 2, 1, '', '', '', '', '2026-02-23 08:08:11', '2026-02-25 00:30:19'),
(55, 21, 120, 3, 159, 0, 159, '2026-02-25', 'Alyce', 'Wangemann', 'awangemann@gmail.com', '1988-07-18', 'AU', '0450081327', 'I want to book this appointment for my friend Samantha Stanwells birthday.', 2, 1, '', '', '', '', '2026-02-23 23:11:30', '2026-02-23 23:11:30'),
(56, 19, 100, 4, 129, 0, 129, '2026-02-28', 'Lachlan', 'Cornish-Martin', 'lachiecm2003@gmail.com', '2003-01-09', 'AU', '0451679482', '', 2, 1, '', '', '', '', '2026-02-24 08:44:05', '2026-02-26 00:30:20'),
(57, 3, 33, 2, 149, 0, 149, '2026-02-28', 'Catherine', 'Irvine', 'cathymay2411@gmail.com', '1970-01-01', 'AU', '0409443427', '', 2, 1, '', '', '', '', '2026-02-24 04:57:41', '2026-02-26 00:30:20'),
(58, 21, 120, 23, 159, 49, 110, '2026-02-27', 'Amma', 'Kanmani', 'aishwaryarajeev129@gmail.com', '1970-01-01', 'AU', '0438537283', '', 2, 1, '', '', '', '', '2026-02-24 11:13:58', '2026-02-25 00:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_time`
--

CREATE TABLE `tbl_service_time` (
  `st_id` int(11) NOT NULL,
  `serv_time` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `slot_status` int(11) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service_time`
--

INSERT INTO `tbl_service_time` (`st_id`, `serv_time`, `status`, `slot_status`, `added_at`) VALUES
(1, '9:00 am', 0, 0, '2025-11-10 10:00:33'),
(2, '10:00 am', 1, 1, '2025-11-10 10:00:33'),
(3, '11:00 am', 1, 1, '2025-11-10 10:01:12'),
(4, '12:00 pm', 1, 1, '2025-11-10 10:01:12'),
(5, '1:00 pm', 1, 1, '2025-11-10 10:01:53'),
(6, '2:00 pm', 1, 1, '2025-11-10 10:01:53'),
(7, '3:00 pm', 1, 1, '2025-11-10 10:01:53'),
(8, '4:00 pm', 1, 1, '2025-11-10 10:01:53'),
(9, '5:00 pm', 1, 1, '2025-11-10 10:01:53'),
(10, '10:15 am', 0, 1, '2025-11-10 10:01:53'),
(11, '10:30 am', 0, 1, '2025-11-10 10:01:53'),
(12, '10:45 am', 0, 1, '2025-11-10 10:01:53'),
(13, '11:15 am', 0, 1, '2025-11-10 10:01:53'),
(14, '11:30 am', 0, 1, '2025-11-10 10:01:53'),
(15, '11:45 am', 0, 1, '2025-11-10 10:01:53'),
(16, '12:15 pm', 0, 1, '2025-11-10 10:01:53'),
(17, '12:30 pm', 0, 1, '2025-11-10 10:01:53'),
(18, '12:45 pm', 0, 1, '2025-11-10 10:01:53'),
(19, '1:15 pm', 0, 1, '2025-11-10 10:01:53'),
(20, '1:30 pm', 0, 1, '2025-11-10 10:01:53'),
(21, '1:45 pm', 0, 1, '2025-11-10 10:01:53'),
(22, '2:15 pm', 0, 1, '2025-11-10 10:01:53'),
(23, '2:30 pm', 0, 1, '2025-11-10 10:01:53'),
(24, '2:45 pm', 0, 1, '2025-11-10 10:01:53'),
(25, '3:15 pm', 0, 1, '2025-11-10 10:01:53'),
(26, '3:30 pm', 0, 1, '2025-11-10 10:01:53'),
(27, '3:45 pm', 0, 1, '2025-11-10 10:01:53'),
(28, '4:15 pm', 0, 1, '2025-11-10 10:01:53'),
(29, '4:30 pm', 0, 1, '2025-11-10 10:01:53'),
(30, '4:45 pm', 0, 1, '2025-11-10 10:01:53'),
(31, '5:15 pm', 0, 1, '2025-11-10 10:01:53'),
(32, '5:30 pm', 0, 1, '2025-11-10 10:01:53'),
(33, '5:45 pm', 0, 1, '2025-11-10 10:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `facebook_link` varchar(200) DEFAULT NULL,
  `twitter_link` varchar(200) DEFAULT NULL,
  `google_link` varchar(200) DEFAULT NULL,
  `linkedin_link` varchar(200) DEFAULT NULL,
  `youtube_link` varchar(200) DEFAULT NULL,
  `instagram_link` varchar(200) DEFAULT NULL,
  `pinterest_link` varchar(200) DEFAULT NULL,
  `opening_hours` text,
  `marquee1` text,
  `marquee2` text,
  `marquee3` text,
  `marquee4` text,
  `weeklyHolidays` varchar(100) NOT NULL COMMENT 'for calender off day'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `address`, `phone`, `email`, `name`, `website`, `facebook_link`, `twitter_link`, `google_link`, `linkedin_link`, `youtube_link`, `instagram_link`, `pinterest_link`, `opening_hours`, `marquee1`, `marquee2`, `marquee3`, `marquee4`, `weeklyHolidays`) VALUES
(1, 'Unit 1/46 Jenke Cct, Kambah ACT 2902, Australia', '+61410038603', 'bebeautiful@skincanberra.com.au', 'SkinCanberra', 'www.website.com', 'https://www.facebook.com/share/1BamZssND6/', 'https://twitter.com/skincanberra', 'https://maps.app.goo.gl/X3wRoDEp9URs8KZTA', '', 'http://youtube.com/', 'https://www.instagram.com/skincanberra', '', '<ul>\r\n<li><strong>Address: </strong>Unit 1/46 Jenke Cct, Kambah ACT 2902, Australia</li>\r\n<li><strong>Mon:</strong> Closed</li>\r\n<li><strong>Tue :</strong> Closed</li>\r\n<li><strong>Wed and Thu:&nbsp;</strong>10AM - 5PM</li>\r\n<li><strong>Fri and Sat:&nbsp;</strong>10AM - 7PM</li>\r\n<li><strong>Sun :</strong> 10AM&nbsp;-&nbsp;3PM</li>\r\n</ul>', 'Glow Naturally With Expert Skin & Beauty Care', '', '', '', '1,2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_termcondition`
--

CREATE TABLE `tbl_termcondition` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1-Active, 0-Inactive',
  `added_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_termcondition`
--

INSERT INTO `tbl_termcondition` (`id`, `title`, `url`, `description`, `status`, `added_at`, `updated_at`) VALUES
(1, 'privacy policy', 'privacy-policy', 'about us', '0', '0000-00-00 00:00:00', '2021-07-20 21:15:04'),
(4, 'term condition 2', 'term-condition-2', 'term condition', '0', '2021-07-20 22:23:16', '2021-07-20 22:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(5) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `post` varchar(150) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `thumb_image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-inactive, 1-active',
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `description`, `post`, `photo`, `thumb_image`, `video`, `status`, `added_at`, `update_at`) VALUES
(1, 'Breanna Neville', 'I have had two appointments with Shikha so far and have already scheduled my next. I have had great experiences with the Hydra Facial.\r\nShe definitely makes you feel very comfortable, answers all my questions and I leave feeling very relaxed and my skin rejuvenated. Looking forward to my next appointment.', 'Hydra Facial', 'testimonial-NwqnR3jj.webp', NULL, NULL, 1, '2025-10-15 05:32:46', '2025-10-15 10:49:52'),
(2, 'Jessica Apolinar', 'I had a great experience at Shikha Beauty Studio. The consultation and the chemical peel process was well done - I experienced great results with noticeable improvements with my skin texture and acne scars and the process was very reasonably priced. Shikha is very gentle, friendly and professional and understands Asian skin needs. I highly recommend you visit!', 'Chemical peel process', NULL, NULL, NULL, 1, '2025-10-15 05:33:27', '2025-10-15 10:51:17'),
(3, 'Jithu Alin', 'I have got my nanoplasty done from Shikha. I was so keen on keeping my curls at the tip of my hair and the result was awesome. Shikha is a wonderful human being and has got great knowledge in skin and hair. I will definitely recommend her to people who are looking for chemical free treatments for hair and skin.', 'Nanoplasty', 'testimonial-r1RKK1dI.webp', NULL, NULL, 1, '2025-10-15 05:34:02', '2025-10-15 10:52:21'),
(4, 'Jane Gomes', 'I have been attending Shikha\'s hair salon for well over a year and been extremely satisfied with her service. It never wavers   and I would keep coming back to her whenever I  needed to. Her hair colouring and cut are superb. I wish her all the best.', 'hair coloring', 'testimonial-AcRedFeu.webp', NULL, NULL, 1, '2025-10-15 05:34:48', '2025-10-15 10:53:30'),
(5, NULL, NULL, NULL, NULL, 'testimonial-bIGjS9E5.webp', 'testimonial-3d4ctj15.mp4', 0, '2025-10-15 05:35:31', '2025-11-04 10:23:09'),
(6, NULL, NULL, NULL, NULL, 'testimonial-iXcFMeif.webp', 'testimonial-2kEGZWii.mp4', 0, '2025-10-15 05:35:53', '2025-11-04 10:23:02'),
(7, NULL, NULL, NULL, NULL, 'testimonial-fQzNZY2s.webp', 'pgQPquFKKpc', 0, '2025-10-15 05:36:14', '2025-11-04 10:22:54'),
(8, NULL, NULL, NULL, NULL, 'testimonial-bYrpFfgp.webp', 'pgQPquFKKpc', 0, '2025-10-15 05:36:34', '2025-11-04 10:22:46'),
(9, 'Breanna Neville', 'Chrissy was amazing. Absolutely 10/10 would recommend to everyone', 'hair coloring', NULL, NULL, NULL, 1, '2025-10-15 12:28:21', '2025-10-15 12:28:28'),
(10, 'Alexis Epstein', 'This is an excellent beauty salon. Shikha prides herself on giving individual attention and care to every customer. Her facials are excellent, and come with a super relaxing head massage. Her waxing services are also excellent and she is very clean and hygienic. Her studio is in her home so I always feel private and safe there. I highly recommend Shikha also for her incredibly reasonable prices. You won\'t find a better deal for such excellent service anywhere!', 'Body waxing, Eyebrow threading, Waxing', NULL, NULL, NULL, 1, '2025-10-15 12:31:23', '2025-10-15 12:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT 'King of Town',
  `description` text,
  `status` enum('publish','pending','draft') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_temp`
--

CREATE TABLE `tbl_users_temp` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users_temp`
--

INSERT INTO `tbl_users_temp` (`user_id`, `fname`, `mname`, `lname`, `country`, `dob`, `gender`, `email`, `password`, `ip_address`, `phone`, `image`, `address`, `status`, `created`, `updated`) VALUES
(1, 'md', 'raj', 'guddu', 99, '1986-01-02', 'male', 'raj@yopmail.com', '123456', '::1', '9162925142', 'u_1672925916.jpg', 'delhi', 0, '2023-01-05 02:08:36', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about_content`
--
ALTER TABLE `tbl_about_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_image` (`about_image`),
  ADD KEY `sec3_image1` (`sec3_image1`,`sec3_image2`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page` (`page`),
  ADD KEY `status` (`status`),
  ADD KEY `page_2` (`page`,`status`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blg_id`);

--
-- Indexes for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page` (`page`,`status`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_happy_client`
--
ALTER TABLE `tbl_happy_client`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home_content`
--
ALTER TABLE `tbl_home_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_image` (`about_image`),
  ADD KEY `sec5_content_image1` (`sec5_content_image1`),
  ADD KEY `sec5_content_image2` (`sec5_content_image2`),
  ADD KEY `sec5_content_image3` (`sec5_content_image3`,`pic1`),
  ADD KEY `pic2` (`pic2`,`pic3`,`pic4`),
  ADD KEY `contact_page_image` (`contact_page_image`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `email` (`email`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_member_address`
--
ALTER TABLE `tbl_member_address`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `status` (`status`),
  ADD KEY `m_id_2` (`m_id`,`status`);

--
-- Indexes for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_transaction`
--
ALTER TABLE `tbl_payment_transaction`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `pro_url` (`pro_url`),
  ADD KEY `status` (`status`),
  ADD KEY `show_front` (`show_front`),
  ADD KEY `pro_url_2` (`pro_url`,`status`);

--
-- Indexes for table `tbl_product_attributes`
--
ALTER TABLE `tbl_product_attributes`
  ADD PRIMARY KEY (`attrId`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `pro_id_2` (`pro_id`,`value`,`status`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_product_order`
--
ALTER TABLE `tbl_product_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_order_log`
--
ALTER TABLE `tbl_product_order_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_purchased_course`
--
ALTER TABLE `tbl_purchased_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_realresult`
--
ALTER TABLE `tbl_realresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`sv_id`),
  ADD KEY `serv_url` (`serv_url`,`status`),
  ADD KEY `service_name` (`service_name`),
  ADD KEY `banner_image` (`banner_image`,`thumbnail_image`,`photo`),
  ADD KEY `status` (`status`),
  ADD KEY `show_front` (`show_front`,`status`);

--
-- Indexes for table `tbl_services_variants`
--
ALTER TABLE `tbl_services_variants`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `v_url` (`v_url`),
  ADD KEY `sv_id` (`sv_id`),
  ADD KEY `status` (`status`),
  ADD KEY `sv_id_2` (`sv_id`,`status`),
  ADD KEY `photo` (`photo`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `tbl_service_book_log`
--
ALTER TABLE `tbl_service_book_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_service_book_online`
--
ALTER TABLE `tbl_service_book_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_time`
--
ALTER TABLE `tbl_service_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tbl_termcondition`
--
ALTER TABLE `tbl_termcondition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`,`post`,`status`),
  ADD KEY `video` (`video`,`status`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tbl_users_temp`
--
ALTER TABLE `tbl_users_temp`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about_content`
--
ALTER TABLE `tbl_about_content`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_happy_client`
--
ALTER TABLE `tbl_happy_client`
  MODIFY `cl_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_home_content`
--
ALTER TABLE `tbl_home_content`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_member_address`
--
ALTER TABLE `tbl_member_address`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_payment_transaction`
--
ALTER TABLE `tbl_payment_transaction`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_product_attributes`
--
ALTER TABLE `tbl_product_attributes`
  MODIFY `attrId` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product_order`
--
ALTER TABLE `tbl_product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_order_log`
--
ALTER TABLE `tbl_product_order_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purchased_course`
--
ALTER TABLE `tbl_purchased_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_realresult`
--
ALTER TABLE `tbl_realresult`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `sv_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_services_variants`
--
ALTER TABLE `tbl_services_variants`
  MODIFY `vid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbl_service_book_log`
--
ALTER TABLE `tbl_service_book_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_service_book_online`
--
ALTER TABLE `tbl_service_book_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tbl_service_time`
--
ALTER TABLE `tbl_service_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_termcondition`
--
ALTER TABLE `tbl_termcondition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users_temp`
--
ALTER TABLE `tbl_users_temp`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
