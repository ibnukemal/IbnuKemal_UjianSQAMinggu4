-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2021 at 10:58 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` varchar(2) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`) VALUES
('11', 'Ellen', 'Writer'),
('12', 'Olga', 'Savelieva'),
('13', 'Jack ', 'Smart'),
('14', 'Donald', 'Brain'),
('15', 'Yao', 'Dou');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` varchar(2) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `author_id` varchar(2) DEFAULT NULL,
  `editor_id` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `type`, `author_id`, `editor_id`) VALUES
('1', 'Time to Grow Up', 'Original', '11', '21'),
('2', 'Your trip', 'Translated', '15', '22'),
('3', 'Lovely Love', 'Original', '14', '24'),
('4', 'Dream Your Life', 'Original', '11', '24'),
('5', 'Oranges', 'Translated', '12', '25'),
('6', 'Your Happy Life', 'Translated', '15', '22'),
('7', 'Applied AI', 'Translated', '13', '23'),
('8', 'My Last Book', 'Original', '11', '27');

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `id` varchar(2) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`id`, `first_name`, `last_name`) VALUES
('21', 'Daniel', 'Brown'),
('22', 'Mark', 'Johnson'),
('23', 'Maria', 'Evans'),
('24', 'Catherine', 'Roberts'),
('25', 'Sebastian', 'Wright'),
('26', 'Barbara', 'Jones'),
('27', 'Matthew', 'Smith');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `editor_id` FOREIGN KEY (`editor_id`) REFERENCES `editors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
