-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 12 apr 2024 om 11:05
-- Serverversie: 8.2.0
-- PHP-versie: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp01`
--
CREATE DATABASE IF NOT EXISTS `webapp02` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `webapp01`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `producten`
--

DROP TABLE IF EXISTS `producten`;
CREATE TABLE IF NOT EXISTS `producten` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productnaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `omschrijving` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prijs` double NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `producten`
--

INSERT INTO `producten` (`id`, `productnaam`, `omschrijving`, `prijs`, `img`) VALUES
(22, 'Zuurvlees', 'a', 6.5, NULL),
(23, 'Sjasliek', 'Gegrilde stukjes varkensvlees op een stokje', 5.5, NULL),
(24, 'Kibbeling', 'Gebakken stukjes kabeljauwfilet met remouladesaus', 6, NULL),
(25, 'Viandel', 'Gefrituurde snack gevuld met ragout', 3, NULL),
(27, 'Gebakken mosselen', 'Mosselen in een krokant jasje', 7, NULL),
(28, 'Loempia', 'Knapperige loempia gevuld met groenten', 3.5, NULL),
(29, 'Spareribs', 'Gemarineerde en gegrilde spareribs', 8, NULL),
(30, 'Kapsalon', 'Patat met shoarma, kaas, sla, knoflooksaus en sambal', 7.5, NULL),
(31, 'Broodje warme andy beenham', 'Broodje met warme plakjes beenham en mosterdsaus', 5, 'assets\\img\\Naamloos.png'),
(32, 'Elco', 'Alec', 10, '.......');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `subproducten`
--

DROP TABLE IF EXISTS `subproducten`;
CREATE TABLE IF NOT EXISTS `subproducten` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subproductnaam` int NOT NULL,
  `prijs` int NOT NULL,
  `omschrijving` int NOT NULL,
  `poductid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `poductid` (`poductid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `gebruikersnaam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wachtwoord` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`gebruikersnaam`, `wachtwoord`, `rol`) VALUES
('Angelo', 'Job', ''),
('Thijs', 'Kas', ''),
('Daan was te laat', 'Manuel was samen met alec te laat', ''),
('wqdqdw', 'wqdqwdqw', ''),
('Hamude', 'oke????', ''),
('Vic', 'Elco', ''),
('', '', ''),
('qwrqwrqwr', 'qwrqwr', ''),
('', '', ''),
('', '', ''),
('test', 'test', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
