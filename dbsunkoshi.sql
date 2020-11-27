-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 06:01 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsunkoshi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblindustrial`
--

CREATE TABLE `tblindustrial` (
  `IndustryId` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `DateOfEstablishment` date NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `IndustryType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblorganizational`
--

CREATE TABLE `tblorganizational` (
  `OrganizationId` int(50) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `DateOfEstablishment` date NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `OrganizationType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpersonal`
--

CREATE TABLE `tblpersonal` (
  `PersonalId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Profession` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpersonal`
--

INSERT INTO `tblpersonal` (`PersonalId`, `Name`, `Address`, `DateOfBirth`, `Profession`, `Contact`) VALUES
(1, 'Aman Samal Magar', 'thasikhel', '0000-00-00', 'Student', '9860456889'),
(3, 'Ram', 'patan', '0000-00-00', 'Artist', '9841236578'),
(4, 'Ram', 'patan', '2020-05-02', 'Artist', '9841236578'),
(5, 'Ram', 'patan', '2010-05-02', 'Artist', '9841236578'),
(6, 'rajesh', 'kathmandu', '1999-05-02', 'singer', '9841236578');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `UserId` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`UserId`, `Email`, `Username`, `Password`) VALUES
(27, 'aman@ismt.edu.np', 'samal01', '506da6907f960f50cad09ca45512519f91515237'),
(28, 'aman@ismt.edu.np', 'samal01', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a'),
(29, 'aman@ismt.edu.np', 'samal01', '345120426285ff8b1d43653a4d078170b4761f75'),
(30, 'ram@gmail.com', 'ram', 'dadae629e1c5627a8bec3f81301f6401a6937be1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblindustrial`
--
ALTER TABLE `tblindustrial`
  ADD PRIMARY KEY (`IndustryId`);

--
-- Indexes for table `tblorganizational`
--
ALTER TABLE `tblorganizational`
  ADD PRIMARY KEY (`OrganizationId`);

--
-- Indexes for table `tblpersonal`
--
ALTER TABLE `tblpersonal`
  ADD PRIMARY KEY (`PersonalId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblindustrial`
--
ALTER TABLE `tblindustrial`
  MODIFY `IndustryId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblorganizational`
--
ALTER TABLE `tblorganizational`
  MODIFY `OrganizationId` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpersonal`
--
ALTER TABLE `tblpersonal`
  MODIFY `PersonalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
