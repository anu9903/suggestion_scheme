-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2025 at 04:26 PM
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
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `employeeid` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`employeeid`, `name`, `designation`, `age`, `department`, `password`) VALUES
('100020', 'Rajesh Khanna', 'Software Engineer', 45, 'IT', 'Abcd1000'),
('10002001', NULL, NULL, NULL, NULL, 'Abcd20000'),
('10003456', NULL, NULL, NULL, NULL, 'Chotku2004'),
('1001', 'Rajesh Kumar', 'Senior Engineer', 32, 'Production', 'Password123'),
('1002', 'Priya Sharma', 'Safety Officer', 28, 'Safety & Environment', 'SecurePass1'),
('100200', 'jbvghsbdgb2', 'sbchsbv', 23, 'wjhfahs', '$2b$10$CJC7j/u65xDT2fifrjX1juF5nqcc1wZ4B0SNlrcpaBZ'),
('1003', 'Amit Singh', 'Quality Analyst', 35, 'Quality Control', 'QualityPass2'),
('1004', 'Meera Patel', 'Process Engineer', 30, 'Process Optimization', 'ProcessKey3'),
('1010', NULL, NULL, NULL, NULL, 'Password123'),
('1011', NULL, NULL, NULL, NULL, 'Abcd1011'),
('1012', 'XYYZ', 'Senior Engineer', 40, 'Production', '$2b$10$obbe72/DmmGFjQYOkYnnVeIJyFt5JU7barU1Xx6WQLw'),
('12312322', NULL, NULL, NULL, NULL, 'Abcd2345'),
('12345', 'gsgdkasfsdksafk', 'afhkjajkgkjgkskng', 56, 'gbkjjksghwgh', '$2b$10$3OJC2B8t2Cz0HT5qMzx6NeTDV1hym1PBhQeFHhZYepc'),
('123455', 'gshchsfhshgfh', 'jfbwajgbjsgbn', 23, 'rwhkfhsgjskgj', '$2b$10$koVoogHZaqtjCzmTlNBMTuPQQMhaqpDYg3AXTd56C6v'),
('12345678', NULL, NULL, NULL, NULL, 'Abc12345'),
('123457', 'Andhegwwrgg', 'sbjfkjdkjsnkb', 23, 'fjesegjgkhvja', '$2b$10$cw4IXTzhXcBzY5YtXYY.D.9V9MWrYfYwlRYc0xKXGyr'),
('123458', 'jsksvsjvsnjbgsnjb', 'wkgwbsfhjds', 23, 'wgsbxgb', 'Abcd1234'),
('124357', 'Chotku', 'Senior Engineer', 20, 'IT', 'Chotku2004');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `current_scenario` text NOT NULL,
  `suggested_scenario` text NOT NULL,
  `implementation_cost` decimal(15,2) NOT NULL,
  `benefits` text NOT NULL,
  `department` varchar(100) NOT NULL,
  `priority` enum('Low','Medium','High') DEFAULT 'Medium',
  `status` enum('Pending','Under Review','Approved','Rejected') DEFAULT 'Pending',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `title`, `current_scenario`, `suggested_scenario`, `implementation_cost`, `benefits`, `department`, `priority`, `status`, `created_date`, `updated_date`) VALUES
