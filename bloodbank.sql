-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 10:09 AM
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
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `department` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `mobilenumber` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patid`, `name`, `department`, `date`, `time`, `bloodgroup`, `mobilenumber`, `email`, `status`) VALUES
(50, 897654, 'fdsm,sfs', 'pediatrics', '2022-11-29', '7AM-7h30AM', 'B+', '876', 'kfablionel@gmail.com', 'pending'),
(54, 76546, 'jghf', 'sugery', '2022-11-26', '7AM-7h30AM', 'O-', '97876545', 'kfablionel@gmail.com', 'rejected'),
(55, 897654, 'm,bv', 'neaneulogy', '2022-11-26', '7AM-7h30AM', 'O+', '97876545', 'kfablionel@gmail.com', 'pending'),
(56, 9732, 'yves', 'pediatrics', '2022-11-29', '7AM-7h30AM', 'A+', '987654', 'Yves@gmail.com', 'rejected'),
(58, 876, 'yves', 'sugery', '2022-11-29', '7AM-7h30AM', 'A+', '7865', 'Yves@gmail.com', 'pending'),
(59, 1111, 'yves', 'sugery', '2022-11-29', '7AM-7h30AM', 'A+', '9876545', 'Yves@gmail.com', 'pending'),
(60, 1111, 'yves', 'pediatrics', '2022-11-29', '7AM-7h30AM', 'A+', '8765', 'Yves@gmail.com', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`id`) VALUES
(0),
(0),
(0),
(0),
(0);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `docid` int(30) NOT NULL,
  `docfname` varchar(30) NOT NULL,
  `doclname` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `degree` varchar(30) NOT NULL,
  `mobilenumber` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`docid`, `docfname`, `doclname`, `department`, `degree`, `mobilenumber`, `email`, `address`, `password`) VALUES
(1, 'yves', 'iradukunda', 'psyclogist', 'proffessional', '+(250)782045468', 'yves@gmail.com', 'kimironko', 'yves123'),
(2, 'simon', 'Nshimiye', 'canser', 'specialist', '0789658291', 'simon@gmail.com', 'bumbogo', 'simon1'),
(3, 'Cleria', 'Agahozo', 'dentist', 'internship', '08907-8080=80', 'cleria@gmail.com', 'Rutunga1', 'cleria1'),
(4, 'Berthe', 'uwimana', 'dentist', 'A2', '98764567890', 'berthe@gmail.com', 'gatsata', 'berthe1'),
(5, 'aveiro123', 'felix', 'psyclogist', 'specialist', '9706', 'aveiro@gmail.com', 'kicukiro', 'aveiro1'),
(6, 'nzaramba123', 'steven45', 'dentist', 'specialist', '9085329078', 'steven@gmail.com', '89453082', 'steven1');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `patid` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `department` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `age` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobilenumber` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patid`, `fname`, `gender`, `department`, `bloodgroup`, `age`, `email`, `mobilenumber`, `address`, `password`) VALUES
(1, 123, 'yves', 'male', 'sugery', 'A+', 20, 'yves@gmail.com', '0782045468', 'kimironko', 'yves1'),
(2, 1111, 'simon', 'male', 'pediatrics', 'A+', 40, 'simon@gmail.com', '940749429429-', 'huye', 'simon1'),
(3, 234456, 'agahozo1234', 'male', 'neaneulogy', 'A+', 40, 'agahozo@gmail.com', '344309845908', 'huye', 'cleria1'),
(7, 4, 'nzaramba', 'male', 'pediatrics', 'A+', 20, 'steven@gmail.com', '84939', 'l;gdrrfms;gd', 'steven1'),
(8, 8, 'dieudone', 'male', 'sugery', 'A+', 30, 'kamali@gmail.com', '945945395', 'kmfsdgvnsd;ngvdr;', 'kamali1'),
(9, 9, 'sibomana', 'male', 'sugery', 'A+', 50, 'Karoli@gmail.com', '9735270523', ';klhsndflj;sdf', 'sibomana1'),
(10, 10, 'mutuyimana', 'male', 'pediatrics', 'A+', 70, 'f@gmail.com', '7856897', 'kakiru', 'fiellete1'),
(11, 11, 'ngarambe', 'male', 'neaneulogy', 'A+', 40, 'simon@gmail.com', '098765', 'kimironko', 'simon1'),
(12, 12, 'nzaba', 'male', 'neaneulogy', 'O+', 40, 'uu@gmail.com', '987', '090--00-0--08900', 'nzaba1'),
(13, 13, 'gentil misigaro', 'male', 'sugery', 'A+', 90, 'gentil@gmail.com', '98765', 'huye', 'gentil1');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `medecine` varchar(50) NOT NULL,
  `units` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `medecine`, `units`) VALUES
(1, 'pracetamol', 600),
(2, 'ibrofene', 430),
(3, 'ybrofene', 100),
(4, 'umuravumba', 602),
(5, 'cyimbazi', 618);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`docid`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
