-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 01:01 PM
-- Server version: 10.5.18-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u312536542_vclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(255) NOT NULL,
  `banner_title` varchar(500) NOT NULL,
  `material` varchar(255) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_title`, `material`, `status`) VALUES
(23, 'Rising Star   the new journey of Life', 'banner/cfb7ok.jpg', 1),
(24, 'Rising Star   the new journey of Life', 'banner/quwuhp.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `child_menu`
--

CREATE TABLE `child_menu` (
  `id` int(11) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `child_menu`
--

INSERT INTO `child_menu` (`id`, `p_id`, `child`, `url`, `status`) VALUES
(1, '3', 'Manage Banner', 'manage_banner.php', 1),
(2, '4', 'Privacy Policy', 'privacy.php', 1),
(3, '4', 'Risk Disclosure Agreement', 'riskagreement.php', 1),
(4, '5', 'Manage Product', 'manage_product.php', 1),
(5, '2', 'Manage User', 'manage_adminuser.php', 1),
(6, '2', 'Manage Role', 'manage_role.php', 1),
(7, '2', 'Manage Task', 'manage_task.php', 1),
(8, '6', 'Manage User', 'manage_user.php', 1),
(9, '7', 'Withdrawal Request', 'manage_withdraw.php', 1),
(10, '7', 'Withdrawal Accept', 'manage_withdrawAccept.php', 1),
(11, '7', 'Withdrawal Reject', 'manage_withdrawReject.php', 1),
(12, '8', 'Manage Winner Result', 'manage_winresult.php', 1),
(13, '9', 'History For Parity', 'manage_parityhistory.php', 1),
(14, '9', 'History For Sapre', 'manage_saprehistory.php', 1),
(15, '9', 'History For Bcone', 'manage_bconehistory.php', 1),
(16, '9', 'History For Emerd', 'manage_emerdhistory.php', 1),
(17, '10', 'Manage Trade History', 'manage_tradehistory.php', 1),
(18, '11', 'Reward System', 'reward_system.php', 1),
(19, '12', 'Manage Amount', 'manage_amount.php', 1),
(20, '15', 'Manage Recharge', 'manage_recharge.php', 1),
(21, '16', 'Deposit Update', 'deposit update.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(10) NOT NULL DEFAULT 1,
  `riskagreement` text NOT NULL,
  `privacy` text NOT NULL,
  `rule` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `riskagreement`, `privacy`, `rule`) VALUES
(1, '<p>Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance. Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance. Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance. Publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infance.</p>\r\n', '<h3><strong><span style=\"color:#e74c3c\">Privacy</span> Policy </strong><span style=\"color:#c0392b\">for</span> <strong><span style=\"color:#2980b9\">Coulors</span><em>&nbsp;<span style=\"color:#e74c3c\">Shoppin</span>g <span style=\"color:#9b59b6\">Mall</span></em></strong></h3>\r\n\r\n<h4>At coloursmall.com, accessible from coloursmall.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that are collected and recorded by coulorsmall.com and how we use it</h4>\r\n\r\n<p>Ifyou have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Cyber team support. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the Privacy Policy Generator and the Free Privacy Policy Generator.</p>\r\n\r\n<p><strong>Consent</strong><br />\r\nBy using our website, you hereby consent to our Privacy Policy and agree to its terms. For our Terms and Conditions, please visit the Terms &amp; Conditions Generator.</p>\r\n\r\n<p>Information we collect<br />\r\nThe personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<p>How we use your information<br />\r\nWe use the information we collect in various ways, including to:</p>\r\n\r\n<p style=\"text-align:center\">Provide, operate, and maintain our website<br />\r\nImprove, personalize, and expand our website<br />\r\nUnderstand and analyze how you use our website<br />\r\nDevelop new products, services, features, and functionality<br />\r\nCommunicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes<br />\r\nSend you emails<br />\r\nFind and prevent fraud<br />\r\nLog Files<br />\r\nbrozers.net follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services&#39; analytics. The information collected by log files includes internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users&#39; movement on the website, and gathering demographic information.</p>\r\n\r\n<p>Cookies and Web Beacons<br />\r\nLike any other website, meesho uses &#39;cookies&#39;. These cookies are used to store information including visitors&#39; preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users&#39; experience by customizing our web page content based on visitors&#39; browser type and/or other information.</p>\r\n\r\n<p>For more general information on cookies, please read &quot;What Are Cookies&quot; from Cookie Consent.</p>\r\n\r\n<p>Google DoubleClick DART Cookie<br />\r\nGoogle is one of the third-party vendors on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL &ndash; https://policies.google.com/technologies/ads</p>\r\n\r\n<p>Our Advertising Partners<br />\r\nSome of the advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p>\r\n\r\n<p>Google</p>\r\n\r\n<p>https://policies.google.com/technologies/ads</p>\r\n\r\n<p>Advertising Partners Privacy Policies<br />\r\nYou may consult this list to find the Privacy Policy for each of the advertising partners of brozers.net.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on brozers.net, which are sent directly to users&#39; browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that brozers.net has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<p>Third-Party Privacy Policies<br />\r\nbrozers.net Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers&#39; respective websites.</p>\r\n\r\n<p>CCPA Privacy Rights (Do Not Sell My Personal Information)<br />\r\nUnder the CCPA, among other rights, California consumers have the right to:</p>\r\n\r\n<p>Request that a business that collects a consumer&#39;s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n\r\n<p>Request that a business deletes any personal data about the consumer that a business has collected.</p>\r\n\r\n<p>Request that a business that sells a consumer&#39;s personal data, not sell the consumer&#39;s personal data.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<p>GDPR Data Protection Rights<br />\r\nWe would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n\r\n<p>The right to access &ndash; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n\r\n<p>The right to rectification &ndash; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n\r\n<p>The right to erasure &ndash; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n\r\n<p>The right to restrict processing &ndash; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to object to processing &ndash; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to data portability &ndash; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<p>Children&#39;s Information<br />\r\nAnother part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>brozers.net does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>\r\n', '<p style=\"font-size:10px\">3 minutes 1 issue, 2 minutes and 30 seconds to order, 30 seconds to show the lottery result. It opens all day. The total number of trade is 480 issues</p>\r\n\r\n<p style=\"font-size:10px\">If you spend 100 to trade, after deducting 2 service fee, your contract amount is 98:</p>\r\n\r\n<p style=\"font-size:10px\">1. JOIN GREEN: if the result shows 1,3,7,9, you will get (98*2) 196</p>\r\n\r\n<p style=\"font-size:10px\">If the result shows 5, you will get (98*1.5) 147</p>\r\n\r\n<p style=\"font-size:10px\">2. JOIN RED: if the result shows 2,4,6,8, you will get (98*2) 196; If the result shows 0, you will get (98*1.5) 147</p>\r\n\r\n<p style=\"font-size:10px\">3. JOIN VIOLET: if the result shows 0 or 5, you will get (98*4.5) 441</p>\r\n\r\n<p style=\"font-size:10px\">4. SELECT NUMBER: if the result is the same as the number you selected, you will get (98*9) 882</p>');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `ref_num` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `created_date`, `status`) VALUES
(1, 'SuperAdmin', '2014-12-23 20:04:37', 1),
(2, 'Support', '2017-01-26 17:23:05', 1),
(13, 'serverRoot', '2021-10-09 12:49:15', 1),
(14, 'Assistant', '2022-01-26 19:57:56', 1),
(15, 'Agent', '2022-01-26 19:58:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `services` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `services`, `url`, `status`) VALUES
(1, 'Dashboard', 'desktop.php', '1'),
(2, 'Manage AdminUser', '#', '1'),
(3, 'Manage Banner', '#', '1'),
(4, 'Content Management', '#', '1'),
(5, 'Manage Product', 'hhhh', '1'),
(6, 'User Management', '#', '1'),
(7, 'Withdrawal Management ', '#', '1'),
(8, 'Wining Management', '#', '1'),
(9, 'Game History', '#', '1'),
(10, 'Trade History', '#', '1'),
(11, 'Reward Management', '#', '1'),
(12, 'Amount Setup', '#', '1'),
(13, 'Recharge Management', '#', '1'),
(16, 'Deposit Update', 'deposit update.php', '1');

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `fblink` text NOT NULL,
  `twlink` text NOT NULL,
  `ln` text NOT NULL,
  `insta` varchar(500) NOT NULL,
  `fbcount` varchar(100) NOT NULL,
  `twcount` varchar(100) NOT NULL,
  `youtubecount` varchar(100) NOT NULL,
  `instacount` varchar(100) NOT NULL,
  `status` smallint(11) NOT NULL,
  `updt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `address`, `email`, `mobile`, `fblink`, `twlink`, `ln`, `insta`, `fbcount`, `twcount`, `youtubecount`, `instacount`, `status`, `updt_time`) VALUES
