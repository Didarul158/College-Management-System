-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 05:37 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegefinal(1)`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `a_name` varchar(256) NOT NULL,
  `a_password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `dob` date NOT NULL,
  `bldgrp` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `salary` int(11) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `type` varchar(50) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_password`, `email`, `dob`, `bldgrp`, `gender`, `salary`, `photo`, `type`) VALUES
(2, 'Didarul', '123456', 'didarulalam962@gmail.com', '0000-00-00', 'B+', 'male', 25000, '69889426_2622353437802637_2284275650548203520_n.jpg', 'admin'),
(3, 'Bijoya', '123456', 'Bijoya@gmail.com', '1998-02-05', 'O+', 'female', 25600, '95503792_1544009072424394_5691323419480555520_n.jpg', 'admin'),
(4, 'Kaniz', '123456', 'kaniz@aiub.edu', '1956-02-05', 'O+', 'female', 25000, '96583478_2589723694610327_170559834293272576_n.jpg', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `ad_id` int(11) NOT NULL,
  `ad_test` date NOT NULL,
  `ad_form` date NOT NULL,
  `ad_fee` varchar(256) NOT NULL,
  `start` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`ad_id`, `ad_test`, `ad_form`, `ad_fee`, `start`) VALUES
(1, '2020-08-13', '2020-08-05', '5000 Tk.', 'September 5'),
(2, '2020-09-01', '2020-08-25', '5000 Tk.', '19 September');

-- --------------------------------------------------------

--
-- Table structure for table `admitcourse`
--

CREATE TABLE `admitcourse` (
  `cl_id` int(11) NOT NULL,
  `c_name` varchar(256) NOT NULL,
  `t_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admitcourse`
--

INSERT INTO `admitcourse` (`cl_id`, `c_name`, `t_name`) VALUES
(1, 'RESEARCH METHODOLOGY [CS] [F]', 'DR. M. M. MAHBUBUL SYEED'),
(3, 'WEB TECHNOLOGIES [B]', 'MUSHFIQUR RAHMAN'),
(4, 'COMPUTER GRAPHICS [C]', 'bijoya'),
(5, 'ARTIFICIAL INTELLIGENCE AND EXPERT SYSTEM', 'ASMA FARIHA');

-- --------------------------------------------------------

--
-- Table structure for table `all_book`
--

CREATE TABLE `all_book` (
  `id` int(20) NOT NULL,
  `book_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_book`
--

INSERT INTO `all_book` (`id`, `book_name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'JavaScript'),
(4, 'jQuery'),
(5, 'Bootstrap'),
(6, 'Reactjs'),
(7, 'PHP'),
(8, 'NodeJS');

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `at_id` int(20) NOT NULL,
  `class` int(20) NOT NULL,
  `Date` date NOT NULL,
  `Present` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`at_id`, `class`, `Date`, `Present`) VALUES
(1, 11, '2020-08-12', 'Yes'),
(2, 12, '2020-08-16', 'No'),
(3, 12, '2020-08-20', 'No'),
(4, 11, '2020-08-28', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(256) NOT NULL,
  `b_author` varchar(256) NOT NULL,
  `photo` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`b_id`, `b_name`, `b_author`, `photo`) VALUES
