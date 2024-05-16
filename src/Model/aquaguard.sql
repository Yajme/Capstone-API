-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 01:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `db_aquaguard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_aquaguard`;
--
-- Database: `db_aquaguard`
--

CREATE TABLE `tbl_cage` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cage`
--

INSERT INTO `tbl_cage` (`id`, `device_id`, `name`, `description`, `status`) VALUES
(101, 1, 'Cage 101', 'Description for Cage 101', 'active'),
(102, 2, 'Cage 102', 'Description for Cage 102', 'active'),
(103, 3, 'Cage 103', 'Description for Cage 103', 'active'),
(104, 4, 'Cage 104', 'Description for Cage 104', 'active'),
(105, 5, 'Cage 105', 'Description for Cage 105', 'inactive'),
(106, 6, 'Cage 106', 'Description for Cage 106', 'active'),
(107, 7, 'Cage 107', 'Description for Cage 107', 'inactive'),
(108, 8, 'Cage 108', 'Description for Cage 108', 'active'),
(109, 9, 'Cage 109', 'Description for Cage 109', 'active'),
(110, 10, 'Cage 110', 'Description for Cage 110', 'inactive'),
(111, 11, 'Cage 111', 'Description for Cage 111', 'active'),
(112, 12, 'Cage 112', 'Description for Cage 112', 'active'),
(113, 13, 'Cage 113', 'Description for Cage 113', 'inactive'),
(114, 14, 'Cage 114', 'Description for Cage 114', 'active'),
(115, 15, 'Cage 115', 'Description for Cage 115', 'inactive'),
(116, 16, 'Cage 116', 'Description for Cage 116', 'active'),
(117, 17, 'Cage 117', 'Description for Cage 117', 'active'),
(118, 18, 'Cage 118', 'Description for Cage 118', 'inactive'),
(119, 19, 'Cage 119', 'Description for Cage 119', 'active'),
(120, 20, 'Cage 120', 'Description for Cage 120', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cage_status`
--

