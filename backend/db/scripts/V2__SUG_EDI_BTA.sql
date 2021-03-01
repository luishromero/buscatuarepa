SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `EDI_ARG` (
  `ID` int(15) NOT NULL,
  `COD` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_EDI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EDI_SUG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OBSERVACION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `EDI_ARG` (`ID`, `COD`, `NOMBRE`, `TIPO_EDI`, `EDI_SUG`, `OBSERVACION`) VALUES
(11, 'ARG00028', 'El Yaque Bistro Bar', 'Whatsapp', 'Ejemplo', 'INFO RECUPERADA'),
(12, 'ARG00028', 'El Yaque Bistro Bar', 'Whatsapp', '1126709807', 'INFO RECUPERADA'),
(13, 'ARG00099D', 'Patiché', 'Whatsapp', '11.65787855', 'AGREGADOS'),
(14, 'ARG00099D', 'Patiché', 'Horario', 'De lunes a viernes de 10 a 13 y de 17 a 22; sábados y domingos de 10 a 22 ', 'ACTUALIZADO'),
(15, 'ARG00067D', 'Between Food Plates', 'Horario', 'Horarios de 10 a 20 hs. ', 'ACTUALIZADO');



CREATE TABLE `EDI_CHL` (
  `ID` int(15) NOT NULL,
  `COD` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_EDI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EDI_SUG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OBSERVACION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `EDI_CHL` (`ID`, `COD`, `NOMBRE`, `TIPO_EDI`, `EDI_SUG`, `OBSERVACION`) VALUES
(12, 'CHL00091', 'Maderos Bar & Resto ', 'Horario', 'Lunes a miercoles de 1230 a 10. Jueves y viernes de 1230 a 1100 sábados de 1 a 11. Domingos cerrado', 'HORARIO ACTUALIZADO'),
(13, 'CHL00029', 'Rey Tequeño Chile', 'Direccion', 'Ellos se mudaron a Victoria 1002', 'ACTUALIZADO'),
(14, 'CHL00085', 'Salto Angel', 'Otro', 'Este local cerró, allí se encuentra una venta de suchi', 'ACTUALIZADO'),
(15, 'CHL00076', 'Minimarket Victoria Spa', 'Otro', 'La imagen no se ve LR', 'REVISAR');



CREATE TABLE `EDI_MEX` (
  `ID` int(15) NOT NULL,
  `COD` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_EDI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EDI_SUG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OBSERVACION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `EDI_MEX` (`ID`, `COD`, `NOMBRE`, `TIPO_EDI`, `EDI_SUG`, `OBSERVACION`) VALUES
(1, 'MEX00011', 'La Trattoria de la arepa', 'Horario', 'Agregar ,Domingos de 1 pm a 9 pm\r\nEncargado : Glenda ', 'ACTUALIZADO');



CREATE TABLE `EDI_URY` (
  `ID` int(15) NOT NULL,
  `COD` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_EDI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EDI_SUG` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OBSERVACION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `NUEVASFRONTERAS` (
  `ID` int(15) NOT NULL,
  `PAIS` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NEGOCIO` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_CONTACTO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTACTO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO_USER` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OBS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `NUEVASFRONTERAS` (`ID`, `PAIS`, `CIUDAD`, `NEGOCIO`, `NOMBRE`, `DIRECCION`, `TIPO_CONTACTO`, `CONTACTO`, `CORREO_USER`, `OBS`) VALUES
(4, 'PT', 'Porto', 'Instagram', 'Dona Arepa', 'Rua de Cedofeita 221, 4050-179 Porto', 'Telefono', '+351220730425', NULL, NULL),
(5, 'ES', 'Santiago de Compostela', 'Instagram', 'Le Coq Santiago Gastro Cafe', 'Rúa de Santiago de Chile, 26, 15701 Santiago de Compostela, A Coruña', 'Pagina Web', 'https://lecoqsantiago.business.site/', NULL, NULL),
(6, 'ES', 'Barcelona', 'Instagram', 'La Taguara Areperia', 'Carrer del Rec, 10, 08003 Barcelona', 'Pagina Web', 'http://www.lataguara.es/', NULL, NULL),
(7, 'BO', 'Cochabamba', 'Instagram', 'La Arepera', 'Av. Santa Cruz y Juan Capriles', 'Facebook', 'https://www.facebook.com/LaAreperaCochabamba/', NULL, NULL),
(9, 'IE', 'Dublin', 'Facebook', 'Arepas grill', '', 'Instagram', 'Arepasgrilldub', NULL, NULL),
(10, 'IE', 'Dublin', 'Instagram', 'Arepas grill ', '39 south Richmond street,Dw', 'Instagram', '0834503866', NULL, NULL),
(11, 'CL', 'Concepción', 'Instagram', 'Chur Chil', 'Av. Los Carrera 945, entre las Calles Castellón y Tucapel', 'Instagram', 'www.instagram.com/churchil.cl', NULL, 'AGREGADOS PERO ESTAN EN OTRA CIUDAD'),
(12, 'MX', 'Querétaro', 'Instagram', 'Los margariteños', 'Mirador de San Juan 66, Fraccionamiento el Mirador, San Juan, 76240 Santiago de Querétaro, Qro.', 'Telefono', '6719033', NULL, 'NO ESTAN EN CIUDAD DE MEXICO'),
(13, 'AF', 'prueba', 'Instagram', 'prueba', 'prueba', 'Instagram', 'prueba', NULL, NULL),
(14, 'AR', 'Córdoba ', 'Instagram', 'Estación del Sabor', 'Fray Mamerto Esquiú 177', 'Whatsapp', '3517515640', NULL, NULL),
(15, 'MX', 'Ciudad de México ', 'Instagram', 'Chicken Gourmet', 'Calle Chihuahua 115 Roma Norte ', 'Instagram', 'Fabiola Mendoza ', NULL, 'AGREGADO');



CREATE TABLE `SUG_ARG` (
  `ID` int(15) NOT NULL,
  `TIPO_EMPRESA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCTO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_CONTACTO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTACTO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO_CONTACT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OBS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `SUG_ARG` (`ID`, `TIPO_EMPRESA`, `NOMBRE`, `PRODUCTO`, `DIRECCION`, `CIUDAD`, `TIPO_CONTACTO`, `CONTACTO`, `CORREO_CONTACT`, `OBS`) VALUES
(27, 'LOCAL', 'Pisti pasteleria', NULL, 'Nicaragua 4836', NULL, 'Instagram', 'Silvia rey', NULL, 'AGREGADO'),
(42, 'LOCAL', 'Paideia', NULL, 'Adolfo Alsina 2143', 'Caba', 'Instagram', '1122602262', NULL, NULL),
(43, 'DELIVERY', 'Hummus. Arabic Food', 'Venta de comida árabe ', NULL, 'Buenos Aires. Capital Federal', 'Instagram', '@hummus.arabicfood ', NULL, NULL),
(45, 'DELIVERY', 'VeneArepa', 'Arepas', NULL, 'Neuquen', 'Telefono', '2995822380', NULL, 'AGREGADOS.'),
(46, 'LOCAL', 'Degusta Express', NULL, 'Juan Ramírez de Velasco 974', 'Buenos aires', 'Instagram', 'Dgusta.express', NULL, 'AGREGADOS'),
(47, 'LOCAL', 'Harmonie Spa', NULL, 'Avenida Santa Fe 2653', 'CABA', 'Instagram', '‭+54 9 11 6514 3998‬', NULL, 'AGREGADO'),
(48, 'LOCAL', 'Christian ', NULL, '1126709807', 'El yaque', 'Telefono', 'Número', NULL, 'INFO RECUPERADA'),
(49, 'LOCAL', 'Óptica', NULL, '', 'Buenos', 'Instagram', 'Jornada óptica', NULL, 'AGREGADO'),
(50, 'DELIVERY', 'Barbies Pasteleria', 'Golfeaos y Roles de Canela', NULL, 'Capital Federal', 'Instagram', '@barbiespasteleria', NULL, 'AGREGADO'),
(51, 'LOCAL', 'LA VAINA CBA', NULL, 'De la Industria 879', 'CORDOBA CAPITAL', 'Instagram', '3515593662', NULL, 'AGREGADO'),
(52, 'DELIVERY', 'Momento Venezolano', 'Tequeños y pasapalos', NULL, 'Buenos Aires', 'Instagram', '@momento_venezolano_', NULL, 'AGREGADO'),
(53, 'DELIVERY', 'Kathi Cakes', 'Tortas', NULL, 'Caba', 'Whatsapp', '1150058416', NULL, 'AGREGADO'),
(54, 'DELIVERY', 'osososos', 'hahaha', NULL, 'hjsyusys', 'Instagram', 'sysgtststs', NULL, NULL),
(55, 'LOCAL', 'Venestore', NULL, 'Luis maria campos 148', 'Buenos Aires', 'Instagram', 'https://www.instagram.com/p/B3CmjukHC2K/?igshid=1ifs4mha2loau', NULL, 'REMESAS'),
(56, 'LOCAL', 'Parque Chas ', NULL, 'Av de los Incas 4599', 'Buenos Aires ', 'Instagram', '@allegrohelado ', NULL, 'AGREGADO'),
(57, 'LOCAL', 'Pancho Chas ', NULL, 'Av de los Incas 4599', 'Buenos Aires ', 'Instagram', '@panchochas', NULL, 'AGREGADO'),
(58, 'DELIVERY', 'BAcambios', 'Remesas', NULL, 'Buenos Aires, Capital federal ', 'Instagram', '1126880974', NULL, 'REMESAS'),
(59, 'DELIVERY', 'DELO Travel', 'Servicios Turísticos', NULL, 'Buenos Aires', 'Whatsapp', '+5491127299161', NULL, NULL),
(60, 'LOCAL', 'Onoto latín food ', NULL, 'Centro comercial Santa María de tigre local 16 rincón del Milberg Rita 27 zona norte tigre ', 'Bueno aires ', 'Instagram', '@onoto.latinfood', NULL, 'YA ESTAN'),
(61, 'DELIVERY', 'El Tarantin Creativo', 'Taller de Artes Plásticas', NULL, 'Buenos Aires', 'Instagram', '@eltarantincreativo1', NULL, 'NO ES LOCAL/DELIVERY'),
(62, 'DELIVERY', 'Pasteles Cucho ', 'Pastelitos y tequeños ', NULL, 'Buenos aires', 'Whatsapp', '1130788494', NULL, NULL),
(63, 'DELIVERY', 'BA cambios ', 'Remesas', NULL, 'Buenos Aires Capital Federal ', 'Whatsapp', '1126880974', NULL, 'REMESAS'),
(64, 'DELIVERY', 'La Paleta Criolla', 'Consumo', NULL, 'La Plata', 'Instagram', 'La Paleta Criolla', NULL, 'AGREGADO'),
(65, 'LOCAL', 'TipicosVe', NULL, 'Chile 2154, Balvanera ', 'Buenos Aires ', 'Instagram', '1136621027', NULL, 'AGREAGDO'),
(66, 'LOCAL', 'Tequeño Porteño delivery ', NULL, 'Ciudad de La Paz 515', 'Buenos Aires ', 'Instagram', '@tequeno.porteno', NULL, 'AGREGADO'),
(67, 'LOCAL', 'Vendetododito', NULL, 'Raúl Scalabrini Ortíz 1452', 'palermo', 'Instagram', 'Vendetodito ', NULL, 'NO ENCONTRADO'),
(68, 'DELIVERY', 'Comida saludable', 'Asesor de bienestar', NULL, 'Caba', 'Instagram', '@Nutri.energia', NULL, 'NO ES LOCAL'),
(69, 'DELIVERY', 'Fiambres express', 'Todo tipo de fiambres', NULL, 'Caba', 'Instagram', '@fiambres.express', NULL, 'AGREGADOS'),
(70, 'DELIVERY', 'Kathi Cakes', 'Postres', NULL, 'Caba', 'Whatsapp', '1150058416', NULL, 'AGREGADO'),
(71, 'DELIVERY', 'Delicias  cake', 'Postres y tequeños', NULL, 'Buenos Aires', 'Instagram', '1166591669', NULL, NULL),
(72, 'DELIVERY', 'Sublimashop.ar', 'Estampado personalizado', NULL, 'Capital federal ', 'Whatsapp', '1127836067', NULL, NULL),
(73, 'DELIVERY', 'Delicias  cake', 'Postres y tequeños', NULL, 'Buenos Aires', 'Instagram', '@delicias_cake.ba ', NULL, NULL),
(74, 'DELIVERY', 'Delicias cake', 'Postres, tequeños, pasteles', NULL, 'Buenos aires', 'Instagram', '1166591669', NULL, NULL),
(75, 'DELIVERY', 'Un Patiché', 'Lasañas/Pastichos', NULL, 'Capital Federal', 'Instagram', '@unpatiche', NULL, 'AGREGADO'),
(76, 'DELIVERY', 'Onoto', 'Comida casera', NULL, 'Capital federal', 'Instagram', 'Onotosaborlatino', NULL, NULL),
(77, 'LOCAL', 'Onoto', NULL, '24 de noviembre 655', 'Capital federal', 'Instagram', 'Onotosaborlatino', NULL, NULL),
(78, 'DELIVERY', 'Tumbarranchos el cuñao', 'arepas,tumbarranchos,tequeños,empanadas', NULL, 'ciudad autonoma de buenos aires', 'Instagram', '@tumbacu', NULL, NULL),
(79, 'LOCAL', 'Tuamigateo', NULL, 'Av. Rivadavia 8011', 'Caba', 'Instagram', '011', NULL, NULL),
(80, 'DELIVERY', 'Between Food Plates', 'Comida por encargo', NULL, 'Buenos Aires', 'Instagram', '@betweenfoodplates', NULL, NULL),
(81, 'LOCAL', 'CAPITAL PIZZA', NULL, 'Ecuador 1177 ', 'Capital federal ', 'Pagina Web', 'Www.capitalpizzaa.com', NULL, NULL),
(82, 'DELIVERY', '@vzla_dulce_tentaciones', 'Producto', NULL, 'Buenos Aires', 'Instagram', '+5491140679849', NULL, NULL);



CREATE TABLE `SUG_CHL` (
  `ID` int(15) NOT NULL,
  `TIPO_EMPRESA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCTO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_CONTACTO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTACTO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO_CONTAC` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OBS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `SUG_CHL` (`ID`, `TIPO_EMPRESA`, `NOMBRE`, `PRODUCTO`, `DIRECCION`, `CIUDAD`, `TIPO_CONTACTO`, `CONTACTO`, `CORREO_CONTAC`, `OBS`) VALUES
(13, 'LOCAL', 'Maderos Bar Resto', NULL, 'Nueva Providencia 2020', 'Santiago', 'Instagram', '@maderos_bar_resto', NULL, 'AGREGADOS'),
(14, 'DELIVERY', 'La Arepa Social', 'Arepas, Hamburepas, HandRoll, Completos, Perros,', NULL, 'Santiago', 'Instagram', '@laarepasocial', NULL, NULL),
(15, 'LOCAL', 'La korito', NULL, 'Calle ecuador 1350', 'Puerto mont', 'Instagram', '+56964947529', NULL, 'AGREGADO'),
(16, 'DELIVERY', 'Tupecaditogourmet.cl ', 'Comida rapida', NULL, 'Santiago', 'Instagram', '@tupecaditogourmet.cl', NULL, NULL),
(17, 'LOCAL', 'Chur Chil', NULL, 'Av. Los carrera 945', 'Concepción', 'Instagram', 'www.instagram.com/churchil.cl', NULL, NULL);



CREATE TABLE `SUG_MEX` (
  `ID` int(15) NOT NULL,
  `TIPO_EMPRESA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCTO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_CONTACTO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTACTO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO_CONTACT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OBS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `SUG_MEX` (`ID`, `TIPO_EMPRESA`, `NOMBRE`, `PRODUCTO`, `DIRECCION`, `CIUDAD`, `TIPO_CONTACTO`, `CONTACTO`, `CORREO_CONTACT`, `OBS`) VALUES
(2, 'LOCAL', 'Belli denti', NULL, 'Patricio sanz 1802 int 903B', 'Ciudad de mexico', 'Whatsapp', 'Ana Cecilia Guerrero', NULL, NULL),
(3, 'LOCAL', 'El propio restaurante ', NULL, 'Diagonal San Antonio 1684-c ', 'México ', 'Whatsapp', '+5215620758807 ', NULL, NULL),
(4, 'LOCAL', 'VENEZUELAMIA.SHOP', NULL, 'mexico, df ángel de la independencia', 'México ', 'Instagram', '5521767951', NULL, NULL),
(5, 'DELIVERY', 'Tu Arepa La Carranza', 'Arepas con eco delivery ', NULL, 'Merida', 'Instagram', '8131228735', NULL, NULL),
(6, 'DELIVERY', '🇲🇽 Órale mi Pana 🇻🇪 ', ' pastelitos, Tequeños, arepas,empanadas', NULL, 'Ciudad de México ', 'Whatsapp', '5573882188 ', NULL, NULL),
(7, 'DELIVERY', 'Órale mi Pana ', 'Comida venezolana', NULL, 'Ciudad de Mexico calle Zamora Colonia condesa', 'Instagram', '@oralemipana ', NULL, NULL);



CREATE TABLE `SUG_URY` (
  `ID` int(15) NOT NULL,
  `TIPO_EMPRESA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PRODUCTO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DIRECCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TIPO_CONTACTO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CONTACTO` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO_CONTACT` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OBS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `SUG_URY` (`ID`, `TIPO_EMPRESA`, `NOMBRE`, `PRODUCTO`, `DIRECCION`, `CIUDAD`, `TIPO_CONTACTO`, `CONTACTO`, `CORREO_CONTACT`, `OBS`) VALUES
(11, 'DELIVERY', 'Chicha caribeña ', 'Chicha', NULL, 'Montevideo ', 'Instagram', '095266761', NULL, 'AGREGADO'),
(17, 'DELIVERY', 'BUDARE ANDINO', 'Venezuela food', NULL, 'Ciudad de México', 'Instagram', '5588057251', NULL, 'AGREGADO PERO NO HAY VISTA DE LA CATEGORIA DELIVERY'),
(19, 'DELIVERY', 'Pan comido', 'Panadería', NULL, 'Ciudad de México', 'Whatsapp', '+5215545749334', NULL, 'ES UNA CUENTA PERSONAL'),
(20, 'LOCAL', 'Dulce Avila ', NULL, 'Doctor erazo 94 ', 'Ciudad de mexico ', 'Instagram', '5584026275 ', NULL, 'AGREGADO PERO NO HAY VISTA DE LA CATEGORIA DELIVERY'),
(21, 'LOCAL', 'La Nueva taguarita', NULL, 'Colonia Roma norte calle cordoba 136', 'Ciudad de mexico', 'Instagram', '5523373382', NULL, 'NUMERO CORREGIDO'),
(22, 'LOCAL', 'Pardago ', NULL, 'Av Noche de Paz 14, delegación Cuajimalpa plaza vista hermosa ', 'Ciudad de México ', 'Instagram', 'Enrique Partidas Daboin ', NULL, 'AGREGADOS'),
(25, 'DELIVERY', 'Your Trip Vip', 'Boletos aéreos, renta de autos, cruceros, hoteles ', NULL, 'montevideo', 'Instagram', '@yourtripvip', NULL, NULL),
(26, 'LOCAL', 'Guaratepuy', NULL, 'Gobernador Viana 2686', 'Montevideo', 'Instagram', '097555940', NULL, 'AGREGADO');










ALTER TABLE `EDI_ARG`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `ID_2` (`ID`) USING BTREE;

--
-- Indexes for table `EDI_CHL`
--
ALTER TABLE `EDI_CHL`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `EDI_MEX`
--
ALTER TABLE `EDI_MEX`
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `EDI_URY`
--
ALTER TABLE `EDI_URY`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `NUEVASFRONTERAS`
--
ALTER TABLE `NUEVASFRONTERAS`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `SUG_ARG`
--
ALTER TABLE `SUG_ARG`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `SUG_CHL`
--
ALTER TABLE `SUG_CHL`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `SUG_MEX`
--
ALTER TABLE `SUG_MEX`
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `SUG_URY`
--
ALTER TABLE `SUG_URY`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EDI_ARG`
--
ALTER TABLE `EDI_ARG`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `EDI_CHL`
--
ALTER TABLE `EDI_CHL`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `EDI_MEX`
--
ALTER TABLE `EDI_MEX`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `EDI_URY`
--
ALTER TABLE `EDI_URY`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `NUEVASFRONTERAS`
--
ALTER TABLE `NUEVASFRONTERAS`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `SUG_ARG`
--
ALTER TABLE `SUG_ARG`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `SUG_CHL`
--
ALTER TABLE `SUG_CHL`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `SUG_MEX`
--
ALTER TABLE `SUG_MEX`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `SUG_URY`
--
ALTER TABLE `SUG_URY`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

DELIMITER $$
--
-- Events
--

DELIMITER ;
COMMIT;
