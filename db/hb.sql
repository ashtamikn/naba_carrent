-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2022 at 12:46 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--
CREATE DATABASE IF NOT EXISTS `app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `app`;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `details` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`idBrand`, `name`, `details`) VALUES
(1, 'AUDI', 'Audi AG (commonly referred to as Audi) is a German automotive manufacturer of luxury vehicles headquartered in Ingolstadt, Bavaria, Germany. As a subsidiary of its parent company, the Volkswagen Group, Audi produces vehicles in nine production facilities worldwide.\r\nThe company name is based on the Latin translation of the surname of the founder, August Horch. Horch, meaning \"listen\" in German, becomes audi in Latin. The four rings of the Audi logo each represent one of four car companies that banded together to create Audi\'s predecessor company, Auto Union. Audi\'s slogan is Vorsprung durch Technik, meaning \"Being Ahead through Technology\".[11] Audi, along with fellow German marques BMW and Mercedes-Benz, is among the best-selling luxury automobile brands in the world.'),
(2, 'TATA', 'Tata Motors Group (Tata Motors) is a $34 billion organisation. It is a leading global automobile manufacturing company. Its diverse portfolio includes an extensive range of cars, sports utility vehicles, trucks, buses and defence vehicles. Tata Motors is one of India\'s largest OEMs offering an extensive range of integrated, smart and e-mobility solutions.\r\n\r\nOur mission - across our globally dispersed organisation – is to be passionate in anticipating and providing the best vehicles and experiences that excite our global customers.'),
(3, 'HYUNDAI', 'Hyundai Motor India Limited (HMIL) is a wholly owned subsidiary of Hyundai Motor Company (HMC). HMIL is India’s first smart mobility solutions provider and the number one car exporter since inception in India. It currently has 10 car models across segments SANTRO, GRAND i10 NIOS, all-new i20, AURA, VENUE, Spirited New VERNA, All New CRETA, ELANTRA, New 2020 TUCSON & KONA Electric. HMIL’s fully integrated state-of-the-art manufacturing plant near Chennai boasts of advanced production, quality, and testing capabilities.\r\n\r\nHMIL forms a critical part of HMC’s global export hub. It currently exports to around 88 countries across Africa, Middle East, Latin America, Australia, and Asia Pacific. To support its growth and expansion plans, HMIL currently has 522 dealers and more than 1,298 service points across India. In its commitment to provide customers with cutting-edge global technology, Hyundai has a modern multi-million-dollar R&D facility in Hyderabad. The R&D center endeavours to be a center of excellence in automobile engineering'),
(4, 'MARUTI SUZUKI', 'Cars are what Maruti Suzuki builds. Experiences are what it creates.\r\n\r\nExperiences fuelled by innovations, forward thinking, and a commitment to bring the very best to Indian roads. From the day the iconic Maruti 800 was launched in 1983, the company has been spearheading a revolution of change. Turning an entire country’s need for driving, into its love for driving.\r\nHowever, tastes and demands keep on evolving with each new generation of Indians. This has not been looked at by Maruti Suzuki as a challenge, but as an inspiration to go beyond traditional boundaries of car-making. Infusing design and technology is one such step it has taken to make its cars meet new age expectations smoothly.\r\nToday, Maruti Suzuki has its eyes set firmly on the possibilities of tomorrow. And everybody is invited on this journey.'),
(5, 'VOLKSWAGEN', 'Volkswagen is the founding and namesake member of the Volkswagen Group, a large international corporation in charge of multiple car and truck brands, including Audi, SEAT, Porsche, Lamborghini, Bentley, Bugatti, Scania, MAN, and Škoda. Volkswagen Group\'s global headquarters are located in Volkswagen\'s historic home of Wolfsburg, Germany.\r\n\r\nIn 2010, Volkswagen posted record sales of 6.29 million vehicles, with its global market share at 11.4%.[69] In 2008, Volkswagen became the third-largest car maker in the world,[70] and, as of 2016, Volkswagen was the second largest manufacturer worldwide.[71] With strong headwinds reported in 2018, predominantly from trade tariffs and new emission standards, Volkswagen Group ended 2018 with record deliveries of 10.8 million vehicles.[72] Volkswagen Group\'s core markets include Germany and China.\r\n\r\nIn July 2019, Volkswagen invested $2.6 billion in Argo AI, a startup focused on developing self-driving vehicles.');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `idCar` int(10) UNSIGNED NOT NULL,
  `brand` varchar(20) NOT NULL,
  `model` varchar(25) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `photo` varchar(45) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`idCar`, `brand`, `model`, `price`, `photo`, `details`, `year`, `active`, `type`) VALUES
(1, 'AUDI', 'A5', 1000, 'images/audiA5.jpg', NULL, 2016, 1, 'Convertible'),
(2, 'AUDI', 'Q5', 950, 'images/audiQ5.jpg', '', 2017, 1, 'Convertible'),
(3, 'MARUTI SUZUKI', 'Swift Dzire', 350, 'images/MZSD.jpg', NULL, 2017, 1, 'Not Convertible'),
(4, 'MARUTI SUZUKI', 'Baleno', 400, 'images/baleno.png', NULL, 2016, 1, 'Not Convertible'),
(5, 'VOLKSWAGEN', 'Polo', 450, 'images/polo.jpg', NULL, 2016, 1, 'Not Convertible'),
(6, 'VOLKSWAGEN', 'Vento', 500, 'images/vento.jpg', NULL, 2017, 1, 'Convertible'),
(7, 'TATA', 'Indica', 350, 'images/indica.jpg', '', 2010, 0, 'Not Convertible'),
(8, 'TATA', 'Nexon', 550, 'images/nexon.jpg', '', 2016, 1, 'Not Convertible'),
(9, 'HYUNDAI', 'I20', 600, 'images/i20.jpg', '', 2018, 1, 'Convertible'),
(10, 'HYUNDAI', 'Verna', 650, 'images/verna.jpg', '', 2016, 1, 'Convertible');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `idReservation` int(11) UNSIGNED NOT NULL,
  `idCar` int(11) UNSIGNED NOT NULL,
  `idUser` int(11) UNSIGNED NOT NULL,
  `fullPrice` int(11) UNSIGNED NOT NULL,
  `dateIn` date NOT NULL,
  `dateOut` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`idReservation`, `idCar`, `idUser`, `fullPrice`, `dateIn`, `dateOut`, `active`) VALUES
(3, 2, 2, 950, '2021-12-29', '2021-12-29', 1),
(4, 24, 2, 1000, '2021-12-29', '2021-12-29', 1),
(5, 2, 2, 950, '2022-01-03', '2022-01-03', 1),
(7, 2, 2, 950, '2022-01-04', '2022-01-04', 1),
(8, 8, 2, 800, '2022-01-12', '2022-01-12', 1),
(16, 7, 2, 350, '2022-01-27', '2022-01-27', 1),
(15, 7, 4, 350, '2022-01-26', '2022-01-26', 1),
(17, 1, 4, 1000, '2022-01-27', '2022-01-27', 1),
(18, 9, 2, 600, '2022-01-27', '2022-01-28', 1),
(19, 8, 2, 550, '2022-01-28', '2022-01-28', 1),
(20, 8, 4, 550, '2022-01-28', '2022-01-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(10) UNSIGNED NOT NULL,
  `fullName` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `admin` tinyint(1) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `fullName`, `email`, `pass`, `admin`, `active`) VALUES
(3, 'NABAadmin', 'naba@gmail.com', '809766370dcc37c3b3d71ffcf06ed6565751657d05ff3bc438a98bc91393a843', 1, 1),
(2, 'ASHTAMI K N', 'ashtamikn@gmail.com', '494eccfaeca4f4d6eb0754540705fbc294ea8fe69dc260235f0f492bea453896', 0, 1),
(4, 'aakarsh', 'aakarsh@gmail.com', '5aac72f4c8ccad6b9280b72e54574a2a1fa6638525abe7de61a831ed5edfb20e', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`),
  ADD UNIQUE KEY `idBrand_UNIQUE` (`idBrand`),
  ADD UNIQUE KEY `brand_UNIQUE` (`name`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`idCar`),
  ADD UNIQUE KEY `idCar_UNIQUE` (`idCar`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`idReservation`),
  ADD UNIQUE KEY `idreservations_UNIQUE` (`idReservation`),
  ADD KEY `fk_foreign_key_name` (`idCar`),
  ADD KEY `fk_foreign_key_` (`idUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `idUser_UNIQUE` (`idUser`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `idCar` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `idReservation` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
