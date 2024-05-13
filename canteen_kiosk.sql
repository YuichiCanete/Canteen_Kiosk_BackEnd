-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 04:31 AM
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
  `food_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `food_detail_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `quantity`, `order_id`, `food_detail_id`) VALUES
(69, 2, 57, 1),
(70, 0, 57, 2),
(71, 0, 57, 3),
(72, 2, 57, 4),
(73, 0, 57, 5),
(74, 0, 57, 6),
(75, 0, 57, 7),
(76, 0, 57, 8),
(77, 0, 57, 9),
(78, 0, 57, 10),
(79, 0, 57, 35),
(80, 4, 58, 1),
(81, 0, 58, 2),
(82, 5, 58, 3),
(83, 2, 58, 4),
(84, 0, 58, 5),
(85, 0, 58, 6),
(86, 0, 58, 7),
(87, 0, 58, 8),
(88, 0, 58, 9),
(89, 0, 58, 10),
(90, 0, 58, 35),
(91, 5, 59, 1),
(92, 4, 59, 2),
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
(123, 0, 61, 35);

-- --------------------------------------------------------

--
-- Table structure for table `food_details`
--

CREATE TABLE `food_details` (
  `food_detail_id` int(11) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `available_stock` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_details`
--

INSERT INTO `food_details` (`food_detail_id`, `name`, `price`, `available_stock`, `image`) VALUES
(1, 'Eggy', 15, 10, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWQuDOcn0KamvCoSWJB3Qnsw6CtIDTMvEUUKOTDyjBKg&s'),
(2, 'Hotdog', 15, 15, 'https://pampangasbest.store/cdn/shop/products/TASTY-MEATY-HOTDOG-WITH-CHEESE-JUMBO-500G-2.jpg?v=1705019883'),
(3, 'Siomai', 5, 20, 'https://panlasangpinoy.com/wp-content/uploads/2020/01/pork-siomai.jpg'),
(4, 'Rice', 10, 80, 'https://www.allrecipes.com/thmb/RKpnSHLUDT2klppYgx8jAF47GyM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/52490-PuertoRicanSteamedRice-DDMFS-061-4x3-3c3da714aa614037ad1c135ec303526d.jpg'),
(5, 'Spaghetti', 60, 20, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAa-8aSmUOI_A1r6OjtNzIe82FwKvsO4lhQrblBdBJSg&s'),
(6, 'Cheese Stick', 5, 40, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8WSAIxx_87Sb-aZMgxu2i74QAu3AUm78eeKA3Zdrp2w&s'),
(7, 'Lumpia', 5, 75, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtkDgVWv8TUncdCwxjA_pCK1JNFTYvJnWGpUlrcfwbhg&s'),
(8, 'Pizza', 25, 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkWy7zWA1uCUJhUEryYZfZp5u5-diPrz1TWNN7tNenTA&s'),
(9, 'Mentos', 5, 45, 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/e/mentos-fruit-roll-378g_2.jpg'),
(10, 'pillows', 10, 0, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3m_4r06_Z2toqTNWVydCEKTsrxETVmo5iyfU_FBbwNA&s'),
(35, 'Pancit canton', 20, 50, 'https://www.luckyme.ph/img/products/webp/2023_0418_LuckyMe_EHC_75g_Mockup_1stPass.webp');

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
  `order_id` int(11) NOT NULL,
  `user_order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_order_id`) VALUES
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61);

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
  `tally_id` int(11) NOT NULL,
  `tally_status` varchar(11) DEFAULT NULL,
  `salary_period` date DEFAULT NULL,
  `user_order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tally`
--

INSERT INTO `tally` (`tally_id`, `tally_status`, `salary_period`, `user_order_id`) VALUES
(7, 'unpaid', '2024-05-13', 58),
(8, 'unpaid', '2024-05-13', 59);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `password`, `user_type`) VALUES
(12345678, 'gAAAAABmMezvqPJsI0Q3uMHn_04WfgeA_nclabQJq9Bt0iliImpmfyvZyex8FfrOHtOaQL34JjRtTsPMZ7owTUDHVTZxvHdDZg==', 'counter'),
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
  `user_order_id` int(11) NOT NULL,
  `payment_type` varchar(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_order`
--

INSERT INTO `user_order` (`user_order_id`, `payment_type`, `order_date`, `user_id`, `order_status`) VALUES
(57, 'cash', '2024-05-13', 220000000, 'ready'),
(58, 'tally', '2024-05-13', 220000743, 'ready'),
(59, 'tally', '2024-05-13', 220000744, 'preparing'),
(60, 'cash', '2024-05-13', 220000743, 'preparing'),
(61, 'cash', '2024-05-13', 220000000, 'cancelled');

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `get_tallies`  AS SELECT `tally`.`user_order_id` AS `user_order_id`, `tally`.`tally_id` AS `tally_id`, `user_order`.`user_id` AS `user_id`, `tally`.`salary_period` AS `salary_period`, sum(`food`.`quantity` * `food_details`.`price`) AS `amount`, `tally`.`tally_status` AS `tally_status` FROM ((((`food` join `food_details` on(`food`.`food_detail_id` = `food_details`.`food_detail_id`)) join `order` on(`food`.`order_id` = `order`.`order_id`)) join `user_order` on(`order`.`user_order_id` = `user_order`.`user_order_id`)) join `tally` on(`order`.`user_order_id` = `tally`.`user_order_id`)) WHERE `user_order`.`payment_type` = 'tally' GROUP BY `user_order`.`user_id` ;

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
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `food_details`
--
ALTER TABLE `food_details`
  MODIFY `food_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tally`
--
ALTER TABLE `tally`
  MODIFY `tally_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `user_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
