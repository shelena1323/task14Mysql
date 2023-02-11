-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2023 г., 12:16
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task14`
--

-- --------------------------------------------------------

--
-- Структура таблицы `usbd`
--

CREATE TABLE `usbd` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `usbd`
--

INSERT INTO `usbd` (`id`, `login`, `password`) VALUES
(1, 'Irina', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Elena', '200820e3227815ed1756a6b531e7e0d2'),
(3, 'David', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
(4, 'Diana', '08ef84145b81dcd98554b70c662c41ed'),
(5, 'Sasha', '83b4ef5ae4bb360c96628aecda974200'),
(6, 'Jenya', 'eced110fa1737081f2ea67d875118c62'),
(7, 'Anton', '96e79218965eb72c92a549dd5a330112'),
(10, 'Anna', 'daf990e7220925c8417961ec66537e95');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `usbd`
--
ALTER TABLE `usbd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `usbd`
--
ALTER TABLE `usbd`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
