SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `db_aquaguard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_aquaguard`;

CREATE TABLE `tbl_cage` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_cage` (`id`, `device_id`, `name`, `description`, `status`) VALUES
(1, 0, 'CAGE_1', 'Near Shore', 'Active'),
(2, 1, 'CAGE_2', 'Middle', 'Active');

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

CREATE TABLE `tbl_device` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_device` (`id`, `name`, `description`, `status`) VALUES
(0, 'IOT_1', 'With Built in Sensors', 'Active'),
(1, 'IOT_2', 'With Built in Sensors', 'Active');

CREATE TABLE `tbl_maintenance` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `guide` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tbl_processed_records` (
  `id` int(11) NOT NULL,
  `cage_id` int(11) NOT NULL,
  `results` text DEFAULT NULL,
  `contamination_level` int(11) NOT NULL,
  `maintenance_type` int(11) NOT NULL,
  `last_viewed_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
