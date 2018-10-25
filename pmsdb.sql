-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 08:05 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(10) NOT NULL DEFAULT '',
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_mail` varchar(100) NOT NULL,
  `Profile_Picture` varchar(20) DEFAULT NULL,
  `Profile_Ext` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`, `admin_mail`, `Profile_Picture`, `Profile_Ext`) VALUES
('admin', 'Prototype', '21232f297a57a5a743894a0e4a801fc3', 'ztpowered1@gmail.com', 'admin', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(5) NOT NULL,
  `class_code` varchar(100) NOT NULL,
  `sup_id` int(5) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `class_venue` varchar(100) NOT NULL,
  `class_status` varchar(20) NOT NULL,
  `class_day` varchar(10) NOT NULL,
  `class_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_code`, `sup_id`, `subject_id`, `class_venue`, `class_status`, `class_day`, `class_time`) VALUES
(1, 'TSN1001', 2, 2, 'CQCR3005', 'Deactive', 'Monday', '11.00am-1.00pm'),
(2, 'CCC1234', 2, 1, 'CQCR3005', 'Active', 'Tuesday', '1.00pm-3.00pm'),
(3, 'DDD1234', 2, 1, 'CQCR3005', 'Active', 'Monday', '9.00am-11.00am'),
(4, 'EEE1234', 3, 1, 'CQCR3005', 'Active', 'Tuesday', '11.00am-1.00pm'),
(5, 'GGG1234', 3, 1, 'CQCR3005', 'Deactive', 'Thursday', '11.00am-1.00pm'),
(6, 'HHH1234', 3, 2, 'CQCR3005', 'Active', 'Wednesday', '9.00am-11.00am');

-- --------------------------------------------------------

--
-- Table structure for table `coursework`
--

CREATE TABLE `coursework` (
  `prog_id` int(5) NOT NULL,
  `cs_reg_fee` decimal(7,2) NOT NULL,
  `cs_annual_resource_fee` decimal(7,2) NOT NULL,
  `cs_tuition_fee` decimal(7,2) NOT NULL,
  `cs_total_subject_fee` decimal(7,2) DEFAULT '0.00',
  `cs_total_credit_hr` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursework`
--

INSERT INTO `coursework` (`prog_id`, `cs_reg_fee`, `cs_annual_resource_fee`, `cs_tuition_fee`, `cs_total_subject_fee`, `cs_total_credit_hr`) VALUES
(2, '1550.00', '1000.00', '550.00', '2200.00', 10),
(3, '1.00', '1.00', '1.00', '1.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `courseworkstd`
--

CREATE TABLE `courseworkstd` (
  `stud_id` int(5) NOT NULL,
  `cw_cgpa` decimal(5,2) NOT NULL DEFAULT '0.00',
  `cw_credit_hr` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseworkstd`
--

INSERT INTO `courseworkstd` (`stud_id`, `cw_cgpa`, `cw_credit_hr`) VALUES
(1, '3.22', 5),
(5, '2.00', 5),
(6, '3.33', 10);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `stud_id` int(5) NOT NULL,
  `sup_id` int(5) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`stud_id`, `sup_id`, `file_name`, `file_path`) VALUES
(2, 1, 'test.7z', '../source/document/research_file/171003002_test.7z'),
(2, 2, 'test.7z', '../source/document/research_file/171003002_test.7z'),
(3, 1, 's1-doc.7z', '../source/document/research_file/171003003_s1-doc.7z'),
(3, 2, 's1-doc.7z', '../source/document/research_file/171003003_s1-doc.7z');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `stud_id` int(10) NOT NULL,
  `class_id` int(5) NOT NULL,
  `class_gpa` decimal(5,2) NOT NULL,
  `enrollment_status` varchar(20) NOT NULL,
  `enrollment_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`stud_id`, `class_id`, `class_gpa`, `enrollment_status`, `enrollment_id`) VALUES
(5, 2, '0.00', 'Active', 2),
(1, 3, '0.00', 'Dropped', 3),
(1, 4, '3.22', 'End', 4),
(6, 4, '4.00', 'End', 5),
(6, 6, '2.66', 'End', 6);

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `field_id` int(5) NOT NULL,
  `prog_id` int(5) NOT NULL,
  `field_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`field_id`, `prog_id`, `field_name`) VALUES
