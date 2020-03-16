-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 18, 2019 at 11:27 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rwc2019y3`
--
DROP DATABASE IF EXISTS `rwc2019y3`;

CREATE DATABASE `rwc2019y3`;

USE `rwc2019y3`;

-- --------------------------------------------------------


--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `teamCode` varchar(3) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `teamCode`, `pts`) VALUES
(46392, 'Handre Pollard', 'RSA', 69),
(43573, 'Owen Farrell', 'ENG', 58),
(50413, 'Richie Mo\'unga', 'NZL', 54),
(45529, 'Yu Tamura', 'JPN', 51),
(33997, 'Dan Biggar', 'WAL', 41),
(50463, 'Josh Adams', 'WAL', 35),
(43574, 'George Ford', 'ENG', 32),
(57717, 'Jordie Barrett', 'NZL', 31),
(39180, 'Felipe Berchesi', 'URU', 30),
(60865, 'Makazole Mapimpi', 'RSA', 30),
(39664, 'Elton Jantjies', 'RSA', 28),
(59866, 'Romain Ntamack', 'FRA', 27),
(56856, 'Adam Hastings', 'SCO', 26),
(26541, 'Johnny Sexton', 'IRE', 26),
(50605, 'Kotaro Matsushima', 'JPN', 25),
(48724, 'Rhys Patchell', 'WAL', 24),
(29273, 'Christian Lealiifano', 'AUS', 23),
(49561, 'Tommaso Allan', 'ITA', 23),
(42557, 'Ben Volavola', 'FIJ', 21),
(50727, 'Sonatane Takulua', 'TGA', 21),
(30541, 'Ben Smith', 'NZL', 20),
(48628, 'Julian Montoya', 'ARG', 20),
(47921, 'Kenki Fukuoka', 'JPN', 20),
(32114, 'Nicolas Sanchez', 'ARG', 20),
(29455, 'Benjamin Urdapilleta', 'ARG', 19),
(26337, 'Greig Laidlaw', 'SCO', 19),
(48599, 'Henry Taefu', 'SAM', 19),
(42625, 'Beauden Barrett', 'NZL', 18),
(36793, 'Matt Toomua', 'AUS', 18),
(55462, 'AJ MacGinty', 'USA', 17),
(38840, 'Andrew Conway', 'IRE', 15),
(48565, 'Cheslin Kolbe', 'RSA', 15),
(53956, 'Cobus Reinach', 'RSA', 15),
(34010, 'Dane Haylett-Petty', 'AUS', 15),
(55641, 'George Horne', 'SCO', 15),
(38906, 'Jonny May', 'ENG', 15),
(45651, 'Luke Cowan-Dickie', 'ENG', 15),
(44193, 'Manu Tuilagi', 'ENG', 15),
(59442, 'Marika Koroibete', 'AUS', 15),
(43544, 'Mbongeni Mbonambi', 'RSA', 15),
(39559, 'Telusa Veainu', 'TGA', 15),
(55316, 'Damian Stevens', 'NAM', 14),
(30058, 'Yury Kushnarev', 'RUS', 14),
(32440, 'Leigh Halfpenny', 'WAL', 12),
(60519, 'Tedo Abzhandadze', 'GEO', 12),
(50801, 'Carlo Canna', 'ITA', 11),
(34028, 'Aaron Smith', 'NZL', 10),
(49016, 'Alapati Leiua', 'SAM', 10),
(29288, 'Alexander Todua', 'GEO', 10),
(67409, 'Alivereti Raka', 'FRA', 10),
(50409, 'Anton Lienert-Brown', 'NZL', 10),
(36078, 'Api Ratuniyarawa', 'FIJ', 10),
(44123, 'Blaine Scully', 'USA', 10),
(43517, 'Brad Weber', 'NZL', 10),
(60273, 'Cliven Loubser', 'NAM', 10),
(50681, 'Damian de Allende', 'RSA', 10),
(57162, 'Ed Fidow', 'SAM', 10),
(45702, 'Gael Fickou', 'FRA', 10),
(38914, 'Gareth Davies', 'WAL', 10),
(50499, 'Garry Ringrose', 'IRE', 10),
(55801, 'George Bridge', 'NZL', 10),
(36738, 'Joaquin Tuculet', 'ARG', 10),
(59729, 'Joe Cokanasiga', 'ENG', 10),
(45238, 'Joe Moody', 'NZL', 10),
(53366, 'Josua Tuisova', 'FIJ', 10),
(55655, 'Juan Cruz Mallia', 'ARG', 10),
(43009, 'Levan Chilachava', 'GEO', 10),
(43423, 'Liam Williams', 'WAL', 10),
(58707, 'Lukhanyo Am', 'RSA', 10),
(45637, 'Malietoa Hingano', 'TGA', 10),
(55332, 'Manuel Diana', 'URU', 10),
(55727, 'Matteo Minozzi', 'ITA', 10),
(50378, 'Mattia Bellini', 'ITA', 10),
(39454, 'Michael Hooper', 'AUS', 10),
(48658, 'Mike Teo', 'USA', 10),
(36150, 'Nikola Matawalu', 'FIJ', 10),
(29554, 'Rob Kearney', 'IRE', 10),
(28238, 'Rory Best', 'IRE', 10),
(33042, 'Schalk Brits', 'RSA', 10),
(48044, 'Scott Barrett', 'NZL', 10),
(43638, 'Semi Radradra', 'FIJ', 10),
(60952, 'Sevu Reece', 'NZL', 10),
(43490, 'Tadhg Furlong', 'IRE', 10),
(39727, 'Tevita Kuridrani', 'AUS', 10),
(45708, 'Tolu Latu', 'AUS', 10),
(50478, 'Tomos Williams', 'WAL', 10),
(52746, 'Virimi Vakatawa', 'FRA', 10),
(46441, 'Waisea Nayacalevu', 'FIJ', 10),
(54664, 'Warrick Gelant', 'RSA', 10),
(29265, 'Will Genia', 'AUS', 10),
(47492, 'Camille Lopez', 'FRA', 9),
(46410, 'Jack Carty', 'IRE', 9),
(48953, 'Reece Hodge', 'AUS', 8),
(59978, 'Soso Matiashvili', 'GEO', 8),
(45928, 'Finn Russell', 'SCO', 7),
(44200, 'Siale Piutau', 'TGA', 7),
(55696, 'Joey Carbery', 'IRE', 6),
(63868, 'Aaron Wainwright', 'WAL', 5),
(26695, 'Adam Ashley-Cooper', 'AUS', 5),
(67474, 'Afaesetiti Amosa', 'SAM', 5),
(39179, 'Andres Vilaseca', 'URU', 5),
(54404, 'Andrew Coe', 'CAN', 5),
(39558, 'Angus Ta\'avao', 'NZL', 5),
(48706, 'Anthony Watson', 'ENG', 5),
(55619, 'Antoine Dupont', 'FRA', 5),
(47998, 'Ardie Savea', 'NZL', 5),
(48781, 'Baptiste Serin', 'FRA', 5),
(34189, 'Ben Youngs', 'ENG', 5),
(46112, 'Billy Vunipola', 'ENG', 5),
(45548, 'Braam Steyn', 'ITA', 5),
(58928, 'Bryce Campbell', 'USA', 5),
(50801, 'Carlo Canna', 'ITA', 5),
(61431, 'Chad Plato', 'NAM', 5),
(54574, 'Charles Ollivon', 'FRA', 5),
(36637, 'CJ Stander', 'IRE', 5),
(42575, 'Codie Taylor', 'NZL', 5),
(55316, 'Damian Stevens', 'NAM', 5),
(60620, 'Damian Willemse', 'RSA', 5),
(29606, 'Dean Budd', 'ITA', 5),
(43571, 'Elliot Daly', 'ENG', 5),
(55246, 'Eroni Mawi', 'FIJ', 5),
(56104, 'Faf de Klerk', 'RSA', 5),
(56054, 'Federico Zani', 'ITA', 5),
(45928, 'Finn Russell', 'SCO', 5),
(39965, 'Francois Louw', 'RSA', 5),
(57371, 'Frank Lomani', 'FIJ', 5),
(47012, 'Frans Malherbe', 'RSA', 5),
(29126, 'Frans Steyn', 'RSA', 5),
(42052, 'George North', 'WAL', 5),
(45921, 'George Turner', 'SCO', 5),
(50154, 'German Kessler', 'URU', 5),
(62879, 'Giorgi Kveseladze', 'GEO', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pools`
--

