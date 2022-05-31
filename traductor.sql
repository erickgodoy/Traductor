-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2019 a las 01:46:51
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `traductor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabra`
--

CREATE TABLE `palabra` (
  `id` int(11) NOT NULL,
  `esp` varchar(30) NOT NULL,
  `eng` varchar(30) NOT NULL,
  `num_char` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `palabra`
--

INSERT INTO `palabra` (`id`, `esp`, `eng`, `num_char`) VALUES
(2, 'Tu', 'You', 2),
(3, 'Yo', 'I', 2),
(4, 'El', 'He', 2),
(5, 'Ella', 'She', 4),
(6, 'Eso', 'It', 3),
(7, 'Nosotros', 'We', 8),
(8, 'Ustedes', 'You', 7),
(9, 'Ellos', 'They', 5),
(10, 'Ellas', 'They', 5),
(11, 'Nosotras', 'We', 8),
(12, 'Hola', 'Hello', 4),
(13, 'Abajo', 'Down', 5),
(14, 'Arriba', 'Up', 6),
(15, 'Izquierda', 'Left', 9),
(16, 'Derecha', 'Right', 7),
(17, 'Cabeza', 'Head', 6),
(18, 'Abeja', 'Bee', 5),
(19, 'Leon', 'Lion', 4),
(20, 'Tigre', 'Tiger', 5),
(21, 'Abierto', 'Open', 7),
(22, 'Cerrado', 'Closed', 7),
(23, 'Abismo', 'Abyss', 6),
(24, 'Ingeniero', 'Engineer', 9),
(25, 'Abrir', 'Open', 5),
(26, 'Cerrar', 'Close', 6),
(27, 'Hacer', 'Do', 5),
(28, 'Ir', 'Go', 2),
(29, 'Pensar', 'Think', 6),
(30, 'Buscar', 'Look for', 6),
(31, 'Tener', 'To have', 5),
(32, 'Gustar', 'Like', 6),
(33, 'Amar', 'To love', 4),
(34, 'Querer', 'Want', 6),
(35, 'Tomar', 'Drink', 5),
(36, 'Comer', 'Eat', 5),
(37, 'Escribir', 'To write', 8),
(38, 'Trabajar', 'To work', 8),
(39, 'Romper', 'To break', 6),
(40, 'Ganar', 'Win', 5),
(41, 'Perder', 'To lose', 6),
(42, 'Despertar', 'Wake', 9),
(43, 'Comprender', 'Understand', 10),
(44, 'Limpiar', 'Clean', 7),
(45, 'Hablar', 'Talk', 6),
(46, 'Manejar', 'Drive', 7),
(47, 'Conducir', 'Drive', 8),
(48, 'Correr', 'To run', 6),
(49, 'Estudiar', 'Study', 8),
(50, 'Oler', 'Smell', 4),
(51, 'Sentir', 'Feel', 6),
(52, 'Odiar', 'Hate', 5),
(53, 'Recordar', 'Remember', 8),
(54, 'Absurdo', 'Absurd', 7),
(55, 'Aburrido', 'Bored', 8),
(56, 'Divertido', 'Funny', 9),
(57, 'Aceite', 'Oil', 6),
(58, 'Adicto', 'Addict', 6),
(59, 'Adulto', 'Adult', 6),
(60, 'Niã±o', 'Boy', 5),
(61, 'Joven', 'Young', 5),
(62, 'Viejo', 'Old', 5),
(63, 'Nuevo', 'New', 5),
(65, 'Manzana', 'Apple', 7),
(66, 'Durazno', 'Peach', 7),
(67, 'Playa', 'Beach', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `palabra`
--
ALTER TABLE `palabra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `palabra`
--
ALTER TABLE `palabra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
