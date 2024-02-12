-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 07:35 AM
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
-- Database: `hrm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `amvion`
--

CREATE TABLE `amvion` (
  `EmpId` bigint(20) NOT NULL,
  `EmployeeId` varchar(11) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `MiddleName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` int(10) NOT NULL,
  `Address1` varchar(500) NOT NULL,
  `Address2` varchar(500) NOT NULL,
  `Address3` varchar(500) NOT NULL,
  `CityId` int(11) NOT NULL,
  `Mobile` decimal(10,0) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `images` varchar(1000) DEFAULT NULL,
  `AadharNumber` varchar(25) NOT NULL,
  `MaritalStatus` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` bigint(20) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `JoinDate` date NOT NULL,
  `LeaveDate` date DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogout` datetime DEFAULT NULL,
  `StatusId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `ImageName` varchar(1000) DEFAULT NULL,
  `MacAddress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `amvion`
--

INSERT INTO `amvion` (`EmpId`, `EmployeeId`, `FirstName`, `MiddleName`, `LastName`, `Birthdate`, `Gender`, `Address1`, `Address2`, `Address3`, `CityId`, `Mobile`, `Email`, `Password`, `images`, `AadharNumber`, `MaritalStatus`, `PositionId`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `JoinDate`, `LeaveDate`, `LastLogin`, `LastLogout`, `StatusId`, `RoleId`, `ImageName`, `MacAddress`) VALUES
(1, '1', 'Amvion', '', '...', '1994-10-09', 1, 'address1', 'address2', 'address3', 1, '9999999999', 'amvion@mail.com', 'amvion123', NULL, '12354658496', 2, 1, 1, '2017-01-01 00:00:00', 1, '2017-01-31 10:33:33', '2017-01-11', '2017-01-18', '2023-10-20 18:42:03', '2017-02-09 15:12:09', 1, 1, 'images (2).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `approver`
--

CREATE TABLE `approver` (
  `aid` int(11) NOT NULL,
  `aname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approver`
--

INSERT INTO `approver` (`aid`, `aname`) VALUES
(1, 'Ram'),
(2, 'Srini');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `CityId` int(11) NOT NULL,
  `StateId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`CityId`, `StateId`, `Name`) VALUES
