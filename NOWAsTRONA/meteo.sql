-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 24 Sty 2019, 17:53
-- Wersja serwera: 10.1.37-MariaDB-0+deb9u1
-- Wersja PHP: 7.0.33-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `meteokryry`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `meteo`
--

CREATE TABLE `meteo` (
  `czujnik` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `aktualna` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `min_date` int(11) NOT NULL,
  `max_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `meteo`
--

INSERT INTO `meteo` (`czujnik`, `aktualna`, `min`, `max`, `min_date`, `max_date`) VALUES
('temperatura', 0, 0, 0, 0, 0),
('wilgotnosc', 12, 0, 0, 0, 0),
('cisnienie', 13, 0, 0, 0, 0),
('pm1', 14, 0, 0, 0, 0),
('pm2', 15, 0, 0, 0, 0),
('pm10', 16, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