(1, 'Energy Efficiency in Blast Furnace', 'Current blast furnace operations consume 25% more energy than industry standards due to outdated heating systems and lack of heat recovery mechanisms.', 'Implement advanced heat recovery systems and upgrade to modern energy-efficient heating elements with automated temperature control.', 2500000.00, 'Reduce energy consumption by 25%, Save ₹15 lakhs annually, Reduce carbon emissions by 30%, Improve operational efficiency', 'Production', 'High', 'Pending', '2025-06-13 05:15:06', '2025-06-13 05:15:06'),
(2, 'Safety Equipment Upgrade', 'Workers in high-temperature zones are using basic safety gear that provides limited protection and requires frequent replacement.', 'Deploy advanced heat-resistant PPE with IoT sensors for real-time monitoring of worker safety parameters and automated alerts.', 800000.00, 'Reduce workplace accidents by 40%, Improve worker confidence and productivity, Real-time safety monitoring, Compliance with latest safety standards', 'Safety & Environment', 'High', 'Pending', '2025-06-13 05:15:06', '2025-06-13 05:15:06'),
(3, 'Quality Control Automation', 'Manual quality checking processes lead to inconsistent results and require 8 hours per batch with 15% error rate.', 'Implement automated quality control systems with AI-powered defect detection and real-time quality monitoring.', 1800000.00, 'Reduce quality check time to 2 hours per batch, Decrease error rate to 3%, Improve product consistency, Reduce manual labor costs', 'Quality Control', 'Medium', 'Pending', '2025-06-13 05:15:06', '2025-06-13 05:15:06'),
(4, 'Waste Heat Recovery System', 'Significant amount of waste heat from steel production processes is released to atmosphere without utilization.', 'Install waste heat recovery boilers to generate steam for power generation and process heating applications.', 3200000.00, 'Generate 5MW additional power, Save ₹25 lakhs annually on electricity costs, Reduce environmental impact, Improve overall plant efficiency', 'Process Optimization', 'High', 'Pending', '2025-06-13 05:15:06', '2025-06-13 05:15:06'),
(5, 'Water Recycling Enhancement', 'Current water usage is 15% higher than industry benchmarks with limited recycling of process water.', 'Upgrade water treatment facilities with advanced filtration and implement closed-loop water recycling system.', 1500000.00, 'Reduce fresh water consumption by 40%, Save ₹8 lakhs annually, Meet environmental compliance, Sustainable operations', 'Safety & Environment', 'Medium', 'Pending', '2025-06-13 05:15:06', '2025-06-13 05:15:06'),
(6, 'Production issue', 'flkajsglkszlkgnvblksdhlkbnszb,mskjvnjz,svnkzsn', 'skfvskgvb bzvjsd,vnm,x mxdn', 10000000.00, 'kjhfjksgdvjgnsjgvsajfnv', 'scbfkhsbvnzmv', 'High', 'Pending', '2025-06-14 09:11:14', '2025-06-14 09:11:14'),
(8, 'dbakbffbc,', 'ajfbeskgvkjsbvbscfas', 'kjdjkbsfvbsvfmsnfms', 100000.00, 'jkhsfhsbvnxzm,v ', 'fresjgbvsdngvmgsxngvm ', 'High', 'Approved', '2025-06-14 09:13:47', '2025-06-14 09:13:47'),
(9, 'sbdjhsakfh', 'sbcbajc,m', 'bjjajksbvjkfszbv', 10000.00, 'bbfvznvxb ', 'khfsgjvbzvz', 'High', 'Rejected', '2025-06-14 09:37:30', '2025-06-14 09:37:30'),
(10, 'jfkjsjkf', 'bsfbjbmzvm', 'bjbajsfksngkvsnzv', 100000.00, 'kjhjkabvzmv', 'fjsjgvg,mzgvmz v', 'High', 'Approved', '2025-06-14 09:40:59', '2025-06-14 09:40:59'),
(11, 'bhchzsbvgszbg', 'kufgkwakfbajkfsjf', 'ugfuwagjksbgkjbs', 100000.00, 'wufgagvgszgv', 'wgfrgafbwsjkgbsjgb', 'Low', 'Approved', '2025-06-14 12:21:55', '2025-06-14 12:21:55'),
(12, 'i4,mjirfotio;oedrsol.irsolkesaiokeselkiealoki', 'skmkjrekhjrtjerskerjeskdaj', 'juerherherfjherehfj', 677899.00, 'm nsxmndfdvbhj,dsskslk', 'mncdndckmdsslklkwsa', 'High', 'Pending', '2025-06-14 13:13:13', '2025-06-14 13:13:13'),
(13, 'fgfhgfhf', 'ugigre', 'reuyuyfgeuyfge', 100000.00, 'egergrgd', 'ddgdgdd', 'High', 'Approved', '2025-06-16 15:15:47', '2025-06-16 15:15:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`employeeid`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
