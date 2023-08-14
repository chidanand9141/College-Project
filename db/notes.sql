-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 05:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_notes`
--

CREATE TABLE `add_notes` (
  `id` int(11) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `s_id` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `disc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_notes`
--

INSERT INTO `add_notes` (`id`, `sname`, `s_id`, `department`, `pdf`, `disc`) VALUES
(14, 'report', 'a@gmail.com', 'BCA', 'rohit1.pdf', 'report'),
(15, 'asads', 'a@gmail.com', 'BBA', 'GST Report.pdf', 'sd');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `sub` varchar(30) NOT NULL,
  `topic` varchar(30) NOT NULL,
  `discerption` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `department`, `sub`, `topic`, `discerption`) VALUES
(1, 's@gmail.com', 'bca', 'python', 'print statement', 'sdabjdjas');

-- --------------------------------------------------------

--
-- Table structure for table `staffreg`
--

CREATE TABLE `staffreg` (
  `name` varchar(30) NOT NULL,
  `staff_id` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `mobile` varchar(300) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffreg`
--

INSERT INTO `staffreg` (`name`, `staff_id`, `gender`, `address`, `department`, `mobile`, `email`) VALUES
('aa', 'a123', 'Male', 'ad33', 'BCA', '1244577622', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `studentreg`
--

CREATE TABLE `studentreg` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `dob` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` int(40) NOT NULL,
  `degree` varchar(40) NOT NULL,
  `reg_no` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `pincode` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentreg`
--

INSERT INTO `studentreg` (`fname`, `lname`, `dob`, `gender`, `email`, `mobile`, `degree`, `reg_no`, `address`, `pincode`) VALUES
('studentt', 'ss', '2022-07-01', 'Male', 's@gmail.com', 2147483647, 'BCA', 'm1616622', 'ilkaL', '587124');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `utype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `utype`) VALUES
(1, 'a@gmail.com', 'a@123', 'staff'),
(6, 's@gmail.com', 's@123', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_notes`
--
ALTER TABLE `add_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffreg`
--
ALTER TABLE `staffreg`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `staff_id` (`staff_id`);

--
-- Indexes for table `studentreg`
--
ALTER TABLE `studentreg`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_notes`
--
ALTER TABLE `add_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
