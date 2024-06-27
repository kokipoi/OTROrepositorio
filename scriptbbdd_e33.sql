-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2024 a las 20:30:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectonota`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `ID` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente2`
--

CREATE TABLE `cliente2` (
  `ID` int(11) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `contraseña` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente2`
--

INSERT INTO `cliente2` (`ID`, `correo`, `contraseña`) VALUES
(1, '', ''),
(2, 'olacomoestas@gmail.com', '123123'),
(3, 'mar.munoz2@duocuc.cl', '123123'),
(4, 'josueprofe@gmail.com', '123123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto2`
--

CREATE TABLE `contacto2` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mensaje` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `form_adopt`
--

CREATE TABLE `form_adopt` (
  `id` int(5) NOT NULL,
  `rut` int(9) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido_materno` varchar(40) NOT NULL,
  `apellido_paterno` varchar(40) NOT NULL,
  `edad` int(3) NOT NULL,
  `email` varchar(40) NOT NULL,
  `celular` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `form_adopt`
--

INSERT INTO `form_adopt` (`id`, `rut`, `nombre`, `apellido_materno`, `apellido_paterno`, `edad`, `email`, `celular`) VALUES
(1, 215513971, 'nombre', 'alvarez', 'muñoz', 22, 'unicorniodank@gmail.com', 937644737),
(2, 215513971, 'nombre', 'alvarez', 'muñoz', 22, 'unicorniodank@gmail.com', 937644737),
(3, 215513972, 'ewewewwe', 'ewewweew', 'ewweew', 22, 'calvarezfi@gmail.com', 937644737),
(4, 215513971, 'jouse', 'josue', 'josue', 33, 'martin@gmail.com', 937644737);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `precio` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`ID`, `nombre`, `precio`) VALUES
(1, 'Cama Mascota', 14.990),
(5, 'Arnes mediano', 13.990),
(6, 'Collar canino', 9.990),
(7, 'Correa 35mts', 12.990),
(8, 'Juguete pelota', 5.990),
(9, 'Saco pedigree adulto', 24.990),
(10, 'jaula para perros medianos', 19.990),
(11, 'saco fit adulto', 24.990),
(12, 'sachet perro', 1.990),
(13, 'collar cachorro', 6.990),
(14, 'peluche pulpo', 29.990),
(15, 'traje elegante para perro', 44.990);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `carrito_forein_producto` (`producto_id`),
  ADD KEY `carrito_forein_cliente2` (`usuario_id`);

--
-- Indices de la tabla `cliente2`
--
ALTER TABLE `cliente2`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `contacto2`
--
ALTER TABLE `contacto2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `form_adopt`
--
ALTER TABLE `form_adopt`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente2`
--
ALTER TABLE `cliente2`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contacto2`
--
ALTER TABLE `contacto2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `form_adopt`
--
ALTER TABLE `form_adopt`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `carrito_forein_cliente2` FOREIGN KEY (`usuario_id`) REFERENCES `cliente2` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `carrito_forein_producto` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
