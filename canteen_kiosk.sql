-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2024 at 05:53 PM
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
(1, 2, 1, 1),
(2, 1, 1, 4),
(3, 1, 2, 1),
(4, 1, 2, 2),
(5, 2, 2, 4),
(6, 2, 3, 5),
(7, 4, 4, 3),
(8, 2, 4, 4),
(9, 1, 5, 2),
(10, 1, 5, 5),
(11, 5, 6, 6),
(12, 5, 6, 7),
(13, 1, 7, 8),
(14, 1, 8, 8),
(15, 2, 8, 9),
(16, 1, 8, 10),
(17, 2, 9, 1),
(18, 1, 9, 2),
(19, 3, 9, 3),
(20, 3, 10, 4);

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
(1, 'egg', 10, 50, ''),
(2, 'hotdog', 15, 30, ''),
(3, 'siomai', 5, 50, ''),
(4, 'rice', 10, 97, ''),
(5, 'spaghetti', 60, 25, ''),
(6, 'cheese_stick', 5, 50, ''),
(7, 'lumpia', 5, 75, ''),
(8, 'pizza', 25, 32, ''),
(9, 'mentos', 5, 45, ''),
(10, 'pillows', 10, 0, ''),
(11, 'chicken', 50, 25, ''),
(12, 'chicken', 50, 25, ''),
(20, 'eggnog', 1, 1, ''),
(30, 'hello', 20, 20, ''),
(31, 'hello', 20, 20, '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `get_tallies`
-- (See below for the actual view)
--
CREATE TABLE `get_tallies` (
`tally_id` int(11)
,`user_id` int(11)
,`salary_period` date
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
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

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
(1, 'paid', '2024-03-01', 1),
(2, 'unpaid', '2024-04-01', 3),
(3, 'unpaid', '2024-04-01', 4),
(4, 'paid', '2024-05-01', 6);

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
(1, 'tally', '2024-03-15', 220000743, 'done'),
(2, 'cash', '2024-03-15', 220000744, 'done'),
(3, 'tally', '2024-03-16', 220000745, 'ready'),
(4, 'tally', '2024-03-17', 220000746, 'ready'),
(5, 'cash', '2024-03-17', 220000747, 'done'),
(6, 'tally', '2024-03-18', 220000750, 'done'),
(7, 'cash', '2024-03-18', 220000750, 'cancelled'),
(8, 'cash', '2024-03-18', 220000751, 'cancelled'),
(9, 'cash', '2024-03-19', 220000751, 'preparing'),
(10, 'cash', '2024-03-19', 220000751, 'ready'),
(11, 'tally', '2024-10-10', 220000743, 'preparing');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_order`
-- (See below for the actual view)
--
CREATE TABLE `view_order` (
`order_id` int(11)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `get_tallies`  AS SELECT `tally`.`tally_id` AS `tally_id`, `user_order`.`user_id` AS `user_id`, `tally`.`salary_period` AS `salary_period`, `tally`.`tally_status` AS `tally_status` FROM (`user_order` join `tally` on(`user_order`.`user_order_id` = `tally`.`user_order_id`)) WHERE `user_order`.`order_status` = 'done' ;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_order`  AS SELECT `f`.`order_id` AS `order_id`, `f`.`food_id` AS `food_id`, `fd`.`name` AS `food_name`, `fd`.`price` AS `unit_price`, `f`.`quantity` AS `quantity` FROM (`food` `f` join `food_details` `fd` on(`f`.`food_detail_id` = `fd`.`food_detail_id`)) ;

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
-- AUTO_INCREMENT for table `user_order`
--
ALTER TABLE `user_order`
  MODIFY `user_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `food_ibfk_2` FOREIGN KEY (`food_detail_id`) REFERENCES `food_details` (`food_detail_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_order_id`) REFERENCES `user_order` (`user_order_id`);

--
-- Constraints for table `tally`
--
ALTER TABLE `tally`
  ADD CONSTRAINT `tally_ibfk_1` FOREIGN KEY (`user_order_id`) REFERENCES `user_order` (`user_order_id`);

--
-- Constraints for table `user_order`
--
ALTER TABLE `user_order`
  ADD CONSTRAINT `user_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