CREATE TABLE `tbl_cage_status` (
  `id` int(11) NOT NULL,
  `cage_id` int(11) NOT NULL,
  `ph_level` decimal(10,2) DEFAULT NULL,
  `temperature` decimal(10,2) DEFAULT NULL,
  `nitrate` decimal(10,2) DEFAULT NULL,
  `DO` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_cage_status` (`id`, `cage_id`, `ph_level`, `temperature`, `nitrate`, `DO`) VALUES
(1, 1, 7.30, 23.30, 10.00, 95.00),
(2, 2, 6.90, 29.30, 12.40, 89.32);

CREATE TABLE `tbl_contamination` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `guide` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contamination`
--

INSERT INTO `tbl_contamination` (`id`, `name`, `description`, `guide`, `notes`, `link`) VALUES
(1, 'High Nitrate', 'High nitrate levels in water', 'Reduce nitrate sources', 'Nitrate levels exceed safe limits', 'http://example.com/nitrate'),
(2, 'Low Oxygen', 'Low oxygen levels in water', 'Increase aeration', 'Oxygen levels are below optimal', 'http://example.com/oxygen'),
(3, 'High Temperature', 'High water temperature', 'Cool the water', 'Temperature exceeds safe limits', 'http://example.com/temperature'),
(4, 'Low pH', 'Low pH levels in water', 'Adjust pH levels', 'pH is too low for safety', 'http://example.com/ph-low'),
(5, 'High pH', 'High pH levels in water', 'Adjust pH levels', 'pH is too high for safety', 'http://example.com/ph-high');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device`
--

CREATE TABLE `tbl_device` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_device`
--

INSERT INTO `tbl_device` (`id`, `name`, `description`, `status`) VALUES
(1, 'Device 1', 'Description for Device 1', 'active'),
(2, 'Device 2', 'Description for Device 2', 'active'),
(3, 'Device 3', 'Description for Device 3', 'inactive'),
(4, 'Device 4', 'Description for Device 4', 'active'),
(5, 'Device 5', 'Description for Device 5', 'inactive'),
(6, 'Device 6', 'Description for Device 6', 'active'),
(7, 'Device 7', 'Description for Device 7', 'active'),
(8, 'Device 8', 'Description for Device 8', 'inactive'),
(9, 'Device 9', 'Description for Device 9', 'active'),
(10, 'Device 10', 'Description for Device 10', 'active'),
(11, 'Device 11', 'Description for Device 11', 'inactive'),
(12, 'Device 12', 'Description for Device 12', 'active'),
(13, 'Device 13', 'Description for Device 13', 'active'),
(14, 'Device 14', 'Description for Device 14', 'inactive'),
(15, 'Device 15', 'Description for Device 15', 'active'),
(16, 'Device 16', 'Description for Device 16', 'active'),
(17, 'Device 17', 'Description for Device 17', 'inactive'),
(18, 'Device 18', 'Description for Device 18', 'active'),
(19, 'Device 19', 'Description for Device 19', 'active'),
(20, 'Device 20', 'Description for Device 20', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maintenance`
--

CREATE TABLE `tbl_maintenance` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `guide` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_maintenance`
--

INSERT INTO `tbl_maintenance` (`id`, `name`, `description`, `guide`, `notes`, `link`) VALUES
(1, 'Routine Water Sampling', 'Regular collection of water samples for analysis.', 'Use standardized sampling bottles and follow lab protocols.', 'Monthly sampling recommended.', 'http://example.com/routine-water-sampling'),
(2, 'Nutrient Level Monitoring', 'Check levels of nutrients like nitrogen and phosphorus.', 'Use specific test kits or send samples to a lab.', 'High levels can lead to algal blooms.', 'http://example.com/nutrient-level-monitoring'),
(3, 'Algae Control', 'Manage and control algae growth.', 'Apply algaecides as needed.', 'Monitor for harmful algal blooms (HABs).', 'http://example.com/algae-control'),
(4, 'pH Level Testing', 'Regularly test the pH level of the lake water.', 'Use a pH meter or test strips.', 'Optimal pH range is 6.5-8.5.', 'http://example.com/ph-level-testing'),
(5, 'Sediment Management', 'Prevent and manage sediment build-up.', 'Implement erosion control measures.', 'Excessive sediment can harm aquatic life.', 'http://example.com/sediment-management'),
(6, 'Aquatic Vegetation Management', 'Control the growth of aquatic plants.', 'Use mechanical removal or herbicides.', 'Ensure balanced vegetation for habitat.', 'http://example.com/aquatic-vegetation-management'),
(7, 'Temperature Monitoring', 'Monitor water temperature regularly.', 'Use temperature loggers or manual readings.', 'Temperature affects dissolved oxygen levels.', 'http://example.com/temperature-monitoring'),
(8, 'Dissolved Oxygen Testing', 'Measure the dissolved oxygen levels in the lake.', 'Use a DO meter.', 'Vital for fish and other aquatic organisms.', 'http://example.com/dissolved-oxygen-testing'),
(9, 'Trash and Debris Removal', 'Regularly remove trash and debris from the lake.', 'Organize clean-up events or employ staff.', 'Prevent pollution and maintain aesthetics.', 'http://example.com/trash-debris-removal'),
(10, 'Stormwater Management', 'Manage stormwater runoff to reduce pollution.', 'Install retention basins and buffer zones.', 'Reduces pollutants entering the lake.', 'http://example.com/stormwater-management'),
(11, 'Bacterial Testing', 'Test for harmful bacteria like E. coli.', 'Collect samples and use lab analysis.', 'Important for safe recreational use.', 'http://example.com/bacterial-testing'),
(12, 'Invasive Species Control', 'Monitor and manage invasive species.', 'Implement removal programs.', 'Prevent spread and protect native species.', 'http://example.com/invasive-species-control'),
(13, 'Water Clarity Monitoring', 'Regularly check water clarity.', 'Use a Secchi disk.', 'Good clarity is a sign of healthy water.', 'http://example.com/water-clarity-monitoring'),
(14, 'Hydrological Monitoring', 'Monitor the water levels and flow.', 'Use gauges and flow meters.', 'Maintains ecological balance.', 'http://example.com/hydrological-monitoring'),
(15, 'Chemical Contaminant Testing', 'Check for chemical pollutants.', 'Use lab analysis for pesticides, heavy metals, etc.', 'Ensure levels are within safe limits.', 'http://example.com/chemical-contaminant-testing'),
(16, 'Fish Population Monitoring', 'Regularly survey fish populations.', 'Use nets or electrofishing methods.', 'Helps in maintaining ecological balance.', 'http://example.com/fish-population-monitoring'),
(17, 'Public Awareness Programs', 'Educate the public about lake conservation.', 'Organize workshops and distribute materials.', 'Involves community in lake maintenance.', 'http://example.com/public-awareness-programs'),
(18, 'Buffer Zone Management', 'Maintain vegetated buffer zones around the lake.', 'Plant native vegetation.', 'Reduces runoff and provides habitat.', 'http://example.com/buffer-zone-management'),
(19, 'Spill Response Plan', 'Have a plan in place for chemical spills.', 'Develop and practice response procedures.', 'Quick response minimizes damage.', 'http://example.com/spill-response-plan'),
(20, 'Water Quality Reporting', 'Regularly report on the water quality status.', 'Prepare reports for stakeholders and the public.', 'Transparency builds trust and support.', 'http://example.com/water-quality-reporting');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_processed_records`
--

CREATE TABLE `tbl_processed_records` (
  `id` int(11) NOT NULL,
  `cage_id` int(11) NOT NULL,
  `results` text DEFAULT NULL,
  `contamination_level` int(11) NOT NULL,
  `maintenance_type` int(11) NOT NULL,
  `last_viewed_by` int(11) NOT NULL,
  `date_Inserted` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_processed_records`
--

INSERT INTO `tbl_processed_records` (`id`, `cage_id`, `results`, `contamination_level`, `maintenance_type`, `last_viewed_by`, `date_Inserted`) VALUES
(1, 101, 'polluted: Water oxygen content: 5.1, Water nitrate content: 10.2, Water temperature: 20.1, Water pH level: 7.2', 5, 1, 1, '2023-06-14 00:15:00'),
(2, 102, 'preferable: Water oxygen content: 6.2, Water nitrate content: 5.1, Water temperature: 22.3, Water pH level: 7.5', 3, 2, 1, '2023-07-24 06:32:00'),
(3, 103, 'not polluted: Water oxygen content: 7.8, Water nitrate content: 2.9, Water temperature: 19.6, Water pH level: 7.0', 4, 1, 1, '2023-08-30 03:05:00'),
(4, 104, 'healthy: Water oxygen content: 8.0, Water nitrate content: 1.5, Water temperature: 18.5, Water pH level: 7.8', 2, 3, 1, '2023-05-19 01:45:00'),
(5, 105, 'polluted: Water oxygen content: 4.8, Water nitrate content: 11.3, Water temperature: 21.4, Water pH level: 7.3', 5, 2, 1, '2023-09-10 08:30:00'),
(6, 106, 'preferable: Water oxygen content: 6.5, Water nitrate content: 6.0, Water temperature: 22.0, Water pH level: 7.4', 1, 1, 1, '2023-10-05 05:00:00'),
(7, 107, 'not polluted: Water oxygen content: 7.6, Water nitrate content: 3.4, Water temperature: 19.0, Water pH level: 7.1', 3, 2, 1, '2023-11-20 00:25:00'),
(8, 108, 'healthy: Water oxygen content: 8.2, Water nitrate content: 2.1, Water temperature: 17.9, Water pH level: 7.9', 4, 1, 1, '2023-12-14 23:45:00'),
(9, 109, 'polluted: Water oxygen content: 5.3, Water nitrate content: 10.9, Water temperature: 20.8, Water pH level: 7.2', 2, 3, 1, '2024-01-22 06:15:00'),
(10, 110, 'preferable: Water oxygen content: 6.8, Water nitrate content: 5.5, Water temperature: 22.4, Water pH level: 7.6', 5, 2, 1, '2023-02-14 11:00:00'),
(11, 111, 'not polluted: Water oxygen content: 7.9, Water nitrate content: 3.0, Water temperature: 19.3, Water pH level: 7.0', 1, 1, 1, '2024-03-08 04:45:00'),
(12, 112, 'healthy: Water oxygen content: 8.1, Water nitrate content: 2.0, Water temperature: 18.0, Water pH level: 7.8', 3, 2, 1, '2023-04-11 02:00:00'),
(13, 113, 'polluted: Water oxygen content: 5.0, Water nitrate content: 11.1, Water temperature: 20.7, Water pH level: 7.3', 4, 1, 1, '2023-05-18 07:30:00'),
(14, 114, 'preferable: Water oxygen content: 6.3, Water nitrate content: 5.3, Water temperature: 22.2, Water pH level: 7.5', 2, 3, 1, '2023-06-20 01:15:00'),
(15, 115, 'not polluted: Water oxygen content: 7.7, Water nitrate content: 3.3, Water temperature: 19.1, Water pH level: 7.0', 5, 2, 1, '2023-07-14 08:50:00'),
(16, 116, 'healthy: Water oxygen content: 8.3, Water nitrate content: 2.2, Water temperature: 17.8, Water pH level: 7.9', 1, 1, 1, '2023-08-21 23:30:00'),
(17, 117, 'polluted: Water oxygen content: 5.2, Water nitrate content: 10.8, Water temperature: 20.5, Water pH level: 7.2', 3, 2, 1, '2023-09-11 06:45:00'),
(18, 118, 'preferable: Water oxygen content: 6.6, Water nitrate content: 5.6, Water temperature: 22.1, Water pH level: 7.4', 4, 1, 1, '2023-10-09 00:05:00'),
(19, 119, 'not polluted: Water oxygen content: 7.5, Water nitrate content: 3.2, Water temperature: 19.4, Water pH level: 7.1', 2, 3, 1, '2023-11-21 03:25:00'),
(20, 101, 'healthy: Water oxygen content: 8.0, Water nitrate content: 2.3, Water temperature: 18.3, Water pH level: 7.7', 5, 2, 1, '2023-12-19 06:15:00'),
(21, 102, 'polluted: Water oxygen content: 4.9, Water nitrate content: 11.0, Water temperature: 20.6, Water pH level: 7.3', 1, 1, 1, '2024-01-05 05:00:00'),
(22, 103, 'preferable: Water oxygen content: 6.4, Water nitrate content: 5.7, Water temperature: 22.5, Water pH level: 7.5', 3, 2, 1, '2024-02-17 01:20:00'),
(23, 104, 'not polluted: Water oxygen content: 7.6, Water nitrate content: 3.1, Water temperature: 19.5, Water pH level: 7.0', 4, 1, 1, '2024-03-13 06:30:00'),
(24, 105, 'healthy: Water oxygen content: 8.4, Water nitrate content: 2.4, Water temperature: 18.2, Water pH level: 7.8', 2, 3, 1, '2023-04-19 03:40:00'),
(25, 106, 'polluted: Water oxygen content: 5.4, Water nitrate content: 10.7, Water temperature: 20.4, Water pH level: 7.2', 5, 2, 1, '2023-05-22 00:55:00'),
(26, 107, 'preferable: Water oxygen content: 6.9, Water nitrate content: 5.4, Water temperature: 22.3, Water pH level: 7.6', 1, 1, 1, '2023-06-27 02:15:00'),
(27, 108, 'not polluted: Water oxygen content: 7.4, Water nitrate content: 3.5, Water temperature: 19.2, Water pH level: 7.0', 3, 2, 1, '2023-07-30 01:25:00'),
(28, 109, 'healthy: Water oxygen content: 8.5, Water nitrate content: 2.5, Water temperature: 18.1, Water pH level: 7.7', 4, 1, 1, '2023-08-18 05:50:00'),
(29, 110, 'polluted: Water oxygen content: 5.5, Water nitrate content: 10.6, Water temperature: 20.3, Water pH level: 7.3', 2, 3, 1, '2023-09-15 04:10:00'),
(30, 111, 'preferable: Water oxygen content: 6.7, Water nitrate content: 5.8, Water temperature: 22.6, Water pH level: 7.4', 5, 2, 1, '2023-10-11 02:30:00'),
(31, 112, 'not polluted: Water oxygen content: 7.3, Water nitrate content: 3.6, Water temperature: 19.8, Water pH level: 7.1', 1, 1, 1, '2023-11-14 01:05:00'),
(32, 113, 'healthy: Water oxygen content: 8.6, Water nitrate content: 2.6, Water temperature: 18.0, Water pH level: 7.8', 3, 2, 1, '2023-12-17 03:20:00'),
(33, 113, 'polluted: Water oxygen content: 5.6, Water nitrate content: 10.5, Water temperature: 20.2, Water pH level: 7.2', 4, 1, 1, '2024-01-24 05:15:00'),
(34, 114, 'preferable: Water oxygen content: 6.8, Water nitrate content: 5.9, Water temperature: 22.7, Water pH level: 7.5', 2, 3, 1, '2024-02-22 01:40:00'),
(35, 115, 'not polluted: Water oxygen content: 7.2, Water nitrate content: 3.7, Water temperature: 19.7, Water pH level: 7.0', 5, 2, 1, '2024-03-10 06:00:00'),
(36, 116, 'healthy: Water oxygen content: 8.7, Water nitrate content: 2.7, Water temperature: 18.4, Water pH level: 7.8', 1, 1, 1, '2023-04-28 00:30:00'),
(37, 117, 'polluted: Water oxygen content: 5.7, Water nitrate content: 10.4, Water temperature: 20.1, Water pH level: 7.3', 3, 2, 1, '2023-05-10 04:20:00'),
(38, 118, 'preferable: Water oxygen content: 6.6, Water nitrate content: 5.2, Water temperature: 22.8, Water pH level: 7.6', 4, 1, 1, '2023-06-21 06:50:00'),
(39, 119, 'not polluted: Water oxygen content: 7.1, Water nitrate content: 3.8, Water temperature: 19.9, Water pH level: 7.0', 2, 3, 1, '2023-07-19 02:35:00'),
(40, 120, 'healthy: Water oxygen content: 8.8, Water nitrate content: 2.8, Water temperature: 18.3, Water pH level: 7.7', 5, 2, 1, '2023-08-26 03:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_account`
--

CREATE TABLE `tbl_user_account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_user_account` (`id`, `username`, `password`, `salt`) VALUES
(1, 'admin', '219f0c7597aa7bfc485b5a6dccd014dc58d1feb4c5ab935eebe99e67176f3a79', '44b46107bb');

CREATE TABLE `tbl_user_info` (
  `id` int(11) NOT NULL,
  `user_acc_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_user_info` (`id`, `user_acc_id`, `fname`, `lname`, `mname`, `address`, `phone`) VALUES
(1, 1, 'allenster', 'layvilla', 'null', 'talisay, santo tomas, laguna', '09295404374');


ALTER TABLE `tbl_cage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_id` (`device_id`);

ALTER TABLE `tbl_cage_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cage_id` (`cage_id`);

ALTER TABLE `tbl_contamination`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_device`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_maintenance`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_processed_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contamination_level` (`contamination_level`),
  ADD KEY `maintenance_type` (`maintenance_type`),
  ADD KEY `last_viewed_by` (`last_viewed_by`),
  ADD KEY `cage_id` (`cage_id`);

ALTER TABLE `tbl_user_account`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tbl_user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_acc_id` (`user_acc_id`);


ALTER TABLE `tbl_cage`
  ADD CONSTRAINT `tbl_cage_ibfk_1` FOREIGN KEY (`device_id`) REFERENCES `tbl_device` (`id`);

ALTER TABLE `tbl_cage_status`
  ADD CONSTRAINT `tbl_cage_status_ibfk_1` FOREIGN KEY (`cage_id`) REFERENCES `tbl_cage` (`id`);

ALTER TABLE `tbl_processed_records`
  ADD CONSTRAINT `tbl_processed_records_ibfk_1` FOREIGN KEY (`contamination_level`) REFERENCES `tbl_contamination` (`id`),
  ADD CONSTRAINT `tbl_processed_records_ibfk_2` FOREIGN KEY (`maintenance_type`) REFERENCES `tbl_maintenance` (`id`),
  ADD CONSTRAINT `tbl_processed_records_ibfk_3` FOREIGN KEY (`last_viewed_by`) REFERENCES `tbl_user_account` (`id`),
  ADD CONSTRAINT `tbl_processed_records_ibfk_4` FOREIGN KEY (`cage_id`) REFERENCES `tbl_cage` (`id`);

ALTER TABLE `tbl_user_info`
  ADD CONSTRAINT `tbl_user_info_ibfk_1` FOREIGN KEY (`user_acc_id`) REFERENCES `tbl_user_account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
