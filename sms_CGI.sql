-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 08:28 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `reportcard`
--

CREATE TABLE `reportcard` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Class` varchar(255) NOT NULL,
  `Physics` int(255) NOT NULL,
  `Maths` int(255) NOT NULL,
  `Philosophy` int(255) NOT NULL,
  `English` int(255) NOT NULL,
  `Chemistry` int(255) NOT NULL,
  `Biology` int(255) NOT NULL,
  `Grade` varchar(255) NOT NULL,
  `Average` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reportcard`
--

INSERT INTO `reportcard` (`ID`, `Name`, `Class`, `Physics`, `Maths`, `Philosophy`, `English`, `Chemistry`, `Biology`, `Grade`, `Average`) VALUES
(3, 'fsdf', 'sdfsfd', 5, 9, 11, 12, 13, 14, 'Reprovou', 0),
(3, 'fsdf', 'sdfsfd', 11, 11, 11, 11, 11, 11, 'Reprovou', 0),
(23, 'Artur', '571', 15, 19, 20, 11, 12, 14, 'Reprovou', 0),
(1, 'Artur', '571', 14, 11, 13, 16, 20, 11, 'Passed', 14.316666666666668),
(4, 'Artur', '571', 14, 12, 13, 16, 15, 12, 'Passed', 13.633333333333333),
(1, 'Artur', '571', 14, 13, 18, 12, 15, 5, 'Passed', 12.416666666666666);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `GuardianName` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `GuardianPhone` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Class` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `Name`, `GuardianName`, `Phone`, `GuardianPhone`, `Address`, `Class`) VALUES
(1, 'Artur Machado', 'Ricardo Pires', '123456789', '987654321', 'Barreiro', '570'),
(2, 'Francisco Machado', 'Patricia Gomes ', '914568945', '916749046', 'Condiminio Lumiar N21 2A', '570');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Specialization` varchar(255) NOT NULL,
  `Subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `Name`, `Specialization`, `Subject`) VALUES
(2, 'Ruben Azevedo', 'BA Philosophy', 'Philosophy');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `ID` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `FA` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`ID`, `username`, `password`, `FA`) VALUES
(1, 'admin', 'admin', 12345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
