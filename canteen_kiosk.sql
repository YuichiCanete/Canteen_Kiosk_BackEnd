-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 07:15 PM
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
-- Database: `canteen_kiosk`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL COMMENT 'Unique Food Id',
  `quantity` int(11) DEFAULT NULL COMMENT 'Quantity of the food',
  `order_id` int(11) DEFAULT NULL COMMENT 'Order Id that the food is connected to',
  `food_detail_id` int(11) DEFAULT NULL COMMENT 'Food Detail Id that the food is connected to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `quantity`, `order_id`, `food_detail_id`) VALUES
(91, 0, 59, 1),
(92, 0, 59, 2),
(93, 0, 59, 3),
(94, 0, 59, 4),
(95, 5, 59, 5),
(96, 0, 59, 6),
(97, 0, 59, 7),
(98, 0, 59, 8),
(99, 0, 59, 9),
(100, 0, 59, 10),
(101, 0, 59, 35),
(102, 5, 60, 1),
(103, 0, 60, 2),
(104, 5, 60, 3),
(105, 6, 60, 4),
(106, 0, 60, 5),
(107, 0, 60, 6),
(108, 0, 60, 7),
(109, 0, 60, 8),
(110, 0, 60, 9),
(111, 0, 60, 10),
(112, 0, 60, 35),
(113, 0, 61, 1),
(114, 0, 61, 2),
(115, 0, 61, 3),
(116, 0, 61, 4),
(117, 0, 61, 5),
(118, 0, 61, 6),
(119, 0, 61, 7),
(120, 2, 61, 8),
(121, 0, 61, 9),
(122, 0, 61, 10),
(123, 0, 61, 35),
(124, 2, 62, 1),
(125, 2, 62, 2),
(126, 1, 62, 3),
(127, 2, 62, 4),
(128, 2, 62, 5),
(129, 2, 62, 6),
(130, 0, 62, 7),
(131, 0, 62, 8),
(132, 0, 62, 9),
(133, 0, 62, 10),
(134, 0, 62, 35),
(135, 3, 63, 1),
(136, 3, 63, 2),
(137, 4, 63, 3),
(138, 3, 63, 4),
(139, 3, 63, 5),
(140, 3, 63, 6),
(141, 0, 63, 7),
(142, 0, 63, 8),
(143, 0, 63, 9),
(144, 0, 63, 10),
(145, 0, 63, 35),
(146, 5, 64, 1),
(147, 5, 64, 2),
(148, 0, 64, 3),
(149, 5, 64, 4),
(150, 5, 64, 5),
(151, 0, 64, 6),
(152, 0, 64, 7),
(153, 0, 64, 8),
(154, 0, 64, 9),
(155, 0, 64, 10),
(156, 0, 64, 35),
(157, 0, 65, 1),
(158, 1, 65, 2),
(159, 0, 65, 3),
(160, 0, 65, 4),
(161, 0, 65, 5),
(162, 0, 65, 6),
(163, 0, 65, 7),
(164, 0, 65, 8),
(165, 0, 65, 9),
(166, 0, 65, 10),
(167, 0, 65, 35),
(179, 0, 67, 1),
(180, 0, 67, 2),
(181, 2, 67, 3),
(182, 0, 67, 4),
(183, 0, 67, 5),
(184, 0, 67, 6),
(185, 0, 67, 7),
(186, 0, 67, 8),
(187, 0, 67, 9),
(188, 0, 67, 10),
(189, 0, 67, 35),
(191, 0, 68, 1),
(192, 0, 68, 2),
(193, 0, 68, 3),
(194, 0, 68, 4),
(195, 0, 68, 5),
(196, 5, 68, 6),
(197, 5, 68, 7),
(198, 5, 68, 8),
(199, 5, 68, 9),
(200, 0, 68, 10),
(201, 0, 68, 35),
(203, 0, 69, 1),
(204, 0, 69, 2),
(205, 0, 69, 3),
(206, 5, 69, 4),
(207, 5, 69, 5),
(208, 3, 69, 6),
(209, 0, 69, 7),
(210, 0, 69, 8),
(211, 0, 69, 9),
(212, 0, 69, 10),
(213, 0, 69, 35),
(215, 0, 70, 1),
(216, 0, 70, 2),
(217, 0, 70, 3),
(218, 0, 70, 4),
(219, 0, 70, 5),
(220, 0, 70, 6),
(221, 0, 70, 7),
(222, 3, 70, 8),
(223, 0, 70, 9),
(224, 0, 70, 10),
(225, 3, 70, 35),
(227, 0, 71, 1),
(228, 0, 71, 2),
(229, 0, 71, 3),
(230, 4, 71, 4),
(231, 0, 71, 5),
(232, 4, 71, 6),
(233, 0, 71, 7),
(234, 0, 71, 8),
(235, 0, 71, 9),
(236, 0, 71, 10),
(237, 0, 71, 35),
(239, 0, 72, 1),
(240, 0, 72, 2),
(241, 0, 72, 3),
(242, 0, 72, 4),
(243, 0, 72, 5),
(244, 0, 72, 6),
(245, 1, 72, 7),
(246, 1, 72, 8),
(247, 3, 72, 9),
(248, 0, 72, 10),
(249, 0, 72, 35),
(251, 1, 73, 1),
(252, 0, 73, 2),
(253, 0, 73, 3),
(254, 0, 73, 4),
(255, 0, 73, 5),
(256, 0, 73, 6),
(257, 0, 73, 7),
(258, 0, 73, 8),
(259, 0, 73, 9),
(260, 0, 73, 10),
(261, 0, 73, 35),
(263, 3, 74, 1),
(264, 0, 74, 2),
(265, 0, 74, 3),
(266, 3, 74, 4),
(267, 3, 74, 5),
(268, 3, 74, 6),
(269, 0, 74, 7),
(270, 3, 74, 8),
(271, 0, 74, 9),
(272, 0, 74, 10),
(273, 0, 74, 35),
(275, 3, 75, 1),
(276, 0, 75, 2),
(277, 0, 75, 3),
(278, 4, 75, 4),
(279, 2, 75, 5),
(280, 2, 75, 6),
(281, 1, 75, 7),
(282, 1, 75, 8),
(283, 1, 75, 9),
(284, 0, 75, 10),
(285, 1, 75, 35),
(287, 4, 76, 1),
(288, 0, 76, 2),
(289, 2, 76, 3),
(290, 2, 76, 4),
(291, 0, 76, 5),
(292, 0, 76, 6),
(293, 2, 76, 7),
(294, 0, 76, 8),
(295, 0, 76, 9),
(296, 0, 76, 10),
(297, 0, 76, 35),
(299, 2, 77, 1),
(300, 0, 77, 2),
(301, 1, 77, 3),
(302, 3, 77, 4),
(303, 0, 77, 5),
(304, 1, 77, 6),
(305, 1, 77, 7),
(306, 0, 77, 8),
(307, 0, 77, 9),
(308, 0, 77, 10),
(309, 0, 77, 35),
(311, 0, 78, 1),
(312, 0, 78, 2),
(313, 0, 78, 3),
(314, 0, 78, 4),
(315, 0, 78, 5),
(316, 1, 78, 6),
(317, 1, 78, 7),
(318, 3, 78, 8),
(319, 2, 78, 9),
(320, 0, 78, 10),
(321, 3, 78, 35),
(323, 2, 79, 1),
(324, 2, 79, 2),
(325, 3, 79, 3),
(326, 2, 79, 4),
(327, 0, 79, 5),
(328, 1, 79, 6),
(329, 3, 79, 7),
(330, 0, 79, 8),
(331, 0, 79, 9),
(332, 0, 79, 10),
(333, 0, 79, 35),
(335, 6, 80, 1),
(336, 0, 80, 2),
(337, 0, 80, 3),
(338, 2, 80, 4),
(339, 0, 80, 5),
(340, 2, 80, 6),
(341, 2, 80, 7),
(342, 2, 80, 8),
(343, 2, 80, 9),
(344, 0, 80, 10),
(345, 2, 80, 35),
(347, 1, 81, 1),
(348, 2, 81, 2),
(349, 3, 81, 3),
(350, 0, 81, 4),
(351, 0, 81, 5),
(352, 1, 81, 6),
(353, 2, 81, 7),
(354, 0, 81, 8),
(355, 0, 81, 9),
(356, 0, 81, 10),
(357, 0, 81, 35),
(359, 2, 82, 1),
(360, 0, 82, 2),
(361, 1, 82, 3),
(362, 5, 82, 4),
(363, 0, 82, 5),
(364, 2, 82, 6),
(365, 2, 82, 7),
(366, 2, 82, 8),
(367, 2, 82, 9),
(368, 0, 82, 10),
(369, 1, 82, 35),
(371, 1, 83, 1),
(372, 0, 83, 2),
(373, 1, 83, 3),
(374, 1, 83, 4),
(375, 0, 83, 5),
(376, 1, 83, 6),
(377, 1, 83, 7),
(378, 1, 83, 8),
(379, 2, 83, 9),
(380, 0, 83, 10),
(381, 2, 83, 35),
(383, 4, 84, 1),
(384, 0, 84, 2),
(385, 1, 84, 3),
(386, 4, 84, 4),
(387, 0, 84, 5),
(388, 0, 84, 6),
(389, 0, 84, 7),
(390, 0, 84, 8),
(391, 0, 84, 9),
(392, 0, 84, 10),
(393, 0, 84, 35),
(394, 3, 85, 1),
(395, 2, 85, 2),
(396, 1, 85, 3),
(397, 0, 85, 4),
(398, 0, 85, 5),
(399, 0, 85, 6),
(400, 0, 85, 7),
(401, 0, 85, 8),
(402, 0, 85, 9),
(403, 0, 85, 10),
(404, 0, 85, 35),
(405, 0, 86, 1),
(406, 0, 86, 2),
(407, 0, 86, 3),
(408, 3, 86, 4),
(409, 1, 86, 5),
(410, 2, 86, 6),
(411, 0, 86, 7),
(412, 0, 86, 8),
(413, 0, 86, 9),
(414, 0, 86, 10),
(415, 0, 86, 35),
(416, 0, 87, 1),
(417, 0, 87, 2),
(418, 0, 87, 3),
(419, 0, 87, 4),
(420, 0, 87, 5),
(421, 0, 87, 6),
(422, 1, 87, 7),
(423, 2, 87, 8),
(424, 3, 87, 9),
(425, 0, 87, 10),
(426, 0, 87, 35),
(427, 0, 88, 1),
(428, 0, 88, 2),
(429, 2, 88, 3),
(430, 0, 88, 4),
(431, 1, 88, 5),
(432, 0, 88, 6),
(433, 3, 88, 7),
(434, 0, 88, 8),
(435, 0, 88, 9),
(436, 0, 88, 10),
(437, 0, 88, 35),
(438, 3, 89, 1),
(439, 0, 89, 2),
(440, 0, 89, 3),
(441, 0, 89, 4),
(442, 1, 89, 5),
(443, 0, 89, 6),
(444, 0, 89, 7),
(445, 0, 89, 8),
(446, 2, 89, 9),
(447, 0, 89, 10),
(448, 0, 89, 35),
(449, 2, 90, 1),
(450, 0, 90, 2),
(451, 2, 90, 3),
(452, 2, 90, 4),
(453, 2, 90, 5),
(454, 0, 90, 6),
(455, 0, 90, 7),
(456, 0, 90, 8),
(457, 1, 90, 9),
(458, 0, 90, 10),
(459, 0, 90, 35),
(460, 9, 91, 1),
(461, 3, 91, 2),
(462, 1, 91, 3),
(463, 6, 91, 4),
(464, 5, 91, 5),
(465, 3, 91, 6),
(466, 1, 91, 7),
(467, 3, 91, 8),
(468, 4, 91, 9),
(469, 0, 91, 10),
(470, 0, 91, 35),
(472, 1, 92, 1),
(473, 1, 92, 2),
(474, 0, 92, 3),
(475, 0, 92, 4),
(476, 0, 92, 5),
(477, 0, 92, 6),
(478, 0, 92, 7),
(479, 0, 92, 8),
(480, 0, 92, 9),
(481, 0, 92, 10),
(482, 0, 92, 35),
(484, 1, 93, 1),
(485, 1, 93, 2),
(486, 0, 93, 3),
(487, 0, 93, 4),
(488, 0, 93, 5),
(489, 0, 93, 6),
(490, 0, 93, 7),
(491, 0, 93, 8),
(492, 0, 93, 9),
(493, 0, 93, 10),
(494, 0, 93, 35),
(496, 1, 94, 1),
(497, 1, 94, 2),
(498, 0, 94, 3),
(499, 0, 94, 4),
(500, 0, 94, 5),
(501, 0, 94, 6),
(502, 0, 94, 7),
(503, 0, 94, 8),
(504, 0, 94, 9),
(505, 0, 94, 10),
(506, 0, 94, 35);

