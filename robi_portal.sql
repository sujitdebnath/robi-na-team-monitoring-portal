-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2020 at 09:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robi_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `CDR_2G`
--

CREATE TABLE `CDR_2G` (
  `id` int(5) NOT NULL,
  `date_col` date NOT NULL,
  `region` varchar(30) NOT NULL,
  `target` float(10,2) NOT NULL,
  `kpi` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CDR_2G`
--

INSERT INTO `CDR_2G` (`id`, `date_col`, `region`, `target`, `kpi`) VALUES
(1, '2020-04-22', 'CC', 93.60, 91.02),
(2, '2020-04-23', 'CC', 93.60, 92.68),
(3, '2020-04-24', 'CC', 93.60, 92.62),
(4, '2020-04-25', 'CC', 93.60, 91.49),
(5, '2020-04-26', 'CC', 93.60, 92.16),
(6, '2020-04-27', 'CC', 93.60, 92.04),
(7, '2020-04-28', 'CC', 93.60, 92.87),
(8, '2020-04-22', 'DHK', 94.90, 95.64),
(9, '2020-04-23', 'DHK', 94.90, 94.85),
(10, '2020-04-24', 'DHK', 94.90, 94.79),
(11, '2020-04-25', 'DHK', 94.90, 95.63),
(12, '2020-04-26', 'DHK', 94.90, 95.23),
(13, '2020-04-27', 'DHK', 94.90, 95.28),
(14, '2020-04-28', 'DHK', 94.90, 94.99),
(15, '2020-04-22', 'NCCD', 98.90, 98.18),
(16, '2020-04-23', 'NCCD', 98.90, 98.21),
(17, '2020-04-24', 'NCCD', 98.90, 98.23),
(18, '2020-04-25', 'NCCD', 98.90, 98.09),
(19, '2020-04-26', 'NCCD', 98.90, 98.10),
(20, '2020-04-27', 'NCCD', 98.90, 97.74),
(21, '2020-04-28', 'NCCD', 98.90, 98.13);

-- --------------------------------------------------------

--
-- Table structure for table `CSSR_2G`
--

CREATE TABLE `CSSR_2G` (
  `id` int(5) NOT NULL,
  `date_col` date NOT NULL,
  `region` varchar(30) NOT NULL,
  `target` float(10,2) NOT NULL,
  `kpi` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CSSR_2G`
--

INSERT INTO `CSSR_2G` (`id`, `date_col`, `region`, `target`, `kpi`) VALUES
(1, '2020-04-22', 'CC', 82.50, 66.54),
(2, '2020-04-23', 'CC', 82.50, 78.07),
(3, '2020-04-24', 'CC', 82.50, 77.47),
(4, '2020-04-25', 'CC', 82.50, 73.63),
(5, '2020-04-26', 'CC', 82.50, 70.83),
(6, '2020-04-27', 'CC', 82.50, 69.72),
(7, '2020-04-28', 'CC', 82.50, 74.05),
(8, '2020-04-22', 'DHK', 89.10, 85.17),
(9, '2020-04-23', 'DHK', 89.10, 85.30),
(10, '2020-04-24', 'DHK', 89.10, 86.28),
(11, '2020-04-25', 'DHK', 89.10, 86.27),
(12, '2020-04-26', 'DHK', 89.10, 84.86),
(13, '2020-04-27', 'DHK', 89.10, 83.90),
(14, '2020-04-28', 'DHK', 89.10, 84.34),
(15, '2020-04-22', 'NCCD', 89.50, 86.88),
(16, '2020-04-23', 'NCCD', 89.50, 89.63),
(17, '2020-04-24', 'NCCD', 89.50, 89.20),
(18, '2020-04-25', 'NCCD', 89.50, 86.10),
(19, '2020-04-26', 'NCCD', 89.50, 85.71),
(20, '2020-04-27', 'NCCD', 89.50, 84.50),
(21, '2020-04-28', 'NCCD', 89.50, 85.95);

-- --------------------------------------------------------

--
-- Table structure for table `DASR_4G`
--

CREATE TABLE `DASR_4G` (
  `id` int(5) NOT NULL,
  `date_col` date NOT NULL,
  `region` varchar(30) NOT NULL,
  `target` float(10,2) NOT NULL,
  `kpi` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DASR_4G`
--

INSERT INTO `DASR_4G` (`id`, `date_col`, `region`, `target`, `kpi`) VALUES
(1, '2020-04-22', 'CC', 85.00, 83.71),
(2, '2020-04-23', 'CC', 85.00, 85.37),
(3, '2020-04-24', 'CC', 85.00, 87.35),
(4, '2020-04-25', 'CC', 85.00, 87.55),
(5, '2020-04-26', 'CC', 85.00, 88.27),
(6, '2020-04-27', 'CC', 85.00, 86.76),
(7, '2020-04-28', 'CC', 85.00, 86.64),
(8, '2020-04-22', 'DHK', 82.00, 86.00),
(9, '2020-04-23', 'DHK', 82.00, 85.13),
(10, '2020-04-24', 'DHK', 82.00, 85.20),
(11, '2020-04-25', 'DHK', 82.00, 86.28),
(12, '2020-04-26', 'DHK', 82.00, 86.43),
(13, '2020-04-27', 'DHK', 82.00, 86.44),
(14, '2020-04-28', 'DHK', 82.00, 86.84),
(15, '2020-04-22', 'NCCD', 93.00, 97.81),
(16, '2020-04-23', 'NCCD', 93.00, 97.83),
(17, '2020-04-24', 'NCCD', 93.00, 97.58),
(18, '2020-04-25', 'NCCD', 93.00, 97.92),
(19, '2020-04-26', 'NCCD', 93.00, 97.73),
(20, '2020-04-27', 'NCCD', 93.00, 97.33),
(21, '2020-04-28', 'NCCD', 93.00, 98.05);

-- --------------------------------------------------------

--
-- Table structure for table `data_traffic_table`
--

CREATE TABLE `data_traffic_table` (
  `id` int(5) NOT NULL,
  `date_col` date NOT NULL,
  `data_vol` int(15) NOT NULL,
  `total_cell` int(15) NOT NULL,
  `2g_dv_eric` int(15) NOT NULL,
  `2g_dv_huw` int(15) NOT NULL,
  `3g_dv_eric` int(15) NOT NULL,
  `3g_dv_huw` int(15) NOT NULL,
  `4g_dv_eric` int(15) NOT NULL,
  `4g_dv_huw` int(15) NOT NULL,
  `2g_avg_cell_eric` int(15) NOT NULL,
  `2g_avg_cell_huw` int(15) NOT NULL,
  `3g_avg_cell_eric` int(15) NOT NULL,
  `3g_avg_cell_huw` int(15) NOT NULL,
  `4g_avg_cell_eric` int(15) NOT NULL,
  `4g_avg_cell_huw` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_traffic_table`
--

INSERT INTO `data_traffic_table` (`id`, `date_col`, `data_vol`, `total_cell`, `2g_dv_eric`, `2g_dv_huw`, `3g_dv_eric`, `3g_dv_huw`, `4g_dv_eric`, `4g_dv_huw`, `2g_avg_cell_eric`, `2g_avg_cell_huw`, `3g_avg_cell_eric`, `3g_avg_cell_huw`, `4g_avg_cell_eric`, `4g_avg_cell_huw`) VALUES
(1, '2020-04-21', 2926, 139352, 10, 2, 933, 398, 935, 647, 20961, 14004, 49807, 22634, 19686, 12260),
(2, '2020-04-22', 2948, 140044, 10, 3, 935, 411, 925, 664, 21011, 14201, 49812, 23000, 19688, 12332),
(3, '2020-04-23', 2922, 139954, 10, 3, 927, 401, 920, 661, 21011, 14181, 49832, 22971, 19631, 12328),
(4, '2020-04-24', 2759, 139413, 11, 2, 876, 380, 867, 623, 21014, 14061, 49800, 22787, 19503, 12248),
(5, '2020-04-25', 2741, 139898, 11, 3, 870, 388, 843, 626, 21015, 14168, 49984, 22939, 19499, 12293),
(6, '2020-04-26', 2775, 140542, 11, 3, 887, 390, 854, 629, 21018, 14200, 50352, 23002, 19618, 12352),
(7, '2020-04-27', 2813, 140894, 10, 3, 892, 398, 870, 640, 21018, 14213, 50370, 23179, 19747, 12367),
(8, '2020-04-28', 2864, 141149, 11, 3, 912, 402, 891, 645, 21003, 14221, 50376, 23430, 19760, 12359);

-- --------------------------------------------------------

--
-- Table structure for table `SASR_3G`
--

CREATE TABLE `SASR_3G` (
  `id` int(5) NOT NULL,
  `date_col` date NOT NULL,
  `region` varchar(30) NOT NULL,
  `target` float(10,2) NOT NULL,
  `kpi` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SASR_3G`
--

INSERT INTO `SASR_3G` (`id`, `date_col`, `region`, `target`, `kpi`) VALUES
(1, '2020-04-22', 'CC', 88.10, 85.36),
(2, '2020-04-23', 'CC', 88.10, 85.98),
(3, '2020-04-24', 'CC', 88.10, 87.39),
(4, '2020-04-25', 'CC', 88.10, 85.22),
(5, '2020-04-26', 'CC', 88.10, 83.95),
(6, '2020-04-27', 'CC', 88.10, 83.52),
(7, '2020-04-28', 'CC', 88.10, 83.59),
(8, '2020-04-22', 'DHK', 89.30, 92.61),
(9, '2020-04-23', 'DHK', 89.30, 92.90),
(10, '2020-04-24', 'DHK', 89.30, 92.43),
(11, '2020-04-25', 'DHK', 89.30, 91.38),
(12, '2020-04-26', 'DHK', 89.30, 92.69),
(13, '2020-04-27', 'DHK', 89.30, 92.00),
(14, '2020-04-28', 'DHK', 89.30, 92.41),
(15, '2020-04-22', 'NCCD', 95.90, 94.76),
(16, '2020-04-23', 'NCCD', 95.90, 95.29),
(17, '2020-04-24', 'NCCD', 95.90, 95.11),
(18, '2020-04-25', 'NCCD', 95.90, 93.77),
(19, '2020-04-26', 'NCCD', 95.90, 94.23),
(20, '2020-04-27', 'NCCD', 95.90, 94.06),
(21, '2020-04-28', 'NCCD', 95.90, 94.51);

-- --------------------------------------------------------

--
-- Table structure for table `voice_traffic_table`
--

CREATE TABLE `voice_traffic_table` (
  `id` int(5) NOT NULL,
  `date_col` date NOT NULL,
  `voice_traffic` int(15) NOT NULL,
  `total_cell` int(15) NOT NULL,
  `2g_vt_eric` int(15) NOT NULL,
  `2g_vt_huw` int(15) NOT NULL,
  `3g_vt_eric` int(15) NOT NULL,
  `3g_vt_huw` int(15) NOT NULL,
  `2g_avg_cell_eric` int(15) NOT NULL,
  `2g_avg_cell_huw` int(15) NOT NULL,
  `3g_avg_cell_eric` int(15) NOT NULL,
  `3g_avg_cell_huw` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voice_traffic_table`
--

INSERT INTO `voice_traffic_table` (`id`, `date_col`, `voice_traffic`, `total_cell`, `2g_vt_eric`, `2g_vt_huw`, `3g_vt_eric`, `3g_vt_huw`, `2g_avg_cell_eric`, `2g_avg_cell_huw`, `3g_avg_cell_eric`, `3g_avg_cell_huw`) VALUES
(1, '2020-04-21', 7250, 107406, 3979, 1460, 1428, 383, 20961, 14004, 49807, 22634),
(2, '2020-04-22', 7393, 108024, 4039, 1500, 1453, 401, 21011, 14201, 49812, 23000),
(3, '2020-04-23', 7386, 107995, 4049, 1473, 1473, 391, 21011, 14181, 49832, 22971),
(4, '2020-04-24', 7025, 107662, 3877, 1422, 1360, 365, 21014, 14061, 49800, 22787),
(5, '2020-04-25', 6572, 108106, 3554, 1373, 1280, 364, 21015, 14168, 49984, 22939),
(6, '2020-04-26', 6541, 108572, 3552, 1364, 1268, 357, 21018, 14200, 50352, 23002),
(7, '2020-04-27', 6852, 108780, 3717, 1405, 1348, 382, 21018, 14213, 50370, 23179),
(8, '2020-04-28', 6763, 109030, 3694, 1378, 1325, 366, 21003, 14221, 50376, 23430);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CDR_2G`
--
ALTER TABLE `CDR_2G`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `CSSR_2G`
--
ALTER TABLE `CSSR_2G`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DASR_4G`
--
ALTER TABLE `DASR_4G`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_traffic_table`
--
ALTER TABLE `data_traffic_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SASR_3G`
--
ALTER TABLE `SASR_3G`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voice_traffic_table`
--
ALTER TABLE `voice_traffic_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CDR_2G`
--
ALTER TABLE `CDR_2G`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `CSSR_2G`
--
ALTER TABLE `CSSR_2G`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `DASR_4G`
--
ALTER TABLE `DASR_4G`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_traffic_table`
--
ALTER TABLE `data_traffic_table`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `SASR_3G`
--
ALTER TABLE `SASR_3G`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `voice_traffic_table`
--
ALTER TABLE `voice_traffic_table`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
