-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 14 2026 г., 01:57
-- Версия сервера: 10.1.48-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `computerClub1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `patronymic` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `telegram` varchar(50) DEFAULT NULL,
  `birthDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`ID`, `name`, `surname`, `patronymic`, `phone`, `password`, `gender_id`, `telegram`, `birthDate`) VALUES
(1, 'Дмитрий', 'Александров', 'Сергеевич', 79031234567, 'adminPass1', 2, '@dmitry_admin', '1999-03-15'),
(2, 'Елена', 'Петрова', 'Викторовна', 79142345678, 'adminPass2', 1, '@elena_petrova', '2001-07-22'),
(3, 'Максим', 'Иванов', 'Андреевич', 79253456789, 'adminPass3', 2, '@max_admin', '2000-11-05'),
(4, 'Анна', 'Смирнова', 'Владимировна', 79364567890, 'adminPass4', 1, NULL, '2002-09-30'),
(5, 'Сергей', 'Козлов', 'Игоревич', 79475678901, 'adminPass5', 2, '@sergey_admin', '1999-01-18');

-- --------------------------------------------------------

--
-- Структура таблицы `booking`
--

CREATE TABLE `booking` (
  `ID` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `date` date NOT NULL,
  `duration` time NOT NULL,
  `spot_id` int(11) DEFAULT NULL,
  `totalPrice` int(11) NOT NULL,
  `paymentMethod_id` int(11) DEFAULT NULL,
  `paymentStatus_id` int(11) DEFAULT NULL,
  `bookingStatus_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `booking`
--

INSERT INTO `booking` (`ID`, `startTime`, `endTime`, `date`, `duration`, `spot_id`, `totalPrice`, `paymentMethod_id`, `paymentStatus_id`, `bookingStatus_id`, `client_id`, `admin_id`, `package_id`) VALUES
(1, '2026-02-14 18:00:00', '2026-02-14 21:00:00', '2026-02-14', '03:00:00', 5, 270, 1, 1, 4, 3, 2, 1),
(2, '2026-03-10 20:00:00', '2026-03-11 02:00:00', '2026-03-10', '06:00:00', 22, 420, 2, 1, 4, 5, 3, 7),
(3, '2026-02-01 14:00:00', '2026-02-01 17:00:00', '2026-02-01', '03:00:00', 3, 270, 1, 2, 5, 1, 1, 1),
(4, '2026-02-15 19:00:00', '2026-02-16 00:00:00', '2026-02-15', '05:00:00', 8, 350, 1, 2, 5, 1, 2, 2),
(5, '2026-03-05 13:00:00', '2026-03-05 19:00:00', '2026-03-05', '06:00:00', 12, 300, 2, 2, 5, 1, 3, 4),
(6, '2026-04-10 15:00:00', '2026-04-10 21:00:00', '2026-04-10', '06:00:00', 21, 360, 1, 2, 5, 1, 4, 8),
(7, '2026-02-03 20:00:00', '2026-02-03 23:00:00', '2026-02-03', '03:00:00', 24, 300, 1, 2, 5, 2, 1, 5),
(8, '2026-02-18 22:00:00', '2026-02-19 03:00:00', '2026-02-18', '05:00:00', 21, 400, 2, 2, 5, 2, 2, 6),
(9, '2026-03-12 14:00:00', '2026-03-12 20:00:00', '2026-03-12', '06:00:00', 7, 360, 1, 2, 5, 2, 3, 4),
(10, '2026-04-01 01:00:00', '2026-04-01 07:00:00', '2026-04-01', '06:00:00', 25, 420, 2, 2, 5, 2, 5, 7),
(11, '2026-04-20 16:00:00', '2026-04-20 22:00:00', '2026-04-20', '06:00:00', 23, 360, 1, 2, 5, 2, 4, 8),
(12, '2026-02-05 12:00:00', '2026-02-05 18:00:00', '2026-02-05', '06:00:00', 10, 300, 1, 2, 5, 3, 1, 4),
(13, '2026-02-14 18:00:00', '2026-02-14 23:00:00', '2026-02-14', '05:00:00', 22, 400, 2, 2, 5, 3, 2, 6),
(14, '2026-02-25 20:00:00', '2026-02-25 23:00:00', '2026-02-25', '03:00:00', 2, 270, 1, 2, 5, 3, 3, 1),
(15, '2026-03-08 14:00:00', '2026-03-08 20:00:00', '2026-03-08', '06:00:00', 24, 420, 2, 2, 5, 3, 4, 7),
(16, '2026-04-05 10:00:00', '2026-04-05 16:00:00', '2026-04-05', '06:00:00', 23, 360, 1, 2, 5, 3, 5, 8),
(17, '2026-04-25 19:00:00', '2026-04-26 00:00:00', '2026-04-25', '05:00:00', 20, 350, 2, 2, 5, 3, 1, 2),
(18, '2026-02-07 23:00:00', '2026-02-08 04:00:00', '2026-02-07', '05:00:00', 21, 400, 1, 2, 5, 4, 2, 6),
(19, '2026-02-20 13:00:00', '2026-02-20 19:00:00', '2026-02-20', '06:00:00', 6, 300, 2, 2, 5, 4, 3, 4),
(20, '2026-03-15 21:00:00', '2026-03-16 02:00:00', '2026-03-15', '05:00:00', 14, 350, 1, 2, 5, 4, 4, 2),
(21, '2026-04-08 15:00:00', '2026-04-08 21:00:00', '2026-04-08', '06:00:00', 25, 420, 2, 2, 5, 4, 5, 7),
(22, '2026-04-22 18:00:00', '2026-04-22 21:00:00', '2026-04-22', '03:00:00', 23, 300, 1, 2, 5, 4, 1, 5),
(23, '2026-02-02 16:00:00', '2026-02-02 19:00:00', '2026-02-02', '03:00:00', 1, 270, 1, 2, 5, 5, 1, 1),
(24, '2026-02-10 20:00:00', '2026-02-11 01:00:00', '2026-02-10', '05:00:00', 9, 350, 2, 2, 5, 5, 2, 2),
(25, '2026-02-22 14:00:00', '2026-02-22 17:00:00', '2026-02-22', '03:00:00', 4, 270, 1, 2, 5, 5, 3, 1),
(26, '2026-03-01 18:00:00', '2026-03-01 23:00:00', '2026-03-01', '05:00:00', 22, 400, 2, 2, 5, 5, 4, 6),
(27, '2026-03-18 13:00:00', '2026-03-18 19:00:00', '2026-03-18', '06:00:00', 21, 360, 1, 2, 5, 5, 5, 8),
(28, '2026-04-15 22:00:00', '2026-04-16 04:00:00', '2026-04-15', '06:00:00', 24, 420, 2, 2, 5, 5, 1, 7),
(29, '2026-02-12 15:00:00', '2026-02-12 21:00:00', '2026-02-12', '06:00:00', 11, 360, 1, 2, 5, 6, 2, 4),
(30, '2026-02-28 19:00:00', '2026-02-28 22:00:00', '2026-02-28', '03:00:00', 21, 300, 2, 2, 5, 6, 3, 5),
(31, '2026-03-20 01:00:00', '2026-03-20 07:00:00', '2026-03-20', '06:00:00', 25, 420, 1, 2, 5, 6, 4, 7),
(32, '2026-04-03 17:00:00', '2026-04-03 22:00:00', '2026-04-03', '05:00:00', 13, 350, 2, 2, 5, 6, 5, 2),
(33, '2026-04-18 14:00:00', '2026-04-18 20:00:00', '2026-04-18', '06:00:00', 22, 360, 1, 2, 5, 6, 1, 8),
(34, '2026-02-09 10:00:00', '2026-02-09 13:00:00', '2026-02-09', '03:00:00', 17, 270, 1, 2, 5, 7, 1, 1),
(35, '2026-03-03 21:00:00', '2026-03-04 03:00:00', '2026-03-03', '06:00:00', 23, 420, 2, 2, 5, 7, 2, 7),
(36, '2026-03-25 12:00:00', '2026-03-25 18:00:00', '2026-03-25', '06:00:00', 5, 300, 1, 2, 5, 7, 3, 4),
(37, '2026-04-12 20:00:00', '2026-04-13 01:00:00', '2026-04-12', '05:00:00', 24, 400, 2, 2, 5, 7, 4, 6),
(38, '2026-02-06 22:00:00', '2026-02-07 03:00:00', '2026-02-06', '05:00:00', 22, 400, 1, 2, 5, 8, 5, 6),
(39, '2026-02-19 14:00:00', '2026-02-19 17:00:00', '2026-02-19', '03:00:00', 3, 270, 2, 2, 5, 8, 1, 1),
(40, '2026-03-07 16:00:00', '2026-03-07 22:00:00', '2026-03-07', '06:00:00', 14, 300, 1, 2, 5, 8, 2, 4),
(41, '2026-03-28 23:00:00', '2026-03-29 05:00:00', '2026-03-28', '06:00:00', 24, 420, 2, 2, 5, 8, 3, 7),
(42, '2026-04-14 18:00:00', '2026-04-14 23:00:00', '2026-04-14', '05:00:00', 8, 350, 1, 2, 5, 8, 4, 2),
(43, '2026-02-13 11:00:00', '2026-02-13 17:00:00', '2026-02-13', '06:00:00', 12, 300, 1, 2, 5, 9, 4, 4),
(44, '2026-03-02 19:00:00', '2026-03-02 22:00:00', '2026-03-02', '03:00:00', 21, 300, 2, 2, 5, 9, 5, 5),
(45, '2026-03-22 15:00:00', '2026-03-22 21:00:00', '2026-03-22', '06:00:00', 21, 360, 1, 2, 5, 9, 1, 8),
(46, '2026-04-07 01:00:00', '2026-04-07 06:00:00', '2026-04-07', '05:00:00', 22, 400, 2, 2, 5, 9, 2, 6),
(47, '2026-02-17 17:00:00', '2026-02-17 23:00:00', '2026-02-17', '06:00:00', 7, 360, 1, 2, 5, 10, 3, 4),
(48, '2026-03-11 21:00:00', '2026-03-12 02:00:00', '2026-03-11', '05:00:00', 15, 350, 2, 2, 5, 10, 4, 2),
(49, '2026-03-30 12:00:00', '2026-03-30 15:00:00', '2026-03-30', '03:00:00', 23, 300, 1, 2, 5, 10, 5, 5),
(50, '2026-04-28 23:00:00', '2026-04-29 05:00:00', '2026-04-28', '06:00:00', 25, 420, 2, 2, 5, 10, 1, 7),
(51, '2026-02-08 15:00:00', '2026-02-08 16:00:00', '2026-02-08', '01:00:00', 26, 150, 1, 2, 5, 5, 2, NULL),
(52, '2026-02-22 19:00:00', '2026-02-22 21:00:00', '2026-02-22', '02:00:00', 26, 300, 2, 2, 5, 8, 3, NULL),
(53, '2026-03-07 14:00:00', '2026-03-07 17:00:00', '2026-03-07', '03:00:00', 26, 450, 1, 2, 5, 3, 1, NULL),
(54, '2026-03-21 20:00:00', '2026-03-21 22:00:00', '2026-03-21', '02:00:00', 26, 300, 2, 2, 5, 11, 4, NULL),
(55, '2026-04-05 16:00:00', '2026-04-05 17:00:00', '2026-04-05', '01:00:00', 26, 150, 1, 2, 5, 17, 5, NULL),
(56, '2026-04-18 13:00:00', '2026-04-18 16:00:00', '2026-04-18', '03:00:00', 26, 450, 2, 2, 5, 22, 1, NULL),
(57, '2026-04-25 18:00:00', '2026-04-25 20:00:00', '2026-04-25', '02:00:00', 26, 300, 1, 2, 5, 27, 2, NULL),
(58, '2026-02-11 12:00:00', '2026-02-11 13:00:00', '2026-02-11', '01:00:00', 5, 100, 1, 2, 5, 13, 2, NULL),
(59, '2026-02-28 17:00:00', '2026-02-28 19:00:00', '2026-02-28', '02:00:00', 12, 200, 2, 2, 5, 18, 3, NULL),
(60, '2026-03-14 20:00:00', '2026-03-14 21:00:00', '2026-03-14', '01:00:00', 22, 120, 1, 2, 5, 23, 1, NULL),
(61, '2026-04-02 18:00:00', '2026-04-02 20:00:00', '2026-04-02', '02:00:00', 24, 240, 2, 2, 5, 28, 4, NULL),
(62, '2026-04-22 15:00:00', '2026-04-22 18:00:00', '2026-04-22', '03:00:00', 18, 300, 1, 2, 5, 31, 5, NULL),
(68, '2026-05-05 13:00:00', '2026-05-05 15:00:00', '2026-05-05', '02:00:00', 8, 200, 1, 1, 1, 14, 1, NULL),
(69, '2026-05-05 16:00:00', '2026-05-05 17:00:00', '2026-05-05', '01:00:00', 21, 300, 2, 1, 1, 29, 1, 5),
(70, '2026-05-05 18:00:00', '2026-05-05 20:00:00', '2026-05-05', '02:00:00', 3, 350, 1, 1, 2, 15, 1, 2),
(71, '2026-05-05 09:00:00', '2026-05-05 11:00:00', '2026-05-05', '02:00:00', 26, 300, 2, 1, 2, 19, 2, NULL),
(72, '2026-05-12 19:00:00', '2026-05-12 22:00:00', '2026-05-12', '03:00:00', 23, 300, 1, 2, 3, 20, 2, 5),
(73, '2026-05-14 16:00:00', '2026-05-14 18:00:00', '2026-05-14', '02:00:00', 11, 200, 2, 2, 3, 24, 2, NULL),
(74, '2026-05-17 15:00:00', '2026-05-17 17:00:00', '2026-05-17', '02:00:00', 9, 200, 1, 2, 6, 16, 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `bookingStatus`
--

CREATE TABLE `bookingStatus` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bookingStatus`
--

INSERT INTO `bookingStatus` (`ID`, `name`) VALUES
(1, 'В ожидании'),
(2, 'Подтверждено'),
(3, 'Оплачено'),
(4, 'Отменено'),
(5, 'Завершено'),
(6, 'Задерживается');

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `patronymic` varchar(50) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `mainBalance` int(11) DEFAULT NULL,
  `bonusesBalance` int(11) DEFAULT '0',
  `gender_id` int(11) DEFAULT NULL,
  `telegram` varchar(50) DEFAULT NULL,
  `birthDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`ID`, `phone`, `password`, `name`, `surname`, `patronymic`, `username`, `mainBalance`, `bonusesBalance`, `gender_id`, `telegram`, `birthDate`) VALUES
(1, 79128209090, 'barbarik', 'Иван', 'Иванов', 'Иванович', 'ivanovich13', 100, 0, 2, '@ivanovich', NULL),
(2, 79161234567, 'qwerty123', 'Алексей', 'Смирнов', 'Алексеевич', 'alex_killer88', 250, 0, 2, '@alex88', '2004-03-15'),
(3, 79224567890, 'passOlga', 'Ольга', 'Кузнецова', 'Дмитриевна', 'olga_style', 780, 120, 1, '@olga_style', '2005-07-22'),
(4, 79335678901, 'fox1234', 'Дмитрий', 'Соколов', 'Игоревич', 'dark_fox', 45, 0, 2, '@darkfox', '2006-11-05'),
(5, 79446789012, 'annaPass', 'Анна', 'Михайлова', 'Сергеевна', 'anna_love', 1500, 500, 1, '@annalove', NULL),
(6, 79557890123, 'maxpower', 'Максим', 'Федоров', 'Андреевич', 'max_power', 0, 0, 2, '@maxpower', '2007-01-18'),
(7, 79668901234, 'sunElena', 'Елена', 'Новикова', 'Владимировна', 'elena_sun', 320, 280, 1, '@elenasun', '2007-11-15'),
(8, 79779012345, 'roma123', 'Роман', 'Морозов', 'Петрович', 'roma_man', 110, 90, 2, '@romanman', '2006-08-25'),
(9, 79880123456, 'svetaLight', 'Светлана', 'Павлова', 'Николаевна', 'sveta_light', 550, 0, 1, '@svetlight', '2004-12-03'),
(10, 79991234567, 'nikita777', 'Никита', 'Волков', 'Евгеньевич', 'nik_off', 200, 0, 2, NULL, NULL),
(11, 79002345678, 'katya123', 'Екатерина', 'Семенова', 'Алексеевна', 'katya_kat', 999, 310, 1, '@katya_kat', NULL),
(12, 79113456789, 'boomSer', 'Сергей', 'Степанов', 'Иванович', 'sergey_boom', 75, 0, 2, NULL, NULL),
(13, 79224567890, 'nadiaPass', 'Надежда', 'Григорьева', 'Петровна', 'nadia_m', 410, 0, 1, '@nadiagr', '2008-06-14'),
(14, 79335678901, 'speedVlad', 'Владислав', 'Ильин', 'Денисович', 'vlad_speed', 330, 470, 2, '@vlad_speed', '2003-10-27'),
(15, 79446789012, 'mashaWOW', 'Мария', 'Козлова', 'Андреевна', 'masha_wow', 50, 0, 1, NULL, NULL),
(16, 79557890123, 'igorDub', 'Игорь', 'Лебедев', 'Олегович', 'igor_dub', 870, 80, 2, '@igor_dub', '2009-02-19'),
(17, 79668901234, 'tanyaBest', 'Татьяна', 'Соболева', 'Юрьевна', 'tanya_best', 1240, 0, 1, '@tanya_best', '2004-09-07'),
(18, 79779012345, 'denGo', 'Денис', 'Егоров', 'Максимович', 'den_go', 60, 0, 2, NULL, '2008-05-15'),
(19, 79880123456, 'yuliaStyle', 'Юлия', 'Богданова', 'Витальевна', 'yulia_style', 210, 0, 1, '@yulia_style', '2006-11-29'),
(20, 79991234567, 'artemL', 'Артем', 'Николаев', 'Романович', 'artem_light', 505, 230, 2, '@artemlight', '2007-07-16'),
(21, 79002345678, 'oksanaX', 'Оксана', 'Дмитриева', 'Константиновна', 'oksana_x', 45, 0, 1, NULL, NULL),
(22, 79113456789, 'vadimBS', 'Вадим', 'Тимофеев', 'Александрович', 'vadim_bs', 990, 0, 2, '@vadim_bs', NULL),
(23, 79224567890, 'irinaZ', 'Ирина', 'Калинина', 'Васильевна', 'irina_z', 180, 0, 1, '@irina_z', '2004-08-11'),
(24, 79335678901, 'egorFox', 'Егор', 'Беляев', 'Владиславович', 'egor_fox', 310, 45, 2, NULL, NULL),
(25, 79446789012, 'nataliK', 'Наталья', 'Тарасова', 'Анатольевна', 'natali_k', 730, 0, 1, '@natali_k', '2008-12-31'),
(26, 79557890123, 'kirillG', 'Кирилл', 'Филатов', 'Викторович', 'kirill_gun', 25, 0, 2, NULL, NULL),
(27, 79668901234, 'lizaMoon', 'Елизавета', 'Полякова', 'Ильинична', 'liza_moon', 670, 0, 1, '@liza_moon', '2006-05-21'),
(28, 79779012345, 'glebStar', 'Глеб', 'Комаров', 'Сергеевич', 'gleb_star', 440, 0, 2, '@gleb_star', '2003-01-09'),
(29, 79880123456, 'veravera', 'Вера', 'Рогова', 'Евгеньевна', 'vera_vera', 95, 0, 1, NULL, '2005-10-17'),
(30, 79991234567, 'antonChe', 'Антон', 'Медведев', 'Алексеевич', 'anton_che', 150, 0, 2, NULL, '2007-04-23'),
(31, 79002345678, 'polinaF', 'Полина', 'Абрамова', 'Данииловна', 'polina_f', 480, 0, 1, NULL, '2004-06-28');

-- --------------------------------------------------------

--
-- Структура таблицы `gender`
--

CREATE TABLE `gender` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gender`
--

INSERT INTO `gender` (`ID`, `name`) VALUES
(1, 'Женский'),
(2, 'Мужской');

-- --------------------------------------------------------

--
-- Структура таблицы `package`
--

CREATE TABLE `package` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pricePerHour` int(11) NOT NULL,
  `durationHours` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `validTimeStart` time DEFAULT NULL,
  `validTimeEnd` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `package`
--

INSERT INTO `package` (`ID`, `name`, `pricePerHour`, `durationHours`, `description`, `validTimeStart`, `validTimeEnd`) VALUES
(1, 'Трипл_главный', 90, 3, 'Пакет на 3 часа. Действует в любое время суток. Итоговая стоимость: 270 ₽ за сессию. Применяется ТОЛЬКО к местам из ГЛАВНОГО ЗАЛА. Отлично для коротких игровых сессий.', NULL, NULL),
(2, 'Ультра_главный', 70, 5, 'Пакет на 5 часов. Действует в любое время суток. Итоговая стоимость: 350 ₽ за сессию. Применяется ТОЛЬКО к местам из ГЛАВНОГО ЗАЛА. Идеален для вечерних марафонов.', NULL, NULL),
(3, 'Ночной_главный', 60, 6, 'Пакет на 6 часов. Действует с 00:00 до 06:00. Итоговая стоимость: 360 ₽ за сессию. Применяется ТОЛЬКО к местам из ГЛАВНОГО ЗАЛА. Для тех, кто не спит до утра.', '00:00:00', '06:00:00'),
(4, 'Дневной_главный', 50, 6, 'Пакет на 6 часов. Действует с 12:00 до 18:00. Итоговая стоимость: 300 ₽ за сессию. Применяется ТОЛЬКО к местам из ГЛАВНОГО ЗАЛА.', '12:00:00', '18:00:00'),
(5, 'Трипл_буткемп', 100, 3, 'Пакет на 3 часа. Действует в любое время суток. Итоговая стоимость: 300 ₽ за сессию. Применяется ТОЛЬКО к местам из БУТКЕМПА. Отлично для командных тренировок и киберспорта.', NULL, NULL),
(6, 'Ультра_буткемп', 80, 5, 'Пакет на 5 часов. Действует в любое время суток. Итоговая стоимость: 400 ₽ за сессию. Применяется ТОЛЬКО к местам из БУТКЕМПА. Для долгих тренировочных сессий.', NULL, NULL),
(7, 'Ночной_буткемп', 70, 6, 'Пакет на 6 часов. Действует с 00:00 до 06:00. Итоговая стоимость: 420 ₽ за сессию. Применяется ТОЛЬКО к местам из БУТКЕМПА. Ночные тренировки для профи.', '00:00:00', '06:00:00'),
(8, 'Дневной_буткемп', 60, 6, 'Пакет на 6 часов. Действует с 12:00 до 18:00. Итоговая стоимость: 360 ₽ за сессию. Применяется ТОЛЬКО к местам из БУТКЕМПА.', '12:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `paymentMethod`
--

CREATE TABLE `paymentMethod` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `paymentMethod`
--

INSERT INTO `paymentMethod` (`ID`, `name`) VALUES
(1, 'Карта'),
(2, 'СБП');

-- --------------------------------------------------------

--
-- Структура таблицы `paymentStatus`
--

CREATE TABLE `paymentStatus` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `paymentStatus`
--

INSERT INTO `paymentStatus` (`ID`, `name`) VALUES
(1, 'Ожидается'),
(2, 'Проведена'),
(3, 'Провалилась');

-- --------------------------------------------------------

--
-- Структура таблицы `promoCode`
--

CREATE TABLE `promoCode` (
  `ID` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `amountBonuses` int(11) NOT NULL,
  `validTimeStart` datetime NOT NULL,
  `validTimeEnd` datetime NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `promoCode`
--

INSERT INTO `promoCode` (`ID`, `code`, `amountBonuses`, `validTimeStart`, `validTimeEnd`, `description`) VALUES
(1, 'DEFENDER23', 300, '2026-02-20 00:00:00', '2026-02-28 23:59:59', 'Промокод в честь Дня защитника Отечества (23 февраля). Скидка 15% на все услуги клуба для мужчин.'),
(2, 'SPRING8', 350, '2026-03-05 00:00:00', '2026-03-10 23:59:59', 'Промокод в честь Международного женского дня (8 марта). Скидка 15% на все услуги клуба для женщин.'),
(3, 'VICTORY9', 500, '2026-05-07 00:00:00', '2026-05-12 23:59:59', 'Промокод в честь Дня Победы (9 мая). Скидка 20% для всех посетителей в память о героях.'),
(4, 'SUMMER1', 250, '2026-05-30 00:00:00', '2026-06-05 23:59:59', 'Промокод в честь начала лета (1 июня). Скидка 10% на все пакеты. Летнее настроение с нами!'),
(5, 'KNOWLEDGE1', 200, '2026-08-28 00:00:00', '2026-09-05 23:59:59', 'Промокод в честь Дня знаний (1 сентября). Скидка 10% для студентов и школьников.');

-- --------------------------------------------------------

--
-- Структура таблицы `promoCodeUsage`
--

CREATE TABLE `promoCodeUsage` (
  `ID` int(11) NOT NULL,
  `promoCode_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `usageDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `promoCodeUsage`
--

INSERT INTO `promoCodeUsage` (`ID`, `promoCode_id`, `client_id`, `usageDate`) VALUES
(1, 1, 3, '2026-02-22 14:30:00'),
(2, 2, 5, '2026-03-08 12:15:00'),
(3, 1, 5, '2026-02-25 19:45:00'),
(4, 2, 8, '2026-03-07 15:20:00'),
(5, 2, 7, '2026-03-04 21:00:00'),
(6, 3, 11, '2026-05-08 18:30:00'),
(7, 3, 14, '2026-05-09 10:00:00'),
(8, 3, 20, '2026-05-10 16:45:00'),
(9, 4, 16, '2026-06-01 14:00:00'),
(10, 5, 24, '2026-09-01 11:20:00');

-- --------------------------------------------------------

--
-- Структура таблицы `spot`
--

CREATE TABLE `spot` (
  `ID` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `spotType_id` int(11) DEFAULT NULL,
  `spotSort_id` int(11) DEFAULT NULL,
  `isAvailable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spot`
--

INSERT INTO `spot` (`ID`, `number`, `spotType_id`, `spotSort_id`, `isAvailable`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 1, 1, 1),
(3, 3, 1, 1, 1),
(4, 4, 1, 1, 1),
(5, 5, 1, 1, 1),
(6, 6, 1, 1, 1),
(7, 7, 1, 1, 1),
(8, 8, 1, 1, 1),
(9, 9, 1, 1, 1),
(10, 10, 1, 1, 1),
(11, 11, 1, 1, 1),
(12, 12, 1, 1, 1),
(13, 13, 1, 1, 1),
(14, 14, 1, 1, 1),
(15, 15, 1, 1, 1),
(16, 16, 1, 1, 1),
(17, 17, 1, 1, 1),
(18, 18, 1, 1, 1),
(19, 19, 1, 1, 1),
(20, 20, 1, 1, 1),
(21, 21, 1, 2, 1),
(22, 22, 1, 2, 1),
(23, 23, 1, 2, 1),
(24, 24, 1, 2, 1),
(25, 25, 1, 2, 1),
(26, 26, 2, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `spotSort`
--

CREATE TABLE `spotSort` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `hourlyRate` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spotSort`
--

INSERT INTO `spotSort` (`ID`, `name`, `hourlyRate`, `description`) VALUES
(1, 'Главный зал', 100, 'Компьютер в главном зале. RTX 3060, Intel i5, 16GB RAM'),
(2, 'Буткемп', 120, 'Буткемп-место. RTX 4080, Intel i7, 32GB RAM. Для киберспортивных тренировок.'),
(3, 'Консоль', 150, 'Игровая консоль PlayStation 5. 2 геймпада в комплекте. Большой выбор игр.');

-- --------------------------------------------------------

--
-- Структура таблицы `spotType`
--

CREATE TABLE `spotType` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spotType`
--

INSERT INTO `spotType` (`ID`, `name`) VALUES
(1, 'Компьютер'),
(2, 'Консоль');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Индексы таблицы `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `paymentMethod_id` (`paymentMethod_id`),
  ADD KEY `paymentStatus_id` (`paymentStatus_id`),
  ADD KEY `bookingStatus_id` (`bookingStatus_id`),
  ADD KEY `package_id` (`package_id`),
  ADD KEY `spot_id` (`spot_id`);

--
-- Индексы таблицы `bookingStatus`
--
ALTER TABLE `bookingStatus`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Индексы таблицы `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `paymentMethod`
--
ALTER TABLE `paymentMethod`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `paymentStatus`
--
ALTER TABLE `paymentStatus`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `promoCode`
--
ALTER TABLE `promoCode`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `promoCodeUsage`
--
ALTER TABLE `promoCodeUsage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `promoCode_id` (`promoCode_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `spotType_id` (`spotType_id`),
  ADD KEY `spotSort_id` (`spotSort_id`);

--
-- Индексы таблицы `spotSort`
--
ALTER TABLE `spotSort`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `spotType`
--
ALTER TABLE `spotType`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `booking`
--
ALTER TABLE `booking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `bookingStatus`
--
ALTER TABLE `bookingStatus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `gender`
--
ALTER TABLE `gender`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `package`
--
ALTER TABLE `package`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `paymentMethod`
--
ALTER TABLE `paymentMethod`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `paymentStatus`
--
ALTER TABLE `paymentStatus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `promoCode`
--
ALTER TABLE `promoCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `promoCodeUsage`
--
ALTER TABLE `promoCodeUsage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `spot`
--
ALTER TABLE `spot`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `spotSort`
--
ALTER TABLE `spotSort`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `spotType`
--
ALTER TABLE `spotType`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`ID`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`paymentMethod_id`) REFERENCES `paymentMethod` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `booking_ibfk_6` FOREIGN KEY (`paymentStatus_id`) REFERENCES `paymentStatus` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `booking_ibfk_7` FOREIGN KEY (`package_id`) REFERENCES `package` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `booking_ibfk_8` FOREIGN KEY (`spot_id`) REFERENCES `spot` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `booking_ibfk_9` FOREIGN KEY (`bookingStatus_id`) REFERENCES `bookingStatus` (`ID`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`ID`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `promoCodeUsage`
--
ALTER TABLE `promoCodeUsage`
  ADD CONSTRAINT `promoCodeUsage_ibfk_1` FOREIGN KEY (`promoCode_id`) REFERENCES `promoCode` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `promoCodeUsage_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`ID`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `spot`
--
ALTER TABLE `spot`
  ADD CONSTRAINT `spot_ibfk_1` FOREIGN KEY (`spotType_id`) REFERENCES `spotType` (`ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `spot_ibfk_2` FOREIGN KEY (`spotSort_id`) REFERENCES `spotSort` (`ID`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
