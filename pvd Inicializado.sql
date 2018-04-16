-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-04-2018 a las 17:55:13
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
  `servicio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_barrio`
--

CREATE TABLE IF NOT EXISTS `asistencia_barrio` (
`id` int(11) NOT NULL,
  `barrio` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `comuna` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_barrio`
--

INSERT INTO `asistencia_barrio` (`id`, `barrio`, `comuna`, `ciudad_id`) VALUES
(1, 'BUENOS AIRES', '', 492),
(2, 'KENNEDY', '', 492),
(3, 'SAN ANTONIO', '', 492),
(4, 'SAN MIGUEL', '', 492),
(5, 'ALTO DE LA CRUZ', '', 492),
(6, 'CENTENARIO', '', 492),
(7, 'CENTRO', '', 492),
(8, 'CAMBULOS', '', 492),
(9, 'ARRAYANES', '', 492),
(10, 'SAN FERNANDO', '', 492),
(11, 'AGUA BLANCA', '', 492),
(12, 'ALGARROBOS', '', 492),
(13, 'ALTO DEL BARBULA', '', 492),
(14, 'ALTO ROSARIO', '', 492),
(15, 'BALI', '', 492),
(16, 'BRISAS', '', 492),
(17, 'CIUDAD MONTES', '', 492),
(18, 'CAFAM DEL SOL', '', 492),
(19, 'CEIBA', '', 492),
(20, 'CODALES', '', 492),
(21, 'LA COLINA', '', 492),
(22, 'DIAMANTE', '', 492),
(23, 'ESMERALDA', '', 492),
(24, 'ESMERALDA 2', '', 492),
(25, 'ESPERANZA', '', 492),
(26, 'ESTACION', '', 492),
(27, 'GAITAN', '', 492),
(28, 'GOLGOTA', '', 492),
(29, 'GUABINAL', '', 492),
(30, 'LA CEIBA', '', 492),
(31, 'LA MAGDALENA', '', 492),
(32, 'LA VICTORIA', '', 492),
(33, 'LAS ACACIAS', '', 492),
(34, 'LAS ROSAS', '', 492),
(35, 'LLERAS', '', 492),
(36, 'LOS PANTANOS', '', 492),
(37, 'MAGDALENA', '', 492),
(38, 'MIRAFLORES', '', 492),
(39, 'OBRERO', '', 492),
(40, 'ORQUIDEAS', '', 492),
(41, 'PORTACHUELO', '', 492),
(42, 'PUERTO MONGI', '', 492),
(43, 'PUBENZA', '', 492),
(44, 'QUINTAS', '', 492),
(45, 'QUINTO PATIO', '', 492),
(46, 'ROSA BLANCA', '', 492),
(47, 'SANTA HELENA', '', 492),
(48, 'SAN JORGE', '', 492),
(49, 'SAN LUIS', '', 492),
(50, 'SANTA ISABEL', '', 492),
(51, 'SANTA MONICA', '', 492),
(52, 'SANTA RITA', '', 492),
(53, 'SANTANDER', '', 492),
(54, 'SUCRE', '', 492),
(55, 'TERRAZAS DE GUADALQUIVIR ', '', 492),
(56, 'TOLEDO', '', 492),
(57, 'TRIANA', '', 492),
(58, 'EL TRIUNFO', '', 492),
(59, 'VILLA ALEXANDER', '', 492),
(60, 'PIAMONTE', '', 492),
(61, 'VILLA DEL RIO', '', 492),
(62, 'VALLE DEL SOL', '', 492),
(63, 'VILLA LUCIA', '', 492),
(64, 'VILLA OARTE', '', 492),
(65, 'VILLAMPISS', '', 492),
(66, 'VOLVER A VIVIR', '', 492),
(67, 'APROVITEF', '', 974),
(68, 'CAMALA', '', 974),
(69, 'CAPILLA', '', 974),
(70, 'LAS ROSAS', '', 974),
(71, 'PAKISTAN', '', 974),
(72, 'PALMAR', '', 974),
(73, 'QUINTAS', '', 974),
(74, 'ALTO MAGDALENA', '', 532),
(75, 'CENTRO', '', 532),
(76, 'ISLA DEL SOL', '', 532),
(77, 'PEÑALIZA', '', 532),
(78, 'TOGORALLE', '', 532),
(79, 'CENTRO', '', 983),
(80, 'ESPERANZA', '', 983),
(81, 'GALAN', '', 983),
(82, 'PORTACHUELO', '', 983),
(83, 'SICOMOR', '', 983),
(84, 'VILLA ELSA', '', 983),
(85, 'EL CAPOTE', '', 457),
(86, 'CENTRO', '', 457),
(87, 'COYALES', '', 457),
(88, 'EL CARMEN', '', 457),
(89, 'SAN JOSE', '', 457),
(90, 'SANTA ISABEL', '', 459),
(91, 'SANTA ISABEL', '', 460),
(92, 'CENTRO ', '', 149),
(93, 'CARMEN', '', 965),
(94, 'BALCANES ', '', 972),
(95, 'PALMERAS', '', 972),
(96, 'SANTA MARGARITA', '', 972),
(97, 'URBANIZACION PRADO', '', 972),
(98, 'TRIANA', '', 505),
(99, 'LA INMACULADA', '', 515),
(100, 'CENTRO', '', 517),
(101, 'BORIANZA', '', 995),
(102, 'PLAZUELA', '', 999),
(103, 'CUNCISTA', '', 556),
(104, 'EL CARMELES ', '', 556),
(105, 'SAN FERNANDO', '', 556),
(106, 'CHICO', '', 569);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_ciudad`
--

CREATE TABLE IF NOT EXISTS `asistencia_ciudad` (
`id` int(11) NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `departamento_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_ciudad`
--

INSERT INTO `asistencia_ciudad` (`id`, `codigo`, `ciudad`, `departamento_id`) VALUES
(1, '001', 'medellin', 1),
(2, '002', 'abejorral', 1),
(3, '004', 'abriaqui', 1),
(4, '021', 'alejandria', 1),
(5, '030', 'amaga', 1),
(6, '031', 'amalfi', 1),
(7, '034', 'andes', 1),
(8, '036', 'angelopolis', 1),
(9, '038', 'angostura', 1),
(10, '040', 'anori', 1),
(11, '042', 'santafe de antioquia', 1),
(12, '044', 'anza', 1),
(13, '045', 'apartado', 1),
(14, '051', 'arboletes', 1),
(15, '055', 'argelia', 1),
(16, '059', 'armenia', 1),
(17, '079', 'barbosa', 1),
(18, '086', 'belmira', 1),
(19, '088', 'bello', 1),
(20, '091', 'betania', 1),
(21, '093', 'betulia', 1),
(22, '101', 'ciudad bolivar', 1),
(23, '107', 'briceño', 1),
(24, '113', 'buritica', 1),
(25, '120', 'caceres', 1),
(26, '125', 'caicedo', 1),
(27, '129', 'caldas', 1),
(28, '134', 'campamento', 1),
(29, '138', 'cañasgordas', 1),
(30, '142', 'caracoli', 1),
(31, '145', 'caramanta', 1),
(32, '147', 'carepa', 1),
(33, '148', 'el carmen de viboral', 1),
(34, '150', 'carolina', 1),
(35, '154', 'caucasia', 1),
(36, '172', 'chigorodo', 1),
(37, '190', 'cisneros', 1),
(38, '197', 'cocorna', 1),
(39, '206', 'concepcion', 1),
(40, '209', 'concordia', 1),
(41, '212', 'copacabana', 1),
(42, '234', 'dabeiba', 1),
(43, '237', 'don matias', 1),
(44, '240', 'ebejico', 1),
(45, '250', 'el bagre', 1),
(46, '264', 'entrerrios', 1),
(47, '266', 'envigado', 1),
(48, '282', 'fredonia', 1),
(49, '284', 'frontino', 1),
(50, '306', 'giraldo', 1),
(51, '308', 'girardota', 1),
(52, '310', 'gomez plata', 1),
(53, '313', 'granada', 1),
(54, '315', 'guadalupe', 1),
(55, '318', 'guarne', 1),
(56, '321', 'guatape', 1),
(57, '347', 'heliconia', 1),
(58, '353', 'hispania', 1),
(59, '360', 'itagui', 1),
(60, '361', 'ituango', 1),
(61, '364', 'jardin', 1),
(62, '368', 'jerico', 1),
(63, '376', 'la ceja', 1),
(64, '380', 'la estrella', 1),
(65, '390', 'la pintada', 1),
(66, '400', 'la union', 1),
(67, '411', 'liborina', 1),
(68, '425', 'maceo', 1),
(69, '440', 'marinilla', 1),
(70, '467', 'montebello', 1),
(71, '475', 'murindo', 1),
(72, '480', 'mutata', 1),
(73, '483', 'nariño', 1),
(74, '490', 'necocli', 1),
(75, '495', 'nechi', 1),
(76, '501', 'olaya', 1),
(77, '541', 'peðol', 1),
(78, '543', 'peque', 1),
(79, '576', 'pueblorrico', 1),
(80, '579', 'puerto berrio', 1),
(81, '585', 'puerto nare', 1),
(82, '591', 'puerto triunfo', 1),
(83, '604', 'remedios', 1),
(84, '607', 'retiro', 1),
(85, '615', 'rionegro', 1),
(86, '628', 'sabanalarga', 1),
(87, '631', 'sabaneta', 1),
(88, '642', 'salgar', 1),
(89, '647', 'san andres de cuerquia', 1),
(90, '649', 'san carlos', 1),
(91, '652', 'san francisco', 1),
(92, '656', 'san jeronimo', 1),
(93, '658', 'san jose de la montaña', 1),
(94, '659', 'san juan de uraba', 1),
(95, '660', 'san luis', 1),
(96, '664', 'san pedro', 1),
(97, '665', 'san pedro de uraba', 1),
(98, '667', 'san rafael', 1),
(99, '670', 'san roque', 1),
(100, '674', 'san vicente', 1),
(101, '679', 'santa barbara', 1),
(102, '686', 'santa rosa de osos', 1),
(103, '690', 'santo domingo', 1),
(104, '697', 'el santuario', 1),
(105, '736', 'segovia', 1),
(106, '756', 'sonson', 1),
(107, '761', 'sopetran', 1),
(108, '789', 'tamesis', 1),
(109, '790', 'taraza', 1),
(110, '792', 'tarso', 1),
(111, '809', 'titiribi', 1),
(112, '819', 'toledo', 1),
(113, '837', 'turbo', 1),
(114, '842', 'uramita', 1),
(115, '847', 'urrao', 1),
(116, '854', 'valdivia', 1),
(117, '856', 'valparaiso', 1),
(118, '858', 'vegachi', 1),
(119, '861', 'venecia', 1),
(120, '873', 'vigia del fuerte', 1),
(121, '885', 'yali', 1),
(122, '887', 'yarumal', 1),
(123, '890', 'yolombo', 1),
(124, '893', 'yondo', 1),
(125, '895', 'zaragoza', 1),
(126, '001', 'barranquilla', 2),
(127, '078', 'baranoa', 2),
(128, '137', 'campo de la cruz', 2),
(129, '141', 'candelaria', 2),
(130, '296', 'galapa', 2),
(131, '372', 'juan de acosta', 2),
(132, '421', 'luruaco', 2),
(133, '433', 'malambo', 2),
(134, '436', 'manati', 2),
(135, '520', 'palmar de varela', 2),
(136, '549', 'piojo', 2),
(137, '558', 'polonuevo', 2),
(138, '560', 'ponedera', 2),
(139, '573', 'puerto colombia', 2),
(140, '606', 'repelon', 2),
(141, '634', 'sabanagrande', 2),
(142, '638', 'sabanalarga', 2),
(143, '675', 'santa lucia', 2),
(144, '685', 'santo tomas', 2),
(145, '758', 'soledad', 2),
(146, '770', 'suan', 2),
(147, '832', 'tubara', 2),
(148, '849', 'usiacuri', 2),
(149, '001', 'bogota, d.c.', 3),
(150, '001', 'cartagena', 4),
(151, '006', 'achi', 4),
(152, '030', 'altos del rosario', 4),
(153, '042', 'arenal', 4),
(154, '052', 'arjona', 4),
(155, '062', 'arroyohondo', 4),
(156, '074', 'barranco de loba', 4),
(157, '140', 'calamar', 4),
(158, '160', 'cantagallo', 4),
(159, '188', 'cicuco', 4),
(160, '212', 'cordoba', 4),
(161, '222', 'clemencia', 4),
(162, '244', 'el carmen de bolivar', 4),
(163, '248', 'el guamo', 4),
(164, '268', 'el peñon', 4),
(165, '300', 'hatillo de loba', 4),
(166, '430', 'magangue', 4),
(167, '433', 'mahates', 4),
(168, '440', 'margarita', 4),
(169, '442', 'maria la baja', 4),
(170, '458', 'montecristo', 4),
(171, '468', 'mompos', 4),
(172, '490', 'norosi', 4),
(173, '473', 'morales', 4),
(174, '549', 'pinillos', 4),
(175, '580', 'regidor', 4),
(176, '600', 'rio viejo', 4),
(177, '620', 'san cristobal', 4),
(178, '647', 'san estanislao', 4),
(179, '650', 'san fernando', 4),
(180, '654', 'san jacinto', 4),
(181, '655', 'san jacinto del cauca', 4),
(182, '657', 'san juan nepomuceno', 4),
(183, '667', 'san martin de loba', 4),
(184, '670', 'san pablo', 4),
(185, '673', 'santa catalina', 4),
(186, '683', 'santa rosa', 4),
(187, '688', 'santa rosa del sur', 4),
(188, '744', 'simiti', 4),
(189, '760', 'soplaviento', 4),
(190, '780', 'talaigua nuevo', 4),
(191, '810', 'tiquisio', 4),
(192, '836', 'turbaco', 4),
(193, '838', 'turbana', 4),
(194, '873', 'villanueva', 4),
(195, '894', 'zambrano', 4),
(196, '001', 'tunja', 5),
(197, '022', 'almeida', 5),
(198, '047', 'aquitania', 5),
(199, '051', 'arcabuco', 5),
(200, '087', 'belen', 5),
(201, '090', 'berbeo', 5),
(202, '092', 'beteitiva', 5),
(203, '097', 'boavita', 5),
(204, '104', 'boyaca', 5),
(205, '106', 'briceño', 5),
(206, '109', 'buenavista', 5),
(207, '114', 'busbanza', 5),
(208, '131', 'caldas', 5),
(209, '135', 'campohermoso', 5),
(210, '162', 'cerinza', 5),
(211, '172', 'chinavita', 5),
(212, '176', 'chiquinquira', 5),
(213, '180', 'chiscas', 5),
(214, '183', 'chita', 5),
(215, '185', 'chitaraque', 5),
(216, '187', 'chivata', 5),
(217, '189', 'cienega', 5),
(218, '204', 'combita', 5),
(219, '212', 'coper', 5),
(220, '215', 'corrales', 5),
(221, '218', 'covarachia', 5),
(222, '223', 'cubara', 5),
(223, '224', 'cucaita', 5),
(224, '226', 'cuitiva', 5),
(225, '232', 'chiquiza', 5),
(226, '236', 'chivor', 5),
(227, '238', 'duitama', 5),
(228, '244', 'el cocuy', 5),
(229, '248', 'el espino', 5),
(230, '272', 'firavitoba', 5),
(231, '276', 'floresta', 5),
(232, '293', 'gachantiva', 5),
(233, '296', 'gameza', 5),
(234, '299', 'garagoa', 5),
(235, '317', 'guacamayas', 5),
(236, '322', 'guateque', 5),
(237, '325', 'guayata', 5),
(238, '332', 'gsican', 5),
(239, '362', 'iza', 5),
(240, '367', 'jenesano', 5),
(241, '368', 'jerico', 5),
(242, '377', 'labranzagrande', 5),
(243, '380', 'la capilla', 5),
(244, '401', 'la victoria', 5),
(245, '403', 'la uvita', 5),
(246, '407', 'villa de leyva', 5),
(247, '425', 'macanal', 5),
(248, '442', 'maripi', 5),
(249, '455', 'miraflores', 5),
(250, '464', 'mongua', 5),
(251, '466', 'mongui', 5),
(252, '469', 'moniquira', 5),
(253, '476', 'motavita', 5),
(254, '480', 'muzo', 5),
(255, '491', 'nobsa', 5),
(256, '494', 'nuevo colon', 5),
(257, '500', 'oicata', 5),
(258, '507', 'otanche', 5),
(259, '511', 'pachavita', 5),
(260, '514', 'paez', 5),
(261, '516', 'paipa', 5),
(262, '518', 'pajarito', 5),
(263, '522', 'panqueba', 5),
(264, '531', 'pauna', 5),
(265, '533', 'paya', 5),
(266, '537', 'paz de rio', 5),
(267, '542', 'pesca', 5),
(268, '550', 'pisba', 5),
(269, '572', 'puerto boyaca', 5),
(270, '580', 'quipama', 5),
(271, '599', 'ramiriqui', 5),
(272, '600', 'raquira', 5),
(273, '621', 'rondon', 5),
(274, '632', 'saboya', 5),
(275, '638', 'sachica', 5),
(276, '646', 'samaca', 5),
(277, '660', 'san eduardo', 5),
(278, '664', 'san jose de pare', 5),
(279, '667', 'san luis de gaceno', 5),
(280, '673', 'san mateo', 5),
(281, '676', 'san miguel de sema', 5),
(282, '681', 'san pablo de borbur', 5),
(283, '686', 'santana', 5),
(284, '690', 'santa maria', 5),
(285, '693', 'santa rosa de viterbo', 5),
(286, '696', 'santa sofia', 5),
(287, '720', 'sativanorte', 5),
(288, '723', 'sativasur', 5),
(289, '740', 'siachoque', 5),
(290, '753', 'soata', 5),
(291, '755', 'socota', 5),
(292, '757', 'socha', 5),
(293, '759', 'sogamoso', 5),
(294, '761', 'somondoco', 5),
(295, '762', 'sora', 5),
(296, '763', 'sotaquira', 5),
(297, '764', 'soraca', 5),
(298, '774', 'susacon', 5),
(299, '776', 'sutamarchan', 5),
(300, '778', 'sutatenza', 5),
(301, '790', 'tasco', 5),
(302, '798', 'tenza', 5),
(303, '804', 'tibana', 5),
(304, '806', 'tibasosa', 5),
(305, '808', 'tinjaca', 5),
(306, '810', 'tipacoque', 5),
(307, '814', 'toca', 5),
(308, '816', 'togsi', 5),
(309, '820', 'topaga', 5),
(310, '822', 'tota', 5),
(311, '832', 'tunungua', 5),
(312, '835', 'turmeque', 5),
(313, '837', 'tuta', 5),
(314, '839', 'tutaza', 5),
(315, '842', 'umbita', 5),
(316, '861', 'ventaquemada', 5),
(317, '879', 'viracacha', 5),
(318, '897', 'zetaquira', 5),
(319, '001', 'manizales', 6),
(320, '013', 'aguadas', 6),
(321, '042', 'anserma', 6),
(322, '050', 'aranzazu', 6),
(323, '088', 'belalcazar', 6),
(324, '174', 'chinchina', 6),
(325, '272', 'filadelfia', 6),
(326, '380', 'la dorada', 6),
(327, '388', 'la merced', 6),
(328, '433', 'manzanares', 6),
(329, '442', 'marmato', 6),
(330, '444', 'marquetalia', 6),
(331, '446', 'marulanda', 6),
(332, '486', 'neira', 6),
(333, '495', 'norcasia', 6),
(334, '513', 'pacora', 6),
(335, '524', 'palestina', 6),
(336, '541', 'pensilvania', 6),
(337, '614', 'riosucio', 6),
(338, '616', 'risaralda', 6),
(339, '653', 'salamina', 6),
(340, '662', 'samana', 6),
(341, '665', 'san jose', 6),
(342, '777', 'supia', 6),
(343, '867', 'victoria', 6),
(344, '873', 'villamaria', 6),
(345, '877', 'viterbo', 6),
(346, '001', 'florencia', 7),
(347, '029', 'albania', 7),
(348, '094', 'belen de los andaquies', 7),
(349, '150', 'cartagena del chaira', 7),
(350, '205', 'curillo', 7),
(351, '247', 'el doncello', 7),
(352, '256', 'el paujil', 7),
(353, '410', 'la montañita', 7),
(354, '460', 'milan', 7),
(355, '479', 'morelia', 7),
(356, '592', 'puerto rico', 7),
(357, '610', 'san jose del fragua', 7),
(358, '753', 'san vicente del caguan', 7),
(359, '756', 'solano', 7),
(360, '785', 'solita', 7),
(361, '860', 'valparaiso', 7),
(362, '001', 'popayan', 8),
(363, '022', 'almaguer', 8),
(364, '050', 'argelia', 8),
(365, '075', 'balboa', 8),
(366, '100', 'bolivar', 8),
(367, '110', 'buenos aires', 8),
(368, '130', 'cajibio', 8),
(369, '137', 'caldono', 8),
(370, '142', 'caloto', 8),
(371, '212', 'corinto', 8),
(372, '256', 'el tambo', 8),
(373, '290', 'florencia', 8),
(374, '300', 'guachene', 8),
(375, '318', 'guapi', 8),
(376, '355', 'inza', 8),
(377, '364', 'jambalo', 8),
(378, '392', 'la sierra', 8),
(379, '397', 'la vega', 8),
(380, '418', 'lopez', 8),
(381, '450', 'mercaderes', 8),
(382, '455', 'miranda', 8),
(383, '473', 'morales', 8),
(384, '513', 'padilla', 8),
(385, '517', 'paez', 8),
(386, '532', 'patia', 8),
(387, '533', 'piamonte', 8),
(388, '548', 'piendamo', 8),
(389, '573', 'puerto tejada', 8),
(390, '585', 'purace', 8),
(391, '622', 'rosas', 8),
(392, '693', 'san sebastian', 8),
(393, '698', 'santander de quilichao', 8),
(394, '701', 'santa rosa', 8),
(395, '743', 'silvia', 8),
(396, '760', 'sotara', 8),
(397, '780', 'suarez', 8),
(398, '785', 'sucre', 8),
(399, '807', 'timbio', 8),
(400, '809', 'timbiqui', 8),
(401, '821', 'toribio', 8),
(402, '824', 'totoro', 8),
(403, '845', 'villa rica', 8),
(404, '001', 'valledupar', 9),
(405, '011', 'aguachica', 9),
(406, '013', 'agustin codazzi', 9),
(407, '032', 'astrea', 9),
(408, '045', 'becerril', 9),
(409, '060', 'bosconia', 9),
(410, '175', 'chimichagua', 9),
(411, '178', 'chiriguana', 9),
(412, '228', 'curumani', 9),
(413, '238', 'el copey', 9),
(414, '250', 'el paso', 9),
(415, '295', 'gamarra', 9),
(416, '310', 'gonzalez', 9),
(417, '383', 'la gloria', 9),
(418, '400', 'la jagua de ibirico', 9),
(419, '443', 'manaure', 9),
(420, '517', 'pailitas', 9),
(421, '550', 'pelaya', 9),
(422, '570', 'pueblo bello', 9),
(423, '614', 'rio de oro', 9),
(424, '621', 'la paz', 9),
(425, '710', 'san alberto', 9),
(426, '750', 'san diego', 9),
(427, '770', 'san martin', 9),
(428, '787', 'tamalameque', 9),
(429, '001', 'monteria', 10),
(430, '068', 'ayapel', 10),
(431, '079', 'buenavista', 10),
(432, '090', 'canalete', 10),
(433, '162', 'cerete', 10),
(434, '168', 'chima', 10),
(435, '182', 'chinu', 10),
(436, '189', 'cienaga de oro', 10),
(437, '300', 'cotorra', 10),
(438, '350', 'la apartada', 10),
(439, '417', 'lorica', 10),
(440, '419', 'los cordobas', 10),
(441, '464', 'momil', 10),
(442, '466', 'montelibano', 10),
(443, '500', 'moñitos', 10),
(444, '555', 'planeta rica', 10),
(445, '570', 'pueblo nuevo', 10),
(446, '574', 'puerto escondido', 10),
(447, '580', 'puerto libertador', 10),
(448, '586', 'purisima', 10),
(449, '660', 'sahagun', 10),
(450, '670', 'san andres sotavento', 10),
(451, '672', 'san antero', 10),
(452, '675', 'san bernardo del viento', 10),
(453, '678', 'san carlos', 10),
(454, '686', 'san pelayo', 10),
(455, '807', 'tierralta', 10),
(456, '855', 'valencia', 10),
(457, '001', 'agua de dios', 11),
(458, '019', 'alban', 11),
(459, '035', 'anapoima', 11),
(460, '040', 'anolaima', 11),
(461, '053', 'arbelaez', 11),
(462, '086', 'beltran', 11),
(463, '095', 'bituima', 11),
(464, '099', 'bojaca', 11),
(465, '120', 'cabrera', 11),
(466, '123', 'cachipay', 11),
(467, '126', 'cajica', 11),
(468, '148', 'caparrapi', 11),
(469, '151', 'caqueza', 11),
(470, '154', 'carmen de carupa', 11),
(471, '168', 'chaguani', 11),
(472, '175', 'chia', 11),
(473, '178', 'chipaque', 11),
(474, '181', 'choachi', 11),
(475, '183', 'choconta', 11),
(476, '200', 'cogua', 11),
(477, '214', 'cota', 11),
(478, '224', 'cucunuba', 11),
(479, '245', 'el colegio', 11),
(480, '258', 'el peñon', 11),
(481, '260', 'el rosal', 11),
(482, '269', 'facatativa', 11),
(483, '279', 'fomeque', 11),
(484, '281', 'fosca', 11),
(485, '286', 'funza', 11),
(486, '288', 'fuquene', 11),
(487, '290', 'fusagasuga', 11),
(488, '293', 'gachala', 11),
(489, '295', 'gachancipa', 11),
(490, '297', 'gacheta', 11),
(491, '299', 'gama', 11),
(492, '307', 'girardot', 11),
(493, '312', 'granada', 11),
(494, '317', 'guacheta', 11),
(495, '320', 'guaduas', 11),
(496, '322', 'guasca', 11),
(497, '324', 'guataqui', 11),
(498, '326', 'guatavita', 11),
(499, '328', 'guayabal de siquima', 11),
(500, '335', 'guayabetal', 11),
(501, '339', 'gutierrez', 11),
(502, '368', 'jerusalen', 11),
(503, '372', 'junin', 11),
(504, '377', 'la calera', 11),
(505, '386', 'la mesa', 11),
(506, '394', 'la palma', 11),
(507, '398', 'la peña', 11),
(508, '402', 'la vega', 11),
(509, '407', 'lenguazaque', 11),
(510, '426', 'macheta', 11),
(511, '430', 'madrid', 11),
(512, '436', 'manta', 11),
(513, '438', 'medina', 11),
(514, '473', 'mosquera', 11),
(515, '483', 'nariño', 11),
(516, '486', 'nemocon', 11),
(517, '488', 'nilo', 11),
(518, '489', 'nimaima', 11),
(519, '491', 'nocaima', 11),
(520, '506', 'venecia', 11),
(521, '513', 'pacho', 11),
(522, '518', 'paime', 11),
(523, '524', 'pandi', 11),
(524, '530', 'paratebueno', 11),
(525, '535', 'pasca', 11),
(526, '572', 'puerto salgar', 11),
(527, '580', 'puli', 11),
(528, '592', 'quebradanegra', 11),
(529, '594', 'quetame', 11),
(530, '596', 'quipile', 11),
(531, '599', 'apulo', 11),
(532, '612', 'ricaurte', 11),
(533, '645', 'san antonio del tequendama', 11),
(534, '649', 'san bernardo', 11),
(535, '653', 'san cayetano', 11),
(536, '658', 'san francisco', 11),
(537, '662', 'san juan de rio seco', 11),
(538, '718', 'sasaima', 11),
(539, '736', 'sesquile', 11),
(540, '740', 'sibate', 11),
(541, '743', 'silvania', 11),
(542, '745', 'simijaca', 11),
(543, '754', 'soacha', 11),
(544, '758', 'sopo', 11),
(545, '769', 'subachoque', 11),
(546, '772', 'suesca', 11),
(547, '777', 'supata', 11),
(548, '779', 'susa', 11),
(549, '781', 'sutatausa', 11),
(550, '785', 'tabio', 11),
(551, '793', 'tausa', 11),
(552, '797', 'tena', 11),
(553, '799', 'tenjo', 11),
(554, '805', 'tibacuy', 11),
(555, '807', 'tibirita', 11),
(556, '815', 'tocaima', 11),
(557, '817', 'tocancipa', 11),
(558, '823', 'topaipi', 11),
(559, '839', 'ubala', 11),
(560, '841', 'ubaque', 11),
(561, '843', 'villa de san diego de ubate', 11),
(562, '845', 'une', 11),
(563, '851', 'utica', 11),
(564, '862', 'vergara', 11),
(565, '867', 'viani', 11),
(566, '871', 'villagomez', 11),
(567, '873', 'villapinzon', 11),
(568, '875', 'villeta', 11),
(569, '878', 'viota', 11),
(570, '885', 'yacopi', 11),
(571, '898', 'zipacon', 11),
(572, '899', 'zipaquira', 11),
(573, '001', 'quibdo', 12),
(574, '006', 'acandi', 12),
(575, '025', 'alto baudo', 12),
(576, '050', 'atrato', 12),
(577, '073', 'bagado', 12),
(578, '075', 'bahia solano', 12),
(579, '077', 'bajo baudo', 12),
(580, '099', 'bojaya', 12),
(581, '135', 'el canton del san pablo', 12),
(582, '150', 'carmen del darien', 12),
(583, '160', 'certegui', 12),
(584, '205', 'condoto', 12),
(585, '245', 'el carmen de atrato', 12),
(586, '250', 'el litoral del san juan', 12),
(587, '361', 'istmina', 12),
(588, '372', 'jurado', 12),
(589, '413', 'lloro', 12),
(590, '425', 'medio atrato', 12),
(591, '430', 'medio baudo', 12),
(592, '450', 'medio san juan', 12),
(593, '491', 'novita', 12),
(594, '495', 'nuqui', 12),
(595, '580', 'rio iro', 12),
(596, '600', 'rio quito', 12),
(597, '615', 'riosucio', 12),
(598, '660', 'san jose del palmar', 12),
(599, '745', 'sipi', 12),
(600, '787', 'tado', 12),
(601, '800', 'unguia', 12),
(602, '810', 'union panamericana', 12),
(603, '001', 'neiva', 13),
(604, '006', 'acevedo', 13),
(605, '013', 'agrado', 13),
(606, '016', 'aipe', 13),
(607, '020', 'algeciras', 13),
(608, '026', 'altamira', 13),
(609, '078', 'baraya', 13),
(610, '132', 'campoalegre', 13),
(611, '206', 'colombia', 13),
(612, '244', 'elias', 13),
(613, '298', 'garzon', 13),
(614, '306', 'gigante', 13),
(615, '319', 'guadalupe', 13),
(616, '349', 'hobo', 13),
(617, '357', 'iquira', 13),
(618, '359', 'isnos', 13),
(619, '378', 'la argentina', 13),
(620, '396', 'la plata', 13),
(621, '483', 'nataga', 13),
(622, '503', 'oporapa', 13),
(623, '518', 'paicol', 13),
(624, '524', 'palermo', 13),
(625, '530', 'palestina', 13),
(626, '548', 'pital', 13),
(627, '551', 'pitalito', 13),
(628, '615', 'rivera', 13),
(629, '660', 'saladoblanco', 13),
(630, '668', 'san agustin', 13),
(631, '676', 'santa maria', 13),
(632, '770', 'suaza', 13),
(633, '791', 'tarqui', 13),
(634, '797', 'tesalia', 13),
(635, '799', 'tello', 13),
(636, '801', 'teruel', 13),
(637, '807', 'timana', 13),
(638, '872', 'villavieja', 13),
(639, '885', 'yaguara', 13),
(640, '001', 'riohacha', 14),
(641, '035', 'albania', 14),
(642, '078', 'barrancas', 14),
(643, '090', 'dibulla', 14),
(644, '098', 'distraccion', 14),
(645, '110', 'el molino', 14),
(646, '279', 'fonseca', 14),
(647, '378', 'hatonuevo', 14),
(648, '420', 'la jagua del pilar', 14),
(649, '430', 'maicao', 14),
(650, '560', 'manaure', 14),
(651, '650', 'san juan del cesar', 14),
(652, '847', 'uribia', 14),
(653, '855', 'urumita', 14),
(654, '874', 'villanueva', 14),
(655, '001', 'santa marta', 15),
(656, '030', 'algarrobo', 15),
(657, '053', 'aracataca', 15),
(658, '058', 'ariguani', 15),
(659, '161', 'cerro san antonio', 15),
(660, '170', 'chibolo', 15),
(661, '189', 'cienaga', 15),
(662, '205', 'concordia', 15),
(663, '245', 'el banco', 15),
(664, '258', 'el piñon', 15),
(665, '268', 'el reten', 15),
(666, '288', 'fundacion', 15),
(667, '318', 'guamal', 15),
(668, '460', 'nueva granada', 15),
(669, '541', 'pedraza', 15),
(670, '545', 'pijiño del carmen', 15),
(671, '551', 'pivijay', 15),
(672, '555', 'plato', 15),
(673, '570', 'puebloviejo', 15),
(674, '605', 'remolino', 15),
(675, '660', 'sabanas de san angel', 15),
(676, '675', 'salamina', 15),
(677, '692', 'san sebastian de buenavista', 15),
(678, '703', 'san zenon', 15),
(679, '707', 'santa ana', 15),
(680, '720', 'santa barbara de pinto', 15),
(681, '745', 'sitionuevo', 15),
(682, '798', 'tenerife', 15),
(683, '960', 'zapayan', 15),
(684, '980', 'zona bananera', 15),
(685, '001', 'villavicencio', 16),
(686, '006', 'acacias', 16),
(687, '110', 'barranca de upia', 16),
(688, '124', 'cabuyaro', 16),
(689, '150', 'castilla la nueva', 16),
(690, '223', 'cubarral', 16),
(691, '226', 'cumaral', 16),
(692, '245', 'el calvario', 16),
(693, '251', 'el castillo', 16),
(694, '270', 'el dorado', 16),
(695, '287', 'fuente de oro', 16),
(696, '313', 'granada', 16),
(697, '318', 'guamal', 16),
(698, '325', 'mapiripan', 16),
(699, '330', 'mesetas', 16),
(700, '350', 'la macarena', 16),
(701, '370', 'uribe', 16),
(702, '400', 'lejanias', 16),
(703, '450', 'puerto concordia', 16),
(704, '568', 'puerto gaitan', 16),
(705, '573', 'puerto lopez', 16),
(706, '577', 'puerto lleras', 16),
(707, '590', 'puerto rico', 16),
(708, '606', 'restrepo', 16),
(709, '680', 'san carlos de guaroa', 16),
(710, '683', 'san juan de arama', 16),
(711, '686', 'san juanito', 16),
(712, '689', 'san martin', 16),
(713, '711', 'vistahermosa', 16),
(714, '001', 'pasto', 17),
(715, '019', 'alban', 17),
(716, '022', 'aldana', 17),
(717, '036', 'ancuya', 17),
(718, '051', 'arboleda', 17),
(719, '079', 'barbacoas', 17),
(720, '083', 'belen', 17),
(721, '110', 'buesaco', 17),
(722, '203', 'colon', 17),
(723, '207', 'consaca', 17),
(724, '210', 'contadero', 17),
(725, '215', 'cordoba', 17),
(726, '224', 'cuaspud', 17),
(727, '227', 'cumbal', 17),
(728, '233', 'cumbitara', 17),
(729, '240', 'chachagsi', 17),
(730, '250', 'el charco', 17),
(731, '254', 'el peñol', 17),
(732, '256', 'el rosario', 17),
(733, '258', 'el tablon de gomez', 17),
(734, '260', 'el tambo', 17),
(735, '287', 'funes', 17),
(736, '317', 'guachucal', 17),
(737, '320', 'guaitarilla', 17),
(738, '323', 'gualmatan', 17),
(739, '352', 'iles', 17),
(740, '354', 'imues', 17),
(741, '356', 'ipiales', 17),
(742, '378', 'la cruz', 17),
(743, '381', 'la florida', 17),
(744, '385', 'la llanada', 17),
(745, '390', 'la tola', 17),
(746, '399', 'la union', 17),
(747, '405', 'leiva', 17),
(748, '411', 'linares', 17),
(749, '418', 'los andes', 17),
(750, '427', 'magsi', 17),
(751, '435', 'mallama', 17),
(752, '473', 'mosquera', 17),
(753, '480', 'nariño', 17),
(754, '490', 'olaya herrera', 17),
(755, '506', 'ospina', 17),
(756, '520', 'francisco pizarro', 17),
(757, '540', 'policarpa', 17),
(758, '560', 'potosi', 17),
(759, '565', 'providencia', 17),
(760, '573', 'puerres', 17),
(761, '585', 'pupiales', 17),
(762, '612', 'ricaurte', 17),
(763, '621', 'roberto payan', 17),
(764, '678', 'samaniego', 17),
(765, '683', 'sandona', 17),
(766, '685', 'san bernardo', 17),
(767, '687', 'san lorenzo', 17),
(768, '693', 'san pablo', 17),
(769, '694', 'san pedro de cartago', 17),
(770, '696', 'santa barbara', 17),
(771, '699', 'santacruz', 17),
(772, '720', 'sapuyes', 17),
(773, '786', 'taminango', 17),
(774, '788', 'tangua', 17),
(775, '835', 'san andres de tumaco', 17),
(776, '838', 'tuquerres', 17),
(777, '885', 'yacuanquer', 17),
(778, '001', 'cucuta', 18),
(779, '003', 'abrego', 18),
(780, '051', 'arboledas', 18),
(781, '099', 'bochalema', 18),
(782, '109', 'bucarasica', 18),
(783, '125', 'cacota', 18),
(784, '128', 'cachira', 18),
(785, '172', 'chinacota', 18),
(786, '174', 'chitaga', 18),
(787, '206', 'convencion', 18),
(788, '223', 'cucutilla', 18),
(789, '239', 'durania', 18),
(790, '245', 'el carmen', 18),
(791, '250', 'el tarra', 18),
(792, '261', 'el zulia', 18),
(793, '313', 'gramalote', 18),
(794, '344', 'hacari', 18),
(795, '347', 'herran', 18),
(796, '377', 'labateca', 18),
(797, '385', 'la esperanza', 18),
(798, '398', 'la playa', 18),
(799, '405', 'los patios', 18),
(800, '418', 'lourdes', 18),
(801, '480', 'mutiscua', 18),
(802, '498', 'ocaña', 18),
(803, '518', 'pamplona', 18),
(804, '520', 'pamplonita', 18),
(805, '553', 'puerto santander', 18),
(806, '599', 'ragonvalia', 18),
(807, '660', 'salazar', 18),
(808, '670', 'san calixto', 18),
(809, '673', 'san cayetano', 18),
(810, '680', 'santiago', 18),
(811, '720', 'sardinata', 18),
(812, '743', 'silos', 18),
(813, '800', 'teorama', 18),
(814, '810', 'tibu', 18),
(815, '820', 'toledo', 18),
(816, '871', 'villa caro', 18),
(817, '874', 'villa del rosario', 18),
(818, '001', 'armenia', 19),
(819, '111', 'buenavista', 19),
(820, '130', 'calarca', 19),
(821, '190', 'circasia', 19),
(822, '212', 'cordoba', 19),
(823, '272', 'filandia', 19),
(824, '302', 'genova', 19),
(825, '401', 'la tebaida', 19),
(826, '470', 'montenegro', 19),
(827, '548', 'pijao', 19),
(828, '594', 'quimbaya', 19),
(829, '690', 'salento', 19),
(830, '001', 'pereira', 20),
(831, '045', 'apia', 20),
(832, '075', 'balboa', 20),
(833, '088', 'belen de umbria', 20),
(834, '170', 'dosquebradas', 20),
(835, '318', 'guatica', 20),
(836, '383', 'la celia', 20),
(837, '400', 'la virginia', 20),
(838, '440', 'marsella', 20),
(839, '456', 'mistrato', 20),
(840, '572', 'pueblo rico', 20),
(841, '594', 'quinchia', 20),
(842, '682', 'santa rosa de cabal', 20),
(843, '687', 'santuario', 20),
(844, '001', 'bucaramanga', 21),
(845, '013', 'aguada', 21),
(846, '020', 'albania', 21),
(847, '051', 'aratoca', 21),
(848, '077', 'barbosa', 21),
(849, '079', 'barichara', 21),
(850, '081', 'barrancabermeja', 21),
(851, '092', 'betulia', 21),
(852, '101', 'bolivar', 21),
(853, '121', 'cabrera', 21),
(854, '132', 'california', 21),
(855, '147', 'capitanejo', 21),
(856, '152', 'carcasi', 21),
(857, '160', 'cepita', 21),
(858, '162', 'cerrito', 21),
(859, '167', 'charala', 21),
(860, '169', 'charta', 21),
(861, '176', 'chima', 21),
(862, '179', 'chipata', 21),
(863, '190', 'cimitarra', 21),
(864, '207', 'concepcion', 21),
(865, '209', 'confines', 21),
(866, '211', 'contratacion', 21),
(867, '217', 'coromoro', 21),
(868, '229', 'curiti', 21),
(869, '235', 'el carmen de chucuri', 21),
(870, '245', 'el guacamayo', 21),
(871, '250', 'el peñon', 21),
(872, '255', 'el playon', 21),
(873, '264', 'encino', 21),
(874, '266', 'enciso', 21),
(875, '271', 'florian', 21),
(876, '276', 'floridablanca', 21),
(877, '296', 'galan', 21),
(878, '298', 'gambita', 21),
(879, '307', 'giron', 21),
(880, '318', 'guaca', 21),
(881, '320', 'guadalupe', 21),
(882, '322', 'guapota', 21),
(883, '324', 'guavata', 21),
(884, '327', 'gsepsa', 21),
(885, '344', 'hato', 21),
(886, '368', 'jesus maria', 21),
(887, '370', 'jordan', 21),
(888, '377', 'la belleza', 21),
(889, '385', 'landazuri', 21),
(890, '397', 'la paz', 21),
(891, '406', 'lebrija', 21),
(892, '418', 'los santos', 21),
(893, '425', 'macaravita', 21),
(894, '432', 'malaga', 21),
(895, '444', 'matanza', 21),
(896, '464', 'mogotes', 21),
(897, '468', 'molagavita', 21),
(898, '498', 'ocamonte', 21),
(899, '500', 'oiba', 21),
(900, '502', 'onzaga', 21),
(901, '522', 'palmar', 21),
(902, '524', 'palmas del socorro', 21),
(903, '533', 'paramo', 21),
(904, '547', 'piedecuesta', 21),
(905, '549', 'pinchote', 21),
(906, '572', 'puente nacional', 21),
(907, '573', 'puerto parra', 21),
(908, '575', 'puerto wilches', 21),
(909, '615', 'rionegro', 21),
(910, '655', 'sabana de torres', 21),
(911, '669', 'san andres', 21),
(912, '673', 'san benito', 21),
(913, '679', 'san gil', 21),
(914, '682', 'san joaquin', 21),
(915, '684', 'san jose de miranda', 21),
(916, '686', 'san miguel', 21),
(917, '689', 'san vicente de chucuri', 21),
(918, '705', 'santa barbara', 21),
(919, '720', 'santa helena del opon', 21),
(920, '745', 'simacota', 21),
(921, '755', 'socorro', 21),
(922, '770', 'suaita', 21),
(923, '773', 'sucre', 21),
(924, '780', 'surata', 21),
(925, '820', 'tona', 21),
(926, '855', 'valle de san jose', 21),
(927, '861', 'velez', 21),
(928, '867', 'vetas', 21),
(929, '872', 'villanueva', 21),
(930, '895', 'zapatoca', 21),
(931, '001', 'sincelejo', 22),
(932, '110', 'buenavista', 22),
(933, '124', 'caimito', 22),
(934, '204', 'coloso', 22),
(935, '215', 'corozal', 22),
(936, '221', 'coveñas', 22),
(937, '230', 'chalan', 22),
(938, '233', 'el roble', 22),
(939, '235', 'galeras', 22),
(940, '265', 'guaranda', 22),
(941, '400', 'la union', 22),
(942, '418', 'los palmitos', 22),
(943, '429', 'majagual', 22),
(944, '473', 'morroa', 22),
(945, '508', 'ovejas', 22),
(946, '523', 'palmito', 22),
(947, '670', 'sampues', 22),
(948, '678', 'san benito abad', 22),
(949, '702', 'san juan de betulia', 22),
(950, '708', 'san marcos', 22),
(951, '713', 'san onofre', 22),
(952, '717', 'san pedro', 22),
(953, '742', 'san luis de since', 22),
(954, '771', 'sucre', 22),
(955, '820', 'santiago de tolu', 22),
(956, '823', 'tolu viejo', 22),
(957, '001', 'ibague', 23),
(958, '024', 'alpujarra', 23),
(959, '026', 'alvarado', 23),
(960, '030', 'ambalema', 23),
(961, '043', 'anzoategui', 23),
(962, '055', 'armero', 23),
(963, '067', 'ataco', 23),
(964, '124', 'cajamarca', 23),
(965, '148', 'carmen de apicala', 23),
(966, '152', 'casabianca', 23),
(967, '168', 'chaparral', 23),
(968, '200', 'coello', 23),
(969, '217', 'coyaima', 23),
(970, '226', 'cunday', 23),
(971, '236', 'dolores', 23),
(972, '268', 'espinal', 23),
(973, '270', 'falan', 23),
(974, '275', 'flandes', 23),
(975, '283', 'fresno', 23),
(976, '319', 'guamo', 23),
(977, '347', 'herveo', 23),
(978, '349', 'honda', 23),
(979, '352', 'icononzo', 23),
(980, '408', 'lerida', 23),
(981, '411', 'libano', 23),
(982, '443', 'mariquita', 23),
(983, '449', 'melgar', 23),
(984, '461', 'murillo', 23),
(985, '483', 'natagaima', 23),
(986, '504', 'ortega', 23),
(987, '520', 'palocabildo', 23),
(988, '547', 'piedras', 23),
(989, '555', 'planadas', 23),
(990, '563', 'prado', 23),
(991, '585', 'purificacion', 23),
(992, '616', 'rioblanco', 23),
(993, '622', 'roncesvalles', 23),
(994, '624', 'rovira', 23),
(995, '671', 'saldaña', 23),
(996, '675', 'san antonio', 23),
(997, '678', 'san luis', 23),
(998, '686', 'santa isabel', 23),
(999, '770', 'suarez', 23),
(1000, '854', 'valle de san juan', 23),
(1001, '861', 'venadillo', 23),
(1002, '870', 'villahermosa', 23),
(1003, '873', 'villarrica', 23),
(1004, '001', 'cali', 24),
(1005, '020', 'alcala', 24),
(1006, '036', 'andalucia', 24),
(1007, '041', 'ansermanuevo', 24),
(1008, '054', 'argelia', 24),
(1009, '100', 'bolivar', 24),
(1010, '109', 'buenaventura', 24),
(1011, '111', 'guadalajara de buga', 24),
(1012, '113', 'bugalagrande', 24),
(1013, '122', 'caicedonia', 24),
(1014, '126', 'calima', 24),
(1015, '130', 'candelaria', 24),
(1016, '147', 'cartago', 24),
(1017, '233', 'dagua', 24),
(1018, '243', 'el aguila', 24),
(1019, '246', 'el cairo', 24),
(1020, '248', 'el cerrito', 24),
(1021, '250', 'el dovio', 24),
(1022, '275', 'florida', 24),
(1023, '306', 'ginebra', 24),
(1024, '318', 'guacari', 24),
(1025, '364', 'jamundi', 24),
(1026, '377', 'la cumbre', 24),
(1027, '400', 'la union', 24),
(1028, '403', 'la victoria', 24),
(1029, '497', 'obando', 24),
(1030, '520', 'palmira', 24),
(1031, '563', 'pradera', 24),
(1032, '606', 'restrepo', 24),
(1033, '616', 'riofrio', 24),
(1034, '622', 'roldanillo', 24),
(1035, '670', 'san pedro', 24),
(1036, '736', 'sevilla', 24),
(1037, '823', 'toro', 24),
(1038, '828', 'trujillo', 24),
(1039, '834', 'tulua', 24),
(1040, '845', 'ulloa', 24),
(1041, '863', 'versalles', 24),
(1042, '869', 'vijes', 24),
(1043, '890', 'yotoco', 24),
(1044, '892', 'yumbo', 24),
(1045, '895', 'zarzal', 24),
(1046, '001', 'arauca', 25),
(1047, '065', 'arauquita', 25),
(1048, '220', 'cravo norte', 25),
(1049, '300', 'fortul', 25),
(1050, '591', 'puerto rondon', 25),
(1051, '736', 'saravena', 25),
(1052, '794', 'tame', 25),
(1053, '001', 'yopal', 26),
(1054, '010', 'aguazul', 26),
(1055, '015', 'chameza', 26),
(1056, '125', 'hato corozal', 26),
(1057, '136', 'la salina', 26),
(1058, '139', 'mani', 26),
(1059, '162', 'monterrey', 26),
(1060, '225', 'nunchia', 26),
(1061, '230', 'orocue', 26),
(1062, '250', 'paz de ariporo', 26),
(1063, '263', 'pore', 26),
(1064, '279', 'recetor', 26),
(1065, '300', 'sabanalarga', 26),
(1066, '315', 'sacama', 26),
(1067, '325', 'san luis de palenque', 26),
(1068, '400', 'tamara', 26),
(1069, '410', 'tauramena', 26),
(1070, '430', 'trinidad', 26),
(1071, '440', 'villanueva', 26),
(1072, '001', 'mocoa', 27),
(1073, '219', 'colon', 27),
(1074, '320', 'orito', 27),
(1075, '568', 'puerto asis', 27),
(1076, '569', 'puerto caicedo', 27),
(1077, '571', 'puerto guzman', 27),
(1078, '573', 'leguizamo', 27),
(1079, '749', 'sibundoy', 27),
(1080, '755', 'san francisco', 27),
(1081, '757', 'san miguel', 27),
(1082, '760', 'santiago', 27),
(1083, '865', 'valle del guamuez', 27),
(1084, '885', 'villagarzon', 27),
(1085, '001', 'san andres', 28),
(1086, '564', 'providencia', 28),
(1087, '001', 'leticia', 29),
(1088, '263', 'el encanto', 29),
(1089, '405', 'la chorrera', 29),
(1090, '407', 'la pedrera', 29),
(1091, '430', 'la victoria', 29),
(1092, '460', 'miriti - parana', 29),
(1093, '530', 'puerto alegria', 29),
(1094, '536', 'puerto arica', 29),
(1095, '540', 'puerto nariño', 29),
(1096, '669', 'puerto santander', 29),
(1097, '798', 'tarapaca', 29),
(1098, '001', 'inirida', 30),
(1099, '343', 'barranco minas', 30),
(1100, '663', 'mapiripana', 30),
(1101, '883', 'san felipe', 30),
(1102, '884', 'puerto colombia', 30),
(1103, '885', 'la guadalupe', 30),
(1104, '886', 'cacahual', 30),
(1105, '887', 'pana pana', 30),
(1106, '888', 'morichal', 30),
(1107, '001', 'san jose del guaviare', 31),
(1108, '015', 'calamar', 31),
(1109, '025', 'el retorno', 31),
(1110, '200', 'miraflores', 31),
(1111, '001', 'mitu', 32),
(1112, '161', 'caruru', 32),
(1113, '666', 'taraira', 32),
(1114, '777', 'papunaua', 32),
(1115, '889', 'yavarate', 32),
(1116, '001', 'puerto carreño', 33),
(1117, '524', 'la primavera', 33),
(1118, '624', 'santa rosalia', 33),
(1119, '773', 'cumaribo', 33);

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
  `entidad_id` int(11) NOT NULL,
  `sede_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_departamento`
--

CREATE TABLE IF NOT EXISTS `asistencia_departamento` (
`id` int(11) NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_departamento`
--

INSERT INTO `asistencia_departamento` (`id`, `codigo`, `departamento`) VALUES
(1, '05', 'antioquia'),
(2, '08', 'atlantico'),
(3, '11', 'bogota'),
(4, '13', 'bolivar'),
(5, '15', 'boyaca'),
(6, '17', 'caldas'),
(7, '18', 'caqueta'),
(8, '19', 'cauca'),
(9, '20', 'cesar'),
(10, '23', 'cordoba'),
(11, '25', 'cundinamarca'),
(12, '27', 'choco'),
(13, '41', 'huila'),
(14, '44', 'la guajira'),
(15, '47', 'magdalena'),
(16, '50', 'meta'),
(17, '52', 'nariño'),
(18, '54', 'n. de santander'),
(19, '63', 'quindio'),
(20, '66', 'risaralda'),
(21, '68', 'santander'),
(22, '70', 'sucre'),
(23, '73', 'tolima'),
(24, '76', 'valle del cauca'),
(25, '81', 'arauca'),
(26, '85', 'casanare'),
(27, '86', 'putumayo'),
(28, '88', 'san andres'),
(29, '91', 'amazonas'),
(30, '94', 'guainia'),
(31, '95', 'guaviare'),
(32, '97', 'vaupes'),
(33, '99', 'vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_entidad`
--

CREATE TABLE IF NOT EXISTS `asistencia_entidad` (
`id` int(11) NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `entidad` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(14, '', 'UNIVERSIDAD DE CUNDINAMARCA'),
(15, '', 'PARTICULAR'),
(16, '', 'UNIVERSIDAD PILOTO'),
(17, '', 'ITFIP');

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
(1, 'VIVELAB', 'ITUC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_servicio`
--

CREATE TABLE IF NOT EXISTS `asistencia_servicio` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `servicio` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sede_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_servicio`
--

INSERT INTO `asistencia_servicio` (`id`, `codigo`, `servicio`, `sede_id`) VALUES
(1, 'LC', 'LABORATORIO CAPACITACION', 1),
(2, 'LI', 'LABORATORIO DE IMAGEN', 1),
(3, '', 'LABORATORIO DE DESARROLLO DE CONTENIDO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia_tipodocumento`
--

CREATE TABLE IF NOT EXISTS `asistencia_tipodocumento` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencia_tipodocumento`
--

INSERT INTO `asistencia_tipodocumento` (`id`, `codigo`, `tipo`) VALUES
(1, 'TI', 'TARJETA DE IDENTIDAD'),
(2, 'CC', 'CEDULA CIUDADANIA'),
(3, 'CE', 'CEDULA DE EXTRANJERIA'),
(4, 'PS', 'PASAPORTE');

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add ciudad', 6, 'add_ciudad'),
(17, 'Can change ciudad', 6, 'change_ciudad'),
(18, 'Can delete ciudad', 6, 'delete_ciudad'),
(19, 'Can add servicio', 7, 'add_servicio'),
(20, 'Can change servicio', 7, 'change_servicio'),
(21, 'Can delete servicio', 7, 'delete_servicio'),
(22, 'Can add asistencia', 8, 'add_asistencia'),
(23, 'Can change asistencia', 8, 'change_asistencia'),
(24, 'Can delete asistencia', 8, 'delete_asistencia'),
(25, 'Can add barrio', 9, 'add_barrio'),
(26, 'Can change barrio', 9, 'change_barrio'),
(27, 'Can delete barrio', 9, 'delete_barrio'),
(28, 'Can add entidad', 10, 'add_entidad'),
(29, 'Can change entidad', 10, 'change_entidad'),
(30, 'Can delete entidad', 10, 'delete_entidad'),
(31, 'Can add ocupacion', 11, 'add_ocupacion'),
(32, 'Can change ocupacion', 11, 'change_ocupacion'),
(33, 'Can delete ocupacion', 11, 'delete_ocupacion'),
(34, 'Can add user', 12, 'add_user'),
(35, 'Can change user', 12, 'change_user'),
(36, 'Can delete user', 12, 'delete_user'),
(37, 'Can add tipo documento', 13, 'add_tipodocumento'),
(38, 'Can change tipo documento', 13, 'change_tipodocumento'),
(39, 'Can delete tipo documento', 13, 'delete_tipodocumento'),
(40, 'Can add sede', 14, 'add_sede'),
(41, 'Can change sede', 14, 'change_sede'),
(42, 'Can delete sede', 14, 'delete_sede'),
(43, 'Can add persona curso', 15, 'add_personacurso'),
(44, 'Can change persona curso', 15, 'change_personacurso'),
(45, 'Can delete persona curso', 15, 'delete_personacurso'),
(46, 'Can add persona', 16, 'add_persona'),
(47, 'Can change persona', 16, 'change_persona'),
(48, 'Can delete persona', 16, 'delete_persona'),
(49, 'Can add departamento', 17, 'add_departamento'),
(50, 'Can change departamento', 17, 'change_departamento'),
(51, 'Can delete departamento', 17, 'delete_departamento'),
(52, 'Can add curso', 18, 'add_curso'),
(53, 'Can change curso', 18, 'change_curso'),
(54, 'Can delete curso', 18, 'delete_curso'),
(55, 'Can add poblacion', 19, 'add_poblacion'),
(56, 'Can change poblacion', 19, 'change_poblacion'),
(57, 'Can delete poblacion', 19, 'delete_poblacion');

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
(1, 'pbkdf2_sha256$100000$fgNlm0H0LajK$czQ+2Ppd8FhuGqh1ER7SXbTMHHsFqG70ws8YhEn+alE=', '2018-04-13 16:53:49', 0, '1070593028', 'JHON JAIRO', 'PALMA GARCIA', 'jhon1946@gmail.com', 0, 1, '2018-03-22 20:30:00', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'asistencia', 'asistencia'),
(9, 'asistencia', 'barrio'),
(6, 'asistencia', 'ciudad'),
(18, 'asistencia', 'curso'),
(17, 'asistencia', 'departamento'),
(10, 'asistencia', 'entidad'),
(11, 'asistencia', 'ocupacion'),
(16, 'asistencia', 'persona'),
(15, 'asistencia', 'personacurso'),
(19, 'asistencia', 'poblacion'),
(14, 'asistencia', 'sede'),
(7, 'asistencia', 'servicio'),
(13, 'asistencia', 'tipodocumento'),
(12, 'asistencia', 'user'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
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
(1, 'contenttypes', '0001_initial', '2018-04-13 15:34:07'),
(2, 'contenttypes', '0002_remove_content_type_name', '2018-04-13 15:34:08'),
(3, 'auth', '0001_initial', '2018-04-13 15:34:09'),
(4, 'auth', '0002_alter_permission_name_max_length', '2018-04-13 15:34:09'),
(5, 'auth', '0003_alter_user_email_max_length', '2018-04-13 15:34:09'),
(6, 'auth', '0004_alter_user_username_opts', '2018-04-13 15:34:09'),
(7, 'auth', '0005_alter_user_last_login_null', '2018-04-13 15:34:09'),
(8, 'auth', '0006_require_contenttypes_0002', '2018-04-13 15:34:09'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2018-04-13 15:34:09'),
(10, 'auth', '0008_alter_user_username_max_length', '2018-04-13 15:34:09'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2018-04-13 15:34:09'),
(12, 'asistencia', '0001_initial', '2018-04-13 15:34:16'),
(13, 'admin', '0001_initial', '2018-04-13 15:34:16'),
(14, 'admin', '0002_logentry_remove_auto_add', '2018-04-13 15:34:16'),
(15, 'sessions', '0001_initial', '2018-04-13 15:34:17');

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
('nrfbzs9he2fssl10poviq7x9ndyssq3k', 'YjQ4M2UxOTZjMTVkMzZmOThmOTdhOTI2MTE2YWUxODJjY2Y4YzA5MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTc0YjEzZTliMDE0MGQ3ZWRlMzNmNTFiNWEyNDU1YWM4YTc4NzBiNyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-04-27 16:53:49');

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
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_barrio_ciudad_id_0b9d1778_fk_asistencia_ciudad_id` (`ciudad_id`);

--
-- Indices de la tabla `asistencia_ciudad`
--
ALTER TABLE `asistencia_ciudad`
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_ciudad_departamento_id_abe3171f_fk_asistenci` (`departamento_id`);

--
-- Indices de la tabla `asistencia_curso`
--
ALTER TABLE `asistencia_curso`
 ADD PRIMARY KEY (`id`), ADD KEY `asistencia_curso_entidad_id_ec2e8301_fk_asistencia_entidad_id` (`entidad_id`), ADD KEY `asistencia_curso_sede_id_1af3461c_fk_asistencia_sede_id` (`sede_id`);

--
-- Indices de la tabla `asistencia_departamento`
--
ALTER TABLE `asistencia_departamento`
 ADD PRIMARY KEY (`id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT de la tabla `asistencia_ciudad`
--
ALTER TABLE `asistencia_ciudad`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1120;
--
-- AUTO_INCREMENT de la tabla `asistencia_curso`
--
ALTER TABLE `asistencia_curso`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asistencia_departamento`
--
ALTER TABLE `asistencia_departamento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `asistencia_entidad`
--
ALTER TABLE `asistencia_entidad`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `asistencia_tipodocumento`
--
ALTER TABLE `asistencia_tipodocumento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
-- Filtros para la tabla `asistencia_barrio`
--
ALTER TABLE `asistencia_barrio`
ADD CONSTRAINT `asistencia_barrio_ciudad_id_0b9d1778_fk_asistencia_ciudad_id` FOREIGN KEY (`ciudad_id`) REFERENCES `asistencia_ciudad` (`id`);

--
-- Filtros para la tabla `asistencia_ciudad`
--
ALTER TABLE `asistencia_ciudad`
ADD CONSTRAINT `asistencia_ciudad_departamento_id_abe3171f_fk_asistenci` FOREIGN KEY (`departamento_id`) REFERENCES `asistencia_departamento` (`id`);

--
-- Filtros para la tabla `asistencia_curso`
--
ALTER TABLE `asistencia_curso`
ADD CONSTRAINT `asistencia_curso_entidad_id_ec2e8301_fk_asistencia_entidad_id` FOREIGN KEY (`entidad_id`) REFERENCES `asistencia_entidad` (`id`),
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
