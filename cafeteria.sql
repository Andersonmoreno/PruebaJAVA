-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2022 a las 07:43:39
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `IdDetalleVentas` int(11) UNSIGNED NOT NULL,
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioVenta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`IdDetalleVentas`, `IdVentas`, `IdProducto`, `Cantidad`, `PrecioVenta`) VALUES
(13, 9, 1, 1, 5000),
(14, 9, 1, 1, 5000),
(15, 9, 1, 2, 5000),
(16, 10, 1, 1, 5000),
(17, 11, 2, 1, 5000),
(18, 12, 1, 1, 5000),
(19, 12, 1, 3, 5000),
(20, 13, 1, 1, 5000),
(21, 14, 1, 1, 5000),
(22, 14, 2, 3, 5000),
(23, 14, 4, 1, 6000),
(24, 14, 5, 2, 1000),
(25, 14, 5, 6, 1000),
(26, 15, 1, 1, 5000),
(27, 15, 2, 3, 5000),
(28, 15, 4, 1, 6000),
(29, 15, 5, 2, 1000),
(30, 15, 5, 6, 1000),
(31, 15, 6, 1, 3000),
(32, 16, 2, 1, 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IdProducto` int(11) NOT NULL,
  `Nombre` varchar(244) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Peso` varchar(244) DEFAULT NULL,
  `Categoria` varchar(244) DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL,
  `FechaCreacion` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IdProducto`, `Nombre`, `Precio`, `Peso`, `Categoria`, `Stock`, `FechaCreacion`) VALUES
(1, 'Pan', 5000, '99 gramos', 'Panes', 12, '2022-02-19 09:13:25'),
(2, 'Cafe', 5000, '99 gramos', 'Cafes', 3, '2022-02-19 09:13:25'),
(3, 'Tostada', 5000, '99 gramos', 'Tostadas', 12, '2022-02-19 09:13:25'),
(4, 'Queso', 6000, '99 gramos', 'Quesos', 10, '2022-02-19 09:13:25'),
(5, 'Panela', 1000, '2 kilos', 'Panelas', 3, '2022-02-19 15:00:33'),
(6, 'gaseosa', 3000, '199 gramos', 'Gaseosas', 52, '2022-02-19 15:54:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `Numserie` int(11) UNSIGNED NOT NULL,
  `FechaVentas` date NOT NULL DEFAULT current_timestamp(),
  `Monto` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`IdVentas`, `Numserie`, `FechaVentas`, `Monto`, `Estado`) VALUES
(9, 1, '2022-02-20', 10000, '1'),
(10, 1, '2022-02-20', 5000, '1'),
(11, 1, '2022-02-20', 5000, '1'),
(12, 1, '2022-02-20', 5000, '1'),
(13, 1, '2022-02-20', 5000, '1'),
(14, 1, '2022-02-20', 34000, '1'),
(15, 1, '2022-02-20', 37000, '1'),
(16, 1, '2022-02-20', 5000, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`IdDetalleVentas`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdProducto`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IdVentas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `IdDetalleVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `IdProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `IdVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