-- --------------------------------------------------------

--
-- Table structure for table `food_details`
--

CREATE TABLE `food_details` (
  `food_detail_id` int(11) NOT NULL COMMENT 'Unique Food Detail Id',
  `name` varchar(15) DEFAULT NULL COMMENT 'Name of the food/menu',
  `price` int(11) DEFAULT NULL COMMENT 'Price of the food/menu',
  `available_stock` int(11) DEFAULT NULL COMMENT 'Currently Remaining Available Stock of the food',
  `image` varchar(255) NOT NULL COMMENT 'Link of the image from the web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_details`
--

INSERT INTO `food_details` (`food_detail_id`, `name`, `price`, `available_stock`, `image`) VALUES
(1, 'Egg', 15, 76, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWQuDOcn0KamvCoSWJB3Qnsw6CtIDTMvEUUKOTDyjBKg&s'),
(2, 'Hotdog', 15, 67, 'https://pampangasbest.store/cdn/shop/products/TASTY-MEATY-HOTDOG-WITH-CHEESE-JUMBO-500G-2.jpg?v=1705019883'),
(3, 'Siomai', 5, 69, 'https://panlasangpinoy.com/wp-content/uploads/2020/01/pork-siomai.jpg'),
(4, 'Rice', 10, 39, 'https://www.allrecipes.com/thmb/RKpnSHLUDT2klppYgx8jAF47GyM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/52490-PuertoRicanSteamedRice-DDMFS-061-4x3-3c3da714aa614037ad1c135ec303526d.jpg'),
(5, 'Spaghetti', 60, 40, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAa-8aSmUOI_A1r6OjtNzIe82FwKvsO4lhQrblBdBJSg&s'),
(6, 'Cheese Stick', 5, 20, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8WSAIxx_87Sb-aZMgxu2i74QAu3AUm78eeKA3Zdrp2w&s'),
(7, 'Lumpia', 5, 20, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtkDgVWv8TUncdCwxjA_pCK1JNFTYvJnWGpUlrcfwbhg&s'),
(8, 'Pizza', 25, 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkWy7zWA1uCUJhUEryYZfZp5u5-diPrz1TWNN7tNenTA&s'),
(9, 'Mentos', 5, 5, 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/e/mentos-fruit-roll-378g_2.jpg'),
(10, 'pillows', 10, 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3m_4r06_Z2toqTNWVydCEKTsrxETVmo5iyfU_FBbwNA&s'),
(35, 'Pancit canton', 20, 1, 'https://www.luckyme.ph/img/products/webp/2023_0418_LuckyMe_EHC_75g_Mockup_1stPass.webp');

-- --------------------------------------------------------

--
-- Stand-in structure for view `get_tallies`
-- (See below for the actual view)
--
CREATE TABLE `get_tallies` (
`user_order_id` int(11)
,`tally_id` int(11)
,`user_id` int(11)
,`salary_period` date
,`amount` decimal(42,0)
,`tally_status` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `get_total`
-- (See below for the actual view)
--
CREATE TABLE `get_total` (
`order_id` int(11)
,`total` decimal(42,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL COMMENT 'Unique Order Id',
  `user_order_id` int(11) DEFAULT NULL COMMENT 'User Order Id that the Order is connected to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_order_id`) VALUES
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_preparing`
-- (See below for the actual view)
--
CREATE TABLE `order_preparing` (
`user_order_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `order_ready`
-- (See below for the actual view)
--
CREATE TABLE `order_ready` (
`user_order_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `tally`
--

CREATE TABLE `tally` (
  `tally_id` int(11) NOT NULL COMMENT 'Unique Tally Id',
  `tally_status` varchar(11) DEFAULT NULL COMMENT 'Status of the tally',
  `salary_period` date DEFAULT NULL COMMENT 'Date of salary that will be automatically deducted',
  `user_order_id` int(11) DEFAULT NULL COMMENT 'User Order Id that the tally is connected to'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tally`
--

INSERT INTO `tally` (`tally_id`, `tally_status`, `salary_period`, `user_order_id`) VALUES
(8, 'paid', '2024-05-01', 59),
(9, 'paid', '2024-05-18', 62),
(10, 'paid', '2024-05-15', 63),
(11, 'paid', '2024-05-15', 69),
(12, 'unpaid', '2024-05-15', 70),
(13, 'unpaid', '2024-05-30', 72),
(14, 'unpaid', '2024-05-30', 74),
(15, 'unpaid', '2024-06-01', 75),
(16, 'unpaid', '2024-06-01', 78),
(17, 'unpaid', '2024-05-01', 79),
(18, 'unpaid', '2024-05-01', 81),
(19, 'unpaid', '2024-05-01', 82),
(20, 'unpaid', '2024-05-15', 85),
(21, 'paid', '2024-05-15', 86),
(22, 'unpaid', '2024-05-30', 87),
(23, 'unpaid', '2024-05-30', 88),
(24, 'unpaid', '2024-05-15', 89),
(25, 'unpaid', '2024-05-15', 90),
(26, 'unpaid', '2024-05-18', 93);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL COMMENT 'Unique User Id',
  `password` varchar(255) DEFAULT NULL COMMENT 'Password of the User',
  `user_type` varchar(11) NOT NULL COMMENT 'Type of user using the system'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `user_type`) VALUES
(12345678, 'gAAAAABmMezvqPJsI0Q3uMHn_04WfgeA_nclabQJq9Bt0iliImpmfyvZyex8FfrOHtOaQL34JjRtTsPMZ7owTUDHVTZxvHdDZg==', 'counter'),
(22000099, 'gAAAAABmR49SDUjIYWryTchxhL5Ve1i4lNLv3QpykPRM68Ehw2kClX0yQPuwtqFtBEU5ZBC1gK2rWV4B-JPl0oYN_GhOMeiuyA==', 'personnel'),
(111222333, 'gAAAAABmLmi54z35JwpeANxp5xPGVS9_Wkt6zkrydfG77SXc1CUa7jkjMzgOWEglBzT_lGZ4ouCqy6ThFlx348qa6NEUOHTQ9Q==', 'admin'),
(220000000, 'gAAAAABmO3Qst16zd2ePE0BbUqh6uFggQUrvcSNmwYazWLVPIYAcgBNXMUAaMtVeUjtU2slFe1CoTLNGwXxHOPNDYVip0Mr3HQ==', 'student'),
(220000743, 'gAAAAABmLmhRdEuqOHh8UqVGZWYBWLHiYO16VhqiOnMpf0BnxQgg4LF_O53QNXqz8wPRZrlO-TvJx-x85WHGVjjreNXq9wRMtg==', 'personnel'),
(220000744, 'gAAAAABmLmhWSI0HjEG6DxSczBJ8xZpaFJb_ls2roLgR3VwLG1Nr9R6IL4SOCvbBW-Kn0MsFbu7kTI-NEhA0O3eZ2yjXJgZY5Q==', 'personnel'),
(220000745, 'gAAAAABmLmhYoFLT2HnLPJNAVN50X32NI5De_H6Ga9IteHfTiZV-ymzU2oYaLJQckBqgR-2Fai5jB3lsHqeSx14cUMuk7J0KxQ==', 'personnel'),
(220000746, 'gAAAAABmLmhb-_KQQFUm5WNKmJ8jMnPCeu2znS-oXgs_ORSlhXhJ4CUZe8TlldFGUdOMY8nBobQ2fTf2WDS7OcryPu-StJna7Q==', 'personnel'),
(220000747, 'gAAAAABmLmhe4pSSiWZnccqcqd3uRSMj2aN8om9Eb6J9zOHhch_XUSZ43nxoiXaa335BYG-Sh8sKDXTv2lHXp_bZr_-_BYvt5Q==', 'personnel'),
(220000748, 'gAAAAABmLmhgil3QhJ9QGXO0ACYdFE5WsBFwdWlvua8LTRidnYklJiOb_3aNbsHbA6l5dc-BgIejXp8bnPC6c3leE24zGNuXuw==', 'personnel'),
(220000749, 'gAAAAABmLmhjK5583YiGH_ibieIVSHxSAm70PmgC6NuZss0DmVJuE5cugeOSVDMw5CLoQPPFmHm_OuxmMA91r-pxyqfC0jrPLg==', 'personnel'),
(220000750, 'gAAAAABmLmhlxkxBjorMPWk0YriQAj1r_EGiY5C86GUYuHmnApokrSHgBK2HuZ_nDdaaeRygeo-_r2qv7gxLEAH4JoCr6Vl_LA==', 'personnel'),
(220000751, 'gAAAAABmLmho_aDGhufVoCTWJ_kBt-fs8uOCZnPMSCkmRdvkiOcJjR_oaiaGSdY06U75eqZNHJOO_N4zSzd2-wTH_tnfHSLLag==', 'personnel'),
(222333444, 'gAAAAABmLmj3cXDXLSKAkwSzlISxPcO00NvgMxuYsmtJuL0lt1vGhEePNaq0lB82IG-02FTdfYZj-JokzLPo9bULSbPHVWP7Qw==', 'cashier');

-- --------------------------------------------------------

--
-- Table structure for table `user_order`
--

CREATE TABLE `user_order` (
  `user_order_id` int(11) NOT NULL COMMENT 'Unique User Order Id',
  `payment_type` varchar(11) DEFAULT NULL COMMENT 'Type of payment',
  `order_date` date DEFAULT NULL COMMENT 'Date of transaction',
  `user_id` int(11) DEFAULT NULL COMMENT 'User of the order',
  `order_status` varchar(11) NOT NULL COMMENT 'Current Status of the order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`user_order_id`, `payment_type`, `order_date`, `user_id`, `order_status`) VALUES
(59, 'tally', '2024-05-13', 220000744, 'ready'),
(60, 'cash', '2024-05-13', 220000743, 'cancelled'),
(61, 'cash', '2024-05-13', 220000000, 'cancelled'),
(62, 'tally', '2024-05-17', 220000743, 'ready'),
(63, 'tally', '2024-05-17', 220000745, 'cancelled'),
(64, 'cash', '2024-05-01', 220000000, 'cancelled'),
(65, 'cash', '2024-05-18', 220000000, 'done'),
(67, 'cash', '2024-05-19', 220000000, 'done'),
(68, 'cash', '2024-05-19', 220000000, 'preparing'),
(69, 'tally', '2024-05-20', 220000743, 'done'),
(70, 'tally', '2024-05-20', 220000743, 'preparing'),
(71, 'cash', '2024-05-21', 220000743, 'preparing'),
(72, 'tally', '2024-05-21', 220000743, 'preparing'),
(73, 'cash', '2024-05-22', 220000000, 'preparing'),
(74, 'tally', '2024-05-22', 220000744, 'preparing'),
(75, 'tally', '2024-05-23', 220000744, 'preparing'),
(76, 'cash', '2024-05-23', 220000744, 'preparing'),
(77, 'cash', '2024-05-24', 220000744, 'preparing'),
(78, 'tally', '2024-05-24', 220000744, 'preparing'),
(79, 'tally', '2024-05-25', 220000743, 'preparing'),
(80, 'cash', '2024-05-25', 220000743, 'preparing'),
(81, 'tally', '2024-05-26', 220000743, 'preparing'),
(82, 'tally', '2024-05-26', 220000744, 'preparing'),
(83, 'cash', '2024-05-27', 220000744, 'preparing'),
(84, 'cash', '2024-05-17', 220000000, 'preparing'),
(85, 'tally', '2024-05-01', 220000743, 'preparing'),
(86, 'tally', '2024-05-01', 220000743, 'preparing'),
(87, 'tally', '2024-05-02', 220000743, 'preparing'),
(88, 'tally', '2024-05-02', 220000744, 'preparing'),
(89, 'tally', '2024-05-03', 220000744, 'preparing'),
(90, 'tally', '2024-05-03', 220000744, 'ready'),
(91, 'cash', '2024-05-18', 220000000, 'preparing'),
(92, 'cash', '2024-05-18', 220000000, 'preparing'),
(93, 'tally', '2024-05-18', 220000743, 'preparing'),
(94, 'cash', '2024-05-18', 220000743, 'preparing');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_order`
-- (See below for the actual view)
--
CREATE TABLE `view_order` (
`food_details_id` int(11)
,`order_id` int(11)
,`food_id` int(11)
,`food_name` varchar(15)
,`unit_price` int(11)
,`quantity` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `get_tallies`
--
DROP TABLE IF EXISTS `get_tallies`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `get_tallies`  AS SELECT `tally`.`user_order_id` AS `user_order_id`, `tally`.`tally_id` AS `tally_id`, `user_order`.`user_id` AS `user_id`, `tally`.`salary_period` AS `salary_period`, sum(`food`.`quantity` * `food_details`.`price`) AS `amount`, `tally`.`tally_status` AS `tally_status` FROM ((((`food` join `food_details` on(`food`.`food_detail_id` = `food_details`.`food_detail_id`)) join `order` on(`food`.`order_id` = `order`.`order_id`)) join `user_order` on(`order`.`user_order_id` = `user_order`.`user_order_id`)) join `tally` on(`order`.`user_order_id` = `tally`.`user_order_id`)) WHERE `user_order`.`payment_type` = 'tally' GROUP BY `user_order`.`user_id`, `tally`.`salary_period` ;

-- --------------------------------------------------------

--
-- Structure for view `get_total`
--
DROP TABLE IF EXISTS `get_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `get_total`  AS SELECT `food`.`order_id` AS `order_id`, sum(`food_details`.`price` * `food`.`quantity`) AS `total` FROM (((`food_details` join `food` on(`food_details`.`food_detail_id` = `food`.`food_detail_id`)) join `order` on(`food`.`order_id` = `order`.`order_id`)) join `user_order` on(`order`.`user_order_id` = `user_order`.`user_order_id`)) GROUP BY `food`.`order_id` ;

-- --------------------------------------------------------

--
-- Structure for view `order_preparing`
--
DROP TABLE IF EXISTS `order_preparing`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_preparing`  AS SELECT `user_order`.`user_order_id` AS `user_order_id` FROM `user_order` WHERE `user_order`.`order_status` = 'preparing' ;

-- --------------------------------------------------------

--
-- Structure for view `order_ready`
--
DROP TABLE IF EXISTS `order_ready`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_ready`  AS SELECT `user_order`.`user_order_id` AS `user_order_id` FROM `user_order` WHERE `user_order`.`order_status` = 'ready' ;

-- --------------------------------------------------------

--
-- Structure for view `view_order`
--
DROP TABLE IF EXISTS `view_order`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_order`  AS SELECT `f`.`food_detail_id` AS `food_details_id`, `f`.`order_id` AS `order_id`, `f`.`food_id` AS `food_id`, `fd`.`name` AS `food_name`, `fd`.`price` AS `unit_price`, `f`.`quantity` AS `quantity` FROM (`food` `f` join `food_details` `fd` on(`f`.`food_detail_id` = `fd`.`food_detail_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `order_id` (`order_id`,`food_detail_id`),
  ADD KEY `food_detail_id` (`food_detail_id`);

--
-- Indexes for table `food_details`
--
ALTER TABLE `food_details`
  ADD PRIMARY KEY (`food_detail_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_order_id` (`user_order_id`);

--
-- Indexes for table `tally`
--
ALTER TABLE `tally`
  ADD PRIMARY KEY (`tally_id`),
  ADD KEY `user_order_id` (`user_order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_order`
--
ALTER TABLE `user_order`
  ADD PRIMARY KEY (`user_order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Food Id', AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `food_details`
--
ALTER TABLE `food_details`
  MODIFY `food_detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Food Detail Id', AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tally`
--
ALTER TABLE `tally`
  MODIFY `tally_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique Tally Id', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `user_order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique User Order Id', AUTO_INCREMENT=95;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `food_ibfk_2` FOREIGN KEY (`food_detail_id`) REFERENCES `food_details` (`food_detail_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_order_id`) REFERENCES `user_order` (`user_order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tally`
--
ALTER TABLE `tally`
  ADD CONSTRAINT `tally_ibfk_1` FOREIGN KEY (`user_order_id`) REFERENCES `user_order` (`user_order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_order`
--
ALTER TABLE `user_order`
  ADD CONSTRAINT `user_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
