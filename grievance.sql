-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 01:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grievance`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `name` varchar(100) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `community` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` varchar(25) NOT NULL,
  `college` varchar(50) NOT NULL,
  `Grievance` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grievance_form`
--

CREATE TABLE `grievance_form` (
  `name` varchar(100) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `community` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` varchar(25) NOT NULL,
  `college` varchar(50) NOT NULL,
  `Grievance` varchar(200) NOT NULL,
  `files` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grievance_form`
--

INSERT INTO `grievance_form` (`name`, `regno`, `gender`, `community`, `course`, `year`, `college`, `Grievance`, `files`) VALUES
('PRIYA R', '52355464', 'FEMALE', 'BC', 'BA LLB', '1', 'GOVT  LAW  COLLEGE  CHENGALPATTU', 'TRANSFER  REQUEST', 'ALC.pdf'),
('PRIYA R', '52355464', 'FEMALE', 'BC', 'BA LLB', '1', 'GOVT  LAW  COLLEGE  CHENGALPATTU', 'TRANSFER  REQUEST', 'ALC.pdf'),
('SR ANDALKODHAI', '3200682', 'Female', 'Student', 'Llb', '3', 'Govt Law College, Coimbatore ', 'My grievances against withheld results. I have constantly been declared as withheld from 3rd semester to current semester. I expect you could take fair actions into this matter.', 'Screenshot_20230629-000733.png'),
('SR Andalkodhai ', '3200682', 'Female', 'Student', 'Llb', '2023', 'Govt Law College, Coimbatore ', 'My grievances against withheld results. I have constantly been declared as withheld from 3rd semester to current semester. I expect you could take fair actions into this matter.', 'Screenshot_20230629-000733.png'),
('SR Andal Kodhai', '3200682', 'Female', 'Student', 'Llb', '2023', 'Govt Law College, Coimbatore ', 'Refund was not credited to My account: I had been applied for the Xerox copy of the answerscript for the paper TA5D, which the examination department replied my application not to consider. They assur', 'IMG_20230501_214929.jpg'),
('SR Andalkodhai', '3200682', 'Female', 'Student', 'Llb', '2023', 'Govt Law College, Coimbatore ', 'My exam results for the June 2022 exams was withheld, even though I made successful payment of Rs 1075. After the results publication, I had been informed that My exam application was not submitted an', 'Screenshot_20230630-025819.png'),
('SR ANDALKODHAI', '3200682', 'Female', 'Student', 'Llb', '2023', 'Govt Law College, Coimbatore ', 'Internal revaluation issues for the 4th semester (Dec 2022) initiated by me, got signature from our Respected principal. They\'ll assure me to revaluate my internal papers and not yet declared or added', 'Screenshot_20230630-031028.png'),
('SR ANDALKODHAI', '3200682', 'Female', 'Student', 'Llb', '2023', 'Govt Law College, Coimbatore ', 'May 2023 results available on 28.06.2023, my results is withheld. May 29,2023 was a holiday. I have tried to contact the our college through landline and to know the reason for withheld, Mr Admin info', 'Screenshot_20230630-125730.png'),
('SR Andalkodhai ', '3200682', 'Female', 'Student', 'Llb', '3', 'Govt Law College, Coimbatore ', 'Respected Authorities of the University : Addressing the grievance to Syndicate, I had gone through many struggles for the academic performances both in internal exams and external exams. This grievan', 'Screenshot_20230703-003443.jpg'),
('VIGNESWARAN R', '3201051', 'Male', 'DNC( PIRAMALAI KALLAR)', 'LLB', '2023', 'Government Law College, Ramanathapuram.', 'Dear Sir,   *I am looking for My Provisional certificate and Consolidated Statement Of Marks.*   I have passed all subjects in last Semester exam. I have Received only  Transfer Certificate Only in My', '24293.pdf'),
('Vinodh V Krishna', '1710', 'M', 'OBC', 'LLM', '2019', 'SOEL', 'Sir/Madam, The University has given mark statement and certificates recording wrong year of course completion. The details are well known to university from the records. RTI was filed to know about th', 'RTI.pdf'),
('Rajkamal', '3221990', 'M', 'BC', '3Year LLB', '2022', 'Government Law college, Karaikudi', 'Dear Sir, I am one of the student of 2nd Yr of 3 Year LLB Degree course - Government law college, Karaikudi - Reg number 322P1990. I have been instructed to pay Condonation Fees in the University port', 'Payment Page not found.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', 'ZZZTestEXIF1230.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', 'ZZZTest9976.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', 'passwd%00.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', '..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2F..%2Fetc%2Fpasswd%00.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', 'passwd%00.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', 'yrphmgdpgulaszriylqiipemefmacafkxycjaxjs%3F.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', '1yrphmgdpgulaszriylqiipemefmacafkxycjaxjs%00.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', 'fit.txt%3F.jpg'),
('dwUQQUrL', '1', 'male', '1', '1', '1967', '1', '1', 'win.ini%00.jpg'),
('BALAJI K    ', '7001', 'MALE ', 'BACK WARD CLASS', 'ML  IV PROPERTY OF LAW   FIRST BATCH SEMESTER    ', '2009', 'TN DR AMBEDKAR GOVERNMENT LAW COLLEGE CHENNAI 104 ', 'I APPLIED ON APPLICATION  ON 28/12/2023 M L  EXAM  FEE PAID ON LINE RS 1075 BUT NOT RECEIPT PAYMERNT RECEIPT THE EXAM  SCHENDULE ON 08/01/204 ', 'exam fee details on 28125023.pdf'),
('C.PRASATH', '22025', 'Male ', 'SC', 'LLM', '2', 'Ramanathapuram law college ', 'Samattu Pongal was celebrated in our college last year.  But there is no equality.  Upper caste students played the songs from the film Amaran that could evoke caste sentiments on loudspeakers.  This ', 'IMG_20240107_015106.jpg'),
('C.PRASATH', '22025', 'Male ', 'SC', 'LLM', '2', 'Ramanathapuram law college ', 'hello sir/madam Samattu Pongal was celebrated in our college last year.  But there is no equality.  Upper caste students played the songs from the film Amaran that could evoke caste sentiments on loud', 'IMG_20240107_015106.jpg'),
('Ramkumar Seenivasan', '32366836', 'Male', 'SC', 'LLB', '2023', 'GTN Private Law College, Dindigul', 'Respected Sir/Madam, Please clarify the  University Fee Rs. 2000 or Rs.10,000 as the University fee paid at the time of allotment order. If any chages please share the fees details for University fees', '18.11.2022 Fees_ notification.pdf'),
('PRIYA', '2023', 'Female', 'Scheduled caste', 'BALLB', '2023', 'GOVERNMENT LAW COLLEGE DHARMAPURI', 'I AM 5 YEAR STUDENT OF DHARMAPURI GOVERNMENT LAW COLLEGE AND DUE ATTENDANCE STORTAGE THE GUEST LECTURER NAMED (ASWIN) WHO IS WORKING IN SAME DHARMAPURI GOVERNMENT LAW COLLEGE  AND HE COLLECTS MONEY FR', '17063316204677092296804085108533.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
