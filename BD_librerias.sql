-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-12-2018 a las 22:43:29
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `librerias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `apellido` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `sexo` varchar(15) COLLATE latin1_spanish_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `direccion` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor_libro`
--

CREATE TABLE `autor_libro` (
  `id_autor` int(11) DEFAULT NULL,
  `id_codigo` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `direccion` varchar(60) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial_libro`
--

CREATE TABLE `editorial_libro` (
  `id_editorial` int(11) DEFAULT NULL,
  `id_libros` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejemplar`
--

CREATE TABLE `ejemplar` (
  `tipo` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `id_libros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria`
--

CREATE TABLE `libreria` (
  `id` int(11) NOT NULL,
  `clave` varchar(20) COLLATE latin1_spanish_ci NOT NULL,
  `#RUC` varchar(15) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(40) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(60) COLLATE latin1_spanish_ci NOT NULL,
  `telefono` varchar(15) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `libreria`
--

INSERT INTO `libreria` (`id`, `clave`, `#RUC`, `nombre`, `direccion`, `telefono`) VALUES
(1, '1234', '', 'jlhj', 'ryduyigoi', '12345'),
(2, '123', '', 'juan', 'tyuio', '1099'),
(3, '1234', '', 'mario', 'managua', '12345643'),
(4, '234', '', 'marcio', 'chinandega', '12345664');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria_libros`
--

CREATE TABLE `libreria_libros` (
  `codigo` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `codigo` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `idioma` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `precio` float NOT NULL,
  `autor` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `editorial` varchar(50) COLLATE latin1_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `nombre` varchar(30) COLLATE latin1_spanish_ci NOT NULL,
  `direccion` varchar(80) COLLATE latin1_spanish_ci NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `autor_libro`
--
ALTER TABLE `autor_libro`
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_codigo` (`id_codigo`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `editorial_libro`
--
ALTER TABLE `editorial_libro`
  ADD KEY `id_editorial` (`id_editorial`),
  ADD KEY `id_libros` (`id_libros`);

--
-- Indices de la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD KEY `id_libros` (`id_libros`);

--
-- Indices de la tabla `libreria`
--
ALTER TABLE `libreria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libreria_libros`
--
ALTER TABLE `libreria_libros`
  ADD KEY `codigo` (`codigo`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autor_libro`
--
ALTER TABLE `autor_libro`
  ADD CONSTRAINT `autor_libro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `autor_libro_ibfk_2` FOREIGN KEY (`id_codigo`) REFERENCES `libros` (`codigo`);

--
-- Filtros para la tabla `editorial_libro`
--
ALTER TABLE `editorial_libro`
  ADD CONSTRAINT `editorial_libro_ibfk_1` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id`),
  ADD CONSTRAINT `editorial_libro_ibfk_2` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`codigo`);

--
-- Filtros para la tabla `ejemplar`
--
ALTER TABLE `ejemplar`
  ADD CONSTRAINT `ejemplar_ibfk_1` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`codigo`);

--
-- Filtros para la tabla `libreria_libros`
--
ALTER TABLE `libreria_libros`
  ADD CONSTRAINT `libreria_libros_ibfk_1` FOREIGN KEY (`codigo`) REFERENCES `libros` (`codigo`),
  ADD CONSTRAINT `libreria_libros_ibfk_2` FOREIGN KEY (`id`) REFERENCES `libreria` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