(1, 'Amit Yadav, Karhal', 'emailofamityadav@gmail.com', '+918318865802', '#', '#', '#', '#', '#', '#', '#', '#', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `task` varchar(255) NOT NULL,
  `status` smallint(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `role_id`, `task`, `status`, `created_date`) VALUES
(1, '1', '1,2,3,4,5,6,7,8,9,10,11,12,13', 1, '2021-09-25 10:51:32'),
(2, '2', '1,3,4,5,9,10', 1, '2019-09-18 07:17:58'),
(9, '13', '1,2,3,4,5,6,7,8,9,10,11,12,13,16', 1, '2021-10-09 12:49:50'),
(10, '15', '1,3,4,5,13', 1, '2022-01-26 20:01:28'),
(11, '14', '8', 1, '2022-01-26 20:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `status` smallint(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `admin_name`, `password`, `role`, `expiry_date`, `status`, `date`) VALUES
(1, 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '13', 'no', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bankdetail`
--

CREATE TABLE `tbl_bankdetail` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bankdetail`
--

INSERT INTO `tbl_bankdetail` (`id`, `userid`, `name`, `ifsc`, `bankname`, `account`, `mobile`, `email`, `type`, `status`) VALUES
(3, 39, 'Bhavesh rathi', 'BARB0MANDIA', 'Bank of Baroda', '09798100012337', '8005652488', 'rathibhavesh2708@gmail.com', 'bank', 1),
(4, 51, 'Laxmi kumari', 'PYTM0123456', 'Paytm payment bank', '918292890772', '9570237543', 'mukesh95702375@gmail.com', 'bank', 1),
(5, 67, 'Rajesh Kumar', 'PYTM0123456', 'Paytm payments bank', '919012874754', '9012874754', 'raj30bly@gmail.com', 'bank', 1),
(6, 68, 'Arjunan p', 'FDRI0001764', 'Federal bank', '99980108148441', '9846823507', 'arjunnk123456@gmail.com', 'bank', 1),
(7, 81, 'Manish Paliwal', 'SBIN0005671', 'SBI', '20114572856', '8949151464', 'mspaliwal.1992@gmail.com', 'bank', 1),
(8, 58, 'Ravi kumar vishwakarma', 'SBIN0016770', 'Sbi', '38583851808', '7908276558', 'rv7531464@gamil.com', 'bank', 1),
(9, 112, 'Kusum Gautam', 'PYTM0123456', 'Paytm Payments Bank', '918449988257', '8449988257', 'kusum5dec1988@gmail.com', 'bank', 1),
(11, 119, 'Chandan Kumar ', 'PUNB0MBGB06 ', 'dakshin bihar gramin bank', '72791500011281', '9939656277', 'Kumarniralachandan8@gmail.com', 'bank', 1),
(12, 132, 'Gurmeet ', 'PUNB0HGB001', 'Sarva Haryana GrMin Bank', '81491900055295', '9615433200', 'golu03406@gmail.com', 'bank', 1),
(13, 121, 'SHOBHA DEVI', 'PYTM0123456', 'Paytm Payments Bank', '919975379713', '9975379713', 'vijaysuthar3081@gmail.com', 'bank', 1),
(14, 134, 'Ajay Kumar', 'BARB0BEHROR', 'Bank of Baroda', '29660100016889', '8824357993', 'untoli2000@gmail.com', 'bank', 1),
(15, 154, 'Md Seaf', 'IPOS0000001', 'India Post payment Bank', '055210068081', '8887904257', 'sk04557733@gmail.com', 'bank', 1),
(33, 87, 'Rajkumar Gupta', 'PYTM0123456', 'Paytm Payment Bank', '917703072188', '7703072188', 'rajguptaji776@gmail.com', 'bank', 1),
(28, 181, 'Sunil Kumar', 'BARB0BEHROR', 'Bank of Baroda', '29668100004700', '9166507790', 'sunilkumar9166507790@gmail.com', 'bank', 1),
(41, 246, 'Deepak Behera', 'UBIN0570656', 'Union Bank of India', '706502120001268', '7855944925', 'bijaybehera54092@gmail.com', 'bank', 1),
(20, 124, 'Rahul Kumar', 'IPOS0000001', 'Indian post payments bank', '007110256213', '6201836201', 'rk7729438@gmail.com', 'bank', 1),
(30, 106, 'Arif Khan', 'SBIN0001134', 'State Bank of India', '39094234907', '6391343747', 'arifk143300@gmail.com', 'bank', 1),
(24, 74, 'Rasik Gulzar Wani', 'JAKA0NALANG', 'J&K Bank', '0157040150000297', '9682357679', 'rasikwani022@gmail.com', 'bank', 1),
(25, 96, 'GANAPATHY MURUGAN', 'PYTM0123456', 'PAYTM PAYMENTS BANK', '919080685050', '9360685050', 'annaingt@gmail.com', 'bank', 1),
(26, 166, 'NARENDRA PRATAP SINGH ', 'Sbin0003156', 'Steat bank of india ', '33310133285', '8877171719', 'npstapos@gmail.com ', 'bank', 1),
(31, 167, 'RITESH KUMAR SANKHLA', 'BKID0006662', 'BANK OF INDIA', '666210110005632', '9799126267', 'ritesh97991@gmail.com', 'bank', 1),
(32, 186, 'RITESH KUMAR SANKHLA', 'BKID0006662', 'BANK OF INDIA', '666210110005632', '9799126267', 'ritesh97991@gmail.com', 'bank', 1),
(34, 193, 'NITAI DEY', 'AIRP0000001', 'Airtel Payments Bank', '8016365399', '8016365399', 'deynitai20@gmail.com', 'bank', 1),
(101, 5, 'Brahmpal', 'UBIN0907383', 'Union Bank of India', '520191042117425', '9105540206', 'badboy1442001@gmail.com', 'bank', 1),
(37, 113, 'Priya Songotiya', 'KKBK0005936', 'Kotak mahindra bank', '6745079967', '7974993778', 'priyasongotiya@gmail.com', 'bank', 1),
(38, 231, '  Arvind kumar ', 'UTIB0000132', 'Axis bank ', '916010000034150', '8502806564', 'ssssudan66@gmail.com', 'bank', 1),
(40, 234, 'Rajesh Behera', 'UBIN0570656', 'Union Bank of India', '706502120003895', '6371849287', 'rajeshbehera8339837586@gmail.com', 'bank', 1),
(43, 240, 'Deepak Behera', 'FCFB0001001', 'Equitas Bank', '100021780954', '7855944925', 'deepakbehera4545@gmail.com', 'bank', 1),
(46, 264, 'Amit Rout', 'BKOD0005173', 'BOI', '517310110002467', '7008348791', 'arout9261@gmail.com', 'bank', 1),
(48, 268, 'Rajendrer kumar', 'SBIN0031409', 'SBI', '61150478763', '8233792687', 'Rkd848@gmail.com', 'bank', 1),
(49, 275, 'Parmar', 'BARB0KALMEH', 'Bank of baroda', '16998100000597', '9925352685', 'parmardevendar132771@gmail.com', 'bank', 1),
(56, 333, 'Sagar hinge', 'CBIN0283045', 'Central Bank of India', '3947792577', '9613909092', 'hingesagar24@gmail.com', 'bank', 1),
(51, 302, 'Amit rai', 'KKBK0001356', 'Kotak mahindra bank ', '6845870693', '8779530364', 'Amitraijnp@gmail.com', 'bank', 1),
(53, 265, 'Ayush Singh', 'BARB0SIRATH', 'BANK OF BARODA', '35250100017825', '9696989195', 'ay3@gmail.com', 'bank', 1),
(54, 320, 'Seema Sharma', 'BARB0SANJAI', 'Bank of baroda', '31808100006946', '8239757178', 'seema2manoj@gmail.com', 'bank', 1),
(55, 145, 'Sagar Hinge', 'CBIN0283045', 'Central Bank of India', '3947792577', '9613909092', 'hingesagar24@gmail.com', 'bank', 1),
(57, 312, 'Swetalita dash', 'PYTM0123456', 'Paytm payment bank', '917064641530', '70646461560', 'Benugopal788@gmail.com', 'bank', 1),
(58, 378, 'Vijaya sathasivam', 'SBNI 0000777', 'State Bank', '40477462851', '7810034358', 'sabarivasan343@gmail.com', 'bank', 1),
(59, 329, 'Akash Mohan Gavali', 'BARB0KHANVE', 'Bank of Baroda', '44660100000020', '9737545217', 'aks37555@gmail.com', 'bank', 1),
(60, 198, 'Mohammad Hasan', 'IDIB000G514', 'Indian Bank', '50359447652', '9145038876', 'mohdhasankhan70770@gmail.com', 'bank', 1),
(61, 252, 'Saranbabu', 'FDRL0001813', 'FEDRALBANK', '18130100092399', '8608312895', 'saranbabuece@gmail.com', 'bank', 1),
(62, 430, 'Kartik sanjay kamble', 'PYTM0123456', 'paytm payment bank', '91782952633', '7829526363', 'Kartikkamble933@gmail.com', 'bank', 1),
(63, 461, 'Mohit Dalal', 'PYTM0123456', 'Paytm payment bank', '917404708304', '7404708304', 'dalalm955@gmail.com', 'bank', 1),
(64, 7, 'Knij bano', '261012', 'Bank Of Baroda', '56648100020636', '9984766842', 'kaneejbano09@gmail.com', 'bank', 1),
(66, 510, 'israr Ahmed', 'PYTM0123456', 'paytm bank', '919844223845', '8660305112', 'israrhmd9@gmail.com', 'bank', 1),
(67, 542, 'SHIYAS', 'HDFC0000824', 'HDFC', '50100367231045', '8547244589', 'shiyaschikkunoordheen@gmail.com', 'bank', 1),
(68, 582, 'Ningthoujam Basanta Singh', 'AIRP0000001', 'Airtel Payments Bank ', '9612338163', '9612338163', 'basantaningthoujam10@gmail.com', 'bank', 1),
(69, 651, 'Usha Ahirwar', 'PYTM0123456', 'Paytm payments bank', '919109483366', '9109483366', 'starrai5486@gmail.com', 'bank', 1),
(76, 330, 'L Surya Kumari', 'KKBK0000555', 'Kotak Mahindra Bank', '4246188874', '9603234164', 'kumari4461@kotak', 'bank', 1),
(77, 779, 'Ashutosh Singh ', 'UBIN0534897', 'UNION BANK OF INDIA ', '348902010838776', '9839710013', 'as2362024@oksbi', 'bank', 1),
(72, 730, 'Mijanoor Mallik', 'PYTM0123456', 'Paytm payment bank', '916002061521', '6002061521', 'mijanoormallik@gmail.com', 'bank', 1),
(84, 751, 'Gautam soni', 'SBIN0RRMBGB', 'Madhyanchal gramin bank', '80012641593', '6264630492', 'gautamsoni6633@gmail.com', 'bank', 1),
(78, 358, 'BIJAY NANDAN TRIVEDI', 'UTIB0003643', 'AXIS BANK', '918010095185982', '7903238836', '7903238836@ybl', 'bank', 1),
(100, 716, 'dipak Kamble', 'Sbin0017527 ', 'State Bank of India ', '35392493725', '9552650020', 'dipakkamble402@gmail.com', 'bank', 1),
(80, 258, 'Abhimanyu Singh', 'YESB00000736', 'Yes Bank', '073691800032419', '8808851209', '8808851209@ybl', 'bank', 1),
(83, 751, 'Gautam soni', 'BARB0HAMAXX', 'Bank of Baroda', '46418100017711', '6264630492', 'gautamsoni6633@gmail.com', 'bank', 1),
(82, 746, 'Prakash Sharma', 'SBIN0009211', 'State Bank of India', '20100204911', '6201300210', '6201300210@sbi', 'bank', 1),
(97, 771, 'Manish Paliwal', 'PYTM0123456', 'Paytm payment Bank ', '8107430154', '8107430154', 'mspaliwal.1992@gmail.com', 'bank', 1),
(87, 807, 'Suraj Mishra', 'PYTM0123456', 'Paytm payment Bank', '917348628827', '7348628827', '7348628827@paytm', 'bank', 1),
(98, 5, 'Neeraj', 'BKID0007210', 'Bank of India', '721016510000191', '9105540206', 'badboy1442001@gmail.com', 'bank', 1),
(96, 4, 'Amit Kumar', 'PYTM0123456', 'Paytm Payments Bank', '918445043102', '7895574537', 'kumara140620022@gmail.com', 'bank', 1),
(102, 838, 'Hd7dudj', '772', 'Hdudhd', '7838372777', '8837373737', '7euejdjd', 'bank', 1),
(103, 50, 'abc', 'pytm0123456', 'paytm payments bank ', '918765776894', '7272828282', '', 'bank', 1),
(104, 5, 'Karan', 'PAYTM0123456', 'Paytm Payment Bank', '918299450774', '7382647592', 'Karan126@gmail.com', 'bank', 1),
(105, 3, 'Karan', 'PAYTM0123456', 'Paytm Payment Bank', '91829945784', '7382647592', 'Karan126@gmail.com', 'bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_betting`
--

CREATE TABLE `tbl_betting` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `acceptrule` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `level1` varchar(300) NOT NULL,
  `level2` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonussummery`
--

CREATE TABLE `tbl_bonussummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `level1id` varchar(255) NOT NULL,
  `level2id` varchar(255) NOT NULL,
  `level1amount` varchar(255) NOT NULL,
  `level2amount` varchar(255) NOT NULL,
  `tradeamount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bonussummery`
--

INSERT INTO `tbl_bonussummery` (`id`, `userid`, `periodid`, `level1id`, `level2id`, `level1amount`, `level2amount`, `tradeamount`, `createdate`) VALUES
(1, 841, '20230322203', '841', '841', '0.35', '0.25', '50', '2023-03-22 14:56:43'),
(2, 841, '20230322204', '841', '841', '0.7', '0.5', '100', '2023-03-22 14:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonuswithdrawal`
--

CREATE TABLE `tbl_bonuswithdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_envelop`
--

CREATE TABLE `tbl_envelop` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `amount` float NOT NULL,
  `status` smallint(11) NOT NULL,
  `rechargestatus` smallint(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gameid`
--

CREATE TABLE `tbl_gameid` (
  `id` int(11) NOT NULL,
  `gameid` varchar(500) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gameid`
--

INSERT INTO `tbl_gameid` (`id`, `gameid`, `createdate`) VALUES
(1, '20230322001', '2023-03-22 02:42:02'),
(2, '20230322002', '2023-03-22 02:44:02'),
(3, '20230322003', '2023-03-22 02:46:02'),
(4, '20230322004', '2023-03-22 02:48:02'),
(5, '20230322005', '2023-03-22 02:50:02'),
(6, '20230322006', '2023-03-22 02:52:02'),
(7, '20230322007', '2023-03-22 02:54:02'),
(8, '20230322008', '2023-03-22 02:56:02'),
(9, '20230322009', '2023-03-22 02:58:02'),
(10, '20230322010', '2023-03-22 03:00:02'),
(11, '20230322011', '2023-03-22 03:02:02'),
(12, '20230322012', '2023-03-22 03:04:02'),
(13, '20230322013', '2023-03-22 03:06:02'),
(14, '20230322014', '2023-03-22 03:08:02'),
(15, '20230322015', '2023-03-22 03:10:03'),
(16, '20230322016', '2023-03-22 03:12:02'),
(17, '20230322017', '2023-03-22 03:14:02'),
(18, '20230322018', '2023-03-22 03:16:02'),
(19, '20230322019', '2023-03-22 03:18:02'),
(20, '20230322020', '2023-03-22 03:20:02'),
(21, '20230322021', '2023-03-22 03:22:02'),
(22, '20230322022', '2023-03-22 03:24:02'),
(23, '20230322023', '2023-03-22 03:26:02'),
(24, '20230322024', '2023-03-22 03:28:02'),
(25, '20230322025', '2023-03-22 03:30:03'),
(26, '20230322026', '2023-03-22 03:32:02'),
(27, '20230322027', '2023-03-22 03:34:03'),
(28, '20230322028', '2023-03-22 03:36:02'),
(29, '20230322029', '2023-03-22 03:38:02'),
(30, '20230322030', '2023-03-22 03:40:02'),
(31, '20230322031', '2023-03-22 03:42:02'),
(32, '20230322032', '2023-03-22 03:44:02'),
(33, '20230322033', '2023-03-22 03:46:02'),
(34, '20230322034', '2023-03-22 03:48:02'),
(35, '20230322035', '2023-03-22 03:50:02'),
(36, '20230322036', '2023-03-22 03:52:02'),
(37, '20230322037', '2023-03-22 03:54:02'),
(38, '20230322038', '2023-03-22 03:56:01'),
(39, '20230322039', '2023-03-22 03:58:01'),
(40, '20230322040', '2023-03-22 04:00:03'),
(41, '20230322041', '2023-03-22 04:02:02'),
(42, '20230322042', '2023-03-22 04:04:01'),
(43, '20230322043', '2023-03-22 04:06:02'),
(44, '20230322044', '2023-03-22 04:08:02'),
(45, '20230322045', '2023-03-22 04:10:03'),
(46, '20230322046', '2023-03-22 04:12:02'),
(47, '20230322047', '2023-03-22 04:14:01'),
(48, '20230322048', '2023-03-22 04:16:02'),
(49, '20230322049', '2023-03-22 04:18:02'),
(50, '20230322050', '2023-03-22 04:20:02'),
(51, '20230322051', '2023-03-22 04:22:02'),
(52, '20230322052', '2023-03-22 04:24:02'),
(53, '20230322053', '2023-03-22 04:26:02'),
(54, '20230322054', '2023-03-22 04:28:02'),
(55, '20230322055', '2023-03-22 04:30:03'),
(56, '20230322056', '2023-03-22 04:32:02'),
(57, '20230322057', '2023-03-22 04:34:01'),
(58, '20230322058', '2023-03-22 04:36:02'),
(59, '20230322059', '2023-03-22 04:38:02'),
(60, '20230322060', '2023-03-22 04:40:02'),
(61, '20230322061', '2023-03-22 04:42:02'),
(62, '20230322062', '2023-03-22 04:44:02'),
(63, '20230322063', '2023-03-22 04:46:02'),
(64, '20230322064', '2023-03-22 04:48:02'),
(65, '20230322065', '2023-03-22 04:50:02'),
(66, '20230322066', '2023-03-22 04:52:02'),
(67, '20230322067', '2023-03-22 04:54:02'),
(68, '20230322068', '2023-03-22 04:56:03'),
(69, '20230322069', '2023-03-22 04:58:02'),
(70, '20230322070', '2023-03-22 05:00:03'),
(71, '20230322071', '2023-03-22 05:02:02'),
(72, '20230322072', '2023-03-22 05:04:03'),
(73, '20230322073', '2023-03-22 05:06:03'),
(74, '20230322074', '2023-03-22 05:08:02'),
(75, '20230322075', '2023-03-22 05:10:03'),
(76, '20230322076', '2023-03-22 05:12:03'),
(77, '20230322077', '2023-03-22 05:14:02'),
(78, '20230322078', '2023-03-22 05:16:02'),
(79, '20230322079', '2023-03-22 05:18:02'),
(80, '20230322080', '2023-03-22 05:20:02'),
(81, '20230322081', '2023-03-22 05:22:03'),
(82, '20230322082', '2023-03-22 05:24:02'),
(83, '20230322083', '2023-03-22 05:26:03'),
(84, '20230322084', '2023-03-22 05:28:02'),
(85, '20230322085', '2023-03-22 05:30:03'),
(86, '20230322086', '2023-03-22 05:32:02'),
(87, '20230322087', '2023-03-22 05:34:03'),
(88, '20230322088', '2023-03-22 05:36:02'),
(89, '20230322089', '2023-03-22 05:38:02'),
(90, '20230322090', '2023-03-22 05:40:02'),
(91, '20230322091', '2023-03-22 05:42:02'),
(92, '20230322092', '2023-03-22 05:44:02'),
(93, '20230322093', '2023-03-22 05:46:02'),
(94, '20230322094', '2023-03-22 05:48:02'),
(95, '20230322095', '2023-03-22 05:50:02'),
(96, '20230322096', '2023-03-22 05:52:02'),
(97, '20230322097', '2023-03-22 05:54:03'),
(98, '20230322098', '2023-03-22 05:56:02'),
(99, '20230322099', '2023-03-22 05:58:02'),
(100, '20230322100', '2023-03-22 06:00:02'),
(101, '20230322101', '2023-03-22 06:02:02'),
(102, '20230322102', '2023-03-22 06:04:02'),
(103, '20230322103', '2023-03-22 06:06:02'),
(104, '20230322104', '2023-03-22 06:08:02'),
(105, '20230322105', '2023-03-22 06:10:03'),
(106, '20230322106', '2023-03-22 06:12:03'),
(107, '20230322107', '2023-03-22 06:14:03'),
(108, '20230322108', '2023-03-22 06:16:03'),
(109, '20230322109', '2023-03-22 06:18:02'),
(110, '20230322110', '2023-03-22 06:20:03'),
(111, '20230322111', '2023-03-22 06:22:03'),
(112, '20230322112', '2023-03-22 06:24:02'),
(113, '20230322113', '2023-03-22 06:26:02'),
(114, '20230322114', '2023-03-22 06:28:02'),
(115, '20230322115', '2023-03-22 06:30:02'),
(116, '20230322116', '2023-03-22 06:32:02'),
(117, '20230322117', '2023-03-22 06:34:02'),
(118, '20230322118', '2023-03-22 06:36:03'),
(119, '20230322119', '2023-03-22 06:38:03'),
(120, '20230322120', '2023-03-22 06:40:02'),
(121, '20230322121', '2023-03-22 06:42:02'),
(122, '20230322122', '2023-03-22 06:44:02'),
(123, '20230322123', '2023-03-22 06:46:02'),
(124, '20230322124', '2023-03-22 06:48:02'),
(125, '20230322125', '2023-03-22 06:50:03'),
(126, '20230322126', '2023-03-22 06:52:03'),
(127, '20230322127', '2023-03-22 06:54:02'),
(128, '20230322128', '2023-03-22 06:56:02'),
(129, '20230322129', '2023-03-22 06:58:03'),
(130, '20230322130', '2023-03-22 07:00:03'),
(131, '20230322131', '2023-03-22 07:02:02'),
(132, '20230322132', '2023-03-22 07:04:02'),
(133, '20230322133', '2023-03-22 07:06:03'),
(134, '20230322134', '2023-03-22 07:08:02'),
(135, '20230322135', '2023-03-22 07:10:02'),
(136, '20230322136', '2023-03-22 07:12:02'),
(137, '20230322137', '2023-03-22 07:14:03'),
(138, '20230322138', '2023-03-22 07:16:02'),
(139, '20230322139', '2023-03-22 07:18:02'),
(140, '20230322140', '2023-03-22 07:20:02'),
(141, '20230322141', '2023-03-22 07:22:02'),
(142, '20230322142', '2023-03-22 07:24:02'),
(143, '20230322143', '2023-03-22 07:26:02'),
(144, '20230322144', '2023-03-22 07:28:03'),
(145, '20230322145', '2023-03-22 07:30:03'),
(146, '20230322146', '2023-03-22 07:32:03'),
(147, '20230322147', '2023-03-22 07:34:02'),
(148, '20230322148', '2023-03-22 07:36:03'),
(149, '20230322149', '2023-03-22 07:38:02'),
(150, '20230322150', '2023-03-22 07:40:03'),
(151, '20230322151', '2023-03-22 07:42:02'),
(152, '20230322152', '2023-03-22 07:44:02'),
(153, '20230322153', '2023-03-22 07:46:02'),
(154, '20230322154', '2023-03-22 07:48:02'),
(155, '20230322155', '2023-03-22 07:50:03'),
(156, '20230322156', '2023-03-22 07:52:03'),
(157, '20230322157', '2023-03-22 07:54:02'),
(158, '20230322158', '2023-03-22 07:56:02'),
(159, '20230322159', '2023-03-22 07:58:02'),
(160, '20230322160', '2023-03-22 08:00:03'),
(161, '20230322161', '2023-03-22 08:02:02'),
(162, '20230322162', '2023-03-22 08:04:02'),
(163, '20230322163', '2023-03-22 08:06:03'),
(164, '20230322164', '2023-03-22 08:08:03'),
(165, '20230322165', '2023-03-22 08:10:03'),
(166, '20230322166', '2023-03-22 08:12:02'),
(167, '20230322167', '2023-03-22 08:14:02'),
(168, '20230322168', '2023-03-22 08:16:02'),
(169, '20230322169', '2023-03-22 08:18:02'),
(170, '20230322170', '2023-03-22 08:20:03'),
(171, '20230322171', '2023-03-22 08:22:02'),
(172, '20230322172', '2023-03-22 08:24:02'),
(173, '20230322173', '2023-03-22 08:26:02'),
(174, '20230322174', '2023-03-22 08:28:02'),
(175, '20230322175', '2023-03-22 08:30:02'),
(176, '20230322176', '2023-03-22 08:32:02'),
(177, '20230322177', '2023-03-22 08:34:02'),
(178, '20230322178', '2023-03-22 08:36:02'),
(179, '20230322179', '2023-03-22 08:38:02'),
(180, '20230322180', '2023-03-22 08:40:02'),
(181, '20230322181', '2023-03-22 08:42:01'),
(182, '20230322182', '2023-03-22 08:44:03'),
(183, '20230322183', '2023-03-22 08:46:02'),
(184, '20230322184', '2023-03-22 08:48:02'),
(185, '20230322185', '2023-03-22 08:50:03'),
(186, '20230322186', '2023-03-22 08:52:03'),
(187, '20230322187', '2023-03-22 08:54:02'),
(188, '20230322188', '2023-03-22 08:56:02'),
(189, '20230322189', '2023-03-22 08:58:02'),
(190, '20230322190', '2023-03-22 09:00:03'),
(191, '20230322191', '2023-03-22 09:02:02'),
(192, '20230322192', '2023-03-22 09:04:02'),
(193, '20230322193', '2023-03-22 09:06:02'),
(194, '20230322194', '2023-03-22 09:08:02'),
(195, '20230322195', '2023-03-22 09:10:02'),
(196, '20230322196', '2023-03-22 09:12:02'),
(197, '20230322197', '2023-03-22 09:14:02'),
(198, '20230322198', '2023-03-22 09:16:02'),
(199, '20230322199', '2023-03-22 09:18:02'),
(200, '20230322200', '2023-03-22 09:20:03'),
(201, '20230322201', '2023-03-22 09:22:02'),
(202, '20230322202', '2023-03-22 09:24:02'),
(203, '20230322203', '2023-03-22 09:26:03'),
(204, '20230322204', '2023-03-22 09:28:02'),
(205, '20230322205', '2023-03-22 09:30:03'),
(206, '20230322206', '2023-03-22 09:32:02'),
(207, '20230322207', '2023-03-22 09:34:02'),
(208, '20230322208', '2023-03-22 09:36:02'),
(209, '20230322209', '2023-03-22 09:38:03'),
(210, '20230322210', '2023-03-22 09:40:03'),
(211, '20230322211', '2023-03-22 09:42:02'),
(212, '20230322212', '2023-03-22 09:44:02'),
(213, '20230322213', '2023-03-22 09:46:02'),
(214, '20230322214', '2023-03-22 09:48:02'),
(215, '20230322215', '2023-03-22 09:50:03'),
(216, '20230322216', '2023-03-22 09:52:03'),
(217, '20230322217', '2023-03-22 09:54:02'),
(218, '20230322218', '2023-03-22 09:56:02'),
(219, '20230322219', '2023-03-22 09:58:02'),
(220, '20230322220', '2023-03-22 10:00:03'),
(221, '20230322221', '2023-03-22 10:02:02'),
(222, '20230322222', '2023-03-22 10:04:02'),
(223, '20230322223', '2023-03-22 10:06:02'),
(224, '20230322224', '2023-03-22 10:08:03'),
(225, '20230322225', '2023-03-22 10:10:02'),
(226, '20230322226', '2023-03-22 10:12:02'),
(227, '20230322227', '2023-03-22 10:14:02'),
(228, '20230322228', '2023-03-22 10:16:02'),
(229, '20230322229', '2023-03-22 10:18:02'),
(230, '20230322230', '2023-03-22 10:20:02'),
(231, '20230322231', '2023-03-22 10:22:02'),
(232, '20230322232', '2023-03-22 10:24:02'),
(233, '20230322233', '2023-03-22 10:26:03'),
(234, '20230322234', '2023-03-22 10:28:02'),
(235, '20230322235', '2023-03-22 10:30:03'),
(236, '20230322236', '2023-03-22 10:32:02'),
(237, '20230322237', '2023-03-22 10:34:02'),
(238, '20230322238', '2023-03-22 10:36:02'),
(239, '20230322239', '2023-03-22 10:38:02'),
(240, '20230322240', '2023-03-22 10:40:03'),
(241, '20230322241', '2023-03-22 10:42:02'),
(242, '20230322242', '2023-03-22 10:44:02'),
(243, '20230322243', '2023-03-22 10:46:02'),
(244, '20230322244', '2023-03-22 10:48:02'),
(245, '20230322245', '2023-03-22 10:50:02'),
(246, '20230322246', '2023-03-22 10:52:02'),
(247, '20230322247', '2023-03-22 10:54:02'),
(248, '20230322248', '2023-03-22 10:56:02'),
(249, '20230322249', '2023-03-22 10:58:02'),
(250, '20230322250', '2023-03-22 11:00:04'),
(251, '20230322251', '2023-03-22 11:02:02'),
(252, '20230322252', '2023-03-22 11:04:02'),
(253, '20230322253', '2023-03-22 11:06:02'),
(254, '20230322254', '2023-03-22 11:08:02'),
(255, '20230322255', '2023-03-22 11:10:03'),
(256, '20230322256', '2023-03-22 11:12:02'),
(257, '20230322257', '2023-03-22 11:14:02'),
(258, '20230322258', '2023-03-22 11:16:02'),
(259, '20230322259', '2023-03-22 11:18:02'),
(260, '20230322260', '2023-03-22 11:20:03'),
(261, '20230322261', '2023-03-22 11:22:02'),
(262, '20230322262', '2023-03-22 11:24:02'),
(263, '20230322263', '2023-03-22 11:26:03'),
(264, '20230322264', '2023-03-22 11:28:01'),
(265, '20230322265', '2023-03-22 11:30:03'),
(266, '20230322266', '2023-03-22 11:32:02'),
(267, '20230322267', '2023-03-22 11:34:02'),
(268, '20230322268', '2023-03-22 11:36:02'),
(269, '20230322269', '2023-03-22 11:38:01'),
(270, '20230322270', '2023-03-22 11:40:03'),
(271, '20230322271', '2023-03-22 11:42:02'),
(272, '20230322272', '2023-03-22 11:44:02'),
(273, '20230322273', '2023-03-22 11:46:02'),
(274, '20230322274', '2023-03-22 11:48:02'),
(275, '20230322275', '2023-03-22 11:50:02'),
(276, '20230322276', '2023-03-22 11:52:02'),
(277, '20230322277', '2023-03-22 11:54:01'),
(278, '20230322278', '2023-03-22 11:56:02'),
(279, '20230322279', '2023-03-22 11:58:02'),
(280, '20230322280', '2023-03-22 12:00:02'),
(281, '20230322281', '2023-03-22 12:02:02'),
(282, '20230322282', '2023-03-22 12:04:01'),
(283, '20230322283', '2023-03-22 12:06:02'),
(284, '20230322284', '2023-03-22 12:08:02'),
(285, '20230322285', '2023-03-22 12:10:02'),
(286, '20230322286', '2023-03-22 12:12:02'),
(287, '20230322287', '2023-03-22 12:14:02'),
(288, '20230322288', '2023-03-22 12:16:02'),
(289, '20230322289', '2023-03-22 12:18:02'),
(290, '20230322290', '2023-03-22 12:20:02'),
(291, '20230322291', '2023-03-22 12:22:02'),
(292, '20230322292', '2023-03-22 12:24:02'),
(293, '20230322293', '2023-03-22 12:26:02'),
(294, '20230322294', '2023-03-22 12:28:02'),
(295, '20230322295', '2023-03-22 12:30:03'),
(296, '20230322296', '2023-03-22 12:32:02'),
(297, '20230322297', '2023-03-22 12:34:02'),
(298, '20230322298', '2023-03-22 12:36:02'),
(299, '20230322299', '2023-03-22 12:38:02'),
(300, '20230322300', '2023-03-22 12:40:03'),
(301, '20230322301', '2023-03-22 12:42:02'),
(302, '20230322302', '2023-03-22 12:44:02'),
(303, '20230322303', '2023-03-22 12:46:02'),
(304, '20230322304', '2023-03-22 12:48:02'),
(305, '20230322305', '2023-03-22 12:50:03'),
(306, '20230322306', '2023-03-22 12:52:02'),
(307, '20230322307', '2023-03-22 12:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gamesettings`
--

CREATE TABLE `tbl_gamesettings` (
  `id` int(11) NOT NULL,
  `settingtype` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_gamesettings`
--

INSERT INTO `tbl_gamesettings` (`id`, `settingtype`, `createdate`) VALUES
(1, 'low', '2021-05-28 15:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresult`
--

CREATE TABLE `tbl_manualresult` (
  `id` int(11) NOT NULL,
  `color` varchar(300) NOT NULL,
  `value` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `status` smallint(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresult`
--

INSERT INTO `tbl_manualresult` (`id`, `color`, `value`, `number`, `status`, `createdate`) VALUES
(1, '<span style=\"color:#f00;\">Red</span> + <span style=\"color:#C71585;\">Violet</span>', 'red+violet', 0, 0, '2021-02-01 00:00:00'),
(2, '<span style=\"color:#090;\">Green</span>', 'green', 1, 0, '2021-02-01 00:00:00'),
(3, '<span style=\"color:#f00;\">Red</span>', 'red', 2, 0, '2021-02-01 00:00:00'),
(4, '<span style=\"color:#090;\">Green</span>', 'green', 3, 0, '2021-02-01 00:00:00'),
(5, '<span style=\"color:#f00;\">Red</span>', 'red', 4, 0, '2021-02-01 00:00:00'),
(6, '<span style=\"color:#090;\">Green</span> + <span style=\"color:#C71585;\">Violet</span>', 'green+violet', 5, 1, '2021-02-01 00:00:00'),
(7, '<span style=\"color:#f00;\">Red</span>', 'red', 6, 0, '2021-02-01 00:00:00'),
(8, '<span style=\"color:#090;\">Green</span>', 'green', 7, 0, '2021-02-01 00:00:00'),
(9, '<span style=\"color:#f00;\">Red</span>', 'red', 8, 0, '2021-02-01 00:00:00'),
(10, '<span style=\"color:#090;\">Green</span>', 'green', 9, 0, '2021-02-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manualresultswitch`
--

CREATE TABLE `tbl_manualresultswitch` (
  `id` int(11) NOT NULL,
  `switch` varchar(50) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_manualresultswitch`
--

INSERT INTO `tbl_manualresultswitch` (`id`, `switch`, `tab`, `createdate`) VALUES
(1, 'yes', 'parity', '2023-03-22 15:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `transactionid` varchar(300) NOT NULL,
  `amount` varchar(300) NOT NULL,
  `status` smallint(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `userid`, `transactionid`, `amount`, `status`, `createdate`) VALUES
(1, 841, '20230322203', '50', 1, '2023-03-22 09:26:43'),
(2, 841, '20230322203', '98', 1, '2023-03-22 14:58:02'),
(3, 841, '20230322204', '100', 1, '2023-03-22 09:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paymentsetting`
--

CREATE TABLE `tbl_paymentsetting` (
  `id` int(11) NOT NULL,
  `rechargeamount` varchar(500) NOT NULL,
  `withdrawalamount` varchar(500) NOT NULL,
  `bonusamount` varchar(500) NOT NULL,
  `rechargebonus` varchar(500) NOT NULL COMMENT 'in%age',
  `level1` varchar(300) NOT NULL COMMENT 'In%age',
  `level2` varchar(300) NOT NULL COMMENT 'In%age'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_paymentsetting`
--

INSERT INTO `tbl_paymentsetting` (`id`, `rechargeamount`, `withdrawalamount`, `bonusamount`, `rechargebonus`, `level1`, `level2`) VALUES
(1, '200', '240', '50', '10', '00.7', '00.5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `images` varchar(300) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productfeature`
--

CREATE TABLE `tbl_productfeature` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `feature` varchar(500) NOT NULL,
  `status` smallint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_productfeature`
--

INSERT INTO `tbl_productfeature` (`id`, `productid`, `title`, `feature`, `status`) VALUES
(3, 1, 'Stone', 'American Diamond', 1),
(4, 1, 'Item Width', '0.5 Centimeters', 1),
(5, 1, 'Item Length', '1.5 Centimeters', 1),
(6, 1, 'Material', 'Gold Plated', 1),
(7, 1, 'Metal', 'Copper', 1),
(8, 1, 'Model Number', 'YCTJNP-08AD-C-GL', 1),
(9, 1, 'Packaging', 'Elegant Jewellery Box/ Jewellery Pouch', 1),
(10, 1, 'Ring Size', 'Free Size', 1),
(11, 1, 'Warranty Type', 'Seller', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_randomdata`
--

CREATE TABLE `tbl_randomdata` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `result` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `timer` int(11) NOT NULL,
  `dayofweek` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_randomdata`
--

INSERT INTO `tbl_randomdata` (`id`, `price`, `result`, `color`, `timer`, `dayofweek`) VALUES
(1, 31069, 9, 'GREEN', 1, 'Day 1'),
(2, 31041, 1, 'GREEN', 2, 'Day 1'),
(3, 31026, 6, 'RED', 3, 'Day 1'),
(4, 30937, 7, 'GREEN', 4, 'Day 1'),
(5, 31024, 4, 'RED', 5, 'Day 1'),
(6, 30952, 2, 'RED', 6, 'Day 1'),
(7, 30863, 3, 'GREEN', 7, 'Day 1'),
(8, 30808, 8, 'RED', 8, 'Day 1'),
(9, 30795, 5, 'GREEN & VIOLET', 9, 'Day 1'),
(10, 30710, 0, 'RED & VIOLET', 10, 'Day 1'),
(11, 30706, 6, 'RED', 11, 'Day 1'),
(12, 30702, 2, 'RED', 12, 'Day 1'),
(13, 30769, 9, 'GREEN', 13, 'Day 1'),
(14, 30809, 9, 'GREEN', 14, 'Day 1'),
(15, 30782, 2, 'RED', 15, 'Day 1'),
(16, 30879, 9, 'GREEN', 16, 'Day 1'),
(17, 30810, 0, 'RED & VIOLET', 17, 'Day 1'),
(18, 30891, 1, 'GREEN', 18, 'Day 1'),
(19, 30973, 3, 'GREEN', 19, 'Day 1'),
(20, 30871, 1, 'GREEN', 20, 'Day 1'),
(21, 30846, 6, 'RED', 21, 'Day 1'),
(22, 30885, 5, 'GREEN & VIOLET', 22, 'Day 1'),
(23, 30951, 1, 'GREEN', 23, 'Day 1'),
(24, 31000, 0, 'RED & VIOLET', 24, 'Day 1'),
(25, 31011, 1, 'GREEN', 25, 'Day 1'),
(26, 30922, 2, 'RED', 26, 'Day 1'),
(27, 30967, 7, 'GREEN', 27, 'Day 1'),
(28, 30881, 1, 'GREEN', 28, 'Day 1'),
(29, 30857, 7, 'GREEN', 29, 'Day 1'),
(30, 30786, 6, 'RED', 30, 'Day 1'),
(31, 30761, 1, 'GREEN', 31, 'Day 1'),
(32, 30724, 4, 'RED', 32, 'Day 1'),
(33, 30778, 8, 'RED', 33, 'Day 1'),
(34, 30863, 3, 'GREEN', 34, 'Day 1'),
(35, 30940, 0, 'RED & VIOLET', 35, 'Day 1'),
(36, 30844, 4, 'RED', 36, 'Day 1'),
(37, 30803, 3, 'GREEN', 37, 'Day 1'),
(38, 30852, 2, 'RED', 38, 'Day 1'),
(39, 30945, 5, 'GREEN & VIOLET', 39, 'Day 1'),
(40, 30882, 2, 'RED', 40, 'Day 1'),
(41, 30853, 3, 'GREEN', 41, 'Day 1'),
(42, 30931, 1, 'GREEN', 42, 'Day 1'),
(43, 30901, 1, 'GREEN', 43, 'Day 1'),
(44, 30821, 1, 'GREEN', 44, 'Day 1'),
(45, 30784, 4, 'RED', 45, 'Day 1'),
(46, 30754, 4, 'RED', 46, 'Day 1'),
(47, 30816, 6, 'RED', 47, 'Day 1'),
(48, 30912, 2, 'RED', 48, 'Day 1'),
(49, 30836, 6, 'RED', 49, 'Day 1'),
(50, 30807, 7, 'GREEN', 50, 'Day 1'),
(51, 30800, 0, 'RED & VIOLET', 51, 'Day 1'),
(52, 30811, 1, 'GREEN', 52, 'Day 1'),
(53, 30859, 9, 'GREEN', 53, 'Day 1'),
(54, 30840, 0, 'RED & VIOLET', 54, 'Day 1'),
(55, 30934, 4, 'RED', 55, 'Day 1'),
(56, 30853, 3, 'GREEN', 56, 'Day 1'),
(57, 30802, 2, 'RED', 57, 'Day 1'),
(58, 30812, 2, 'RED', 58, 'Day 1'),
(59, 30845, 5, 'GREEN & VIOLET', 59, 'Day 1'),
(60, 30873, 3, 'GREEN', 60, 'Day 1'),
(61, 30799, 9, 'GREEN', 61, 'Day 1'),
(62, 30803, 3, 'GREEN', 62, 'Day 1'),
(63, 30858, 8, 'RED', 63, 'Day 1'),
(64, 30903, 3, 'GREEN', 64, 'Day 1'),
(65, 30872, 2, 'RED', 65, 'Day 1'),
(66, 30774, 4, 'RED', 66, 'Day 1'),
(67, 30856, 6, 'RED', 67, 'Day 1'),
(68, 30823, 3, 'GREEN', 68, 'Day 1'),
(69, 30826, 6, 'RED', 69, 'Day 1'),
(70, 30789, 9, 'GREEN', 70, 'Day 1'),
(71, 30748, 8, 'RED', 71, 'Day 1'),
(72, 30834, 4, 'RED', 72, 'Day 1'),
(73, 30785, 5, 'GREEN & VIOLET', 73, 'Day 1'),
(74, 30830, 0, 'RED & VIOLET', 74, 'Day 1'),
(75, 30792, 2, 'RED', 75, 'Day 1'),
(76, 30792, 2, 'RED', 76, 'Day 1'),
(77, 30874, 4, 'RED', 77, 'Day 1'),
(78, 30817, 7, 'GREEN', 78, 'Day 1'),
(79, 30776, 6, 'RED', 79, 'Day 1'),
(80, 30873, 3, 'GREEN', 80, 'Day 1'),
(81, 30905, 5, 'GREEN & VIOLET', 81, 'Day 1'),
(82, 31001, 1, 'GREEN', 82, 'Day 1'),
(83, 31032, 2, 'RED', 83, 'Day 1'),
(84, 31071, 1, 'GREEN', 84, 'Day 1'),
(85, 31067, 7, 'GREEN', 85, 'Day 1'),
(86, 31072, 2, 'RED', 86, 'Day 1'),
(87, 31157, 7, 'GREEN', 87, 'Day 1'),
(88, 31197, 7, 'GREEN', 88, 'Day 1'),
(89, 31200, 0, 'RED & VIOLET', 89, 'Day 1'),
(90, 31113, 3, 'GREEN', 90, 'Day 1'),
(91, 31112, 2, 'RED', 91, 'Day 1'),
(92, 31198, 8, 'RED', 92, 'Day 1'),
(93, 31130, 0, 'RED & VIOLET', 93, 'Day 1'),
(94, 31109, 9, 'GREEN', 94, 'Day 1'),
(95, 31142, 2, 'RED', 95, 'Day 1'),
(96, 31223, 3, 'GREEN', 96, 'Day 1'),
(97, 31270, 0, 'RED & VIOLET', 97, 'Day 1'),
(98, 31297, 7, 'GREEN', 98, 'Day 1'),
(99, 31208, 8, 'RED', 99, 'Day 1'),
(100, 31152, 2, 'RED', 100, 'Day 1'),
(101, 31232, 2, 'RED', 101, 'Day 1'),
(102, 31299, 9, 'GREEN', 102, 'Day 1'),
(103, 31388, 8, 'RED', 103, 'Day 1'),
(104, 31337, 7, 'GREEN', 104, 'Day 1'),
(105, 31360, 0, 'RED & VIOLET', 105, 'Day 1'),
(106, 31417, 7, 'GREEN', 106, 'Day 1'),
(107, 31394, 4, 'RED', 107, 'Day 1'),
(108, 31486, 6, 'RED', 108, 'Day 1'),
(109, 31450, 0, 'RED & VIOLET', 109, 'Day 1'),
(110, 31482, 2, 'RED', 110, 'Day 1'),
(111, 31512, 2, 'RED', 111, 'Day 1'),
(112, 31483, 3, 'GREEN', 112, 'Day 1'),
(113, 31532, 2, 'RED', 113, 'Day 1'),
(114, 31549, 9, 'GREEN', 114, 'Day 1'),
(115, 31458, 8, 'RED', 115, 'Day 1'),
(116, 31528, 8, 'RED', 116, 'Day 1'),
(117, 31612, 2, 'RED', 117, 'Day 1'),
(118, 31553, 3, 'GREEN', 118, 'Day 1'),
(119, 31553, 3, 'GREEN', 119, 'Day 1'),
(120, 31514, 4, 'RED', 120, 'Day 1'),
(121, 31551, 1, 'GREEN', 121, 'Day 1'),
(122, 31568, 8, 'RED', 122, 'Day 1'),
(123, 31577, 7, 'GREEN', 123, 'Day 1'),
(124, 31486, 6, 'RED', 124, 'Day 1'),
(125, 31498, 8, 'RED', 125, 'Day 1'),
(126, 31457, 7, 'GREEN', 126, 'Day 1'),
(127, 31394, 4, 'RED', 127, 'Day 1'),
(128, 31416, 6, 'RED', 128, 'Day 1'),
(129, 31426, 6, 'RED', 129, 'Day 1'),
(130, 31480, 0, 'RED & VIOLET', 130, 'Day 1'),
(131, 31424, 4, 'RED', 131, 'Day 1'),
(132, 31414, 4, 'RED', 132, 'Day 1'),
(133, 31398, 8, 'RED', 133, 'Day 1'),
(134, 31417, 7, 'GREEN', 134, 'Day 1'),
(135, 31443, 3, 'GREEN', 135, 'Day 1'),
(136, 31483, 3, 'GREEN', 136, 'Day 1'),
(137, 31551, 1, 'GREEN', 137, 'Day 1'),
(138, 31466, 6, 'RED', 138, 'Day 1'),
(139, 31371, 1, 'GREEN', 139, 'Day 1'),
(140, 31447, 7, 'GREEN', 140, 'Day 1'),
(141, 31449, 9, 'GREEN', 141, 'Day 1'),
(142, 31499, 9, 'GREEN', 142, 'Day 1'),
(143, 31574, 4, 'RED', 143, 'Day 1'),
(144, 31610, 0, 'RED & VIOLET', 144, 'Day 1'),
(145, 31616, 6, 'RED', 145, 'Day 1'),
(146, 31689, 9, 'GREEN', 146, 'Day 1'),
(147, 31630, 0, 'RED & VIOLET', 147, 'Day 1'),
(148, 31636, 6, 'RED', 148, 'Day 1'),
(149, 31630, 0, 'RED & VIOLET', 149, 'Day 1'),
(150, 31657, 7, 'GREEN', 150, 'Day 1'),
(151, 31745, 5, 'GREEN & VIOLET', 151, 'Day 1'),
(152, 31821, 1, 'GREEN', 152, 'Day 1'),
(153, 31763, 3, 'GREEN', 153, 'Day 1'),
(154, 31680, 0, 'RED & VIOLET', 154, 'Day 1'),
(155, 31668, 8, 'RED', 155, 'Day 1'),
(156, 31638, 8, 'RED', 156, 'Day 1'),
(157, 31641, 1, 'GREEN', 157, 'Day 1'),
(158, 31709, 9, 'GREEN', 158, 'Day 1'),
(159, 31701, 1, 'GREEN', 159, 'Day 1'),
(160, 31646, 6, 'RED', 160, 'Day 1'),
(161, 31647, 7, 'GREEN', 161, 'Day 1'),
(162, 31713, 3, 'GREEN', 162, 'Day 1'),
(163, 31770, 0, 'RED & VIOLET', 163, 'Day 1'),
(164, 31866, 6, 'RED', 164, 'Day 1'),
(165, 31812, 2, 'RED', 165, 'Day 1'),
(166, 31863, 3, 'GREEN', 166, 'Day 1'),
(167, 31802, 2, 'RED', 167, 'Day 1'),
(168, 31893, 3, 'GREEN', 168, 'Day 1'),
(169, 31970, 0, 'RED & VIOLET', 169, 'Day 1'),
(170, 31921, 1, 'GREEN', 170, 'Day 1'),
(171, 31983, 3, 'GREEN', 171, 'Day 1'),
(172, 31887, 7, 'GREEN', 172, 'Day 1'),
(173, 31841, 1, 'GREEN', 173, 'Day 1'),
(174, 31910, 0, 'RED & VIOLET', 174, 'Day 1'),
(175, 31817, 7, 'GREEN', 175, 'Day 1'),
(176, 31734, 4, 'RED', 176, 'Day 1'),
(177, 31749, 9, 'GREEN', 177, 'Day 1'),
(178, 31812, 2, 'RED', 178, 'Day 1'),
(179, 31827, 7, 'GREEN', 179, 'Day 1'),
(180, 31857, 7, 'GREEN', 180, 'Day 1'),
(181, 31769, 9, 'GREEN', 181, 'Day 1'),
(182, 31863, 3, 'GREEN', 182, 'Day 1'),
(183, 31794, 4, 'RED', 183, 'Day 1'),
(184, 31695, 5, 'GREEN & VIOLET', 184, 'Day 1'),
(185, 31766, 6, 'RED', 185, 'Day 1'),
(186, 31741, 1, 'GREEN', 186, 'Day 1'),
(187, 31676, 6, 'RED', 187, 'Day 1'),
(188, 31745, 5, 'GREEN & VIOLET', 188, 'Day 1'),
(189, 31838, 8, 'RED', 189, 'Day 1'),
(190, 31879, 9, 'GREEN', 190, 'Day 1'),
(191, 31935, 5, 'GREEN & VIOLET', 191, 'Day 1'),
(192, 31982, 2, 'RED', 192, 'Day 1'),
(193, 32034, 4, 'RED', 193, 'Day 1'),
(194, 31957, 7, 'GREEN', 194, 'Day 1'),
(195, 32053, 3, 'GREEN', 195, 'Day 1'),
(196, 32056, 6, 'RED', 196, 'Day 1'),
(197, 32087, 7, 'GREEN', 197, 'Day 1'),
(198, 31995, 5, 'GREEN & VIOLET', 198, 'Day 1'),
(199, 32008, 8, 'RED', 199, 'Day 1'),
(200, 31917, 7, 'GREEN', 200, 'Day 1'),
(201, 31835, 5, 'GREEN & VIOLET', 201, 'Day 1'),
(202, 31759, 9, 'GREEN', 202, 'Day 1'),
(203, 31817, 7, 'GREEN', 203, 'Day 1'),
(204, 31883, 3, 'GREEN', 204, 'Day 1'),
(205, 31972, 2, 'RED', 205, 'Day 1'),
(206, 31900, 0, 'RED & VIOLET', 206, 'Day 1'),
(207, 31891, 1, 'GREEN', 207, 'Day 1'),
(208, 31941, 1, 'GREEN', 208, 'Day 1'),
(209, 31927, 7, 'GREEN', 209, 'Day 1'),
(210, 31931, 1, 'GREEN', 210, 'Day 1'),
(211, 31969, 9, 'GREEN', 211, 'Day 1'),
(212, 31979, 9, 'GREEN', 212, 'Day 1'),
(213, 31919, 9, 'GREEN', 213, 'Day 1'),
(214, 31962, 2, 'RED', 214, 'Day 1'),
(215, 31897, 7, 'GREEN', 215, 'Day 1'),
(216, 31873, 3, 'GREEN', 216, 'Day 1'),
(217, 31863, 3, 'GREEN', 217, 'Day 1'),
(218, 31889, 9, 'GREEN', 218, 'Day 1'),
(219, 31800, 0, 'RED & VIOLET', 219, 'Day 1'),
(220, 31832, 2, 'RED', 220, 'Day 1'),
(221, 31793, 3, 'GREEN', 221, 'Day 1'),
(222, 31704, 4, 'RED', 222, 'Day 1'),
(223, 31623, 3, 'GREEN', 223, 'Day 1'),
(224, 31579, 9, 'GREEN', 224, 'Day 1'),
(225, 31546, 6, 'RED', 225, 'Day 1'),
(226, 31550, 0, 'RED & VIOLET', 226, 'Day 1'),
(227, 31586, 6, 'RED', 227, 'Day 1'),
(228, 31539, 9, 'GREEN', 228, 'Day 1'),
(229, 31550, 0, 'RED & VIOLET', 229, 'Day 1'),
(230, 31564, 4, 'RED', 230, 'Day 1'),
(231, 31476, 6, 'RED', 231, 'Day 1'),
(232, 31528, 8, 'RED', 232, 'Day 1'),
(233, 31556, 6, 'RED', 233, 'Day 1'),
(234, 31609, 9, 'GREEN', 234, 'Day 1'),
(235, 31644, 4, 'RED', 235, 'Day 1'),
(236, 31574, 4, 'RED', 236, 'Day 1'),
(237, 31566, 6, 'RED', 237, 'Day 1'),
(238, 31614, 4, 'RED', 238, 'Day 1'),
(239, 31578, 8, 'RED', 239, 'Day 1'),
(240, 31668, 8, 'RED', 240, 'Day 1'),
(241, 31736, 6, 'RED', 241, 'Day 1'),
(242, 31642, 2, 'RED', 242, 'Day 1'),
(243, 31634, 4, 'RED', 243, 'Day 1'),
(244, 31572, 2, 'RED', 244, 'Day 1'),
(245, 31586, 6, 'RED', 245, 'Day 1'),
(246, 31672, 2, 'RED', 246, 'Day 1'),
(247, 31676, 6, 'RED', 247, 'Day 1'),
(248, 31699, 9, 'GREEN', 248, 'Day 1'),
(249, 31604, 4, 'RED', 249, 'Day 1'),
(250, 31555, 5, 'GREEN & VIOLET', 250, 'Day 1'),
(251, 31487, 7, 'GREEN', 251, 'Day 1'),
(252, 31439, 9, 'GREEN', 252, 'Day 1'),
(253, 31423, 3, 'GREEN', 253, 'Day 1'),
(254, 31353, 3, 'GREEN', 254, 'Day 1'),
(255, 31261, 1, 'GREEN', 255, 'Day 1'),
(256, 31233, 3, 'GREEN', 256, 'Day 1'),
(257, 31225, 5, 'GREEN & VIOLET', 257, 'Day 1'),
(258, 31251, 1, 'GREEN', 258, 'Day 1'),
(259, 31204, 4, 'RED', 259, 'Day 1'),
(260, 31193, 3, 'GREEN', 260, 'Day 1'),
(261, 31216, 6, 'RED', 261, 'Day 1'),
(262, 31182, 2, 'RED', 262, 'Day 1'),
(263, 31237, 7, 'GREEN', 263, 'Day 1'),
(264, 31169, 9, 'GREEN', 264, 'Day 1'),
(265, 31188, 8, 'RED', 265, 'Day 1'),
(266, 31105, 5, 'GREEN & VIOLET', 266, 'Day 1'),
(267, 31091, 1, 'GREEN', 267, 'Day 1'),
(268, 31181, 1, 'GREEN', 268, 'Day 1'),
(269, 31090, 0, 'RED & VIOLET', 269, 'Day 1'),
(270, 31026, 6, 'RED', 270, 'Day 1'),
(271, 30940, 0, 'RED & VIOLET', 271, 'Day 1'),
(272, 31006, 6, 'RED', 272, 'Day 1'),
(273, 31026, 6, 'RED', 273, 'Day 1'),
(274, 31017, 7, 'GREEN', 274, 'Day 1'),
(275, 31004, 4, 'RED', 275, 'Day 1'),
(276, 30919, 9, 'GREEN', 276, 'Day 1'),
(277, 31013, 3, 'GREEN', 277, 'Day 1'),
(278, 30967, 7, 'GREEN', 278, 'Day 1'),
(279, 31067, 7, 'GREEN', 279, 'Day 1'),
(280, 31123, 3, 'GREEN', 280, 'Day 1'),
(281, 31145, 5, 'GREEN & VIOLET', 281, 'Day 1'),
(282, 31060, 0, 'RED & VIOLET', 282, 'Day 1'),
(283, 31113, 3, 'GREEN', 283, 'Day 1'),
(284, 31181, 1, 'GREEN', 284, 'Day 1'),
(285, 31217, 7, 'GREEN', 285, 'Day 1'),
(286, 31314, 4, 'RED', 286, 'Day 1'),
(287, 31350, 0, 'RED & VIOLET', 287, 'Day 1'),
(288, 31377, 7, 'GREEN', 288, 'Day 1'),
(289, 31409, 9, 'GREEN', 289, 'Day 1'),
(290, 31504, 4, 'RED', 290, 'Day 1'),
(291, 31467, 7, 'GREEN', 291, 'Day 1'),
(292, 31514, 4, 'RED', 292, 'Day 1'),
(293, 31445, 5, 'GREEN & VIOLET', 293, 'Day 1'),
(294, 31506, 6, 'RED', 294, 'Day 1'),
(295, 31415, 5, 'GREEN & VIOLET', 295, 'Day 1'),
(296, 31410, 0, 'RED & VIOLET', 296, 'Day 1'),
(297, 31445, 5, 'GREEN & VIOLET', 297, 'Day 1'),
(298, 31489, 9, 'GREEN', 298, 'Day 1'),
(299, 31575, 5, 'GREEN & VIOLET', 299, 'Day 1'),
(300, 31677, 7, 'GREEN', 300, 'Day 1'),
(301, 31724, 4, 'RED', 301, 'Day 1'),
(302, 31685, 5, 'GREEN & VIOLET', 302, 'Day 1'),
(303, 31610, 0, 'RED & VIOLET', 303, 'Day 1'),
(304, 31679, 9, 'GREEN', 304, 'Day 1'),
(305, 31609, 9, 'GREEN', 305, 'Day 1'),
(306, 31640, 0, 'RED & VIOLET', 306, 'Day 1'),
(307, 31611, 1, 'GREEN', 307, 'Day 1'),
(308, 31618, 8, 'RED', 308, 'Day 1'),
(309, 31684, 4, 'RED', 309, 'Day 1'),
(310, 31614, 4, 'RED', 310, 'Day 1'),
(311, 31587, 7, 'GREEN', 311, 'Day 1'),
(312, 31561, 1, 'GREEN', 312, 'Day 1'),
(313, 31574, 4, 'RED', 313, 'Day 1'),
(314, 31614, 4, 'RED', 314, 'Day 1'),
(315, 31637, 7, 'GREEN', 315, 'Day 1'),
(316, 31716, 6, 'RED', 316, 'Day 1'),
(317, 31662, 2, 'RED', 317, 'Day 1'),
(318, 31723, 3, 'GREEN', 318, 'Day 1'),
(319, 31754, 4, 'RED', 319, 'Day 1'),
(320, 31707, 7, 'GREEN', 320, 'Day 1'),
(321, 31615, 5, 'GREEN & VIOLET', 321, 'Day 1'),
(322, 31571, 1, 'GREEN', 322, 'Day 1'),
(323, 31638, 8, 'RED', 323, 'Day 1'),
(324, 31629, 9, 'GREEN', 324, 'Day 1'),
(325, 31608, 8, 'RED', 325, 'Day 1'),
(326, 31530, 0, 'RED & VIOLET', 326, 'Day 1'),
(327, 31481, 1, 'GREEN', 327, 'Day 1'),
(328, 31395, 5, 'GREEN & VIOLET', 328, 'Day 1'),
(329, 31477, 7, 'GREEN', 329, 'Day 1'),
(330, 31470, 0, 'RED & VIOLET', 330, 'Day 1'),
(331, 31427, 7, 'GREEN', 331, 'Day 1'),
(332, 31478, 8, 'RED', 332, 'Day 1'),
(333, 31440, 0, 'RED & VIOLET', 333, 'Day 1'),
(334, 31438, 8, 'RED', 334, 'Day 1'),
(335, 31400, 0, 'RED & VIOLET', 335, 'Day 1'),
(336, 31322, 2, 'RED', 336, 'Day 1'),
(337, 31386, 6, 'RED', 337, 'Day 1'),
(338, 31337, 7, 'GREEN', 338, 'Day 1'),
(339, 31284, 4, 'RED', 339, 'Day 1'),
(340, 31277, 7, 'GREEN', 340, 'Day 1'),
(341, 31206, 6, 'RED', 341, 'Day 1'),
(342, 31156, 6, 'RED', 342, 'Day 1'),
(343, 31204, 4, 'RED', 343, 'Day 1'),
(344, 31214, 4, 'RED', 344, 'Day 1'),
(345, 31283, 3, 'GREEN', 345, 'Day 1'),
(346, 31376, 6, 'RED', 346, 'Day 1'),
(347, 31473, 3, 'GREEN', 347, 'Day 1'),
(348, 31431, 1, 'GREEN', 348, 'Day 1'),
(349, 31398, 8, 'RED', 349, 'Day 1'),
(350, 31360, 0, 'RED & VIOLET', 350, 'Day 1'),
(351, 31312, 2, 'RED', 351, 'Day 1'),
(352, 31419, 9, 'GREEN', 352, 'Day 1'),
(353, 31467, 7, 'GREEN', 353, 'Day 1'),
(354, 31414, 4, 'RED', 354, 'Day 1'),
(355, 31350, 0, 'RED & VIOLET', 355, 'Day 1'),
(356, 31290, 0, 'RED & VIOLET', 356, 'Day 1'),
(357, 31362, 2, 'RED', 357, 'Day 1'),
(358, 31368, 8, 'RED', 358, 'Day 1'),
(359, 31398, 8, 'RED', 359, 'Day 1'),
(360, 31477, 7, 'GREEN', 360, 'Day 1'),
(361, 31429, 9, 'GREEN', 361, 'Day 1'),
(362, 31367, 7, 'GREEN', 362, 'Day 1'),
(363, 31379, 9, 'GREEN', 363, 'Day 1'),
(364, 31324, 4, 'RED', 364, 'Day 1'),
(365, 31346, 6, 'RED', 365, 'Day 1'),
(366, 31281, 1, 'GREEN', 366, 'Day 1'),
(367, 31344, 4, 'RED', 367, 'Day 1'),
(368, 31431, 1, 'GREEN', 368, 'Day 1'),
(369, 31467, 7, 'GREEN', 369, 'Day 1'),
(370, 31540, 0, 'RED & VIOLET', 370, 'Day 1'),
(371, 31567, 7, 'GREEN', 371, 'Day 1'),
(372, 31554, 4, 'RED', 372, 'Day 1'),
(373, 31600, 0, 'RED & VIOLET', 373, 'Day 1'),
(374, 31589, 9, 'GREEN', 374, 'Day 1'),
(375, 31644, 4, 'RED', 375, 'Day 1'),
(376, 31708, 8, 'RED', 376, 'Day 1'),
(377, 31682, 2, 'RED', 377, 'Day 1'),
(378, 31671, 1, 'GREEN', 378, 'Day 1'),
(379, 31575, 5, 'GREEN & VIOLET', 379, 'Day 1'),
(380, 31625, 5, 'GREEN & VIOLET', 380, 'Day 1'),
(381, 31536, 6, 'RED', 381, 'Day 1'),
(382, 31567, 7, 'GREEN', 382, 'Day 1'),
(383, 31541, 1, 'GREEN', 383, 'Day 1'),
(384, 31543, 3, 'GREEN', 384, 'Day 1'),
(385, 31498, 8, 'RED', 385, 'Day 1'),
(386, 31424, 4, 'RED', 386, 'Day 1'),
(387, 31331, 1, 'GREEN', 387, 'Day 1'),
(388, 31284, 4, 'RED', 388, 'Day 1'),
(389, 31183, 3, 'GREEN', 389, 'Day 1'),
(390, 31270, 0, 'RED & VIOLET', 390, 'Day 1'),
(391, 31185, 5, 'GREEN & VIOLET', 391, 'Day 1'),
(392, 31227, 7, 'GREEN', 392, 'Day 1'),
(393, 31171, 1, 'GREEN', 393, 'Day 1'),
(394, 31115, 5, 'GREEN & VIOLET', 394, 'Day 1'),
(395, 31177, 7, 'GREEN', 395, 'Day 1'),
(396, 31277, 7, 'GREEN', 396, 'Day 1'),
(397, 31185, 5, 'GREEN & VIOLET', 397, 'Day 1'),
(398, 31189, 9, 'GREEN', 398, 'Day 1'),
(399, 31137, 7, 'GREEN', 399, 'Day 1'),
(400, 31086, 6, 'RED', 400, 'Day 1'),
(401, 31176, 6, 'RED', 401, 'Day 1'),
(402, 31129, 9, 'GREEN', 402, 'Day 1'),
(403, 31136, 6, 'RED', 403, 'Day 1'),
(404, 31167, 7, 'GREEN', 404, 'Day 1'),
(405, 31156, 6, 'RED', 405, 'Day 1'),
(406, 31222, 2, 'RED', 406, 'Day 1'),
(407, 31262, 2, 'RED', 407, 'Day 1'),
(408, 31326, 6, 'RED', 408, 'Day 1'),
(409, 31388, 8, 'RED', 409, 'Day 1'),
(410, 31489, 9, 'GREEN', 410, 'Day 1'),
(411, 31576, 6, 'RED', 411, 'Day 1'),
(412, 31583, 3, 'GREEN', 412, 'Day 1'),
(413, 31633, 3, 'GREEN', 413, 'Day 1'),
(414, 31721, 1, 'GREEN', 414, 'Day 1'),
(415, 31757, 7, 'GREEN', 415, 'Day 1'),
(416, 31731, 1, 'GREEN', 416, 'Day 1'),
(417, 31721, 1, 'GREEN', 417, 'Day 1'),
(418, 31633, 3, 'GREEN', 418, 'Day 1'),
(419, 31640, 0, 'RED & VIOLET', 419, 'Day 1'),
(420, 31582, 2, 'RED', 420, 'Day 1'),
(421, 31508, 8, 'RED', 421, 'Day 1'),
(422, 31557, 7, 'GREEN', 422, 'Day 1'),
(423, 31514, 4, 'RED', 423, 'Day 1'),
(424, 31435, 5, 'GREEN & VIOLET', 424, 'Day 1'),
(425, 31345, 5, 'GREEN & VIOLET', 425, 'Day 1'),
(426, 31347, 7, 'GREEN', 426, 'Day 1'),
(427, 31316, 6, 'RED', 427, 'Day 1'),
(428, 31287, 7, 'GREEN', 428, 'Day 1'),
(429, 31194, 4, 'RED', 429, 'Day 1'),
(430, 31193, 3, 'GREEN', 430, 'Day 1'),
(431, 31178, 8, 'RED', 431, 'Day 1'),
(432, 31112, 2, 'RED', 432, 'Day 1'),
(433, 31129, 9, 'GREEN', 433, 'Day 1'),
(434, 31163, 3, 'GREEN', 434, 'Day 1'),
(435, 31220, 0, 'RED & VIOLET', 435, 'Day 1'),
(436, 31223, 3, 'GREEN', 436, 'Day 1'),
(437, 31208, 8, 'RED', 437, 'Day 1'),
(438, 31211, 1, 'GREEN', 438, 'Day 1'),
(439, 31160, 0, 'RED & VIOLET', 439, 'Day 1'),
(440, 31235, 5, 'GREEN & VIOLET', 440, 'Day 1'),
(441, 31173, 3, 'GREEN', 441, 'Day 1'),
(442, 31239, 9, 'GREEN', 442, 'Day 1'),
(443, 31146, 6, 'RED', 443, 'Day 1'),
(444, 31117, 7, 'GREEN', 444, 'Day 1'),
(445, 31116, 6, 'RED', 445, 'Day 1'),
(446, 31133, 3, 'GREEN', 446, 'Day 1'),
(447, 31131, 1, 'GREEN', 447, 'Day 1'),
(448, 31169, 9, 'GREEN', 448, 'Day 1'),
(449, 31129, 9, 'GREEN', 449, 'Day 1'),
(450, 31053, 3, 'GREEN', 450, 'Day 1'),
(451, 31122, 2, 'RED', 451, 'Day 1'),
(452, 31198, 8, 'RED', 452, 'Day 1'),
(453, 31175, 5, 'GREEN & VIOLET', 453, 'Day 1'),
(454, 31236, 6, 'RED', 454, 'Day 1'),
(455, 31301, 1, 'GREEN', 455, 'Day 1'),
(456, 31293, 3, 'GREEN', 456, 'Day 1'),
(457, 31269, 9, 'GREEN', 457, 'Day 1'),
(458, 31185, 5, 'GREEN & VIOLET', 458, 'Day 1'),
(459, 31121, 1, 'GREEN', 459, 'Day 1'),
(460, 31108, 8, 'RED', 460, 'Day 1'),
(461, 31127, 7, 'GREEN', 461, 'Day 1'),
(462, 31119, 9, 'GREEN', 462, 'Day 1'),
(463, 31071, 1, 'GREEN', 463, 'Day 1'),
(464, 31131, 1, 'GREEN', 464, 'Day 1'),
(465, 31223, 3, 'GREEN', 465, 'Day 1'),
(466, 31280, 0, 'RED & VIOLET', 466, 'Day 1'),
(467, 31229, 9, 'GREEN', 467, 'Day 1'),
(468, 31261, 1, 'GREEN', 468, 'Day 1'),
(469, 31203, 3, 'GREEN', 469, 'Day 1'),
(470, 31185, 5, 'GREEN & VIOLET', 470, 'Day 1'),
(471, 31164, 4, 'RED', 471, 'Day 1'),
(472, 31254, 4, 'RED', 472, 'Day 1'),
(473, 31274, 4, 'RED', 473, 'Day 1'),
(474, 31211, 1, 'GREEN', 474, 'Day 1'),
(475, 31144, 4, 'RED', 475, 'Day 1'),
(476, 31123, 3, 'GREEN', 476, 'Day 1'),
(477, 31079, 9, 'GREEN', 477, 'Day 1'),
(478, 31162, 2, 'RED', 478, 'Day 1'),
(479, 31219, 9, 'GREEN', 479, 'Day 1'),
(480, 29691, 1, 'GREEN', 480, 'Day 1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `price` float NOT NULL,
  `randomprice` float NOT NULL,
  `result` int(11) NOT NULL,
  `randomresult` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `randomcolor` varchar(100) NOT NULL,
  `resulttype` varchar(50) NOT NULL,
  `tabtype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`id`, `periodid`, `price`, `randomprice`, `result`, `randomresult`, `color`, `randomcolor`, `resulttype`, `tabtype`, `createdate`) VALUES
(1, '20230322001', 0, 31156, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 08:14:02'),
(2, '20230322001', 0, 31232, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 08:14:02'),
(3, '20230322001', 0, 31237, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 08:14:02'),
(4, '20230322001', 0, 31610, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 08:14:02'),
(5, '20230322002', 0, 31236, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 08:16:02'),
(6, '20230322002', 0, 30919, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 08:16:02'),
(7, '20230322002', 0, 31185, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 08:16:02'),
(8, '20230322002', 0, 31297, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 08:16:02'),
(9, '20230322003', 0, 31583, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 08:18:02'),
(10, '20230322003', 0, 31424, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 08:18:02'),
(11, '20230322003', 0, 31324, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 08:18:02'),
(12, '20230322003', 0, 30810, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 08:18:02'),
(13, '20230322004', 0, 31156, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 08:20:02'),
(14, '20230322004', 0, 31115, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 08:20:02'),
(15, '20230322004', 0, 31504, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 08:20:02'),
(16, '20230322004', 0, 31972, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 08:20:02'),
(17, '20230322005', 0, 31121, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 08:22:02'),
(18, '20230322005', 0, 31646, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 08:22:02'),
(19, '20230322005', 0, 30761, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 08:22:02'),
(20, '20230322005', 0, 30873, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 08:22:02'),
(21, '20230322006', 0, 31127, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 08:24:02'),
(22, '20230322006', 0, 31637, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 08:24:02'),
(23, '20230322006', 0, 31838, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 08:24:02'),
(24, '20230322006', 0, 31409, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 08:24:02'),
(25, '20230322007', 0, 31254, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 08:26:02'),
(26, '20230322007', 0, 31388, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 08:26:02'),
(27, '20230322007', 0, 31368, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 08:26:02'),
(28, '20230322007', 0, 31995, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 08:26:02'),
(29, '20230322008', 0, 31476, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 08:28:02'),
(30, '20230322008', 0, 30967, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 08:28:02'),
(31, '20230322008', 0, 31386, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 08:28:02'),
(32, '20230322008', 0, 31129, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 08:28:02'),
(33, '20230322009', 0, 31360, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 08:30:02'),
(34, '20230322009', 0, 31280, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 08:30:02'),
(35, '20230322009', 0, 31731, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 08:30:02'),
(36, '20230322009', 0, 31481, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 08:30:02'),
(37, '20230322010', 0, 31578, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 08:32:02'),
(38, '20230322010', 0, 31893, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 08:32:02'),
(39, '20230322010', 0, 31745, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 08:32:02'),
(40, '20230322010', 0, 31232, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 08:32:02'),
(41, '20230322011', 0, 31188, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 08:34:02'),
(42, '20230322011', 0, 31117, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 08:34:02'),
(43, '20230322011', 0, 30952, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 08:34:02'),
(44, '20230322011', 0, 31637, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 08:34:02'),
(45, '20230322012', 0, 31297, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 08:36:02'),
(46, '20230322012', 0, 31206, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 08:36:02'),
(47, '20230322012', 0, 31171, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 08:36:02'),
(48, '20230322012', 0, 31164, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 08:36:02'),
(49, '20230322013', 0, 31633, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 08:38:02'),
(50, '20230322013', 0, 31759, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 08:38:02'),
(51, '20230322013', 0, 31324, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 08:38:02'),
(52, '20230322013', 0, 31769, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 08:38:02'),
(53, '20230322014', 0, 31115, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 08:40:03'),
(54, '20230322014', 0, 31181, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 08:40:03'),
(55, '20230322014', 0, 31609, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 08:40:03'),
(56, '20230322014', 0, 31414, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 08:40:03'),
(57, '20230322015', 0, 31504, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 08:42:02'),
(58, '20230322015', 0, 31680, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 08:42:02'),
(59, '20230322015', 0, 31609, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 08:42:02'),
(60, '20230322015', 0, 30786, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 08:42:02'),
(61, '20230322016', 0, 30778, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 08:44:02'),
(62, '20230322016', 0, 32087, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 08:44:02'),
(63, '20230322016', 0, 31331, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 08:44:02'),
(64, '20230322016', 0, 31208, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 08:44:02'),
(65, '20230322017', 0, 31067, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 08:46:02'),
(66, '20230322017', 0, 30881, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 08:46:02'),
(67, '20230322017', 0, 31582, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 08:46:02'),
(68, '20230322017', 0, 31144, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 08:46:02'),
(69, '20230322018', 0, 31536, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 08:48:02'),
(70, '20230322018', 0, 31324, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 08:48:02'),
(71, '20230322018', 0, 30810, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 08:48:02'),
(72, '20230322018', 0, 31223, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 08:48:02'),
(73, '20230322019', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 08:50:02'),
(74, '20230322019', 0, 31551, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 08:50:02'),
(75, '20230322019', 0, 31550, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 08:50:02'),
(76, '20230322019', 0, 31211, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 08:50:02'),
(77, '20230322020', 0, 31530, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 08:52:02'),
(78, '20230322020', 0, 30724, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 08:52:02'),
(79, '20230322020', 0, 30912, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 08:52:02'),
(80, '20230322020', 0, 31115, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 08:52:02'),
(81, '20230322021', 0, 31424, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 08:54:02'),
(82, '20230322021', 0, 31889, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 08:54:02'),
(83, '20230322021', 0, 31301, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 08:54:02'),
(84, '20230322021', 0, 31554, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 08:54:02'),
(85, '20230322022', 0, 31211, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 08:56:02'),
(86, '20230322022', 0, 31514, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 08:56:02'),
(87, '20230322022', 0, 31440, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 08:56:02'),
(88, '20230322022', 0, 31183, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 08:56:02'),
(89, '20230322023', 0, 31532, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 08:58:02'),
(90, '20230322023', 0, 31326, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 08:58:02'),
(91, '20230322023', 0, 31113, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 08:58:02'),
(92, '20230322023', 0, 31623, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 08:58:02'),
(93, '20230322024', 0, 31972, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 09:00:03'),
(94, '20230322024', 0, 31129, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 09:00:03'),
(95, '20230322024', 0, 31574, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 09:00:03'),
(96, '20230322024', 0, 31935, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 09:00:03'),
(97, '20230322025', 0, 31193, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 09:02:02'),
(98, '20230322025', 0, 31699, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 09:02:02'),
(99, '20230322025', 0, 30931, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 09:02:02'),
(100, '20230322025', 0, 31447, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 09:02:02'),
(101, '20230322026', 0, 31528, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 09:04:03'),
(102, '20230322026', 0, 29691, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 09:04:03'),
(103, '20230322026', 0, 31183, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 09:04:03'),
(104, '20230322026', 0, 31731, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 09:04:03'),
(105, '20230322027', 0, 31571, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 09:06:02'),
(106, '20230322027', 0, 31553, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 09:06:02'),
(107, '20230322027', 0, 31835, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 09:06:02'),
(108, '20230322027', 0, 30702, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 09:06:02'),
(109, '20230322028', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 09:08:02'),
(110, '20230322028', 0, 31564, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 09:08:02'),
(111, '20230322028', 0, 30826, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 09:08:02'),
(112, '20230322028', 0, 31931, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 09:08:02'),
(113, '20230322029', 0, 31662, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 09:10:02'),
(114, '20230322029', 0, 30808, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 09:10:02'),
(115, '20230322029', 0, 31290, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:10:02'),
(116, '20230322029', 0, 31164, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 09:10:02'),
(117, '20230322030', 0, 31514, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 09:12:02'),
(118, '20230322030', 0, 31185, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 09:12:02'),
(119, '20230322030', 0, 30817, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 09:12:02'),
(120, '20230322030', 0, 30853, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 09:12:02'),
(121, '20230322031', 0, 31629, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 09:14:02'),
(122, '20230322031', 0, 31482, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 09:14:02'),
(123, '20230322031', 0, 31582, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 09:14:02'),
(124, '20230322031', 0, 31200, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 09:14:02'),
(125, '20230322032', 0, 30840, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 09:16:02'),
(126, '20230322032', 0, 32087, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 09:16:02'),
(127, '20230322032', 0, 31701, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 09:16:02'),
(128, '20230322032', 0, 31897, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 09:16:02'),
(129, '20230322033', 0, 31024, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 09:18:02'),
(130, '20230322033', 0, 31160, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 09:18:02'),
(131, '20230322033', 0, 31979, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 09:18:02'),
(132, '20230322033', 0, 31398, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 09:18:02'),
(133, '20230322034', 0, 31181, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 09:20:02'),
(134, '20230322034', 0, 31458, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 09:20:02'),
(135, '20230322034', 0, 31362, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 09:20:02'),
(136, '20230322034', 0, 30863, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 09:20:02'),
(137, '20230322035', 0, 31239, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 09:22:02'),
(138, '20230322035', 0, 31171, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 09:22:02'),
(139, '20230322035', 0, 31067, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 09:22:02'),
(140, '20230322035', 0, 30826, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 09:22:02'),
(141, '20230322036', 0, 31612, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 09:24:02'),
(142, '20230322036', 0, 30811, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 09:24:02'),
(143, '20230322036', 0, 30922, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 09:24:02'),
(144, '20230322036', 0, 31227, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 09:24:02'),
(145, '20230322037', 0, 31979, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 09:26:01'),
(146, '20230322037', 0, 30769, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 09:26:01'),
(147, '20230322037', 0, 31316, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 09:26:01'),
(148, '20230322037', 0, 31443, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 09:26:01'),
(149, '20230322038', 0, 31827, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 09:28:01'),
(150, '20230322038', 0, 31440, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 09:28:01'),
(151, '20230322038', 0, 31889, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 09:28:01'),
(152, '20230322038', 0, 31476, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 09:28:01'),
(153, '20230322039', 0, 31414, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 09:30:03'),
(154, '20230322039', 0, 31284, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 09:30:03'),
(155, '20230322039', 0, 31220, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:30:03'),
(156, '20230322039', 0, 31091, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 09:30:03'),
(157, '20230322040', 0, 31395, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 09:32:02'),
(158, '20230322040', 0, 31069, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 09:32:02'),
(159, '20230322040', 0, 31769, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 09:32:02'),
(160, '20230322040', 0, 31145, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 09:32:02'),
(161, '20230322041', 0, 31897, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 09:34:01'),
(162, '20230322041', 0, 30789, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 09:34:01'),
(163, '20230322041', 0, 31440, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:34:01'),
(164, '20230322041', 0, 31274, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 09:34:01'),
(165, '20230322042', 0, 30803, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 09:36:02'),
(166, '20230322042', 0, 31863, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 09:36:02'),
(167, '20230322042', 0, 31630, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:36:02'),
(168, '20230322042', 0, 31445, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 09:36:02'),
(169, '20230322043', 0, 31280, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 09:38:02'),
(170, '20230322043', 0, 31426, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 09:38:02'),
(171, '20230322043', 0, 31680, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:38:02'),
(172, '20230322043', 0, 30856, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 09:38:02'),
(173, '20230322044', 0, 31322, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 09:40:02'),
(174, '20230322044', 0, 31482, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 09:40:02'),
(175, '20230322044', 0, 31173, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 09:40:02'),
(176, '20230322044', 0, 31935, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 09:40:02'),
(177, '20230322045', 0, 30951, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 09:42:02'),
(178, '20230322045', 0, 31723, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 09:42:02'),
(179, '20230322045', 0, 30821, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 09:42:02'),
(180, '20230322045', 0, 31162, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 09:42:02'),
(181, '20230322046', 0, 31680, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 09:44:01'),
(182, '20230322046', 0, 31935, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 09:44:01'),
(183, '20230322046', 0, 31587, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 09:44:01'),
(184, '20230322046', 0, 30809, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 09:44:01'),
(185, '20230322047', 0, 31543, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 09:46:02'),
(186, '20230322047', 0, 31284, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 09:46:02'),
(187, '20230322047', 0, 30882, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 09:46:02'),
(188, '20230322047', 0, 30967, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 09:46:02'),
(189, '20230322048', 0, 31133, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 09:48:02'),
(190, '20230322048', 0, 31284, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 09:48:02'),
(191, '20230322048', 0, 30919, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 09:48:02'),
(192, '20230322048', 0, 31388, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 09:48:02'),
(193, '20230322049', 0, 31429, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 09:50:02'),
(194, '20230322049', 0, 31568, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 09:50:02'),
(195, '20230322049', 0, 31000, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:50:02'),
(196, '20230322049', 0, 31145, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 09:50:02'),
(197, '20230322050', 0, 31053, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 09:52:02'),
(198, '20230322050', 0, 30873, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 09:52:02'),
(199, '20230322050', 0, 31879, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 09:52:02'),
(200, '20230322050', 0, 31116, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 09:52:02'),
(201, '20230322051', 0, 31261, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 09:54:02'),
(202, '20230322051', 0, 30812, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 09:54:02'),
(203, '20230322051', 0, 31450, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:54:02'),
(204, '20230322051', 0, 30808, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 09:54:02'),
(205, '20230322052', 0, 30844, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 09:56:02'),
(206, '20230322052', 0, 30830, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 09:56:02'),
(207, '20230322052', 0, 30940, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 09:56:02'),
(208, '20230322052', 0, 31131, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 09:56:02'),
(209, '20230322053', 0, 31113, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 09:58:02'),
(210, '20230322053', 0, 31164, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 09:58:02'),
(211, '20230322053', 0, 31571, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 09:58:02'),
(212, '20230322053', 0, 31841, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 09:58:02'),
(213, '20230322054', 0, 31185, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 10:00:03'),
(214, '20230322054', 0, 31504, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 10:00:03'),
(215, '20230322054', 0, 31957, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 10:00:03'),
(216, '20230322054', 0, 30821, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 10:00:03'),
(217, '20230322055', 0, 30792, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 10:02:02'),
(218, '20230322055', 0, 31866, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 10:02:02'),
(219, '20230322055', 0, 31108, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 10:02:02'),
(220, '20230322055', 0, 31117, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 10:02:02'),
(221, '20230322056', 0, 31528, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 10:04:01'),
(222, '20230322056', 0, 31498, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 10:04:01'),
(223, '20230322056', 0, 31360, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 10:04:01'),
(224, '20230322056', 0, 31424, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 10:04:01'),
(225, '20230322057', 0, 31182, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 10:06:02'),
(226, '20230322057', 0, 31239, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 10:06:02'),
(227, '20230322057', 0, 31400, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 10:06:02'),
(228, '20230322057', 0, 31173, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 10:06:02'),
(229, '20230322058', 0, 31394, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 10:08:02'),
(230, '20230322058', 0, 31467, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 10:08:02'),
(231, '20230322058', 0, 31498, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 10:08:02'),
(232, '20230322058', 0, 31512, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 10:08:02'),
(233, '20230322059', 0, 31528, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 10:10:02'),
(234, '20230322059', 0, 30807, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 10:10:02'),
(235, '20230322059', 0, 31235, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 10:10:02'),
(236, '20230322059', 0, 31223, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 10:10:02'),
(237, '20230322060', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 10:12:02'),
(238, '20230322060', 0, 31555, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 10:12:02'),
(239, '20230322060', 0, 31647, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 10:12:02'),
(240, '20230322060', 0, 31554, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 10:12:02'),
(241, '20230322061', 0, 31193, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 10:14:02'),
(242, '20230322061', 0, 31689, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 10:14:02'),
(243, '20230322061', 0, 31610, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 10:14:02'),
(244, '20230322061', 0, 31277, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 10:14:02'),
(245, '20230322062', 0, 31657, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 10:16:02'),
(246, '20230322062', 0, 31173, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 10:16:02'),
(247, '20230322062', 0, 31109, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 10:16:02'),
(248, '20230322062', 0, 31337, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 10:16:02'),
(249, '20230322063', 0, 31541, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 10:18:02'),
(250, '20230322063', 0, 30748, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 10:18:02'),
(251, '20230322063', 0, 30784, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 10:18:02'),
(252, '20230322063', 0, 30706, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 10:18:02'),
(253, '20230322064', 0, 31131, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 10:20:02'),
(254, '20230322064', 0, 31972, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 10:20:02'),
(255, '20230322064', 0, 31625, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 10:20:02'),
(256, '20230322064', 0, 31398, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 10:20:02'),
(257, '20230322065', 0, 31514, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 10:22:02'),
(258, '20230322065', 0, 31574, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 10:22:02'),
(259, '20230322065', 0, 31144, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 10:22:02'),
(260, '20230322065', 0, 30792, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 10:22:02'),
(261, '20230322066', 0, 30792, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 10:24:02'),
(262, '20230322066', 0, 31222, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 10:24:02'),
(263, '20230322066', 0, 31541, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 10:24:02'),
(264, '20230322066', 0, 31219, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 10:24:02'),
(265, '20230322067', 0, 31633, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 10:26:03'),
(266, '20230322067', 0, 31543, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 10:26:03'),
(267, '20230322067', 0, 31416, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 10:26:03'),
(268, '20230322067', 0, 31173, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 10:26:03'),
(269, '20230322068', 0, 30885, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 10:28:02'),
(270, '20230322068', 0, 31889, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 10:28:02'),
(271, '20230322068', 0, 31616, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 10:28:02'),
(272, '20230322068', 0, 31682, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 10:28:02'),
(273, '20230322069', 0, 31251, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 10:30:03'),
(274, '20230322069', 0, 30967, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 10:30:03'),
(275, '20230322069', 0, 30951, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 10:30:03'),
(276, '20230322069', 0, 31136, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 10:30:03'),
(277, '20230322070', 0, 31017, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 10:32:02'),
(278, '20230322070', 0, 31657, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 10:32:02'),
(279, '20230322070', 0, 31539, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 10:32:02'),
(280, '20230322070', 0, 31169, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 10:32:02'),
(281, '20230322071', 0, 31483, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 10:34:03'),
(282, '20230322071', 0, 31398, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 10:34:03'),
(283, '20230322071', 0, 31169, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 10:34:03'),
(284, '20230322071', 0, 31423, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 10:34:03'),
(285, '20230322072', 0, 31586, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 10:36:03'),
(286, '20230322072', 0, 30881, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 10:36:03'),
(287, '20230322072', 0, 31634, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 10:36:03'),
(288, '20230322072', 0, 31551, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 10:36:03'),
(289, '20230322073', 0, 31685, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 10:38:02'),
(290, '20230322073', 0, 31458, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 10:38:02'),
(291, '20230322073', 0, 31921, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 10:38:02'),
(292, '20230322073', 0, 31486, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 10:38:02'),
(293, '20230322074', 0, 31668, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 10:40:03'),
(294, '20230322074', 0, 31156, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 10:40:03'),
(295, '20230322074', 0, 31866, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 10:40:03'),
(296, '20230322074', 0, 31478, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 10:40:03'),
(297, '20230322075', 0, 31646, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 10:42:03'),
(298, '20230322075', 0, 31211, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 10:42:03'),
(299, '20230322075', 0, 30802, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 10:42:03'),
(300, '20230322075', 0, 31322, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 10:42:03'),
(301, '20230322076', 0, 31388, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 10:44:02'),
(302, '20230322076', 0, 31589, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 10:44:02'),
(303, '20230322076', 0, 31647, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 10:44:02'),
(304, '20230322076', 0, 31676, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 10:44:02'),
(305, '20230322077', 0, 31489, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 10:46:02'),
(306, '20230322077', 0, 31550, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 10:46:02'),
(307, '20230322077', 0, 31208, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 10:46:02'),
(308, '20230322077', 0, 31431, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 10:46:02'),
(309, '20230322078', 0, 30891, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 10:48:02'),
(310, '20230322078', 0, 31204, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 10:48:02'),
(311, '20230322078', 0, 31011, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 10:48:02'),
(312, '20230322078', 0, 31445, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 10:48:02'),
(313, '20230322079', 0, 31614, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 10:50:02'),
(314, '20230322079', 0, 31178, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 10:50:02'),
(315, '20230322079', 0, 31972, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 10:50:02'),
(316, '20230322079', 0, 31144, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 10:50:02'),
(317, '20230322080', 0, 30834, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 10:52:03'),
(318, '20230322080', 0, 31800, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 10:52:03'),
(319, '20230322080', 0, 31175, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 10:52:03'),
(320, '20230322080', 0, 31821, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 10:52:03'),
(321, '20230322081', 0, 31060, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 10:54:02'),
(322, '20230322081', 0, 31067, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 10:54:02'),
(323, '20230322081', 0, 31586, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 10:54:02'),
(324, '20230322081', 0, 31708, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 10:54:02'),
(325, '20230322082', 0, 31287, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 10:56:02'),
(326, '20230322082', 0, 31173, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 10:56:02'),
(327, '20230322082', 0, 31277, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 10:56:02'),
(328, '20230322082', 0, 30834, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 10:56:02'),
(329, '20230322083', 0, 30863, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 10:58:02'),
(330, '20230322083', 0, 31557, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 10:58:02'),
(331, '20230322083', 0, 31676, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 10:58:02'),
(332, '20230322083', 0, 31337, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 10:58:02'),
(333, '20230322084', 0, 30873, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 11:00:03'),
(334, '20230322084', 0, 31188, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 11:00:03'),
(335, '20230322084', 0, 30834, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 11:00:03'),
(336, '20230322084', 0, 31026, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 11:00:03'),
(337, '20230322085', 0, 30789, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 11:02:02'),
(338, '20230322085', 0, 31156, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 11:02:02'),
(339, '20230322085', 0, 31112, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 11:02:02'),
(340, '20230322085', 0, 31982, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 11:02:02'),
(341, '20230322086', 0, 31704, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 11:04:03'),
(342, '20230322086', 0, 31689, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 11:04:03'),
(343, '20230322086', 0, 30774, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 11:04:03'),
(344, '20230322086', 0, 31514, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 11:04:03'),
(345, '20230322087', 0, 31423, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 11:06:02'),
(346, '20230322087', 0, 31346, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 11:06:02'),
(347, '20230322087', 0, 31398, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 11:06:02'),
(348, '20230322087', 0, 31171, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 11:06:02'),
(349, '20230322088', 0, 30792, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 11:08:02'),
(350, '20230322088', 0, 31398, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 11:08:02'),
(351, '20230322088', 0, 31757, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 11:08:02'),
(352, '20230322088', 0, 31235, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 11:08:02'),
(353, '20230322089', 0, 30940, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 11:10:02'),
(354, '20230322089', 0, 31962, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 11:10:02'),
(355, '20230322089', 0, 30885, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 11:10:02'),
(356, '20230322089', 0, 30811, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 11:10:02'),
(357, '20230322090', 0, 31312, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 11:12:02'),
(358, '20230322090', 0, 31388, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 11:12:02'),
(359, '20230322090', 0, 31759, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 11:12:02'),
(360, '20230322090', 0, 31477, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 11:12:02'),
(361, '20230322091', 0, 31708, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 11:14:02'),
(362, '20230322091', 0, 31536, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 11:14:02'),
(363, '20230322091', 0, 31409, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 11:14:02'),
(364, '20230322091', 0, 31610, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 11:14:02'),
(365, '20230322092', 0, 30934, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 11:16:02'),
(366, '20230322092', 0, 30901, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 11:16:02'),
(367, '20230322092', 0, 31708, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 11:16:02'),
(368, '20230322092', 0, 30782, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 11:16:02'),
(369, '20230322093', 0, 31610, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 11:18:02'),
(370, '20230322093', 0, 31481, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 11:18:02'),
(371, '20230322093', 0, 30874, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 11:18:02'),
(372, '20230322093', 0, 30967, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 11:18:02'),
(373, '20230322094', 0, 32087, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 11:20:02'),
(374, '20230322094', 0, 31262, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 11:20:02'),
(375, '20230322094', 0, 31763, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 11:20:02'),
(376, '20230322094', 0, 31630, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 11:20:02'),
(377, '20230322095', 0, 30830, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 11:22:02'),
(378, '20230322095', 0, 31749, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 11:22:02'),
(379, '20230322095', 0, 31893, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 11:22:02'),
(380, '20230322095', 0, 31112, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 11:22:02'),
(381, '20230322096', 0, 31198, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 11:24:03'),
(382, '20230322096', 0, 31957, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 11:24:03'),
(383, '20230322096', 0, 31551, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 11:24:03'),
(384, '20230322096', 0, 31216, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 11:24:03'),
(385, '20230322097', 0, 30891, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 11:26:02'),
(386, '20230322097', 0, 31164, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 11:26:02'),
(387, '20230322097', 0, 31290, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 11:26:02'),
(388, '20230322097', 0, 31449, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 11:26:02'),
(389, '20230322098', 0, 31489, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 11:28:02'),
(390, '20230322098', 0, 31417, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 11:28:02'),
(391, '20230322098', 0, 30844, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 11:28:02'),
(392, '20230322098', 0, 31554, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 11:28:02'),
(393, '20230322099', 0, 31223, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 11:30:02'),
(394, '20230322099', 0, 31208, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 11:30:02'),
(395, '20230322099', 0, 31429, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 11:30:02'),
(396, '20230322099', 0, 32008, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 11:30:02'),
(397, '20230322100', 0, 30836, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 11:32:02'),
(398, '20230322100', 0, 31481, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 11:32:02'),
(399, '20230322100', 0, 30706, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 11:32:02'),
(400, '20230322100', 0, 31553, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 11:32:02'),
(401, '20230322101', 0, 30830, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 11:34:02'),
(402, '20230322101', 0, 31483, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 11:34:02'),
(403, '20230322101', 0, 31467, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 11:34:02'),
(404, '20230322101', 0, 31362, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 11:34:02'),
(405, '20230322102', 0, 31477, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 11:36:02'),
(406, '20230322102', 0, 31528, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 11:36:02'),
(407, '20230322102', 0, 31641, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 11:36:02'),
(408, '20230322102', 0, 31587, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 11:36:02'),
(409, '20230322103', 0, 31721, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 11:38:02'),
(410, '20230322103', 0, 31957, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 11:38:02'),
(411, '20230322103', 0, 30769, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 11:38:02'),
(412, '20230322103', 0, 31251, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 11:38:02'),
(413, '20230322104', 0, 30748, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 11:40:02'),
(414, '20230322104', 0, 30852, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 11:40:02'),
(415, '20230322104', 0, 31337, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 11:40:02'),
(416, '20230322104', 0, 31931, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 11:40:02'),
(417, '20230322105', 0, 31312, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 11:42:03'),
(418, '20230322105', 0, 31642, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 11:42:03'),
(419, '20230322105', 0, 31482, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 11:42:03'),
(420, '20230322105', 0, 31579, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 11:42:03'),
(421, '20230322106', 0, 30873, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 11:44:03'),
(422, '20230322106', 0, 31169, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 11:44:03'),
(423, '20230322106', 0, 31555, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 11:44:03'),
(424, '20230322106', 0, 31071, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 11:44:03'),
(425, '20230322107', 0, 31550, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 11:46:03'),
(426, '20230322107', 0, 30937, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 11:46:03'),
(427, '20230322107', 0, 31041, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 11:46:03'),
(428, '20230322107', 0, 31176, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 11:46:03'),
(429, '20230322108', 0, 30809, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 11:48:02'),
(430, '20230322108', 0, 31013, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 11:48:02'),
(431, '20230322108', 0, 31145, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 11:48:02'),
(432, '20230322108', 0, 31482, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 11:48:02'),
(433, '20230322109', 0, 30853, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 11:50:03'),
(434, '20230322109', 0, 31156, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 11:50:03'),
(435, '20230322109', 0, 30853, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 11:50:03'),
(436, '20230322109', 0, 31208, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 11:50:03'),
(437, '20230322110', 0, 31409, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 11:52:03'),
(438, '20230322110', 0, 31957, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 11:52:03'),
(439, '20230322110', 0, 31347, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 11:52:03'),
(440, '20230322110', 0, 31539, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 11:52:03'),
(441, '20230322111', 0, 30882, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 11:54:02'),
(442, '20230322111', 0, 30836, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 11:54:02'),
(443, '20230322111', 0, 30816, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 11:54:02'),
(444, '20230322111', 0, 31646, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 11:54:02'),
(445, '20230322112', 0, 31721, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 11:56:02'),
(446, '20230322112', 0, 31578, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 11:56:02'),
(447, '20230322112', 0, 31290, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 11:56:02'),
(448, '20230322112', 0, 31183, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 11:56:02'),
(449, '20230322113', 0, 31200, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 11:58:02'),
(450, '20230322113', 0, 31721, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 11:58:02'),
(451, '20230322113', 0, 31017, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 11:58:02'),
(452, '20230322113', 0, 31614, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 11:58:02'),
(453, '20230322114', 0, 31069, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 12:00:02'),
(454, '20230322114', 0, 31290, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 12:00:02'),
(455, '20230322114', 0, 31232, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 12:00:02'),
(456, '20230322114', 0, 31668, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 12:00:02'),
(457, '20230322115', 0, 31546, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 12:02:02'),
(458, '20230322115', 0, 31704, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 12:02:02'),
(459, '20230322115', 0, 31636, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 12:02:02'),
(460, '20230322115', 0, 31145, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 12:02:02'),
(461, '20230322116', 0, 31376, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 12:04:02'),
(462, '20230322116', 0, 31182, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 12:04:02'),
(463, '20230322116', 0, 31723, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 12:04:02'),
(464, '20230322116', 0, 30782, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 12:04:02'),
(465, '20230322117', 0, 31189, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 12:06:03'),
(466, '20230322117', 0, 31838, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 12:06:03'),
(467, '20230322117', 0, 30872, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 12:06:03'),
(468, '20230322117', 0, 31766, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 12:06:03'),
(469, '20230322118', 0, 31676, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 12:08:03'),
(470, '20230322118', 0, 30784, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 12:08:03'),
(471, '20230322118', 0, 31067, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 12:08:03'),
(472, '20230322118', 0, 31586, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 12:08:03'),
(473, '20230322119', 0, 31177, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 12:10:02'),
(474, '20230322119', 0, 31699, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 12:10:02'),
(475, '20230322119', 0, 30919, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 12:10:02'),
(476, '20230322119', 0, 31136, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 12:10:02'),
(477, '20230322120', 0, 31957, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 12:12:02'),
(478, '20230322120', 0, 30761, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 12:12:02'),
(479, '20230322120', 0, 31026, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 12:12:02'),
(480, '20230322120', 0, 31614, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 12:12:02'),
(481, '20230322121', 0, 31731, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 12:14:02'),
(482, '20230322121', 0, 30817, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 12:14:02'),
(483, '20230322121', 0, 31741, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 12:14:02'),
(484, '20230322121', 0, 31863, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 12:14:02'),
(485, '20230322122', 0, 31123, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 12:16:02'),
(486, '20230322122', 0, 31506, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 12:16:02'),
(487, '20230322122', 0, 31499, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 12:16:02'),
(488, '20230322122', 0, 31528, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 12:16:02'),
(489, '20230322123', 0, 31156, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 12:18:02'),
(490, '20230322123', 0, 31541, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 12:18:02'),
(491, '20230322123', 0, 31214, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 12:18:02'),
(492, '20230322123', 0, 31695, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 12:18:02'),
(493, '20230322124', 0, 31549, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 12:20:02'),
(494, '20230322124', 0, 30844, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 12:20:02'),
(495, '20230322124', 0, 30789, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 12:20:02'),
(496, '20230322124', 0, 31458, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 12:20:02'),
(497, '20230322125', 0, 31553, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 12:22:03'),
(498, '20230322125', 0, 31395, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 12:22:03'),
(499, '20230322125', 0, 31499, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 12:22:03'),
(500, '20230322125', 0, 30846, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 12:22:03'),
(501, '20230322126', 0, 31251, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 12:24:02'),
(502, '20230322126', 0, 30857, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 12:24:02'),
(503, '20230322126', 0, 31024, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 12:24:02'),
(504, '20230322126', 0, 31185, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 12:24:02'),
(505, '20230322127', 0, 30769, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 12:26:02'),
(506, '20230322127', 0, 31072, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 12:26:02'),
(507, '20230322127', 0, 31640, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 12:26:02'),
(508, '20230322127', 0, 31204, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 12:26:02'),
(509, '20230322128', 0, 31614, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 12:28:03'),
(510, '20230322128', 0, 30826, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 12:28:03'),
(511, '20230322128', 0, 32034, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 12:28:03'),
(512, '20230322128', 0, 31164, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 12:28:03'),
(513, '20230322129', 0, 31477, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 12:30:03'),
(514, '20230322129', 0, 31568, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 12:30:03'),
(515, '20230322129', 0, 31574, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 12:30:03'),
(516, '20230322129', 0, 31137, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 12:30:03'),
(517, '20230322130', 0, 31193, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 12:32:02'),
(518, '20230322130', 0, 31214, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 12:32:02'),
(519, '20230322130', 0, 31582, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 12:32:02'),
(520, '20230322130', 0, 31067, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 12:32:02'),
(521, '20230322131', 0, 31447, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 12:34:02'),
(522, '20230322131', 0, 31577, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 12:34:02'),
(523, '20230322131', 0, 30816, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 12:34:02'),
(524, '20230322131', 0, 31467, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 12:34:02'),
(525, '20230322132', 0, 31709, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 12:36:03'),
(526, '20230322132', 0, 31284, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 12:36:03'),
(527, '20230322132', 0, 31646, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 12:36:03'),
(528, '20230322132', 0, 31473, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 12:36:03'),
(529, '20230322133', 0, 31112, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 12:38:02'),
(530, '20230322133', 0, 31684, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 12:38:02'),
(531, '20230322133', 0, 31473, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 12:38:02'),
(532, '20230322133', 0, 31707, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 12:38:02'),
(533, '20230322134', 0, 31350, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 12:40:02'),
(534, '20230322134', 0, 31261, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 12:40:02'),
(535, '20230322134', 0, 31689, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 12:40:02'),
(536, '20230322134', 0, 31794, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 12:40:02'),
(537, '20230322135', 0, 31144, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 12:42:02'),
(538, '20230322135', 0, 31189, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 12:42:02'),
(539, '20230322135', 0, 31287, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 12:42:02'),
(540, '20230322135', 0, 31024, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 12:42:02'),
(541, '20230322136', 0, 31800, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 12:44:03'),
(542, '20230322136', 0, 31731, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 12:44:03'),
(543, '20230322136', 0, 31508, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 12:44:03'),
(544, '20230322136', 0, 32056, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 12:44:03'),
(545, '20230322137', 0, 31026, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 12:46:02'),
(546, '20230322137', 0, 31283, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 12:46:02');
INSERT INTO `tbl_result` (`id`, `periodid`, `price`, `randomprice`, `result`, `randomresult`, `color`, `randomcolor`, `resulttype`, `tabtype`, `createdate`) VALUES
(547, '20230322137', 0, 31557, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 12:46:02'),
(548, '20230322137', 0, 31483, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 12:46:02'),
(549, '20230322138', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 12:48:02'),
(550, '20230322138', 0, 31041, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 12:48:02'),
(551, '20230322138', 0, 31394, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 12:48:02'),
(552, '20230322138', 0, 31117, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 12:48:02'),
(553, '20230322139', 0, 31156, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 12:50:02'),
(554, '20230322139', 0, 31419, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 12:50:02'),
(555, '20230322139', 0, 31041, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 12:50:02'),
(556, '20230322139', 0, 31473, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 12:50:02'),
(557, '20230322140', 0, 31144, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 12:52:02'),
(558, '20230322140', 0, 31541, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 12:52:02'),
(559, '20230322140', 0, 30795, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 12:52:02'),
(560, '20230322140', 0, 31069, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 12:52:02'),
(561, '20230322141', 0, 31863, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 12:54:02'),
(562, '20230322141', 0, 31576, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 12:54:02'),
(563, '20230322141', 0, 30885, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 12:54:02'),
(564, '20230322141', 0, 31233, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 12:54:02'),
(565, '20230322142', 0, 30834, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 12:56:02'),
(566, '20230322142', 0, 31970, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 12:56:02'),
(567, '20230322142', 0, 31156, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 12:56:02'),
(568, '20230322142', 0, 30973, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 12:56:02'),
(569, '20230322143', 0, 31962, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 12:58:03'),
(570, '20230322143', 0, 31239, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 12:58:03'),
(571, '20230322143', 0, 31508, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 12:58:03'),
(572, '20230322143', 0, 31409, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 12:58:03'),
(573, '20230322144', 0, 31577, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 13:00:03'),
(574, '20230322144', 0, 31060, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 13:00:03'),
(575, '20230322144', 0, 31142, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 13:00:03'),
(576, '20230322144', 0, 31514, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 13:00:03'),
(577, '20230322145', 0, 31713, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 13:02:03'),
(578, '20230322145', 0, 31041, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 13:02:03'),
(579, '20230322145', 0, 31142, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 13:02:03'),
(580, '20230322145', 0, 31724, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 13:02:03'),
(581, '20230322146', 0, 31467, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 13:04:02'),
(582, '20230322146', 0, 31684, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 13:04:02'),
(583, '20230322146', 0, 30967, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 13:04:02'),
(584, '20230322146', 0, 31222, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 13:04:02'),
(585, '20230322147', 0, 31225, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 13:06:02'),
(586, '20230322147', 0, 31668, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 13:06:02'),
(587, '20230322147', 0, 31608, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 13:06:02'),
(588, '20230322147', 0, 31371, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 13:06:02'),
(589, '20230322148', 0, 32056, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 13:08:02'),
(590, '20230322148', 0, 31142, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 13:08:02'),
(591, '20230322148', 0, 31270, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 13:08:02'),
(592, '20230322148', 0, 31587, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 13:08:02'),
(593, '20230322149', 0, 31386, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 13:10:03'),
(594, '20230322149', 0, 31763, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 13:10:03'),
(595, '20230322149', 0, 31419, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 13:10:03'),
(596, '20230322149', 0, 30973, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 13:10:03'),
(597, '20230322150', 0, 30844, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 13:12:02'),
(598, '20230322150', 0, 31866, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 13:12:02'),
(599, '20230322150', 0, 31398, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 13:12:02'),
(600, '20230322150', 0, 31709, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 13:12:02'),
(601, '20230322151', 0, 31297, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 13:14:02'),
(602, '20230322151', 0, 30795, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 13:14:02'),
(603, '20230322151', 0, 31486, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 13:14:02'),
(604, '20230322151', 0, 31633, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 13:14:02'),
(605, '20230322152', 0, 31723, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 13:16:02'),
(606, '20230322152', 0, 30830, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 13:16:02'),
(607, '20230322152', 0, 31284, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 13:16:02'),
(608, '20230322152', 0, 31398, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 13:16:02'),
(609, '20230322153', 0, 31269, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 13:18:02'),
(610, '20230322153', 0, 32008, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 13:18:02'),
(611, '20230322153', 0, 31983, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 13:18:02'),
(612, '20230322153', 0, 31344, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 13:18:02'),
(613, '20230322154', 0, 31145, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 13:20:03'),
(614, '20230322154', 0, 30905, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 13:20:03'),
(615, '20230322154', 0, 30812, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 13:20:03'),
(616, '20230322154', 0, 31644, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 13:20:03'),
(617, '20230322155', 0, 31152, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 13:22:03'),
(618, '20230322155', 0, 31400, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 13:22:03'),
(619, '20230322155', 0, 31424, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 13:22:03'),
(620, '20230322155', 0, 31123, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 13:22:03'),
(621, '20230322156', 0, 30702, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 13:24:02'),
(622, '20230322156', 0, 31223, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 13:24:02'),
(623, '20230322156', 0, 31270, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 13:24:02'),
(624, '20230322156', 0, 31445, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 13:24:02'),
(625, '20230322157', 0, 31112, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 13:26:02'),
(626, '20230322157', 0, 31449, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 13:26:02'),
(627, '20230322157', 0, 31478, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 13:26:02'),
(628, '20230322157', 0, 31439, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 13:26:02'),
(629, '20230322158', 0, 31112, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 13:28:02'),
(630, '20230322158', 0, 31716, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 13:28:02'),
(631, '20230322158', 0, 31206, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 13:28:02'),
(632, '20230322158', 0, 31582, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 13:28:02'),
(633, '20230322159', 0, 31553, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 13:30:03'),
(634, '20230322159', 0, 31270, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 13:30:03'),
(635, '20230322159', 0, 31293, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 13:30:03'),
(636, '20230322159', 0, 31935, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 13:30:03'),
(637, '20230322160', 0, 31701, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 13:32:02'),
(638, '20230322160', 0, 31204, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 13:32:02'),
(639, '20230322160', 0, 31053, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 13:32:02'),
(640, '20230322160', 0, 31232, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 13:32:02'),
(641, '20230322161', 0, 31105, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 13:34:02'),
(642, '20230322161', 0, 31293, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 13:34:02'),
(643, '20230322161', 0, 31431, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 13:34:02'),
(644, '20230322161', 0, 31486, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 13:34:02'),
(645, '20230322162', 0, 31685, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 13:36:03'),
(646, '20230322162', 0, 31115, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 13:36:03'),
(647, '20230322162', 0, 31423, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 13:36:03'),
(648, '20230322162', 0, 31504, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 13:36:03'),
(649, '20230322163', 0, 31189, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 13:38:03'),
(650, '20230322163', 0, 31136, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 13:38:03'),
(651, '20230322163', 0, 31164, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 13:38:03'),
(652, '20230322163', 0, 31203, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 13:38:03'),
(653, '20230322164', 0, 31935, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 13:40:02'),
(654, '20230322164', 0, 30856, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 13:40:02'),
(655, '20230322164', 0, 31514, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 13:40:02'),
(656, '20230322164', 0, 31270, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 13:40:02'),
(657, '20230322165', 0, 31377, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 13:42:02'),
(658, '20230322165', 0, 30952, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 13:42:02'),
(659, '20230322165', 0, 31067, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 13:42:02'),
(660, '20230322165', 0, 31419, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 13:42:02'),
(661, '20230322166', 0, 31394, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 13:44:02'),
(662, '20230322166', 0, 31239, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 13:44:02'),
(663, '20230322166', 0, 31610, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 13:44:02'),
(664, '20230322166', 0, 31185, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 13:44:02'),
(665, '20230322167', 0, 30803, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 13:46:02'),
(666, '20230322167', 0, 30802, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 13:46:02'),
(667, '20230322167', 0, 31223, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 13:46:02'),
(668, '20230322167', 0, 31709, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 13:46:02'),
(669, '20230322168', 0, 31769, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 13:48:02'),
(670, '20230322168', 0, 30810, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 13:48:02'),
(671, '20230322168', 0, 31642, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 13:48:02'),
(672, '20230322168', 0, 30799, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 13:48:02'),
(673, '20230322169', 0, 31424, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 13:50:03'),
(674, '20230322169', 0, 31543, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 13:50:03'),
(675, '20230322169', 0, 31668, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 13:50:03'),
(676, '20230322169', 0, 31156, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 13:50:03'),
(677, '20230322170', 0, 30761, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 13:52:02'),
(678, '20230322170', 0, 31274, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 13:52:02'),
(679, '20230322170', 0, 31176, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 13:52:02'),
(680, '20230322170', 0, 31636, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 13:52:02'),
(681, '20230322171', 0, 31287, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 13:54:02'),
(682, '20230322171', 0, 31514, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 13:54:02'),
(683, '20230322171', 0, 31198, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 13:54:02'),
(684, '20230322171', 0, 30852, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 13:54:02'),
(685, '20230322172', 0, 31731, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 13:56:02'),
(686, '20230322172', 0, 31091, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 13:56:02'),
(687, '20230322172', 0, 31251, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 13:56:02'),
(688, '20230322172', 0, 31731, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 13:56:02'),
(689, '20230322173', 0, 30808, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 13:58:02'),
(690, '20230322173', 0, 30934, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 13:58:02'),
(691, '20230322173', 0, 31499, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 13:58:02'),
(692, '20230322173', 0, 31841, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 13:58:02'),
(693, '20230322174', 0, 31439, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 14:00:02'),
(694, '20230322174', 0, 31910, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 14:00:02'),
(695, '20230322174', 0, 31863, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 14:00:02'),
(696, '20230322174', 0, 31640, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 14:00:02'),
(697, '20230322175', 0, 31556, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 14:02:02'),
(698, '20230322175', 0, 31219, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 14:02:02'),
(699, '20230322175', 0, 31113, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 14:02:02'),
(700, '20230322175', 0, 30940, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 14:02:02'),
(701, '20230322176', 0, 31251, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 14:04:02'),
(702, '20230322176', 0, 32056, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 14:04:02'),
(703, '20230322176', 0, 31127, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 14:04:02'),
(704, '20230322176', 0, 30786, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 14:04:02'),
(705, '20230322177', 0, 31112, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 14:06:02'),
(706, '20230322177', 0, 31299, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 14:06:02'),
(707, '20230322177', 0, 31290, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 14:06:02'),
(708, '20230322177', 0, 31636, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 14:06:02'),
(709, '20230322178', 0, 31887, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 14:08:02'),
(710, '20230322178', 0, 31204, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 14:08:02'),
(711, '20230322178', 0, 30784, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 14:08:02'),
(712, '20230322178', 0, 31185, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 14:08:02'),
(713, '20230322179', 0, 31398, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 14:10:02'),
(714, '20230322179', 0, 31145, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 14:10:02'),
(715, '20230322179', 0, 31817, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 14:10:02'),
(716, '20230322179', 0, 31173, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 14:10:02'),
(717, '20230322180', 0, 31604, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 14:12:01'),
(718, '20230322180', 0, 30785, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 14:12:01'),
(719, '20230322180', 0, 31638, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 14:12:01'),
(720, '20230322180', 0, 31721, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 14:12:01'),
(721, '20230322181', 0, 31116, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 14:14:03'),
(722, '20230322181', 0, 30863, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 14:14:03'),
(723, '20230322181', 0, 31388, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 14:14:03'),
(724, '20230322181', 0, 31704, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 14:14:03'),
(725, '20230322182', 0, 31206, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 14:16:02'),
(726, '20230322182', 0, 31414, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 14:16:02'),
(727, '20230322182', 0, 30795, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 14:16:02'),
(728, '20230322182', 0, 30937, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 14:16:02'),
(729, '20230322183', 0, 30710, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 14:18:02'),
(730, '20230322183', 0, 31203, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 14:18:02'),
(731, '20230322183', 0, 31274, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 14:18:02'),
(732, '20230322183', 0, 31646, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 14:18:02'),
(733, '20230322184', 0, 30834, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 14:20:03'),
(734, '20230322184', 0, 30879, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 14:20:03'),
(735, '20230322184', 0, 31301, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 14:20:03'),
(736, '20230322184', 0, 31277, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 14:20:03'),
(737, '20230322185', 0, 30812, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 14:22:03'),
(738, '20230322185', 0, 30853, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 14:22:03'),
(739, '20230322185', 0, 31477, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 14:22:03'),
(740, '20230322185', 0, 30951, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 14:22:03'),
(741, '20230322186', 0, 31119, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 14:24:02'),
(742, '20230322186', 0, 31417, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 14:24:02'),
(743, '20230322186', 0, 31812, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 14:24:02'),
(744, '20230322186', 0, 31032, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 14:24:02'),
(745, '20230322187', 0, 31504, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 14:26:02'),
(746, '20230322187', 0, 31198, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 14:26:02'),
(747, '20230322187', 0, 31676, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 14:26:02'),
(748, '20230322187', 0, 31398, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 14:26:02'),
(749, '20230322188', 0, 31612, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 14:28:02'),
(750, '20230322188', 0, 31972, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 14:28:02'),
(751, '20230322188', 0, 31835, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 14:28:02'),
(752, '20230322188', 0, 30803, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 14:28:02'),
(753, '20230322189', 0, 31222, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 14:30:03'),
(754, '20230322189', 0, 31181, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 14:30:03'),
(755, '20230322189', 0, 31447, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 14:30:03'),
(756, '20230322189', 0, 31614, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 14:30:03'),
(757, '20230322190', 0, 31431, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 14:32:02'),
(758, '20230322190', 0, 31983, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 14:32:02'),
(759, '20230322190', 0, 31841, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 14:32:02'),
(760, '20230322190', 0, 30776, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 14:32:02'),
(761, '20230322191', 0, 30789, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 14:34:02'),
(762, '20230322191', 0, 31144, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 14:34:02'),
(763, '20230322191', 0, 31156, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 14:34:02'),
(764, '20230322191', 0, 31415, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 14:34:02'),
(765, '20230322192', 0, 31419, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 14:36:02'),
(766, '20230322192', 0, 31574, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 14:36:02'),
(767, '20230322192', 0, 31223, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 14:36:02'),
(768, '20230322192', 0, 30922, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 14:36:02'),
(769, '20230322193', 0, 31001, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 14:38:02'),
(770, '20230322193', 0, 31754, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 14:38:02'),
(771, '20230322193', 0, 31346, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 14:38:02'),
(772, '20230322193', 0, 31574, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 14:38:02'),
(773, '20230322194', 0, 31623, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 14:40:02'),
(774, '20230322194', 0, 31427, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 14:40:02'),
(775, '20230322194', 0, 31699, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 14:40:02'),
(776, '20230322194', 0, 31572, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 14:40:02'),
(777, '20230322195', 0, 31567, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 14:42:02'),
(778, '20230322195', 0, 31377, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 14:42:02'),
(779, '20230322195', 0, 31794, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 14:42:02'),
(780, '20230322195', 0, 31642, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 14:42:02'),
(781, '20230322196', 0, 31716, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 14:44:02'),
(782, '20230322196', 0, 31487, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 14:44:02'),
(783, '20230322196', 0, 31579, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 14:44:02'),
(784, '20230322196', 0, 31841, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 14:44:02'),
(785, '20230322197', 0, 31568, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 14:46:02'),
(786, '20230322197', 0, 31270, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 14:46:02'),
(787, '20230322197', 0, 31331, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 14:46:02'),
(788, '20230322197', 0, 31970, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 14:46:02'),
(789, '20230322198', 0, 31550, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 14:48:02'),
(790, '20230322198', 0, 31223, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 14:48:02'),
(791, '20230322198', 0, 31672, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 14:48:02'),
(792, '20230322198', 0, 31541, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 14:48:02'),
(793, '20230322199', 0, 30800, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 14:50:03'),
(794, '20230322199', 0, 30858, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 14:50:03'),
(795, '20230322199', 0, 31763, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 14:50:03'),
(796, '20230322199', 0, 31629, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 14:50:03'),
(797, '20230322200', 0, 31163, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 14:52:02'),
(798, '20230322200', 0, 30879, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 14:52:02'),
(799, '20230322200', 0, 30846, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 14:52:02'),
(800, '20230322200', 0, 31644, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 14:52:02'),
(801, '20230322201', 0, 31499, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 14:54:02'),
(802, '20230322201', 0, 31575, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 14:54:02'),
(803, '20230322201', 0, 31350, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 14:54:02'),
(804, '20230322201', 0, 31344, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 14:54:02'),
(805, '20230322202', 0, 31427, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 14:56:03'),
(806, '20230322202', 0, 31883, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 14:56:03'),
(807, '20230322202', 0, 31707, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 14:56:03'),
(808, '20230322202', 0, 31478, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 14:56:03'),
(809, '20230322203', -48, 31623, 6, 3, 'red', 'GREEN', 'real', 'parity', '2023-03-22 14:58:02'),
(810, '20230322203', 0, 31237, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 14:58:02'),
(811, '20230322203', 0, 30856, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 14:58:02'),
(812, '20230322203', 0, 31113, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 14:58:02'),
(813, '20230322204', 0, 31689, 0, 9, '', 'GREEN', 'real', 'parity', '2023-03-22 15:00:03'),
(814, '20230322204', 0, 31677, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 15:00:03'),
(815, '20230322204', 0, 31467, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 15:00:03'),
(816, '20230322204', 0, 31115, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 15:00:03'),
(817, '20230322205', 0, 31647, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:02:02'),
(818, '20230322205', 0, 31883, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 15:02:02'),
(819, '20230322205', 0, 31214, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 15:02:02'),
(820, '20230322205', 0, 31181, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 15:02:02'),
(821, '20230322206', 0, 31466, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 15:04:02'),
(822, '20230322206', 0, 31709, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 15:04:02'),
(823, '20230322206', 0, 31477, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 15:04:02'),
(824, '20230322206', 0, 31499, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 15:04:02'),
(825, '20230322207', 0, 31157, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:06:02'),
(826, '20230322207', 0, 31232, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 15:06:02'),
(827, '20230322207', 0, 31136, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 15:06:02'),
(828, '20230322207', 0, 30872, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 15:06:02'),
(829, '20230322208', 0, 31567, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:08:03'),
(830, '20230322208', 0, 31616, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 15:08:03'),
(831, '20230322208', 0, 31498, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 15:08:03'),
(832, '20230322208', 0, 31564, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 15:08:03'),
(833, '20230322209', 0, 31439, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 15:10:03'),
(834, '20230322209', 0, 30754, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 15:10:03'),
(835, '20230322209', 0, 31551, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 15:10:03'),
(836, '20230322209', 0, 31657, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 15:10:03'),
(837, '20230322210', 0, 31458, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 15:12:02'),
(838, '20230322210', 0, 31194, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 15:12:02'),
(839, '20230322210', 0, 31676, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 15:12:02'),
(840, '20230322210', 0, 31574, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 15:12:02'),
(841, '20230322211', 0, 31827, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:14:02'),
(842, '20230322211', 0, 30840, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 15:14:02'),
(843, '20230322211', 0, 31794, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 15:14:02'),
(844, '20230322211', 0, 31567, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 15:14:02'),
(845, '20230322212', 0, 31183, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 15:16:02'),
(846, '20230322212', 0, 31699, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 15:16:02'),
(847, '20230322212', 0, 31449, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 15:16:02'),
(848, '20230322212', 0, 30856, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 15:16:02'),
(849, '20230322213', 0, 31091, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 15:18:02'),
(850, '20230322213', 0, 31749, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 15:18:02'),
(851, '20230322213', 0, 31071, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 15:18:02'),
(852, '20230322213', 0, 30748, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 15:18:02'),
(853, '20230322214', 0, 31609, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 15:20:03'),
(854, '20230322214', 0, 31337, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 15:20:03'),
(855, '20230322214', 0, 31614, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 15:20:03'),
(856, '20230322214', 0, 30776, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 15:20:03'),
(857, '20230322215', 0, 30769, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 15:22:03'),
(858, '20230322215', 0, 31086, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 15:22:03'),
(859, '20230322215', 0, 31239, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 15:22:03'),
(860, '20230322215', 0, 31409, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 15:22:03'),
(861, '20230322216', 0, 31067, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:24:02'),
(862, '20230322216', 0, 31476, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 15:24:02'),
(863, '20230322216', 0, 31536, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 15:24:02'),
(864, '20230322216', 0, 31400, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 15:24:02'),
(865, '20230322217', 0, 30786, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 15:26:02'),
(866, '20230322217', 0, 31567, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 15:26:02'),
(867, '20230322217', 0, 30853, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 15:26:02'),
(868, '20230322217', 0, 31566, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 15:26:02'),
(869, '20230322218', 0, 31395, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 15:28:02'),
(870, '20230322218', 0, 31086, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 15:28:02'),
(871, '20230322218', 0, 31887, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 15:28:02'),
(872, '20230322218', 0, 31676, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 15:28:02'),
(873, '20230322219', 0, 31326, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 15:30:03'),
(874, '20230322219', 0, 31574, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 15:30:03'),
(875, '20230322219', 0, 31863, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 15:30:03'),
(876, '20230322219', 0, 31707, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 15:30:03'),
(877, '20230322220', 0, 30951, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 15:32:02'),
(878, '20230322220', 0, 30885, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 15:32:02'),
(879, '20230322220', 0, 31426, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 15:32:02'),
(880, '20230322220', 0, 31211, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 15:32:02'),
(881, '20230322221', 0, 31498, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 15:34:02'),
(882, '20230322221', 0, 31182, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 15:34:02'),
(883, '20230322221', 0, 31105, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 15:34:02'),
(884, '20230322221', 0, 31024, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 15:34:02'),
(885, '20230322222', 0, 31146, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 15:36:02'),
(886, '20230322222', 0, 31863, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 15:36:02'),
(887, '20230322222', 0, 31486, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 15:36:02'),
(888, '20230322222', 0, 31269, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 15:36:02'),
(889, '20230322223', 0, 31127, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:38:03'),
(890, '20230322223', 0, 30931, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 15:38:03'),
(891, '20230322223', 0, 31610, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 15:38:03'),
(892, '20230322223', 0, 31759, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 15:38:03'),
(893, '20230322224', 0, 31466, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 15:40:02'),
(894, '20230322224', 0, 31467, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 15:40:02'),
(895, '20230322224', 0, 31482, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 15:40:02'),
(896, '20230322224', 0, 31941, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 15:40:02'),
(897, '20230322225', 0, 31121, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 15:42:02'),
(898, '20230322225', 0, 31470, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 15:42:02'),
(899, '20230322225', 0, 31489, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 15:42:02'),
(900, '20230322225', 0, 31223, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 15:42:02'),
(901, '20230322226', 0, 30799, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 15:44:02'),
(902, '20230322226', 0, 32034, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 15:44:02'),
(903, '20230322226', 0, 32087, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 15:44:02'),
(904, '20230322226', 0, 31175, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 15:44:02'),
(905, '20230322227', 0, 31225, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 15:46:02'),
(906, '20230322227', 0, 31193, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 15:46:02'),
(907, '20230322227', 0, 31919, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 15:46:02'),
(908, '20230322227', 0, 31611, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 15:46:02'),
(909, '20230322228', 0, 30807, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:48:02'),
(910, '20230322228', 0, 31262, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 15:48:02'),
(911, '20230322228', 0, 31194, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 15:48:02'),
(912, '20230322228', 0, 31235, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 15:48:02'),
(913, '20230322229', 0, 31156, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 15:50:02'),
(914, '20230322229', 0, 31567, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 15:50:02'),
(915, '20230322229', 0, 31185, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 15:50:02'),
(916, '20230322229', 0, 31483, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 15:50:02'),
(917, '20230322230', 0, 31398, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 15:52:02'),
(918, '20230322230', 0, 31572, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 15:52:02'),
(919, '20230322230', 0, 30834, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 15:52:02'),
(920, '20230322230', 0, 31225, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 15:52:02'),
(921, '20230322231', 0, 31685, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 15:54:02'),
(922, '20230322231', 0, 31972, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 15:54:02'),
(923, '20230322231', 0, 31931, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 15:54:02'),
(924, '20230322231', 0, 31477, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 15:54:02'),
(925, '20230322232', 0, 31331, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 15:56:03'),
(926, '20230322232', 0, 31079, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 15:56:03'),
(927, '20230322232', 0, 31350, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 15:56:03'),
(928, '20230322232', 0, 31123, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 15:56:03'),
(929, '20230322233', 0, 31477, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 15:58:02'),
(930, '20230322233', 0, 31457, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 15:58:02'),
(931, '20230322233', 0, 30802, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 15:58:02'),
(932, '20230322233', 0, 31417, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 15:58:02'),
(933, '20230322234', 0, 31578, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 16:00:03'),
(934, '20230322234', 0, 31498, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 16:00:03'),
(935, '20230322234', 0, 31127, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 16:00:03'),
(936, '20230322234', 0, 31004, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 16:00:03'),
(937, '20230322235', 0, 31183, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 16:02:02'),
(938, '20230322235', 0, 30844, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 16:02:02'),
(939, '20230322235', 0, 31112, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 16:02:02'),
(940, '20230322235', 0, 30891, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 16:02:02'),
(941, '20230322236', 0, 31188, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 16:04:02'),
(942, '20230322236', 0, 31835, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 16:04:02'),
(943, '20230322236', 0, 31188, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 16:04:02'),
(944, '20230322236', 0, 31438, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 16:04:02'),
(945, '20230322237', 0, 31350, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 16:06:02'),
(946, '20230322237', 0, 31794, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 16:06:02'),
(947, '20230322237', 0, 31555, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 16:06:02'),
(948, '20230322237', 0, 31887, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 16:06:02'),
(949, '20230322238', 0, 31970, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 16:08:02'),
(950, '20230322238', 0, 31835, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 16:08:02'),
(951, '20230322238', 0, 31634, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 16:08:02'),
(952, '20230322238', 0, 31616, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 16:08:02'),
(953, '20230322239', 0, 30821, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 16:10:02'),
(954, '20230322239', 0, 31350, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 16:10:02'),
(955, '20230322239', 0, 31198, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 16:10:02'),
(956, '20230322239', 0, 31227, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 16:10:02'),
(957, '20230322240', 0, 31449, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 16:12:02'),
(958, '20230322240', 0, 31721, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 16:12:02'),
(959, '20230322240', 0, 31578, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 16:12:02'),
(960, '20230322240', 0, 31415, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 16:12:02'),
(961, '20230322241', 0, 30803, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 16:14:02'),
(962, '20230322241', 0, 31457, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 16:14:02'),
(963, '20230322241', 0, 31026, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 16:14:02'),
(964, '20230322241', 0, 31677, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 16:14:02'),
(965, '20230322242', 0, 31026, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 16:16:02'),
(966, '20230322242', 0, 30817, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 16:16:02'),
(967, '20230322242', 0, 31550, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 16:16:02'),
(968, '20230322242', 0, 30782, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 16:16:02'),
(969, '20230322243', 0, 31477, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 16:18:02'),
(970, '20230322243', 0, 30859, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 16:18:02'),
(971, '20230322243', 0, 31482, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 16:18:02'),
(972, '20230322243', 0, 31536, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 16:18:02'),
(973, '20230322244', 0, 31887, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 16:20:02'),
(974, '20230322244', 0, 31235, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 16:20:02'),
(975, '20230322244', 0, 31219, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 16:20:02'),
(976, '20230322244', 0, 31229, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 16:20:02'),
(977, '20230322245', 0, 31589, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 16:22:02'),
(978, '20230322245', 0, 31091, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 16:22:02'),
(979, '20230322245', 0, 31817, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 16:22:02'),
(980, '20230322245', 0, 31528, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 16:22:02'),
(981, '20230322246', 0, 31610, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 16:24:02'),
(982, '20230322246', 0, 31486, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 16:24:02'),
(983, '20230322246', 0, 31345, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 16:24:02'),
(984, '20230322246', 0, 31398, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 16:24:02'),
(985, '20230322247', 0, 31398, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 16:26:02'),
(986, '20230322247', 0, 31032, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 16:26:02'),
(987, '20230322247', 0, 31163, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 16:26:02'),
(988, '20230322247', 0, 31400, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 16:26:02'),
(989, '20230322248', 0, 31640, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 16:28:02'),
(990, '20230322248', 0, 31214, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 16:28:02'),
(991, '20230322248', 0, 30761, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 16:28:02'),
(992, '20230322248', 0, 31123, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 16:28:02'),
(993, '20230322249', 0, 31203, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 16:30:04'),
(994, '20230322249', 0, 30817, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 16:30:04'),
(995, '20230322249', 0, 31498, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 16:30:04'),
(996, '20230322249', 0, 30951, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 16:30:04'),
(997, '20230322250', 0, 31220, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 16:32:02'),
(998, '20230322250', 0, 30858, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 16:32:02'),
(999, '20230322250', 0, 31314, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 16:32:02'),
(1000, '20230322250', 0, 30846, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 16:32:02'),
(1001, '20230322251', 0, 31541, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 16:34:02'),
(1002, '20230322251', 0, 31427, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 16:34:02'),
(1003, '20230322251', 0, 31431, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 16:34:02'),
(1004, '20230322251', 0, 31193, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 16:34:02'),
(1005, '20230322252', 0, 31682, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 16:36:02'),
(1006, '20230322252', 0, 30776, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 16:36:02'),
(1007, '20230322252', 0, 29691, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 16:36:02'),
(1008, '20230322252', 0, 31223, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 16:36:02'),
(1009, '20230322253', 0, 32053, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 16:38:02'),
(1010, '20230322253', 0, 31142, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 16:38:02'),
(1011, '20230322253', 0, 31314, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 16:38:02'),
(1012, '20230322253', 0, 31568, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 16:38:02'),
(1013, '20230322254', 0, 31676, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 16:40:02'),
(1014, '20230322254', 0, 31723, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 16:40:02'),
(1015, '20230322254', 0, 31377, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 16:40:02'),
(1016, '20230322254', 0, 31350, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 16:40:02'),
(1017, '20230322255', 0, 31071, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 16:42:02'),
(1018, '20230322255', 0, 31608, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 16:42:02'),
(1019, '20230322255', 0, 31287, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 16:42:02'),
(1020, '20230322255', 0, 30967, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 16:42:02'),
(1021, '20230322256', 0, 30940, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 16:44:02'),
(1022, '20230322256', 0, 31812, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 16:44:02'),
(1023, '20230322256', 0, 31377, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 16:44:02'),
(1024, '20230322256', 0, 31723, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 16:44:02'),
(1025, '20230322257', 0, 31557, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 16:46:02'),
(1026, '20230322257', 0, 31614, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 16:46:02'),
(1027, '20230322257', 0, 30789, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 16:46:02'),
(1028, '20230322257', 0, 31417, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 16:46:02'),
(1029, '20230322258', 0, 31731, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 16:48:02'),
(1030, '20230322258', 0, 30853, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 16:48:02'),
(1031, '20230322258', 0, 31889, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 16:48:02'),
(1032, '20230322258', 0, 31708, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 16:48:02'),
(1033, '20230322259', 0, 31203, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 16:50:03'),
(1034, '20230322259', 0, 31398, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 16:50:03'),
(1035, '20230322259', 0, 30873, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 16:50:03'),
(1036, '20230322259', 0, 31345, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 16:50:03'),
(1037, '20230322260', 0, 31345, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 16:52:02'),
(1038, '20230322260', 0, 31910, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 16:52:02'),
(1039, '20230322260', 0, 30785, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 16:52:02'),
(1040, '20230322260', 0, 31634, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 16:52:02'),
(1041, '20230322261', 0, 31769, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 16:54:02'),
(1042, '20230322261', 0, 30799, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 16:54:02'),
(1043, '20230322261', 0, 31891, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 16:54:02'),
(1044, '20230322261', 0, 31611, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 16:54:02'),
(1045, '20230322262', 0, 31445, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 16:56:03'),
(1046, '20230322262', 0, 31567, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 16:56:03'),
(1047, '20230322262', 0, 31623, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 16:56:03'),
(1048, '20230322262', 0, 30845, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 16:56:03'),
(1049, '20230322263', 0, 31416, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 16:58:01'),
(1050, '20230322263', 0, 30834, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 16:58:01'),
(1051, '20230322263', 0, 31108, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 16:58:01'),
(1052, '20230322263', 0, 31528, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 16:58:01'),
(1053, '20230322264', 0, 31414, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 17:00:03'),
(1054, '20230322264', 0, 31540, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 17:00:03'),
(1055, '20230322264', 0, 31835, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 17:00:03'),
(1056, '20230322264', 0, 31105, 0, 5, '', 'green++violet', 'random', 'emerd', '2023-03-22 17:00:03'),
(1057, '20230322265', 0, 31821, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 17:02:02'),
(1058, '20230322265', 0, 31734, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 17:02:02'),
(1059, '20230322265', 0, 31575, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 17:02:02'),
(1060, '20230322265', 0, 31417, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 17:02:02'),
(1061, '20230322266', 0, 31324, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 17:04:02'),
(1062, '20230322266', 0, 31225, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 17:04:02'),
(1063, '20230322266', 0, 31483, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 17:04:02'),
(1064, '20230322266', 0, 30792, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 17:04:02'),
(1065, '20230322267', 0, 31900, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 17:06:02'),
(1066, '20230322267', 0, 31578, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 17:06:02'),
(1067, '20230322267', 0, 31208, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 17:06:02'),
(1068, '20230322267', 0, 30803, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 17:06:02'),
(1069, '20230322268', 0, 31071, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 17:08:01'),
(1070, '20230322268', 0, 31204, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 17:08:01'),
(1071, '20230322268', 0, 31512, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 17:08:01'),
(1072, '20230322268', 0, 31900, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 17:08:01'),
(1073, '20230322269', 0, 31554, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 17:10:03'),
(1074, '20230322269', 0, 31972, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 17:10:03'),
(1075, '20230322269', 0, 31821, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 17:10:03'),
(1076, '20230322269', 0, 31677, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 17:10:03'),
(1077, '20230322270', 0, 31220, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 17:12:02'),
(1078, '20230322270', 0, 31284, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 17:12:02'),
(1079, '20230322270', 0, 31821, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 17:12:02'),
(1080, '20230322270', 0, 31211, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 17:12:02'),
(1081, '20230322271', 0, 31185, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 17:14:02'),
(1082, '20230322271', 0, 31827, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 17:14:02'),
(1083, '20230322271', 0, 31262, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 17:14:02'),
(1084, '20230322271', 0, 31004, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 17:14:02'),
(1085, '20230322272', 0, 31004, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 17:16:02'),
(1086, '20230322272', 0, 31293, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 17:16:02'),
(1087, '20230322272', 0, 31041, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 17:16:02'),
(1088, '20230322272', 0, 31193, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 17:16:02'),
(1089, '20230322273', 0, 31189, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 17:18:02');
INSERT INTO `tbl_result` (`id`, `periodid`, `price`, `randomprice`, `result`, `randomresult`, `color`, `randomcolor`, `resulttype`, `tabtype`, `createdate`) VALUES
(1090, '20230322273', 0, 31071, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 17:18:02'),
(1091, '20230322273', 0, 32056, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 17:18:02'),
(1092, '20230322273', 0, 31724, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 17:18:02'),
(1093, '20230322274', 0, 31388, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 17:20:02'),
(1094, '20230322274', 0, 31575, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 17:20:02'),
(1095, '20230322274', 0, 31731, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 17:20:02'),
(1096, '20230322274', 0, 31458, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 17:20:02'),
(1097, '20230322275', 0, 31508, 0, 8, '', 'red', 'random', 'parity', '2023-03-22 17:22:02'),
(1098, '20230322275', 0, 31379, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 17:22:02'),
(1099, '20230322275', 0, 31377, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 17:22:02'),
(1100, '20230322275', 0, 31586, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 17:22:02'),
(1101, '20230322276', 0, 31156, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 17:24:01'),
(1102, '20230322276', 0, 31326, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 17:24:01'),
(1103, '20230322276', 0, 31530, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 17:24:01'),
(1104, '20230322276', 0, 30951, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 17:24:01'),
(1105, '20230322277', 0, 30934, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 17:26:02'),
(1106, '20230322277', 0, 31528, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 17:26:02'),
(1107, '20230322277', 0, 31646, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 17:26:02'),
(1108, '20230322277', 0, 31376, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 17:26:02'),
(1109, '20230322278', 0, 30945, 0, 5, '', 'green++violet', 'random', 'parity', '2023-03-22 17:28:02'),
(1110, '20230322278', 0, 31514, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 17:28:02'),
(1111, '20230322278', 0, 31486, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 17:28:02'),
(1112, '20230322278', 0, 31749, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 17:28:02'),
(1113, '20230322279', 0, 31616, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 17:30:02'),
(1114, '20230322279', 0, 31026, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 17:30:02'),
(1115, '20230322279', 0, 31611, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 17:30:02'),
(1116, '20230322279', 0, 31169, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 17:30:02'),
(1117, '20230322280', 0, 31699, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 17:32:02'),
(1118, '20230322280', 0, 31115, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 17:32:02'),
(1119, '20230322280', 0, 31668, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 17:32:02'),
(1120, '20230322280', 0, 30774, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 17:32:02'),
(1121, '20230322281', 0, 31506, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 17:34:01'),
(1122, '20230322281', 0, 31417, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 17:34:01'),
(1123, '20230322281', 0, 31477, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 17:34:01'),
(1124, '20230322281', 0, 31614, 0, 4, '', 'red', 'random', 'emerd', '2023-03-22 17:34:01'),
(1125, '20230322282', 0, 31394, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 17:36:02'),
(1126, '20230322282', 0, 31067, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 17:36:02'),
(1127, '20230322282', 0, 31122, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 17:36:02'),
(1128, '20230322282', 0, 30863, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 17:36:02'),
(1129, '20230322283', 0, 31121, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 17:38:02'),
(1130, '20230322283', 0, 31346, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 17:38:02'),
(1131, '20230322283', 0, 31424, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 17:38:02'),
(1132, '20230322283', 0, 30881, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 17:38:02'),
(1133, '20230322284', 0, 31972, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 17:40:02'),
(1134, '20230322284', 0, 31113, 0, 3, '', 'green', 'random', 'sapre', '2023-03-22 17:40:02'),
(1135, '20230322284', 0, 32008, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 17:40:02'),
(1136, '20230322284', 0, 31119, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 17:40:02'),
(1137, '20230322285', 0, 30803, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 17:42:02'),
(1138, '20230322285', 0, 31171, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 17:42:02'),
(1139, '20230322285', 0, 30952, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 17:42:02'),
(1140, '20230322285', 0, 30858, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 17:42:02'),
(1141, '20230322286', 0, 30761, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 17:44:02'),
(1142, '20230322286', 0, 31745, 0, 5, '', 'green++violet', 'random', 'sapre', '2023-03-22 17:44:02'),
(1143, '20230322286', 0, 30945, 0, 5, '', 'green++violet', 'random', 'bcone', '2023-03-22 17:44:02'),
(1144, '20230322286', 0, 31162, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 17:44:02'),
(1145, '20230322287', 0, 31116, 0, 6, '', 'red', 'random', 'parity', '2023-03-22 17:46:02'),
(1146, '20230322287', 0, 31574, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 17:46:02'),
(1147, '20230322287', 0, 31419, 0, 9, '', 'green', 'random', 'bcone', '2023-03-22 17:46:02'),
(1148, '20230322287', 0, 31032, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 17:46:02'),
(1149, '20230322288', 0, 30882, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 17:48:02'),
(1150, '20230322288', 0, 30710, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 17:48:02'),
(1151, '20230322288', 0, 31572, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 17:48:02'),
(1152, '20230322288', 0, 31891, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 17:48:02'),
(1153, '20230322289', 0, 31171, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 17:50:02'),
(1154, '20230322289', 0, 31026, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 17:50:02'),
(1155, '20230322289', 0, 30826, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 17:50:02'),
(1156, '20230322289', 0, 30856, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 17:50:02'),
(1157, '20230322290', 0, 31633, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 17:52:02'),
(1158, '20230322290', 0, 31026, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 17:52:02'),
(1159, '20230322290', 0, 31398, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 17:52:02'),
(1160, '20230322290', 0, 31800, 0, 0, '', 'red++violet', 'random', 'emerd', '2023-03-22 17:52:02'),
(1161, '20230322291', 0, 31630, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 17:54:02'),
(1162, '20230322291', 0, 31222, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 17:54:02'),
(1163, '20230322291', 0, 31794, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 17:54:02'),
(1164, '20230322291', 0, 31109, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 17:54:02'),
(1165, '20230322292', 0, 30810, 0, 0, '', 'red++violet', 'random', 'parity', '2023-03-22 17:56:02'),
(1166, '20230322292', 0, 31716, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 17:56:02'),
(1167, '20230322292', 0, 31757, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 17:56:02'),
(1168, '20230322292', 0, 31841, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 17:56:02'),
(1169, '20230322293', 0, 31642, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 17:58:02'),
(1170, '20230322293', 0, 31910, 0, 0, '', 'red++violet', 'random', 'sapre', '2023-03-22 17:58:02'),
(1171, '20230322293', 0, 31131, 0, 1, '', 'green', 'random', 'bcone', '2023-03-22 17:58:02'),
(1172, '20230322293', 0, 31069, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 17:58:02'),
(1173, '20230322294', 0, 30879, 0, 9, '', 'green', 'random', 'parity', '2023-03-22 18:00:03'),
(1174, '20230322294', 0, 30702, 0, 2, '', 'red', 'random', 'sapre', '2023-03-22 18:00:03'),
(1175, '20230322294', 0, 31182, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 18:00:03'),
(1176, '20230322294', 0, 31163, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 18:00:03'),
(1177, '20230322295', 0, 31287, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 18:02:02'),
(1178, '20230322295', 0, 31638, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 18:02:02'),
(1179, '20230322295', 0, 31450, 0, 0, '', 'red++violet', 'random', 'bcone', '2023-03-22 18:02:02'),
(1180, '20230322295', 0, 31182, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 18:02:02'),
(1181, '20230322296', 0, 30951, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 18:04:02'),
(1182, '20230322296', 0, 31457, 0, 7, '', 'green', 'random', 'sapre', '2023-03-22 18:04:02'),
(1183, '20230322296', 0, 31466, 0, 6, '', 'red', 'random', 'bcone', '2023-03-22 18:04:02'),
(1184, '20230322296', 0, 31069, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 18:04:02'),
(1185, '20230322297', 0, 31731, 0, 1, '', 'green', 'random', 'parity', '2023-03-22 18:06:02'),
(1186, '20230322297', 0, 31281, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 18:06:02'),
(1187, '20230322297', 0, 31893, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 18:06:02'),
(1188, '20230322297', 0, 31812, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 18:06:02'),
(1189, '20230322298', 0, 31887, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 18:08:02'),
(1190, '20230322298', 0, 31394, 0, 4, '', 'red', 'random', 'sapre', '2023-03-22 18:08:02'),
(1191, '20230322298', 0, 31754, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 18:08:02'),
(1192, '20230322298', 0, 31982, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 18:08:02'),
(1193, '20230322299', 0, 31424, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 18:10:03'),
(1194, '20230322299', 0, 31546, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 18:10:03'),
(1195, '20230322299', 0, 31473, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 18:10:03'),
(1196, '20230322299', 0, 31443, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 18:10:03'),
(1197, '20230322300', 0, 31123, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 18:12:02'),
(1198, '20230322300', 0, 30826, 0, 6, '', 'red', 'random', 'sapre', '2023-03-22 18:12:02'),
(1199, '20230322300', 0, 31574, 0, 4, '', 'red', 'random', 'bcone', '2023-03-22 18:12:02'),
(1200, '20230322300', 0, 31528, 0, 8, '', 'red', 'random', 'emerd', '2023-03-22 18:12:02'),
(1201, '20230322301', 0, 31144, 0, 4, '', 'red', 'random', 'parity', '2023-03-22 18:14:02'),
(1202, '20230322301', 0, 31618, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 18:14:02'),
(1203, '20230322301', 0, 31368, 0, 8, '', 'red', 'random', 'bcone', '2023-03-22 18:14:02'),
(1204, '20230322301', 0, 31251, 0, 1, '', 'green', 'random', 'emerd', '2023-03-22 18:14:02'),
(1205, '20230322302', 0, 31417, 0, 7, '', 'green', 'random', 'parity', '2023-03-22 18:16:02'),
(1206, '20230322302', 0, 31608, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 18:16:02'),
(1207, '20230322302', 0, 31157, 0, 7, '', 'green', 'random', 'bcone', '2023-03-22 18:16:02'),
(1208, '20230322302', 0, 31347, 0, 7, '', 'green', 'random', 'emerd', '2023-03-22 18:16:02'),
(1209, '20230322303', 0, 31662, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 18:18:02'),
(1210, '20230322303', 0, 31398, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 18:18:02'),
(1211, '20230322303', 0, 31532, 0, 2, '', 'red', 'random', 'bcone', '2023-03-22 18:18:02'),
(1212, '20230322303', 0, 30856, 0, 6, '', 'red', 'random', 'emerd', '2023-03-22 18:18:02'),
(1213, '20230322304', 0, 31162, 0, 2, '', 'red', 'random', 'parity', '2023-03-22 18:20:03'),
(1214, '20230322304', 0, 31251, 0, 1, '', 'green', 'random', 'sapre', '2023-03-22 18:20:03'),
(1215, '20230322304', 0, 31123, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 18:20:03'),
(1216, '20230322304', 0, 30792, 0, 2, '', 'red', 'random', 'emerd', '2023-03-22 18:20:03'),
(1217, '20230322305', 0, 31133, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 18:22:02'),
(1218, '20230322305', 0, 31879, 0, 9, '', 'green', 'random', 'sapre', '2023-03-22 18:22:02'),
(1219, '20230322305', 0, 31013, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 18:22:02'),
(1220, '20230322305', 0, 31699, 0, 9, '', 'green', 'random', 'emerd', '2023-03-22 18:22:02'),
(1221, '20230322306', 0, 31193, 0, 3, '', 'green', 'random', 'parity', '2023-03-22 18:24:02'),
(1222, '20230322306', 0, 31608, 0, 8, '', 'red', 'random', 'sapre', '2023-03-22 18:24:02'),
(1223, '20230322306', 0, 31053, 0, 3, '', 'green', 'random', 'bcone', '2023-03-22 18:24:02'),
(1224, '20230322306', 0, 31223, 0, 3, '', 'green', 'random', 'emerd', '2023-03-22 18:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reward`
--

CREATE TABLE `tbl_reward` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tempwinner`
--

CREATE TABLE `tbl_tempwinner` (
  `id` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `number` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `total` float NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `mobile` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `code` varchar(255) NOT NULL,
  `owncode` varchar(255) NOT NULL,
  `privacy` varchar(50) NOT NULL,
  `status` smallint(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `mobile`, `email`, `password`, `code`, `owncode`, `privacy`, `status`, `createdate`) VALUES
(841, '8318865802', 'emailofamityadav@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 1, '2023-03-22 09:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userresult`
--

CREATE TABLE `tbl_userresult` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `periodid` varchar(300) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `openprice` float NOT NULL,
  `tab` varchar(50) NOT NULL,
  `paidamount` float NOT NULL,
  `fee` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_userresult`
--

INSERT INTO `tbl_userresult` (`id`, `userid`, `periodid`, `type`, `value`, `amount`, `openprice`, `tab`, `paidamount`, `fee`, `status`, `createdate`) VALUES
(1, 841, '20230322203', 'button', 'Red', 50, 31623, 'parity', 98, 1, 'success', '2023-03-22 14:58:02'),
(2, 841, '20230322204', 'button', 'Red', 100, 31689, 'parity', 98, 2, 'fail', '2023-03-22 15:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `envelopestatus` smallint(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_wallet`
--

INSERT INTO `tbl_wallet` (`id`, `userid`, `amount`, `envelopestatus`, `createdate`) VALUES
(1, 841, '1948', 1, '2023-03-22 09:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_walletsummery`
--

CREATE TABLE `tbl_walletsummery` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `type` varchar(50) NOT NULL,
  `actiontype` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_walletsummery`
--

INSERT INTO `tbl_walletsummery` (`id`, `userid`, `orderid`, `amount`, `type`, `actiontype`, `createdate`) VALUES
(1, 841, 1, 50, 'debit', 'join', '2023-03-22 09:26:43'),
(2, 841, 2, 98, 'credit', 'win', '2023-03-22 14:58:02'),
(3, 841, 3, 100, 'debit', 'join', '2023-03-22 09:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal`
--

CREATE TABLE `tbl_withdrawal` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `payout` varchar(50) NOT NULL,
  `payid` int(11) NOT NULL,
  `status` smallint(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wager_amount`
--

CREATE TABLE `wager_amount` (
  `id` int(11) NOT NULL,
  `tot_deposit` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wager_amt` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_menu`
--
ALTER TABLE `child_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wager_amount`
--
ALTER TABLE `wager_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `child_menu`
--
ALTER TABLE `child_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_bankdetail`
--
ALTER TABLE `tbl_bankdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_betting`
--
ALTER TABLE `tbl_betting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bonussummery`
--
ALTER TABLE `tbl_bonussummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_bonuswithdrawal`
--
ALTER TABLE `tbl_bonuswithdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_envelop`
--
ALTER TABLE `tbl_envelop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gameid`
--
ALTER TABLE `tbl_gameid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `tbl_gamesettings`
--
ALTER TABLE `tbl_gamesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_manualresult`
--
ALTER TABLE `tbl_manualresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_manualresultswitch`
--
ALTER TABLE `tbl_manualresultswitch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_paymentsetting`
--
ALTER TABLE `tbl_paymentsetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_productfeature`
--
ALTER TABLE `tbl_productfeature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_randomdata`
--
ALTER TABLE `tbl_randomdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1225;

--
-- AUTO_INCREMENT for table `tbl_reward`
--
ALTER TABLE `tbl_reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tempwinner`
--
ALTER TABLE `tbl_tempwinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=842;

--
-- AUTO_INCREMENT for table `tbl_userresult`
--
ALTER TABLE `tbl_userresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_walletsummery`
--
ALTER TABLE `tbl_walletsummery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_withdrawal`
--
ALTER TABLE `tbl_withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wager_amount`
--
ALTER TABLE `wager_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