CREATE TABLE `pools` (
  `pool` varchar(3) NOT NULL,
  `teamCode` varchar(3) NOT NULL,
  `played` int(11) NOT NULL,
  `won` int(11) NOT NULL,
  `drew` int(11) NOT NULL,
  `lost` int(11) NOT NULL,
  `triesFor` int(11) NOT NULL,
  `ptsFor` int(11) NOT NULL,
  `ptsAgainst` int(11) NOT NULL,
  `bonusPoints` int(11) NOT NULL,
  `pts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pools`
--

INSERT INTO `pools` (`pool`, `teamCode`, `played`, `won`, `drew`, `lost`, `triesFor`, `ptsFor`, `ptsAgainst`, `bonusPoints`, `pts`) VALUES
('A', 'JPN', 4, 4, 0, 0, 13, 115, 62, 3, 19),
('A', 'IRE', 4, 3, 0, 1, 18, 121, 27, 4, 16),
('A', 'SCO', 4, 2, 0, 2, 16, 119, 55, 3, 11),
('A', 'SAM', 4, 1, 0, 3, 8, 58, 128, 1, 5),
('A', 'RUS', 4, 0, 0, 4, 1, 19, 160, 0, 0),
('B', 'NZL', 4, 3, 1, 0, 22, 157, 22, 2, 16),
('B', 'RSA', 4, 3, 0, 1, 27, 185, 36, 3, 15),
('B', 'ITA', 4, 2, 1, 1, 14, 98, 78, 2, 12),
('B', 'NAM', 4, 0, 1, 3, 3, 34, 175, 0, 2),
('B', 'CAN', 4, 0, 1, 3, 2, 14, 177, 0, 2),
('C', 'ENG', 4, 3, 1, 0, 17, 119, 20, 3, 17),
('C', 'FRA', 4, 3, 1, 0, 9, 79, 51, 1, 15),
('C', 'ARG', 4, 2, 0, 2, 14, 106, 91, 3, 11),
('C', 'TGA', 4, 1, 0, 3, 9, 67, 105, 2, 6),
('C', 'USA', 4, 0, 0, 4, 7, 52, 156, 0, 0),
('D', 'WAL', 4, 4, 0, 0, 17, 136, 69, 3, 19),
('D', 'AUS', 4, 3, 0, 1, 20, 136, 68, 4, 16),
('D', 'FIJ', 4, 1, 0, 3, 17, 110, 108, 3, 7),
('D', 'GEO', 4, 1, 0, 3, 9, 65, 122, 1, 5),
('D', 'URU', 4, 1, 0, 3, 6, 60, 140, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `resultsfixtures`
--

CREATE TABLE `resultsfixtures` (
  `date` date NOT NULL,
  `time` time NOT NULL,
  `round` varchar(50) NOT NULL,
  `venueid` int(11) NOT NULL,
  `venueName` varchar(50) NOT NULL,
  `team1Code` varchar(3) NOT NULL,
  `team1Name` varchar(50) NOT NULL,
  `team2Code` varchar(3) NOT NULL,
  `team2Name` varchar(50) NOT NULL,
  `pool` varchar(50) NOT NULL,
  `team1Score` int(11) NOT NULL,
  `team2Score` int(11) NOT NULL,
  `team1Tries` int(11) NOT NULL,
  `team2Tries` int(11) NOT NULL,
  `team1Pts` int(11) NOT NULL,
  `team2Pts` int(11) NOT NULL,
  `team1TryBonus` int(11) NOT NULL,
  `team2TryBonus` int(11) NOT NULL,
  `team1LoseBonus` int(11) NOT NULL,
  `team2LoseBonus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultsfixtures`
--

INSERT INTO `resultsfixtures` (`date`, `time`, `round`, `venueid`, `venueName`, `team1Code`, `team1Name`, `team2Code`, `team2Name`, `pool`, `team1Score`, `team2Score`, `team1Tries`, `team2Tries`, `team1Pts`, `team2Pts`, `team1TryBonus`, `team2TryBonus`, `team1LoseBonus`, `team2LoseBonus`) VALUES
('2019-09-20', '19:45:00', '1', 12, '12', 'JPN', 'Japan', 'RUS', 'Russia', 'Pool A', 30, 10, 4, 1, 5, 0, 1, 0, 0, 0),
('2019-09-21', '13:45:00', '1', 10, '10', 'AUS', 'Australia', 'FIJ', 'Fiji', 'Pool D', 39, 21, 6, 2, 5, 0, 1, 0, 0, 0),
('2019-09-21', '16:15:00', '1', 12, '12', 'FRA', 'France', 'ARG', 'Argentina', 'Pool C', 23, 21, 2, 2, 4, 1, 0, 0, 0, 1),
('2019-09-21', '18:45:00', '1', 4, '4', 'NZL', 'New Zealand', 'RSA', 'South Africa', 'Pool B', 23, 13, 2, 1, 4, 0, 0, 0, 0, 0),
('2019-09-22', '14:15:00', '1', 3, '3', 'ITA', 'Italy', 'NAM', 'Namibia', 'Pool B', 47, 22, 6, 3, 5, 0, 1, 0, 0, 0),
('2019-09-22', '16:45:00', '1', 4, '4', 'IRE', 'Ireland', 'SCO', 'Scotland', 'Pool A', 27, 3, 4, 0, 5, 0, 1, 0, 0, 0),
('2019-09-22', '19:15:00', '1', 10, '10', 'ENG', 'England', 'TGA', 'Tonga', 'Pool C', 35, 3, 4, 0, 5, 0, 1, 0, 0, 0),
('2019-09-23', '19:15:00', '1', 1, '1', 'WAL', 'Wales', 'GEO', 'Georgia', 'Pool D', 43, 14, 6, 2, 5, 0, 1, 0, 0, 0),
('2019-09-24', '19:15:00', '2', 7, '7', 'RUS', 'Russia', 'SAM', 'Samoa', 'Pool A', 9, 4, 0, 6, 4, 2, 0, 1, 0, 1),
('2019-09-25', '14:15:00', '2', 5, '5', 'FIJ', 'Fiji', 'URU', 'Uruguay', 'Pool D', 27, 30, 5, 3, 2, 4, 1, 0, 1, 0),
('2019-09-26', '16:45:00', '2', 2, '2', 'ITA', 'Italy', 'CAN', 'Canada', 'Pool B', 48, 7, 6, 1, 5, 0, 1, 0, 0, 0),
('2019-09-26', '19:45:00', '2', 6, '6', 'ENG', 'England', 'USA', 'USA', 'Pool C', 45, 7, 7, 1, 5, 0, 1, 0, 0, 0),
('2019-09-28', '13:45:00', '2', 3, '3', 'ARG', 'Argentina', 'TGA', 'Tonga', 'Pool C', 28, 12, 4, 2, 5, 0, 1, 0, 0, 0),
('2019-09-28', '16:15:00', '2', 11, '11', 'JPN', 'Japan', 'IRE', 'Ireland', 'Pool A', 19, 12, 1, 2, 4, 1, 0, 0, 0, 1),
('2019-09-28', '18:45:00', '2', 1, '1', 'RSA', 'South Africa', 'NAM', 'Namibia', 'Pool B', 57, 3, 9, 0, 5, 0, 1, 0, 0, 0),
('2019-09-29', '14:15:00', '2', 7, '7', 'GEO', 'Georgia', 'URU', 'Uruguay', 'Pool D', 33, 7, 5, 1, 5, 0, 1, 0, 0, 0),
('2019-09-29', '16:45:00', '3', 12, '12', 'AUS', 'Australia', 'WAL', 'Wales', 'Pool D', 25, 29, 3, 2, 1, 4, 0, 0, 1, 0),
('2019-09-30', '19:15:00', '3', 6, '6', 'SCO', 'Scotland', 'SAM', 'Samoa', 'Pool A', 34, 0, 2, 0, 4, 0, 0, 0, 0, 0),
('2019-10-02', '16:45:00', '3', 2, '2', 'FRA', 'France', 'USA', 'USA', 'Pool C', 33, 9, 5, 0, 5, 0, 1, 0, 0, 0),
('2019-10-02', '19:15:00', '3', 9, '9', 'NZL', 'New Zealand', 'CAN', 'Canada', 'Pool B', 63, 0, 8, 0, 5, 0, 1, 0, 0, 0),
('2019-10-03', '14:15:00', '3', 3, '3', 'GEO', 'Georgia', 'FIJ', 'Fiji', 'Pool D', 10, 45, 1, 7, 0, 5, 0, 1, 0, 0),
('2019-10-03', '19:15:00', '3', 6, '6', 'IRE', 'Ireland', 'RUS', 'Russia', 'Pool A', 35, 0, 5, 0, 5, 0, 1, 0, 0, 0),
('2019-10-04', '18:45:00', '3', 11, '11', 'RSA', 'South Africa', 'ITA', 'Italy', 'Pool B', 49, 3, 7, 0, 5, 0, 1, 0, 0, 0),
('2019-10-05', '17:00:00', '3', 12, '12', 'ENG', 'England', 'ARG', 'Argentina', 'Pool C', 39, 10, 6, 1, 5, 0, 1, 0, 0, 0),
('2019-10-05', '14:15:00', '4', 9, '9', 'AUS', 'Australia', 'URU', 'Uruguay', 'Pool D', 45, 10, 7, 1, 5, 0, 1, 0, 0, 0),
('2019-10-05', '19:30:00', '4', 1, '1', 'JPN', 'Japan', 'SAM', 'Samoa', 'Pool A', 38, 19, 4, 1, 5, 0, 1, 0, 0, 0),
('2019-10-06', '13:45:00', '4', 12, '12', 'NZL', 'New Zealand', 'NAM', 'Namibia', 'Pool B', 71, 9, 11, 0, 5, 0, 1, 0, 0, 0),
('2019-10-06', '16:45:00', '4', 8, '8', 'FRA', 'France', 'TGA', 'Tonga', 'Pool C', 23, 21, 2, 3, 4, 1, 0, 0, 0, 1),
('2019-10-08', '19:15:00', '4', 6, '6', 'RSA', 'South Africa', 'CAN', 'Canada', 'Pool B', 66, 7, 10, 1, 5, 0, 1, 0, 0, 0),
('2019-10-09', '13:45:00', '4', 7, '7', 'ARG', 'Argentina', 'USA', 'USA', 'Pool C', 47, 17, 7, 3, 5, 0, 1, 0, 0, 0),
('2019-10-09', '16:15:00', '4', 11, '11', 'SCO', 'Scotland', 'RUS', 'Russia', 'Pool A', 61, 0, 9, 0, 5, 0, 1, 0, 0, 0),
('2019-10-09', '18:45:00', '4', 9, '9', 'WAL', 'Wales', 'FIJ', 'Fiji', 'Pool D', 29, 17, 4, 2, 5, 0, 1, 0, 0, 0),
('2019-10-11', '19:15:00', '5', 11, '11', 'AUS', 'Australia', 'GEO', 'Georgia', 'Pool D', 27, 8, 4, 1, 5, 0, 1, 0, 0, 0),
('2019-10-12', '13:45:00', '5', 1, '1', 'NZL', 'New Zealand', 'ITA', 'Italy', 'Pool B', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0),
('2019-10-12', '17:15:00', '5', 4, '4', 'ENG', 'England', 'FRA', 'France', 'Pool C', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0),
('2019-10-12', '19:45:00', '5', 2, '2', 'IRE', 'Ireland', 'SAM', 'Samoa', 'Pool A', 47, 5, 7, 1, 5, 0, 1, 0, 0, 0),
('2019-10-13', '12:15:00', '5', 5, '5', 'NAM', 'Namibia', 'CAN', 'Canada', 'Pool B', 0, 0, 0, 0, 2, 2, 0, 0, 0, 0),
('2019-10-13', '14:45:00', '5', 3, '3', 'USA', 'USA', 'TGA', 'Tonga', 'Pool C', 19, 31, 3, 4, 0, 5, 0, 1, 0, 0),
('2019-10-13', '17:15:00', '5', 8, '8', 'WAL', 'Wales', 'URU', 'Uruguay', 'Pool D', 35, 13, 4, 1, 5, 0, 1, 0, 0, 0),
('2019-10-13', '19:45:00', '5', 4, '4', 'JPN', 'Japan', 'SCO', 'Scotland', 'Pool A', 28, 21, 4, 3, 5, 1, 1, 0, 0, 1),
('2019-10-19', '16:15:00', 'Quarter Finals', 9, '9', 'ENG', 'England', 'AUS', 'Australia', 'Quarter Finals', 40, 16, 0, 0, 0, 0, 0, 0, 0, 0),
('2019-10-19', '19:15:00', 'Quarter Finals', 12, '12', 'NZL', 'New Zealand', 'IRE', 'Ireland', 'Quarter Finals', 46, 14, 0, 0, 0, 0, 0, 0, 0, 0),
('2019-10-20', '16:15:00', 'Quarter Finals', 9, '9', 'WAL', 'Wales', 'FRA', 'France', 'Quarter Finals', 20, 19, 0, 0, 0, 0, 0, 0, 0, 0),
('2019-10-20', '19:15:00', 'Quarter Finals', 12, '12', 'JPN', 'Japan', 'RSA', 'South Africa', 'Quarter Finals', 3, 26, 0, 0, 0, 0, 0, 0, 0, 0),
('2019-10-26', '17:00:00', 'Semi Finals', 4, '4', 'ENG', 'England', 'NZL', 'New Zealand', 'Semi Finals', 19, 7, 1, 1, 0, 0, 0, 0, 0, 0),
('2019-10-27', '18:00:00', 'Semi Finals', 4, '4', 'WAL', 'Wales', 'RSA', 'South Africa', 'Semi Finals', 16, 19, 1, 1, 0, 0, 0, 0, 0, 0),
('2019-11-01', '18:00:00', 'Finals', 12, '12', 'NZL', 'New Zealand', 'WAL', 'Wales', 'Finals', 40, 17, 4, 2, 0, 0, 0, 0, 0, 0),
('2019-11-02', '18:00:00', 'Finals', 4, '4', 'ENG', 'England', 'RSA', 'South Africa', 'Finals', 12, 32, 0, 2, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`code`, `name`, `rank`) VALUES
('ARG', 'Argentina', 11),
('AUS', 'Australia', 6),
('CAN', 'Canada', 22),
('ENG', 'England', 3),
('FIJ', 'Fiji', 9),
('FRA', 'France', 8),
('GEO', 'Georgia', 12),
('IRE', 'Ireland', 1),
('ITA', 'Italy', 14),
('JPN', 'Japan', 10),
('NAM', 'Namibia', 23),
('NZL', 'New Zealand', 2),
('RUS', 'Russia', 20),
('SAM', 'Samoa', 16),
('SCO', 'Scotland', 7),
('RSA', 'South Africa', 4),
('TGA', 'Tonga', 15),
('URU', 'Uruguay', 19),
('USA', 'USA', 13),
('WAL', 'Wales', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `date`, `time`) VALUES
('thomas.devine@lyit.ie', 'letmein', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `north` decimal(10,4) NOT NULL,
  `east` decimal(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `north`, `east`) VALUES
(1, 'City of Toyota Stadium', '35.0846', '137.1709'),
(2, 'Fukuoka Hakatanomori Stadium', '33.5860', '130.4609'),
(3, 'Hanazono Rugby Stadium', '34.6690', '135.6263'),
(4, 'International Stadium Yokohama', '35.5099', '139.6064'),
(5, 'Kamaishi Recovery Memorial Stadium', '39.3268', '141.8912'),
(6, 'Kobe Misaki Stadium', '34.6568', '135.1696'),
(7, 'Kumagaya Rugby Stadium', '36.1683', '139.4024'),
(8, 'Kumamoto Stadium', '32.8368', '130.8001'),
(9, 'Oita Stadium', '33.1200', '131.3900'),
(10, 'Sapporo Dome', '43.0150', '141.4100'),
(11, 'Shizuoka Stadium Ecopa', '34.7435', '137.9708'),
(12, 'Tokyo Stadium', '35.6643', '139.5272');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
