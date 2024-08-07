-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 08:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `applicant_id` int(11) NOT NULL,
  `applicant_position` varchar(35) NOT NULL,
  `applicant_name` varchar(50) NOT NULL,
  `applicant_edu` varchar(10) NOT NULL,
  `applicant_speciality` varchar(100) NOT NULL,
  `applicant_cv` varchar(50) NOT NULL,
  `applicant_address` varchar(100) NOT NULL,
  `applicant_info` varchar(50) NOT NULL,
  `applicant_phone` varchar(15) NOT NULL,
  `applicant_email` varchar(50) NOT NULL,
  `submit_date` datetime NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`applicant_id`, `applicant_position`, `applicant_name`, `applicant_edu`, `applicant_speciality`, `applicant_cv`, `applicant_address`, `applicant_info`, `applicant_phone`, `applicant_email`, `submit_date`, `action`) VALUES
(1, 'Admin', 'Pieter Toisuta', 'SMA', 'IT', 'cv/3bf9bf186571f5fd38c8155de3f0fafa.pdf', 'Bere-bere', 'Not now', '08114702336', 'udutpieter17@gmail.com', '2024-06-28 21:26:31', '1'),
(12, 'mekanik', 'Pieter Toisuta', 'SMA', 'Mekanik', 'cv/866ccc04fb292a1085cdf231a5a297cf.pdf', 'Batu Gajah', 'Not now', '081248192170', 'udutpieter17@gmail.com', '2024-07-10 11:28:07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_job`
--

CREATE TABLE `applicant_job` (
  `id` int(11) NOT NULL,
  `jobname` varchar(50) NOT NULL,
  `requirement` text NOT NULL,
  `close_date` date NOT NULL,
  `img` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applicant_job`
--

INSERT INTO `applicant_job` (`id`, `jobname`, `requirement`, `close_date`, `img`, `status`) VALUES
(244, 'mekanik', 'SMK', '2024-07-11', 'job/2a9524a5f9331440f8a81b98d26091a5.png', 'Inactive'),
(245, 'mekanik', 'SMK', '2024-07-11', 'job/b3bea1366437e8927cc5b49d016b481e.png', 'Inactive'),
(246, 'mekanik', 'SMK', '2024-07-09', 'job/f0c2b05809b1e5fa35dda0f7eb57f776.png', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_login`
--

CREATE TABLE `applicant_login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applicant_login`
--

INSERT INTO `applicant_login` (`id`, `username`, `password`) VALUES
(1, 'guest', '084e0343a0486ff05530df6c705c8bb4'),
(2, 'admin', 'adminnmm');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_scheduling`
--

CREATE TABLE `applicant_scheduling` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `pic` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applicant_scheduling`
--

INSERT INTO `applicant_scheduling` (`id`, `applicant_id`, `alamat`, `tanggal`, `pic`, `telp`) VALUES
(16, 1, 'ruangan HRD', '2024-07-03 23:31:00', 'Piet', '008114702336'),
(17, 2, 'ruangan HRD', '2024-07-04 12:40:00', 'Piet', '08114702336'),
(18, 11, 'ruangan HRD', '2024-07-12 09:00:00', 'Piet', '08114702336'),
(19, 12, 'ruangan HRD', '2024-07-11 08:31:00', 'Piet', '008114702336');

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `id` int(30) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `confirm_pass` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indexes for table `applicant_job`
--
ALTER TABLE `applicant_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_login`
--
ALTER TABLE `applicant_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant_scheduling`
--
ALTER TABLE `applicant_scheduling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_applicant_id` (`applicant_id`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `applicant_job`
--
ALTER TABLE `applicant_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `applicant_login`
--
ALTER TABLE `applicant_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applicant_scheduling`
--
ALTER TABLE `applicant_scheduling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
