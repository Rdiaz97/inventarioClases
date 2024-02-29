-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-02-2024 a las 14:38:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estudiantes_profesores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiantes` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `cedula` int(10) NOT NULL,
  `celular` int(12) NOT NULL,
  `correo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiantes`, `nombre`, `cedula`, `celular`, `correo`) VALUES
(1, 'Rafael Diaz', 27319163, 241410099, 'diazmontano97@gmail.com'),
(2, 'jesus', 123123, 123123123, 'sasdads@gmail.com'),
(3, 'juan', 123312, 1231231, 'asdasdasda@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `horario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_horario`, `horario`) VALUES
(1, 'lunes 7:30 am a 9:00am'),
(2, 'lunes 9:00am a 10:30am  '),
(3, 'lunes 10:30am a 12:10pm'),
(4, 'martes 7:30am a 9:00am'),
(5, 'martes 9:00am a 10:30am '),
(6, 'martes 10:30am a 12:10pm'),
(7, 'miercoles 7:30am a 9:00am '),
(8, 'miercoles 9:00am a 10:30am '),
(9, 'miercoles 10:30am a 12:10pm'),
(10, 'jueves 7:30am a 9:00am '),
(11, 'jueves 9:00am a 10:30am '),
(12, 'jueves 10:30am a 12:10pm'),
(13, 'viernes 7:30am a 9:00am '),
(14, 'viernes 9:00am a 10:30am '),
(15, 'viernes 10:30am a 12:10pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idt`
--

CREATE TABLE `idt` (
  `id` int(11) NOT NULL,
  `id_estudiantes` int(11) NOT NULL,
  `id_materias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `idt`
--

INSERT INTO `idt` (`id`, `id_estudiantes`, `id_materias`) VALUES
(1, 1, 5),
(2, 1, 6),
(3, 2, 5),
(4, 3, 7),
(5, 2, 12),
(6, 3, 11),
(7, 2, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(300) NOT NULL,
  `id_horario` int(11) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  `id_trimestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `nombre_materia`, `id_horario`, `id_profesor`, `id_trimestre`) VALUES
(5, 'lenguaje de programacion 1', 1, 3, 1),
(6, 'lenguaje de programacion 2', 2, 3, 2),
(7, 'lenguaje de programacion 3', 3, 3, 3),
(8, 'lenguaje de programacion 4', 4, 3, 4),
(11, 'matematicas 1', 5, 2, 1),
(12, 'calculo ', 6, 4, 3),
(14, 'arquitectura del computador', 7, 1, 3),
(16, 'sistemas operativos', 8, 3, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id_profesores` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `cedula` int(100) NOT NULL,
  `celular` int(100) NOT NULL,
  `correo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id_profesores`, `nombre`, `cedula`, `celular`, `correo`) VALUES
(1, 'Larry', 123123, 12312312, 'asda@gmail.com'),
(2, 'Vielma', 12312, 12312312, 'asdasd@gmail.com'),
(3, 'Jesus', 121233123, 11233312, 'assdada@gmail.com'),
(4, 'Pedro', 112312312, 12312, 'asdasasdawdd@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre`
--

CREATE TABLE `trimestre` (
  `id_trimestre` int(11) NOT NULL,
  `trimestre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `trimestre`
--

INSERT INTO `trimestre` (`id_trimestre`, `trimestre`) VALUES
(1, '1ero'),
(2, '2do'),
(3, '3ero'),
(4, '4to'),
(5, '5to'),
(6, '6to');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiantes`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`);

--
-- Indices de la tabla `idt`
--
ALTER TABLE `idt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiantes` (`id_estudiantes`),
  ADD KEY `id_materias` (`id_materias`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id_materia`),
  ADD UNIQUE KEY `id_horario_2` (`id_horario`),
  ADD KEY `id_horario` (`id_horario`,`id_profesor`,`id_trimestre`),
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_trimestre` (`id_trimestre`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id_profesores`);

--
-- Indices de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`id_trimestre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id_estudiantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `idt`
--
ALTER TABLE `idt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id_profesores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `id_trimestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `idt`
--
ALTER TABLE `idt`
  ADD CONSTRAINT `idt_ibfk_2` FOREIGN KEY (`id_materias`) REFERENCES `materias` (`id_materia`),
  ADD CONSTRAINT `idt_ibfk_3` FOREIGN KEY (`id_estudiantes`) REFERENCES `estudiantes` (`id_estudiantes`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesores` (`id_profesores`),
  ADD CONSTRAINT `materias_ibfk_3` FOREIGN KEY (`id_trimestre`) REFERENCES `trimestre` (`id_trimestre`),
  ADD CONSTRAINT `materias_ibfk_4` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_horario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
