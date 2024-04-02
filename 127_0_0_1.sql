-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 03:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--
CREATE DATABASE IF NOT EXISTS `chat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chat`;
--
-- Database: `db-areinza`
--
CREATE DATABASE IF NOT EXISTS `db-areinza` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db-areinza`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `dbgradingsystem_labarro`
--
CREATE DATABASE IF NOT EXISTS `dbgradingsystem_labarro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbgradingsystem_labarro`;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `Instructor_ID` int(8) DEFAULT NULL,
  `Ins_lastname` varchar(20) DEFAULT NULL,
  `Ins_firstname` varchar(20) DEFAULT NULL,
  `Ins_middlename` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `Section_ID` int(8) DEFAULT NULL,
  `SectionCode` varchar(10) DEFAULT NULL,
  `Subject_ID` int(8) DEFAULT NULL,
  `Instructor_ID` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(8) DEFAULT NULL,
  `Lastname` varchar(20) DEFAULT NULL,
  `Firstname` varchar(20) DEFAULT NULL,
  `Middlename` varchar(20) DEFAULT NULL,
  `Course` varchar(10) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_ID` int(8) DEFAULT NULL,
  `Subject_code` varchar(20) DEFAULT NULL,
  `Subject_description` varchar(30) DEFAULT NULL,
  `Units` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `dbname`
--
CREATE DATABASE IF NOT EXISTS `dbname` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbname`;
--
-- Database: `db_admission_system_bagasbas`
--
CREATE DATABASE IF NOT EXISTS `db_admission_system_bagasbas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_admission_system_bagasbas`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_entrance_exam_result_v2`
--

