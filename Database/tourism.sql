-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 10:27 AM
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
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `fullname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `people` varchar(20) NOT NULL,
  `booktime` varchar(10) NOT NULL,
  `bookdate` varchar(20) NOT NULL,
  `phonenumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`fullname`, `email`, `people`, `booktime`, `bookdate`, `phonenumber`) VALUES
('dharshu', 'dharshu@gmail.com', '2', '10:00AM', '2023-06-01', '9442172161'),
('ram', 'ram@gmail.com', '2', '10:00AM', '2023-03-30', '9087678908'),
('varsh', 'varsh@gmail.com', '3', '10:00AM', '2023-03-24', '6789089098'),
('Buvana', 'buvi@gmail.com', '3', '10:00AM', '2023-04-14', '8909543212'),
('Mugilan', 'mugilan123@gmail.com', '2', '9.00am', '2023-05-17', '9087654312'),
('vishnu', 'vishu456$@gmail.com', '4', '9.00am', '2023-06-17', '8945326690'),
('Harini', 'harin1221@gmail.com', '3', '3.30pm', '2323-06-07', '9076342277'),
('Selvy', 'selvy678#@gmail.com', '3', '8.30pm', '2023-09-06', '8756443322'),
('Karthiga', 'karthi45$@gmail.com', '4', '7.30am', '2023-08-04', '9078564477'),
('Thanu', 'thanu45@gmail.com', '3', '9.45pm', '2023-07-09', '8977665432');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `uname1` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `upswd1` varchar(20) NOT NULL,
  `upswd2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`uname1`, `email`, `upswd1`, `upswd2`) VALUES
('dharsh', 'dharsh@gmail.com', '1234', '1234'),
('seetha', 'seetha@gmail.com', '123', '123'),
('susi', 'susi@gmail.com', 'susi', 'susi'),
('varsh', 'varsh@gmail.com', 'abcd', 'abcd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `uname1` (`uname1`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
