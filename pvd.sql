-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-03-2018 a las 18:35:48
-- Versión del servidor: 5.5.55-0+deb8u1
-- Versión de PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `pvd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_asistencia`
--

CREATE TABLE IF NOT EXISTS `asistencia_asistencia` (
`id` int(11) NOT NULL,
  `hora` datetime NOT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `persona_id` int(11) NOT NULL,
  `servicio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_barrio`
--

CREATE TABLE IF NOT EXISTS `asistencia_barrio` (
`id` int(11) NOT NULL,
  `barrio` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `comuna` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_barrio`
--

INSERT INTO `asistencia_barrio` (`id`, `barrio`, `comuna`) VALUES
(1, 'BUENOS AIRES', ''),
(2, 'KENNEDY', ''),
(3, 'SAN ANTONIO', ''),
(4, 'SAN MIGUEL', ''),
(5, 'ALTO DE LA CRUZ', ''),
(6, 'CENTENARIO', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_ciudad`
--

CREATE TABLE IF NOT EXISTS `asistencia_ciudad` (
`id` int(11) NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_ciudad`
--

INSERT INTO `asistencia_ciudad` (`id`, `codigo`, `ciudad`) VALUES
(1, '', 'GIRARDOT'),
(2, '', 'FLANDES'),
(3, '', 'RICAURTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_curso`
--

CREATE TABLE IF NOT EXISTS `asistencia_curso` (
`id` int(11) NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `curso` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `duracion` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `instructor` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `sede_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_entidad`
--

CREATE TABLE IF NOT EXISTS `asistencia_entidad` (
`id` int(11) NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `entidad` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_entidad`
--

INSERT INTO `asistencia_entidad` (`id`, `codigo`, `entidad`) VALUES
(1, '', 'ALCALDIA'),
(2, '', 'SISBEN'),
(3, '', 'ICBF'),
(4, '', 'JAC'),
(5, '', 'VEEDURIAS'),
(6, '', 'COMISARIA DE FAMILIA'),
(7, '', 'GOBERNACION'),
(8, '', 'MINTIC'),
(9, '', 'DAFP'),
(10, '', 'CAMARA DE COMERCIO'),
(11, '', 'SENA'),
(12, 'EMC', 'EMPRESA DE MEDIOS DE COMUNICACION'),
(13, '', 'UNIMINUTO'),
(14, '', 'PARTICULAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_ocupacion`
--

CREATE TABLE IF NOT EXISTS `asistencia_ocupacion` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `ocupacion` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_ocupacion`
--

INSERT INTO `asistencia_ocupacion` (`id`, `codigo`, `ocupacion`) VALUES
(1, 'B', 'BACHILLER'),
(2, 'U', 'UNIVERSITARIO'),
(3, 'P', 'PROFESIONAL'),
(4, 'E', 'EMPLEADO'),
(5, 'I', 'INDEPENDIENTE'),
(6, 'T', 'TECNOLOGO'),
(7, 'ES', 'ESTUDIANTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_persona`
--

CREATE TABLE IF NOT EXISTS `asistencia_persona` (
`id` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numeroDocumento` bigint(20) NOT NULL,
  `sexo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `estrato` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `barrio_id` int(11) NOT NULL,
  `ciudadResidencia_id` int(11) NOT NULL,
  `entidad_id` int(11) NOT NULL,
  `ocupacion_id` int(11) NOT NULL,
  `poblacion_id` int(11) NOT NULL,
  `tipoDocumento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_personacurso`
--

CREATE TABLE IF NOT EXISTS `asistencia_personacurso` (
`id` int(11) NOT NULL,
  `estado` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `curso_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_poblacion`
--

CREATE TABLE IF NOT EXISTS `asistencia_poblacion` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `poblacion` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_poblacion`
--

INSERT INTO `asistencia_poblacion` (`id`, `codigo`, `poblacion`) VALUES
(1, '', 'LGBTI'),
(2, '', 'DISCAPACITADOS'),
(3, '', 'VICTIMAS CONFLICTO ARMADO'),
(4, '', 'AFRO'),
(5, '', 'TERCERA EDAD'),
(6, '', 'MADRE CABEZA FAMILIA'),
(7, '', 'JOVENES EN ACCION'),
(8, '', 'EMPRENDEDORES'),
(9, '', 'NNA'),
(10, '', 'GOBIERNO EN LINEA'),
(11, '', 'FAMILIAS EN ACCION'),
(12, '', 'NINGUNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_sede`
--

CREATE TABLE IF NOT EXISTS `asistencia_sede` (
`id` int(11) NOT NULL,
  `sede` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_sede`
--

INSERT INTO `asistencia_sede` (`id`, `sede`, `direccion`) VALUES
(1, 'VIVELAB ITUC', 'ITUC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_servicio`
--

CREATE TABLE IF NOT EXISTS `asistencia_servicio` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `servicio` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sede_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_servicio`
--

INSERT INTO `asistencia_servicio` (`id`, `codigo`, `servicio`, `sede_id`) VALUES
(1, 'LC', 'LABORATORIO CAPACITACION', 1),
(2, 'LI', 'LABORATORIO DE IMAGEN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_tipodocumento`
--

CREATE TABLE IF NOT EXISTS `asistencia_tipodocumento` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_tipodocumento`
--

INSERT INTO `asistencia_tipodocumento` (`id`, `codigo`, `tipo`) VALUES
(1, 'TI', 'TARJETA DE IDENTIDAD'),
(2, 'CC', 'CEDULA CIUDADANIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'Administrador'),
(2, 'Consultor'),
(1, 'Digitador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add curso', 6, 'add_curso'),
(17, 'Can change curso', 6, 'change_curso'),
(18, 'Can delete curso', 6, 'delete_curso'),
(19, 'Can add persona curso', 7, 'add_personacurso'),
(20, 'Can change persona curso', 7, 'change_personacurso'),
(21, 'Can delete persona curso', 7, 'delete_personacurso'),
(22, 'Can add ciudad', 8, 'add_ciudad'),
(23, 'Can change ciudad', 8, 'change_ciudad'),
(24, 'Can delete ciudad', 8, 'delete_ciudad'),
(25, 'Can add persona', 9, 'add_persona'),
(26, 'Can change persona', 9, 'change_persona'),
(27, 'Can delete persona', 9, 'delete_persona'),
(28, 'Can add asistencia', 10, 'add_asistencia'),
(29, 'Can change asistencia', 10, 'change_asistencia'),
(30, 'Can delete asistencia', 10, 'delete_asistencia'),
(31, 'Can add tipo documento', 11, 'add_tipodocumento'),
(32, 'Can change tipo documento', 11, 'change_tipodocumento'),
(33, 'Can delete tipo documento', 11, 'delete_tipodocumento'),
(34, 'Can add entidad', 12, 'add_entidad'),
(35, 'Can change entidad', 12, 'change_entidad'),
(36, 'Can delete entidad', 12, 'delete_entidad'),
(37, 'Can add sede', 13, 'add_sede'),
(38, 'Can change sede', 13, 'change_sede'),
(39, 'Can delete sede', 13, 'delete_sede'),
(40, 'Can add barrio', 14, 'add_barrio'),
(41, 'Can change barrio', 14, 'change_barrio'),
(42, 'Can delete barrio', 14, 'delete_barrio'),
(43, 'Can add user', 15, 'add_user'),
(44, 'Can change user', 15, 'change_user'),
(45, 'Can delete user', 15, 'delete_user'),
(46, 'Can add poblacion', 16, 'add_poblacion'),
(47, 'Can change poblacion', 16, 'change_poblacion'),
(48, 'Can delete poblacion', 16, 'delete_poblacion'),
(49, 'Can add servicio', 17, 'add_servicio'),
(50, 'Can change servicio', 17, 'change_servicio'),
(51, 'Can delete servicio', 17, 'delete_servicio'),
(52, 'Can add ocupacion', 18, 'add_ocupacion'),
(53, 'Can change ocupacion', 18, 'change_ocupacion'),
(54, 'Can delete ocupacion', 18, 'delete_ocupacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `sede_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `sede_id`) VALUES
(1, 'pbkdf2_sha256$100000$fgNlm0H0LajK$czQ+2Ppd8FhuGqh1ER7SXbTMHHsFqG70ws8YhEn+alE=', '2018-03-23 22:31:14', 0, '1070593028', 'JHON', 'PALMA', 'jhon1946@gmail.com', 0, 1, '2018-03-22 20:30:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'asistencia', 'asistencia'),
(14, 'asistencia', 'barrio'),
(8, 'asistencia', 'ciudad'),
(6, 'asistencia', 'curso'),
(12, 'asistencia', 'entidad'),
(18, 'asistencia', 'ocupacion'),
(9, 'asistencia', 'persona'),
(7, 'asistencia', 'personacurso'),
(16, 'asistencia', 'poblacion'),
(13, 'asistencia', 'sede'),
(17, 'asistencia', 'servicio'),
(11, 'asistencia', 'tipodocumento'),
(15, 'asistencia', 'user'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-03-22 20:07:00'),
(2, 'contenttypes', '0002_remove_content_type_name', '2018-03-22 20:07:00'),
(3, 'auth', '0001_initial', '2018-03-22 20:07:01'),
(4, 'auth', '0002_alter_permission_name_max_length', '2018-03-22 20:07:01'),
(5, 'auth', '0003_alter_user_email_max_length', '2018-03-22 20:07:02'),
(6, 'auth', '0004_alter_user_username_opts', '2018-03-22 20:07:02'),
(7, 'auth', '0005_alter_user_last_login_null', '2018-03-22 20:07:02'),
(8, 'auth', '0006_require_contenttypes_0002', '2018-03-22 20:07:02'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2018-03-22 20:07:02'),
(10, 'auth', '0008_alter_user_username_max_length', '2018-03-22 20:07:02'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2018-03-22 20:07:02'),
(12, 'asistencia', '0001_initial', '2018-03-22 20:07:07'),
(13, 'admin', '0001_initial', '2018-03-22 20:07:08'),
(14, 'admin', '0002_logentry_remove_auto_add', '2018-03-22 20:07:08'),
(15, 'sessions', '0001_initial', '2018-03-22 20:07:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('yzfz2tbiipj2eknfyht3ex4oumsnlu3u', 'ODQ4MGQ0MjA1Y2ZiOTllZDg2NmFlYjc5NGRlNzBiNGQzMjU4YmZiZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTc0YjEzZTliMDE0MGQ3ZWRlMzNmNTFiNWEyNDU1YWM4YTc4NzBiNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-04-06 22:31:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia_asistencia`
--
ALTER TABLE `asistencia_asistencia`
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_asistencia_curso_id_617211ff_fk_asistencia_curso_id` (`curso_id`), ADD KEY `asistencia_asistenci_persona_id_e30ab282_fk_asistenci` (`persona_id`), ADD KEY `asistencia_asistenci_servicio_id_9f27d73b_fk_asistenci` (`servicio_id`);

--
-- Indices de la tabla `asistencia_barrio`
--
ALTER TABLE `asistencia_barrio`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia_ciudad`
--
ALTER TABLE `asistencia_ciudad`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia_curso`
--
ALTER TABLE `asistencia_curso`
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_curso_sede_id_1af3461c_fk_asistencia_sede_id` (`sede_id`);

--
-- Indices de la tabla `asistencia_entidad`
--
ALTER TABLE `asistencia_entidad`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia_ocupacion`
--
ALTER TABLE `asistencia_ocupacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia_persona`
--
ALTER TABLE `asistencia_persona`
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_persona_barrio_id_11908660_fk_asistencia_barrio_id` (`barrio_id`), ADD KEY `asistencia_persona_ciudadResidencia_id_77b0d7ba_fk_asistenci` (`ciudadResidencia_id`), ADD KEY `asistencia_persona_entidad_id_d2d062c4_fk_asistencia_entidad_id` (`entidad_id`), ADD KEY `asistencia_persona_ocupacion_id_75dbb1c0_fk_asistenci` (`ocupacion_id`), ADD KEY `asistencia_persona_poblacion_id_159ac90d_fk_asistenci` (`poblacion_id`), ADD KEY `asistencia_persona_tipoDocumento_id_435d49ba_fk_asistenci` (`tipoDocumento_id`);

--
-- Indices de la tabla `asistencia_personacurso`
--
ALTER TABLE `asistencia_personacurso`
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_personacurso_curso_id_8f7a4f3f_fk_asistencia_curso_id` (`curso_id`), ADD KEY `asistencia_personacu_persona_id_50eb39e2_fk_asistenci` (`persona_id`);

--
-- Indices de la tabla `asistencia_poblacion`
--
ALTER TABLE `asistencia_poblacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia_sede`
--
ALTER TABLE `asistencia_sede`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asistencia_servicio`
--
ALTER TABLE `asistencia_servicio`
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_servicio_sede_id_581665aa_fk_asistencia_sede_id` (`sede_id`);

--
-- Indices de la tabla `asistencia_tipodocumento`
--
ALTER TABLE `asistencia_tipodocumento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD KEY `auth_user_sede_id_3e90becc_fk_asistencia_sede_id` (`sede_id`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia_asistencia`
--
ALTER TABLE `asistencia_asistencia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asistencia_barrio`
--
ALTER TABLE `asistencia_barrio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `asistencia_ciudad`
--
ALTER TABLE `asistencia_ciudad`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `asistencia_curso`
--
ALTER TABLE `asistencia_curso`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asistencia_entidad`
--
ALTER TABLE `asistencia_entidad`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `asistencia_ocupacion`
--
ALTER TABLE `asistencia_ocupacion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `asistencia_persona`
--
ALTER TABLE `asistencia_persona`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asistencia_personacurso`
--
ALTER TABLE `asistencia_personacurso`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asistencia_poblacion`
--
ALTER TABLE `asistencia_poblacion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `asistencia_sede`
--
ALTER TABLE `asistencia_sede`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `asistencia_servicio`
--
ALTER TABLE `asistencia_servicio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `asistencia_tipodocumento`
--
ALTER TABLE `asistencia_tipodocumento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asistencia_asistencia`
--
ALTER TABLE `asistencia_asistencia`
ADD CONSTRAINT `asistencia_asistencia_curso_id_617211ff_fk_asistencia_curso_id` FOREIGN KEY (`curso_id`) REFERENCES `asistencia_curso` (`id`),
ADD CONSTRAINT `asistencia_asistenci_persona_id_e30ab282_fk_asistenci` FOREIGN KEY (`persona_id`) REFERENCES `asistencia_persona` (`id`),
ADD CONSTRAINT `asistencia_asistenci_servicio_id_9f27d73b_fk_asistenci` FOREIGN KEY (`servicio_id`) REFERENCES `asistencia_servicio` (`id`);

--
-- Filtros para la tabla `asistencia_curso`
--
ALTER TABLE `asistencia_curso`
ADD CONSTRAINT `asistencia_curso_sede_id_1af3461c_fk_asistencia_sede_id` FOREIGN KEY (`sede_id`) REFERENCES `asistencia_sede` (`id`);

--
-- Filtros para la tabla `asistencia_persona`
--
ALTER TABLE `asistencia_persona`
ADD CONSTRAINT `asistencia_persona_barrio_id_11908660_fk_asistencia_barrio_id` FOREIGN KEY (`barrio_id`) REFERENCES `asistencia_barrio` (`id`),
ADD CONSTRAINT `asistencia_persona_ciudadResidencia_id_77b0d7ba_fk_asistenci` FOREIGN KEY (`ciudadResidencia_id`) REFERENCES `asistencia_ciudad` (`id`),
ADD CONSTRAINT `asistencia_persona_entidad_id_d2d062c4_fk_asistencia_entidad_id` FOREIGN KEY (`entidad_id`) REFERENCES `asistencia_entidad` (`id`),
ADD CONSTRAINT `asistencia_persona_ocupacion_id_75dbb1c0_fk_asistenci` FOREIGN KEY (`ocupacion_id`) REFERENCES `asistencia_ocupacion` (`id`),
ADD CONSTRAINT `asistencia_persona_poblacion_id_159ac90d_fk_asistenci` FOREIGN KEY (`poblacion_id`) REFERENCES `asistencia_poblacion` (`id`),
ADD CONSTRAINT `asistencia_persona_tipoDocumento_id_435d49ba_fk_asistenci` FOREIGN KEY (`tipoDocumento_id`) REFERENCES `asistencia_tipodocumento` (`id`);

--
-- Filtros para la tabla `asistencia_personacurso`
--
ALTER TABLE `asistencia_personacurso`
ADD CONSTRAINT `asistencia_personacurso_curso_id_8f7a4f3f_fk_asistencia_curso_id` FOREIGN KEY (`curso_id`) REFERENCES `asistencia_curso` (`id`),
ADD CONSTRAINT `asistencia_personacu_persona_id_50eb39e2_fk_asistenci` FOREIGN KEY (`persona_id`) REFERENCES `asistencia_persona` (`id`);

--
-- Filtros para la tabla `asistencia_servicio`
--
ALTER TABLE `asistencia_servicio`
ADD CONSTRAINT `asistencia_servicio_sede_id_581665aa_fk_asistencia_sede_id` FOREIGN KEY (`sede_id`) REFERENCES `asistencia_sede` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user`
--
ALTER TABLE `auth_user`
ADD CONSTRAINT `auth_user_sede_id_3e90becc_fk_asistencia_sede_id` FOREIGN KEY (`sede_id`) REFERENCES `asistencia_sede` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
