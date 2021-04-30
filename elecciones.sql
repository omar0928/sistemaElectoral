-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 05:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elecciones`
--
CREATE DATABASE IF NOT EXISTS `elecciones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `elecciones`;

-- --------------------------------------------------------

--
-- Table structure for table `candidatos`
--

CREATE TABLE `candidatos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  `partido` varchar(100) NOT NULL,
  `foto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidatos`
--

INSERT INTO `candidatos` (`id`, `nombre`, `estado`, `apellido`, `puesto`, `partido`, `foto`) VALUES
(1, 'Roger ', 0, 'Rosario', '5', '4', 0x4172726179),
(3, 'Roger ', 0, 'as', '1', '4', 0x332e706e67),
(4, 'Roger ', 0, 'sdaasa', '1', '4', 0x342e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `ciudadanos`
--

CREATE TABLE `ciudadanos` (
  `id` int(11) NOT NULL,
  `documento` varchar(150) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ciudadanos`
--

INSERT INTO `ciudadanos` (`id`, `documento`, `nombre`, `estado`, `apellido`, `email`) VALUES
(1, '40200685598', 'Roger ', 0, 'Rosario', 'roger_asn01@hotmail.com'),
(3, '12345', 'Manuel', 0, 'Rodriguez', 'manuielr@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `elecciones`
--

CREATE TABLE `elecciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elecciones`
--

INSERT INTO `elecciones` (`id`, `nombre`, `fecha`, `estado`) VALUES
(1, 'Elecion1', '2021-04-28', 0),
(2, 'Elecion1', '2021-04-28', 0),
(3, 'Elecion1', '2021-04-28', 0),
(4, 'Elecion1', '2021-04-28', 0),
(5, 'Elecion1', '2021-04-29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `partidos`
--

CREATE TABLE `partidos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `logo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partidos`
--

INSERT INTO `partidos` (`id`, `nombre`, `descripcion`, `estado`, `logo`) VALUES
(4, 'PLD', 'PLD', 0, 0x4172726179),
(5, 'PRD', 'PRD', 0, 0x4172726179),
(19, 'PRSC', 'PRCS', 0, 0x4172726179),
(24, 'VERDE', 'VERDE', 0, 0x4172726179),
(34, 'AZUL', 'AZUL', 0, 0x4172726179),
(35, 'Rojo', 'Rojo', 0, 0x4172726179);

-- --------------------------------------------------------

--
-- Table structure for table `puestos`
--

CREATE TABLE `puestos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `puestos`
--

INSERT INTO `puestos` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'Diputado', 'Diputado', 0),
(3, 'Alcalde', 'Alcalde', 0),
(4, 'Regidor', 'Regidor', 0),
(5, 'Senador', 'Senador', 0),
(7, 'Presidente', 'Presidente', 0),
(8, 'Presi1', 'Presi1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `contraseña` varchar(150) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contraseña`, `estado`) VALUES
(1, 'Roger', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ciudadanos`
--
ALTER TABLE `ciudadanos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elecciones`
--
ALTER TABLE `elecciones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ciudadanos`
--
ALTER TABLE `ciudadanos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elecciones`
--
ALTER TABLE `elecciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
