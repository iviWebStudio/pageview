-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 17 2022 г., 01:47
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `infusemedia_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `page_views`
--

CREATE TABLE `page_views` (
  `ID` int(16) UNSIGNED NOT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `view_date` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `page_url` varchar(255) NOT NULL DEFAULT '',
  `views_count` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `page_views`
--

INSERT INTO `page_views` (`ID`, `ip_address`, `user_agent`, `view_date`, `page_url`, `views_count`) VALUES
(1, '194.185.103.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 18),
(2, '194.185.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 13),
(3, '194.185.104.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 15),
(4, '194.185.104.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 16),
(5, '194.185.103.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index2.html', 18),
(6, '194.185.103.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 18),
(7, '194.185.104.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 25),
(8, '194.185.102.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:07', 'http://localhost/infusemedia/index2.html', 11),
(9, '194.185.104.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 18),
(10, '194.185.101.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 13),
(11, '194.185.101.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index2.html', 19),
(12, '194.185.101.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 17),
(13, '194.185.101.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index2.html', 18),
(14, '194.185.104.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index3.html', 13),
(15, '194.185.101.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 16),
(16, '194.185.100.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 22),
(17, '194.185.103.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 20),
(18, '194.185.102.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 17),
(19, '194.185.102.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index1.html', 20),
(20, '194.185.102.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 21),
(21, '194.185.102.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 18),
(22, '194.185.100.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 17),
(23, '194.185.104.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:01', 'http://localhost/infusemedia/index3.html', 11),
(24, '194.185.104.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 17),
(25, '194.185.102.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index2.html', 17),
(26, '194.185.101.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 22),
(27, '194.185.104.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 17),
(28, '194.185.101.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 17),
(29, '194.185.104.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 14),
(30, '194.185.103.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:08', 'http://localhost/infusemedia/index1.html', 15),
(31, '194.185.100.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 11),
(32, '194.185.101.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 13),
(33, '194.185.102.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 17),
(34, '194.185.100.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index3.html', 18),
(35, '194.185.102.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 17),
(36, '194.185.102.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 18),
(37, '194.185.100.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 19),
(38, '194.185.103.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 21),
(39, '194.185.102.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 20),
(40, '194.185.103.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 8),
(41, '194.185.102.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 18),
(42, '194.185.100.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index1.html', 15),
(43, '194.185.101.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 15),
(44, '194.185.104.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:07', 'http://localhost/infusemedia/index1.html', 13),
(45, '194.185.104.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 13),
(46, '194.185.102.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 21),
(47, '194.185.100.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 14),
(48, '194.185.104.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index3.html', 22),
(49, '194.185.102.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 14),
(50, '194.185.101.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index1.html', 22),
(51, '194.185.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index1.html', 20),
(52, '194.185.102.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 15),
(53, '194.185.101.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index2.html', 18),
(54, '194.185.103.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index3.html', 23),
(55, '194.185.104.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 14),
(56, '194.185.101.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index1.html', 12),
(57, '194.185.104.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 8),
(58, '194.185.101.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index1.html', 13),
(59, '194.185.104.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index2.html', 16),
(60, '194.185.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 17),
(61, '194.185.102.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 14),
(62, '194.185.104.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:08', 'http://localhost/infusemedia/index1.html', 11),
(63, '194.185.102.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index2.html', 18),
(64, '194.185.101.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:06', 'http://localhost/infusemedia/index3.html', 15),
(65, '194.185.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 16),
(66, '194.185.103.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:08', 'http://localhost/infusemedia/index3.html', 14),
(67, '194.185.103.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 18),
(68, '194.185.104.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:07', 'http://localhost/infusemedia/index1.html', 11),
(69, '194.185.100.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 18),
(70, '194.185.103.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 18),
(71, '194.185.102.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 20),
(72, '194.185.101.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index1.html', 18),
(73, '194.185.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index2.html', 18),
(74, '194.185.102.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 12),
(75, '194.185.104.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 22),
(76, '194.185.101.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 14),
(77, '194.185.101.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 12),
(78, '194.185.102.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 16),
(79, '194.185.104.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 15),
(80, '194.185.103.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 15),
(81, '194.185.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index3.html', 13),
(82, '194.185.102.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 17),
(83, '194.185.101.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 17),
(84, '194.185.102.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 13),
(85, '194.185.103.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 17),
(86, '194.185.103.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index1.html', 13),
(87, '194.185.103.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index2.html', 11),
(88, '194.185.103.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index3.html', 19),
(89, '194.185.101.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 10),
(90, '194.185.102.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index2.html', 15),
(91, '194.185.101.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:08', 'http://localhost/infusemedia/index2.html', 21),
(92, '194.185.104.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 22),
(93, '194.185.101.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index3.html', 10),
(94, '194.185.104.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 14),
(95, '194.185.102.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 19),
(96, '194.185.100.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index3.html', 18),
(97, '194.185.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index3.html', 17),
(98, '194.185.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index2.html', 14),
(99, '194.185.103.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index1.html', 14),
(100, '194.185.101.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 16),
(101, '194.185.101.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 13),
(102, '194.185.102.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 17),
(103, '194.185.104.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 21),
(104, '194.185.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 8),
(105, '194.185.104.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 14),
(106, '194.185.100.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:10', 'http://localhost/infusemedia/index3.html', 18),
(107, '194.185.103.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index3.html', 9),
(108, '194.185.101.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:09', 'http://localhost/infusemedia/index3.html', 11),
(109, '194.185.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 14),
(110, '194.185.100.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 17),
(111, '194.185.103.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 10),
(112, '194.185.103.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 20),
(113, '194.185.100.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 13),
(114, '194.185.100.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index2.html', 15),
(115, '194.185.103.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:08', 'http://localhost/infusemedia/index1.html', 10),
(116, '194.185.103.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index2.html', 14),
(117, '194.185.103.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 13),
(118, '194.185.103.102', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:12', 'http://localhost/infusemedia/index3.html', 18),
(119, '194.185.104.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:53.0) Gecko/20100101 Firefox/53.0', '2022-12-17 01:42:07', 'http://localhost/infusemedia/index1.html', 6),
(120, '194.185.100.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2022-12-17 01:42:11', 'http://localhost/infusemedia/index1.html', 16);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `page_views`
--
ALTER TABLE `page_views`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_request` (`ip_address`,`user_agent`,`page_url`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `page_views`
--
ALTER TABLE `page_views`
  MODIFY `ID` int(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
