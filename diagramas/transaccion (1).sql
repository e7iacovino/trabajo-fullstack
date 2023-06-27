-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2023 a las 19:27:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transaccion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `ID` int(11) NOT NULL,
  `CIUDAD` varchar(45) NOT NULL,
  `DEPARTAMENTO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coincidencia`
--

CREATE TABLE `coincidencia` (
  `ID_COINCIDENCIA` int(11) NOT NULL,
  `ID_A` int(11) NOT NULL,
  `ID_B` int(11) NOT NULL,
  `MATCHA` bit(1) DEFAULT NULL,
  `MATCHB` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password_hash` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password_hash`) VALUES
(1, 'luli', 'luisinalavayen@gmail.com', '$2'),
(3, 'luli', 'luisina@gmail.com', 'a'),
(4, 'luli', 'luisinal@gmail.com', '$2'),
(5, 'luli', 'a@gmail.com', '$2'),
(6, 'luli', 'b@gmail.com', '$2'),
(7, 'luli', 'c@gmail.com', '$2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `to_date` datetime NOT NULL,
  `habilidades` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `to_date`, `habilidades`) VALUES
(1, 'configuroweb', '$2y$10$7t4jzMHLGaAmQd6XLsGOW.hSDGQiSQoAOKou7Vlc4XYgSPNCpUcR6', 'msevillab@gmail.com', '2019-12-28 10:08:11', ''),
(2, 'lulilavayen', '$2y$10$vo7QYRw/cpBPwBEQ7rINg.XijVNtvcmcXf829fT.2b0qtg2eCjyce', 'luisina@gmail.com', '2023-06-21 10:53:02', ''),
(3, 'locati', '$2y$10$H0.9QRLx4XtlkA2N8QD26OEJ8rO.iWm1f1wt9qOqPh0JnUaHuXzxO', 'loc@gmal.com', '2023-06-21 10:58:14', ''),
(4, 'holas', '$2y$10$FRgdUdjNsAd2qou.KBMwdO0g14rTfRaHXhY3PbiXWOYO9vGynU5MO', 'luisina@gmail.com', '2023-06-21 11:30:07', ''),
(5, 'holas', '$2y$10$Q2G09hyX9tS4GSWI6vJSHuU9FpARqpQdgqWaOxhpCKGBUfj426kBa', 'holas@gmail.com', '2023-06-21 11:30:24', ''),
(6, 'cata', '$2y$10$f74D5gPVIHlAi88kQXA8KueYKF4qp94.cjsAfrRlLB3FAHJodhzsG', 'cata@gmail.com', '2023-06-21 11:35:33', ''),
(7, 'luis', '$2y$10$hwLds1W1Lu6VV0iwiNu2qePef52IweJfzbPlZm6u72n6th1rkFhAa', 'luis@gmail.com', '2023-06-21 11:50:05', ''),
(8, 'holasS', '$2y$10$ZDN5gmmSrhBEDopUFpxkwedaUsxRqFdeETGigWmsqX0ktc3oLmbYi', 'catas@gmail.com', '2023-06-21 12:12:49', ''),
(9, 'lulilavayennn', '$2y$10$ymi08cd3.c1BkZpgf/miWui92/o41TrvAHI.7xPp.88nwLD/J8AK2', 'loc@gmail.com', '2023-06-26 09:22:32', ''),
(10, 'ugo', '$2y$10$UJ/uQ105QWWfHtNCOTgK.OBUJ5jgRVPBDI33KEawMTo19HE4hA8Mu', 'ugo@gmail.com', '2023-06-26 09:54:18', ''),
(11, 'locati', '$2y$10$8IXHaIBXSCwc6Gd5/pZ7neuobxzuh5r9EcjYtuzZhJ6SoHXztpFtW', 'loc@gmail.com', '2023-06-26 10:35:20', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `coincidencia`
--
ALTER TABLE `coincidencia`
  ADD PRIMARY KEY (`ID_COINCIDENCIA`),
  ADD KEY `ID_A` (`ID_A`),
  ADD KEY `ID_B` (`ID_B`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `coincidencia`
--
ALTER TABLE `coincidencia`
  MODIFY `ID_COINCIDENCIA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coincidencia`
--
ALTER TABLE `coincidencia`
  ADD CONSTRAINT `coincidencia_ibfk_1` FOREIGN KEY (`ID_A`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `coincidencia_ibfk_2` FOREIGN KEY (`ID_B`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
