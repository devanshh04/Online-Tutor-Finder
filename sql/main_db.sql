-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 09:57 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Admin', 'admin@tutor.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `applied_post`
--

CREATE TABLE `applied_post` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_by` int(11) NOT NULL,
  `applied_by` int(11) NOT NULL,
  `applied_to` int(11) NOT NULL,
  `applied_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `student_ck` varchar(3) NOT NULL DEFAULT 'no',
  `tutor_ck` varchar(3) NOT NULL DEFAULT 'no',
  `tutor_cf` tinyint(4) NOT NULL DEFAULT 0,
  `tution_cf` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied_post`
--

INSERT INTO `applied_post` (`id`, `post_id`, `post_by`, `applied_by`, `applied_to`, `applied_time`, `student_ck`, `tutor_ck`, `tutor_cf`, `tution_cf`) VALUES
(13, 8, 1, 5, 1, '2018-11-30 08:26:35', 'yes', 'yes', 0, 0),
(14, 9, 10, 9, 10, '2018-11-30 09:05:48', 'yes', 'yes', 0, 1),
(15, 8, 1, 12, 1, '2020-10-10 09:39:25', 'yes', 'yes', 0, 0),
(16, 0, 0, 0, 2, '2020-10-10 09:44:22', 'yes', 'yes', 0, 0),
(17, 10, 11, 12, 11, '2020-10-10 10:04:49', 'yes', 'yes', 0, 1),
(18, 11, 15, 13, 15, '2020-10-10 10:30:14', 'yes', 'yes', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `postby_id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `class` text NOT NULL,
  `medium` varchar(20) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `p_university` text NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deadline` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `postby_id`, `subject`, `class`, `medium`, `salary`, `location`, `p_university`, `post_time`, `deadline`) VALUES
(2, 1, 'ICT,Computer Science', 'College/University', 'English', '14000', 'Jaipur,Rajasthan', 'VIT University', '2020-01-09 11:11:44', '01/17/2020'),
(3, 1, 'Higher Math,Statistics', 'Eleven-Twelve,College/University', 'English', '10000-15000', 'Gandhi Nagar, Gujrat', 'VIT University', '2020-09-09 17:36:07', '10/10/2020'),
(4, 1, 'Physics', 'Eleven-Twelve', 'English', '12000-15000', 'Chennai, Tamil Nadu', 'VIT University', '2020-09-15 04:28:42', '10/17/2020'),
(5, 1, 'English', 'One-Three', 'English', '1000-2000', 'Jaipur, Rajasthan', 'none', '2020-09-20 05:17:25', '10/09/2020'),
(6, 1, 'Chemistry', 'Six-Seven', 'English', '8000', 'Karnal, Haryana', 'None', '2020-08-10 05:24:41', '09/14/2020'),
(7, 1, 'Hindi', 'One-Three', 'Hindi', '4000-5000', 'Jaipur, Rajasthan', 'none', '2020-10-01 10:23:31', '10/09/2020'),
(8, 1, 'ICT', 'Eleven-Twelve,College/University', 'Any', '10000-15000', 'Chennai, Tamil Nadu', 'None', '2020-10-10 09:40:36', '10/15/2020'),
(11, 15, 'Physics', 'Eleven-Twelve', 'English', '5000-10000', 'Jaipur, Rajasthan', 'MNIT Jaipur', '2020-10-10 10:29:10', '10/20/2020'),
(12, 26, 'Hindi', 'Eleven-Twelve', 'Hindi', '2000-5000', 'Jaipur, Rajasthan', 'None', '2020-10-10 11:11:56', '10/11/2020'),
(13, 26, 'Social Science,History', 'Nine-Ten', 'English', '5000-10000', 'Jaipur, Rajasthan', 'MNIT Jaipur', '2020-10-10 11:13:56', '10/19/2020'),
(14, 26, 'Physics', 'Eleven-Twelve', 'Any', 'None', 'Chennai, Tamil Nadu', 'IIT Madras', '2020-10-10 11:14:21', '10/20/2020'),
(15, 26, 'Civics,Art', 'Eleven-Twelve', 'English', '2000-5000', 'Vellore, Tamil Nadu', 'VIT University', '2020-10-10 11:14:53', '10/24/2020'),
(16, 26, 'Economics,Accounting,Finance', 'Eleven-Twelve', 'Any', '5000-10000', 'Jaipur, Rajasthan', 'MNIT Jaipur', '2020-10-10 11:15:19', '10/28/2020'),
(17, 26, 'Sociology', 'Nine-Ten', 'English', '2000-5000', 'Gandhi Nagar, Gujrat', 'IIT Madras', '2020-10-10 11:58:49', '10/26/2020'),
(18, 26, 'Biology', 'Nine-Ten,Eleven-Twelve', 'English', '5000-10000', 'Gandhi Nagar, Gujrat', 'MNIT Jaipur', '2020-10-10 11:59:16', '10/26/2020'),
(19, 26, 'Statistics', 'College/University', 'Hindi', '2000-5000', 'Jaipur, Rajasthan', 'MNIT Jaipur', '2020-10-10 11:59:47', '10/18/2020'),
(20, 26, 'Religion', 'Eight', 'English', '2000-5000', 'Chennai, Tamil Nadu', 'IIT Madras', '2020-10-10 12:00:17', '10/11/2020'),
(21, 26, 'Finance', 'Eleven-Twelve', 'Any', '5000-10000', 'Gandhi Nagar, Gujrat', 'VIT University', '2020-10-10 12:00:48', '10/21/2020');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `inst_name` varchar(150) NOT NULL,
  `prefer_sub` text NOT NULL,
  `class` text NOT NULL,
  `medium` text NOT NULL,
  `prefer_location` text NOT NULL,
  `salary` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `t_id`, `inst_name`, `prefer_sub`, `class`, `medium`, `prefer_location`, `salary`) VALUES
(5, 2, 'VIT University', 'Computer Science', 'College/University', 'English', 'Chennai, Tamil Nadu', '10000-15000'),
(11, 6, 'MNIT Jaipur', 'English,ICT,Physics,Sociology,Economics,Civics,Computer Science', 'Six-Seven,Nine-Ten,Eleven-Twelve', 'Any', 'Jaipur, Rajasthan', '10000-15000'),
(15, 5, 'IIT Madras', 'Math,General Science,Religion,ICT,Physics,Higher Math,Computer Science', 'Nine-Ten,Eleven-Twelve,College/University', 'English,Any', 'Chennai, Tamil Nadu', '1000-2000'),
(17, 9, 'VIT University', 'ICT,Physics,Higher Math,Computer Science', 'Nine-Ten,Eleven-Twelve,College/University', 'English', 'Chennai, Tamil Nadu', '5000-10000'),
(19, 13, '', 'Math,Higher Math,Statistics,Computer Science', 'Eleven-Twelve,College/University', 'English', 'Chennai, Tamil Nadu', '10000-15000'),
(20, 28, 'VIT University', 'Physics,Chemistry', 'Eleven-Twelve', 'English', 'Chennai, Tamil Nadu', '10000-15000'),
(21, 27, 'MNIT Jaipur', 'Social Science,History,Civics', 'Nine-Ten,Eleven-Twelve,College/University', 'English', 'Gandhi Nagar, Gujrat', '5000-10000'),
(22, 32, 'MNIT Jaipur', 'General Science,Art', 'Eight', 'Any', 'Jaipur, Rajasthan', '2000-5000'),
(23, 35, 'IIT Madras', 'Computer Science', 'College/University', '', 'Chennai, Tamil Nadu', '10000-15000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL DEFAULT '',
  `pass` varchar(50) NOT NULL,
  `confirmcode` varchar(7) NOT NULL,
  `activation` varchar(3) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL,
  `user_pic` text DEFAULT NULL,
  `last_logout` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `online` varchar(5) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `gender`, `email`, `phone`, `address`, `pass`, `confirmcode`, `activation`, `type`, `user_pic`, `last_logout`, `online`) VALUES
(13, 'Vishnu', 'male', 'vishnu@gmail.com', '9876543210', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '555180', '', 'teacher', NULL, '2020-10-10 10:32:01', 'no'),
(15, 'Devansh', 'male', 'devansh@gmail.com', '9876543210', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '641465', '', 'student', NULL, '2020-10-10 10:30:52', 'no'),
(16, 'Dev', 'male', 'dev@gmail.com', '7854123690', '', '040b7cf4a55014e185813e0644502ea9', '199885', '', 'teacher', NULL, '2020-10-10 11:02:17', 'no'),
(17, 'Atharva', 'male', 'ath@gmail.com', '7536214890', '', '3f230640b78d7e71ac5514e57935eb69', '396892', '', 'teacher', NULL, '2020-10-10 11:02:58', 'no'),
(18, 'Sai Krishna', 'male', 'sai@gmail.com', '9632587410', '', 'f453bcc0149cc06cf17b9cab21a41868', '413875', '', 'teacher', NULL, '2020-10-10 11:03:41', 'no'),
(19, 'Ram Singh', 'male', 'ram@gmail.com', '7418526930', '', 'ac01005f1c489bf3f611769941462d9d', '992049', '', 'teacher', NULL, '2020-10-10 11:04:15', 'no'),
(20, 'Poorvi', 'female', 'poorvi@gmail.com', '8521469370', '', '20917c851c4a54f2a054390dac9085b7', '359540', '', 'teacher', NULL, '2020-10-10 11:05:01', 'no'),
(21, 'Ishita', 'female', 'ishitaa@gmail.com', '7896543210', '', 'e188c077f0da11f02b38cf9d49359731', '182410', '', 'teacher', NULL, '2020-10-10 11:05:29', 'no'),
(22, 'Keerthana Bala', 'female', 'kee@gmail.com', '7569841023', '', '92e5f701226314c61bdf813b4f93c851', '411432', '', 'teacher', NULL, '2020-10-10 11:05:59', 'no'),
(23, 'Shatayu', 'male', 'shatayu@gmail.com', '8745963210', '', '71b3b26aaa319e0cdf6fdb8429c112b0', '763475', '', 'student', NULL, '2020-10-10 11:06:29', 'no'),
(24, 'Palak', 'female', 'palak@gmail.com', '7852146390', '', '4d186321c1a7f0f354b297e8914ab240', '814378', '', 'teacher', NULL, '2020-10-10 11:06:53', 'no'),
(25, 'Gokul Raj', 'male', 'raj@gmail.com', '9856471230', '', 'a0046ad4c1bafc4ef04e41e755f28368', '101657', '', 'student', NULL, '2020-10-10 11:07:19', 'no'),
(26, 'Akshaj', 'male', 'akshaj@gmail.com', '7412589635', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '689226', '', 'student', NULL, '2020-10-10 12:01:36', 'no'),
(27, 'Somil', 'male', 'somil@gmail.com', '7777888852', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '323278', '', 'teacher', NULL, '2020-10-10 12:07:40', 'no'),
(28, 'Samarth', 'male', 'samarth@gmail.com', '9876523410', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '193663', '', 'teacher', NULL, '2020-10-10 12:06:40', 'no'),
(29, 'Nehal', 'female', 'nehal@gmail.com', '7539518264', '', '240824aa0487bca3bdd4deb847954b76', '406810', '', 'student', NULL, '2020-10-10 12:02:06', 'no'),
(30, 'Rahul Dev', 'male', 'rahul@gmail.com', '6589744785', '', 'e8ccee95f8c146c97b0b037283eb7868', '500617', '', 'student', NULL, '2020-10-10 12:02:35', 'no'),
(31, 'Malini', 'female', 'malini@gmail.com', '8745968745', '', '961f1e759d4e9cca6754b1477b3b491a', '216316', '', 'teacher', NULL, '2020-10-10 12:03:00', 'no'),
(32, 'Manit', 'male', 'manit@gmail.com', '7458965874', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '135591', '', 'teacher', NULL, '2020-10-10 12:08:42', 'no'),
(33, 'Sankalp', 'male', 'sank@gmail.com', '8529637415', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '534179', '', 'teacher', NULL, '2020-10-10 12:04:23', 'no'),
(34, 'Prateek', 'male', 'prat@gmail.com', '7854785478', '', '376c43878878ac04e05946ec1dd7a55f', '370943', '', 'student', NULL, '2020-10-10 12:04:57', 'no'),
(35, 'Karan', 'male', 'karan@gmail.com', '7418419874', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '124874', '', 'teacher', NULL, '2020-10-10 12:09:24', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_post`
--
ALTER TABLE `applied_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applied_post`
--
ALTER TABLE `applied_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