(1, 1, 'Database'),
(2, 1, 'Computer Network');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `sup_id` int(5) NOT NULL,
  `field_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`sup_id`, `field_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(5) NOT NULL,
  `pay_code` varchar(100) DEFAULT NULL,
  `stud_id` int(5) NOT NULL,
  `pay_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pay_amount` decimal(7,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `pay_code`, `stud_id`, `pay_date`, `pay_amount`) VALUES
(1, 's1', 1, '2017-10-03 18:28:25', '100.50'),
(2, 's2', 2, '2017-10-03 18:31:35', '120.30'),
(3, 's3', 6, '2017-10-03 18:46:16', '4300.00');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pos_id` int(5) NOT NULL,
  `pos_name` varchar(100) NOT NULL,
  `stud_limit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `pos_name`, `stud_limit`) VALUES
(1, 'Professor', 10),
(2, 'Associate Professor', 8),
(3, 'Principal Lecturer', 5),
(4, 'Senior Lecturer', 3),
(5, 'Lecturer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `prog_id` int(5) NOT NULL,
  `prog_name` varchar(100) NOT NULL,
  `prog_type` varchar(10) NOT NULL,
  `prog_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`prog_id`, `prog_name`, `prog_type`, `prog_code`) VALUES
(1, 'Information Technology', 'Research', 'PC1'),
(2, 'Engineering', 'Coursework', 'PC2'),
(3, 'www', 'Coursework', 'PC3'),
(4, 'qqq', 'Research', 'PC4');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `reg_id` int(5) NOT NULL,
  `reg_code` varchar(10) DEFAULT NULL,
  `stud_name` varchar(100) NOT NULL,
  `stud_ic` varchar(12) DEFAULT NULL,
  `stud_passport` varchar(10) DEFAULT NULL,
  `stud_email` varchar(100) NOT NULL,
  `stud_contact` varchar(20) NOT NULL,
  `stud_gender` varchar(6) NOT NULL,
  `stud_address` varchar(100) NOT NULL,
  `stud_state` varchar(20) NOT NULL,
  `stud_postcode` varchar(100) NOT NULL,
  `stud_nation` varchar(100) NOT NULL,
  `prog_id` int(5) NOT NULL,
  `stud_type` varchar(10) NOT NULL,
  `und_grad` varchar(100) NOT NULL,
  `und_cgpa` decimal(3,2) NOT NULL,
  `en_test` varchar(10) NOT NULL,
  `en_mark` decimal(4,1) NOT NULL,
  `reg_status` varchar(10) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`reg_id`, `reg_code`, `stud_name`, `stud_ic`, `stud_passport`, `stud_email`, `stud_contact`, `stud_gender`, `stud_address`, `stud_state`, `stud_postcode`, `stud_nation`, `prog_id`, `stud_type`, `und_grad`, `und_cgpa`, `en_test`, `en_mark`, `reg_status`) VALUES
(1, 'RC1', 'Ali Chun', '930130033213', NULL, 'ongkyle@live.com.my', '0132311123', 'Male', '70, jalan parawan 2', 'Perak', '32133', 'Malaysia', 2, 'Coursework', 'Multimedia University', '3.45', 'IELTS', '5.0', 'Approved'),
(2, 'RC2', 'Damon Ho', '950317012344', NULL, 'hjundragon@gmail.com', '0132345678', 'Male', '52, block E32A, taman bunga', 'Melaka', '80000', 'Malaysia', 1, 'Research', 'Multimedia University', '3.50', 'MUET', '4.0', 'Approved'),
(3, 'RC3', 'Sock Sing', '960321013242', NULL, 'socksing0621@gmail.com', '0133231123', 'Female', '23, jln sutera 3', 'Johor', '81300', 'Malaysia', 1, 'Research', 'Multimedia University', '3.27', 'MUET', '4.0', 'Approved'),
(4, 'RC4', 'Elena Choong', '930203082133', NULL, 'hjundragon001@gmail.com', '0148724933', 'Female', '62, jalan merdeka 6', 'Selangor', '12000', 'Malaysia', 1, 'Research', 'Multimedia University', '3.88', 'IELTS', '5.0', 'Approved'),
(5, 'RC5', 'Rain Teng', '921230016723', NULL, 'jun_dragon_@hotmail.com', '0187179231', 'Male', '90, block 69 , taman ramput', 'Terengganu', '89322', 'Malaysia', 2, 'Coursework', 'Multimedia University', '3.21', 'MUET', '6.0', 'Approved'),
(6, 'RC6', 'Kelly Heng', '940123013213', NULL, 'officialkyle@gmail.com', '0122134123', 'Male', '71, jalan merah 54', 'Sarawak', '23231', 'Malaysia', 2, 'Coursework', 'Multimedia University', '3.90', 'MUET', '5.0', 'Approved'),
(7, 'RC7', 'Kyle Ong', '970903035747', NULL, 'ongkyle@live.com.my', '0179648026', 'Male', 'wer', 'Kelantan', '15300', 'Malaysia', 1, 'Research', 'multimedia university', '4.00', 'MUET', '6.0', 'Approved'),
(8, 'RC8', 'Fuu lname', '999999999999', NULL, 'officialkyle@testing.com', '111111111', 'Male', '123, Jalan A', 'Sarawak', '11111', 'Malaysia', 1, 'Research', 'Testing University', '4.00', 'MUET', '2.0', 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `prog_id` int(5) NOT NULL,
  `res_reg_fee` decimal(7,2) NOT NULL,
  `res_annual_resource_fee` decimal(7,2) NOT NULL,
  `res_annual_tuition_fee` decimal(7,2) NOT NULL,
  `res_examination_fee` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`prog_id`, `res_reg_fee`, `res_annual_resource_fee`, `res_annual_tuition_fee`, `res_examination_fee`) VALUES
(1, '1050.00', '1000.00', '3000.00', '750.00');

-- --------------------------------------------------------

--
-- Table structure for table `researchstd`
--

CREATE TABLE `researchstd` (
  `stud_id` int(5) NOT NULL,
  `res_topic` varchar(100) DEFAULT NULL,
  `res_status` varchar(100) DEFAULT 'Topic Preparation',
  `sup_id` int(5) DEFAULT NULL,
  `co_sup_id` int(5) DEFAULT NULL,
  `field_id` int(5) DEFAULT NULL,
  `jor_name` varchar(100) DEFAULT NULL,
  `jor_status` varchar(20) DEFAULT 'Unpublished',
  `jor_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `researchstd`
--

INSERT INTO `researchstd` (`stud_id`, `res_topic`, `res_status`, `sup_id`, `co_sup_id`, `field_id`, `jor_name`, `jor_status`, `jor_date`) VALUES
(2, 'Computer Network Advance', 'End', 1, 2, 2, 'journal 1', 'Published', '2017-10-04'),
(3, 'Network Analysis', 'Research Colloquium', 1, 2, 2, 'journal 2', 'Published', '2017-10-03'),
(4, '', 'Topic submission', NULL, NULL, NULL, NULL, 'Unpublished', NULL),
(7, NULL, 'Topic submission', NULL, NULL, NULL, NULL, 'Unpublished', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(5) NOT NULL,
  `stud_status` varchar(10) NOT NULL DEFAULT 'Active',
  `stud_password` varchar(100) NOT NULL,
  `stud_finance` decimal(7,2) DEFAULT NULL,
  `reg_id` int(5) NOT NULL,
  `stud_total_pay` decimal(7,2) DEFAULT NULL,
  `stud_type` varchar(10) NOT NULL,
  `intake_date` date NOT NULL,
  `duration` int(4) DEFAULT '0',
  `stud_code` varchar(10) NOT NULL,
  `Profile_Picture` varchar(20) DEFAULT NULL,
  `Profile_Ext` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_status`, `stud_password`, `stud_finance`, `reg_id`, `stud_total_pay`, `stud_type`, `intake_date`, `duration`, `stud_code`, `Profile_Picture`, `Profile_Ext`) VALUES
(1, 'Active', '202cb962ac59075b964b07152d234b70', '5300.00', 1, '100.50', 'Coursework', '2017-10-03', 1, '171003001', '171003001', '.png'),
(2, 'Complete', 'f06b17ca759a550c619166407696c374', '1800.00', 2, '120.30', 'Research', '2017-10-03', 0, '171003002', '171003002', '.png'),
(3, 'Active', 'f6dd5f75425a0b70bdefc2722152a1b4', '1800.00', 3, NULL, 'Research', '2017-10-03', 1, '171003003', '171003003', '.jpg'),
(4, 'Active', '202cb962ac59075b964b07152d234b70', '1800.00', 4, NULL, 'Research', '2017-10-03', 1, '171003004', '171003004', '.png'),
(5, 'Active', 'cd7578564af012e52a83f05fd21a3be8', '4300.00', 5, NULL, 'Coursework', '2017-10-03', 1, '171003005', NULL, NULL),
(6, 'Complete', '3d036eb013fe6e52ce832b30d8f052c6', '4300.00', 6, '4300.00', 'Coursework', '2017-10-03', 0, '171003006', NULL, NULL),
(7, 'Active', '5f4dcc3b5aa765d61d8327deb882cf99', NULL, 7, NULL, 'Research', '2017-12-20', 1, '171220007', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(5) NOT NULL,
  `prog_id` int(5) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_credit_hr` int(3) NOT NULL,
  `subject_fee` decimal(7,2) NOT NULL,
  `subject_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `prog_id`, `subject_name`, `subject_credit_hr`, `subject_fee`, `subject_code`) VALUES
(1, 2, 'Electrical Power System', 5, '1100.00', 'ENG_ELEC'),
(2, 2, 'Nanotechnology', 5, '1100.00', 'ENG_NANO'),
(3, 3, 'www1', 1, '1.00', 'WWW_WWWW');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `sup_id` int(5) NOT NULL,
  `sup_code` varchar(10) NOT NULL,
  `sup_password` varchar(100) NOT NULL,
  `sup_name` varchar(100) NOT NULL,
  `sup_IC` varchar(12) NOT NULL,
  `sup_email` varchar(100) NOT NULL,
  `sup_contact` varchar(20) NOT NULL,
  `sup_gender` varchar(6) NOT NULL,
  `sup_address` varchar(100) NOT NULL,
  `sup_state` varchar(20) NOT NULL,
  `sup_postcode` int(5) NOT NULL,
  `pos_id` int(5) NOT NULL,
  `prog_id` int(5) NOT NULL,
  `stud_amount` int(2) NOT NULL DEFAULT '0',
  `sup_status` varchar(10) NOT NULL,
  `sup_consultday` varchar(10) NOT NULL,
  `sup_consulttime` varchar(20) NOT NULL,
  `sup_office` varchar(20) NOT NULL,
  `Profile_Picture` varchar(20) DEFAULT NULL,
  `Profile_Ext` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`sup_id`, `sup_code`, `sup_password`, `sup_name`, `sup_IC`, `sup_email`, `sup_contact`, `sup_gender`, `sup_address`, `sup_state`, `sup_postcode`, `pos_id`, `prog_id`, `stud_amount`, `sup_status`, `sup_consultday`, `sup_consulttime`, `sup_office`, `Profile_Picture`, `Profile_Ext`) VALUES
(1, 's1', '6f364718d80851268d03c4f0ae5428ac', 'Kitty Ng', '920112301231', 'nkh4040@hotmail.com', '0123213312', 'Female', '22, jalan hang tuah 2', 'Johor', 32131, 1, 1, 2, 'Active', 'Wednesday', '11:00pm-1:00pm', '', NULL, NULL),
(2, 's2', '72237d42d48a2b9f87972739a02e0f87', 'Stephen Tan', '920132012312', 'aikchun0108@gmail.com', '0177823131', 'Male', '88, jalan biru 10', 'Johor', 89231, 1, 1, 2, 'Active', 'Wednesday', '11:00pm-1:00pm', '', NULL, NULL),
(3, 's3', '6cf9ff8f342afc3671dc4be535c3c7eb', 'Ian Lee ', '890130032311', 'nkh6060@gmail.com', '0135345533', 'Male', '43, jalan merah 32', 'Johor', 45021, 2, 2, 0, 'Active', 'Tuesday', '10:00am-12:00pm', '', NULL, NULL),
(4, 's4', '3b066b533946a6cbfe4fca2023316cef', 'Ho Zi Xiong', '970102013213', 'socksing062111@hotmail.com', '0172313233', 'Male', '44, jalan kuala kangsa 3', 'Johor', 67000, 1, 2, 0, 'Active', 'Wednesday', '3:00pm-5:00pm', '', NULL, NULL),
(5, 's5', '93e647a945bb5ce7aeac52d233ade046', 'OK', '111111111111', 'officialkyle97@gmail.com', '0111111111', 'Male', 'jk', 'Sarawak', 23231, 1, 3, 0, 'Active', '', '', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `sup_id` (`sup_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `coursework`
--
ALTER TABLE `coursework`
  ADD PRIMARY KEY (`prog_id`),
  ADD KEY `prog_id` (`prog_id`);

--
-- Indexes for table `courseworkstd`
--
ALTER TABLE `courseworkstd`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`stud_id`,`sup_id`),
  ADD KEY `sup_id_pk` (`sup_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD UNIQUE KEY `stud_id+class_id` (`stud_id`,`class_id`) USING BTREE,
  ADD KEY `stud_id` (`stud_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `prog_id_pk` (`prog_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`sup_id`,`field_id`),
  ADD KEY `field_id_pk` (`field_id`),
  ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pos_id`),
  ADD UNIQUE KEY `pos_id` (`pos_id`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`prog_id`),
  ADD UNIQUE KEY `prog_id` (`prog_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_id`),
  ADD UNIQUE KEY `reg_id` (`reg_id`),
  ADD UNIQUE KEY `stud_ic` (`stud_ic`,`stud_passport`),
  ADD KEY `prog_id_pk` (`prog_id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`prog_id`),
  ADD KEY `prog_id_pk` (`prog_id`);

--
-- Indexes for table `researchstd`
--
ALTER TABLE `researchstd`
  ADD PRIMARY KEY (`stud_id`),
  ADD KEY `sup_id` (`sup_id`,`co_sup_id`,`field_id`),
  ADD KEY `sup_id_2` (`sup_id`,`co_sup_id`,`field_id`),
  ADD KEY `sup_id_co` (`co_sup_id`,`field_id`),
  ADD KEY `field_id_pk` (`field_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`,`reg_id`),
  ADD UNIQUE KEY `stud_id` (`stud_id`),
  ADD KEY `reg_id_pk` (`reg_id`),
  ADD KEY `reg_id_pk_2` (`reg_id`),
  ADD KEY `reg_id_pk2` (`reg_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `prog_id` (`prog_id`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`sup_id`),
  ADD UNIQUE KEY `sup_IC` (`sup_IC`),
  ADD UNIQUE KEY `sup_id` (`sup_id`),
  ADD KEY `pos_id_pk` (`pos_id`),
  ADD KEY `pos_id_pk_2` (`pos_id`),
  ADD KEY `prog_id_pk` (`prog_id`),
  ADD KEY `pos_id_pk_3` (`pos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enrollment_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `field_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pos_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `programme`
--
ALTER TABLE `programme`
  MODIFY `prog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `sup_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `class_ibfk_3` FOREIGN KEY (`sup_id`) REFERENCES `supervisor` (`sup_id`);

--
-- Constraints for table `coursework`
--
ALTER TABLE `coursework`
  ADD CONSTRAINT `coursework_ibfk_1` FOREIGN KEY (`prog_id`) REFERENCES `programme` (`prog_id`);

--
-- Constraints for table `courseworkstd`
--
ALTER TABLE `courseworkstd`
  ADD CONSTRAINT `courseworkstd_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`);

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `researchstd` (`stud_id`),
  ADD CONSTRAINT `document_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `supervisor` (`sup_id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`stud_id`) REFERENCES `courseworkstd` (`stud_id`),
  ADD CONSTRAINT `enrollment_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);

--
-- Constraints for table `field`
--
ALTER TABLE `field`
  ADD CONSTRAINT `field_ibfk_1` FOREIGN KEY (`prog_id`) REFERENCES `programme` (`prog_id`);

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `major_ibfk_2` FOREIGN KEY (`field_id`) REFERENCES `field` (`field_id`),
  ADD CONSTRAINT `major_ibfk_3` FOREIGN KEY (`sup_id`) REFERENCES `supervisor` (`sup_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`prog_id`) REFERENCES `programme` (`prog_id`);

--
-- Constraints for table `research`
--
ALTER TABLE `research`
  ADD CONSTRAINT `research_ibfk_1` FOREIGN KEY (`prog_id`) REFERENCES `programme` (`prog_id`);

--
-- Constraints for table `researchstd`
--
ALTER TABLE `researchstd`
  ADD CONSTRAINT `researchstd_ibfk_3` FOREIGN KEY (`field_id`) REFERENCES `field` (`field_id`),
  ADD CONSTRAINT `researchstd_ibfk_4` FOREIGN KEY (`stud_id`) REFERENCES `student` (`stud_id`),
  ADD CONSTRAINT `researchstd_ibfk_5` FOREIGN KEY (`sup_id`) REFERENCES `supervisor` (`sup_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `registration` (`reg_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`prog_id`) REFERENCES `coursework` (`prog_id`);

--
-- Constraints for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD CONSTRAINT `supervisor_ibfk_1` FOREIGN KEY (`pos_id`) REFERENCES `position` (`pos_id`),
  ADD CONSTRAINT `supervisor_ibfk_2` FOREIGN KEY (`prog_id`) REFERENCES `programme` (`prog_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