(1, 1, 'Sample 101'),
(2, 1, 'Sample 102'),
(21, 1, 'Manila'),
(22, 1, 'Muntinlupa'),
(23, 4, 'Los Angeles'),
(24, 3, 'Washington');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryId`, `Name`) VALUES
(1, 'Philippines'),
(9, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `dailyworkload`
--

CREATE TABLE `dailyworkload` (
  `DailyWorkLoadId` bigint(20) NOT NULL,
  `EmpId` varchar(50) NOT NULL,
  `LoginDate` datetime DEFAULT NULL,
  `LogoutDate` datetime DEFAULT NULL,
  `DailyWorkingminutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dailyworkload`
--

INSERT INTO `dailyworkload` (`DailyWorkLoadId`, `EmpId`, `LoginDate`, `LogoutDate`, `DailyWorkingminutes`) VALUES
(1, '6231415', '2023-09-19 12:06:07', NULL, NULL),
(2, '6231415', '2023-09-20 10:11:37', '2023-09-20 12:53:42', 162),
(3, '6231415', '2023-09-21 11:26:54', '2023-09-21 17:06:42', 340),
(4, '6231415', '2023-09-22 11:36:59', '2023-09-22 11:37:05', 0),
(5, '1', '2023-09-22 14:30:05', NULL, NULL),
(6, '1', '2023-09-25 09:54:24', NULL, NULL),
(7, '1', '2023-09-27 12:54:35', NULL, NULL),
(8, '1', '2023-09-28 09:44:15', NULL, NULL),
(9, '1', '2023-09-29 12:53:04', NULL, NULL),
(10, '1', '2023-10-04 10:03:26', NULL, NULL),
(11, '1', '2023-10-06 17:50:03', NULL, NULL),
(12, '1', '2023-10-09 09:50:45', NULL, NULL),
(13, '1', '2023-10-10 15:15:01', NULL, NULL),
(14, '1', '2023-10-11 10:29:42', NULL, NULL),
(15, '1', '2023-10-12 10:02:40', NULL, NULL),
(16, '1', '2023-10-16 10:45:31', NULL, NULL),
(17, '2', '2023-10-16 11:59:18', '2023-10-16 12:01:08', 2),
(18, '1', '2023-10-17 09:47:05', NULL, NULL),
(19, '1', '2023-10-18 14:55:51', NULL, NULL),
(20, '1', '2023-10-19 15:24:39', NULL, NULL),
(21, '1', '2023-10-20 15:22:36', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE `dean` (
  `EmpId` bigint(20) NOT NULL,
  `EmployeeId` varchar(11) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `MiddleName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` int(10) NOT NULL,
  `Address1` varchar(500) NOT NULL,
  `Address2` varchar(500) NOT NULL,
  `Address3` varchar(500) NOT NULL,
  `CityId` int(11) NOT NULL,
  `Mobile` decimal(10,0) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `AadharNumber` varchar(25) NOT NULL,
  `MaritalStatus` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` bigint(20) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `JoinDate` date NOT NULL,
  `LeaveDate` date DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogout` datetime DEFAULT NULL,
  `StatusId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `ImageName` varchar(1000) DEFAULT NULL,
  `MacAddress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`EmpId`, `EmployeeId`, `FirstName`, `MiddleName`, `LastName`, `Birthdate`, `Gender`, `Address1`, `Address2`, `Address3`, `CityId`, `Mobile`, `Email`, `Password`, `AadharNumber`, `MaritalStatus`, `PositionId`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `JoinDate`, `LeaveDate`, `LastLogin`, `LastLogout`, `StatusId`, `RoleId`, `ImageName`, `MacAddress`) VALUES
(1, '1', 'Dean', '', '...', '1994-10-09', 1, 'address1', 'address2', 'address3', 1, '9999999999', 'dean@mail.com', 'dean123', '12354658496', 2, 1, 1, '2017-01-01 00:00:00', 1, '2017-01-31 10:33:33', '2017-01-11', '2017-01-18', '2023-10-20 15:20:21', '2017-02-09 15:12:09', 1, 1, 'images (2).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpId` bigint(20) NOT NULL,
  `EmployeeId` varchar(11) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `MiddleName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` int(10) NOT NULL,
  `Address1` varchar(500) NOT NULL,
  `Address2` varchar(500) NOT NULL,
  `Address3` varchar(500) NOT NULL,
  `CityId` int(11) NOT NULL,
  `Mobile` decimal(10,0) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `AadharNumber` varchar(25) NOT NULL,
  `MaritalStatus` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` bigint(20) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `JoinDate` date NOT NULL,
  `LeaveDate` date DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogout` datetime DEFAULT NULL,
  `StatusId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `ImageName` varchar(1000) DEFAULT NULL,
  `MacAddress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpId`, `EmployeeId`, `FirstName`, `MiddleName`, `LastName`, `Birthdate`, `Gender`, `Address1`, `Address2`, `Address3`, `CityId`, `Mobile`, `Email`, `Password`, `AadharNumber`, `MaritalStatus`, `PositionId`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `JoinDate`, `LeaveDate`, `LastLogin`, `LastLogout`, `StatusId`, `RoleId`, `ImageName`, `MacAddress`) VALUES
(1, '1', 'User', '', '...', '1994-10-09', 1, 'address1', 'address2', 'address3', 1, '9999999999', 'user@mail.com', 'user123', '12354658496', 2, 1, 1, '2017-01-01 00:00:00', 1, '2017-01-31 10:33:33', '2017-01-11', '2017-01-18', '2023-10-20 15:22:36', '2017-02-09 15:12:09', 1, 1, 'images (2).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee2`
--

