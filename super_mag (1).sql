-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2020 г., 14:04
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `super_mag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categore_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `avallabillty` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `categore_id`, `code`, `price`, `avallabillty`, `brand`, `description`, `is_new`, `status`) VALUES
(3, 'New Balance 754', 1, 11123, 4000, 1, 'NB', '● Культовая модель\r\n● Технология амортизации Air\r\n● Материал верха: кожа\r\n● Скрытая вставка Air для амортизации\r\n● Материал подошвы: резина\r\n', 1, 1),
(4, 'Nike Air Force 1 Low', 2, 1231223, 5000, 1, 'Nike', '● Материал верха: текстиль, экокожа\r\n● Материал подошвы: резина\r\n● Футуристичное строение системы шнуровки\r\n● Подошва со вставкой Ai', 1, 1),
(5, 'New Balance RC2', 11, 213123, 5000, 1, 'NB', '● Верх из эко-кожи\r\n● Резиновая подметка; текстильная подкладка\r\n● Амортизация Adiprene+ в передней части стопы и в зоне пятки\r\n● Мягкая и легкая модель\r\n', 0, 1),
(6, 'Nike Air Force 1 LV8 Utility', 12, 45422, 4500, 1, 'Nike', '● Верх из эко-кожи\r\n● Резиновая подметка; текстильная подкладка\r\n● Амортизация Adiprene+ в передней части стопы и в зоне пятки\r\n● Мягкая и легкая модель', 0, 1),
(7, 'Adidas Ozweego', 11, 1555, 5000, 1, 'Adidas', '● Верх из эко-кожи\r\n● Резиновая подметка; текстильная подкладка\r\n● Амортизация Adiprene+ в передней части стопы и в зоне пятки\r\n● Мягкая и легкая модель\r\n', 0, 1),
(8, 'New Balance 754', 11, 55222, 5000, 1, 'NB', '● Культовая модель\r\n● Технология амортизации Air\r\n● Материал верха: кожа\r\n● Скрытая вставка Air для амортизации\r\n● Материал подошвы: резина\r\n\r\n', 1, 1),
(9, 'Nike Air Force 1 LV8 1', 11, 2666, 4777, 1, 'Nike', '● Сочетание замши, кожи и нейлона\r\n● Дополнительный ремешок для фиксации\r\n● Массивная подошва\r\n● Фирменный брендинг\r\n', 1, 1),
(10, 'Nike Air Barrage Mid', 11, 73431, 5000, 1, 'Nike', '● Верх из замши, текстиля\r\n● Литая подошва\r\n● Технология GEL в носке и пятке\r\n● Колодка ORTHOLITE, стелька EVA\r\n', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_girls`
--

CREATE TABLE `product_girls` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `categore_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `avallabillty` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_girls`
--

INSERT INTO `product_girls` (`id`, `name`, `categore_id`, `code`, `price`, `avallabillty`, `brand`, `description`, `is_new`, `status`) VALUES
(1, 'Nike Classic Cortez', 14, 12779, 5000, 1, 'Nike', '● Культовая модель\r\n● Технология амортизации Air\r\n● Материал верха: кожа\r\n● Скрытая вставка Air для амортизации\r\n● Материал подошвы: резина', 0, 1),
(2, 'Adidas Iniki Runner Boost', 15, 19906, 7000, 1, 'Adidas', '● Культовая модель\r\n● Технология амортизации Air\r\n● Материал верха: кожа\r\n● Скрытая вставка Air для амортизации\r\n● Материал подошвы: резина', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(5, 'Виталий', '12312415122', 'ПРивет как дела', 1, '2020-12-13 21:47:45', '{\"8\":1,\"9\":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Виталий', 'kocccs@mail.ru', '111222333'),
(2, 'Виталий', 'vitalykosenkov@yandex.ru', '1234567'),
(3, 'Виталий', 'kistosirdo@enayu.com', '234234');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_girls`
--
ALTER TABLE `product_girls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `product_girls`
--
ALTER TABLE `product_girls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
