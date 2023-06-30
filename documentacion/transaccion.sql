-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2023 a las 21:01:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transaccion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `ID` int(11) NOT NULL,
  `CIUDAD` varchar(45) NOT NULL,
  `DEPARTAMENTO` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`ID`, `CIUDAD`, `DEPARTAMENTO`) VALUES
(1, 'Achiras', 'Río Cuarto'),
(2, 'Adelia María', 'Río Cuarto'),
(3, 'Agua de Oro', 'Colón'),
(4, 'Alcira (Gigena)', 'Río Cuarto'),
(5, 'Aldea Santa María', 'Unión'),
(6, 'Alejandro Roca (Est. Alejandro)', 'Juárez Celman'),
(7, 'Alejo Ledesma', 'Marcos Juárez'),
(8, 'Alicia', 'San Justo'),
(9, 'Almafuerte', 'Tercero Arriba'),
(10, 'Alpa Corral', 'Río Cuarto'),
(11, 'Alta Gracia', 'Santa María'),
(12, 'Alto Alegre', 'Unión'),
(13, 'Alto de los Quebrachos', 'Cruz del Eje'),
(14, 'Altos de Chipión', 'San Justo'),
(15, 'Amboy', 'Calamuchita'),
(16, 'Ámbul', 'San Alberto'),
(17, 'Ana Zumarán', 'Unión'),
(18, 'Anisacate', 'Santa María'),
(19, 'Arias', 'Marcos Juárez'),
(20, 'Arroyito', 'San Justo'),
(21, 'Arroyo Algodón', 'General San Martín'),
(22, 'Arroyo Cabral', 'General San Martín'),
(23, 'Arroyo Los Patos', 'San Alberto'),
(24, 'Ascochinga', 'Colón'),
(25, 'Assunta', 'Juárez Celman'),
(26, 'Atahona', 'Río Primero'),
(27, 'Ausonia', 'General San Martín'),
(28, 'Avellaneda', 'Ischilín'),
(29, 'Ballesteros', 'Unión'),
(30, 'Ballesteros Sur', 'Unión'),
(31, 'Balnearia', 'San Justo'),
(32, 'Bañado de Soto', 'Cruz del Eje'),
(33, 'Barrio Gilbert (- Tejas Tres; 1° de Mayo)', 'Santa María'),
(34, 'Barrio Nuevo Rio Ceballos', 'Colón'),
(35, 'Barrio Santa Isabel', 'Punilla'),
(36, 'Bell Ville', 'Unión'),
(37, 'Bengolea', 'Juárez Celman'),
(38, 'Benjamín Gould', 'Unión'),
(39, 'Berrotarán', 'Río Cuarto'),
(40, 'Bialet Massé', 'Punilla'),
(41, 'Bouwer', 'Santa María'),
(42, 'Brinkmann', 'San Justo'),
(43, 'Bulnes', 'Río Cuarto'),
(44, 'Cabalango', 'Punilla'),
(45, 'Calchín', 'Río Segundo'),
(46, 'Calchín Oeste', 'Río Segundo'),
(47, 'Camilo Aldao', 'Marcos Juárez'),
(48, 'Caminiaga', 'Sobremonte'),
(49, 'Campos del Virrey', 'Santa María'),
(50, 'Cañada del Sauce', 'Calamuchita'),
(51, 'Cañada de Luque', 'Totoral'),
(52, 'Cañada de Machado', 'Río Primero'),
(53, 'Cañada de Río Pinto', 'Ischilín'),
(54, 'Canals', 'Unión'),
(55, 'Candelaria Sur', 'Totoral'),
(56, 'Canteras El Sauce', 'Colón'),
(57, 'Canteras Quilpo', 'Cruz del Eje'),
(58, 'Capilla del Carmen', 'Río Segundo'),
(59, 'Capilla del Monte', 'Punilla'),
(60, 'Capilla de los Remedios', 'Río Primero'),
(61, 'Capilla de Sitón', 'Totoral'),
(62, 'Capilla Vieja', 'Calamuchita'),
(63, 'Capitán General Bernardo O\'Higgins', 'Marcos Juárez'),
(64, 'Carnerillo', 'Juárez Celman'),
(65, 'Carrilobo', 'Río Segundo'),
(66, 'Casa Bamba', 'Colón'),
(67, 'Casa Grande', 'Punilla'),
(68, 'Caseros Centro', 'Santa María'),
(69, 'Causana', 'Santa María'),
(70, 'Cavanagh', 'Marcos Juárez'),
(71, 'Cerro Colorado', 'Río Seco'),
(72, 'Chaján', 'Río Cuarto'),
(73, 'Chalacea', 'Río Primero'),
(74, 'Chañar Viejo', 'Río Seco'),
(75, 'Chancaní', 'Pocho'),
(76, 'Charbonier', 'Punilla'),
(77, 'Charras', 'Juárez Celman'),
(78, 'Chazón', 'General San Martín'),
(79, 'Chilibroste', 'Unión'),
(80, 'Chucul', 'Río Cuarto'),
(81, 'Chuña', 'Ischilín'),
(82, 'Chuña Huasi', 'Sobremonte'),
(83, 'Churqui Cañada', 'Tulumba'),
(84, 'Ciénaga del Coro', 'Minas'),
(85, 'Cintra', 'Unión'),
(86, 'Colazo', 'Río Segundo'),
(87, 'Colonia 10 de Julio', 'San Justo'),
(88, 'Colonia Almada', 'Tercero Arriba'),
(89, 'Colonia Anita', 'San Justo'),
(90, 'Colonia Barge', 'Marcos Juárez'),
(91, 'Colonia Bismarck', 'Unión'),
(92, 'Colonia Bremen', 'Unión'),
(93, 'Colonia Caroya', 'Colón'),
(94, 'Colonia Italiana', 'Marcos Juárez'),
(95, 'Colonia Iturraspe', 'San Justo'),
(96, 'Colonia Las Cuatro Esquinas', 'Río Primero'),
(97, 'Colonia Las Pichanas', 'San Justo'),
(98, 'Colonia Marina', 'San Justo'),
(99, 'Colonia Prosperidad', 'San Justo'),
(100, 'Colonia San Bartolomé', 'San Justo'),
(101, 'Colonia San Pedro', 'San Justo'),
(102, 'Colonia Santa María', 'San Justo'),
(103, 'Colonia Tirolesa', 'Colón'),
(104, 'Colonia Valtelina', 'San Justo'),
(105, 'Colonia Veinticinco', 'Marcos Juárez'),
(106, 'Colonia Vicente Agüero', 'Colón'),
(107, 'Colonia Videla', 'Río Segundo'),
(108, 'Colonia Vignaud', 'San Justo'),
(109, 'Conlara', 'San Javier'),
(110, 'Copacabana', 'Ischilín'),
(111, 'Córdoba', 'Capital'),
(112, 'Coronel Baigorria', 'Río Cuarto'),
(113, 'Coronel Moldes', 'Río Cuarto'),
(114, 'Corral de Bustos', 'Marcos Juárez'),
(115, 'Corralito', 'Tercero Arriba'),
(116, 'Corral Quemado', 'Colón'),
(117, 'Cosquín', 'Punilla'),
(118, 'Costa Azul', 'Santa María'),
(119, 'Costa Sacate', 'Río Segundo'),
(120, 'Country Chacras de la Villa (- Country San Is', 'Colón'),
(121, 'Cruz Alta', 'Marcos Juárez'),
(122, 'Cruz Caña', 'San Javier'),
(123, 'Cruz de Caña', 'Cruz del Eje'),
(124, 'Cruz del Eje', 'Cruz del Eje'),
(125, 'Cuesta Blanca', 'Punilla'),
(126, 'Dalmacio Vélez', 'Tercero Arriba'),
(127, 'Deán Funes', 'Ischilín'),
(128, 'Del Campillo', 'General Roca'),
(129, 'Despeñaderos', 'Santa María'),
(130, 'Devoto', 'San Justo'),
(131, 'Diego de Rojas', 'Río Primero'),
(132, 'Dique Chico', 'Santa María'),
(133, 'Dos Arroyos', 'San Javier'),
(134, 'El Alcalde (Est. Tala Norte)', 'Río Primero'),
(135, 'El Arañado', 'San Justo'),
(136, 'El Brete', 'Cruz del Eje'),
(137, 'El Chacho', 'Minas'),
(138, 'El Corcovado - El Torreón', 'Calamuchita'),
(139, 'El Crispín', 'Río Primero'),
(140, 'El Durazno', 'Calamuchita'),
(141, 'Elena', 'Río Cuarto'),
(142, 'El Fortín', 'San Justo'),
(143, 'El Fuertecito', 'San Justo'),
(144, 'El Huayco', 'San Alberto'),
(145, 'El Manzano', 'Colón'),
(146, 'El Pantanillo', 'San Javier'),
(147, 'El Potrerillo', 'Santa María'),
(148, 'El Rastreador', 'Juárez Celman'),
(149, 'El Rincón', 'Cruz del Eje'),
(150, 'El Rodeo', 'Tulumba'),
(151, 'El Tío', 'San Justo'),
(152, 'El Tuscal', 'Tulumba'),
(153, 'Embalse', 'Calamuchita'),
(154, 'Esquina', 'Río Primero'),
(155, 'Esquina del Alambre', 'Ischilín'),
(156, 'Estación Colonia Tirolesa', 'Colón'),
(157, 'Estación Lecueder', 'General Roca'),
(158, 'Estación Luxardo', 'San Justo'),
(159, 'Estancia de Guadalupe', 'Minas'),
(160, 'Estancia Vieja', 'Punilla'),
(161, 'Etruria', 'General San Martín'),
(162, 'Eufrasio Loza', 'Río Seco'),
(163, 'Falda del Cañete', 'Santa María'),
(164, 'Falda del Carmen', 'Santa María'),
(165, 'Freyre', 'San Justo'),
(166, 'General Baldissera', 'Marcos Juárez'),
(167, 'General Cabrera', 'Juárez Celman'),
(168, 'General Deheza', 'Juárez Celman'),
(169, 'General Fotheringham', 'Tercero Arriba'),
(170, 'General Levalle', 'Presidente Roque Sáenz Peña'),
(171, 'General Paz', 'Colón'),
(172, 'General Roca', 'Marcos Juárez'),
(173, 'Guanaco Muerto', 'Cruz del Eje'),
(174, 'Guasapampa', 'Minas'),
(175, 'Guatimozín', 'Marcos Juárez'),
(176, 'Gutemberg', 'Río Seco'),
(177, 'Hernando', 'Tercero Arriba'),
(178, 'Hipólito Bouchard (Buchardo)', 'General Roca'),
(179, 'Huanchillas', 'Juárez Celman'),
(180, 'Huerta Grande', 'Punilla'),
(181, 'Huinca Renancó', 'General Roca'),
(182, 'Idiazábal', 'Unión'),
(183, 'Impira', 'Río Segundo'),
(184, 'Inriville', 'Marcos Juárez'),
(185, 'Isla Verde', 'Marcos Juárez'),
(186, 'Italó', 'General Roca'),
(187, 'James Craik', 'Tercero Arriba'),
(188, 'Jesús María', 'Colón'),
(189, 'José de la Quintana', 'Santa María'),
(190, 'Justiniano Posse', 'Unión'),
(191, 'Kilómetro 658', 'Río Primero'),
(192, 'La Banda', 'Cruz del Eje'),
(193, 'La Batea', 'Cruz del Eje'),
(194, 'La Boca del Río', 'Santa María'),
(195, 'Laborde', 'Unión'),
(196, 'Laboulaye', 'Presidente Roque Sáenz Peña'),
(197, 'La Calera', 'Colón'),
(198, 'La Carbonada', 'Santa María'),
(199, 'La Carlota', 'Juárez Celman'),
(200, 'La Carolina', 'Río Cuarto'),
(201, 'La Cautiva', 'Río Cuarto'),
(202, 'La Cesira', 'Presidente Roque Sáenz Peña'),
(203, 'La Cortadera', 'San Alberto'),
(204, 'La Cruz', 'Calamuchita'),
(205, 'La Cumbre', 'Punilla'),
(206, 'La Cumbrecita', 'Calamuchita'),
(207, 'La Falda', 'Punilla'),
(208, 'La Francia', 'San Justo'),
(209, 'La Gilda', 'Río Cuarto'),
(210, 'La Granja', 'Colón'),
(211, 'Laguna Larga', 'Río Segundo'),
(212, 'La Higuera', 'Cruz del Eje'),
(213, 'La Laguna', 'General San Martín'),
(214, 'La Morada', 'Colón'),
(215, 'La Paisanita', 'Santa María'),
(216, 'La Palestina', 'General San Martín'),
(217, 'La Pampa', 'Totoral'),
(218, 'La Paquita', 'San Justo'),
(219, 'La Para', 'Río Primero'),
(220, 'La Paz', 'San Javier'),
(221, 'La Perla', 'Santa María'),
(222, 'La Playa', 'Minas'),
(223, 'La Playosa', 'General San Martín'),
(224, 'La Población', 'San Javier'),
(225, 'La Posta', 'Río Primero'),
(226, 'La Puerta', 'Colón'),
(227, 'La Puerta', 'Río Primero'),
(228, 'La Quinta', 'Río Primero'),
(229, 'La Ramada', 'San Javier'),
(230, 'La Rancherita y Las Cascadas', 'Santa María'),
(231, 'La Rinconada', 'Río Seco'),
(232, 'Las Acequias', 'Río Cuarto'),
(233, 'Las Albahacas', 'Río Cuarto'),
(234, 'Las Arrias', 'Tulumba'),
(235, 'Las Bajadas', 'Calamuchita'),
(236, 'Las Caleras', 'Calamuchita'),
(237, 'Las Calles', 'San Alberto'),
(238, 'Las Cañadas', 'Cruz del Eje'),
(239, 'Las Chacras', 'San Javier'),
(240, 'Las Corzuelas', 'Colón'),
(241, 'La Serranita', 'Santa María'),
(242, 'Las Gramillas', 'Río Primero'),
(243, 'Las Higueras', 'Río Cuarto'),
(244, 'Las Isletillas', 'Tercero Arriba'),
(245, 'Las Jarillas', 'Punilla'),
(246, 'Las Junturas', 'Río Segundo'),
(247, 'Las Mojarras', 'General San Martín'),
(248, 'Las Oscuras', 'San Alberto'),
(249, 'Las Palmas', 'Pocho'),
(250, 'Las Peñas (Sud)', 'Río Cuarto'),
(251, 'Las Peñas', 'Totoral'),
(252, 'Las Perdices', 'Tercero Arriba'),
(253, 'Las Playas', 'Cruz del Eje'),
(254, 'Las Rabonas', 'San Alberto'),
(255, 'Las Saladas', 'Río Primero'),
(256, 'Las Tapias', 'San Javier'),
(257, 'Las Varas', 'San Justo'),
(258, 'Las Varillas', 'San Justo'),
(259, 'Las Vertientes', 'Río Cuarto'),
(260, 'La Tordilla', 'San Justo'),
(261, 'La Travesía', 'San Javier'),
(262, 'Leguizamón', 'Presidente Roque Sáenz Peña'),
(263, 'Leones', 'Marcos Juárez'),
(264, 'Loma Bola', 'San Javier'),
(265, 'Los Callejones', 'San Alberto'),
(266, 'Los Cedros', 'Santa María'),
(267, 'Los Cerrillos', 'San Javier'),
(268, 'Los Chañaritos', 'Cruz del Eje'),
(269, 'Los Chañaritos', 'Río Segundo'),
(270, 'Los Cisnes', 'Juárez Celman'),
(271, 'Los Cocos', 'Punilla'),
(272, 'Los Cóndores', 'Calamuchita'),
(273, 'Los Hornillos', 'San Javier'),
(274, 'Los Hoyos', 'Río Seco'),
(275, 'Los Mistoles', 'Totoral'),
(276, 'Los Molinos', 'Calamuchita'),
(277, 'Los Molles', 'Colón'),
(278, 'Los Molles', 'San Javier'),
(279, 'Los Pozos', 'Ischilín'),
(280, 'Los Reartes', 'Calamuchita'),
(281, 'Los Surgentes', 'Marcos Juárez'),
(282, 'Los Talares', 'Pocho'),
(283, 'Los Zorros', 'Tercero Arriba'),
(284, 'Lozada', 'Santa María'),
(285, 'Luca', 'General San Martín'),
(286, 'Lucio V. Mansilla', 'Tulumba'),
(287, 'Luque', 'Río Segundo'),
(288, 'Lutti', 'Calamuchita'),
(289, 'Luyaba', 'San Javier'),
(290, 'Malagueño', 'Santa María'),
(291, 'Malena', 'Río Cuarto'),
(292, 'Mallín', 'Punilla'),
(293, 'Malvinas Argentinas', 'Colón'),
(294, 'Manfredi', 'Río Segundo'),
(295, 'Maquinista Gallini', 'Río Primero'),
(296, 'Marcos Juárez', 'Marcos Juárez'),
(297, 'Marull', 'San Justo'),
(298, 'Matorrales', 'Río Segundo'),
(299, 'Mattaldi', 'General Roca'),
(300, 'Mayu Sumaj', 'Punilla'),
(301, 'Media Naranja', 'Cruz del Eje'),
(302, 'Melo', 'Presidente Roque Sáenz Peña'),
(303, 'Mendiolaza', 'Colón'),
(304, 'Mi Granja', 'Colón'),
(305, 'Mina Clavero', 'San Alberto'),
(306, 'Miramar', 'San Justo'),
(307, 'Monte Buey', 'Marcos Juárez'),
(308, 'Monte Cristo', 'Río Primero'),
(309, 'Monte de los Gauchos', 'Río Cuarto'),
(310, 'Monte del Rosario', 'Río Primero'),
(311, 'Monte Leña', 'Unión'),
(312, 'Monte Maíz', 'Unión'),
(313, 'Monte Ralo', 'Santa María'),
(314, 'Morrison', 'Unión'),
(315, 'Morteros', 'San Justo'),
(316, 'Mussi', 'San Alberto'),
(317, 'Nicolás Bruzzone', 'General Roca'),
(318, 'Noetinger', 'Unión'),
(319, 'Nono', 'San Alberto'),
(320, 'Obispo Trejo', 'Río Primero'),
(321, 'Olaeta', 'Juárez Celman'),
(322, 'Oliva', 'Tercero Arriba'),
(323, 'Olivares de San Nicolás', 'Ischilín'),
(324, 'Onagoity', 'General Roca'),
(325, 'Oncativo', 'Río Segundo'),
(326, 'Ordóñez', 'Unión'),
(327, 'Pacheco de Melo', 'Juárez Celman'),
(328, 'Pajas Blancas', 'Colón'),
(329, 'Pampayasta Norte', 'Tercero Arriba'),
(330, 'Pampayasta Sur', 'Tercero Arriba'),
(331, 'Panaholma', 'San Alberto'),
(332, 'Parque Calmayo', 'Calamuchita'),
(333, 'Pascanas', 'Unión'),
(334, 'Pasco', 'General San Martín'),
(335, 'Paso del Durazno', 'Juárez Celman'),
(336, 'Paso del Durazno', 'Río Cuarto'),
(337, 'Paso Viejo', 'Cruz del Eje'),
(338, 'Pilar', 'Río Segundo'),
(339, 'Pincén', 'General Roca'),
(340, 'Piquillín', 'Río Primero'),
(341, 'Plaza de Mercedes', 'Río Primero'),
(342, 'Plaza Luxardo', 'San Justo'),
(343, 'Plaza San Francisco', 'San Justo'),
(344, 'Porteña', 'San Justo'),
(345, 'Potrero de Garay', 'Santa María'),
(346, 'Pozo del Molle', 'Río Segundo'),
(347, 'Pozo Nuevo', 'Sobremonte'),
(348, 'Pueblo Comechingones', 'Río Primero'),
(349, 'Pueblo Italiano', 'Unión'),
(350, 'Puesto de Castro', 'Río Seco'),
(351, 'Punta del Agua', 'Tercero Arriba'),
(352, 'Quebracho Herrado', 'San Justo'),
(353, 'Quebracho Ladeado', 'San Javier'),
(354, 'Quebrada de los Pozos', 'San Javier'),
(355, 'Quebrada de Luna', 'Punilla'),
(356, 'Quilino', 'Ischilín'),
(357, 'Rafael García', 'Santa María'),
(358, 'Ramón J. Cárcano', 'Unión'),
(359, 'Ranqueles', 'General Roca'),
(360, 'Rayo Cortado', 'Río Seco'),
(361, 'Rincón', 'Río Segundo'),
(362, 'Río Bamba', 'Presidente Roque Sáenz Peña'),
(363, 'Río Ceballos', 'Colón'),
(364, 'Río Cuarto', 'Río Cuarto'),
(365, 'Río de los Sauces', 'Calamuchita'),
(366, 'Río Primero', 'Río Primero'),
(367, 'Río Segundo', 'Río Segundo'),
(368, 'Río Tercero', 'Tercero Arriba'),
(369, 'Rosales', 'Presidente Roque Sáenz Peña'),
(370, 'Rosario del Saladillo', 'Tulumba'),
(371, 'Sacanta', 'San Justo'),
(372, 'Sagrada Familia', 'Río Primero'),
(373, 'Saira', 'Marcos Juárez'),
(374, 'Saladillo', 'Marcos Juárez'),
(375, 'Saldán', 'Colón'),
(376, 'Salsacate', 'Pocho'),
(377, 'Salsipuedes', 'Colón'),
(378, 'Sampacho', 'Río Cuarto'),
(379, 'Sanabria', 'General San Martín'),
(380, 'San Agustín', 'Calamuchita'),
(381, 'San Antonio de Arredondo', 'Punilla'),
(382, 'San Antonio de Litín', 'Unión'),
(383, 'San Basilio', 'Río Cuarto'),
(384, 'San Carlos Minas', 'Minas'),
(385, 'San Clemente', 'Santa María'),
(386, 'San Esteban', 'Punilla'),
(387, 'San Francisco', 'San Justo'),
(388, 'San Francisco del Chañar', 'Sobremonte'),
(389, 'San Gerónimo', 'Pocho'),
(390, 'San Huberto', 'San Alberto'),
(391, 'San Ignacio (Loteo San Javier)', 'Calamuchita'),
(392, 'San Javier y Yacanto', 'San Javier'),
(393, 'San Joaquín', 'Presidente Roque Sáenz Peña'),
(394, 'San José', 'San Javier'),
(395, 'San José de la Dormida', 'Tulumba'),
(396, 'San José de las Salinas', 'Tulumba'),
(397, 'San Lorenzo', 'San Alberto'),
(398, 'San Marcos', 'Unión'),
(399, 'San Marcos Sierra', 'Cruz del Eje'),
(400, 'San Martín', 'San Alberto'),
(401, 'San Nicolás (- Tierra Alta)', 'Santa María'),
(402, 'San Pedro', 'San Alberto'),
(403, 'San Pedro de Gütemberg', 'Río Seco'),
(404, 'San Pedro de Toyos', 'Ischilín'),
(405, 'San Pedro Norte', 'Tulumba'),
(406, 'San Roque', 'Punilla'),
(407, 'San Severo', 'Unión'),
(408, 'Santa Catalina (Holmberg)', 'Río Cuarto'),
(409, 'Santa Catalina', 'Totoral'),
(410, 'Santa Elena', 'Colón'),
(411, 'Santa Elena', 'Río Seco'),
(412, 'Santa Eufemia', 'Juárez Celman'),
(413, 'Santa Magdalena (Est. Jovita)', 'General Roca'),
(414, 'Santa María de Punilla', 'Punilla'),
(415, 'Santa Rosa de Calamuchita', 'Calamuchita'),
(416, 'Santa Rosa de Río Primero', 'Río Primero'),
(417, 'Santiago Temple', 'Río Segundo'),
(418, 'San Vicente', 'San Alberto'),
(419, 'Sarmiento', 'Totoral'),
(420, 'Saturnino María Laspiur', 'San Justo'),
(421, 'Sauce Arriba', 'San Alberto'),
(422, 'Sebastián Elcano', 'Río Seco'),
(423, 'Seeber', 'San Justo'),
(424, 'Segunda Usina', 'Calamuchita'),
(425, 'Serrano', 'Presidente Roque Sáenz Peña'),
(426, 'Serrezuela', 'Cruz del Eje'),
(427, 'Silvio Pellico', 'General San Martín'),
(428, 'Simbolar', 'Totoral'),
(429, 'Sinsacate', 'Totoral'),
(430, 'Socavones', 'Santa María'),
(431, 'Solar de los Molinos', 'Calamuchita'),
(432, 'Suco', 'Río Cuarto'),
(433, 'Tala Cañada', 'Pocho'),
(434, 'Tala Huasi', 'Punilla'),
(435, 'Talaini', 'Minas'),
(436, 'Tancacha', 'Tercero Arriba'),
(437, 'Taninga', 'Pocho'),
(438, 'Tanti', 'Punilla'),
(439, 'Tasna', 'San Alberto'),
(440, 'Ticino', 'General San Martín'),
(441, 'Tinoco', 'Colón'),
(442, 'Tío Pujio', 'General San Martín'),
(443, 'Toledo', 'Santa María'),
(444, 'Toro Pujio', 'San Justo'),
(445, 'Tosno', 'Minas'),
(446, 'Tosquitas', 'Río Cuarto'),
(447, 'Tránsito', 'San Justo'),
(448, 'Tuclame', 'Cruz del Eje'),
(449, 'Ucacha', 'Juárez Celman'),
(450, 'Unquillo', 'Colón'),
(451, 'Valle Alegre', 'Santa María'),
(452, 'Valle de Anisacate', 'Santa María'),
(453, 'Valle Hermoso', 'Punilla'),
(454, 'Viamonte', 'Unión'),
(455, 'Vicuña Mackenna', 'Río Cuarto'),
(456, 'Villa Albertina', 'General San Martín'),
(457, 'Villa Allende', 'Colón'),
(458, 'Villa Alpina', 'Calamuchita'),
(459, 'Villa Amancay', 'Calamuchita'),
(460, 'Villa Ascasubi', 'Tercero Arriba'),
(461, 'Villa Berna', 'Calamuchita'),
(462, 'Villa Candelaria', 'Río Seco'),
(463, 'Villa Carlos Paz', 'Punilla'),
(464, 'Villa Cerro Azul', 'Colón'),
(465, 'Villa Ciudad de América (Loteo Diego de Rojas', 'Santa María'),
(466, 'Villa Ciudad Parque Los Reartes', 'Calamuchita'),
(467, 'Villa Concepción del Tío', 'San Justo'),
(468, 'Villa Corazon de Maria', 'Colón'),
(469, 'Villa Cura Brochero', 'San Alberto'),
(470, 'Villa de Las Rosas', 'San Javier'),
(471, 'Villa del Dique', 'Calamuchita'),
(472, 'Villa del Prado', 'Santa María'),
(473, 'Villa del Rosario', 'Río Segundo'),
(474, 'Villa del Totoral', 'Totoral'),
(475, 'Villa del Tránsito', 'San Justo'),
(476, 'Villa de María', 'Río Seco'),
(477, 'Villa de Pocho', 'Pocho'),
(478, 'Villa de Soto', 'Cruz del Eje'),
(479, 'Villa Dolores', 'San Javier'),
(480, 'Villa El Chacay', 'Río Cuarto'),
(481, 'Villa El Fachinal (- Parque Norte - Guiñazú N', 'Colón'),
(482, 'Villa Elisa', 'Marcos Juárez'),
(483, 'Villa El Tala', 'Calamuchita'),
(484, 'Villa Flor Serrana', 'Punilla'),
(485, 'Villa Fontana', 'Río Primero'),
(486, 'Villa General Belgrano', 'Calamuchita'),
(487, 'Villa Giardino', 'Punilla'),
(488, 'Villa Gutiérrez', 'Ischilín'),
(489, 'Villa Huidobro', 'General Roca'),
(490, 'Villa La Bolsa', 'Santa María'),
(491, 'Villa Lago Azul', 'Punilla'),
(492, 'Villa La Rivera', 'Calamuchita'),
(493, 'Villa La Viña', 'San Javier'),
(494, 'Villa Los Aromos', 'Santa María'),
(495, 'Villa Los Llanos (- Juárez Celman)', 'Colón'),
(496, 'Villa Los Patos', 'Unión'),
(497, 'Villa María', 'General San Martín'),
(498, 'Villa Nueva', 'General San Martín'),
(499, 'Villa Oeste', 'General San Martín'),
(500, 'Villa Parque Santa Ana', 'Santa María'),
(501, 'Villa Parque Síquiman', 'Punilla'),
(502, 'Villa Quilino', 'Ischilín'),
(503, 'Villa Quillinzo', 'Calamuchita'),
(504, 'Villa Reducción', 'Juárez Celman'),
(505, 'Villa Río Icho Cruz', 'Punilla'),
(506, 'Villa Rossi', 'Presidente Roque Sáenz Peña'),
(507, 'Villa Rumipal', 'Calamuchita'),
(508, 'Villa San Esteban', 'San Justo'),
(509, 'Villa San Isidro', 'Santa María'),
(510, 'Villa San José (San José de los Ríos)', 'Punilla'),
(511, 'Villa Santa Cruz del Lago', 'Punilla'),
(512, 'Villa Santa Eugenia', 'Río Cuarto'),
(513, 'Villa Sarmiento', 'General Roca'),
(514, 'Villa Sarmiento', 'San Alberto'),
(515, 'Villa Sierras de Oro', 'Santa María'),
(516, 'Villa Tulumba', 'Tulumba'),
(517, 'Villa Valeria', 'General Roca'),
(518, 'Villa Yacanto (Yacanto de Calamuchita)', 'Calamuchita'),
(519, 'Washington', 'Río Cuarto'),
(520, 'Wenceslao Escalante', 'Unión'),
(521, 'Yocsina', 'Santa María');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coincidencia`
--

CREATE TABLE `coincidencia` (
  `ID_COINCIDENCIA` int(11) NOT NULL,
  `ID_A` int(11) NOT NULL,
  `ID_B` int(11) NOT NULL,
  `MATCHA` bit(1) NOT NULL DEFAULT b'0',
  `MATCHB` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `coincidencia`
--

INSERT INTO `coincidencia` (`ID_COINCIDENCIA`, `ID_A`, `ID_B`, `MATCHA`, `MATCHB`) VALUES
(1, 3, 6, b'1', b'0'),
(2, 4, 5, b'0', b'1'),
(3, 7, 9, b'0', b'0'),
(4, 12, 13, b'1', b'1'),
(5, 13, 16, b'1', b'0'),
(6, 5, 13, b'1', b'0'),
(7, 7, 18, b'1', b'1'),
(8, 2, 9, b'0', b'0'),
(9, 2, 6, b'1', b'0'),
(10, 10, 11, b'0', b'1'),
(19, 1, 23, b'1', b'1'),
(20, 2, 23, b'0', b'0'),
(21, 3, 23, b'0', b'1'),
(22, 4, 23, b'0', b'1'),
(23, 1, 2, b'0', b'0'),
(24, 1, 3, b'1', b'0'),
(25, 1, 4, b'0', b'0'),
(26, 1, 5, b'0', b'0'),
(27, 1, 19, b'1', b'0'),
(28, 1, 20, b'1', b'0'),
(29, 1, 21, b'1', b'0'),
(30, 1, 22, b'1', b'0'),
(31, 2, 27, b'1', b'1'),
(32, 5, 27, b'1', b'1'),
(33, 19, 27, b'1', b'1'),
(34, 1, 25, b'0', b'0'),
(35, 3, 25, b'0', b'0'),
(36, 20, 25, b'0', b'0'),
(37, 1, 26, b'0', b'0'),
(38, 3, 26, b'0', b'0'),
(39, 20, 26, b'0', b'0'),
(40, 1, 27, b'0', b'0'),
(41, 3, 27, b'0', b'0'),
(42, 20, 27, b'0', b'0'),
(43, 1, 28, b'0', b'0'),
(44, 2, 28, b'0', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`ID`, `NOMBRE`) VALUES
(1, 'danza'),
(2, 'canto'),
(3, 'ingles'),
(4, 'frances'),
(5, 'comedia musical'),
(6, 'programacion'),
(7, 'literatura'),
(8, 'mandarin'),
(9, 'gimnasia'),
(10, 'yoga'),
(11, 'handball'),
(12, 'volley'),
(13, 'italiano'),
(14, 'matematica'),
(15, 'guitarra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `to_date` datetime NOT NULL,
  `habilidades` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `to_date`, `habilidades`) VALUES
(1, 'lulilavayen', '$2y$10$d8F.YfIXIPm6empjxIYyx.rk65hUiMpkPdjk.U4p5agERwIMg9Z5y', 'luisina@gmail.com', '2023-06-29 12:56:44', 'Se tocar la  guitarra y el piano. Tengo conocimientos básicos en teoría musical.'),
(2, 'malena', '$2y$10$N.x3n3MCLLznmMuSyo9m9uGazDWqfkPcaMuFbFPXnCobaJxp210Qu', 'malena@gmail.com', '2023-06-29 12:57:00', 'Se programar en python. Quiero aprender a gestionar bases de datos.'),
(3, 'lucas', '$2y$10$mSKvdqUApUo5N./f2CP6k.WRRONuToc2SqJYV5zvnmBFGCY61sWMe', 'lucas@gmail.com', '2023-06-29 12:57:10', 'Amo tejer, puedo enseñar a cualquier interesado.'),
(5, 'locati', '$2y$10$KdhWvV9kAiyOvjj11FqUB.YxEfcPc8kPty/6ZYZM4DwMRFcBGdRQ.', 'locati@gmail.com', '2023-06-29 12:57:34', 'Recientemente aprendí a conducir.'),
(19, 'lanadelrey', '$2y$10$I7D7eSb/ktddxjWdsBZsBu3UFSTpIOTOBzCyIT8ZAbg3SzrUNUoyS', 'lanadelrey@gmail.com', '2023-06-29 12:58:25', 'Se jugar al fútbol, saltar la soga, correr maratones, y escribir en morse.'),
(20, 'kurtcobain', '$2y$10$SVOC0YhOtTT.KbULnaT92ufexUukyI5KfHowtzPWC109sUwOuKrua', 'kurtcobain@gmail.com', '2023-06-29 12:58:39', 'Se lengua de señas'),
(21, 'billiejoe', '$2y$10$HUoNnIJYUneM5ZfWYMYNFuBL5rfZZwMs5b.kYMiqP5123Gm4fUnzS', 'billiejoe@gmail.com', '2023-06-29 12:58:53', 'Me encanta leer. Se mucho a cerca de literatura clásica.'),
(22, 'pizarnik', '$2y$10$iE/6NnL2FrsaD2vS1K6tauROgcn10arAAwMk6Csz4AwhuEBtMbfZG', 'pizarnik@gmail.com', '2023-06-29 12:59:53', 'Soy carpintera'),
(23, 'Luis Campo', '$2y$10$4CCWuHWHc1DxCIL1UoSjYuoIROAo4CZrJb21oKFhxM0FOaWM8AV96', 'benji@gmail.com', '2023-06-29 14:44:35', 'Tengo un doctorado en matemática, se mucho de física tambien.'),
(27, 'eiacovino', '$2y$10$L.lZqWH6ArkDCexLh42yjezS0hu/G0wQe9DLTmyFMGraUbSMctICG', 'eiacovino@escuelasproa.edu.ar', '2023-06-30 15:42:18', 'Se nadar. Me gusta diseñar tambien.'),
(28, 'anabel', '$2y$10$EcNbR7avDrMga5RYgiCgRucjPcouZiF54Ly7bGah1YQSIhsvuu9iC', 'ab@gmail.com', '2023-06-30 15:59:44', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `coincidencia`
--
ALTER TABLE `coincidencia`
  ADD PRIMARY KEY (`ID_COINCIDENCIA`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT de la tabla `coincidencia`
--
ALTER TABLE `coincidencia`
  MODIFY `ID_COINCIDENCIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
