-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 02:28 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ids_iiot`
--

-- --------------------------------------------------------

--
-- Table structure for table `accuracy`
--

CREATE TABLE `accuracy` (
  `AccuracyID` int(11) NOT NULL,
  `DatasetID` int(11) DEFAULT NULL,
  `AccuracyPercentage` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accuracy`
--

INSERT INTO `accuracy` (`AccuracyID`, `DatasetID`, `AccuracyPercentage`) VALUES
(1, 1, '99.00'),
(2, 2, '87.61'),
(3, 3, '84.23'),
(4, 4, '100.00'),
(5, 4, '99.20'),
(6, 1, '91.07'),
(7, 3, '100.00'),
(8, 5, '99.09'),
(9, 6, '99.00'),
(10, 7, '99.00'),
(11, 8, '98.00'),
(12, 1, '99.81'),
(13, 2, '93.84'),
(14, 6, '98.64'),
(15, 2, '99.12'),
(16, 9, '99.57'),
(17, 6, '98.00'),
(18, 2, '99.00');

-- --------------------------------------------------------

--
-- Table structure for table `algorithm`
--

CREATE TABLE `algorithm` (
  `AlgorithmID` int(11) NOT NULL,
  `AlgorithmName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `algorithm`
--

INSERT INTO `algorithm` (`AlgorithmID`, `AlgorithmName`) VALUES
(1, 'Random Forest'),
(2, 'Decision Tree'),
(3, 'Naive Bayes'),
(4, 'Genetic Algorithm (GA)'),
(5, 'Linear Regression (LR)'),
(6, 'Extra-Trees (ET)'),
(7, 'Extreme Gradient Boosting (XGB)'),
(8, 'Linear Discriminant Analysis (LDA)'),
(9, 'Principal Component Analysis (PCA)'),
(10, 'Autoencoders'),
(11, 'Cascade Forward Back Propagation Neural Network (CFBPNN)'),
(12, 'Convolutional Neural Network (CNN)'),
(13, 'Long Short-Term Memory (LSTM)'),
(14, 'Restricted Boltzmann Machines'),
(15, 'Deep Random Neural Network (DRaNN)'),
(16, 'Hybrid Deep Random Neural Network (HDRaNN)');

-- --------------------------------------------------------

--
-- Table structure for table `attack`
--

CREATE TABLE `attack` (
  `AttackID` int(11) NOT NULL,
  `AttackType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attack`
--

INSERT INTO `attack` (`AttackID`, `AttackType`) VALUES
(1, 'Cyber attacks'),
(2, 'Access control attacks'),
(3, 'Data corruption breaches spoofing attacks'),
(4, 'Denial of Service (DoS) Distributed DoS'),
(5, 'Operating System (OS) jamming'),
(6, 'Network based attacks'),
(7, 'DoS (Denial of Service)'),
(8, 'DDoS (Distributed Denial of Service)'),
(9, 'Intrusion attacks'),
(10, 'Malware attacks'),
(11, 'Network scanning attacks'),
(12, 'Malicious activity'),
(13, 'Data Type Probing'),
(14, 'Spying'),
(15, 'Malicious Operation');

-- --------------------------------------------------------

--
-- Table structure for table `attack_paper`
--

CREATE TABLE `attack_paper` (
  `AttackPaperID` int(11) NOT NULL,
  `AttackID` int(11) DEFAULT NULL,
  `PaperID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attack_paper`
--

INSERT INTO `attack_paper` (`AttackPaperID`, `AttackID`, `PaperID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 3),
(7, 7, 3),
(8, 8, 3),
(9, 9, 4),
(10, 10, 5),
(11, 11, 5),
(12, 12, 6),
(13, 13, 9),
(14, 14, 9),
(15, 15, 9),
(16, 1, 9),
(17, 4, 5),
(18, 9, 7),
(19, 10, 9),
(20, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `DatasetID` int(11) NOT NULL,
  `DatasetName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset`
--

INSERT INTO `dataset` (`DatasetID`, `DatasetName`) VALUES
(1, 'X-IIoTID'),
(2, 'UNSW-NB15'),
(3, 'Gas pipeline'),
(4, 'NSLKDD+'),
(5, 'water storage tank'),
(6, 'DS2OS'),
(7, 'CICIDS2017 datasets'),
(8, 'IIoT Testbed'),
(9, 'ToN_IoT');

-- --------------------------------------------------------

--
-- Table structure for table `dataset_paper`
--

CREATE TABLE `dataset_paper` (
  `DatasetPaperID` int(11) NOT NULL,
  `DatasetID` int(11) DEFAULT NULL,
  `PaperID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataset_paper`
--

INSERT INTO `dataset_paper` (`DatasetPaperID`, `DatasetID`, `PaperID`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 4, 4),
(5, 5, 4),
(6, 6, 5),
(7, 7, 5),
(8, 8, 6),
(9, 9, 8),
(10, 1, 4),
(11, 1, 7),
(12, 2, 2),
(13, 2, 7),
(14, 2, 8),
(15, 2, 9),
(16, 6, 8),
(17, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `paper`
--

CREATE TABLE `paper` (
  `PaperID` int(11) NOT NULL,
  `PublishYear` int(11) DEFAULT NULL,
  `Link` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper`
--

INSERT INTO `paper` (`PaperID`, `PublishYear`, `Link`, `Title`) VALUES
(1, 2023, 'https://ieeexplore.ieee.org/abstract/document/10178529', 'A machine-learning-based Intrusion detection for IIoT infrastructure'),
(2, 2021, 'https://ieeexplore.ieee.org/abstract/document/9511416', 'An Advanced Intrusion Detection System for IIoT Based on GA and Tree Based Algorithms'),
(3, 2020, 'https://ieeexplore.ieee.org/document/9067253', 'A Machine learning based intrusion detection approach for industrial networks'),
(4, 2023, 'https://www.sciencedirect.com/science/article/abs/pii/S0167404823002250', 'PIGNUS: A Deep Learning model for IDS in industrial internet-of-things'),
(5, 2022, 'https://onlinelibrary.wiley.com/doi/abs/10.1111/exsy.12917', 'A lightweight intelligent intrusion detection system for industrial internet of things using deep learning algorithms'),
(6, 2023, 'https://ieeexplore.ieee.org/abstract/document/10142458', 'An analysis of Intrusion detection systems in IIoT'),
(7, 2023, 'https://www.sciencedirect.com/science/article/pii/S2215098622002312', 'A hybrid CNN+LSTM-based intrusion detection system for industrial IoT networks'),
(8, 2022, 'https://www.sciencedirect.com/science/article/pii/S1319157822002701', 'DRaNN_PSO: A deep random neural network with particle swarm optimization for intrusion detection in the industrial internet of things'),
(9, 2021, 'https://ieeexplore.ieee.org/abstract/document/9399085', 'A Hybrid Deep Random Neural Network for Cyberattack Detection in the Industrial Internet of Things');

-- --------------------------------------------------------

--
-- Table structure for table `paper_algorithm`
--

CREATE TABLE `paper_algorithm` (
  `PaperAlgorithmID` int(11) NOT NULL,
  `PaperID` int(11) DEFAULT NULL,
  `AlgorithmID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper_algorithm`
--

INSERT INTO `paper_algorithm` (`PaperAlgorithmID`, `PaperID`, `AlgorithmID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 3, 8),
(9, 3, 9),
(10, 4, 10),
(11, 4, 11),
(12, 5, 12),
(13, 5, 13),
(14, 6, 14),
(15, 8, 15),
(16, 9, 16),
(17, 6, 1),
(18, 2, 2),
(19, 2, 3),
(20, 7, 12),
(21, 7, 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Farah', 'Babar', 'farahbabar003@yahoo.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accuracy`
--
ALTER TABLE `accuracy`
  ADD PRIMARY KEY (`AccuracyID`),
  ADD KEY `DatasetID` (`DatasetID`);

--
-- Indexes for table `algorithm`
--
ALTER TABLE `algorithm`
  ADD PRIMARY KEY (`AlgorithmID`);

--
-- Indexes for table `attack`
--
ALTER TABLE `attack`
  ADD PRIMARY KEY (`AttackID`);

--
-- Indexes for table `attack_paper`
--
ALTER TABLE `attack_paper`
  ADD PRIMARY KEY (`AttackPaperID`),
  ADD KEY `AttackID` (`AttackID`),
  ADD KEY `PaperID` (`PaperID`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`DatasetID`);

--
-- Indexes for table `dataset_paper`
--
ALTER TABLE `dataset_paper`
  ADD PRIMARY KEY (`DatasetPaperID`),
  ADD KEY `DatasetID` (`DatasetID`),
  ADD KEY `PaperID` (`PaperID`);

--
-- Indexes for table `paper`
--
ALTER TABLE `paper`
  ADD PRIMARY KEY (`PaperID`);

--
-- Indexes for table `paper_algorithm`
--
ALTER TABLE `paper_algorithm`
  ADD PRIMARY KEY (`PaperAlgorithmID`),
  ADD KEY `PaperID` (`PaperID`),
  ADD KEY `AlgorithmID` (`AlgorithmID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accuracy`
--
ALTER TABLE `accuracy`
  MODIFY `AccuracyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `algorithm`
--
ALTER TABLE `algorithm`
  MODIFY `AlgorithmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `attack`
--
ALTER TABLE `attack`
  MODIFY `AttackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attack_paper`
--
ALTER TABLE `attack_paper`
  MODIFY `AttackPaperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dataset`
--
ALTER TABLE `dataset`
  MODIFY `DatasetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dataset_paper`
--
ALTER TABLE `dataset_paper`
  MODIFY `DatasetPaperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `paper`
--
ALTER TABLE `paper`
  MODIFY `PaperID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `paper_algorithm`
--
ALTER TABLE `paper_algorithm`
  MODIFY `PaperAlgorithmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accuracy`
--
ALTER TABLE `accuracy`
  ADD CONSTRAINT `accuracy_ibfk_1` FOREIGN KEY (`DatasetID`) REFERENCES `dataset` (`DatasetID`);

--
-- Constraints for table `attack_paper`
--
ALTER TABLE `attack_paper`
  ADD CONSTRAINT `attack_paper_ibfk_1` FOREIGN KEY (`AttackID`) REFERENCES `attack` (`AttackID`),
  ADD CONSTRAINT `attack_paper_ibfk_2` FOREIGN KEY (`PaperID`) REFERENCES `paper` (`PaperID`);

--
-- Constraints for table `dataset_paper`
--
ALTER TABLE `dataset_paper`
  ADD CONSTRAINT `dataset_paper_ibfk_1` FOREIGN KEY (`DatasetID`) REFERENCES `dataset` (`DatasetID`),
  ADD CONSTRAINT `dataset_paper_ibfk_2` FOREIGN KEY (`PaperID`) REFERENCES `paper` (`PaperID`);

--
-- Constraints for table `paper_algorithm`
--
ALTER TABLE `paper_algorithm`
  ADD CONSTRAINT `paper_algorithm_ibfk_1` FOREIGN KEY (`PaperID`) REFERENCES `paper` (`PaperID`),
  ADD CONSTRAINT `paper_algorithm_ibfk_2` FOREIGN KEY (`AlgorithmID`) REFERENCES `algorithm` (`AlgorithmID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