CREATE TABLE `tbl_entrance_exam_result_v2` (
  `result_ID` int(10) NOT NULL,
  `examinee_Firstname` varchar(30) NOT NULL,
  `examinee_Lastname` varchar(30) NOT NULL,
  `examinee_Middlename` varchar(30) DEFAULT NULL,
  `score` int(10) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `examinee_ID` int(10) DEFAULT NULL,
  `Schedule_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_entrance_exam_result_v2`
--

INSERT INTO `tbl_entrance_exam_result_v2` (`result_ID`, `examinee_Firstname`, `examinee_Lastname`, `examinee_Middlename`, `score`, `status`, `examinee_ID`, `Schedule_ID`) VALUES
(1, 'James Rymarc', 'Bagasbas', 'N/A', 100, 'passed', 20211001, 1),
(2, 'Anven Moses', 'Agbulos', 'Lompon', 100, 'passed', 20211002, 2),
(3, 'Dandreb Paul', 'Benalayo', 'Delencia', 100, 'passed', 20211003, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_entrance_exam_schedules`
--

CREATE TABLE `tbl_entrance_exam_schedules` (
  `schedule_ID` int(10) NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `venue` varchar(30) DEFAULT NULL,
  `time_in` varchar(20) DEFAULT NULL,
  `time_out` varchar(20) DEFAULT NULL,
  `subjects` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_entrance_exam_schedules`
--

INSERT INTO `tbl_entrance_exam_schedules` (`schedule_ID`, `time`, `date`, `venue`, `time_in`, `time_out`, `subjects`) VALUES
(1, '9:00am', 'October 14 2023', 'NBSC', '9:10am', '10:30am', 'Database'),
(2, '9:00am', 'October 14 2023', 'NBSC', '9:15am', '10:30am', 'Database'),
(3, '9:00am', 'October 14 2023', 'NBSC', '9:20am', '10:30am', 'Database');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_examinees_v2`
--

CREATE TABLE `tbl_examinees_v2` (
  `examinee_ID` int(10) NOT NULL,
  `examinee_Firstname` varchar(30) NOT NULL,
  `examinee_Lastname` varchar(30) NOT NULL,
  `examinee_Middlename` varchar(30) DEFAULT NULL,
  `Gmail` varchar(30) DEFAULT NULL,
  `phone_number` int(30) DEFAULT NULL,
  `Gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_examinees_v2`
--

INSERT INTO `tbl_examinees_v2` (`examinee_ID`, `examinee_Firstname`, `examinee_Lastname`, `examinee_Middlename`, `Gmail`, `phone_number`, `Gender`) VALUES
(20211001, 'James Rymarc', 'Bagasbas', 'N/A', 'longskiejames@gmail.com', 2147483647, 'male'),
(20211002, 'Anven Moses', 'Agbulos', 'Lompon', 'anvenmoses@gmail.com', 2147483647, 'male'),
(20211003, 'Dandreb Paul', 'Benalayo', 'Delegencia', 'dandreb@gmail.com', 2147483647, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_entrance_exam_result_v2`
--
ALTER TABLE `tbl_entrance_exam_result_v2`
  ADD PRIMARY KEY (`result_ID`),
  ADD KEY `examinee_ID` (`examinee_ID`),
  ADD KEY `Schedule_ID` (`Schedule_ID`);

--
-- Indexes for table `tbl_entrance_exam_schedules`
--
ALTER TABLE `tbl_entrance_exam_schedules`
  ADD PRIMARY KEY (`schedule_ID`);

--
-- Indexes for table `tbl_examinees_v2`
--
ALTER TABLE `tbl_examinees_v2`
  ADD PRIMARY KEY (`examinee_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_entrance_exam_result_v2`
--
ALTER TABLE `tbl_entrance_exam_result_v2`
  MODIFY `result_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_entrance_exam_schedules`
--
ALTER TABLE `tbl_entrance_exam_schedules`
  MODIFY `schedule_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_examinees_v2`
--
ALTER TABLE `tbl_examinees_v2`
  MODIFY `examinee_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20211004;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_entrance_exam_result_v2`
--
ALTER TABLE `tbl_entrance_exam_result_v2`
  ADD CONSTRAINT `tbl_entrance_exam_result_v2_ibfk_1` FOREIGN KEY (`examinee_ID`) REFERENCES `tbl_examinees_v2` (`examinee_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_entrance_exam_result_v2_ibfk_2` FOREIGN KEY (`Schedule_ID`) REFERENCES `tbl_entrance_exam_schedules` (`schedule_ID`) ON UPDATE CASCADE;
--
-- Database: `db_grading_system`
--
CREATE DATABASE IF NOT EXISTS `db_grading_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_grading_system`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `First_Name` char(1) DEFAULT NULL,
  `Middle_Name` char(1) DEFAULT NULL,
  `Last_Name` char(1) DEFAULT NULL,
  `Extensions` char(1) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `db_grading_system1`
--
CREATE DATABASE IF NOT EXISTS `db_grading_system1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_grading_system1`;
--
-- Database: `is_db`
--
CREATE DATABASE IF NOT EXISTS `is_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `is_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_logs`
--

CREATE TABLE `tbl_activity_logs` (
  `activityID` int(11) NOT NULL,
  `activity` text NOT NULL,
  `userID` int(20) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_activity_logs`
--

INSERT INTO `tbl_activity_logs` (`activityID`, `activity`, `userID`, `dateAdded`) VALUES
(1, 'Logged In', 3, '2023-10-16 09:21:47'),
(2, 'Added Activity', 3, '2023-10-16 09:22:06'),
(3, 'Logged out', 2, '2023-10-16 09:22:22'),
(4, 'Added Activty', 2, '2023-10-16 09:22:59'),
(5, 'Add Activity 2', 6, '2023-10-16 09:52:35'),
(6, 'Deleted Item 1', 6, '2023-10-16 09:52:56'),
(7, 'Logged In', 2, '2023-10-16 09:53:29'),
(8, 'Add Activity', 7, '2023-10-16 09:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_info`
--

CREATE TABLE `tbl_user_info` (
  `userID` int(20) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `middleName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `barangay` varchar(200) NOT NULL,
  `municipality` varchar(200) NOT NULL,
  `province` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `birth_Date` date NOT NULL,
  `phone_No` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_access_ID` int(20) NOT NULL,
  `dateAdded` date NOT NULL,
  `dateModified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user_info`
--

INSERT INTO `tbl_user_info` (`userID`, `firstName`, `middleName`, `lastName`, `street`, `barangay`, `municipality`, `province`, `zipcode`, `birth_Date`, `phone_No`, `email`, `password`, `user_access_ID`, `dateAdded`, `dateModified`) VALUES
(2, 'Reccon  Jhack', 'Tizon', 'TInoy', 'Zone 1', 'Alae', 'Manolo Fortich', 'Bukidnon', '8703', '0000-00-00', '', 'kattdaddy..dota2@gmail.com', '1', 1, '0000-00-00', '2023-10-16 09:26:02'),
(3, 'Rio', 'A', 'Dompol', 'street 1', 'Dicklum', 'Manolo Fortich', 'Bukidnon', '8703', '0000-00-00', '', 'example@gmail.com', 'admin1234', 1, '0000-00-00', '2023-10-16 09:23:53'),
(6, 'Vincent', 'Epolan', 'Guibay', 'Zone 5 New Sankanan', 'Sankanan', 'Manolo Fortich Bukidnon', 'Bukidnon', '8703', '2023-10-16', '09551684411', 'Gwapo@gmail.com', '123', 1, '2023-10-16', '2023-10-16 09:30:00'),
(7, 'Jayson', '', 'Balsa', 'Zone 1', 'Alae', 'Manolo Fortich Bukidnon', 'Bukidnon', '8703', '2023-10-16', '09666458228', 'akorani@gmail.com', '123', 1, '2023-10-16', '2023-10-16 09:32:00'),
(8, 'jesse rico belle', 'minoza', 'yator', 'zone1', 'lunocan', 'manolo', 'bukidnon', '8703', '0000-00-00', '09103622469', 'yatorxjay3@gmail.com', '12345678', 1, '2023-10-19', '2023-10-16 09:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_type_access`
--

CREATE TABLE `tbl_user_type_access` (
  `user_access_ID` int(20) NOT NULL,
  `accessType` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user_type_access`
--

INSERT INTO `tbl_user_type_access` (`user_access_ID`, `accessType`) VALUES
(1, 'user'),
(2, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activity_logs`
--
ALTER TABLE `tbl_activity_logs`
  ADD PRIMARY KEY (`activityID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `user_access_ID` (`user_access_ID`);

--
-- Indexes for table `tbl_user_type_access`
--
ALTER TABLE `tbl_user_type_access`
  ADD PRIMARY KEY (`user_access_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activity_logs`
--
ALTER TABLE `tbl_activity_logs`
  MODIFY `activityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user_type_access`
--
ALTER TABLE `tbl_user_type_access`
  MODIFY `user_access_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_activity_logs`
--
ALTER TABLE `tbl_activity_logs`
  ADD CONSTRAINT `tbl_activity_logs_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbl_user_info` (`userID`);

--
-- Constraints for table `tbl_user_info`
--
ALTER TABLE `tbl_user_info`
  ADD CONSTRAINT `tbl_user_info_ibfk_1` FOREIGN KEY (`user_access_ID`) REFERENCES `tbl_user_type_access` (`user_access_ID`);
--
-- Database: `lab_act_2`
--
CREATE DATABASE IF NOT EXISTS `lab_act_2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab_act_2`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userID` int(12) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `Birthdate` int(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_number` int(12) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `bloodtype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `lab_act_3`
--
CREATE DATABASE IF NOT EXISTS `lab_act_3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab_act_3`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `studentID` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"lab_act_1\",\"table\":\"tbl_student\"},{\"db\":\"lab_act_1\",\"table\":\"tbl_course\"},{\"db\":\"pratice\",\"table\":\"customer\"},{\"db\":\"alumni\",\"table\":\"alum_educ\"},{\"db\":\"alumni\",\"table\":\"alumni\"},{\"db\":\"dbalumni\",\"table\":\"generalinfo\"},{\"db\":\"dbalumni\",\"table\":\"education\"},{\"db\":\"dbalumni\",\"table\":\"employed_data\"},{\"db\":\"project101\",\"table\":\"signup\"},{\"db\":\"project101\",\"table\":\"SignUp\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-02 01:07:02', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pratice`
--
CREATE DATABASE IF NOT EXISTS `pratice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pratice`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CusID` int(3) NOT NULL,
  `Customer Name` varchar(100) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contact` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CusID`, `Customer Name`, `Address`, `Email`, `Contact`) VALUES
(1, 'Teddy Justin Bermudo', 'Lower Calanawan, Tankulan, Manolo Fortich', '20230@nbsc.edu.ph', 999999999),
(0, 'Churchill Duane V. Daus', 'Bayot st. Cavite', 'ScatterChat@gmail.com', 998765432),
(100, 'Teddy Bermudo', 'Lower Bayot Str., Tartaria, Cavite', 'tee@gmail.com', 639982678),
(200, 'Churchill Duane V. Daus', 'Upper Bayot St. Etivac', 'Scatter@gmail.com', 998765321),
(300, ' Lloyd Tejada', 'Bayot Street Proper', 'Byotfrfr@gmail.com', 696969);
--
-- Database: `project101`
--
CREATE DATABASE IF NOT EXISTS `project101` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project101`;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `userID` int(20) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `age` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `zipcode` int(20) NOT NULL,
  `phonenumber` int(20) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `userID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
