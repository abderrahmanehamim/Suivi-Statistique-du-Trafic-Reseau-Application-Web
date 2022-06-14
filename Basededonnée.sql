-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 13, 2022 at 03:57 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetzidane`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commentaire`
--

INSERT INTO `commentaire` (`id`, `comment`, `userId`) VALUES
(1, 'aa', 1),
(2, 'aaa', 1),
(3, 'vvv', 1),
(4, 'bbb', 1),
(5, 'commentaire1', 9),
(6, 'vvv', 9);

-- --------------------------------------------------------

--
-- Table structure for table `paquet`
--

CREATE TABLE `paquet` (
  `id` int(11) NOT NULL,
  `dateenreg` datetime NOT NULL,
  `recu` text NOT NULL,
  `emis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mdp` varchar(500) NOT NULL,
  `telephone` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenom`, `email`, `username`, `mdp`, `telephone`) VALUES
(1, 'Michel', 'Bravio', 'sagbomichel08@gmail.com', 'bravio', '955cca8ffc6209ed4fd7cd85ce961dd90af3a63f4eb9029e503a3006aed48d02', 600790540),
(2, 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', 0),
(3, 'abel', 'carl', 'abelus@gmail.com', 'manoel', '955cca8ffc6209ed4fd7cd85ce961dd90af3a63f4eb9029e503a3006aed48d02', 600790540),
(4, 'ccc', 'ccc', 'sagbomichel08@gmail.co', 'cc', '64daa44ad493ff28a96effab6e77f1732a3d97d83241581b37dbd70a7a4900fe', 1),
(5, '', '', 'sagbomichel08@gmil.com', '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 600790540),
(6, 'ssss', 'ssss', 'ssss@sss.fr', 'ssss', '28e51044f4a9cbae2bbd3d8a9d8c902ad1455d42208277ac4a913b003038a3dc', 1111),
(7, 'ssss', 'azdad', 'zsa@gmail.com', 'zfe', '61be55a8e2f6b4e172338bddf184d6dbee29c98853e0a0485ecee7f27b9af0b4', 600790540),
(8, 'essaai1', 'essai1', 'essai@gmail.com', 'essau', '71b4e190fc7a0aa86f24cb18d88c09bfd8a45292f1ae434fac3c0351f4d838d3', 22222),
(9, 'essai', 'assay', 'test@gmail.com', 'test', '9834876dcfb05cb167a5c24953eba58c4ac89b1adf57f28f2f9d09af107ee8f0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc` (`userId`);

--
-- Indexes for table `paquet`
--
ALTER TABLE `paquet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `paquet`
--
ALTER TABLE `paquet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `fc` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
