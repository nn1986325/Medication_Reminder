-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 07:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medtime`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpatient`
--

CREATE TABLE `addpatient` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `Treatment` varchar(255) DEFAULT NULL,
  `BP` varchar(11) DEFAULT NULL,
  `TSH` varchar(11) DEFAULT NULL,
  `RBS` varchar(11) DEFAULT NULL,
  `FBS` varchar(11) DEFAULT NULL,
  `ppbs` varchar(11) DEFAULT NULL,
  `HbA1c` varchar(11) DEFAULT NULL,
  `attender_name` varchar(255) DEFAULT NULL,
  `relation_of_patient` varchar(25) DEFAULT NULL,
  `att_age` varchar(11) DEFAULT NULL,
  `att_gender` varchar(25) DEFAULT NULL,
  `att_phone_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpatient`
--

INSERT INTO `addpatient` (`s_no`, `patient_id`, `name`, `gender`, `age`, `phone_number`, `Treatment`, `BP`, `TSH`, `RBS`, `FBS`, `ppbs`, `HbA1c`, `attender_name`, `relation_of_patient`, `att_age`, `att_gender`, `att_phone_number`) VALUES
(50, 'SMCP001', 'Rose', 'Female', '53', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '9.5%', 'David', 'Husband', '65', 'Male', '96858*****'),
(51, 'SMCP003', 'Sandy', 'Male', '53', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '9.5%', 'Lilly', 'Sister', '45', 'Male', '96858*****'),
(52, 'SMCP004', 'User', 'Female', '56', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '9.5%', 'selena Gomez', 'Friend', '35', 'Male', '96858*****'),
(53, 'SMCP005', 'Emille', 'Female', '54', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '9.5%', 'Ariana', 'Friend', '56', 'Male', '96858*****');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`s_no`, `patient_id`, `name`, `issue`, `date`, `status`) VALUES
(51, 'SMCP001', 'Rose', 'Diabetes Mellitus', '2024-04-11', 'Pending'),
(52, 'SMCP002', 'David', 'Diabetes Mellitus', '2024-04-15', 'Pending'),
(53, 'SMCP003', 'John', 'Diabetes Mellitus', '2024-04-15', 'Pending'),
(54, 'SMCP004', 'Justin', 'Diabetes Mellitus', '2024-04-12', 'Pending'),
(55, 'SMCP005', 'Maya', 'Diabetes Mellitus', '2024-04-18', 'Pending'),
(56, 'SMCP006', 'Emily', 'Diabetes Mellitus', '2024-04-19', 'Pending'),
(57, 'SMCP007', 'Lotus', 'Diabetes Mellitus', '2024-04-19', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_login`
--

CREATE TABLE `doctor_login` (
  `s_no` int(11) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_login`
--

INSERT INTO `doctor_login` (`s_no`, `doctor_id`, `password`) VALUES
(3, 'SMCD001', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `d_profile`
--

CREATE TABLE `d_profile` (
  `s_no` int(11) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `doctor_name` varchar(255) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d_profile`
--

INSERT INTO `d_profile` (`s_no`, `doctor_id`, `doctor_name`, `speciality`, `gender`) VALUES
(4, 'SMCD001', 'Karthik', 'General physian', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `forgot_password`
--

CREATE TABLE `forgot_password` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `new_password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forgot_password`
--

INSERT INTO `forgot_password` (`s_no`, `patient_id`, `new_password`, `confirm_password`) VALUES
(3, 'SMCP001', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `graph`
--

CREATE TABLE `graph` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `HbA1c` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graph`
--

INSERT INTO `graph` (`s_no`, `patient_id`, `HbA1c`, `date`) VALUES
(1, 'SMCP001', '8%', '2024-04-25 05:07:33'),
(2, 'SMCP001', '10%', '2024-04-26 05:09:47'),
(3, 'SMCP001', '6%', '2024-04-27 05:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`s_no`, `patient_id`, `image`) VALUES
(42, 'SMCP001', 'image/Rose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `medication_name` varchar(255) NOT NULL,
  `medication_form` varchar(255) NOT NULL,
  `morning` int(11) NOT NULL,
  `afternoon` int(11) NOT NULL,
  `night` int(11) NOT NULL,
  `before_food` int(11) NOT NULL,
  `after_food` int(11) NOT NULL,
  `first_intake` time DEFAULT NULL,
  `second_intake` time DEFAULT NULL,
  `third_intake` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`s_no`, `patient_id`, `name`, `medication_name`, `medication_form`, `morning`, `afternoon`, `night`, `before_food`, `after_food`, `first_intake`, `second_intake`, `third_intake`) VALUES
(99, 'SMCP001', 'Rose', 'T.Tenegliptin-20mg', 'pill', 1, 0, 1, 1, 0, '08:30:00', '00:00:00', '08:00:00'),
(100, 'SMCP001', 'Rose', 'T.Metformin-500mg', 'pill', 1, 0, 1, 1, 0, '08:30:00', '12:00:00', '08:00:00'),
(104, 'SMCP001', 'Rose', 'T.Omez 20mg', 'Pill', 1, 0, 1, 1, 0, '08:25:00', '00:00:00', '08:00:00'),
(105, 'SMCP001', 'Rose', 'T.Melcovit Gold', 'Pill', 1, 0, 1, 0, 1, '09:00:00', '00:00:00', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `medicine_taken` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`s_no`, `patient_id`, `date`, `medicine_taken`) VALUES
(7, 'SMCP002', '2024-04-02', 'Not taken'),
(8, 'SMCP003', '2024-04-02', 'Not taken'),
(10, 'SMCP001', '2024-04-02', 'Not Taken'),
(12, 'SMCP001', '2024-04-04', 'Not taken'),
(13, 'SMCP001', '2024-04-10', 'Taken');

-- --------------------------------------------------------

--
-- Table structure for table `patientdetails`
--

CREATE TABLE `patientdetails` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(235) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `Treatment` varchar(255) DEFAULT NULL,
  `BP` varchar(11) DEFAULT NULL,
  `TSH` varchar(11) DEFAULT NULL,
  `RBS` varchar(11) DEFAULT NULL,
  `FBS` varchar(255) DEFAULT NULL,
  `ppbs` varchar(255) DEFAULT NULL,
  `HbA1c` varchar(255) DEFAULT NULL,
  `attender_name` varchar(255) DEFAULT NULL,
  `relation_of_patient` varchar(255) DEFAULT NULL,
  `att_age` varchar(11) DEFAULT NULL,
  `att_gender` varchar(255) DEFAULT NULL,
  `att_phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientdetails`
--

INSERT INTO `patientdetails` (`s_no`, `patient_id`, `name`, `age`, `gender`, `phone_number`, `Treatment`, `BP`, `TSH`, `RBS`, `FBS`, `ppbs`, `HbA1c`, `attender_name`, `relation_of_patient`, `att_age`, `att_gender`, `att_phone_number`) VALUES
(61, 'SMCP001', 'Rose', '61', 'Female', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '6%', 'Attender Name', 'Relation', '65', 'Male', '96858*****'),
(62, 'SMCP003', 'Sandy', '53', 'Male', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '9.5%', 'Lilly', 'Sister', '45', 'Male', '96858*****'),
(63, 'SMCP004', 'User', '56', 'Female', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '9.5%', 'selena Gomez', 'Friend', '35', 'Male', '96858*****'),
(64, 'SMCP005', 'Emille', '54', 'Female', '84155*****', 'Diabetes', '130/84mmhg', '160mg/dl', '3', '130mg/dl', '220mg/dl', '9.5%', 'Ariana', 'Friend', '56', 'Male', '96858*****');

-- --------------------------------------------------------

--
-- Table structure for table `p_profile`
--

CREATE TABLE `p_profile` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_profile`
--

INSERT INTO `p_profile` (`s_no`, `patient_id`, `name`, `age`, `gender`, `phone_number`) VALUES
(66, 'SMCP001', 'Rose', '53', 'Female', '84155*****'),
(67, 'SMCP003', 'Sandy', '53', 'Male', '84155*****'),
(68, 'SMCP004', 'User', '56', 'Female', '84155*****'),
(69, 'SMCP005', 'Emille', '54', 'Female', '84155*****');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `s_no` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`s_no`, `patient_id`, `password`) VALUES
(195, 'SMCP001', 'P001'),
(196, 'SMCP003', 'P003'),
(198, 'SMCP004', 'P004'),
(199, 'SMCP005', 'P005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpatient`
--
ALTER TABLE `addpatient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `s_no` (`s_no`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD UNIQUE KEY `patient_id` (`patient_id`),
  ADD KEY `s_no` (`s_no`);

--
-- Indexes for table `doctor_login`
--
ALTER TABLE `doctor_login`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `id` (`s_no`);

--
-- Indexes for table `d_profile`
--
ALTER TABLE `d_profile`
  ADD PRIMARY KEY (`s_no`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `s_no` (`s_no`);

--
-- Indexes for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`s_no`),
  ADD KEY `s_no` (`s_no`);

--
-- Indexes for table `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`s_no`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD UNIQUE KEY `patient_id` (`patient_id`),
  ADD KEY `s_no` (`s_no`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`s_no`),
  ADD KEY `s_no` (`s_no`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `patientdetails`
--
ALTER TABLE `patientdetails`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `p_profile`
--
ALTER TABLE `p_profile`
  ADD UNIQUE KEY `patient_id` (`patient_id`),
  ADD KEY `s_no` (`s_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `patient_id` (`patient_id`),
  ADD KEY `s_no` (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpatient`
--
ALTER TABLE `addpatient`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `doctor_login`
--
ALTER TABLE `doctor_login`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `d_profile`
--
ALTER TABLE `d_profile`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forgot_password`
--
ALTER TABLE `forgot_password`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `graph`
--
ALTER TABLE `graph`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patientdetails`
--
ALTER TABLE `patientdetails`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `p_profile`
--
ALTER TABLE `p_profile`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `graph`
--
ALTER TABLE `graph`
  ADD CONSTRAINT `graph_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patientdetails` (`patient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
