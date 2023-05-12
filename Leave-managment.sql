-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 07:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hafiz`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `123`
-- (See below for the actual view)
--
CREATE TABLE `123` (
`ID` int(13)
,`student_ID` int(4)
);

-- --------------------------------------------------------

--
-- Table structure for table `employ`
--

CREATE TABLE `employ` (
  `ID` int(13) NOT NULL,
  `Name` varchar(14) NOT NULL,
  `Employees-ID` varchar(26) NOT NULL,
  `Designation` varchar(16) NOT NULL,
  `E-mail` varchar(12) NOT NULL,
  `Leave-reason` varchar(26) NOT NULL,
  `Level` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave-allow-and-reject`
--

CREATE TABLE `leave-allow-and-reject` (
  `ID` int(19) NOT NULL,
  `Applicant-Name` varchar(28) NOT NULL,
  `Applicant-ID` varchar(29) NOT NULL,
  `Applicant-rank` varchar(21) NOT NULL,
  `Leave-level` varchar(31) NOT NULL,
  `Leave-reason` varchar(32) NOT NULL,
  `Status` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave-type`
--

CREATE TABLE `leave-type` (
  `ID` int(17) NOT NULL,
  `Applicant-Name` varchar(19) NOT NULL,
  `Applicant-ID` varchar(20) NOT NULL,
  `Rank` varchar(23) NOT NULL,
  `Leave-Duration` varchar(26) NOT NULL,
  `Date` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_ID` int(4) NOT NULL,
  `Name` varchar(12) NOT NULL,
  `Roll.No` varchar(13) NOT NULL,
  `Department` varchar(11) NOT NULL,
  `Leave-reason` varchar(14) NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `123`
--
DROP TABLE IF EXISTS `123`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `123`  AS SELECT `employ`.`ID` AS `ID`, `student`.`student_ID` AS `student_ID` FROM (`employ` left join `student` on(`employ`.`ID` = `student`.`student_ID`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employ`
--
ALTER TABLE `employ`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `leave-allow-and-reject`
--
ALTER TABLE `leave-allow-and-reject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `leave-type`
--
ALTER TABLE `leave-type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employ`
--
ALTER TABLE `employ`
  MODIFY `ID` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave-allow-and-reject`
--
ALTER TABLE `leave-allow-and-reject`
  MODIFY `ID` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave-type`
--
ALTER TABLE `leave-type`
  MODIFY `ID` int(17) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_ID` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