CREATE TABLE `employee2` (
  `EmpId` bigint(20) NOT NULL,
  `EmployeeId` varchar(11) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Birthdate` date NOT NULL,
  `Mobile` decimal(10,0) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `nature_of_project` varchar(100) NOT NULL,
  `outline_of_project` varchar(100) NOT NULL,
  `appl` varchar(100) NOT NULL,
  `no_of_cpu` int(100) NOT NULL,
  `memory_req` varchar(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `os_version` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee2`
--

INSERT INTO `employee2` (`EmpId`, `EmployeeId`, `FirstName`, `LastName`, `Birthdate`, `Mobile`, `Email`, `Password`, `nature_of_project`, `outline_of_project`, `appl`, `no_of_cpu`, `memory_req`, `os`, `os_version`) VALUES
(1, '1', 'admin', 'admin', '1994-10-09', '9999999999', 'ashok@mail.com', 'ashok123', '0', '0', '0', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `empId` int(100) NOT NULL,
  `currentDate` date DEFAULT NULL,
  `nature_of_project` varchar(100) DEFAULT NULL,
  `brief` varchar(500) DEFAULT NULL,
  `appl` varchar(100) DEFAULT NULL,
  `no_cpu` int(100) DEFAULT NULL,
  `memory_req` varchar(100) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `os_version` varchar(100) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `leave_status` varchar(100) DEFAULT NULL,
  `leave_status1` varchar(25) DEFAULT NULL,
  `file_path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`empId`, `currentDate`, `nature_of_project`, `brief`, `appl`, `no_cpu`, `memory_req`, `os`, `os_version`, `remarks`, `leave_status`, `leave_status1`, `file_path`) VALUES
(27, '2023-10-12', 'Nandhu', 'Ashok', '2', 1, '1', 'WIndows', '1', 'bad', 'Accept', 'Reject', 'uploads/6532771293470_Amvion HPC Flow.pdf'),
(28, '2023-10-12', 'Prasanth', 'acouaojcjao', ';lzjapocjpoa', 3, '1TB', 'Windows', '11', 'No Comments', 'Accept', 'Accept', NULL),
(29, '2023-10-16', 'JSJXOA', 'pojpoioHHIOHIOHHH', 'jsojpjspj pm', 0, '1TB', 'jso jspj ps', 'xk', 'lmsdojsojz mznklnn', 'Accept', 'Accept', NULL),
(30, '2023-10-17', 'Python Based ML', 'Good to handle', 'pycharm,notebook', 2, '1TB', 'Windows', '10', 'Nothing', 'Accept', 'Accept', NULL),
(31, '2023-10-19', 'Test1', 'jpowsjpodjpojpoaj', 'mlmslamxlma', 3, '1Tb', 'Windows', '11', 'mslxjpakkxalxmsoxkwocmme', 'Accept', 'Pending', NULL),
(32, '2023-10-19', 'ABC', 's;ojpoalkn', 'jsioahichio', 3, '1Tb', 'Windows', '11', 'oiauiodiowjdknk', 'Pending', 'Pending', 'uploads/6532780b0a50e_Amvion HPC Flow.pdf'),
(35, '2023-10-19', 'ABCd', 's;ojpoa', 'jsioahichio', 3, '1Tb', 'Windows', '11', 'oiauiodiowjdknk', 'Pending', 'Pending', 'uploads/65327cb0118a6_Amvion Data Analytics.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `GenderId` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`GenderId`, `Name`) VALUES
(1, 'male'),
(2, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `leavedays`
--

CREATE TABLE `leavedays` (
  `LeaveDayId` bigint(20) NOT NULL,
  `LeaveDay` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leavedays`
--

INSERT INTO `leavedays` (`LeaveDayId`, `LeaveDay`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `leavedetails`
--

CREATE TABLE `leavedetails` (
  `Detail_Id` bigint(20) NOT NULL,
  `EmpId` bigint(20) NOT NULL,
  `TypesLeaveId` int(10) NOT NULL,
  `Reason` varchar(500) NOT NULL,
  `StateDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `LeaveStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leavedetails`
--

INSERT INTO `leavedetails` (`Detail_Id`, `EmpId`, `TypesLeaveId`, `Reason`, `StateDate`, `EndDate`, `LeaveStatus`) VALUES
(1, 6231415, 3, 'Sample Reason', '2022-10-12', '2022-10-14', 'Accept');

-- --------------------------------------------------------

--
-- Table structure for table `maritalstatus`
--

CREATE TABLE `maritalstatus` (
  `MaritalId` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `maritalstatus`
--

INSERT INTO `maritalstatus` (`MaritalId`, `Name`) VALUES
(1, 'Married'),
(2, 'Unmarried');

-- --------------------------------------------------------

--
-- Table structure for table `my_table`
--

CREATE TABLE `my_table` (
  `id` int(11) NOT NULL,
  `unique_random_value` varchar(36) DEFAULT NULL,
  `Researcher` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_table`
--

INSERT INTO `my_table` (`id`, `unique_random_value`, `Researcher`) VALUES
(1, 'cf36cb09-5d1c-11ee-b304-40b034137fd7', 'Ashok'),
(2, 'df40d4b3-5d1c-11ee-b304-40b034137fd7', 'Arish');

--
-- Triggers `my_table`
--
DELIMITER $$
CREATE TRIGGER `generate_random_value` BEFORE INSERT ON `my_table` FOR EACH ROW BEGIN
    SET NEW.unique_random_value = UUID();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `PositinId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`PositinId`, `Name`) VALUES
(1, 'HR'),
(2, 'Web Developer'),
(3, 'Fullstack PHP Developer');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleId`, `Name`) VALUES
(1, 'admin'),
(2, 'admin-hr'),
(3, 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `StateId` int(11) NOT NULL,
  `CountryId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`StateId`, `CountryId`, `Name`) VALUES
(1, 1, 'Metro Manila'),
(2, 1, 'Negros Oriental'),
(3, 9, 'DC'),
(4, 9, 'California');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `StatusId` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`StatusId`, `Name`) VALUES
(1, 'active'),
(2, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `EmpId` bigint(20) NOT NULL,
  `EmployeeId` varchar(11) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `MiddleName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` int(10) NOT NULL,
  `Address1` varchar(500) NOT NULL,
  `Address2` varchar(500) NOT NULL,
  `Address3` varchar(500) NOT NULL,
  `CityId` int(11) NOT NULL,
  `Mobile` decimal(10,0) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `AadharNumber` varchar(25) NOT NULL,
  `MaritalStatus` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` bigint(20) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `JoinDate` date NOT NULL,
  `LeaveDate` date DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogout` datetime DEFAULT NULL,
  `StatusId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `ImageName` varchar(1000) DEFAULT NULL,
  `MacAddress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`EmpId`, `EmployeeId`, `FirstName`, `MiddleName`, `LastName`, `Birthdate`, `Gender`, `Address1`, `Address2`, `Address3`, `CityId`, `Mobile`, `Email`, `Password`, `AadharNumber`, `MaritalStatus`, `PositionId`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `JoinDate`, `LeaveDate`, `LastLogin`, `LastLogout`, `StatusId`, `RoleId`, `ImageName`, `MacAddress`) VALUES
(1, '1', 'Supervisor', '', '...', '1994-10-09', 1, 'address1', 'address2', 'address3', 1, '9999999999', 'supervisor@mail.com', 'supervisor123', '12354658496', 2, 1, 1, '2017-01-01 00:00:00', 1, '2017-01-31 10:33:33', '2017-01-11', '2017-01-18', '2023-10-20 15:23:21', '2017-02-09 15:12:09', 1, 1, 'images (2).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_leave`
--

CREATE TABLE `type_of_leave` (
  `LeaveId` bigint(20) NOT NULL,
  `Type_of_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `type_of_leave`
--

INSERT INTO `type_of_leave` (`LeaveId`, `Type_of_Name`) VALUES
(1, 'sick leave'),
(3, 'casual leave'),
(4, 'privilege leave'),
(5, 'half day leave');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `EmpId` bigint(20) NOT NULL,
  `EmployeeId` varchar(11) NOT NULL,
  `FirstName` varchar(200) NOT NULL,
  `MiddleName` varchar(200) NOT NULL,
  `LastName` varchar(200) NOT NULL,
  `Birthdate` date NOT NULL,
  `Gender` int(10) NOT NULL,
  `Address1` varchar(500) NOT NULL,
  `Address2` varchar(500) NOT NULL,
  `Address3` varchar(500) NOT NULL,
  `CityId` int(11) NOT NULL,
  `Mobile` decimal(10,0) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `AadharNumber` varchar(25) NOT NULL,
  `MaritalStatus` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `CreatedBy` bigint(20) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `ModifiedBy` bigint(20) DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `JoinDate` date NOT NULL,
  `LeaveDate` date DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogout` datetime DEFAULT NULL,
  `StatusId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `ImageName` varchar(1000) DEFAULT NULL,
  `MacAddress` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`EmpId`, `EmployeeId`, `FirstName`, `MiddleName`, `LastName`, `Birthdate`, `Gender`, `Address1`, `Address2`, `Address3`, `CityId`, `Mobile`, `Email`, `Password`, `AadharNumber`, `MaritalStatus`, `PositionId`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`, `JoinDate`, `LeaveDate`, `LastLogin`, `LastLogout`, `StatusId`, `RoleId`, `ImageName`, `MacAddress`) VALUES
(1, '1', 'User', '', '...', '1994-10-09', 1, 'address1', 'address2', 'address3', 1, '9999999999', 'user@mail.com', 'user123', '12354658496', 2, 1, 1, '2017-01-01 00:00:00', 1, '2017-01-31 10:33:33', '2017-01-11', '2017-01-18', '2023-10-16 12:31:32', '2017-02-09 15:12:09', 1, 1, 'images (2).jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amvion`
--
ALTER TABLE `amvion`
  ADD PRIMARY KEY (`EmpId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `approver`
--
ALTER TABLE `approver`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`CityId`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryId`);

--
-- Indexes for table `dailyworkload`
--
ALTER TABLE `dailyworkload`
  ADD PRIMARY KEY (`DailyWorkLoadId`);

--
-- Indexes for table `dean`
--
ALTER TABLE `dean`
  ADD PRIMARY KEY (`EmpId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `employee2`
--
ALTER TABLE `employee2`
  ADD PRIMARY KEY (`EmpId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`empId`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`GenderId`);

--
-- Indexes for table `leavedays`
--
ALTER TABLE `leavedays`
  ADD PRIMARY KEY (`LeaveDayId`);

--
-- Indexes for table `leavedetails`
--
ALTER TABLE `leavedetails`
  ADD PRIMARY KEY (`Detail_Id`);

--
-- Indexes for table `maritalstatus`
--
ALTER TABLE `maritalstatus`
  ADD PRIMARY KEY (`MaritalId`);

--
-- Indexes for table `my_table`
--
ALTER TABLE `my_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_random_value` (`unique_random_value`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`PositinId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`StateId`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`StatusId`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`EmpId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `EmployeeId` (`EmployeeId`);

--
-- Indexes for table `type_of_leave`
--
ALTER TABLE `type_of_leave`
  ADD PRIMARY KEY (`LeaveId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`EmpId`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `EmployeeId` (`EmployeeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amvion`
--
ALTER TABLE `amvion`
  MODIFY `EmpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `approver`
--
ALTER TABLE `approver`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `CityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dailyworkload`
--
ALTER TABLE `dailyworkload`
  MODIFY `DailyWorkLoadId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `dean`
--
ALTER TABLE `dean`
  MODIFY `EmpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee2`
--
ALTER TABLE `employee2`
  MODIFY `EmpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `empId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `GenderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leavedays`
--
ALTER TABLE `leavedays`
  MODIFY `LeaveDayId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leavedetails`
--
ALTER TABLE `leavedetails`
  MODIFY `Detail_Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_table`
--
ALTER TABLE `my_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `PositinId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `StateId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `EmpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `type_of_leave`
--
ALTER TABLE `type_of_leave`
  MODIFY `LeaveId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `EmpId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
