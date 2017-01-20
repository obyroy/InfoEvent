-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2017 at 10:15 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infoevent`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EventID` int(11) NOT NULL,
  `EventName` varchar(255) DEFAULT NULL,
  `EventDate` varchar(10) DEFAULT NULL,
  `EventDes` varchar(255) DEFAULT NULL,
  `EventImage` varchar(100) NOT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `EventPlace` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EventID`, `EventName`, `EventDate`, `EventDes`, `EventImage`, `Category`, `EventPlace`) VALUES
(1, 'Color Of Jakarta', '2017-02-12', 'Event buat para fotografer yang ingin berkompetisi', 'images/pic01.jpg', 'other', 'ITC Mangga Dua,Jakarta Barat'),
(2, 'Juvenum', '2017-02-03', 'Event buat para music', 'images/pic02.jpg', 'other', 'Soeharno Hall- The Enegy 2nd Floor'),
(3, 'Intagram Fair', '2017-02-06', 'Meet And Greet Selebgram KIDS', 'images/pic03.jpg', 'other', 'Mall Of Indonesia-Ground Floor Lobby 8'),
(4, 'Jakarta Bike', '2017-02-17', 'Fun Bike Seru & Donor Darah', 'images/pic04.jpg', 'other', 'Parkir Timur Senayan'),
(5, 'Story Board Creative', '2017-01-17', 'Be More Creative Plus Get A Chance To Join Our Production Team', 'images/workshop.jpg', 'workshop', 'ITC Roxy Jakarta Barat'),
(6, 'Harta Keluarga', '2017-01-25', 'Membangun Harta Keluarga Yang Baik dan Benar', 'images/workshop2.jpg', 'workshop', 'Sara Hotel, Jl Sultan Hasanudin.Jakarta Selatan'),
(7, 'Workshop Komputer Anak', '2017-03-10', 'Yuk ajarkan anak anda untuk mengetahui tentang komputer dengan benar', 'images/workshop3.jpg', 'workshop', 'Jl.Solo-yogya Km30 Jombor Ceper Klaten'),
(8, 'Test', '2017-01-31', 'adsadajda', 'IMG_1291.JPG', 'seminar', 'jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberID` int(11) NOT NULL,
  `memberName` varchar(100) DEFAULT NULL,
  `memberEmail` varchar(100) NOT NULL,
  `memberPass` varchar(100) DEFAULT NULL,
  `memberRole` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberID`, `memberName`, `memberEmail`, `memberPass`, `memberRole`) VALUES
(1, 'Robby', 'boyroster@rocketmail.com', 'aaa', 'member'),
(2, 'admin', 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL,
  `eventID` int(11) DEFAULT NULL,
  `reviewDes` varchar(255) DEFAULT NULL,
  `reviewDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reviewID`, `eventID`, `reviewDes`, `reviewDate`) VALUES
(6, 1, 'recommended banget', '2017-01-12 14:07:45'),
(8, 1, 'recommended banget', '2017-01-12 14:13:38'),
(9, 1, 'recommended banget', '2017-01-12 14:22:6'),
(10, 5, 'event ini bagus', '2017-01-18 11:24:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `eventID` (`eventID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `reviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `event` (`EventID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
