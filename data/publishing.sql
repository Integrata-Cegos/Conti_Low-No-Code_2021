-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Erstellungszeit: 21. Okt 2021 um 06:59
-- Server-Version: 8.0.26
-- PHP-Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `publishing`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(168);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_AUTHORS`
--

CREATE TABLE `PUBLISHING_AUTHORS` (
  `authorId` bigint NOT NULL,
  `givenNameString` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `PUBLISHING_AUTHORS`
--

INSERT INTO `PUBLISHING_AUTHORS` (`authorId`, `givenNameString`, `lastname`) VALUES
(6, 'GivenName1_0,GivenName1_1,GivenName1_2', 'AuthorLastname2'),
(8, 'GivenName0_0,GivenName0_1,GivenName0_2', 'AuthorLastname1'),
(9, 'GivenName2_0,GivenName2_1,GivenName2_2', 'AuthorLastname3');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_BOOKS`
--

CREATE TABLE `PUBLISHING_BOOKS` (
  `id` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isbn1` int NOT NULL,
  `isbn2` int NOT NULL,
  `isbn3` int NOT NULL,
  `isbn4` int NOT NULL,
  `pages` int DEFAULT NULL,
  `price` double NOT NULL,
  `title` varchar(255) NOT NULL,
  `publisher_publisherId` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `PUBLISHING_BOOKS`
--

INSERT INTO `PUBLISHING_BOOKS` (`id`, `description`, `isbn1`, `isbn2`, `isbn3`, `isbn4`, `pages`, `price`, `title`, `publisher_publisherId`) VALUES
(1, 'a simple book', 0, 13, 3, 4, 213, 129.35, 'book013', 1),
(2, 'a simple book', 0, 14, 3, 4, 214, 139.29999999999998, 'book014', 1),
(3, 'a simple book', 0, 11, 3, 4, 211, 109.44999999999999, 'book011', 1),
(4, 'a simple book', 0, 12, 3, 4, 212, 119.39999999999999, 'book012', 1),
(5, 'a simple book', 0, 9, 3, 4, 209, 89.55, 'book09', 1),
(6, 'a simple book', 0, 10, 3, 4, 210, 99.5, 'book010', 1),
(7, 'a simple book', 0, 7, 3, 4, 207, 69.64999999999999, 'book07', 1),
(8, 'a simple book', 0, 8, 3, 4, 208, 79.6, 'book08', 1),
(9, 'a simple book', 0, 5, 3, 4, 205, 49.75, 'book05', 1),
(10, 'a simple book', 0, 6, 3, 4, 206, 59.699999999999996, 'book06', 1),
(11, 'a simple book', 0, 3, 3, 4, 203, 29.849999999999998, 'book03', 1),
(12, 'a simple book', 0, 4, 3, 4, 204, 39.8, 'book04', 1),
(13, 'a simple book', 0, 1, 3, 4, 201, 9.95, 'book01', 1),
(14, 'a simple book', 0, 2, 3, 4, 202, 19.9, 'book02', 1),
(15, 'a simple book', 0, 0, 3, 4, 200, 0, 'book00', 1),
(16, 'a simple book', 0, 29, 3, 4, 229, 288.54999999999995, 'book029', 1),
(17, 'a simple book', 0, 30, 3, 4, 230, 298.5, 'book030', 1),
(18, 'a simple book', 0, 27, 3, 4, 227, 268.65, 'book027', 1),
(19, 'a simple book', 0, 28, 3, 4, 228, 278.59999999999997, 'book028', 1),
(20, 'a simple book', 0, 25, 3, 4, 225, 248.74999999999997, 'book025', 1),
(21, 'a simple book', 0, 26, 3, 4, 226, 258.7, 'book026', 1),
(22, 'a simple book', 0, 23, 3, 4, 223, 228.85, 'book023', 1),
(23, 'a simple book', 0, 24, 3, 4, 224, 238.79999999999998, 'book024', 1),
(24, 'a simple book', 0, 21, 3, 4, 221, 208.95, 'book021', 1),
(25, 'a simple book', 0, 22, 3, 4, 222, 218.89999999999998, 'book022', 1),
(26, 'a simple book', 0, 19, 3, 4, 219, 189.04999999999998, 'book019', 1),
(27, 'a simple book', 0, 20, 3, 4, 220, 199, 'book020', 1),
(28, 'a simple book', 0, 17, 3, 4, 217, 169.14999999999998, 'book017', 1),
(29, 'a simple book', 0, 18, 3, 4, 218, 179.1, 'book018', 1),
(30, 'a simple book', 0, 15, 3, 4, 215, 149.25, 'book015', 1),
(31, 'a simple book', 0, 16, 3, 4, 216, 159.2, 'book016', 1),
(32, 'a simple book', 0, 39, 3, 4, 239, 388.04999999999995, 'book039', 1),
(33, 'a simple book', 0, 37, 3, 4, 237, 368.15, 'book037', 1),
(34, 'a simple book', 0, 38, 3, 4, 238, 378.09999999999997, 'book038', 1),
(35, 'a simple book', 0, 35, 3, 4, 235, 348.25, 'book035', 1),
(36, 'a simple book', 0, 36, 3, 4, 236, 358.2, 'book036', 1),
(37, 'a simple book', 0, 33, 3, 4, 233, 328.34999999999997, 'book033', 1),
(38, 'a simple book', 0, 34, 3, 4, 234, 338.29999999999995, 'book034', 1),
(39, 'a simple book', 0, 31, 3, 4, 231, 308.45, 'book031', 1),
(40, 'a simple book', 0, 32, 3, 4, 232, 318.4, 'book032', 1),
(41, 'a simple book', 1, 39, 3, 4, 239, 388.04999999999995, 'book139', 2),
(42, 'a simple book', 1, 38, 3, 4, 238, 378.09999999999997, 'book138', 2),
(43, 'a simple book', 1, 37, 3, 4, 237, 368.15, 'book137', 2),
(44, 'a simple book', 1, 36, 3, 4, 236, 358.2, 'book136', 2),
(45, 'a simple book', 1, 35, 3, 4, 235, 348.25, 'book135', 2),
(46, 'a simple book', 1, 34, 3, 4, 234, 338.29999999999995, 'book134', 2),
(47, 'a simple book', 1, 33, 3, 4, 233, 328.34999999999997, 'book133', 2),
(48, 'a simple book', 1, 32, 3, 4, 232, 318.4, 'book132', 2),
(49, 'a simple book', 1, 14, 3, 4, 214, 139.29999999999998, 'book114', 2),
(50, 'a simple book', 1, 15, 3, 4, 215, 149.25, 'book115', 2),
(51, 'a simple book', 1, 12, 3, 4, 212, 119.39999999999999, 'book112', 2),
(52, 'a simple book', 1, 13, 3, 4, 213, 129.35, 'book113', 2),
(53, 'a simple book', 1, 10, 3, 4, 210, 99.5, 'book110', 2),
(54, 'a simple book', 1, 11, 3, 4, 211, 109.44999999999999, 'book111', 2),
(55, 'a simple book', 1, 8, 3, 4, 208, 79.6, 'book18', 2),
(56, 'a simple book', 1, 9, 3, 4, 209, 89.55, 'book19', 2),
(57, 'a simple book', 1, 6, 3, 4, 206, 59.699999999999996, 'book16', 2),
(58, 'a simple book', 1, 7, 3, 4, 207, 69.64999999999999, 'book17', 2),
(59, 'a simple book', 1, 4, 3, 4, 204, 39.8, 'book14', 2),
(60, 'a simple book', 1, 5, 3, 4, 205, 49.75, 'book15', 2),
(61, 'a simple book', 1, 2, 3, 4, 202, 19.9, 'book12', 2),
(62, 'a simple book', 1, 3, 3, 4, 203, 29.849999999999998, 'book13', 2),
(63, 'a simple book', 1, 0, 3, 4, 200, 0, 'book10', 2),
(64, 'a simple book', 1, 1, 3, 4, 201, 9.95, 'book11', 2),
(65, 'a simple book', 1, 30, 3, 4, 230, 298.5, 'book130', 2),
(66, 'a simple book', 1, 31, 3, 4, 231, 308.45, 'book131', 2),
(67, 'a simple book', 1, 28, 3, 4, 228, 278.59999999999997, 'book128', 2),
(68, 'a simple book', 1, 29, 3, 4, 229, 288.54999999999995, 'book129', 2),
(69, 'a simple book', 1, 26, 3, 4, 226, 258.7, 'book126', 2),
(70, 'a simple book', 1, 27, 3, 4, 227, 268.65, 'book127', 2),
(71, 'a simple book', 1, 24, 3, 4, 224, 238.79999999999998, 'book124', 2),
(72, 'a simple book', 1, 25, 3, 4, 225, 248.74999999999997, 'book125', 2),
(73, 'a simple book', 1, 22, 3, 4, 222, 218.89999999999998, 'book122', 2),
(74, 'a simple book', 1, 23, 3, 4, 223, 228.85, 'book123', 2),
(75, 'a simple book', 1, 20, 3, 4, 220, 199, 'book120', 2),
(76, 'a simple book', 1, 21, 3, 4, 221, 208.95, 'book121', 2),
(77, 'a simple book', 1, 18, 3, 4, 218, 179.1, 'book118', 2),
(78, 'a simple book', 1, 19, 3, 4, 219, 189.04999999999998, 'book119', 2),
(79, 'a simple book', 1, 16, 3, 4, 216, 159.2, 'book116', 2),
(80, 'a simple book', 1, 17, 3, 4, 217, 169.14999999999998, 'book117', 2),
(81, 'a simple book', 2, 16, 3, 4, 216, 159.2, 'book216', 3),
(82, 'a simple book', 2, 15, 3, 4, 215, 149.25, 'book215', 3),
(83, 'a simple book', 2, 14, 3, 4, 214, 139.29999999999998, 'book214', 3),
(84, 'a simple book', 2, 13, 3, 4, 213, 129.35, 'book213', 3),
(85, 'a simple book', 2, 12, 3, 4, 212, 119.39999999999999, 'book212', 3),
(86, 'a simple book', 2, 11, 3, 4, 211, 109.44999999999999, 'book211', 3),
(87, 'a simple book', 2, 10, 3, 4, 210, 99.5, 'book210', 3),
(88, 'a simple book', 2, 9, 3, 4, 209, 89.55, 'book29', 3),
(89, 'a simple book', 2, 8, 3, 4, 208, 79.6, 'book28', 3),
(90, 'a simple book', 2, 7, 3, 4, 207, 69.64999999999999, 'book27', 3),
(91, 'a simple book', 2, 6, 3, 4, 206, 59.699999999999996, 'book26', 3),
(92, 'a simple book', 2, 5, 3, 4, 205, 49.75, 'book25', 3),
(93, 'a simple book', 2, 4, 3, 4, 204, 39.8, 'book24', 3),
(94, 'a simple book', 2, 3, 3, 4, 203, 29.849999999999998, 'book23', 3),
(95, 'a simple book', 2, 2, 3, 4, 202, 19.9, 'book22', 3),
(96, 'a simple book', 2, 1, 3, 4, 201, 9.95, 'book21', 3),
(97, 'a simple book', 2, 32, 3, 4, 232, 318.4, 'book232', 3),
(98, 'a simple book', 2, 31, 3, 4, 231, 308.45, 'book231', 3),
(99, 'a simple book', 2, 30, 3, 4, 230, 298.5, 'book230', 3),
(100, 'a simple book', 2, 29, 3, 4, 229, 288.54999999999995, 'book229', 3),
(101, 'a simple book', 2, 28, 3, 4, 228, 278.59999999999997, 'book228', 3),
(102, 'a simple book', 2, 27, 3, 4, 227, 268.65, 'book227', 3),
(103, 'a simple book', 2, 26, 3, 4, 226, 258.7, 'book226', 3),
(104, 'a simple book', 2, 25, 3, 4, 225, 248.74999999999997, 'book225', 3),
(105, 'a simple book', 2, 24, 3, 4, 224, 238.79999999999998, 'book224', 3),
(106, 'a simple book', 2, 23, 3, 4, 223, 228.85, 'book223', 3),
(107, 'a simple book', 2, 22, 3, 4, 222, 218.89999999999998, 'book222', 3),
(108, 'a simple book', 2, 21, 3, 4, 221, 208.95, 'book221', 3),
(109, 'a simple book', 2, 20, 3, 4, 220, 199, 'book220', 3),
(110, 'a simple book', 2, 19, 3, 4, 219, 189.04999999999998, 'book219', 3),
(111, 'a simple book', 2, 18, 3, 4, 218, 179.1, 'book218', 3),
(112, 'a simple book', 2, 17, 3, 4, 217, 169.14999999999998, 'book217', 3),
(113, 'a simple book', 2, 39, 3, 4, 239, 388.04999999999995, 'book239', 3),
(114, 'a simple book', 2, 38, 3, 4, 238, 378.09999999999997, 'book238', 3),
(115, 'a simple book', 2, 37, 3, 4, 237, 368.15, 'book237', 3),
(116, 'a simple book', 2, 36, 3, 4, 236, 358.2, 'book236', 3),
(117, 'a simple book', 2, 35, 3, 4, 235, 348.25, 'book235', 3),
(118, 'a simple book', 2, 34, 3, 4, 234, 338.29999999999995, 'book234', 3),
(119, 'a simple book', 2, 33, 3, 4, 233, 328.34999999999997, 'book233', 3),
(120, 'a simple book', 2, 0, 3, 4, 200, 0, 'book20', 3),
(121, 'a simple book', 3, 36, 3, 4, 236, 358.2, 'book336', 4),
(122, 'a simple book', 3, 35, 3, 4, 235, 348.25, 'book335', 4),
(123, 'a simple book', 3, 34, 3, 4, 234, 338.29999999999995, 'book334', 4),
(124, 'a simple book', 3, 1, 3, 4, 201, 9.95, 'book31', 4),
(125, 'a simple book', 3, 0, 3, 4, 200, 0, 'book30', 4),
(126, 'a simple book', 3, 37, 3, 4, 237, 368.15, 'book337', 4),
(127, 'a simple book', 3, 38, 3, 4, 238, 378.09999999999997, 'book338', 4),
(128, 'a simple book', 3, 39, 3, 4, 239, 388.04999999999995, 'book339', 4),
(129, 'a simple book', 3, 17, 3, 4, 217, 169.14999999999998, 'book317', 4),
(130, 'a simple book', 3, 16, 3, 4, 216, 159.2, 'book316', 4),
(131, 'a simple book', 3, 15, 3, 4, 215, 149.25, 'book315', 4),
(132, 'a simple book', 3, 14, 3, 4, 214, 139.29999999999998, 'book314', 4),
(133, 'a simple book', 3, 13, 3, 4, 213, 129.35, 'book313', 4),
(134, 'a simple book', 3, 12, 3, 4, 212, 119.39999999999999, 'book312', 4),
(135, 'a simple book', 3, 11, 3, 4, 211, 109.44999999999999, 'book311', 4),
(136, 'a simple book', 3, 10, 3, 4, 210, 99.5, 'book310', 4),
(137, 'a simple book', 3, 9, 3, 4, 209, 89.55, 'book39', 4),
(138, 'a simple book', 3, 8, 3, 4, 208, 79.6, 'book38', 4),
(139, 'a simple book', 3, 7, 3, 4, 207, 69.64999999999999, 'book37', 4),
(140, 'a simple book', 3, 6, 3, 4, 206, 59.699999999999996, 'book36', 4),
(141, 'a simple book', 3, 5, 3, 4, 205, 49.75, 'book35', 4),
(142, 'a simple book', 3, 4, 3, 4, 204, 39.8, 'book34', 4),
(143, 'a simple book', 3, 3, 3, 4, 203, 29.849999999999998, 'book33', 4),
(144, 'a simple book', 3, 2, 3, 4, 202, 19.9, 'book32', 4),
(145, 'a simple book', 3, 33, 3, 4, 233, 328.34999999999997, 'book333', 4),
(146, 'a simple book', 3, 32, 3, 4, 232, 318.4, 'book332', 4),
(147, 'a simple book', 3, 31, 3, 4, 231, 308.45, 'book331', 4),
(148, 'a simple book', 3, 30, 3, 4, 230, 298.5, 'book330', 4),
(149, 'a simple book', 3, 29, 3, 4, 229, 288.54999999999995, 'book329', 4),
(150, 'a simple book', 3, 28, 3, 4, 228, 278.59999999999997, 'book328', 4),
(151, 'a simple book', 3, 27, 3, 4, 227, 268.65, 'book327', 4),
(152, 'a simple book', 3, 26, 3, 4, 226, 258.7, 'book326', 4),
(153, 'a simple book', 3, 25, 3, 4, 225, 248.74999999999997, 'book325', 4),
(154, 'a simple book', 3, 24, 3, 4, 224, 238.79999999999998, 'book324', 4),
(155, 'a simple book', 3, 23, 3, 4, 223, 228.85, 'book323', 4),
(156, 'a simple book', 3, 22, 3, 4, 222, 218.89999999999998, 'book322', 4),
(157, 'a simple book', 3, 21, 3, 4, 221, 208.95, 'book321', 4),
(158, 'a simple book', 3, 20, 3, 4, 220, 199, 'book320', 4),
(159, 'a simple book', 3, 19, 3, 4, 219, 189.04999999999998, 'book319', 4),
(160, 'a simple book', 3, 18, 3, 4, 218, 179.1, 'book318', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_BOOKS_AUTHOR`
--

CREATE TABLE `PUBLISHING_BOOKS_AUTHOR` (
  `books_id` bigint NOT NULL,
  `authors_authorId` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `PUBLISHING_BOOKS_AUTHOR`
--

INSERT INTO `PUBLISHING_BOOKS_AUTHOR` (`books_id`, `authors_authorId`) VALUES
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(81, 6),
(82, 6),
(83, 6),
(84, 6),
(85, 6),
(86, 6),
(87, 6),
(88, 6),
(89, 6),
(90, 6),
(91, 6),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(96, 6),
(97, 6),
(98, 6),
(99, 6),
(100, 6),
(101, 6),
(102, 6),
(103, 6),
(104, 6),
(105, 6),
(106, 6),
(107, 6),
(108, 6),
(109, 6),
(110, 6),
(111, 6),
(112, 6),
(113, 6),
(114, 6),
(115, 6),
(116, 6),
(117, 6),
(118, 6),
(119, 6),
(120, 6),
(2, 8),
(4, 8),
(6, 8),
(8, 8),
(10, 8),
(12, 8),
(14, 8),
(15, 8),
(17, 8),
(19, 8),
(21, 8),
(23, 8),
(25, 8),
(27, 8),
(29, 8),
(31, 8),
(34, 8),
(36, 8),
(38, 8),
(40, 8),
(42, 8),
(44, 8),
(46, 8),
(48, 8),
(49, 8),
(51, 8),
(53, 8),
(55, 8),
(57, 8),
(59, 8),
(61, 8),
(63, 8),
(65, 8),
(67, 8),
(69, 8),
(71, 8),
(73, 8),
(75, 8),
(77, 8),
(79, 8),
(81, 8),
(83, 8),
(85, 8),
(87, 8),
(89, 8),
(91, 8),
(93, 8),
(95, 8),
(97, 8),
(99, 8),
(101, 8),
(103, 8),
(105, 8),
(107, 8),
(109, 8),
(111, 8),
(114, 8),
(116, 8),
(118, 8),
(120, 8),
(121, 8),
(123, 8),
(125, 8),
(127, 8),
(130, 8),
(132, 8),
(134, 8),
(136, 8),
(138, 8),
(140, 8),
(142, 8),
(144, 8),
(146, 8),
(148, 8),
(150, 8),
(152, 8),
(154, 8),
(156, 8),
(158, 8),
(160, 8),
(2, 9),
(4, 9),
(6, 9),
(8, 9),
(10, 9),
(12, 9),
(14, 9),
(15, 9),
(17, 9),
(19, 9),
(21, 9),
(23, 9),
(25, 9),
(27, 9),
(29, 9),
(31, 9),
(34, 9),
(36, 9),
(38, 9),
(40, 9),
(41, 9),
(43, 9),
(45, 9),
(47, 9),
(50, 9),
(52, 9),
(54, 9),
(56, 9),
(58, 9),
(60, 9),
(62, 9),
(64, 9),
(66, 9),
(68, 9),
(70, 9),
(72, 9),
(74, 9),
(76, 9),
(78, 9),
(80, 9),
(81, 9),
(83, 9),
(85, 9),
(87, 9),
(89, 9),
(91, 9),
(93, 9),
(95, 9),
(97, 9),
(99, 9),
(101, 9),
(103, 9),
(105, 9),
(107, 9),
(109, 9),
(111, 9),
(114, 9),
(116, 9),
(118, 9),
(120, 9),
(122, 9),
(124, 9),
(126, 9),
(128, 9),
(129, 9),
(131, 9),
(133, 9),
(135, 9),
(137, 9),
(139, 9),
(141, 9),
(143, 9),
(145, 9),
(147, 9),
(149, 9),
(151, 9),
(153, 9),
(155, 9),
(157, 9),
(159, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_BOOKS_STATISTICS`
--

CREATE TABLE `PUBLISHING_BOOKS_STATISTICS` (
  `BOOK_STATISTICS_ID` bigint NOT NULL,
  `id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `PUBLISHING_BOOKS_STATISTICS`
--

INSERT INTO `PUBLISHING_BOOKS_STATISTICS` (`BOOK_STATISTICS_ID`, `id`) VALUES
(5, 1),
(7, 2),
(10, 3),
(11, 4),
(12, 5),
(13, 6),
(14, 7),
(15, 8),
(16, 9),
(17, 10),
(18, 11),
(19, 12),
(20, 13),
(21, 14),
(22, 15),
(23, 16),
(24, 17),
(25, 18),
(26, 19),
(27, 20),
(28, 21),
(29, 22),
(30, 23),
(31, 24),
(32, 25),
(33, 26),
(34, 27),
(35, 28),
(36, 29),
(37, 30),
(38, 31),
(39, 32),
(40, 33),
(41, 34),
(42, 35),
(43, 36),
(44, 37),
(45, 38),
(46, 39),
(47, 40),
(48, 41),
(49, 42),
(50, 43),
(51, 44),
(52, 45),
(53, 46),
(54, 47),
(55, 48),
(56, 49),
(57, 50),
(58, 51),
(59, 52),
(60, 53),
(61, 54),
(62, 55),
(63, 56),
(64, 57),
(65, 58),
(66, 59),
(67, 60),
(68, 61),
(69, 62),
(70, 63),
(71, 64),
(72, 65),
(73, 66),
(74, 67),
(75, 68),
(76, 69),
(77, 70),
(78, 71),
(79, 72),
(80, 73),
(81, 74),
(82, 75),
(83, 76),
(84, 77),
(85, 78),
(86, 79),
(87, 80),
(88, 81),
(89, 82),
(90, 83),
(91, 84),
(92, 85),
(93, 86),
(94, 87),
(95, 88),
(96, 89),
(97, 90),
(98, 91),
(99, 92),
(100, 93),
(101, 94),
(102, 95),
(103, 96),
(104, 97),
(105, 98),
(106, 99),
(107, 100),
(108, 101),
(109, 102),
(110, 103),
(111, 104),
(112, 105),
(113, 106),
(114, 107),
(115, 108),
(116, 109),
(117, 110),
(118, 111),
(119, 112),
(120, 113),
(121, 114),
(122, 115),
(123, 116),
(124, 117),
(125, 118),
(126, 119),
(127, 120),
(128, 121),
(129, 122),
(130, 123),
(131, 124),
(132, 125),
(133, 126),
(134, 127),
(135, 128),
(136, 129),
(137, 130),
(138, 131),
(139, 132),
(140, 133),
(141, 134),
(142, 135),
(143, 136),
(144, 137),
(145, 138),
(146, 139),
(147, 140),
(148, 141),
(149, 142),
(150, 143),
(151, 144),
(152, 145),
(153, 146),
(154, 147),
(155, 148),
(156, 149),
(157, 150),
(158, 151),
(159, 152),
(160, 153),
(161, 154),
(162, 155),
(163, 156),
(164, 157),
(165, 158),
(166, 159),
(167, 160);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_BOOK_KEYWORDS`
--

CREATE TABLE `PUBLISHING_BOOK_KEYWORDS` (
  `Book_id` bigint NOT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `PUBLISHING_BOOK_KEYWORDS`
--

INSERT INTO `PUBLISHING_BOOK_KEYWORDS` (`Book_id`, `keywords`) VALUES
(1, 'sports'),
(1, 'socker'),
(2, 'sports'),
(2, 'socker'),
(3, 'sports'),
(3, 'socker'),
(4, 'sports'),
(4, 'socker'),
(5, 'sports'),
(5, 'socker'),
(6, 'sports'),
(6, 'socker'),
(7, 'sports'),
(7, 'socker'),
(8, 'sports'),
(8, 'socker'),
(9, 'sports'),
(9, 'socker'),
(10, 'sports'),
(10, 'socker'),
(11, 'sports'),
(11, 'socker'),
(12, 'sports'),
(12, 'socker'),
(13, 'sports'),
(13, 'socker'),
(14, 'sports'),
(14, 'socker'),
(15, 'sports'),
(15, 'socker'),
(16, 'sports'),
(16, 'socker'),
(17, 'sports'),
(17, 'socker'),
(18, 'sports'),
(18, 'socker'),
(19, 'sports'),
(19, 'socker'),
(20, 'sports'),
(20, 'socker'),
(21, 'sports'),
(21, 'socker'),
(22, 'sports'),
(22, 'socker'),
(23, 'sports'),
(23, 'socker'),
(24, 'sports'),
(24, 'socker'),
(25, 'sports'),
(25, 'socker'),
(26, 'sports'),
(26, 'socker'),
(27, 'sports'),
(27, 'socker'),
(28, 'sports'),
(28, 'socker'),
(29, 'sports'),
(29, 'socker'),
(30, 'sports'),
(30, 'socker'),
(31, 'sports'),
(31, 'socker'),
(32, 'sports'),
(32, 'socker'),
(33, 'sports'),
(33, 'socker'),
(34, 'sports'),
(34, 'socker'),
(35, 'sports'),
(35, 'socker'),
(36, 'sports'),
(36, 'socker'),
(37, 'sports'),
(37, 'socker'),
(38, 'sports'),
(38, 'socker'),
(39, 'sports'),
(39, 'socker'),
(40, 'sports'),
(40, 'socker'),
(41, 'science fiction'),
(41, 'star trek'),
(41, 'enterprise'),
(42, 'science fiction'),
(42, 'star trek'),
(42, 'enterprise'),
(43, 'science fiction'),
(43, 'star trek'),
(43, 'enterprise'),
(44, 'science fiction'),
(44, 'star trek'),
(44, 'enterprise'),
(45, 'science fiction'),
(45, 'star trek'),
(45, 'enterprise'),
(46, 'science fiction'),
(46, 'star trek'),
(46, 'enterprise'),
(47, 'science fiction'),
(47, 'star trek'),
(47, 'enterprise'),
(48, 'science fiction'),
(48, 'star trek'),
(48, 'enterprise'),
(49, 'science fiction'),
(49, 'star trek'),
(49, 'enterprise'),
(50, 'science fiction'),
(50, 'star trek'),
(50, 'enterprise'),
(51, 'science fiction'),
(51, 'star trek'),
(51, 'enterprise'),
(52, 'science fiction'),
(52, 'star trek'),
(52, 'enterprise'),
(53, 'science fiction'),
(53, 'star trek'),
(53, 'enterprise'),
(54, 'science fiction'),
(54, 'star trek'),
(54, 'enterprise'),
(55, 'science fiction'),
(55, 'star trek'),
(55, 'enterprise'),
(56, 'science fiction'),
(56, 'star trek'),
(56, 'enterprise'),
(57, 'science fiction'),
(57, 'star trek'),
(57, 'enterprise'),
(58, 'science fiction'),
(58, 'star trek'),
(58, 'enterprise'),
(59, 'science fiction'),
(59, 'star trek'),
(59, 'enterprise'),
(60, 'science fiction'),
(60, 'star trek'),
(60, 'enterprise'),
(61, 'science fiction'),
(61, 'star trek'),
(61, 'enterprise'),
(62, 'science fiction'),
(62, 'star trek'),
(62, 'enterprise'),
(63, 'science fiction'),
(63, 'star trek'),
(63, 'enterprise'),
(64, 'science fiction'),
(64, 'star trek'),
(64, 'enterprise'),
(65, 'science fiction'),
(65, 'star trek'),
(65, 'enterprise'),
(66, 'science fiction'),
(66, 'star trek'),
(66, 'enterprise'),
(67, 'science fiction'),
(67, 'star trek'),
(67, 'enterprise'),
(68, 'science fiction'),
(68, 'star trek'),
(68, 'enterprise'),
(69, 'science fiction'),
(69, 'star trek'),
(69, 'enterprise'),
(70, 'science fiction'),
(70, 'star trek'),
(70, 'enterprise'),
(71, 'science fiction'),
(71, 'star trek'),
(71, 'enterprise'),
(72, 'science fiction'),
(72, 'star trek'),
(72, 'enterprise'),
(73, 'science fiction'),
(73, 'star trek'),
(73, 'enterprise'),
(74, 'science fiction'),
(74, 'star trek'),
(74, 'enterprise'),
(75, 'science fiction'),
(75, 'star trek'),
(75, 'enterprise'),
(76, 'science fiction'),
(76, 'star trek'),
(76, 'enterprise'),
(77, 'science fiction'),
(77, 'star trek'),
(77, 'enterprise'),
(78, 'science fiction'),
(78, 'star trek'),
(78, 'enterprise'),
(79, 'science fiction'),
(79, 'star trek'),
(79, 'enterprise'),
(80, 'science fiction'),
(80, 'star trek'),
(80, 'enterprise'),
(81, 'sports'),
(81, 'socker'),
(82, 'sports'),
(82, 'socker'),
(83, 'sports'),
(83, 'socker'),
(84, 'sports'),
(84, 'socker'),
(85, 'sports'),
(85, 'socker'),
(86, 'sports'),
(86, 'socker'),
(87, 'sports'),
(87, 'socker'),
(88, 'sports'),
(88, 'socker'),
(89, 'sports'),
(89, 'socker'),
(90, 'sports'),
(90, 'socker'),
(91, 'sports'),
(91, 'socker'),
(92, 'sports'),
(92, 'socker'),
(93, 'sports'),
(93, 'socker'),
(94, 'sports'),
(94, 'socker'),
(95, 'sports'),
(95, 'socker'),
(96, 'sports'),
(96, 'socker'),
(97, 'sports'),
(97, 'socker'),
(98, 'sports'),
(98, 'socker'),
(99, 'sports'),
(99, 'socker'),
(100, 'sports'),
(100, 'socker'),
(101, 'sports'),
(101, 'socker'),
(102, 'sports'),
(102, 'socker'),
(103, 'sports'),
(103, 'socker'),
(104, 'sports'),
(104, 'socker'),
(105, 'sports'),
(105, 'socker'),
(106, 'sports'),
(106, 'socker'),
(107, 'sports'),
(107, 'socker'),
(108, 'sports'),
(108, 'socker'),
(109, 'sports'),
(109, 'socker'),
(110, 'sports'),
(110, 'socker'),
(111, 'sports'),
(111, 'socker'),
(112, 'sports'),
(112, 'socker'),
(113, 'sports'),
(113, 'socker'),
(114, 'sports'),
(114, 'socker'),
(115, 'sports'),
(115, 'socker'),
(116, 'sports'),
(116, 'socker'),
(117, 'sports'),
(117, 'socker'),
(118, 'sports'),
(118, 'socker'),
(119, 'sports'),
(119, 'socker'),
(120, 'sports'),
(120, 'socker'),
(121, 'science fiction'),
(121, 'star trek'),
(121, 'enterprise'),
(122, 'science fiction'),
(122, 'star trek'),
(122, 'enterprise'),
(123, 'science fiction'),
(123, 'star trek'),
(123, 'enterprise'),
(124, 'science fiction'),
(124, 'star trek'),
(124, 'enterprise'),
(125, 'science fiction'),
(125, 'star trek'),
(125, 'enterprise'),
(126, 'science fiction'),
(126, 'star trek'),
(126, 'enterprise'),
(127, 'science fiction'),
(127, 'star trek'),
(127, 'enterprise'),
(128, 'science fiction'),
(128, 'star trek'),
(128, 'enterprise'),
(129, 'science fiction'),
(129, 'star trek'),
(129, 'enterprise'),
(130, 'science fiction'),
(130, 'star trek'),
(130, 'enterprise'),
(131, 'science fiction'),
(131, 'star trek'),
(131, 'enterprise'),
(132, 'science fiction'),
(132, 'star trek'),
(132, 'enterprise'),
(133, 'science fiction'),
(133, 'star trek'),
(133, 'enterprise'),
(134, 'science fiction'),
(134, 'star trek'),
(134, 'enterprise'),
(135, 'science fiction'),
(135, 'star trek'),
(135, 'enterprise'),
(136, 'science fiction'),
(136, 'star trek'),
(136, 'enterprise'),
(137, 'science fiction'),
(137, 'star trek'),
(137, 'enterprise'),
(138, 'science fiction'),
(138, 'star trek'),
(138, 'enterprise'),
(139, 'science fiction'),
(139, 'star trek'),
(139, 'enterprise'),
(140, 'science fiction'),
(140, 'star trek'),
(140, 'enterprise'),
(141, 'science fiction'),
(141, 'star trek'),
(141, 'enterprise'),
(142, 'science fiction'),
(142, 'star trek'),
(142, 'enterprise'),
(143, 'science fiction'),
(143, 'star trek'),
(143, 'enterprise'),
(144, 'science fiction'),
(144, 'star trek'),
(144, 'enterprise'),
(145, 'science fiction'),
(145, 'star trek'),
(145, 'enterprise'),
(146, 'science fiction'),
(146, 'star trek'),
(146, 'enterprise'),
(147, 'science fiction'),
(147, 'star trek'),
(147, 'enterprise'),
(148, 'science fiction'),
(148, 'star trek'),
(148, 'enterprise'),
(149, 'science fiction'),
(149, 'star trek'),
(149, 'enterprise'),
(150, 'science fiction'),
(150, 'star trek'),
(150, 'enterprise'),
(151, 'science fiction'),
(151, 'star trek'),
(151, 'enterprise'),
(152, 'science fiction'),
(152, 'star trek'),
(152, 'enterprise'),
(153, 'science fiction'),
(153, 'star trek'),
(153, 'enterprise'),
(154, 'science fiction'),
(154, 'star trek'),
(154, 'enterprise'),
(155, 'science fiction'),
(155, 'star trek'),
(155, 'enterprise'),
(156, 'science fiction'),
(156, 'star trek'),
(156, 'enterprise'),
(157, 'science fiction'),
(157, 'star trek'),
(157, 'enterprise'),
(158, 'science fiction'),
(158, 'star trek'),
(158, 'enterprise'),
(159, 'science fiction'),
(159, 'star trek'),
(159, 'enterprise'),
(160, 'science fiction'),
(160, 'star trek'),
(160, 'enterprise');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_POEMS`
--

CREATE TABLE `PUBLISHING_POEMS` (
  `era` varchar(255) DEFAULT NULL,
  `id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_PUBLISHERS`
--

CREATE TABLE `PUBLISHING_PUBLISHERS` (
  `publisherId` bigint NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `publisherName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `PUBLISHING_PUBLISHERS`
--

INSERT INTO `PUBLISHING_PUBLISHERS` (`publisherId`, `city`, `street`, `publisherName`) VALUES
(1, 'Publisher-City0', 'Publisher-Street0', 'Publisher1'),
(2, 'Publisher-City1', 'Publisher-Street1', 'Publisher2'),
(3, 'Publisher-City2', 'Publisher-Street2', 'Publisher3'),
(4, 'Publisher-City3', 'Publisher-Street3', 'Publisher4');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_SCHOOLBOOK`
--

CREATE TABLE `PUBLISHING_SCHOOLBOOK` (
  `subject` varchar(255) DEFAULT NULL,
  `SCHOOL_YEAR` int DEFAULT NULL,
  `id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_SPECIALISTBOOK`
--

CREATE TABLE `PUBLISHING_SPECIALISTBOOK` (
  `category` varchar(255) DEFAULT NULL,
  `id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PUBLISHING_STATISTICS`
--

CREATE TABLE `PUBLISHING_STATISTICS` (
  `id` bigint NOT NULL,
  `lastSold` time DEFAULT NULL,
  `sold` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Daten für Tabelle `PUBLISHING_STATISTICS`
--

INSERT INTO `PUBLISHING_STATISTICS` (`id`, `lastSold`, `sold`) VALUES
(5, '22:58:26', 650),
(7, '22:58:26', 700),
(10, '22:58:26', 550),
(11, '22:58:26', 600),
(12, '22:58:26', 450),
(13, '22:58:26', 500),
(14, '22:58:26', 350),
(15, '22:58:26', 400),
(16, '22:58:26', 250),
(17, '22:58:26', 300),
(18, '22:58:26', 150),
(19, '22:58:26', 200),
(20, '22:58:26', 50),
(21, '22:58:26', 100),
(22, '22:58:26', 0),
(23, '22:58:26', 1450),
(24, '22:58:26', 1500),
(25, '22:58:26', 1350),
(26, '22:58:26', 1400),
(27, '22:58:26', 1250),
(28, '22:58:26', 1300),
(29, '22:58:26', 1150),
(30, '22:58:26', 1200),
(31, '22:58:26', 1050),
(32, '22:58:26', 1100),
(33, '22:58:26', 950),
(34, '22:58:26', 1000),
(35, '22:58:26', 850),
(36, '22:58:26', 900),
(37, '22:58:26', 750),
(38, '22:58:26', 800),
(39, '22:58:26', 1950),
(40, '22:58:26', 1850),
(41, '22:58:26', 1900),
(42, '22:58:26', 1750),
(43, '22:58:26', 1800),
(44, '22:58:26', 1650),
(45, '22:58:26', 1700),
(46, '22:58:26', 1550),
(47, '22:58:26', 1600),
(48, '22:58:26', 1950),
(49, '22:58:26', 1900),
(50, '22:58:26', 1850),
(51, '22:58:26', 1800),
(52, '22:58:26', 1750),
(53, '22:58:26', 1700),
(54, '22:58:26', 1650),
(55, '22:58:26', 1600),
(56, '22:58:26', 700),
(57, '22:58:26', 750),
(58, '22:58:26', 600),
(59, '22:58:26', 650),
(60, '22:58:26', 500),
(61, '22:58:26', 550),
(62, '22:58:26', 400),
(63, '22:58:26', 450),
(64, '22:58:26', 300),
(65, '22:58:26', 350),
(66, '22:58:26', 200),
(67, '22:58:26', 250),
(68, '22:58:26', 100),
(69, '22:58:26', 150),
(70, '22:58:26', 0),
(71, '22:58:26', 50),
(72, '22:58:26', 1500),
(73, '22:58:26', 1550),
(74, '22:58:26', 1400),
(75, '22:58:26', 1450),
(76, '22:58:26', 1300),
(77, '22:58:26', 1350),
(78, '22:58:26', 1200),
(79, '22:58:26', 1250),
(80, '22:58:26', 1100),
(81, '22:58:26', 1150),
(82, '22:58:26', 1000),
(83, '22:58:26', 1050),
(84, '22:58:26', 900),
(85, '22:58:26', 950),
(86, '22:58:26', 800),
(87, '22:58:26', 850),
(88, '22:58:26', 800),
(89, '22:58:26', 750),
(90, '22:58:26', 700),
(91, '22:58:26', 650),
(92, '22:58:26', 600),
(93, '22:58:26', 550),
(94, '22:58:26', 500),
(95, '22:58:26', 450),
(96, '22:58:26', 400),
(97, '22:58:26', 350),
(98, '22:58:26', 300),
(99, '22:58:26', 250),
(100, '22:58:26', 200),
(101, '22:58:26', 150),
(102, '22:58:26', 100),
(103, '22:58:26', 50),
(104, '22:58:26', 1600),
(105, '22:58:26', 1550),
(106, '22:58:26', 1500),
(107, '22:58:26', 1450),
(108, '22:58:26', 1400),
(109, '22:58:26', 1350),
(110, '22:58:26', 1300),
(111, '22:58:26', 1250),
(112, '22:58:26', 1200),
(113, '22:58:26', 1150),
(114, '22:58:26', 1100),
(115, '22:58:26', 1050),
(116, '22:58:26', 1000),
(117, '22:58:26', 950),
(118, '22:58:26', 900),
(119, '22:58:26', 850),
(120, '22:58:26', 1950),
(121, '22:58:26', 1900),
(122, '22:58:26', 1850),
(123, '22:58:26', 1800),
(124, '22:58:26', 1750),
(125, '22:58:26', 1700),
(126, '22:58:26', 1650),
(127, '22:58:26', 0),
(128, '22:58:26', 1800),
(129, '22:58:26', 1750),
(130, '22:58:26', 1700),
(131, '22:58:26', 50),
(132, '22:58:26', 0),
(133, '22:58:26', 1850),
(134, '22:58:26', 1900),
(135, '22:58:26', 1950),
(136, '22:58:26', 850),
(137, '22:58:26', 800),
(138, '22:58:26', 750),
(139, '22:58:26', 700),
(140, '22:58:26', 650),
(141, '22:58:26', 600),
(142, '22:58:26', 550),
(143, '22:58:26', 500),
(144, '22:58:26', 450),
(145, '22:58:26', 400),
(146, '22:58:26', 350),
(147, '22:58:26', 300),
(148, '22:58:26', 250),
(149, '22:58:26', 200),
(150, '22:58:26', 150),
(151, '22:58:26', 100),
(152, '22:58:26', 1650),
(153, '22:58:26', 1600),
(154, '22:58:26', 1550),
(155, '22:58:26', 1500),
(156, '22:58:26', 1450),
(157, '22:58:26', 1400),
(158, '22:58:26', 1350),
(159, '22:58:26', 1300),
(160, '22:58:26', 1250),
(161, '22:58:26', 1200),
(162, '22:58:26', 1150),
(163, '22:58:26', 1100),
(164, '22:58:26', 1050),
(165, '22:58:26', 1000),
(166, '22:58:26', 950),
(167, '22:58:26', 900);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `PUBLISHING_AUTHORS`
--
ALTER TABLE `PUBLISHING_AUTHORS`
  ADD PRIMARY KEY (`authorId`),
  ADD UNIQUE KEY `UK_qkaixabgc5he9a80sbgg8ev59` (`givenNameString`),
  ADD UNIQUE KEY `UK_7olq4y6git25jn0p20hsctxv7` (`lastname`);

--
-- Indizes für die Tabelle `PUBLISHING_BOOKS`
--
ALTER TABLE `PUBLISHING_BOOKS`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK5y6xltel1ioo2qkv4iywu356o` (`isbn1`,`isbn2`,`isbn3`,`isbn4`),
  ADD UNIQUE KEY `UK_71uyd6sdgw41tr4n5sqwsb7xk` (`title`),
  ADD KEY `FK3fkhfh001c0t5r9tyg48qguth` (`publisher_publisherId`);

--
-- Indizes für die Tabelle `PUBLISHING_BOOKS_AUTHOR`
--
ALTER TABLE `PUBLISHING_BOOKS_AUTHOR`
  ADD PRIMARY KEY (`books_id`,`authors_authorId`),
  ADD KEY `FKl2b27u8bdnptnf4pmo86qe4cl` (`authors_authorId`);

--
-- Indizes für die Tabelle `PUBLISHING_BOOKS_STATISTICS`
--
ALTER TABLE `PUBLISHING_BOOKS_STATISTICS`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_fsnctvf5fxa6n7sc27jlxdbl7` (`BOOK_STATISTICS_ID`);

--
-- Indizes für die Tabelle `PUBLISHING_BOOK_KEYWORDS`
--
ALTER TABLE `PUBLISHING_BOOK_KEYWORDS`
  ADD KEY `FKt5v5fei0iq1j7gnw4rksqp2yn` (`Book_id`);

--
-- Indizes für die Tabelle `PUBLISHING_POEMS`
--
ALTER TABLE `PUBLISHING_POEMS`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `PUBLISHING_PUBLISHERS`
--
ALTER TABLE `PUBLISHING_PUBLISHERS`
  ADD PRIMARY KEY (`publisherId`),
  ADD UNIQUE KEY `UK_44k18eo8d1pp2xypavmaanx7s` (`publisherName`);

--
-- Indizes für die Tabelle `PUBLISHING_SCHOOLBOOK`
--
ALTER TABLE `PUBLISHING_SCHOOLBOOK`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `PUBLISHING_SPECIALISTBOOK`
--
ALTER TABLE `PUBLISHING_SPECIALISTBOOK`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `PUBLISHING_STATISTICS`
--
ALTER TABLE `PUBLISHING_STATISTICS`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `PUBLISHING_BOOKS`
--
ALTER TABLE `PUBLISHING_BOOKS`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `PUBLISHING_BOOKS`
--
ALTER TABLE `PUBLISHING_BOOKS`
  ADD CONSTRAINT `FK3fkhfh001c0t5r9tyg48qguth` FOREIGN KEY (`publisher_publisherId`) REFERENCES `PUBLISHING_PUBLISHERS` (`publisherId`);

--
-- Constraints der Tabelle `PUBLISHING_BOOKS_AUTHOR`
--
ALTER TABLE `PUBLISHING_BOOKS_AUTHOR`
  ADD CONSTRAINT `FK1c7d3t7x75n12pb8awaqydwe8` FOREIGN KEY (`books_id`) REFERENCES `PUBLISHING_BOOKS` (`id`),
  ADD CONSTRAINT `FKl2b27u8bdnptnf4pmo86qe4cl` FOREIGN KEY (`authors_authorId`) REFERENCES `PUBLISHING_AUTHORS` (`authorId`);

--
-- Constraints der Tabelle `PUBLISHING_BOOKS_STATISTICS`
--
ALTER TABLE `PUBLISHING_BOOKS_STATISTICS`
  ADD CONSTRAINT `FKofw7i2cd4rj7s5n09gvgck8ov` FOREIGN KEY (`BOOK_STATISTICS_ID`) REFERENCES `PUBLISHING_STATISTICS` (`id`),
  ADD CONSTRAINT `FKq8rs4ou51h09tqg7w567412pt` FOREIGN KEY (`id`) REFERENCES `PUBLISHING_BOOKS` (`id`);

--
-- Constraints der Tabelle `PUBLISHING_BOOK_KEYWORDS`
--
ALTER TABLE `PUBLISHING_BOOK_KEYWORDS`
  ADD CONSTRAINT `FKt5v5fei0iq1j7gnw4rksqp2yn` FOREIGN KEY (`Book_id`) REFERENCES `PUBLISHING_BOOKS` (`id`);

--
-- Constraints der Tabelle `PUBLISHING_POEMS`
--
ALTER TABLE `PUBLISHING_POEMS`
  ADD CONSTRAINT `FK1re9xbvd29ej5h8gnek73v8xm` FOREIGN KEY (`id`) REFERENCES `PUBLISHING_BOOKS` (`id`);

--
-- Constraints der Tabelle `PUBLISHING_SCHOOLBOOK`
--
ALTER TABLE `PUBLISHING_SCHOOLBOOK`
  ADD CONSTRAINT `FKhhemg4orngnvk5ijuw040k4cl` FOREIGN KEY (`id`) REFERENCES `PUBLISHING_BOOKS` (`id`);

--
-- Constraints der Tabelle `PUBLISHING_SPECIALISTBOOK`
--
ALTER TABLE `PUBLISHING_SPECIALISTBOOK`
  ADD CONSTRAINT `FKm3s1por74rklnnc7hw55ynfby` FOREIGN KEY (`id`) REFERENCES `PUBLISHING_BOOKS` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
