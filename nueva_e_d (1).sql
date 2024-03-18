-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2024 a las 05:39:50
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
-- Base de datos: `nueva e/d`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_materia`
--

CREATE TABLE `docente_materia` (
  `codigo_materia` varchar(10) NOT NULL,
  `cedula_docente` int(11) NOT NULL,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `docente_materia`
--

INSERT INTO `docente_materia` (`codigo_materia`, `cedula_docente`, `periodo`) VALUES
('05b23', 6489991, 20241),
('05b24', 6489991, 20241);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `cedula` int(11) NOT NULL,
  `nombre_estudiante` varchar(100) NOT NULL,
  `celular` int(11) NOT NULL,
  `correo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`cedula`, `nombre_estudiante`, `celular`, `correo`) VALUES
(0, '', 0, ''),
(4532, 'rsaq', 2342, '23423'),
(12312, 'rsaq', 0, ''),
(13123, 'billy', 123123, 'dqwdqwd'),
(23243, 'luis', 0, 'wewe'),
(123313, 'luis', 123123, '123qwedq'),
(2342342, 'dwqedwef', 0, ''),
(27319163, 'rafael', 241410099, 'diazmontano97@gmail.com'),
(41251243, 'adsad', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_materia`
--

CREATE TABLE `estudiante_materia` (
  `codigo_materia` varchar(10) NOT NULL,
  `cedula_estudiante` int(11) NOT NULL,
  `periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `estudiante_materia`
--

INSERT INTO `estudiante_materia` (`codigo_materia`, `cedula_estudiante`, `periodo`) VALUES
('05b23', 13123, 20241),
('05b23', 27319163, 20241),
('05b24', 13123, 20241),
('05b24', 123313, 20241),
('05b24', 27319163, 20241);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_pc`
--

CREATE TABLE `ficha_pc` (
  `maquina` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `cpu` varchar(100) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `tarjeta madre` varchar(100) NOT NULL,
  `disco duro` varchar(50) NOT NULL,
  `monitor` varchar(100) NOT NULL,
  `teclado` varchar(100) NOT NULL,
  `raton` varchar(100) NOT NULL,
  `condicion del equipo` varchar(50) NOT NULL,
  `observacion` varchar(200) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `serial_maquina` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ficha_pc`
--

INSERT INTO `ficha_pc` (`maquina`, `nombre`, `cpu`, `ram`, `tarjeta madre`, `disco duro`, `monitor`, `teclado`, `raton`, `condicion del equipo`, `observacion`, `ubicacion`, `serial_maquina`) VALUES
(1, 'laboratorio 1', 'pentium 4', '4gb', 'asus', '80gb', 'lg 21pulgadas', 'IBM', 'mouse', 'sirve', '', 'laboratorio puesto 1', '761f7162716f2'),
(2, 'laboratorio 1', 'pentium 4', '4gb', 'asus', '80gb', 'lg 21pulgadas', 'IBM', 'mouse', 'sirve', '', 'laboratorio puesto 2', '761f7162716f3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `und/credito` int(11) NOT NULL,
  `trimestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`codigo`, `nombre`, `und/credito`, `trimestre`) VALUES
('05A11', 'administracion de empresas', 3, 1),
('05A12', 'lenguaje y comunicacion', 3, 1),
('05A13', 'matematica 1', 3, 1),
('05A14', 'informatica basica', 3, 1),
('05A15', 'sistemas de informacion', 3, 1),
('05A16', 'logica', 3, 1),
('05A17', 'ingles instrumental 1', 3, 1),
('05B21', 'inteligenci emocional', 3, 2),
('05B22', 'analisis y diseño de sistemas 1', 3, 2),
('05b23', 'matematica 2', 3, 2),
('05b24', 'lenguaje de programacion 1', 3, 2),
('05B25', 'estructura de datos', 3, 2),
('05B26', 'organizacion y estructura del computador', 3, 2),
('05B27', 'ingles instrumental 2', 3, 2),
('05C31', 'analisis y diseño de sistemas 1', 3, 3),
('05C32', 'estructura de datos', 3, 3),
('05C33', 'calculo matricial', 3, 3),
('05C34', 'lenguaje de programacion 2', 3, 3),
('05C35', 'estadistica general', 3, 3),
('05C36', 'formacion contable', 3, 3),
('05D41', 'analisis y diseño de sistemas 2', 3, 4),
('05D42', 'educacion ambiental', 3, 4),
('05D43', 'base de datos', 3, 4),
('05D44', 'lenguaje de programacion 3', 3, 4),
('05D45', 'estadistica probabilistica', 3, 4),
('05D46', 'informatica, sociedad y organizacion', 3, 4),
('05D47', 'sistemas operativos', 3, 4),
('05E51', 'planificacion de proyectos', 3, 5),
('05E52', 'teleprocesos', 3, 5),
('05E53', 'auditoria de sistemas', 3, 5),
('05E54', 'lenguaje de programacion 4', 3, 5),
('05E55', 'investigacion de operaciones', 3, 5),
('05E56', 'simulacion de sistemas', 3, 5),
('05E57', 'telecomunicaciones', 3, 5),
('05SCO', 'servicio comunitario', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pizarra`
--

CREATE TABLE `pizarra` (
  `id` int(11) NOT NULL,
  `pizarra` varchar(1000) NOT NULL,
  `fecha` datetime NOT NULL,
  `profesor` int(11) NOT NULL,
  `materia` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pizarra`
--

INSERT INTO `pizarra` (`id`, `pizarra`, `fecha`, `profesor`, `materia`) VALUES
(4, 'asdasd', '2024-03-16 10:41:49', 123123, '05A11'),
(5, 'asdasd', '2024-03-16 10:41:49', 123123, '05A11'),
(6, 'afdqwedqwdqwdqwd', '2024-03-16 13:26:32', 123123, '05A15'),
(7, 'Hola juana', '2024-03-16 23:19:13', 123123, '05A14'),
(8, '', '2024-03-17 00:33:54', 123123, '05B27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `celular` int(11) NOT NULL,
  `correo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`cedula`, `nombre`, `celular`, `correo`) VALUES
(0, '', 0, ''),
(9876, 'juan', 8768, '987giu'),
(123123, 'vielma', 1212, 'sadasd'),
(312341, 'parra', 123123, 'sdawd'),
(1234567, 'juan', 0, ''),
(4124124, 'dasfcq123', 0, ''),
(6489991, 'larry lopez', 1241241, 'asdas'),
(10533928, 'Hector', 123123, 'asd@f'),
(29387423, 'piÃ±a', 0, 'dsf'),
(2147483647, 'rsaq', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_asistencia_estudiante`
--

CREATE TABLE `tabla_asistencia_estudiante` (
  `sesion_id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `direccion_ip` varchar(45) NOT NULL DEFAULT '0',
  `fecha_hora` datetime NOT NULL,
  `materia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tabla_asistencia_estudiante`
--

INSERT INTO `tabla_asistencia_estudiante` (`sesion_id`, `usuario`, `direccion_ip`, `fecha_hora`, `materia`) VALUES
(1, 27319163, '::1', '2024-03-14 11:57:56', 'sistemas de informacion'),
(2, 27319163, '::1', '2024-03-14 12:01:21', 'analisis y diseï¿½o de sistemas 1'),
(3, 27319163, '192.168.1.107', '2024-03-15 15:48:02', 'logica'),
(4, 27319163, '192.168.1.107', '2024-03-15 15:48:34', 'logica'),
(5, 27319163, '192.168.1.107', '2024-03-15 15:49:38', 'logica'),
(6, 27319163, '192.168.1.107', '2024-03-15 15:49:40', 'logica'),
(7, 27319163, '192.168.1.107', '2024-03-15 15:52:40', 'logica'),
(8, 27319163, '::1', '2024-03-16 10:46:57', 'administracion de empresas'),
(9, 27319163, '::1', '2024-03-16 10:47:37', 'administracion de empresas'),
(10, 27319163, '::1', '2024-03-16 10:47:46', 'administracion de empresas'),
(11, 27319163, '::1', '2024-03-16 10:47:55', 'administracion de empresas'),
(12, 27319163, '::1', '2024-03-16 10:49:16', 'administracion de empresas'),
(13, 27319163, '::1', '2024-03-16 10:49:19', 'administracion de empresas'),
(14, 27319163, '::1', '2024-03-16 11:07:27', 'administracion de empresas'),
(15, 27319163, '::1', '2024-03-16 11:08:17', 'administracion de empresas'),
(16, 27319163, '::1', '2024-03-16 11:08:47', 'administracion de empresas'),
(17, 27319163, '::1', '2024-03-16 11:09:19', 'administracion de empresas'),
(18, 27319163, '::1', '2024-03-16 11:14:29', 'administracion de empresas'),
(19, 27319163, '::1', '2024-03-16 11:15:12', '05A11'),
(20, 27319163, '::1', '2024-03-16 11:16:55', '05A11'),
(21, 27319163, '::1', '2024-03-16 11:17:40', '05A11'),
(22, 27319163, '::1', '2024-03-16 11:18:53', '05A11'),
(23, 27319163, '::1', '2024-03-16 11:21:58', '05A11'),
(24, 27319163, '::1', '2024-03-16 11:22:07', '05A11'),
(25, 27319163, '::1', '2024-03-16 11:22:08', '05A11'),
(26, 27319163, '::1', '2024-03-16 11:31:08', '05A11'),
(27, 27319163, '::1', '2024-03-16 11:31:32', '05A11'),
(28, 27319163, '::1', '2024-03-16 11:31:42', '05A11'),
(29, 27319163, '::1', '2024-03-16 12:18:38', '05A11'),
(30, 27319163, '::1', '2024-03-16 12:18:52', '05A11'),
(31, 27319163, '::1', '2024-03-16 13:27:01', '05B22'),
(32, 27319163, '192.168.1.100', '2024-03-16 23:19:39', '05A14'),
(33, 27319163, '::1', '2024-03-17 00:34:41', '05A17'),
(34, 27319163, '::1', '2024-03-17 00:36:18', '05A17'),
(35, 27319163, '::1', '2024-03-17 00:36:49', '05A17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_asistencia_profesores`
--

CREATE TABLE `tabla_asistencia_profesores` (
  `id` int(11) NOT NULL,
  `usuario` int(15) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `direccion_ip` varchar(50) NOT NULL,
  `materia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tabla_asistencia_profesores`
--

INSERT INTO `tabla_asistencia_profesores` (`id`, `usuario`, `fecha_hora`, `direccion_ip`, `materia`) VALUES
(1, 123123, '2024-03-14 11:57:13', '0', 'ingles instrumental 1'),
(2, 123123, '2024-03-14 12:00:33', '0', 'organizacion y estructura del computador'),
(3, 123123, '2024-03-15 12:33:57', '192168', 'inteligenci emocional'),
(4, 123123, '2024-03-15 12:45:38', '::1', 'matematica 2'),
(5, 123123, '2024-03-15 12:45:50', '192.168.1.107', 'inteligenci emocional'),
(6, 123123, '2024-03-15 12:45:55', '192.168.1.107', 'inteligenci emocional'),
(7, 123123, '2024-03-15 12:46:58', '192.168.1.107', 'inteligenci emocional'),
(8, 123123, '2024-03-15 12:47:10', '::1', 'matematica 2'),
(9, 123123, '2024-03-15 12:54:08', '192.168.1.107', 'inteligenci emocional'),
(10, 123123, '2024-03-15 15:46:11', '::1', 'ingles instrumental 1'),
(11, 123123, '2024-03-15 15:46:57', '::1', ''),
(12, 123123, '2024-03-15 15:52:52', '::1', ''),
(13, 123123, '2024-03-15 15:52:58', '::1', ''),
(14, 123123, '2024-03-15 15:53:06', '::1', '05A14'),
(15, 123123, '2024-03-15 16:04:16', '::1', '05A14'),
(16, 123123, '2024-03-15 16:04:34', '::1', '05A14'),
(17, 123123, '2024-03-15 16:04:36', '::1', '05A14'),
(18, 123123, '2024-03-15 16:04:43', '::1', '05A14'),
(19, 123123, '2024-03-15 16:21:32', '::1', '05A16'),
(20, 123123, '2024-03-15 16:23:55', '::1', '05b24'),
(21, 123123, '2024-03-15 16:27:01', '::1', '05A16'),
(22, 123123, '2024-03-15 16:27:09', '::1', '05A16'),
(23, 123123, '2024-03-15 16:33:29', '::1', '05A11'),
(24, 123123, '2024-03-15 16:42:10', '::1', '05A11'),
(25, 123123, '2024-03-15 16:44:09', '::1', '05A11'),
(26, 123123, '2024-03-15 16:44:11', '::1', '05A11'),
(27, 123123, '2024-03-15 16:44:18', '::1', '05A11'),
(28, 123123, '2024-03-15 16:44:23', '::1', '05A11'),
(29, 123123, '2024-03-16 10:32:44', '::1', '05A11'),
(30, 123123, '2024-03-16 10:41:17', '::1', '05A11'),
(31, 123123, '2024-03-16 10:41:20', '::1', '05A11'),
(32, 123123, '2024-03-16 10:41:49', '::1', '05A11'),
(33, 123123, '2024-03-16 13:26:32', '::1', '05A15'),
(34, 123123, '2024-03-16 13:26:47', '::1', '05A11'),
(35, 123123, '2024-03-16 23:19:13', '192.168.1.100', '05A14'),
(36, 123123, '2024-03-17 00:30:26', '::1', '05B27'),
(37, 123123, '2024-03-17 00:31:05', '::1', '05B27'),
(38, 123123, '2024-03-17 00:33:21', '::1', '05B27'),
(39, 123123, '2024-03-17 00:33:54', '::1', '05B27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre`
--

CREATE TABLE `trimestre` (
  `trimestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `trimestre`
--

INSERT INTO `trimestre` (`trimestre`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  ADD UNIQUE KEY `codigo_materia` (`codigo_materia`,`cedula_docente`,`periodo`),
  ADD KEY `cedula_docente` (`cedula_docente`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
  ADD UNIQUE KEY `codigo_materia_2` (`codigo_materia`,`cedula_estudiante`,`periodo`),
  ADD KEY `codigo_materia` (`codigo_materia`,`cedula_estudiante`,`periodo`),
  ADD KEY `cedula_estudiante` (`cedula_estudiante`);

--
-- Indices de la tabla `ficha_pc`
--
ALTER TABLE `ficha_pc`
  ADD UNIQUE KEY `maquina` (`maquina`,`serial_maquina`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `trimestre` (`trimestre`);

--
-- Indices de la tabla `pizarra`
--
ALTER TABLE `pizarra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fecha` (`fecha`),
  ADD KEY `profesor` (`profesor`),
  ADD KEY `materia` (`materia`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `tabla_asistencia_estudiante`
--
ALTER TABLE `tabla_asistencia_estudiante`
  ADD PRIMARY KEY (`sesion_id`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `tabla_asistencia_profesores`
--
ALTER TABLE `tabla_asistencia_profesores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  ADD UNIQUE KEY `trimestre` (`trimestre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pizarra`
--
ALTER TABLE `pizarra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tabla_asistencia_estudiante`
--
ALTER TABLE `tabla_asistencia_estudiante`
  MODIFY `sesion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `tabla_asistencia_profesores`
--
ALTER TABLE `tabla_asistencia_profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docente_materia`
--
ALTER TABLE `docente_materia`
  ADD CONSTRAINT `docente_materia_ibfk_1` FOREIGN KEY (`cedula_docente`) REFERENCES `profesores` (`cedula`),
  ADD CONSTRAINT `docente_materia_ibfk_2` FOREIGN KEY (`codigo_materia`) REFERENCES `materia` (`codigo`);

--
-- Filtros para la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
  ADD CONSTRAINT `estudiante_materia_ibfk_1` FOREIGN KEY (`cedula_estudiante`) REFERENCES `estudiantes` (`cedula`),
  ADD CONSTRAINT `estudiante_materia_ibfk_2` FOREIGN KEY (`codigo_materia`) REFERENCES `materia` (`codigo`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`trimestre`) REFERENCES `trimestre` (`trimestre`);

--
-- Filtros para la tabla `pizarra`
--
ALTER TABLE `pizarra`
  ADD CONSTRAINT `pizarra_ibfk_1` FOREIGN KEY (`profesor`) REFERENCES `profesores` (`cedula`),
  ADD CONSTRAINT `pizarra_ibfk_2` FOREIGN KEY (`materia`) REFERENCES `materia` (`codigo`);

--
-- Filtros para la tabla `tabla_asistencia_estudiante`
--
ALTER TABLE `tabla_asistencia_estudiante`
  ADD CONSTRAINT `tabla_asistencia_estudiante_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `estudiantes` (`cedula`);

--
-- Filtros para la tabla `tabla_asistencia_profesores`
--
ALTER TABLE `tabla_asistencia_profesores`
  ADD CONSTRAINT `tabla_asistencia_profesores_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `profesores` (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
