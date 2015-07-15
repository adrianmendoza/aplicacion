-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-07-2015 a las 13:51:06
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
('2015_07_15_063806_crear_tabla_inversiones', 2),
('2015_07_15_110841_crear_tabla_financiamiento', 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tbl_cantidades`
--

INSERT INTO `tbl_cantidades` (`id`, `mesCant`, `unidadMes`, `precioMes`, `producto`, `total`, `id_ingresos`) VALUES
(1, '2015-12-01', 150, 10.50, 'Vino', 1575.00, 1),
(2, '2016-01-01', 150, 10.50, 'Vino', 1575.00, 1),
(3, '2016-02-01', 150, 10.50, 'Vino', 1575.00, 1),
(4, '2016-03-01', 150, 10.50, 'Vino', 1575.00, 1),
(5, '2016-04-01', 150, 10.50, 'Vino', 1575.00, 1),
(6, '2016-05-01', 150, 10.50, 'Vino', 1575.00, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_comercial`
--

INSERT INTO `tbl_comercial` (`id`, `analisisPrecios`, `locales`, `publicidad`, `promociones`, `id_negocio`) VALUES
(1, 'Negocio', 'Negocio', 'Negocio', 'Negocio', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tbl_costoventas`
--

INSERT INTO `tbl_costoventas` (`id`, `mes`, `costoCompra`, `comVendedor`, `producto`, `total`, `id_negocio`) VALUES
(1, '2015-12-01', 10.40, 1.20, 'Vino', 1740.00, 1),
(2, '2016-01-01', 10.40, 1.20, 'Vino', 1740.00, 1),
(3, '2016-02-01', 10.40, 1.20, 'Vino', 1740.00, 1),
(4, '2016-03-01', 10.40, 1.20, 'Vino', 1740.00, 1),
(5, '2016-04-01', 10.40, 1.20, 'Vino', 1740.00, 1),
(6, '2016-05-01', 10.40, 1.20, 'Vino', 1740.00, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_equipo`
--

INSERT INTO `tbl_equipo` (`id`, `perClave`, `perSumar`, `departamentos`, `id_negocio`) VALUES
(1, 'Negocio', 'Negocio', 'Negocio', 1);

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
(1, '2015-12-01', 5000.00, 0.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5000.00, 1),
(2, '2016-01-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(3, '2016-02-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(4, '2016-03-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(5, '2016-04-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(6, '2016-05-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(7, '2015-12-01', 5000.00, 0.00, 5000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5000.00, 1),
(8, '2016-01-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(9, '2016-02-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, -5.00, 0.00, 0.00, -5.00, 1),
(10, '2016-03-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(11, '2016-04-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(12, '2016-05-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tbl_gastosfijos`
--

INSERT INTO `tbl_gastosfijos` (`id`, `mes`, `alquiler`, `limpieza`, `gas`, `agua`, `energia`, `telefono`, `tgasLocal`, `carFo`, `pubInt`, `tgasCom`, `abogado`, `conta`, `libreria`, `tgasAdm`, `total`, `id_negocio`) VALUES
(1, '2015-12-01', 0.00, 0.00, 0.00, 10.60, 18.30, 28.30, 57.20, 90.70, 0.00, 90.70, 50.00, 20.00, 0.00, 70.00, 217.90, 1),
(2, '2016-01-01', 0.00, 0.00, 0.00, 10.60, 18.30, 28.30, 57.20, 90.70, 0.00, 90.70, 50.00, 20.00, 0.00, 70.00, 217.90, 1),
(3, '2016-02-01', 0.00, 0.00, 0.00, 10.60, 18.30, 28.30, 57.20, 90.70, 0.00, 90.70, 50.00, 20.00, 0.00, 70.00, 217.90, 1),
(4, '2016-03-01', 0.00, 0.00, 0.00, 10.60, 18.30, 28.30, 57.20, 90.70, 0.00, 90.70, 50.00, 20.00, 0.00, 70.00, 217.90, 1),
(5, '2016-04-01', 0.00, 0.00, 0.00, 10.60, 18.30, 28.30, 57.20, 90.70, 0.00, 90.70, 50.00, 20.00, 0.00, 70.00, 217.90, 1),
(6, '2016-05-01', 0.00, 0.00, 0.00, 10.60, 18.30, 28.30, 57.20, 90.70, 0.00, 90.70, 50.00, 20.00, 0.00, 70.00, 217.90, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_implementacion`
--

INSERT INTO `tbl_implementacion` (`id`, `implementacion`, `id_negocio`) VALUES
(1, 'Negocio', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_industria`
--

INSERT INTO `tbl_industria` (`id`, `mercado`, `tamaño`, `evolucion`, `competencia`, `ncompetencia`, `ventajas`, `proveedores`, `distribuidores`, `alianzas`, `id_negocio`) VALUES
(1, 'Negocio', 'Negocio', 'Negocio', 'Negocio', 'NegocioNegocio', 'Negocio', 'Negocio', 'Negocio', 'Negocio', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_ingresos`
--

INSERT INTO `tbl_ingresos` (`id`, `mesInical`, `añoInicial`, `lapso`, `id_negocio`) VALUES
(1, 11, 2015, 6, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tbl_inversiones`
--

INSERT INTO `tbl_inversiones` (`id`, `mes`, `maqEquipo`, `MueEnseres`, `eqOficina`, `vehiculo`, `eqComp`, `totalMes`, `id_negocio`) VALUES
(1, '2015-12-01', 2000.00, 1000.00, 500.00, 4000.00, 2400.00, 9900.00, 1),
(2, '2016-01-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(3, '2016-02-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(4, '2016-03-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(5, '2016-04-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1),
(6, '2016-05-01', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_legal`
--

INSERT INTO `tbl_legal` (`id`, `tipoEmp`, `propIntelectual`, `marcas`, `contRelevantes`, `id_negocio`) VALUES
(1, 'Negocio', 'Negocio', 'Negocio', 'Negocio', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_negocio`
--

INSERT INTO `tbl_negocio` (`id`, `nombreNeg`, `histNeg`, `socNeg`, `prodSerNeg`, `id_usuario`) VALUES
(1, 'Negocio', 'Negocio', 'Negocio', 'Negocio', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tbl_operaciones`
--

INSERT INTO `tbl_operaciones` (`id`, `operaciones`, `capacidad`, `id_negocio`) VALUES
(1, 'Negocio', 'Negocio', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `tbl_sueldos`
--

INSERT INTO `tbl_sueldos` (`id`, `mes`, `sueldoSocios`, `sueldoEmpleados`, `totalSueldos`, `id_negocio`) VALUES
(1, '2015-12-01', 4000.00, 3000.00, 7000.00, 1),
(2, '2016-01-01', 4000.00, 3000.00, 7000.00, 1),
(3, '2016-02-01', 4000.00, 3000.00, 7000.00, 1),
(4, '2016-03-01', 4000.00, 3000.00, 7000.00, 1),
(5, '2016-04-01', 4000.00, 3000.00, 7000.00, 1),
(6, '2016-05-01', 4000.00, 3000.00, 7000.00, 1);

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
(1, 'Adrian Marcelo', 'Mendoza Mendoza', 'd42003babd6881c53e4e2c9538c3e2ef', 'marcelomendoza@hotmail.es', '55a5e5ace3b0f', 'Activado', 'Administrador', '2015-06-28 05:00:00', '2015-06-28 05:00:00'),
(2, 'Adrian', 'Mendoza', '4c882dcb24bcb1bc225391a602feca7c', 'adrianmendoza_2bc@hotmail.com', '55a5e5ad236f1', 'Activado', 'Usuario', '2015-06-28 05:00:00', '2015-06-28 05:00:00');

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