(2, 'David Copperfield', 'Charles Dickens', 'DavidCopperField.jpg'),
(3, 'Pakistan the Gathering Storm', 'Benazir Bhutto', 'Web tech.png'),
(4, 'At going Down of the Sun', 'Marius Oelchigz', 'Atthegoingdownofthesun_mockup.png'),
(5, 'Enchantment', 'Guy Kowaski', 'book-cover-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `classroutine`
--

CREATE TABLE `classroutine` (
  `c_id` int(11) NOT NULL,
  `c_time` varchar(256) NOT NULL,
  `c_name` varchar(256) NOT NULL,
  `c_day` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classroutine`
--

INSERT INTO `classroutine` (`c_id`, `c_time`, `c_name`, `c_day`) VALUES
(2, '12:00-2:00', 'Computer Networks', 'Saturday'),
(1, '10:00-12:00', 'Computer Networks', 'Saturday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(4, '10:00-12:00', 'Network Master', 'Sunday'),
(4, '10:00-12:00', 'research Methodology', 'Monday'),
(4, '10:00-12:00', 'research Methodology', 'Wednesday'),
(4, '12:00-2:00', 'Method of RM', 'Monday'),
(4, '10:00-12:00', 'Algorithm', 'tuesday'),
(2, '12:00-2:00', 'Computer Networks', 'Saturday'),
(1, '10:00-12:00', 'Computer Networks', 'Saturday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(4, '10:00-12:00', 'Network Master', 'Sunday'),
(4, '10:00-12:00', 'research Methodology', 'Monday'),
(4, '10:00-12:00', 'research Methodology', 'Wednesday'),
(4, '12:00-2:00', 'Method of RM', 'Monday'),
(4, '10:00-12:00', 'Algorithm', 'tuesday'),
(2, '12:00-2:00', 'Computer Networks', 'Saturday'),
(1, '10:00-12:00', 'Computer Networks', 'Saturday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(4, '10:00-12:00', 'Network Master', 'Sunday'),
(4, '10:00-12:00', 'research Methodology', 'Monday'),
(4, '10:00-12:00', 'research Methodology', 'Wednesday'),
(4, '12:00-2:00', 'Method of RM', 'Monday'),
(4, '10:00-12:00', 'Algorithm', 'tuesday'),
(2, '12:00-2:00', 'Computer Networks', 'Saturday'),
(1, '10:00-12:00', 'Computer Networks', 'Saturday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(3, '12:00-2:00', 'Network Security', 'Sunday'),
(4, '10:00-12:00', 'Network Master', 'Sunday'),
(4, '10:00-12:00', 'research Methodology', 'Monday'),
(4, '10:00-12:00', 'research Methodology', 'Wednesday'),
(4, '12:00-2:00', 'Method of RM', 'Monday'),
(4, '10:00-12:00', 'Algorithm', 'tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `cm_id` int(20) NOT NULL,
  `class` int(20) NOT NULL,
  `complaint` varchar(2000) NOT NULL,
  `p_message` mediumtext NOT NULL,
  `poll` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cm_id`, `class`, `complaint`, `p_message`, `poll`) VALUES
(1, 11, 'The Term Exmination Grade \'F\' of the course only.', 'Hello Everyone, Please fill up the form', 'https://mail.google.com/mail/u/0/#inbox'),
(2, 12, 'The Term Exmination Grade \'F\' of the course only.', 'Hello Everyone, Please fill up the form', 'https://mail.google.com/mail/u/0/#inbox');

-- --------------------------------------------------------

--
-- Table structure for table `contactteacher`
--

CREATE TABLE `contactteacher` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactteacher`
--

INSERT INTO `contactteacher` (`name`, `email`, `phone`) VALUES
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004),
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004),
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004),
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(256) NOT NULL,
  `time` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`c_id`, `c_name`, `time`) VALUES
(2, 'COMPUTER GRAPHICS [C]', 'Sunday 2:00 PM-5:00 PM'),
(3, 'COMPILER DESIGN [N]', 'Sunday 8:00 AM-9:30 AM'),
(5, 'RESEARCH METHODOLOGY [CS] [F]', 'Mon 12:30 PM - 2:0 PM'),
(6, 'WEB TECHNOLOGIES [F]', 'Wed 2:0 PM - 5:0 PM'),
(7, 'DATA COMMUNICATION [G]', 'Sun 10:0 - Sun 12:0 PM');

-- --------------------------------------------------------

--
-- Table structure for table `examschedule`
--

CREATE TABLE `examschedule` (
  `e_id` int(11) NOT NULL,
  `e_date` date NOT NULL,
  `e_time` varchar(256) NOT NULL,
  `c_name` varchar(256) NOT NULL,
  `e_duration` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examschedule`
--

INSERT INTO `examschedule` (`e_id`, `e_date`, `e_time`, `c_name`, `e_duration`) VALUES
(1, '2020-09-17', 'morning', 'COMPUTER GRAPHICS [C]', '2 Hrs 00 Min'),
(2, '2020-09-14', 'afternoon', 'COMPILER DESIGN [N]', '2 Hrs 00 Min'),
(4, '2020-09-22', 'afternoon', 'RESEARCH METHODOLOGY [CS] [F]', '2 Hrs 00 Min'),
(7, '2020-09-16', 'afternoon', 'WEB TECHNOLOGIES [F]', '2 Hrs 00 Min'),
(8, '2020-09-23', 'afternoon', 'RESEARCH METHODOLOGY [CS] [F]', '10.00-12.00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `new_record`
--

CREATE TABLE `new_record` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `class` int(50) NOT NULL,
  `mark` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(20) NOT NULL,
  `class` int(20) NOT NULL,
  `note` varchar(2000) NOT NULL,
  `note_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `class`, `note`, `note_type`) VALUES
(1, 12, '   Physics is one of the oldest academic disciplines, perhaps the oldest through its inclusion of astronomy. Over the last two millennia, physics was a part of natural philosophy along with chemistry, certain branches of mathematics, and biology, but during the Scientific Revolution in the 17th century, the natural sciences emerged as unique research programs in their own right. Physics intersects with many interdisciplinary areas of research, such as biophysics and quantum chemistry, and the boundaries of physics are not rigidly defined. New ideas in physics often explain the fundamental mechanisms of other sciences, while opening new avenues of research in areas such as mathematics and philosophy.\r\n\r\n        Physics also makes significant contributions through advances in new technologies that arise from theoretical breakthroughs. For example, advances in the understanding of electromagnetism or nuclear physics led directly to the development of new products which have dramatically transformed modern-day society, such as television, computers, domestic appliances, and nuclear weapons; advances in thermodynamics led to the development of industrialization and advances in mechanics inspired the development of calculus.\r\n        ', 'physics_note'),
(2, 12, ' Chemical properties are characteristics of matter that describe how matter changes form in the presence of other matter. Does a sample of matter burn? Burning is a chemical property. Does it behave violently when put in water? This reaction is a chemical property as well (Figure 1.2 “Chemical Properties”). In the following chapters, we will see how descriptions of physical and chemical properties are important aspects of chemistry.', 'chemistry_note'),
(3, 12, '     The purpose of this guide is to provide an overview of the basic structural components of living cells. In reviewing these structures, we will also discuss their functions.\r\n\r\n         All living organisms are composed of cells. A cell is a small, membrane-bound compartment that contains all the chemicals and molecules that help support an organism\'s life. An understanding of the structure of cells is one of the first steps in comprehending the complex cellular interactions that direct and produce life.', 'biology_note'),
(4, 11, '   Physics is one of the oldest academic disciplines, perhaps the oldest through its inclusion of astronomy. Over the last two millennia, physics was a part of natural philosophy along with chemistry, certain branches of mathematics, and biology, but during the Scientific Revolution in the 17th century, the natural sciences emerged as unique research programs in their own right. Physics intersects with many interdisciplinary areas of research, such as biophysics and quantum chemistry, and the boundaries of physics are not rigidly defined. New ideas in physics often explain the fundamental mechanisms of other sciences, while opening new avenues of research in areas such as mathematics and philosophy.\r\n\r\n        Physics also makes significant contributions through advances in new technologies that arise from theoretical breakthroughs. For example, advances in the understanding of electromagnetism or nuclear physics led directly to the development of new products which have dramatically transformed modern-day society, such as television, computers, domestic appliances, and nuclear weapons; advances in thermodynamics led to the development of industrialization and advances in mechanics inspired the development of calculus.\r\n        ', 'physics_note'),
(5, 11, ' Chemical properties are characteristics of matter that describe how matter changes form in the presence of other matter. Does a sample of matter burn? Burning is a chemical property. Does it behave violently when put in water? This reaction is a chemical property as well (Figure 1.2 “Chemical Properties”). In the following chapters, we will see how descriptions of physical and chemical properties are important aspects of chemistry.', 'chemistry_note'),
(6, 11, '     The purpose of this guide is to provide an overview of the basic structural components of living cells. In reviewing these structures, we will also discuss their functions.\r\n\r\n         All living organisms are composed of cells. A cell is a small, membrane-bound compartment that contains all the chemicals and molecules that help support an organism\'s life. An understanding of the structure of cells is one of the first steps in comprehending the complex cellular interactions that direct and produce life.', 'biology_note');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `title`, `content`) VALUES
(1, '15.9.2020', 'Pray', 'Pray for us  due to pandemic'),
(2, '17.9.2020', 'Message from principle', ' Please start the classes online in college.');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `notice_id` int(20) NOT NULL,
  `class` int(20) NOT NULL,
  `notice_type` varchar(200) NOT NULL,
  `notice` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`notice_id`, `class`, `notice_type`, `notice`) VALUES
(1, 12, 'make_up', ' Dear Students, You have a make-up class on 27/09/2020 (Thursday) at 11 am.'),
(2, 12, 'lab_exam', ' Dear Students, Your lab exam will be taken on 25/8/2020 (Tuesday). The topics for the exam have been discussed in the class.'),
(3, 12, 'Class_Cancellation', '  Dear Students, Your lab class of 21/8/2020 has been cancelled. Make up date and time will be announced later.');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(256) NOT NULL,
  `p_password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `dob` date NOT NULL,
  `bldgrp` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `occupation` varchar(256) NOT NULL,
  `salary` int(11) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `type` varchar(50) DEFAULT 'parent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`p_id`, `p_name`, `p_password`, `email`, `dob`, `bldgrp`, `gender`, `occupation`, `salary`, `photo`, `type`) VALUES
(6, 'bijoy', '123456', 'bijoyabose420@gmail.com', '1971-01-02', 'B+', 'male', 'Medical Doctor', 50000, 'IMG_3801.JPG', 'parent'),
(7, 'Didar', '123456', 'didarul@gmail.com', '1996-04-20', 'O+', 'male', 'Engineer', 40000, '2020-07-15-20-26-34-252.jpg', 'parent');

-- --------------------------------------------------------

--
-- Table structure for table `parent_createcomplaint`
--

CREATE TABLE `parent_createcomplaint` (
  `cmp_id` int(20) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `create_complaint` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_createcomplaint`
--

INSERT INTO `parent_createcomplaint` (`cmp_id`, `p_name`, `create_complaint`) VALUES
(1, 'Jasim', ' asdfg');

-- --------------------------------------------------------

--
-- Table structure for table `parent_poll`
--

CREATE TABLE `parent_poll` (
  `poll_id` int(20) NOT NULL,
  `yes` int(200) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_poll`
--

INSERT INTO `parent_poll` (`poll_id`, `yes`, `no`) VALUES
(2, 4, 3),
(3, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `sref_id` int(20) NOT NULL,
  `s_id` int(20) NOT NULL,
  `s_name` varchar(200) NOT NULL,
  `appsummary` varchar(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `ref_id` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`sref_id`, `s_id`, `s_name`, `appsummary`, `amount`, `ref_id`, `date`) VALUES
(0, 33333, 'atik', 'asd2345', 22222, '0', '1998-12-12'),
(0, 123, '1234', '23e4r', 4444, '0', '1998-12-12'),
(0, 1, 'atik', 'asd2345', 23333, '0', '1888-12-12'),
(0, 1222, 'atik', 'summer 19-20', 19000, '0', '1223-12-12'),
(0, 1111, 'atik', 'summer 19-20', 120000, '0', '1998-12-12'),
(0, 1111, 'atik', 'summer 19-20', 120000, '0', '1998-12-12'),
(0, 111111, 'atik', 'summer 19-20', 30000, '0', '1990-12-12'),
(0, 12, 'atik', 'summer 19-20', 23333, '233333', '1223-12-12'),
(0, 111, 'atik', 'summer 19-20', 50000, 'qwer12345', '1998-12-12'),
(12345, 23, 'atik', 'summer 19-20', 400000, 'qwer12345', '1998-12-12'),
(122222, 1, 'atik', 'summer 19-20', 1200000, 'qwer12345', '2020-12-12'),
(1234, 12345, 'atik', 'summer 19-20', 129999, 'qwer12345', '2010-12-12'),
(12344, 12345, 'atik', 'summer 19-20', 12000, 'qwer12345', '2020-12-01'),
(2, 33107, 'S M RAHID HAQUE', 'fasdsa', 125063, '175698', '1956-02-05'),
(17300, 556, 'S M RAHID HAQUE', 'fasdsa', 145, '4', '1958-10-12'),
(53465, 123, 'bijoy', '69jnvleorhu', 76982, '9237907', '2020-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int(11) NOT NULL,
  `q_id` int(20) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `q_option` varchar(100) DEFAULT NULL,
  `votes` int(20) NOT NULL DEFAULT 0,
  `poll_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `q_id`, `question`, `q_option`, `votes`, `poll_date`) VALUES
(1, NULL, 'What would you like to learn today?', NULL, 0, '2020-05-05 20:30:17'),
(2, 1, NULL, 'aaa', 76, '2020-05-05 20:30:17'),
(3, 1, NULL, 'bbb', 2, '2020-05-05 20:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `poll_question`
--

CREATE TABLE `poll_question` (
  `poll_id` int(20) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_question`
--

INSERT INTO `poll_question` (`poll_id`, `question`) VALUES
(1, 'Teachers must needed M.S.C degree.'),
(2, 'Teachers must needed B.S.C degree.'),
(3, 'asdfvgh');

-- --------------------------------------------------------

--
-- Table structure for table `regestered_book`
--

CREATE TABLE `regestered_book` (
  `id` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regestered_book`
--

INSERT INTO `regestered_book` (`id`, `s_name`, `book_name`) VALUES
(0, '', 'David Copperfield'),
(21, 'ppp mm', 'HTML'),
(22, 'ppp mm', 'JavaScript'),
(23, 'safuan kalu', 'JavaScript'),
(24, 'safuan kalu', 'Reactjs'),
(25, 'ddd nnnn', 'NodeJS'),
(26, 'safuan kalu', 'HTML'),
(27, 'rizowan ahmed', 'CSS'),
(28, 'ddd nnnn', 'David Copperfield'),
(31, 'mahedi hasan', 'jQuery'),
(32, 'mahedi hasan', 'David Copperfield'),
(33, 'mahedi hasan', 'David Copperfield');

-- --------------------------------------------------------

--
-- Table structure for table `regestered_course`
--

CREATE TABLE `regestered_course` (
  `id` int(50) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regestered_course`
--

INSERT INTO `regestered_course` (`id`, `student_id`, `student_name`, `c_name`, `time`) VALUES
(0, '', '', 'COMPILER DESIGN [N]', '2020-05-20 20:27:00'),
(5, '8888', 'safuan kalu', 'Bangla 2nd', '0000-00-00 00:00:00'),
(7, '8888', 'safuan kalu', 'Math', '0000-00-00 00:00:00'),
(15, '11111', 'rizowan ahmed', 'English', '0000-00-00 00:00:00'),
(27, '4444', 'ddd nnnn', 'COMPUTER GRAPHICS [C]', '0000-00-00 00:00:00'),
(34, '1234', 'mahedi hasan', 'COMPILER DESIGN [N]', '2020-05-06 16:54:12'),
(35, '1234', 'mahedi hasan', 'RESEARCH METHODOLOGY [CS] [F]', '2020-05-06 16:56:19'),
(36, '4444', 'Rizowan Ahmed', 'RESEARCH METHODOLOGY [CS] [F]', '2020-05-06 20:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `bldgrp` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `password`, `gender`, `dob`, `bldgrp`, `photo`) VALUES
(1, 'bdonti', '12345', 'male', '2020-04-09', 'A+', 'avatar1.jpg'),
(2, 'Ovi', '12345', 'male', '2020-02-05', 'B+', 'avatar2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `r_id` int(20) NOT NULL,
  `class` int(20) NOT NULL,
  `Subject` varchar(2000) NOT NULL,
  `Grade` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`r_id`, `class`, `Subject`, `Grade`) VALUES
(1, 11, 'Physics', 4.75),
(2, 12, 'physics', 4.5),
(3, 11, 'chemistry', 4.75),
(4, 11, 'mathmetics', 4.5),
(5, 12, 'chemistry', 4.5),
(6, 12, 'mathmetics', 4.5);

-- --------------------------------------------------------

--
-- Table structure for table `selectbook`
--

CREATE TABLE `selectbook` (
  `b_id` int(50) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `b_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selectbook`
--

INSERT INTO `selectbook` (`b_id`, `s_name`, `b_name`) VALUES
(2, 'rizowan', 'David Copperfield'),
(13, 'rony', 'David Copperfield'),
(14, 'rony', 'Pakistan the Gathering Storm'),
(15, 'riz', 'Enchantment'),
(16, 'riz', 'David Copperfield');

-- --------------------------------------------------------

--
-- Table structure for table `selectcourse`
--

CREATE TABLE `selectcourse` (
  `cl_id` int(11) NOT NULL,
  `c_name` varchar(256) NOT NULL,
  `s_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selectcourse`
--

INSERT INTO `selectcourse` (`cl_id`, `c_name`, `s_name`) VALUES
(1, 'COMPUTER GRAPHICS [C]', 'S M RAHID HAQUE'),
(2, 'COMPILER DESIGN [N]', 'S M RAHID HAQUE'),
(6, 'WEB TECHNOLOGIES [F]', 'S M RAHID HAQUE'),
(7, 'COMPILER DESIGN [N]', 'Rizowan'),
(11, 'WEB TECHNOLOGIES [F]', 'riz'),
(12, 'COMPUTER GRAPHICS [C]', 'riz'),
(14, 'RESEARCH METHODOLOGY [CS] [F]', 'riz');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(256) NOT NULL,
  `s_password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `dob` date NOT NULL,
  `dept` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `class` int(11) NOT NULL,
  `adress` varchar(256) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `type` varchar(50) DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`, `s_password`, `email`, `dob`, `dept`, `gender`, `class`, `adress`, `photo`, `type`) VALUES
(4, 'Didar', '123456', 'didar@aiub.edu', '1984-02-25', 'bba', 'male', 12, 'Kakrail', '99131941_3092909990766326_7159125177173803008_o.jpg', 'student'),
(5, 'David', '123456', 'david@aiub.edu', '1956-05-31', 'bba', 'male', 11, 'Banasree', '98208542_3087950377967450_8799405026108768256_n.jpg', 'student'),
(6, 'Maria', '123456', 'maria@aiub.edu', '1996-05-25', 'eee', 'female', 11, 'Bashundhara', 'web1.jpg', 'student'),
(7, 'Jasmine', '123456', 'jasmine@aiub.edu', '1996-02-25', 'eee', 'female', 10, 'Arambag', 'web4.jpg', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `studentcontacts`
--

CREATE TABLE `studentcontacts` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentcontacts`
--

INSERT INTO `studentcontacts` (`name`, `email`, `phone`) VALUES
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004),
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004),
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004),
('MR.ABC', 'abc@rcc.edu', 1700000000),
('MR.DEF', 'def@rcc.edu', 1700000001),
('MR.XYZ', 'xyz@rcc.edu', 1700000002),
('MR.AAA', 'aaa@rcc.edu', 1700000003),
('MR.EEE', 'eee@rcc.edu', 1700000004);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence`
--

CREATE TABLE `student_attendence` (
  `student_id` int(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `attendence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_attendence`
--

INSERT INTO `student_attendence` (`student_id`, `teacher`, `course`, `attendence`) VALUES
(8, 'bijoya', 'Web Tech', '8/10'),
(4444, 'bijoya', 'Web Tech', '9/10'),
(33107, 'bijoya', 'Web Tech', '10/10'),
(2502, 'bijoya', 'Web Tech', '8/10'),
(3569, 'bijoya', 'Web Tech', '8/10');

-- --------------------------------------------------------

--
-- Table structure for table `student_complaints`
--

CREATE TABLE `student_complaints` (
  `student_id` int(20) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_complaints_msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_complaints`
--

INSERT INTO `student_complaints` (`student_id`, `student_name`, `student_complaints_msg`, `date`) VALUES
(1234, 'mahedi hasan', 'hello admin i am some complaints', '2020-04-06 17:21:44'),
(1234, 'mahedi hasan', 'hello admin', '2020-04-07 01:43:53'),
(5511, 'mahedi hasan', 'Hello admi some queries', '2020-04-07 10:48:47'),
(12345, 'mmmmm', 'mmmmm', '2020-04-07 11:38:43'),
(8888, 'safuan kalu', 'abxcac', '2020-04-07 14:24:34'),
(7777, 'Rizowan Ahmed', 'this is test request', '2020-05-04 11:36:28'),
(4444, 'rizowan ahmed', 'aaaaaaaa', '2020-05-19 12:24:18'),
(4444, 'rizowan ahmed', 'sldvksndv', '2020-05-20 08:35:10'),
(0, '', 'asdadas', '2020-05-20 14:27:13'),
(4444, 'rizowan ahmed', 'dsadas', '2020-05-20 14:27:58'),
(33107, 'riz', 'asdasd', '2020-05-23 05:43:54'),
(0, '', 'hksejvna', '2020-08-27 11:59:10'),
(33107, 'riz', 'kjh', '2020-08-27 12:14:07'),
(33107, 'riz', 'jgkg', '2020-09-02 15:01:49'),
(33107, 'riz', 'kn.n', '2020-09-13 05:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  `student_pwd` varchar(255) NOT NULL,
  `student_gender` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `student_dob` varchar(255) NOT NULL,
  `student_dept` varchar(255) NOT NULL,
  `student_bldgrp` varchar(255) NOT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `guardian_number` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'profile.jpg',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `student_name`, `student_id`, `student_pwd`, `student_gender`, `student_email`, `student_dob`, `student_dept`, `student_bldgrp`, `father_name`, `mother_name`, `guardian_number`, `nationality`, `religion`, `address`, `image`, `date`) VALUES
(20, 'riz', 33107, '123456', 'male', 'alamin@aiub.edu', '1954-02-05', 'science', 'a+', 'Agg', 'gdgsg', '01797775766', 'Bangladesh', 'Islam', 'Segunbagicha', '5ec8b7d16566bData Comm1.JPG', '2020-05-22 09:14:57'),
(22, 'Rafi', 3569, '123456', 'male', 'rafi@aiub.edu', '1987-08-25', 'science', 'b+', NULL, NULL, NULL, NULL, NULL, NULL, 'profile.jpg', '2020-05-23 06:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `student_financial`
--

CREATE TABLE `student_financial` (
  `student_id` int(50) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `topay` int(50) NOT NULL,
  `due` int(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_financial`
--

INSERT INTO `student_financial` (`student_id`, `reason`, `topay`, `due`, `status`) VALUES
(8, 'Admisson Fees', 94000, 20000, 'unpaid'),
(4444, 'Admisson Fees', 74000, 0, 'paid'),
(33107, 'Admisson Fees', 94000, 20000, 'unpaid'),
(2502, 'Admisson Fees', 94000, 20000, 'unpaid'),
(3569, 'Admisson Fees', 94000, 20000, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `student_grade`
--

CREATE TABLE `student_grade` (
  `student_id` int(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `totnum` int(50) NOT NULL,
  `yougot` int(50) NOT NULL,
  `gpa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_grade`
--

INSERT INTO `student_grade` (`student_id`, `subject`, `totnum`, `yougot`, `gpa`) VALUES
(4444, 'AAA', 100, 80, 'A+'),
(4444, 'AAA', 100, 80, 'A+'),
(11111, 'AAA', 100, 85, 'A+'),
(11111, 'AAA', 100, 85, 'A+'),
(8888, 'AAA', 100, 85, 'A+'),
(7777, 'AAA', 100, 75, 'B'),
(7777, 'BBB', 100, 85, 'A'),
(7777, 'CCC', 100, 75, 'B'),
(7777, 'DDD', 100, 85, 'A'),
(4444, 'CCC', 100, 95, 'A+'),
(4444, 'DDD', 100, 80, 'B+'),
(4444, 'AAA', 100, 80, 'A+'),
(4444, 'AAA', 100, 80, 'A+'),
(11111, 'AAA', 100, 85, 'A+'),
(11111, 'AAA', 100, 85, 'A+'),
(8888, 'AAA', 100, 85, 'A+'),
(7777, 'AAA', 100, 75, 'B'),
(7777, 'BBB', 100, 85, 'A'),
(7777, 'CCC', 100, 75, 'B'),
(7777, 'DDD', 100, 85, 'A'),
(4444, 'CCC', 100, 95, 'A+'),
(4444, 'DDD', 100, 80, 'B+'),
(20, 'Algorithm', 520, 0, '3.75');

-- --------------------------------------------------------

--
-- Table structure for table `student_update_request`
--

CREATE TABLE `student_update_request` (
  `student_id` int(20) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_update_msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_update_request`
--

INSERT INTO `student_update_request` (`student_id`, `student_name`, `student_update_msg`, `date`) VALUES
(1234, 'mahedi hasan', 'hello admi i am some update request', '2020-04-06 17:14:58'),
(1234, 'mahedi hasan', 'hello admin how are hou', '2020-04-06 17:16:56'),
(1234, 'mahedi hasan', 'hello admin', '2020-04-07 01:44:37'),
(5511, 'mahedi hasan', 'Hello admin some update now', '2020-04-07 10:48:15'),
(7777, 'Rizowan Ahmed', 'this is test request', '2020-05-04 11:46:42'),
(1234, 'mahedi hasan', 'hello admi i am some update request', '2020-04-06 17:14:58'),
(1234, 'mahedi hasan', 'hello admin how are hou', '2020-04-06 17:16:56'),
(1234, 'mahedi hasan', 'hello admin', '2020-04-07 01:44:37'),
(5511, 'mahedi hasan', 'Hello admin some update now', '2020-04-07 10:48:15'),
(7777, 'Rizowan Ahmed', 'this is test request', '2020-05-04 11:46:42'),
(4444, 'rizowan ahmed', 'abcd', '2020-05-19 12:18:24'),
(0, '', 'asdasdas', '2020-05-20 14:31:39'),
(4444, 'rizowan ahmed', 'sadsa', '2020-05-20 14:32:28'),
(33107, 'riz', 'asdasd', '2020-05-23 05:49:20'),
(0, '', 'hi', '2020-08-27 12:06:34'),
(0, '', 'wh', '2020-08-27 12:08:21'),
(0, '', 'hi', '2020-08-27 12:12:16'),
(33107, 'riz', 'yufu', '2020-08-27 12:17:04'),
(0, '', 'hgjbk', '2020-08-29 15:09:13'),
(33107, 'riz', 'jhw,kjwlkjw;lj', '2020-09-02 14:14:32'),
(33107, 'riz', 'jc;sj;lj;', '2020-09-02 14:22:53'),
(0, '', 'glgkjkj', '2020-09-02 18:09:21'),
(0, '', 'kg', '2020-09-03 17:31:23'),
(0, '', 'hefl', '2020-09-03 17:32:44'),
(0, '', 'mlkhklj', '2020-09-03 17:33:28'),
(0, '', 'huhkjh', '2020-09-04 14:33:53'),
(0, '', 'hgjb', '2020-09-04 14:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `subjectinfo`
--

CREATE TABLE `subjectinfo` (
  `sub_id` int(20) NOT NULL,
  `class` int(20) NOT NULL,
  `science` varchar(200) NOT NULL,
  `Ssubject_code` int(20) NOT NULL,
  `arts` varchar(200) NOT NULL,
  `Asubject_code` int(20) NOT NULL,
  `commerce` varchar(200) NOT NULL,
  `Csubject_code` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjectinfo`
--

INSERT INTO `subjectinfo` (`sub_id`, `class`, `science`, `Ssubject_code`, `arts`, `Asubject_code`, `commerce`, `Csubject_code`) VALUES
(1, 12, 'physics', 101, 'Economics', 154, 'statistics', 109),
(2, 11, 'chemistry', 102, 'Economy', 134, 'statistics', 149);

-- --------------------------------------------------------

--
-- Table structure for table `tcomplaint`
--

CREATE TABLE `tcomplaint` (
  `cm_id` int(20) NOT NULL,
  `class` int(20) NOT NULL,
  `complaint` varchar(2000) NOT NULL,
  `p_message` mediumtext NOT NULL,
  `poll` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcomplaint`
--

INSERT INTO `tcomplaint` (`cm_id`, `class`, `complaint`, `p_message`, `poll`) VALUES
(1, 11, 'The Term Exmination Grade \'F\' of the course only.', 'Hello Everyone, Please fill up the form', 'https://mail.google.com/mail/u/0/#inbox'),
(2, 12, 'The Term Exmination Grade \'F\' of the course only.', 'Hello Everyone, Please fill up the form', 'https://mail.google.com/mail/u/0/#inbox');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(256) NOT NULL,
  `t_password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `dob` date NOT NULL,
  `bldgrp` varchar(256) NOT NULL,
  `gender` varchar(256) NOT NULL,
  `salary` int(11) NOT NULL,
  `dept` varchar(256) NOT NULL,
  `status` varchar(256) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'teacher'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `t_name`, `t_password`, `email`, `dob`, `bldgrp`, `gender`, `salary`, `dept`, `status`, `photo`, `type`) VALUES
(7, 'SAJIB HASAN', '123456', 'sajib.hasan@aiub.edu', '1980-08-25', 'A+', 'male', 10000, 'cse', 'Not Married', 'GetUserImage (2).jpg', 'teacher'),
(11, 'hero', '098765', 'hero@gmail.com', '2000-01-03', 'A-', 'male', 30000, 'cse', 'Married', 'IMG_3801.JPG', 'teacher'),
(12, 'bijoya', '123456', 'bijoyabose420@gmail.com', '1988-01-03', 'B+', 'female', 25000, 'eee', 'Married', 'IMG_3806.JPG', 'teacher'),
(14, 'ASMA FARIHA', '123456', 'asma.fariha@aiub.edu', '1990-07-19', 'O+', 'female', 600000, 'cse', 'Married', 'GetUserImage (1).jpg', 'teacher'),
(15, 'MUSHFIQUR RAHMAN', '123456', 'mushfiqur@aiub.edu', '2020-09-17', 'O+', 'male', 500000, 'cse', 'Married', 'GetUserImage.jpg', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_financial`
--

CREATE TABLE `teacher_financial` (
  `t_id` int(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `bonus` int(50) NOT NULL,
  `withdraw` int(50) NOT NULL,
  `balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_financial`
--

INSERT INTO `teacher_financial` (`t_id`, `salary`, `bonus`, `withdraw`, `balance`) VALUES
(2, '25000', 0, 25000, '0'),
(6, '25000', 0, 25000, '0'),
(7, '25000', 0, 25000, '0'),
(11, '25000', 0, 25000, '0'),
(12, '25000', 0, 25000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_poll`
--

CREATE TABLE `teacher_poll` (
  `poll_id` int(20) NOT NULL,
  `yes` int(200) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_poll`
--

INSERT INTO `teacher_poll` (`poll_id`, `yes`, `no`) VALUES
(2, 4, 3),
(3, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_update_request`
--

CREATE TABLE `teacher_update_request` (
  `t_id` int(20) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_update_msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_update_request`
--

INSERT INTO `teacher_update_request` (`t_id`, `t_name`, `t_update_msg`, `date`) VALUES
(1234, 'mahedi hasan', 'hello admi i am some update request', '2020-04-06 11:14:58'),
(1234, 'mahedi hasan', 'hello admin how are hou', '2020-04-06 11:16:56'),
(1234, 'mahedi hasan', 'hello admin', '2020-04-06 19:44:37'),
(5511, 'mahedi hasan', 'Hello admin some update now', '2020-04-07 04:48:15'),
(7777, 'Rizowan Ahmed', 'this is test request', '2020-05-04 05:46:42'),
(1234, 'mahedi hasan', 'hello admi i am some update request', '2020-04-06 11:14:58'),
(1234, 'mahedi hasan', 'hello admin how are hou', '2020-04-06 11:16:56'),
(1234, 'mahedi hasan', 'hello admin', '2020-04-06 19:44:37'),
(5511, 'mahedi hasan', 'Hello admin some update now', '2020-04-07 04:48:15'),
(7777, 'Rizowan Ahmed', 'this is test request', '2020-05-04 05:46:42'),
(4444, 'rizowan ahmed', 'abcd', '2020-05-19 06:18:24'),
(0, '', 'asdasdas', '2020-05-20 08:31:39'),
(4444, 'rizowan ahmed', 'sadsa', '2020-05-20 08:32:28'),
(33107, 'riz', 'asdasd', '2020-05-22 23:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `tpoll_question`
--

CREATE TABLE `tpoll_question` (
  `poll_id` int(20) NOT NULL,
  `question` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpoll_question`
--

INSERT INTO `tpoll_question` (`poll_id`, `question`) VALUES
(1, 'we can ask students about what they want to learn'),
(2, 'we can take makeup class'),
(3, 'students should be in pressure o stop them to  go out');

-- --------------------------------------------------------

--
-- Table structure for table `ts_12grade`
--

CREATE TABLE `ts_12grade` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(256) NOT NULL,
  `dept` varchar(256) NOT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `class` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `grade` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ts_12grade`
--

INSERT INTO `ts_12grade` (`s_id`, `s_name`, `dept`, `subject`, `class`, `mark`, `grade`) VALUES
(1, 'abc', 'CsE', 'COMPUTER GRAPHICS', 12, 79, 'A'),
(2, 'bcd', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(3, 'asd', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(4, 'ygh', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(5, 'khx', 'cse', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(6, 'hsg', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(7, 'jwe', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `ts_att`
--

CREATE TABLE `ts_att` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(256) NOT NULL,
  `dept` varchar(256) NOT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `class` int(11) NOT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ts_grade`
--

CREATE TABLE `ts_grade` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(256) NOT NULL,
  `dept` varchar(256) NOT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `class` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `grade` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ts_grade`
--

INSERT INTO `ts_grade` (`s_id`, `s_name`, `dept`, `subject`, `class`, `mark`, `grade`) VALUES
(1, 'abc', 'CsE', 'COMPUTER GRAPHICS ', 11, 80, 'A+'),
(2, 'bcd', 'CsE', 'COMPUTER GRAPHICS ', 11, 80, 'A+'),
(3, 'asd', 'CsE', 'COMPUTER GRAPHICS ', 11, 80, 'A+'),
(4, 'ygh', 'CsE', 'COMPUTER GRAPHICS ', 11, 80, 'A+'),
(5, 'khx', 'cse', 'COMPUTER GRAPHICS ', 11, 80, 'A+'),
(6, 'hsg', 'CsE', 'COMPUTER GRAPHICS ', 11, 80, 'A+'),
(7, 'jwe', 'CsE', 'COMPUTER GRAPHICS ', 11, 80, 'A+'),
(1, 'abc', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(2, 'bcd', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(3, 'asd', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(4, 'ygh', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(5, 'khx', 'cse', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(6, 'hsg', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+'),
(7, 'jwe', 'CsE', 'COMPUTER GRAPHICS ', 12, 80, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `t_attendence`
--

CREATE TABLE `t_attendence` (
  `id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `student_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `attendence_status` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_attendence`
--

INSERT INTO `t_attendence` (`id`, `roll_no`, `student_name`, `attendence_status`) VALUES
(1, 123, 'Raj Shekhar', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `t_classroutine`
--

CREATE TABLE `t_classroutine` (
  `section` varchar(256) NOT NULL,
  `c_time` varchar(256) NOT NULL,
  `c_name` varchar(256) NOT NULL,
  `c_day` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_classroutine`
--

INSERT INTO `t_classroutine` (`section`, `c_time`, `c_name`, `c_day`) VALUES
('A', '12:00-2:00', 'Computer Networks', 'Saturday'),
('B', '10:00-12:00', 'Computer Networks', 'Saturday'),
('D', '12:00-2:00', 'Network Security', 'Sunday'),
('C', '12:00-2:00', 'Network Security', 'Sunday'),
('D', '10:00-12:00', 'Network Master', 'Sunday'),
('E', '10:00-12:00', 'research Methodology', 'Monday'),
('F', '10:00-12:00', 'research Methodology', 'Wednesday'),
('G', '12:00-2:00', 'Method of RM', 'Monday'),
('H', '10:00-12:00', 'Algorithm', 'tuesday'),
('I', '12:00-2:00', 'Computer Networks', 'Saturday'),
('J', '10:00-12:00', 'Computer Networks', 'Saturday'),
('K', '12:00-2:00', 'Network Security', 'Sunday'),
('A', '12:00-2:00', 'Network Security', 'Sunday'),
('B', '10:00-12:00', 'Network Master', 'Sunday'),
('c', '10:00-12:00', 'research Methodology', 'Monday'),
('D', '10:00-12:00', 'research Methodology', 'Wednesday'),
('D', '12:00-2:00', 'Method of RM', 'Monday'),
('A', '10:00-12:00', 'Algorithm', 'tuesday'),
('B', '12:00-2:00', 'Computer Networks', 'Saturday'),
('c', '10:00-12:00', 'Computer Networks', 'Saturday'),
('D', '12:00-2:00', 'Network Security', 'Sunday'),
('B', '12:00-2:00', 'Network Security', 'Sunday'),
('C', '10:00-12:00', 'Network Master', 'Sunday'),
('D', '10:00-12:00', 'research Methodology', 'Monday'),
('E', '10:00-12:00', 'research Methodology', 'Wednesday'),
('B', '12:00-2:00', 'Method of RM', 'Monday'),
('C', '10:00-12:00', 'Algorithm', 'tuesday'),
('B', '12:00-2:00', 'Computer Networks', 'Saturday'),
('A', '10:00-12:00', 'Computer Networks', 'Saturday'),
('n', '12:00-2:00', 'Network Security', 'Sunday'),
('M', '12:00-2:00', 'Network Security', 'Sunday'),
('O', '10:00-12:00', 'Network Master', 'Sunday'),
('M', '10:00-12:00', 'research Methodology', 'Monday'),
('L', '10:00-12:00', 'research Methodology', 'Wednesday'),
('k', '12:00-2:00', 'Method of RM', 'Monday'),
('J', '10:00-12:00', 'Algorithm', 'tuesday');

-- --------------------------------------------------------

--
-- Table structure for table `t_payment`
--

CREATE TABLE `t_payment` (
  `tref_id` int(20) NOT NULL,
  `t_id` int(20) NOT NULL,
  `t_name` varchar(200) NOT NULL,
  `appsummary` varchar(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `ref_id` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_selectbook`
--

CREATE TABLE `t_selectbook` (
  `b_id` int(50) NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `b_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_selectbook`
--

INSERT INTO `t_selectbook` (`b_id`, `t_name`, `b_name`) VALUES
(1, 'rizowan', 'David Copperfield'),
(12, 'rony', 'David Copperfield'),
(6, 'rony', 'Pakistan the Gathering Storm'),
(7, 'riz', 'Enchantment'),
(0, 'bijoya', 'Enchantment'),
(0, 'bijoya', 'Pakistan the Gathering Storm'),
(0, 'bijoya', 'David Copperfield');

-- --------------------------------------------------------

--
-- Table structure for table `t_withdraw`
--

CREATE TABLE `t_withdraw` (
  `t_ref_id` int(20) NOT NULL,
  `t_id` int(20) NOT NULL,
  `t_name` varchar(200) NOT NULL,
  `appsummary` varchar(200) NOT NULL,
  `amount` int(200) NOT NULL,
  `ref_id` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_withdraw`
--

INSERT INTO `t_withdraw` (`t_ref_id`, `t_id`, `t_name`, `appsummary`, `amount`, `ref_id`, `date`) VALUES
(0, 33333, 'atik', 'asd2345', 22222, '0', '1998-12-12'),
(0, 123, '1234', '23e4r', 4444, '0', '1998-12-12'),
(0, 1, 'atik', 'asd2345', 23333, '0', '1888-12-12'),
(0, 1222, 'atik', 'summer 19-20', 19000, '0', '1223-12-12'),
(0, 1111, 'atik', 'summer 19-20', 120000, '0', '1998-12-12'),
(0, 1111, 'atik', 'summer 19-20', 120000, '0', '1998-12-12'),
(0, 111111, 'atik', 'summer 19-20', 30000, '0', '1990-12-12'),
(0, 12, 'atik', 'summer 19-20', 23333, '233333', '1223-12-12'),
(0, 111, 'atik', 'summer 19-20', 50000, 'qwer12345', '1998-12-12'),
(12345, 23, 'atik', 'summer 19-20', 400000, 'qwer12345', '1998-12-12'),
(122222, 1, 'atik', 'summer 19-20', 1200000, 'qwer12345', '2020-12-12'),
(1234, 12345, 'atik', 'summer 19-20', 129999, 'qwer12345', '2010-12-12'),
(12344, 12345, 'atik', 'summer 19-20', 12000, 'qwer12345', '2020-12-01'),
(2, 33107, 'S M RAHID HAQUE', 'fasdsa', 125063, '175698', '1956-02-05'),
(17300, 556, 'S M RAHID HAQUE', 'fasdsa', 145, '4', '1958-10-12'),
(98097097, 0, '', 'fjhv.jb ', 30000, '0979798798', '2020-01-01'),
(98097097, 96986, 'Bijoya', 'fjhv.jb ', 30000, '0979798798', '2020-01-01'),
(98097097, 96986, 'Bijoya', 'fjhv.jb ', 30000, '0979798798', '2020-01-01'),
(98097097, 96986, 'Bijoya', 'fjhv.jb ', 30000, '0979798798', '2020-01-01'),
(987987, 769879, 'Bijoya', 'cnb nm', 778587698, '09798685', '2020-08-11'),
(1825485, 64946923, 'brkjrh', 'g.kragsn', 64782658, '696398', '2020-09-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `admitcourse`
--
ALTER TABLE `admitcourse`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `all_book`
--
ALTER TABLE `all_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`at_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `examschedule`
--
ALTER TABLE `examschedule`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `new_record`
--
ALTER TABLE `new_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `parent_createcomplaint`
--
ALTER TABLE `parent_createcomplaint`
  ADD PRIMARY KEY (`cmp_id`);

--
-- Indexes for table `parent_poll`
--
ALTER TABLE `parent_poll`
  ADD PRIMARY KEY (`poll_id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_question`
--
ALTER TABLE `poll_question`
  ADD PRIMARY KEY (`poll_id`);

--
-- Indexes for table `regestered_book`
--
ALTER TABLE `regestered_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regestered_course`
--
ALTER TABLE `regestered_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `selectbook`
--
ALTER TABLE `selectbook`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `selectcourse`
--
ALTER TABLE `selectcourse`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjectinfo`
--
ALTER TABLE `subjectinfo`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `t_attendence`
--
ALTER TABLE `t_attendence`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admitcourse`
--
ALTER TABLE `admitcourse`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `examschedule`
--
ALTER TABLE `examschedule`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `new_record`
--
ALTER TABLE `new_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `selectbook`
--
ALTER TABLE `selectbook`
  MODIFY `b_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `selectcourse`
--
ALTER TABLE `selectcourse`
  MODIFY `cl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_attendence`
--
ALTER TABLE `t_attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
