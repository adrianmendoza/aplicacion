-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2015 a las 04:32:11
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
('2015_07_14_231709_crear_tabla_gastosFijos', 1),
('2015_07_15_023320_crear_tabla_sueldos', 1),
('2015_07_15_063806_crear_tabla_inversiones', 1),
('2015_07_15_110841_crear_tabla_financiamiento', 1),
('2015_07_16_202633_crear_tabla_impuestos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cantidades`
--

CREATE TABLE IF NOT EXISTS `tbl_cantidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mesCant` date NOT NULL,
  `unidadMes` int(11) NOT NULL,
  `precioMes` double(10,2) NOT NULL,
  `producto` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `total` double(10,2) NOT NULL,
  `id_ingresos` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_cantidades_id_ingresos_foreign` (`id_ingresos`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `tbl_cantidades`
--

INSERT INTO `tbl_cantidades` (`id`, `mesCant`, `unidadMes`, `precioMes`, `producto`, `total`, `id_ingresos`) VALUES
(1, '2015-02-01', 50, 7.50, 'Camisas', 375.00, 1),
(2, '2015-03-01', 50, 7.50, 'Camisas', 375.00, 1),
(3, '2015-04-01', 50, 7.50, 'Camisas', 375.00, 1),
(4, '2015-05-01', 55, 7.50, 'Camisas', 412.50, 1),
(5, '2015-06-01', 55, 7.50, 'Camisas', 412.50, 1),
(6, '2015-07-01', 50, 7.50, 'Camisas', 375.00, 1),
(7, '2015-02-01', 40, 6.35, 'Pantalones', 254.00, 1),
(8, '2015-03-01', 40, 6.35, 'Pantalones', 254.00, 1),
(9, '2015-04-01', 40, 6.35, 'Pantalones', 254.00, 1),
(10, '2015-05-01', 40, 6.35, 'Pantalones', 254.00, 1),
(11, '2015-06-01', 40, 6.35, 'Pantalones', 254.00, 1),
(12, '2015-07-01', 40, 6.35, 'Pantalones', 254.00, 1),
(13, '2016-11-01', 3000, 1.20, 'Queso', 3600.00, 2),
(14, '2016-12-01', 3000, 1.20, 'Queso', 3600.00, 2),
(15, '2017-01-01', 3000, 1.20, 'Queso', 3600.00, 2),
(16, '2017-02-01', 3000, 1.20, 'Queso', 3600.00, 2),
(17, '2017-03-01', 3000, 1.20, 'Queso', 3600.00, 2),
(18, '2017-04-01', 3000, 1.20, 'Queso', 3600.00, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_comercial`
--

INSERT INTO `tbl_comercial` (`id`, `analisisPrecios`, `locales`, `publicidad`, `promociones`, `id_negocio`) VALUES
(1, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 1),
(2, 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_costoventas`
--

CREATE TABLE IF NOT EXISTS `tbl_costoventas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `costoCompra` double(10,2) NOT NULL,
  `comVendedor` double(10,2) NOT NULL,
  `producto` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `total` double(10,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_costoventas_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `tbl_costoventas`
--

INSERT INTO `tbl_costoventas` (`id`, `mes`, `costoCompra`, `comVendedor`, `producto`, `total`, `id_negocio`) VALUES
(1, '2015-02-01', 1.10, 0.00, 'Camisas', 55.00, 1),
(2, '2015-03-01', 1.10, 0.00, 'Camisas', 55.00, 1),
(3, '2015-04-01', 1.10, 0.00, 'Camisas', 55.00, 1),
(4, '2015-05-01', 1.10, 0.00, 'Camisas', 60.50, 1),
(5, '2015-06-01', 1.10, 0.00, 'Camisas', 60.50, 1),
(6, '2015-07-01', 1.10, 0.00, 'Camisas', 55.00, 1),
(7, '2015-02-01', 1.50, 0.75, 'Pantalones', 90.00, 1),
(8, '2015-03-01', 1.50, 0.75, 'Pantalones', 90.00, 1),
(9, '2015-04-01', 1.50, 0.75, 'Pantalones', 90.00, 1),
(10, '2015-05-01', 1.50, 0.75, 'Pantalones', 90.00, 1),
(11, '2015-06-01', 1.50, 0.75, 'Pantalones', 90.00, 1),
(12, '2015-07-01', 1.50, 0.75, 'Pantalones', 90.00, 1),
(13, '2016-11-01', 0.60, 0.00, 'Queso', 1800.00, 3),
(14, '2016-12-01', 0.60, 0.00, 'Queso', 1800.00, 3),
(15, '2017-01-01', 0.60, 0.00, 'Queso', 1800.00, 3),
(16, '2017-02-01', 0.60, 0.00, 'Queso', 1800.00, 3),
(17, '2017-03-01', 0.80, 0.00, 'Queso', 2400.00, 3),
(18, '2017-04-01', 0.80, 0.00, 'Queso', 2400.00, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_equipo`
--

INSERT INTO `tbl_equipo` (`id`, `perClave`, `perSumar`, `departamentos`, `id_negocio`) VALUES
(1, 'NUEVO', 'NUEVO', 'NUEVO', 1),
(2, 'EMPRESA', 'EMPRESA', 'EMPRESA', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_financiamiento`
--

CREATE TABLE IF NOT EXISTS `tbl_financiamiento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `aporDueño` double(10,2) NOT NULL,
  `retDueño` double(10,2) NOT NULL,
  `totDueños` double(10,2) NOT NULL,
  `prestCP` double(10,2) NOT NULL,
  `devCP` double(10,2) NOT NULL,
  `totCP` double(10,2) NOT NULL,
  `intCP` double(10,2) NOT NULL,
  `prestLP` double(10,2) NOT NULL,
  `devLP` double(10,2) NOT NULL,
  `totLP` double(10,2) NOT NULL,
  `intLP` double(10,2) NOT NULL,
  `subDona` double(10,2) NOT NULL,
  `totalMes` double(10,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_financiamiento_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tbl_financiamiento`
--

INSERT INTO `tbl_financiamiento` (`id`, `mes`, `aporDueño`, `retDueño`, `totDueños`, `prestCP`, `devCP`, `totCP`, `intCP`, `prestLP`, `devLP`, `totLP`, `intLP`, `subDona`, `totalMes`, `id_negocio`) VALUES
(1, '2015-02-01', 40000.00, 0.00, 40000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 40000.00, 1),
(2, '2015-03-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(3, '2015-04-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(4, '2015-05-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(5, '2015-06-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(6, '2015-07-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(7, '2016-11-01', 5000.00, 0.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5000.00, 3),
(8, '2016-12-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(9, '2017-01-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(10, '2017-02-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(11, '2017-03-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(12, '2017-04-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_gastosfijos`
--

CREATE TABLE IF NOT EXISTS `tbl_gastosfijos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `alquiler` double(10,2) NOT NULL,
  `limpieza` double(10,2) NOT NULL,
  `gas` double(10,2) NOT NULL,
  `agua` double(10,2) NOT NULL,
  `energia` double(10,2) NOT NULL,
  `telefono` double(10,2) NOT NULL,
  `tgasLocal` double(10,2) NOT NULL,
  `carFo` double(10,2) NOT NULL,
  `pubInt` double(10,2) NOT NULL,
  `tgasCom` double(10,2) NOT NULL,
  `abogado` double(10,2) NOT NULL,
  `conta` double(10,2) NOT NULL,
  `libreria` double(10,2) NOT NULL,
  `tgasAdm` double(10,2) NOT NULL,
  `total` double(12,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_gastosfijos_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tbl_gastosfijos`
--

INSERT INTO `tbl_gastosfijos` (`id`, `mes`, `alquiler`, `limpieza`, `gas`, `agua`, `energia`, `telefono`, `tgasLocal`, `carFo`, `pubInt`, `tgasCom`, `abogado`, `conta`, `libreria`, `tgasAdm`, `total`, `id_negocio`) VALUES
(1, '2015-02-01', 100.00, 100.00, 0.00, 20.00, 20.00, 20.00, 260.00, 0.00, 0.00, 0.00, 30.00, 30.00, 30.00, 90.00, 350.00, 1),
(2, '2015-03-01', 100.00, 100.00, 0.00, 20.00, 20.00, 20.00, 260.00, 0.00, 0.00, 0.00, 30.00, 30.00, 30.00, 90.00, 350.00, 1),
(3, '2015-04-01', 100.00, 100.00, 0.00, 20.00, 20.00, 20.00, 260.00, 0.00, 0.00, 0.00, 30.00, 30.00, 30.00, 90.00, 350.00, 1),
(4, '2015-05-01', 100.00, 100.00, 0.00, 20.00, 20.00, 20.00, 260.00, 0.00, 0.00, 0.00, 30.00, 30.00, 30.00, 90.00, 350.00, 1),
(5, '2015-06-01', 100.00, 100.00, 0.00, 20.00, 20.00, 20.00, 260.00, 0.00, 0.00, 0.00, 30.00, 30.00, 30.00, 90.00, 350.00, 1),
(6, '2015-07-01', 100.00, 100.00, 0.00, 20.00, 20.00, 20.00, 260.00, 0.00, 0.00, 0.00, 30.00, 30.00, 30.00, 90.00, 350.00, 1),
(7, '2016-11-01', 0.00, 0.00, 40.00, 20.00, 25.00, 20.00, 105.00, 50.00, 50.00, 100.00, 50.00, 80.00, 0.00, 130.00, 335.00, 3),
(8, '2016-12-01', 0.00, 0.00, 40.00, 20.00, 25.00, 20.00, 105.00, 50.00, 50.00, 100.00, 50.00, 80.00, 0.00, 130.00, 335.00, 3),
(9, '2017-01-01', 0.00, 0.00, 40.00, 20.00, 25.00, 20.00, 105.00, 50.00, 50.00, 100.00, 50.00, 80.00, 0.00, 130.00, 335.00, 3),
(10, '2017-02-01', 0.00, 0.00, 40.00, 20.00, 25.00, 20.00, 105.00, 50.00, 50.00, 100.00, 50.00, 80.00, 0.00, 130.00, 335.00, 3),
(11, '2017-03-01', 0.00, 0.00, 40.00, 20.00, 25.00, 20.00, 105.00, 50.00, 50.00, 100.00, 50.00, 80.00, 0.00, 130.00, 335.00, 3),
(12, '2017-04-01', 0.00, 0.00, 40.00, 20.00, 25.00, 20.00, 105.00, 50.00, 50.00, 100.00, 50.00, 80.00, 0.00, 130.00, 335.00, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_implementacion`
--

INSERT INTO `tbl_implementacion` (`id`, `implementacion`, `id_negocio`) VALUES
(1, 'NUEVO', 1),
(2, 'EMPRESA', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_impuestos`
--

CREATE TABLE IF NOT EXISTS `tbl_impuestos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `vAntes` double(10,2) NOT NULL,
  `tasa` double(10,2) NOT NULL,
  `vPagar` double(10,2) NOT NULL,
  `sFavor` double(10,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_impuestos_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `tbl_impuestos`
--

INSERT INTO `tbl_impuestos` (`id`, `mes`, `vAntes`, `tasa`, `vPagar`, `sFavor`, `id_negocio`) VALUES
(1, '2015-02-01', -1.00, 35.00, 0.00, 1.00, 1),
(2, '2015-03-01', -1.00, 35.00, 0.00, 1.00, 1),
(3, '2015-04-01', -1.00, 35.00, 0.00, 1.00, 1),
(4, '2015-05-01', -1.00, 35.00, 0.00, 1.00, 1),
(5, '2015-06-01', -1.00, 35.00, 0.00, 1.00, 1),
(6, '2016-11-01', -1.00, 35.00, 0.00, 1.00, 3),
(7, '2016-12-01', -1.00, 35.00, 0.00, 1.00, 3),
(8, '2017-01-01', -1.00, 35.00, 0.00, 1.00, 3),
(9, '2017-02-01', -1.00, 35.00, 0.00, 1.00, 3),
(10, '2017-03-01', -1.00, 35.00, 0.00, 1.00, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_industria`
--

INSERT INTO `tbl_industria` (`id`, `mercado`, `tamaño`, `evolucion`, `competencia`, `ncompetencia`, `ventajas`, `proveedores`, `distribuidores`, `alianzas`, `id_negocio`) VALUES
(1, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 1),
(2, 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_ingresos`
--

INSERT INTO `tbl_ingresos` (`id`, `mesInical`, `añoInicial`, `lapso`, `id_negocio`) VALUES
(1, 1, 2015, 6, 1),
(2, 10, 2016, 6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inversiones`
--

CREATE TABLE IF NOT EXISTS `tbl_inversiones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `maqEquipo` double(10,2) NOT NULL,
  `MueEnseres` double(10,2) NOT NULL,
  `eqOficina` double(10,2) NOT NULL,
  `vehiculo` double(10,2) NOT NULL,
  `eqComp` double(10,2) NOT NULL,
  `totalMes` double(10,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_inversiones_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tbl_inversiones`
--

INSERT INTO `tbl_inversiones` (`id`, `mes`, `maqEquipo`, `MueEnseres`, `eqOficina`, `vehiculo`, `eqComp`, `totalMes`, `id_negocio`) VALUES
(1, '2015-02-01', 300.00, 200.00, 100.00, 0.00, 500.00, 1100.00, 1),
(2, '2015-03-01', 0.00, 0.00, 0.00, 0.00, 500.00, 500.00, 1),
(3, '2015-04-01', 0.00, 0.00, 0.00, 0.00, 500.00, 500.00, 1),
(4, '2015-05-01', 0.00, 0.00, 0.00, 0.00, 500.00, 500.00, 1),
(5, '2015-06-01', 0.00, 0.00, 0.00, 0.00, 500.00, 500.00, 1),
(6, '2015-07-01', 0.00, 0.00, 0.00, 0.00, 500.00, 500.00, 1),
(7, '2016-11-01', 5000.00, 300.00, 150.00, 7000.00, 800.00, 13250.00, 3),
(8, '2016-12-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(9, '2017-01-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(10, '2017-02-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(11, '2017-03-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3),
(12, '2017-04-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_legal`
--

INSERT INTO `tbl_legal` (`id`, `tipoEmp`, `propIntelectual`, `marcas`, `contRelevantes`, `id_negocio`) VALUES
(1, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', 1),
(2, 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', 3);

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
  `fecha_creacion` date NOT NULL,
  `id_usuario` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_negocio_id_usuario_foreign` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tbl_negocio`
--

INSERT INTO `tbl_negocio` (`id`, `nombreNeg`, `histNeg`, `socNeg`, `prodSerNeg`, `fecha_creacion`, `id_usuario`) VALUES
(1, 'NUEVO', 'NUEVO', 'NUEVO', 'NUEVO', '2015-07-17', 2),
(2, 'A', 'dfgdfgdf', 'gdfgdffsdfsd', 'sfsdfsdfdsf', '2015-07-17', 2),
(3, 'EMPRESA', 'EMPRESA', 'EMPRESA', 'EMPRESA', '2015-07-18', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `tbl_operaciones`
--

INSERT INTO `tbl_operaciones` (`id`, `operaciones`, `capacidad`, `id_negocio`) VALUES
(1, 'NUEVO', 'NUEVO', 1),
(2, 'EMPRESA', 'EMPRESA', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_sueldos`
--

CREATE TABLE IF NOT EXISTS `tbl_sueldos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mes` date NOT NULL,
  `sueldoSocios` double(10,2) NOT NULL,
  `sueldoEmpleados` double(10,2) NOT NULL,
  `totalSueldos` double(10,2) NOT NULL,
  `id_negocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_sueldos_id_negocio_foreign` (`id_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `tbl_sueldos`
--

INSERT INTO `tbl_sueldos` (`id`, `mes`, `sueldoSocios`, `sueldoEmpleados`, `totalSueldos`, `id_negocio`) VALUES
(1, '2015-02-01', 1000.00, 1000.00, 2000.00, 1),
(2, '2015-03-01', 1000.00, 1000.00, 2000.00, 1),
(3, '2015-04-01', 1000.00, 1000.00, 2000.00, 1),
(4, '2015-05-01', 1000.00, 1000.00, 2000.00, 1),
(5, '2015-06-01', 1000.00, 1000.00, 2000.00, 1),
(6, '2015-07-01', 1000.00, 1000.00, 2000.00, 1),
(7, '2016-11-01', 1000.00, 1500.00, 2500.00, 3),
(8, '2016-12-01', 1000.00, 1500.00, 2500.00, 3),
(9, '2017-01-01', 1000.00, 1500.00, 2500.00, 3),
(10, '2017-02-01', 1000.00, 1500.00, 2500.00, 3),
(11, '2017-03-01', 1000.00, 1500.00, 2500.00, 3),
(12, '2017-04-01', 1000.00, 1500.00, 2500.00, 3);

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
(1, 'Adrian Marcelo', 'Mendoza Mendoza', 'd42003babd6881c53e4e2c9538c3e2ef', 'marcelomendoza@hotmail.es', '55a92cd1bc279', 'Activado', 'Administrador', '2015-06-28 05:00:00', '2015-06-28 05:00:00'),
(2, 'Adrian', 'Mendoza', '4c882dcb24bcb1bc225391a602feca7c', 'adrianmendoza_2bc@hotmail.com', '55a92cd1deda7', 'Activado', 'Usuario', '2015-06-28 05:00:00', '2015-06-28 05:00:00');

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
-- Filtros para la tabla `tbl_financiamiento`
--
ALTER TABLE `tbl_financiamiento`
  ADD CONSTRAINT `tbl_financiamiento_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

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
-- Filtros para la tabla `tbl_impuestos`
--
ALTER TABLE `tbl_impuestos`
  ADD CONSTRAINT `tbl_impuestos_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

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
-- Filtros para la tabla `tbl_inversiones`
--
ALTER TABLE `tbl_inversiones`
  ADD CONSTRAINT `tbl_inversiones_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

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

--
-- Filtros para la tabla `tbl_sueldos`
--
ALTER TABLE `tbl_sueldos`
  ADD CONSTRAINT `tbl_sueldos_id_negocio_foreign` FOREIGN KEY (`id_negocio`) REFERENCES `tbl_negocio` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
