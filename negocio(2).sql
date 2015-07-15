-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2015 a las 03:44:28
-- Versión del servidor: 5.6.14
-- Versión de PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `negocio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_07_05_203839_crear_tabla_usuarios', 1),
('2015_07_05_204223_crear_tabla_negocio', 1),
('2015_07_05_204354_crear_tabla_industria', 1),
('2015_07_05_234527_crear_tabla_comercial', 1),
('2015_07_06_040557_crear_tabla_operaciones', 1),
('2015_07_06_060835_crear_tabla_equipo', 1),
('2015_07_06_065320_crear_tabla_legal', 1),
('2015_07_06_071801_crear_tabla_implementacion', 1),
('2015_07_11_055414_crear_tabla_ingresos', 1),
('2015_07_12_213520_crear_tabla_cantidades', 1),
('2015_07_14_055150_crear_tabla_costoVentas', 1),
('2015_07_14_231709_crear_tabla_gastosFijos', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cantidades`
--

CREATE TABLE IF NOT EXISTS `tbl_cantidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mesCant` date NOT NULL,
  `unidadMes` int(11) NOT NULL,
  `precioMes` decimal(10,2) NOT NULL,
  `producto` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_ingresos` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_cantidades_id_ingresos_foreign` (`id_ingresos`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `tbl_cantidades`
--

INSERT INTO `tbl_cantidades` (`id`, `mesCant`, `unidadMes`, `precioMes`, `producto`, `total`, `id_ingresos`) VALUES
(1, '2016-12-01', 47, '100.00', 'Producto', '4700.00', 1),
(2, '2017-01-01', 47, '100.00', 'Producto', '4700.00', 1),
(3, '2017-02-01', 47, '100.00', 'Producto', '4700.00', 1),
(4, '2017-03-01', 43, '100.00', 'Producto', '4300.00', 1),
(5, '2017-04-01', 64, '100.00', 'Producto', '6400.00', 1),
(6, '2017-05-01', 34, '100.00', 'Producto', '3400.00', 1),
(7, '2016-07-01', 100, '45.40', 'R', '4540.00', 2),
(8, '2016-08-01', 100, '45.40', 'R', '4540.00', 2),
(9, '2016-09-01', 100, '45.40', 'R', '4540.00', 2),
(10, '2016-10-01', 100, '45.40', 'R', '4540.00', 2),
(11, '2016-11-01', 100, '200.00', 'R', '20000.00', 2),
(12, '2016-12-01', 100, '50.00', 'R', '5000.00', 2),
(13, '2017-01-01', 100, '50.00', 'R', '5000.00', 2),
(14, '2016-07-01', 200, '200.00', 'E', '40000.00', 2),
(15, '2016-08-01', 200, '20.00', 'E', '4000.00', 2),
(16, '2016-09-01', 200, '20.00', 'E', '4000.00', 2),
(17, '2016-10-01', 200, '20.00', 'E', '4000.00', 2),
(18, '2016-11-01', 200, '20.00', 'E', '4000.00', 2),
(19, '2016-12-01', 200, '20.00', 'E', '4000.00', 2),
(20, '2017-01-01', 200, '20.00', 'E', '4000.00', 2),
(21, '2015-10-01', 324, '10.40', 'EWR', '3369.60', 3),
(22, '2015-11-01', 34, '10.40', 'EWR', '353.60', 3),
(23, '2015-12-01', 23, '10.40', 'EWR', '239.20', 3),
(24, '2016-01-01', 3423, '10.40', 'EWR', '35599.20', 3),
(25, '2016-02-01', 43, '10.40', 'EWR', '447.20', 3),
(26, '2016-03-01', 232, '10.40', 'EWR', '2412.80', 3),
(27, '2015-11-01', 30, '3.50', 'Queso', '105.00', 5),
(28, '2015-12-01', 30, '3.50', 'Queso', '105.00', 5),
(29, '2016-01-01', 30, '3.50', 'Queso', '105.00', 5),
(30, '2016-02-01', 30, '3.50', 'Queso', '105.00', 5),
(31, '2016-03-01', 30, '3.50', 'Queso', '105.00', 5),
(32, '2016-04-01', 30, '3.50', 'Queso', '105.00', 5),
(33, '2016-05-01', 35, '3.50', 'Queso', '122.50', 5),
(34, '2016-06-01', 35, '3.50', 'Queso', '122.50', 5),
(35, '2016-07-01', 35, '3.50', 'Queso', '122.50', 5),
(36, '2016-08-01', 35, '3.50', 'Queso', '122.50', 5),
(37, '2015-11-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(38, '2015-12-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(39, '2016-01-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(40, '2016-02-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(41, '2016-03-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(42, '2016-04-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(43, '2016-05-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(44, '2016-06-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(45, '2016-07-01', 150, '2.50', 'Mantequilla', '375.00', 5),
(46, '2016-08-01', 150, '2.50', 'Mantequilla', '375.00', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comercial`
--

CREATE TABLE IF NOT EXISTS `tbl_comercial` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `analisisPrecios` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `locales` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `publicidad` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `promociones` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_comercial_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_comercial`
--

INSERT INTO `tbl_comercial` (`id`, `analisisPrecios`, `locales`, `publicidad`, `promociones`, `id_negocio`) VALUES
(1, 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 1),
(2, 'AAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAA', 'AAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAA', 2),
(3, 'ASDASD', 'ASDASDSA', 'ASDASD', 'ASDASDA', 3),
(4, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 4),
(5, 'EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE', 'ERRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR', 'RRTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT', 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_costoventas`
--

CREATE TABLE IF NOT EXISTS `tbl_costoventas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `costoCompra` decimal(10,2) NOT NULL,
  `comVendedor` decimal(10,2) NOT NULL,
  `producto` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_costoventas_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Volcado de datos para la tabla `tbl_costoventas`
--

INSERT INTO `tbl_costoventas` (`id`, `mes`, `costoCompra`, `comVendedor`, `producto`, `total`, `id_negocio`) VALUES
(1, '2016-12-01', '7.50', '1.00', 'Producto', '400.00', 1),
(2, '2017-01-01', '7.50', '1.00', 'Producto', '400.00', 1),
(3, '2017-02-01', '7.50', '1.00', 'Producto', '400.00', 1),
(4, '2017-03-01', '7.50', '1.00', 'Producto', '366.00', 1),
(5, '2017-04-01', '9.00', '1.00', 'Producto', '640.00', 1),
(6, '2017-05-01', '9.00', '1.00', 'Producto', '340.00', 1),
(7, '2016-07-01', '10.00', '1.75', 'R', '1.00', 2),
(8, '2016-08-01', '10.00', '1.75', 'R', '1.00', 2),
(9, '2016-09-01', '10.00', '1.75', 'R', '1.00', 2),
(10, '2016-10-01', '10.00', '1.75', 'R', '1.00', 2),
(11, '2016-11-01', '10.00', '2.50', 'R', '1.00', 2),
(12, '2016-12-01', '10.00', '2.50', 'R', '1.00', 2),
(13, '2017-01-01', '10.00', '2.50', 'R', '1.00', 2),
(14, '2016-07-01', '12.00', '1.75', 'E', '2.00', 2),
(15, '2016-08-01', '12.00', '1.75', 'E', '2.00', 2),
(16, '2016-09-01', '12.00', '1.75', 'E', '2.00', 2),
(17, '2016-10-01', '12.00', '1.75', 'E', '2.00', 2),
(18, '2016-11-01', '18.00', '1.75', 'E', '3.00', 2),
(19, '2016-12-01', '18.00', '1.75', 'E', '3.00', 2),
(20, '2017-01-01', '18.00', '1.75', 'E', '3.00', 2),
(21, '2015-10-01', '5.30', '1.20', 'EWR', '2.00', 3),
(22, '2015-11-01', '5.30', '1.20', 'EWR', '221.00', 3),
(23, '2015-12-01', '5.30', '1.20', 'EWR', '150.00', 3),
(24, '2016-01-01', '5.30', '1.20', 'EWR', '22.00', 3),
(25, '2016-02-01', '5.30', '1.20', 'EWR', '280.00', 3),
(26, '2016-03-01', '5.30', '1.20', 'EWR', '1.00', 3),
(27, '2015-11-01', '7.50', '0.00', 'Queso', '225.00', 5),
(28, '2015-12-01', '7.50', '0.00', 'Queso', '225.00', 5),
(29, '2016-01-01', '7.50', '0.00', 'Queso', '225.00', 5),
(30, '2016-02-01', '7.50', '0.00', 'Queso', '225.00', 5),
(31, '2016-03-01', '7.50', '0.00', 'Queso', '225.00', 5),
(32, '2016-04-01', '7.50', '0.00', 'Queso', '225.00', 5),
(33, '2016-05-01', '7.50', '0.00', 'Queso', '263.00', 5),
(34, '2016-06-01', '7.50', '0.00', 'Queso', '263.00', 5),
(35, '2016-07-01', '7.50', '0.00', 'Queso', '263.00', 5),
(36, '2016-08-01', '7.50', '0.00', 'Queso', '263.00', 5),
(37, '2015-11-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(38, '2015-12-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(39, '2016-01-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(40, '2016-02-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(41, '2016-03-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(42, '2016-04-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(43, '2016-05-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(44, '2016-06-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(45, '2016-07-01', '6.80', '0.00', 'Mantequilla', '1.00', 5),
(46, '2016-08-01', '6.80', '0.00', 'Mantequilla', '1.00', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_equipo`
--

CREATE TABLE IF NOT EXISTS `tbl_equipo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `perClave` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `perSumar` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `departamentos` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_equipo_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_equipo`
--

INSERT INTO `tbl_equipo` (`id`, `perClave`, `perSumar`, `departamentos`, `id_negocio`) VALUES
(1, 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 1),
(2, 'CCCCCCCCCCCCC', 'CCCCCCCCCCCCCCCCCCCC', 'CCCCCCCCCCCCCCCCCCCC', 2),
(3, 'ASDASD', 'ASDSD', 'ASDASD', 3),
(4, 'NUEVO', 'NUEVO', 'NUEVO', 4),
(5, 'QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ', 'QQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQQ', 'SAASSAASASASASASASASASASASASASASASASASASASASASAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAASSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_gastosfijos`
--

CREATE TABLE IF NOT EXISTS `tbl_gastosfijos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `alquiler` decimal(10,2) NOT NULL,
  `limpieza` decimal(10,2) NOT NULL,
  `gas` decimal(10,2) NOT NULL,
  `agua` decimal(10,2) NOT NULL,
  `energia` decimal(10,2) NOT NULL,
  `telefono` decimal(10,2) NOT NULL,
  `tgasLocal` decimal(10,2) NOT NULL,
  `carFo` decimal(10,2) NOT NULL,
  `pubInt` decimal(10,2) NOT NULL,
  `tgasCom` decimal(10,2) NOT NULL,
  `abogado` decimal(10,2) NOT NULL,
  `conta` decimal(10,2) NOT NULL,
  `libreria` decimal(10,2) NOT NULL,
  `tgasAdm` decimal(10,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_gastosfijos_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `tbl_gastosfijos`
--

INSERT INTO `tbl_gastosfijos` (`id`, `mes`, `alquiler`, `limpieza`, `gas`, `agua`, `energia`, `telefono`, `tgasLocal`, `carFo`, `pubInt`, `tgasCom`, `abogado`, `conta`, `libreria`, `tgasAdm`, `total`, `id_negocio`) VALUES
(1, '2015-11-01', '100.00', '100.00', '0.00', '10.00', '150.00', '30.00', '390.00', '10.00', '0.00', '10.00', '50.00', '20.00', '0.00', '70.00', '470.00', 5),
(2, '2015-12-01', '100.00', '100.00', '0.00', '10.00', '150.00', '30.00', '390.00', '10.00', '0.00', '10.00', '50.00', '20.00', '0.00', '70.00', '470.00', 5),
(3, '2016-01-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '10.00', '0.00', '10.00', '0.00', '20.00', '0.00', '20.00', '450.00', 5),
(4, '2016-02-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '0.00', '0.00', '0.00', '50.00', '20.00', '0.00', '70.00', '490.00', 5),
(5, '2016-03-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '0.00', '0.00', '0.00', '50.00', '20.00', '0.00', '70.00', '490.00', 5),
(6, '2016-04-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '0.00', '0.00', '0.00', '50.00', '20.00', '0.00', '70.00', '490.00', 5),
(7, '2016-05-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '0.00', '0.00', '0.00', '50.00', '20.00', '0.00', '70.00', '490.00', 5),
(8, '2016-06-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '0.00', '0.00', '0.00', '50.00', '20.00', '0.00', '70.00', '490.00', 5),
(9, '2016-07-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '0.00', '0.00', '0.00', '50.00', '20.00', '0.00', '70.00', '490.00', 5),
(10, '2016-08-01', '120.00', '110.00', '0.00', '10.00', '150.00', '30.00', '420.00', '0.00', '0.00', '0.00', '50.00', '20.00', '0.00', '70.00', '490.00', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_implementacion`
--

CREATE TABLE IF NOT EXISTS `tbl_implementacion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `implementacion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_implementacion_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_implementacion`
--

INSERT INTO `tbl_implementacion` (`id`, `implementacion`, `id_negocio`) VALUES
(1, 'NEGOCIO', 1),
(2, 'DDDDDDDDDDDDDDDDDDDD', 2),
(3, 'SASD', 3),
(4, 'NUEVO', 4),
(5, 'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_industria`
--

CREATE TABLE IF NOT EXISTS `tbl_industria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mercado` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `tamaño` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `evolucion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `competencia` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `ncompetencia` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `ventajas` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `proveedores` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `distribuidores` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `alianzas` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_industria_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_industria`
--

INSERT INTO `tbl_industria` (`id`, `mercado`, `tamaño`, `evolucion`, `competencia`, `ncompetencia`, `ventajas`, `proveedores`, `distribuidores`, `alianzas`, `id_negocio`) VALUES
(1, 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIOQ', 'NEGOCIO', 1),
(2, 'BBBBBBBBBBBBB', 'BBBBBBBBBBBB', 'BBBBBBBBBBBB', 'BBBBBBBBBBB', 'BBBBBBBBBBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBBBBBB', 'BBBBBBBBBBBBBBBB', 'BBBBBBBBBBBBBB', 2),
(3, 'ASD', 'ASDADAS', 'ASDAS', 'SAD', 'DASD', 'ASDASDAS', 'AS', 'ASDAS', 'DASDASD', 3),
(4, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 4),
(5, 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'SAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 'DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD', 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', 'GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG', 'YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY', 'JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ', 'GHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ingresos`
--

CREATE TABLE IF NOT EXISTS `tbl_ingresos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mesInical` int(11) NOT NULL,
  `añoInicial` int(11) NOT NULL,
  `lapso` int(11) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_ingresos_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_ingresos`
--

INSERT INTO `tbl_ingresos` (`id`, `mesInical`, `añoInicial`, `lapso`, `id_negocio`) VALUES
(1, 11, 2016, 6, 1),
(2, 6, 2016, 7, 2),
(3, 9, 2015, 6, 3),
(4, 11, 2015, 6, 4),
(5, 10, 2015, 10, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_legal`
--

CREATE TABLE IF NOT EXISTS `tbl_legal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipoEmp` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `propIntelectual` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `marcas` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `contRelevantes` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_legal_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_legal`
--

INSERT INTO `tbl_legal` (`id`, `tipoEmp`, `propIntelectual`, `marcas`, `contRelevantes`, `id_negocio`) VALUES
(1, 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 1),
(2, 'SSSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSSSSSS', 2),
(3, 'DFDS', 'SFSF', 'SDFSDF', 'SDFSDF', 3),
(4, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVONUEVO', 4),
(5, 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF', 'GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG', 'HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH', 'JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_negocio`
--

CREATE TABLE IF NOT EXISTS `tbl_negocio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreNeg` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `histNeg` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `socNeg` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `prodSerNeg` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `id_usuario` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_negocio_id_usuario_foreign` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_negocio`
--

INSERT INTO `tbl_negocio` (`id`, `nombreNeg`, `histNeg`, `socNeg`, `prodSerNeg`, `id_usuario`) VALUES
(1, 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 'NEGOCIO', 2),
(2, 'AAAAAAAAAAAAAA', 'AAAAAAAAAAAA', 'AAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAA', 2),
(3, 'A', 'A', 'S', 'SD', 2),
(4, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 2),
(5, 'aaaaaaaaaaaa', 'SSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_operaciones`
--

CREATE TABLE IF NOT EXISTS `tbl_operaciones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operaciones` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `capacidad` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_operaciones_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_operaciones`
--

INSERT INTO `tbl_operaciones` (`id`, `operaciones`, `capacidad`, `id_negocio`) VALUES
(1, 'NEGOCIO', 'NEGOCIO', 1),
(2, 'AAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAAAAA', 2),
(3, 'ASDAS', 'ASDADS', 3),
(4, 'NUEVO', 'NUEVO', 4),
(5, 'WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW', 'TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE IF NOT EXISTS `tbl_usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(62) COLLATE utf8_unicode_ci NOT NULL,
  `identificador` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `rol` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id`, `nombre`, `apellido`, `clave`, `email`, `identificador`, `estado`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'Adrian Marcelo', 'Mendoza Mendoza', 'd42003babd6881c53e4e2c9538c3e2ef', 'marcelomendoza@hotmail.es', '55a4c47c242dc', 'Activado', 'Administrador', '2015-06-28 05:00:00', '2015-06-28 05:00:00'),
(2, 'Adrian', 'Mendoza', '4c882dcb24bcb1bc225391a602feca7c', 'adrianmendoza_2bc@hotmail.com', '55a4c47c3274e', 'Activado', 'Usuario', '2015-06-28 05:00:00', '2015-06-28 05:00:00');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_cantidades`
--
ALTER TABLE `tbl_cantidades`
  ADD CONSTRAINT `tbl_cantidades_id_ingresos_foreign` FOREIGN KEY (`id_ingresos`) REFERENCES `tbl_ingresos` (`id`);

--
-- Filtros para la tabla `tbl_comercial`
--
ALTER TABLE `tbl_comercial`
  ADD CONSTRAINT `tbl_comercial_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_costoventas`
--
ALTER TABLE `tbl_costoventas`
  ADD CONSTRAINT `tbl_costoventas_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_equipo`
--
ALTER TABLE `tbl_equipo`
  ADD CONSTRAINT `tbl_equipo_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_gastosfijos`
--
ALTER TABLE `tbl_gastosfijos`
  ADD CONSTRAINT `tbl_gastosfijos_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_implementacion`
--
ALTER TABLE `tbl_implementacion`
  ADD CONSTRAINT `tbl_implementacion_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_industria`
--
ALTER TABLE `tbl_industria`
  ADD CONSTRAINT `tbl_industria_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_ingresos`
--
ALTER TABLE `tbl_ingresos`
  ADD CONSTRAINT `tbl_ingresos_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_legal`
--
ALTER TABLE `tbl_legal`
  ADD CONSTRAINT `tbl_legal_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

--
-- Filtros para la tabla `tbl_negocio`
--
ALTER TABLE `tbl_negocio`
  ADD CONSTRAINT `tbl_negocio_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuarios` (`id`);

--
-- Filtros para la tabla `tbl_operaciones`
--
ALTER TABLE `tbl_operaciones`
  ADD CONSTRAINT `tbl_operaciones_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
