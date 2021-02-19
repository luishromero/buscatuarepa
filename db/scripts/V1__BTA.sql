SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `ARG_BUENOSAIRES` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `ARG_BUENOSAIRES_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



CREATE TABLE `ARG_NEUQUEN` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio')
,`ETIQUETAS` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `ARG_NEUQUEN_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



CREATE TABLE `BUSCATUAREPA_ARG` (
  `ID` int(11) NOT NULL COMMENT 'AUTO',
  `COD` varchar(10) NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `PAIS` varchar(30) DEFAULT NULL,
  `CIUDAD` enum('Buenos Aires','Cordoba','Neuquen') DEFAULT NULL,
  `BARRIO` varchar(30) DEFAULT NULL,
  `CALLE` varchar(30) DEFAULT NULL,
  `ALTURA` varchar(10) DEFAULT NULL,
  `LOCAL` varchar(10) DEFAULT NULL,
  `DESCRIPCION` varchar(250) DEFAULT NULL,
  `CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio') NOT NULL,
  `ETIQUETAS` varchar(100) DEFAULT NULL,
  `NAVIDAD` varchar(100) DEFAULT NULL,
  `DELIVERY` enum('delivery propio','glovo','masdelivery','pedidos ya','rappi','uber eats') DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) DEFAULT NULL,
  `LUNES` varchar(30) DEFAULT NULL,
  `MARTES` varchar(30) DEFAULT NULL,
  `MIERCOLES` varchar(30) DEFAULT NULL,
  `JUEVES` varchar(30) DEFAULT NULL,
  `VIERNES` varchar(30) DEFAULT NULL,
  `SABADO` varchar(30) DEFAULT NULL,
  `DOMINGO` varchar(30) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  `WHATSAPP` varchar(30) DEFAULT NULL,
  `INSTAGRAM` varchar(250) DEFAULT NULL,
  `FACEBOOK` varchar(250) DEFAULT NULL,
  `WEB` varchar(100) DEFAULT NULL,
  `CORREO` varchar(50) DEFAULT NULL,
  `RUTA_GOOGLE` varchar(250) DEFAULT NULL,
  `X` varchar(11) NOT NULL,
  `Y` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `BUSCATUAREPA_ARG` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `CALLE`, `ALTURA`, `LOCAL`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`, `RUTA_GOOGLE`, `X`, `Y`) VALUES
(1, 'ARG00001', '1310 Bar', 'Argentina', 'Buenos Aires', 'Palermo', 'Thames', '1310', NULL, 'Bar al Estilo Caribeño', 'discoteca', 'Tragos, Música', NULL, NULL, NULL, 'Nocturno', 'Nocturno', 'Nocturno', 'Nocturno', 'Nocturno', 'Noctunro', 'Nocturno', NULL, NULL, 'https://www.instagram.com/1310bar/', 'https://www.facebook.com/1310bar/', NULL, 'maangom@hotmail.com', 'https://www.google.com/maps/dir//1310+Bar,+Thames+1310,+Buenos+Aires/@-34.5832184,-58.4422071,14.5z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb5897f70ae09:0x4909304ed4fb6b16!2m2!1d-58.4342793!2d-34.5900277!3e3', '-58.434323', '-34.589985'),
(2, 'ARG00002', 'Araguaney Bistro', 'Argentina', 'Buenos Aires', 'Palermo', 'PRÓXIMAMENTE', '', NULL, 'Comida venezolana', '', 'Cachapa, Pabellon, Arepa', 'Pan de Jamon, Plato Navideño', NULL, NULL, '12:00 - 23:45', '12:00 - 22:00', '12:00 - 23:45', '12:00 - 23:45', '12:00 - 01:00', '10:00 - 01:00', '10:00 - 23:45', '1147744788', '5491151380829', 'https://www.instagram.com/araguaneybistro/', 'https://www.facebook.com/araguaneybistro/', NULL, 'araguaneybistro@hotmail.com', 'https://www.google.com/maps/dir//B%C3%A1ez+283,+C1426BRE+CABA/@-34.5721186,-58.4308559,17z/data=!4m17!1m7!3m6!1s0x95bcb597da0e63db:0x5f95409e1cbd67a7!2sB%C3%A1ez+283,+C1426BRE+CABA!3b1!8m2!3d-34.5721186!4d-58.4308559!4m8!1m0!1m5!1m1!1s0x95bcb597da0e6', '', ''),
(3, 'ARG00003', 'Arata Sushi Bar', 'Argentina', 'Buenos Aires', 'Belgrano', '3 de Febrero', '2783', NULL, 'Sushi al estilo venezolano', 'restaurante', 'Sushi', NULL, 'delivery propio', NULL, 'Cerrado', '18:30 - 00:00', '18:30 - 00:00', '18:30 - 00:00', '18:30 - 00:00', '18:30 - 00:00', '18:30 - 00:00', '1126474436', '5491126474436', 'https://www.instagram.com/aratasushibar/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//3+de+Febrero+2783,+C1428+CABA/@-34.5531059,-58.4577221,18.75z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb42934d70835:0xebc2457bf0d7426!2m2!1d-58.4573276!2d-34.5530001!3e0', '-58.457348', '-34.553091'),
(4, 'ARG00004', 'Arepera Miss Venezuela (Palermo)', 'Argentina', 'Buenos Aires', 'Palermo', 'Bonpland', '1509', NULL, 'Arepera', 'restaurante', 'Arepa, Tequeño, Pabellon', 'Hallaca', 'masdelivery', 'https://missvenezuela.masdelivery.com/', '18:00 - 23:30', '12:00 - 16:00, 18:00 - 00:00', '12:00 - 16:00, 18:00 - 23:30', '12:00 - 16:00, 18:00 - 23:30', '12:00 - 16:00, 18:00 - 23:45', '12:00 - 23:30', '18:00 - 23:30', NULL, '5491136850969', 'https://www.instagram.com/arepera_missvenezuela/', 'https://www.facebook.com/areperamissvenezuela/', NULL, 'arepera.missvenezuela@gmail.com', 'https://www.google.com/maps/dir//Arepera+Miss+Venezuela,+Bonpland+1509,+C1414+CABA/@-34.5858138,-58.4385741,17.58z/data=!4m16!1m6!3m5!1s0x95bcb58d42576253:0x2366f8c4200e7cb1!2sArepera+Miss+Venezuela!8m2!3d-34.5848541!4d-58.4389206!4m8!1m0!1m5!1m1!1s0', '-58.438959', '-34.584828'),
(5, 'ARG00005', 'Arepera Miss Venezuela (San Nicolás)', 'Argentina', 'Buenos Aires', 'San Nicolás', 'Juan Domingo Perón', '1289', NULL, 'Arepera', 'restaurante', 'Arepa, Tequeño, Pabellon', 'Hallaca', 'masdelivery', 'https://missvenezuela.masdelivery.com/', '18:00 - 23:30', '12:00 - 16:00, 18:00 - 00:00', '12:00 - 16:00, 18:00 - 23:30', '12:00 - 16:00, 18:00 - 23:30', '12:00 - 16:00, 18:00 - 23:45', '12:00 - 23:30', '18:00 - 23:30', NULL, '5491136850969', 'https://www.instagram.com/arepera_missvenezuela/', 'https://www.facebook.com/areperamissvenezuela/', NULL, 'arepera.missvenezuela@gmail.com', 'https://www.google.com/maps/place/Arepera+miss+Venezuela/@-34.6080472,-58.3875841,16.46z/data=!4m5!3m4!1s0x95bccbfbc4f9d60f:0xcd56df725cddf966!8m2!3d-34.606296!4d-58.3848426', '-58.384788', '-34.606289'),
(6, 'ARG00006', 'Argentolanos', 'Argentina', 'Buenos Aires', 'Saavedra', 'Cabildo', '4648', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Pizza, Tequeño', NULL, 'pedidos ya', 'https://www.pedidosya.com.ar/restaurantes/buenos-aires/argentolanos-menu', '11:00 - 15:00, 19:00 - 22:00', '11:00 - 15:00, 19:00 - 22:00', '11:00 - 15:00, 19:00 - 22:00', '11:00 - 15:00, 19:00 - 22:00', '11:00 - 15:00, 19:00 - 23:00', '11:00 - 15:00, 19:00 - 23:00', '19:00 - 22:00', '', '5491165033577', 'https://www.instagram.com/argentolanos/', 'https://www.facebook.com/Argentolanos-243924812831187/', NULL, 'agentolanos@gmail.com', 'https://www.google.com/maps/place/Argentolanos/@-34.5416048,-58.4746125,17.71z/data=!4m5!3m4!1s0x95bcb6a2d0f5aaab:0xd9ecf45b3b62f5d!8m2!3d-34.5421344!4d-58.4738054', '-58.473658', '-34.542017'),
(7, 'ARG00007', 'Ávila Food', 'Argentina', 'Buenos Aires', 'Palermo', 'Jerónimo Salguero', '1584', NULL, 'Comida venezolana', 'restaurante', 'Hamburguesa, Arepa, Parrilla', NULL, NULL, NULL, '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '1139053027', '5491139053027', 'https://www.instagram.com/Avilafoodarg/', 'https://www.facebook.com/Avilafoodarg/', NULL, NULL, 'https://www.google.com/maps/place/Avila+Food/@-34.5909427,-58.4190683,17.58z/data=!4m5!3m4!1s0x95bcca7e17e7a1cd:0xe4bb0bca1ac38e3b!8m2!3d-34.5919444!4d-58.4180557', '-58.417997', '-34.591904'),
(8, 'ARG00008', 'Bien Copado', 'Argentina', 'Buenos Aires', 'Retiro', 'Paraguay', '793', NULL, 'Comida venezolana', 'restaurante', 'Golfeado, Cachito, Arepa', NULL, NULL, NULL, '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', 'Cerrado', '', '5491153781730', 'https://www.instagram.com/biencopado/', 'https://www.facebook.com/Bien-Copado-505665596622402/', NULL, 'biencopado1@gmail.com', 'https://www.google.com.ar/maps/dir//Bien+Copado,+1057,+Buenos+Aires/@-34.596507,-58.3798212,16.75z/data=!4m16!1m6!3m5!1s0x95bccb1a7f05d0b7:0x3efa8c2ee36f8bb1!2sBien+Copado!8m2!3d-34.5975264!4d-58.3777435!4m8!1m0!1m5!1m1!1s0x95bccb1a7f05d0b7:0x3efa8c2', '-58.377834', '-34.59758'),
(9, 'ARG00009', 'Biru Asian Bar', 'Argentina', 'Buenos Aires', 'Palermo', 'Nicaragua', '4563', NULL, 'Comida Asiática', '', 'Sushi', NULL, NULL, NULL, 'Cerrado', '13:00 - 23:30', '13:00 - 23:30', '13:00 - 23:30', '17:00 - 03:00', '17:00 - 03:00', '17:00 - 23:00', NULL, NULL, 'https://www.instagram.com/biruasiatico/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Nicaragua+4563,+C1414BVE+CABA/@-34.6043931,-58.448323,14z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb58716b29e0b:0x3a0489f23629e15e!2m2!1d-58.4248193!2d-34.588363!3e3', ' -58.424858', '-34.588289'),
(10, 'ARG00010', 'Bit Kiosco', 'Argentina', 'Buenos Aires', 'San Nicolás', 'Lavalle', '850', '1', 'Productos venezolanos', '', 'Harina Pan, Malta, Dulces, Queso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1136521262', '5491136521262', 'https://www.instagram.com/bitkiosco/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Lavalle+850,+San+Nicol%C3%A1s,+Buenos+Aires/@-34.602464,-58.3832074,16z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x95bccacec77d2d2d:0x852d4e027ca9461f!2m2!1d-58.37883!2d-34.6024729!3e3', '-58.37895', ' -34.60234'),
(11, 'ARG00011', 'Café Bar Venezuela', 'Argentina', 'Buenos Aires', 'San Nicolás', 'Florida', '520', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Hamburguesa, Pepito', NULL, NULL, NULL, '10:30 - 21:15', '10:30 - 21:15', '10:30 - 21:15', '10:30 - 21:15', '10:30 - 21:15', '10:30 - 21:15', 'Cerrado', '1143945309', NULL, 'https://www.instagram.com/cafebarvenezuela/', 'https://www.facebook.com/Cafe-bar-Venezuela-686952218180251/', NULL, NULL, 'https://www.google.com/maps/dir//Cafe+Bar+Venezuela,+Florida+520,+Galeria+central,+Local+36,+CABA/@-34.6027441,-58.3749443,17.29z/data=!4m16!1m6!3m5!1s0x95bccacc42c1c767:0x9e92dbbeefc3a5d2!2sCafe+Bar+Venezuela!8m2!3d-34.6020147!4d-58.3754133!4m8!1m0!', '-58.375420', '-34.602009'),
(12, 'ARG00012', 'Café con Cuentos', 'Argentina', 'Buenos Aires', 'Recoleta', 'Las Heras', '1774', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Pastelito, Cachito', NULL, NULL, NULL, '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', '', '5491127718646', 'https://www.instagram.com/cafeconcuentos/', NULL, 'https://cafeconcuentos.negocio.site/', NULL, 'https://www.google.com/maps/dir//Cafe+Con+Cuentos,+Av.+Gral.+Las+Heras+1774,+C1018+CABA/@-34.591977,-58.3939407,17z/data=!4m16!1m6!3m5!1s0x0:0xa833983da94e76f6!2sCafe+Con+Cuentos!8m2!3d-34.591977!4d-58.3917519!4m8!1m0!1m5!1m1!1s0x95bccb1c83570a97:0xa', '-58.391690', '-34.592100'),
(13, 'ARG00013', 'Cambur Pintón', 'Argentina', 'Buenos Aires', 'Palermo', 'Honduras', '4514', NULL, 'Comida venezolana', '', 'Arepas, Tequeños, Patacón, Empanada', NULL, '', NULL, '18:00 - 00:00', 'Cerrado', '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:30', '13:00 - 00:30', '13:00 - 00:00', '1120045538', NULL, 'https://www.instagram.com/camburpintonba/', 'https://www.facebook.com/camburpintonBA/', 'http://www.cambur-pinton.com', 'info@cambur-pinton.com', 'https://www.google.com/maps/dir//Honduras+4514,+Palermo,+Buenos+Aires/@-34.5920463,-58.4297715,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca78fa6687d5:0x7a9096402acffa50!2m2!1d-58.4253941!2d-34.5920552', '-58.425411', '-34.592016'),
(14, 'ARG00014', 'Caracas Bar', 'Argentina', 'Buenos Aires', 'Palermo', 'Guatemala', '4802', NULL, 'Bar con gastronomía venezolana ', 'discoteca', 'Tragos, Música', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491164893286', 'https://www.instagram.com/caracasbar/', 'https://www.facebook.com/CaracasBarBA', 'http://caracasbar.com.ar/', 'info@caracasbar.com', 'https://www.google.com/maps/dir//Caracas+Bar,+Guatemala+4802,+Buenos+Aires/@-34.5872692,-58.430081,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb586845152ff:0x2acdfe73898e7d75!2m2!1d-58.4256114!2d-34.5855975!3e0', '-58.426281', '-34.584801'),
(15, 'ARG00015', 'Changir Buenos Aires', 'Argentina', 'Buenos Aires', 'Villa Crespo', 'Leopoldo Marechal', '1334', NULL, 'Ahora son Arepa\'s Club by Changir', '', 'Empanada, Arepa, Cachapa', 'Plato Navideño, Pan de Jamon', NULL, NULL, '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', '1141984018', '5491141984018', 'https://www.instagram.com/changirba/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Leopoldo+Marechal+1334,+C1414BYF+CABA/@-34.6046554,-58.4431331,15.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca0d385f2c65:0x890c0494818c17f4!2m2!1d-58.4412093!2d-34.6032492', '-58.441010', '-34.603360'),
(16, 'ARG00016', 'Che Bonche (Villa Crespo)', 'Argentina', 'Buenos Aires', 'Villa Crespo', 'Serrano', '701', NULL, 'Gastronomi?a ????', 'restaurante', 'Hamburguesa, Arepa, Tequeño', NULL, NULL, NULL, '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '12:00 - 00:00', NULL, '', '5491122586211', 'https://www.instagram.com/chebonche/', 'https://www.facebook.com/cheboncherumba/', NULL, 'chebonche.rumba@hotmail.com', 'https://www.google.com/maps/dir//Che+Bonche,+Serrano+701,+C1427+CABA/@-34.5959972,-58.4437733,16.17z/data=!4m16!1m6!3m5!1s0x95bccb21dd8a0c6d:0x75b7e6a9d2403436!2sChe+Bonche!8m2!3d-34.594849!4d-58.439742!4m8!1m0!1m5!1m1!1s0x95bccb21dd8a0c6d:0x75b7e6a9', '-58.439937', '-34.594828'),
(17, 'ARG00017', 'Comosano (Belgrano)', 'Argentina', 'Buenos Aires', 'Belgrano', 'Monroe', '2102', NULL, 'Productos venezolanos', 'local', 'Harina, Platano', 'Hoja para Hallaca, Pan de Jamon, Onoto, Harina Pan', 'delivery propio', NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 15:00', '', '5491168082388', 'https://www.instagram.com/comosano.com.ar/', 'https://www.facebook.com/comosano.com.ar/', 'http://www.comosano.com.ar', 'comosano.com.ar@gmail.com', 'https://www.google.com/maps/dir//Comosano,+Av.+Monroe+2102,+C1428+CABA/@-34.5565957,-58.4588971,16.75z/data=!4m16!1m6!3m5!1s0x95bcca57148df1fb:0x476249b57e9a98ae!2sComosano!8m2!3d-34.5567248!4d-58.4571549!4m8!1m0!1m5!1m1!1s0x95bcca57148df1fb:0x476249', '-58.457133', '-34.556666'),
(18, 'ARG00018', 'Crema Paraiso', 'Argentina', 'Buenos Aires', 'Palermo', 'Gorriti', '5078', NULL, 'Comida venezolana', '', 'Arepa, Postre, Empanada', NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 15:00', '1166982578', NULL, 'https://www.instagram.com/cremaparaisovenarg/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Gorriti+5078,+Palermo,+Buenos+Aires/@-34.5890005,-58.4363614,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb58903673539:0xfae06c4b031b1e4f!2m2!1d-58.431984!2d-34.5890094', '-58.432030', '-34.589030'),
(19, 'ARG00019', 'Dermaskin Estética Médica', 'Argentina', 'Buenos Aires', 'Belgrano', 'Ciudad de la Paz', '1972', NULL, 'Tratamientos Médicos, Faciales y corporales', 'servicio', 'Cuidado personal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1133464669', NULL, 'https://www.instagram.com/dermaskinestetica/', 'https://www.facebook.com/dermaskinn/', NULL, 'dermaskinestetica@gmail.com', 'https://www.google.com/maps/dir//Ciudad+de+La+Paz+1972,+Belgrano,+Buenos+Aires/@-34.563958,-58.4610769,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb5d3fb065a79:0x559b88c30ca97f95!2m2!1d-58.4566995!2d-34.5639669', '-58.456230', '-34.564180'),
(20, 'ARG00020', 'Dolce Amaretto', 'Argentina', 'Buenos Aires', 'Palermo', 'Gurruchaga', '2203', NULL, 'Helados Artesanales', 'panaderia', 'Megamilkshake...', NULL, NULL, NULL, '', '14:00 - 22:45', '14:00 - 22:45', '14:00 - 22:45', '14:00 - 22:45', '12:15 - 22:45', '12:15 - 22:45', '48319850', NULL, 'https://www.instagram.com/dolceapp/', 'https://www.facebook.com/dolceapp/', 'https://dolceapp.negocio.site/', NULL, 'https://www.google.com/maps/dir//Dolce+Amaretto,+Gurruchaga+2203,+C1425+CABA/@-34.5831559,-58.4272238,15.92z/data=!4m16!1m6!3m5!1s0x95bcb586b3770641:0xfe8d17f740e1cc72!2sDolce+Amaretto!8m2!3d-34.5853697!4d-58.4230493!4m8!1m0!1m5!1m1!1s0x95bcb586b3770', '-58.42289', '-34.585374'),
(21, 'ARG00021', 'Doña Barbara', 'Argentina', 'Buenos Aires', 'Palermo', 'Serrano', '1545', NULL, 'Comida venezolana', '', 'Hamburguesa, Arepa, Empanada', NULL, NULL, NULL, '18:00 - 03:00', '18:00 - 03:00', '09:30 - 03:00', '09:30 - 03:00', '09:30 - Corrido', 'Corrido', 'Corrido - 03:00', NULL, NULL, 'https://www.instagram.com/dbarbaraserrano/', 'https://www.facebook.com/dbarbaraserrano', 'https://www.doñabarbara.com.ar', 'dbarbaraserrano@gmail.com', 'https://www.google.com.ar/maps/dir//Do%C3%B1a+Barbara,+Serrano+1545,+C1414DFE+C1414DFE,+Buenos+Aires/@-34.5892146,-58.4312555,19z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb5a930971643:0xa599bcb4af09ca9c!2m2!1d-58.430703!2d-34.589219!3e0', '-58.430759', '-34.589243'),
(22, 'ARG00022', 'Dulce & Salado Gourmet', 'Argentina', 'Buenos Aires', 'Almagro', 'Gascón', '995', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Hamburguesa, Tequeño ', NULL, NULL, NULL, '13:00 - 23:00', 'Cerrado', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '', '5491132464689', 'https://www.instagram.com/dulceysaladogourmet/', 'https://www.facebook.com/dulceysaladogourmet/', 'https://www.dulceysaladogourmet.com/', 'dulcesaladogourmet@gmail.com', 'https://www.google.com/maps/dir//Dulce+y+salado+-+venezolano,+Gasc%C3%B3n+1002,+C1181ACT,+C1181+ACT,+Buenos+Aires/@-34.5991755,-58.4250616,17.88z/data=!4m16!1m6!3m5!1s0x95bccbaf7a7f086b:0xd572422c1438a956!2sDulce+y+salado+-+venezolano!8m2!3d-34.59909', '-58.423549', '-34.599262'),
(23, 'ARG00023', 'Dulces & Tintos (Belgrano)', 'Argentina', 'Buenos Aires', 'Belgrano', 'Ciudad de la Paz', '2717', NULL, 'Productos venezolanos', 'local', 'Harina, Queso, Adobo', 'Harina Pan, Hoja de Hallaca, Onoto, Alcaparra, Aceituna, Pabilo', NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '', '549113138-0994', 'https://www.instagram.com/dulcesytintos/', 'https://www.facebook.com/DulcesYTintos/', NULL, NULL, 'https://www.google.com/maps/dir//Dulces+Y+Tintos,+Cdad.+de+La+Paz+2717,+C1428+CPU,+Buenos+Aires/@-34.5563973,-58.4631703,17.33z/data=!4m16!1m6!3m5!1s0x0:0x34487bb18f22de0c!2sDulces+Y+Tintos!8m2!3d-34.5571731!4d-58.4621299!4m8!1m0!1m5!1m1!1s0x95bcb42a', '-58.462100', '-34.557200'),
(24, 'ARG00024', 'El Ávila - Deli & Bar', 'Argentina', 'Buenos Aires', 'Caballito', 'Yerbal', '165', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', 'Plato Navideño', NULL, NULL, 'Cerrado', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 22:00', '1123898654', '5491123898654 ', 'https://www.instagram.com/elavila.deli/?hl=en', 'https://www.facebook.com/elavila.deli/', NULL, NULL, 'https://www.google.com/maps/dir//Yerbal+165,+C1405CDC+CABA/@-34.619144,-58.4297044,15.5z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcca43b7d78151:0xc8f04b2feccc2976!2m2!1d-58.4330208!2d-34.6152499!3e3', '-58.432990', '-34.615240'),
(25, 'ARG00025', 'El Chatico', 'Argentina', 'Buenos Aires', 'Palermo', 'Luis María Campos', '545', NULL, 'Productos venezolanos', 'local', 'Harina, Queso', 'Pan de Jamon, Harina Pan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/elchaticomaxikiosco/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Avenida+Luis+Mar%C3%ADa+Campos+545,+Palermo,+Buenos+Aires/@-34.5714821,-58.4388051,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb5bddff09c65:0xdeb697888c6a4d5c!2m2!1d-58.4344277!2d-34.571491', '-58.434208', '-34.571369'),
(26, 'ARG00026', 'El Maracucho', 'Argentina', 'Buenos Aires', 'Monserrat', 'Moreno', '882', NULL, 'Comida venezolana', 'restaurante', 'Cachapas, Tequeños, Patacones...', NULL, NULL, NULL, 'Reserva', '12:00 - 22:30', '12:00 - 22:30', '12:00 - 22:30', '12:00 - 00:00', '12:00 - 00:00', '13:00 - 21:00', NULL, '5491135747542', 'https://www.instagram.com/elmaracucho.ar/', NULL, 'https://www.elmaracucho.com.ar/', NULL, 'https://www.google.com/maps/dir//Moreno+882,+Monserrat,+Buenos+Aires/@-34.6117191,-58.3831464,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccad6b5705971:0x4935d7ea38baa83d!2m2!1d-58.378769!2d-34.611728', '-58.378749', '-34.612040'),
(27, 'ARG00027', 'El Sabor Tricolor', 'Argentina', 'Buenos Aires', 'Recoleta', 'Santa Fe', '2450', '50', 'Comida venezolana', 'restaurante', 'Cachapas, Tequeños, Patacones, Hamburguesas, Empanada', NULL, NULL, NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', 'Cerrado', '1148217668', NULL, 'https://www.instagram.com/elsabortricolor/', 'https://www.facebook.com/elsabortricolorba/', 'www.elsabortricolor.com/', 'elsabortricolor@gmail.com', 'https://www.google.com/maps/dir//Avenida+Santa+Fe+2450,+Recoleta,+Buenos+Aires/@-34.5947143,-58.4062475,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca90eb5ab12f:0x7e3ef2b234b76286!2m2!1d-58.4018701!2d-34.5947232', '-58.401749', '-34.594761'),
(28, 'ARG00028', 'El Yaque Bistro Bar', 'Argentina', 'Buenos Aires', 'Palermo', 'Armenia', '1400', NULL, 'Restaurante de Comida Venezolana', 'restaurante', 'Arepa, Empanada, Patacon', 'Plato Navideño', NULL, NULL, 'Cerrado', '12:00 - 01:00', '12:00 - 01:00', '12:00 - 01:00', '08:00 - 01:00', '08:00 - 01:00', '08:00 - 01:00', NULL, '5491134409023', 'https://www.instagram.com/elyaquebistrobar/?hl=en', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Armenia+1400,+C1414DKD+CABA/@-34.5913476,-58.4326052,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb58821117fef:0xb7c2b3c22899aef8!2m2!1d-58.4304112!2d-34.591352!3e0', '-58.430475', '-34.591354'),
(29, 'ARG00029', 'Empanadas Naiguatá', 'Argentina', 'Buenos Aires', 'Monserrat', 'Hipólito Yrigoyen', '782', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Arepa', 'Plato Navideño', NULL, NULL, '18:00 - 24:00', '18:00 - 24:00', '18:00 - 24:00', '18:00 - 24:00', '18:00 - 24:00', '18:00 - 24:00', '10:00 - 22:00', '1125974197', '5491125974197', 'https://www.instagram.com/empanadas_naiguata/', NULL, NULL, 'empanadasnaiguata@gmail.com', 'https://www.google.com/maps/dir//Av.+Hip%C3%B3lito+Yrigoyen+782,+C1086AAL+CABA/@-34.6094226,-58.379637,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bccad162bd4435:0xf901e42c66c02d24!2m2!1d-58.377443!2d-34.609427!3e0', '-58.377430', '-34.609530'),
(30, 'ARG00030', 'Estación Chacaíto', 'Argentina', 'Buenos Aires', 'Palermo', 'Charcas', '4402', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Hamburguesa, Cachapa', NULL, NULL, NULL, '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '14:00 - 00:00', '14:00 - 00:00', '1175004636', NULL, 'https://www.instagram.com/chacaitoba/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Charcas+4402,+C1425BNN+CABA/@-34.582988,-58.424148,16.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb58468633e47:0xcac42fc21a95edfc!2m2!1d-58.424307!2d-34.583002', '-58.424145', '-34.583029'),
(31, 'ARG00031', 'Gochilandia', 'Argentina', 'Buenos Aires', 'Palermo', 'Guise', '1944', NULL, 'Comida venezolana', 'local', 'Harina, Queso, Malta', 'Pan de Jamon', NULL, NULL, '9:00 - 22:00', '9:00 - 22:00', '9:00 - 22:00', '9:00 - 22:00', '9:00 - 22:00', '9:00 - 22:00', '8:00 - 18:00', '1128563174', '5491148213865', 'https://www.instagram.com/gochilandia.arg/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Guise+1944,+C1425+CABA/@-34.5904763,-58.4149911,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca81413e260b:0xe66fab9ebcea6c88!2m2!1d-58.4128024!2d-34.5904807', '-58.412790', '-34.590440'),
(32, 'ARG00032', 'Guaica', 'Argentina', 'Buenos Aires', 'Centro', 'Florida', '537', '315', 'Comida venezolana', 'restaurante', 'Arepa, Pabellon, Sopa', NULL, NULL, NULL, '12:00 -19:00', '12:00 -19:00', '12:00 -19:00', '12:00 -19:00', '12:00 -19:00', '11:00 - 16:00', 'Cerrado', '1143281872', NULL, 'https://www.instagram.com/guaicabar/', 'https://www.facebook.com/guaicabar/', 'www.guaica.com.ar', 'guaicabar@gmail.com', 'https://www.google.com/maps/dir//Florida+315,+C1005AAG+CABA/@-34.6043901,-58.3873457,15.75z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bccacda4c17dc9:0xe92df0db712e9405!2m2!1d-58.3750269!2d-34.6043593!3e3', '-58.375100', '-34.601790'),
(33, 'ARG00033', 'Harina Arepa BA (Palermo)', 'Argentina', 'Buenos Aires', 'Palermo', 'Av. Santa Fe', '4456', '22', 'Productos venezolanos', 'local', 'Harina, Queso, Malta', 'Harina, Hoja para Hallacas, Alcaparras, Onoto, Aceitunas, Pabilo', NULL, NULL, '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '10:00 - 17:01', 'Cerrado', '1127353152', '541227353152', 'https://www.instagram.com/harinarepa.ba/', 'https://www.facebook.com/harinarepa.ba/', 'https://harinarepa-ba.negocio.site/', 'harinarepa.ba@gmail.com', 'https://www.google.com/maps/dir//Av.+Santa+Fe+4456,+C1425BHT+CABA/@-34.5805701,-58.4260794,16.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb59b4b668d0f:0x340b9e7ee2ec280d!2m2!1d-58.424144!2d-34.579703', '-58.424230', '-34.579400'),
(34, 'ARG00034', 'Harina Arepa BA (Santos Lugares)', 'Argentina', 'Buenos Aires', 'Santos Lugares', 'Av. La Plata', '3467', NULL, 'Productos venezolanos', 'local', 'Harina, Queso, Malta', 'Harina, Hoja para Hallacas, Alcaparras, Onoto, Aceitunas, Pabilo', NULL, NULL, '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '10:00 - 17:00', 'Cerrado', '1127353152', '5411 27353152', 'https://www.instagram.com/harinarepa.ba/', 'https://www.facebook.com/harinarepa.ba/', 'https://harinarepa-ba.negocio.site/', 'harinarepa.ba@gmail.com', 'https://www.google.com/maps/dir//Av.+La+Plata+3467,+Santos+Lugares,+Buenos+Aires+Province/@-34.6140747,-58.5658423,13.67z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb792829b33e7:0x5d846229515e5dde!2m2!1d-58.5429257!2d-34.6018773', '-58.542940', '-34.601727'),
(35, 'ARG00035', 'Intanto Resto Bar', 'Argentina', 'Buenos Aires', 'Villa Crespo', 'Juan Ramírez de Velasco', '1153', NULL, 'Arroz chino al estilo venezolano', 'restaurante', 'Arroz Chino', NULL, NULL, NULL, '11:00 - 22:00', NULL, '11:00 - 22:00', '11:00 - 22:00', '12:00 - 00:00', NULL, NULL, '1148570730', NULL, 'https://www.instagram.com/intanto_restobar/', 'https://www.facebook.com/Intanto-Resto-Bar-1409762472489435/', 'https://intanto-resto-bar.negocio.site/', NULL, 'https://www.google.com/maps/dir//Juan+Ramirez+de+Velasco+1153,+Villa+Crespo,+Buenos+Aires/@-34.5923875,-58.4442517,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb5f4e2717ac3:0x892943f44e97c25f!2m2!1d-58.442063!2d-34.5923919', '-58.442084', '-34.592418'),
(36, 'ARG00036', 'Kiosco Punto V', 'Argentina', 'Buenos Aires', 'Villa Santa Rita', 'Nazca', '1382', NULL, 'Productos venezolanos', 'local', 'Adobo, Harina, Queso', 'Harina, Hoja para Hallaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/kioscopuntov/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Avenida+Nazca+1382,+Villa+Santa+Rita,+Buenos+Aires/@-34.6177861,-58.4788599,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcc9ee4f93665b:0x9f4467bb6b3d8141!2m2!1d-58.4766712!2d-34.6177905', '-58.476602', '-34.617673'),
(37, 'ARG00037', 'Kuatro\'s Grill', 'Argentina', 'Buenos Aires', 'San Nicolás', 'Sarmiento', '964', NULL, 'Combinación Grill y Buen Gusto', '', 'Arepa, Empanada, Hamburguesa', NULL, NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 00:00', '12:00 - 00:00', '17:00 - 22:00', '1163656057', '5491163656057', 'https://www.instagram.com/kuatrosgrill/', 'https://www.facebook.com/kuatrosgrill/', NULL, 'kuatrosgrill@gmail.com', 'https://www.google.com/maps/dir//Sarmiento+964,+C1035+CABA/@-34.6049126,-58.382589,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bccacfac79c51f:0x4217d31a75570006!2m2!1d-58.380395!2d-34.604917!3e0', '-58.379680', '-34.604830'),
(38, 'ARG00038', 'La Carbonera', 'Argentina', 'Buenos Aires', 'Palermo', 'El Salvador', '4401', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Tequeño', NULL, NULL, NULL, '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '1148329801', NULL, 'https://www.instagram.com/lacarbonerarg/', 'https://www.facebook.com/lacarbonerarg/', NULL, 'lacarboneraparrilla@gmail.com', 'https://www.google.com/maps/dir//El+Salvador+4401,+C1414+BPE,+Buenos+Aires/@-34.6048468,-58.4389587,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca78c38d2fd1:0x9ac8f0f4b4a1dc4f!2m2!1d-58.424149!2d-34.591405', ' -58.42414', '-34.591288'),
(39, 'ARG00039', 'La vereda', 'Argentina', 'Buenos Aires', 'Palermo', 'Costa Rica', '5545', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Patacon', 'Plato Navideño, Pan de Jamon, Pernil', NULL, NULL, '11:00 - 18:30', '11:00 -00:00', '11:00 -00:00', '11:00 - 02:00', '11:00 - 02:00', '05:00 - 02:00', '12:00 - 00:00', '1147744164', NULL, 'https://www.instagram.com/lavereda.arg/', 'https://www.facebook.com/lavereda.arg/', NULL, NULL, 'https://www.google.com/maps/dir//Hip%C3%B3lito+Yrigoyen+al+2592/@-34.6128805,-58.414361,15.29z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb55ce99cee73:0x885507d693502bfa!2m2!1d-58.4030595!2d-34.611147', '-58.403060', '-34.611151'),
(40, 'ARG00040', 'Mariburguer', 'Argentina', 'Buenos Aires', 'Retiro ', 'Marcelo T de Alvear', '967', NULL, 'Comida venezolana', 'restaurante', 'Hamburguesa, Pepito, Tequeño', NULL, NULL, NULL, 'Cerrado', '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', NULL, NULL, 'https://www.instagram.com/mariburguerarg/', 'https://www.facebook.com/Mariburguer-Arg-2064665560530952/', NULL, NULL, 'https://www.google.com/maps/dir//Marcelo+Torcuato+de+Alvear+967,+C1058AAM+CABA/@-34.5976025,-58.413478,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccab7cdffb97d:0x3eb9c905c86bf699!2m2!1d-58.3808987!2d-34.5965711', '-58.381079', '-34.597739'),
(41, 'ARG00041', 'Meraki Food', 'Argentina', 'Buenos Aires', 'Centro', 'Tucuman', '693', NULL, 'Comida venezolana', 'restaurante', 'Hamburguesa, Tequeño, Cachapa', 'Plato Navideño, Pan de Jamon, Hallaca, ', NULL, NULL, 'Cerrado', '12:30 - 22:00', 'Cerrado', '12:30 - 22:00', '12:30 - 00:00', '12:30 - 00:00', '12:30 - 21:00', '1121838108', NULL, 'https://www.instagram.com/merakifood.ar/', 'https://www.facebook.com/Marakifood.ar/', NULL, NULL, 'https://www.google.com/maps/dir//Tucum%C3%A1n+693,+C1049AAM+CABA/@-34.6010224,-58.3785839,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccacc099b8707:0x7e4872b739df2cb7!2m2!1d-58.3763952!2d-34.6010268', '-58.376620', '-34.601000'),
(42, 'ARG00042', 'Mestizos', 'Argentina', 'Buenos Aires', 'Palermo', 'Nicaragua', '4424', NULL, 'Latin Street Food', '', 'Hamburguesas, Arepas, Empanadas, Tequeños, Pepito', NULL, NULL, NULL, 'Cerrado', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 02:00', '12:00 - 02:00', '12:00 - 00:00', NULL, NULL, NULL, 'https://www.facebook.com/mestizosbuenosaires/', 'https://buenosairesconnect.com/mestizos-restaurante-venezolano-arepas-palermo/', NULL, 'https://www.google.com/maps/dir//Nicaragua+4424,+C1414+CABA/@-34.5895859,-58.4257888,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca78a9d39957:0x9639275a963bc3d1!2m2!1d-58.4236001!2d-34.5895903', '-58.423550', '-34.589609'),
(43, 'ARG00043', 'Mi Junquito', 'Argentina', 'Buenos Aires', 'Almagro', 'Av. Rivadavia', '3930', NULL, 'Comida venezolana', 'restaurante', 'Golfeado, Cachito, Fresa con Crema', 'Hallaca', NULL, NULL, '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '14:00 - 22:00', NULL, '5491164047975', 'https://www.instagram.com/mi_junquito/', NULL, NULL, 'mijunquitobs@gmail.com', 'https://www.google.com/maps/dir//Av.+Rivadavia+3930,+C1204AAR+CABA/@-34.6117387,-58.4217734,19.25z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcca5ef3ed1911:0x5119de9af10c0f2e!2m2!1d-58.421342!2d-34.611748!3e0', '-58.421393', '-34.611763'),
(44, 'ARG00044', 'Nubes', 'Argentina', 'Buenos Aires', 'Retiro', 'Marcelo T. de Alvear', '873', NULL, 'Gastronomía venezolana', 'restaurante', 'Arepa, Cachito, Tequeño', NULL, NULL, NULL, '9:30 - 21:00', '9:30 - 21:00', '9:30 - 21:00', '9:30 - 21:00', '9:30 - 21:00', '10:30 - 16:00', 'Cerrado', '1123903969', NULL, 'https://www.instagram.com/nubes.bar/', 'https://www.facebook.com/nubes.jugos/', NULL, 'nubes.jugos@gmai.com', 'https://www.google.com/maps/dir//Marcelo+T.+de+Alvear+873,+Retiro,+Buenos+Aires/@-34.5963268,-58.3817174,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccab625600d53:0x71c8f1e4cee0469a!2m2!1d-58.3795287!2d-34.5963312', '-58.379433', '-34.596326'),
(45, 'ARG00045', 'Onoto Latin Food', 'Argentina', 'Buenos Aires', 'Tigre', 'Av. Agustin M. Garci', '6649', '16', 'Comida venezolana y Mexicana', 'restaurante', 'Arepa, Empanada, Tequeño', 'Hallaca, Pan de Jamon', 'delivery propio', NULL, 'Cerrado', '11:00 - 21:00', '11:00 - 21:00', '11:00 - 21:00', '11:00 - 21:00', '11:00 - 22:00', '11:00 - 15:00', '1566566686', NULL, 'https://www.instagram.com/onoto.latinfood', 'https://www.facebook.com/Onoto-Latin-Food-284264942523382/', 'http://www.onoto.com.ar/', NULL, 'https://www.google.com/maps/dir//Santa+Maria+del+Tigre,+Av.+Agust%C3%ADn+M.+Garc%C3%ADa+6649,+B1648+Rinc%C3%B3n+de+Milberg,+Buenos+Aires/@-34.4129147,-58.6876515,12.25z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bca6b1d9d370b3:0xd9fc6215a58ea913!2m2!1d-58.63995', '-58.639698', '-34.400058'),
(46, 'ARG00046', 'Pa\' Chichiriviche', 'Argentina', 'Buenos Aires', 'Villa Crespo', 'Corrientes', '4867', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Hamburguesa, Pepito', NULL, NULL, NULL, '11:00 - 03:00', '11:00 - 03:00', '11:00 - 03:00', '11:00 - 06:00', '11:00 - 06:00', '11:00 - 06:00', '11:00 - 06:00', NULL, '5491125147706', 'https://www.instagram.com/pachichiriviche/', 'https://www.facebook.com/pachichiriviche/', NULL, 'pachichiribiche@gmail.com', 'https://www.google.com/maps/dir//PaChichiriviche,+Av.+Corrientes+4867,+C1414+CABA/@-34.6016268,-58.4380116,16.75z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bccb0c5018f2af:0xd62aa960521412b8!2m2!1d-58.4343928!2d-34.6012184!3e0', '-58.434359', '-34.601263'),
(48, 'ARG00048', 'Panadería Donna', 'Argentina', 'Buenos Aires', 'Recoleta', 'Paraguay', '2600', NULL, 'Especialidades venezolanas', 'panaderia', 'MiniLunch, Cachito, Pastelitos, Tequeño, Pan', 'Pan de Jamon, Ponche Crema', NULL, NULL, '07:30 - 20:45', '07:30 - 20:45', '07:30 - 20:45', '07:30 - 20:45', '07:30 - 20:45', '07:30 - 20:45', '08:00 - 18:00', '1149638468', '5491149638468', 'https://www.instagram.com/panaderiavenezolanadonna/', 'https://www.facebook.com/bakeryvenezolana/', 'https://panaderia-donna-especialidades-venezolanas.negocio.site/', 'donnaespecialidadesvzlanas@gmail.com', 'https://www.google.com/maps/dir//Paraguay+2600,+Recoleta,+Buenos+Aires/@-34.5973793,-58.4073278,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca91cf922ef7:0x47e8250d45f4b846!2m2!1d-58.4051391!2d-34.5973837', '-58.404962', '-34.597452'),
(49, 'ARG00049', 'Parados Urban Food', 'Argentina', 'Buenos Aires', 'San Nicolas', 'Lavalle', '986', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Pepito', 'Hallaca', 'delivery propio', NULL, '17:00 - 01:30', '17:00 - 01:30', '17:00 - 01:30', '17:00 - 01:30', '17:00 - 02:30', '17:00 - 02:30', '17:00 - 00:30', '1127328052', NULL, 'https://www.instagram.com/paradosurbanfood/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Lavalle+986,+San+Nicol%C3%A1s,+Buenos+Aires/@-34.6025722,-58.3828686,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccacf2ebf7db3:0x3138c8335307720!2m2!1d-58.3806799!2d-34.6025766', '-58.380629', '-34.602605'),
(50, 'ARG00050', 'Peches Magda', 'Argentina', 'Buenos Aires', 'Balvanera', 'Viamonte', '2190', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Pepito, Cachapa', NULL, NULL, NULL, '07:00 - 23:00', '07:00 - 23:00', '07:00 - 23:00', '07:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '1127889293', '5491127889293', 'https://www.instagram.com/pechesmagdave/', 'https://www.facebook.com/PechesMagdave/', NULL, 'pechesmagdave@gmail.com', 'https://www.google.com.ar/maps/dir//Peches+Magda,+C1056ABH+Buenos+Aires+AR,+Viamonte+2190,+C1056+ABH,+Buenos+Aires/@-34.6011994,-58.4006208,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bccb862e873edf:0x7430d0d8537822f3!2m2!1d-58.3984271!2d-34.6011971!3e0', '-58.398213', '-34.601214'),
(51, 'ARG00051', 'Pibe market', 'Argentina', 'Buenos Aires', 'Belgrano', 'Av. Cabildo', '2136', '18', 'Productos venezolanos', 'local', 'Harina, Queso, Malta', 'Harina, Pan de Jamon', NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', 'Cerrado', '1133810398', '5491133810398', 'https://www.instagram.com/pibemarket/', 'https://www.facebook.com/Pibemarket-866479330208848/', NULL, 'lguevar4@gmail.com', 'https://www.google.com.ar/maps/dir//Galeria+Recamier,+Av.+Cabildo+2136,+C1428AAQ+CABA/@-34.5618532,-58.4595293,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb5d4802eecd7:0xac29424b48d0523c!2m2!1d-58.4573353!2d-34.5618576!3e0', '-58.457238', '-34.561822'),
(52, 'ARG00052', 'Quinta Bar', 'Argentina', 'Buenos Aires', 'Balvanera', 'Aguero', '445', NULL, 'Discoteca venezolana', 'discoteca', 'Tragos y Música', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1198065861', NULL, 'https://www.instagram.com/quintabarbsas/', 'https://www.facebook.com/Quinta-Bar-Buenos-Aires-2332846193643906/', NULL, NULL, 'https://www.google.com/maps/dir//Ag%C3%BCero+445,+C1171ABE+CABA/@-34.6046833,-58.4139819,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcca8b63df7c37:0x5454877fd3a5a32b!2m2!1d-58.4117879!2d-34.6046877!3e0', '-58.411753', '-34.604725'),
(53, 'ARG00053', 'Sabores By El Kioskito', 'Argentina', 'Buenos Aires', 'Belgrano', 'Vuelta de Obligado', '2613', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', 'Pan de Jamon, Plato Navideño', NULL, NULL, 'Cerrado', '12:00 - 21:00', '12:00 - 21:00', '12:00 - 21:00', '12:00 - 22:00', '11:00 - 22:00', '11:00 - 17:00', '1147856608', NULL, 'https://www.instagram.com/sabores_rest/', 'https://www.facebook.com/Sabores-By-el-Kioskito-260412097906018/', 'https://www.pedidosya.com.ar/restaurantes/buenos-aires/sabores-belgrano-menu', NULL, 'https://www.google.com/maps/dir//Sabores+By+El+Kioskito,+ADQ,+Vuelta+de+Obligado+2613,+C1428+CABA/@-34.5564062,-58.529827,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb58efa0f7357:0xdf149bfe68d74116!2m2!1d-58.4597866!2d-34.5565676', '-58.459722', '-34.556548'),
(54, 'ARG00054', 'Sandwich Factory', 'Argentina', 'Buenos Aires', 'Monserrat', 'Hipólito Yrigoyen', '715', NULL, 'Comida venezolana', '', 'Tequeños, Pepito, Sandwich, Empanadas, Shawarma, Hamburguesas, Arepas', NULL, NULL, NULL, '9:00 - 16:00', '9:00 - 16:00', '9:00 - 16:00', '9:00 - 16:00', '9:00 - 16:00', NULL, NULL, '1137697858', '5491153682698', 'https://www.instagram.com/sandwich.factory.ba/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Av.+Hip%C3%B3lito+Yrigoyen+715,+C1086AAK+CABA/@-34.6092153,-58.3786953,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccad3c458d25f:0xd4c6dbb9cc3cb606!2m2!1d-58.3765066!2d-34.6092197', '-58.376552', '-34.609246'),
(55, 'ARG00055', 'Scott\'s Barber Shop', 'Argentina', 'Buenos Aires', 'Balvanera', 'Boulogne Sur Mer', '608', NULL, 'Barberia', 'servicio', 'Corte, Barba, Lavado, Secado', NULL, NULL, NULL, '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', 'Cerrado', '1153693544', NULL, 'https://www.instagram.com/scottbarbershop/', 'https://www.facebook.com/scott.barbershop.92', 'http://www.scottbarbershop.com/', NULL, 'https://www.google.com/maps/dir//Boulogne+Sur+Mer+608,+C1213AAJ+CABA/@-34.6039608,-58.4163455,15.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca8d64f42b1d:0x81ecba245c6516ec!2m2!1d-58.4063602!2d-34.602988', '-58.406378', '-34.602905'),
(56, 'ARG00056', 'Shoga Temakeria', 'Argentina', 'Buenos Aires', 'Recoleta', 'Sánchez de Bustamant', '2012', NULL, 'Sushi al estilo venezolano', 'restaurante', 'Sushi', NULL, 'delivery propio', NULL, 'Cerrado', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '1148241561', NULL, 'https://www.instagram.com/shogatemakeria/', 'https://www.facebook.com/ShogaTemakeria/', NULL, 'shogatemakeria@gmail.com', 'https://www.google.com/maps/dir//S%C3%A1nchez+de+Bustamante+2012,+Recoleta,+Buenos+Aires/@-34.5886216,-58.4095297,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca833fe25a71:0x9146a75a85874707!2m2!1d-58.407341!2d-34.588626', '-58.407344', '-34.588620'),
(57, 'ARG00057', 'Teque Listos', 'Argentina', 'Buenos Aires', 'Palermo', 'Niceto Vega', '4626', NULL, 'Tequeños venezolanos', 'restaurante', 'Tequeño, Pastelito', NULL, 'delivery propio', NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '1133743619', NULL, 'https://www.instagram.com/teque_listos/', 'https://www.facebook.com/tequelistosbsas/', NULL, NULL, 'https://www.google.com/maps/dir//Avenida+Coronel+Niceto+Vega+4626,+Palermo,+Buenos+Aires/@-34.6025049,-58.4286866,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca77837d8d93:0x773eecd66d9c8954!2m2!1d-58.429314!2d-34.593434', '-58.429295', '-34.593332'),
(58, 'ARG00058', 'Three Beer', 'Argentina', 'Buenos Aires', 'Palermo', 'Guatemala', '4487', NULL, 'Cervecería artesanal argentina con gastronomía venezolana', 'restaurante', 'Arepa, Hamburguesa, Tequeño', NULL, NULL, NULL, '18:00 - 01:00', '18:00 - 01:00', '18:00 - 01:00', '18:00 - 01:00', '18:00 - 03:00', '18:00 - 03:00', '18:00 - 01:00', NULL, NULL, 'https://www.instagram.com/cerveceria3beers/', 'https://www.facebook.com/Threebeers-705171829879168/', NULL, 'threebeer.c@gmail.com', 'https://www.google.com/maps/dir//Guatemala+4487,+Palermo,+Buenos+Aires/@-34.5878905,-58.424507,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb580b8f02ed7:0x4e961eae300949b6!2m2!1d-58.4223183!2d-34.5878949', '-58.422278', '-34.587905'),
(59, 'ARG00059', 'Tienda Tostón', 'Argentina', 'Buenos Aires', 'Retiro', 'Marcelo T de Alvear', '1310', NULL, 'Productos venezolanos', '', 'Malta, Harina Pan, Papelón Queso', NULL, NULL, NULL, '7:00 - 22:00', '7:00 - 22:00', '7:00 - 22:00', '7:00 - 22:00', '7:00 - 22:00', '7:00 - 22:00', '12:00 - 20:00', '1156457642', '5491132311909', 'https://www.instagram.com/tienda.toston/', 'https://www.facebook.com/tienda.toston/', NULL, 'info@toston.com.ar', 'https://www.google.com/maps/dir//Marcelo+T.+de+Alvear+1310,+AAV,+Buenos+Aires/@-34.5990224,-58.3919113,15.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccab858c23dfb:0xe2611476932c6f76!2m2!1d-58.3858378!2d-34.5970592', '-58.385881', '-34.597090'),
(60, 'ARG00060', 'Touch Qué Chevere', 'Argentina', 'Buenos Aires', 'Palermo', 'Santa Fe', '5353', NULL, 'Comida venezolana', '', 'Arepa, Empanada, Patacon', NULL, NULL, NULL, '12:00 - 23:45', '12:00 - 23:46', '12:00 - 23:47', '12:00 - 23:48', '12:00 - 23:49', '12:00 - 23:50', '12:00 - 23:51', '1147799099', NULL, 'https://www.instagram.com/touch.que.chevere/', 'https://www.facebook.com/touchquechevere/', NULL, 'touch.palermo@gmail.com', 'https://www.google.com/maps/dir//Avenida+Santa+Fe+5353,+Palermo,+Buenos+Aires/@-34.575055,-58.437146,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb595d1796cc3:0x1eaf424fd7dfa0be!2m2!1d-58.4349573!2d-34.5750594', '-58.434820', '-34.575035'),
(61, 'ARG00061', 'Tu Arepa', 'Argentina', 'Buenos Aires', 'Recoleta', 'Aguero', '1199', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', 'Hallaca', NULL, NULL, '11:00 - 15:00 / 18:00 - 01:00', '11:00 - 15:00 / 18:00 - 01:00', '11:00 - 15:00 / 18:00 - 01:00', '11:00 - 15:00 / 18:00 - 01:00', '11:00 - 15:00 / 18:00 - 01:00', '11:00 - 15:00 / 18:00 - 01:00', '11:00 - 15:00 / 18:00 - 01:00', '1120867143', NULL, 'https://www.instagram.com/tuarepa.comba/', 'https://www.facebook.com/tuarepabuenosaires/', 'https://tuarepacom.business.site/', 'tuarepa.comba@gmail.com', 'https://www.google.com/maps/dir//Ag%C3%BCero+1199,+Recoleta,+Buenos+Aires/@-34.5958356,-58.4117792,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca8f6366e0a1:0x58a9ed356f2038a2!2m2!1d-58.4095905!2d-34.59584', '-58.409618', '-34.595898'),
(62, 'ARG00062', 'Tu Sonrisa', 'Argentina', 'Buenos Aires', 'Recoleta', 'Aguero', '1595', NULL, 'Especialidades odontologicas', 'servicio', 'Odontologia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1126648944', '5491126648944', 'https://www.instagram.com/tusonrisa.arg/', 'https://www.facebook.com/tusonrisa.argentina/', NULL, 'tusonrisa.arg@gmail.com', 'https://www.google.com.ar/maps/dir//Tu+Sonrisa+Argentina,+Ag%C3%BCero+1595,+C1425+CABA/@-34.5920249,-58.4093448,17z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcca84dc2bf853:0xcf62801905805434!2m2!1d-58.4071508!2d-34.5920293!3e0', '-58.407242', '-34.591959'),
(63, 'ARG00063', 'Ven-Arg 24/7', 'Argentina', 'Buenos Aires', 'Balvanera', 'Lavalle', '1999', NULL, 'Productos y comida venezolana', 'local', 'Harina, Queso, Diablito', 'Harina, Onoto', NULL, NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '1127577140', NULL, 'https://www.instagram.com/venarg247/', 'https://www.facebook.com/Ven-Arg-247-231921054047892/', NULL, NULL, 'https://www.google.com/maps/dir//Ven+Arg,+Lavalle+1999,+C1051ABC+C1051ABC,+Buenos+Aires/@-34.6050055,-58.4128242,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccaea9a1aaaab:0x18fbcb5ad68a51d7!2m2!1d-58.3953671!2d-34.6032254', '-58.394898', '-34.603179'),
(64, 'ARG00064', 'Waffles Pop', 'Argentina', 'Buenos Aires', 'Palermo', 'Thames', '2490', NULL, 'Comida venezolana', 'restaurante', 'Arepas, Empanadas, Waffles', 'Hallaca', NULL, 'Glovo', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '09:00 - 18:00', '1147733265', NULL, 'https://www.instagram.com/wafflespopbaires/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Thames+2490,+C1425FIJ+CABA/@-34.5817157,-58.4255711,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb583773bb893:0x1b57e2758f6dc1e6!2m2!1d-58.4221164!2d-34.5812829', '-58.422074', '-34.581373'),
(65, 'ARG00065', 'Bachi Bistro', 'Argentina', 'Buenos Aires', 'Palermo', 'Fitz Roy', '2168', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Tequeño', NULL, NULL, NULL, '11:00 - 23:00', '11:00 - 23:00', '11:00 - 23:00', '11:00 - 23:00', '11:00 - 01:00', '11:00 - 01:00', 'Cerrado', '1147757271', '5491147757271', 'https://www.instagram.com/bachibistro/', 'https://www.facebook.com/Bachi-Bistro-437115953725484/', 'https://bachibistro.com/', 'info@bachibistro.com', 'https://www.google.com/maps/dir//Fitz+Roy+2168,+C1425+FVB,+Buenos+Aires/@-34.5862726,-58.4313903,14.75z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb591ba05c805:0x19b344645ace92b1!2m2!1d-58.432345!2d-34.5805615!3e3', '-58.432267', '-34.580547'),
(66, 'ARG00066', 'Viva la Arepa', 'Argentina', 'Buenos Aires', 'Belgrano', 'Ciudad de La Paz', '2721', NULL, 'comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', NULL, 'rappi', NULL, NULL, '21:00 - 23:00', '21:00 - 23:00', '21:00 - 23:00', '21:00 - 23:00', '21:00 - 23:00', '21:00 - 23:00', '1124616607', '5491124616607', 'https://www.instagram.com/vivalaaarepa/', NULL, NULL, NULL, 'https://www.google.com.ar/maps/place/Cdad.+de+La+Paz+2721,+C1428CPU+CABA/@-34.5588431,-58.4743418,14.5z/data=!4m5!3m4!1s0x95bcb42a6d68f967:0x246ea314d865e919!8m2!3d-34.5571731!4d-58.4621299?hl=en&authuser=0', ' -58.462366', '-34.556981'),
(67, 'ARG00067', 'Empanadas Operadas', 'Argentina', 'Buenos Aires', 'Palermo', 'Niceto Vega', '4984', NULL, 'Comida venezolana ', 'restaurante', 'Empanada, Tequeño ', NULL, NULL, NULL, '18:00 - 23:30', '18:00 - 23:30', '18:00 - 23:30', '18:00 - 23:30', '18:00 - 23:30', '12:00', '12:00', '1165563876', NULL, 'https://www.instagram.com/empanadas_operadas/', 'https://www.facebook.com/EmpanadasOperadasBA/', NULL, NULL, 'https://www.google.com/maps/dir//Av.+Cnel.+Niceto+Vega+4984,+C1414BEH+CABA/@-34.5887241,-58.4363911,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcb58994600cc1:0x1377231e278f918d!2m2!1d-58.4333344!2d-34.5911275!3e0', '-58.433227', '-34.591076'),
(68, 'ARG00068', 'Dr Chicha (San Nicolas)', 'Argentina', 'Buenos Aires', 'San Nicolas', 'Lavalle', '750', '50', 'Productos venezolanos ', 'local', 'Chicha', 'Hallaca', 'uber eats', NULL, '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', NULL, NULL, NULL, 'https://www.instagram.com/dr_chicha/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Lavalle+750,+C1006+CABA/@-34.6091205,\n -58.4175803,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccacea07ec8d9:0x9d34eda7fcb1fc59!2m2!1d\n -58.3773438!2d-34.6024845', '-58.377405', '-34.601285'),
(69, 'ARG00069', 'Dr Chicha (Palermo)', 'Argentina', 'Buenos Aires', 'Palermo', 'Santa Fe', '4456', '23', 'Productos venezolanos ', 'local', 'Chicha', 'Hallaca', NULL, NULL, '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', '10:00 - 21:00', NULL, NULL, NULL, 'https://www.instagram.com/dr_chicha/', NULL, NULL, NULL, 'https://www.google.com/maps/dir/Your+locatio/Av.+Santa+Fe+4456,+\n C1425BHT+CABA/@-34.5860779,-58.4212592,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb59b4b668d0f:\n 0x340b9e7ee2ec280d!2m2!1d-58.424144!2d-34.579703', '-58.42415', '-34.579681'),
(70, 'ARG00070', 'Che Bonche (Palermo)', 'Argentina', 'Buenos Aires', 'Palermo', 'José A Cabrera', '4946', NULL, 'Cervezas Artesanales e Industriales. Gastronomía Argentina y Venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1141958580', '5491159929612', 'https://www.instagram.com/chebonche/', 'https://www.facebook.com/cheboncherumba/', NULL, 'chebonche.rumba@hotmail.com', 'https://www.google.com/maps/dir//Che+Bonche+Soho,+Jos%C3%A9+A.+Cabrera+4946,+C1427+CABA/@-34.5896624,-58.4322735,18z/data=!4m16!1m6!3m5!1s0x95bcb514cf3f43bd:0x593231a061bf4cd9!2sChe+Bonche+Soho!8m2!3d-34.5904662!4d-58.4319382!4m8!1m0!1m5!1m1!1s0x95bc', '-58.431828', '-34.590352'),
(71, 'ARG00071', 'La Carbonera', 'Argentina', 'Buenos Aires', 'Belgrano', 'Blanco Encalada', '2284', NULL, 'Comida venezolana', 'restaurante', 'Empanadas, Tequeños', NULL, NULL, NULL, '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '18:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '1148329801', NULL, 'https://www.instagram.com/lacarbonerarg/', 'https://www.facebook.com/lacarbonerarg/', NULL, 'lacarboneraparrilla@gmail.com', 'https://www.google.com/maps/dir//La+Carbonera,+Blanco+Encalada+2284,+C1428+CABA/@-34.55802,-58.4595281,17z/data=!4m16!1m6!3m5!1s0x95bcb59d1c0d25dd:0x243bc41cb222439d!2sLa+Carbonera!8m2!3d-34.5585767!4d-58.4579349!4m8!1m0!1m5!1m1!1s0x95bcb59d1c0d25dd:', '-58.457856', '-34.558554'),
(72, 'ARG00072', 'Costumbres Venezolanas', 'Argentina', 'Buenos Aires', 'Retiro', 'Av Córdoba', '541', '64', 'Chicha Venezolana', 'restaurante', 'Chica ', NULL, NULL, NULL, '18:00 - 20:00', '18:00 - 20:00', '18:00 - 20:00', '18:00 - 20:00', '18:00 - 20:00', '12:00 - 20:00', 'Cerrado', NULL, NULL, 'https://www.instagram.com/costumbres_v/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Costumbres+Venezolanas,+Av.+C%C3%B3rdoba+541,+C1054AAE,+C1054+CABA/@-34.5983633,-58.376229,17z/data=!4m16!1m6!3m5!1s0x95bccbdc3bdce1a1:0xf7af2eeea2ef976a!2sCostumbres+Venezolanas!8m2!3d-34.5985227!4d-58.3746847!4m8!1m', '-58.374812', '-34.598544'),
(73, 'ARG00073', 'Panadería Artesanal Artigiani', 'Argentina', 'Buenos Aires', 'Belgrano', 'Ciudad de La Paz', '1426', NULL, 'Emprendimiento ', 'panaderia', 'panes, postres, cursos de panadería', 'Pan de Jamon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491133718505', 'https://www.instagram.com/artigiani.ar/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Cdad.+de+La+Paz+1426,+C1426AHB+CABA/@-34.5896856,-58.4742148,13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb5daa8048b99:0x872d2023e4a18314!2m2!1d-58.4520921!2d-34.568183', '-58.451273', '-34.568603');
INSERT INTO `BUSCATUAREPA_ARG` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `CALLE`, `ALTURA`, `LOCAL`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`, `RUTA_GOOGLE`, `X`, `Y`) VALUES
(74, 'ARG00074', 'Venturasalud', 'Argentina', 'Buenos Aires', 'Belgrano', 'Manuel Ugarte', '2548', '6-A', 'Tu cuerpo, mente y alma en armonía. Terapias Holisticas y Energéticas. Tratamientos Faciales y Corporales', 'servicio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1147861626', '5491132396396', 'https://www.instagram.com/venturasalud/', 'https://www.facebook.com/pg/Venturasaludlevf/', 'https://www.venturasalud7.com/', 'info@venturasalud7.com', 'https://www.google.com/maps/dir//Venturasalud,+Manuel+Ugarte+2548,+1428+CABA/@-34.5569839,-58.4653848,17z/data=!4m16!1m6!3m5!1s0x95bcb42a08eb61ad:0x5bc7efb261e3eb3c!2sVenturasalud!8m2!3d-34.5569883!4d-58.4631908!4m8!1m0!1m5!1m1!1s0x95bcb42a08eb61ad:0', '-58.463220', '-34.556995'),
(75, 'ARG00075', 'Barber Blessed', 'Argentina', 'Buenos Aires', 'Congreso', 'Montevideo', '80', NULL, 'Cortes Fade, Clásicos, barbas y más..', 'servicio', NULL, NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', 'Cerrado', NULL, '541127423764', 'https://www.instagram.com/barberblessed_hs/', 'https://www.facebook.com/BarberJJBlessed/', NULL, 'djheisonbarber@gmail.com', 'https://www.google.com/maps/dir//J+%26+J+Blessed+Barber+Shop,+Montevideo+80,+C1019ABB+CABA/@-34.6081556,-58.3915649,17z/data=!4m16!1m6!3m5!1s0x95bccac36664e56f:0xbff72b23f60190e7!2sJ+%26+J+Blessed+Barber+Shop!8m2!3d-34.60816!4d-58.3893709!4m8!1m0!1m5', '-58.389357', '-34.608081'),
(76, 'ARG00076', 'Cosacos Barber & Beer (Pilar)', 'Argentina', 'Buenos Aires', 'Pilar', 'Pedro Lagrave', '77', NULL, 'Barberia & Bar', 'servicio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' 5491128636777', 'https://www.instagram.com/cosacos.barber.beer/', 'https://www.facebook.com/Cosacos-Barber-Beer-345796326051765/', NULL, 'cosacos.barber.beer@gmail.com', 'https://www.google.com/maps/dir//COSACOS+Barber+%26+Beer,+Pedro+Lagrave+77,+B1629+Pilar,+Buenos+Aires/@-34.4565896,-58.9082706,17z/data=!4m16!1m6!3m5!1s0x95bc9d2d788f8597:0x3f4b5cb80ee30b59!2sCOSACOS+Barber+%26+Beer!8m2!3d-34.4566719!4d-58.9074218!4m', '-58.907555', '-34.456687'),
(77, 'ARG00077', 'Liberty Barber Shop', 'Argentina', 'Buenos Aires', 'San Nicolás', 'Lavalle', '623', '40', 'Barbería Cubana Venezolana', 'servicio', NULL, NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', 'Cerrado', '', '', 'https://www.instagram.com/libertybbshop/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Lavalle+623,+C1047AAM+CABA/@-34.6021232,-58.3757165,20z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccacc4163278b:0x6dd83121e4c82c72!2m2!1d-58.3756233!2d-34.6021756', '-58.375668', '-34.602156'),
(78, 'ARG00078', 'Bal 2 Barber Shop', 'Argentina', 'Buenos Aires', 'San Nicolás', 'Lavalle', '520', '45', 'Barberos Venezolanos', 'servicio', NULL, NULL, NULL, NULL, '09:30 - 20:30', '09:30 - 20:30', '09:30 - 20:30', '09:30 - 20:30', '09:30 - 20:30', '09:30 - 20:30', 'Cerrado', NULL, '5491127215707', 'https://www.instagram.com/bal2barbershop/', 'https://www.facebook.com/bal2barbershop/', NULL, NULL, 'https://www.google.com/maps/dir//Bal2+Barber+Shop+Venezuela,+Florida+520,+Galeria+Central,+Local+45,+C1005+CABA/@-34.6019873,-58.3758878,19z/data=!4m16!1m6!3m5!1s0x95bccacc42c1c767:0x4499e5929bed5c97!2sBal2+Barber+Shop+Venezuela!8m2!3d-34.6019873!4d-', '-58.375754', '-34.601904'),
(79, 'ARG00079', 'SUcreativos', 'Argentina', 'Buenos Aires', 'Congreso', 'Adolfo Alsina', '1609', NULL, 'Material Publicitario. Sublimación/Grabado Láser/Vinil/Serigrafía', 'servicio', NULL, NULL, NULL, NULL, '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', 'Cerrado', NULL, '5491121937102', 'https://www.instagram.com/sucreativos/', 'https://www.facebook.com/pg/sucreativos/', NULL, 'info@srecinternacional.com', 'https://www.google.com/maps/dir//S.R.E.C+Internacional,+Adolfo+Alsina+1609,+C1077+CABA/@-34.6112532,-58.3914128,17z/data=!4m16!1m6!3m5!1s0x95bccb540a64be53:0x76cd130ccb448a92!2sS.R.E.C+Internacional!8m2!3d-34.6112532!4d-58.3892188!4m8!1m0!1m5!1m1!1s0', '-58.389181', '-34.611216'),
(81, 'ARG00081', 'TonsorsClub', 'Argentina', 'Buenos Aires', 'Recoleta', 'Junín', '1305', NULL, 'Barbería Tonsor\'s Club', 'servicio', 'Peluqueria, Barberia', NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', 'Cerrado', NULL, NULL, 'https://www.instagram.com/tonsorsclub/', 'https://www.facebook.com/TonsorsClub-109620360398430/', NULL, NULL, 'https://www.google.com/maps/dir//Barber%C3%ADa+Tonsor\'s+Club,+Jun%C3%ADn+1305,+C1113AAK+CABA/@-34.5928741,-58.3991838,17z/data=!4m16!1m6!3m5!1s0x95bccb82c36a5b53:0x79f37dcab831ffc0!2sBarber%C3%ADa+Tonsor\'s+Club!8m2!3d-34.5928741!4d-58.3969898!4m8!1m0', '-58.397050', '-34.592945'),
(82, 'ARG00082', 'Chichitas Adrian', 'Argentina', 'Neuquen', 'Capital', 'Hipólito Yrigoyen', '212', NULL, 'Venta de Chicha', 'restaurante', 'Chicha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5492996743540', '5492996743540', 'https://www.instagram.com/chichitas_adrian/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Hip%C3%B3lito+Yrigoyen+212,+Neuqu%C3%A9n/@-38.9538928,-68.0594141,13.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x960a33ce3b91cd9f:0x6fdc424c3f8e1749!2m2!1d-68.0609866!2d-38.9527704', '-68.06093', '-38.952576'),
(83, 'ARG00083', 'Malteadasa', 'Argentina', 'Buenos Aires', 'Ramos Mejía', 'Av. Gaona', '2380', NULL, 'Postres y algo más', 'local', 'Empanada, Malteada, Chicha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491138513535', NULL, 'https://www.instagram.com/malteadasaa.ar/', 'https://www.facebook.com/malteadasaaar-338450207082039/', NULL, NULL, 'https://www.google.com/maps/dir//Av.+Gaona+2380,+Ramos+Mej%C3%ADa,+Buenos+Aires/@-34.6381229,-58.5645026,18z/data=!4m17!1m7!3m6!1s0x95bcc7faef12814d:0x6f9d9424f429121!2sAv.+Gaona+2380,+Ramos+Mej%C3%ADa,+Buenos+Aires!3b1!8m2!3d-34.638127!4d-58.563402!', '-58.563352', '-34.638067'),
(84, 'ARG00084', 'Comosano (Recoleta)', 'Argentina', 'Buenos Aires', 'Recoleta', 'Arenales', '2031', NULL, 'Productos venezolanos', 'local', 'Harina, Platano', 'Hoja para Hallaca, Pan de Jamon, Harina, Onoto', 'delivery propio', NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 15:00', '1168082388', '5491168082388', 'https://www.instagram.com/comosano.com.ar/', 'https://www.facebook.com/comosano.com.ar/', 'http://www.comosano.com.ar', 'comosano.com.ar@gmail.com', 'https://www.google.com/maps/dir//Arenales+2031,+C1124AAE+CABA/@-34.6063126,-58.4236531,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca964c74f067:0x2ac31eedce8e8d6d!2m2!1d-58.396308!2d-34.5944519', '-58.396261', '-34.594463'),
(86, 'ARG00086', 'Aripo Sabor Venezolano', 'Argentina', 'Neuquen', 'Capital', 'Av. 25 de Mayo', '84', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Hamburguesa', NULL, NULL, NULL, NULL, '19:00 - 00:00', '19:00 - 00:00', '19:00 - 00:00', '19:00 - 01:00', '19:00 - 01:00', '19:00 - 00:00', NULL, NULL, 'https://www.instagram.com/ariponeuquen/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Bv.+25+de+Mayo+84,+Q8300+Neuqu%C3%A9n/@-38.952397,-68.0600967,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x960a33d195b8ba99:0x6ec23f36335654b5!2m2!1d-68.057908!2d-38.952397', '-68.057862', '-38.952401'),
(87, 'ARG00087', 'Hot Dog Neuqué', 'Argentina', 'Neuquen', 'Capital', NULL, NULL, NULL, 'Comida venezolana', '', 'Perro caliente,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Disponibles', NULL, NULL, '5492996318697', 'https://www.instagram.com/hotdogneuquen/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Parque+Central,+Neuqu%C3%A9n,+Neuquen/@-38.95656,-68.1288603,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x960a331a1a702803:0xbf4004bd9ea32217!2m2!1d-68.0588197!2d-38.9565809', '-68.061461', '-38.955438'),
(88, 'ARG00088', 'Cacao Pasteleria y Café', 'Argentina', 'Neuquen', 'Capital', 'Alderete ', '59', NULL, 'Postres venezolanos', 'panaderia', 'Torta, Tequeño', 'Pan Jamon', NULL, NULL, '08:00 - 13:00 / 16:00 - 21:00', '08:00 - 13:00 / 16:00 - 21:00', '08:00 - 13:00 / 16:00 - 21:00', '08:00 - 13:00 / 16:00 - 21:00', '08:00 - 13:00 / 16:00 - 21:00', '09:00 - 12:00 / 16:00 - 21:00', '08:00 - 12:00', NULL, '5492994640991', 'https://www.instagram.com/cacaoneuquen/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Alderete+59,+Neuquen/@-38.9509118,-68.0624524,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x960a33d04a5c274b:0xbe577297e5825a21!2m2!1d-68.058075!2d-38.9509119', ' -68.058082', '-38.950878'),
(89, 'ARG00089', 'Barbería Espacio Latino ', 'Argentina', 'Neuquen', 'Capital', 'San Martín ', '732', NULL, 'Barbería', 'servicio', 'Corte y Barba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/barberia_espaciolatino/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//San+Mart%C3%ADn+724,+Q8300+Neuqu%C3%A9n/@-38.9554662,-68.0704509,17.42z/data=!4m8!4m7!1m0!1m5!1m1!1s0x960a33c991b1b921:0xb61d6c0ad7a14a0c!2m2!1d-68.0695798!2d-38.955106', '-68.069658', '-38.954975'),
(90, 'ARG00090', 'El Punto d\' Encuentro\"', 'Argentina', 'Neuquen', NULL, 'Av. Cnel. Olascoaga', '2109', NULL, 'Comida típica venezolana', 'restaurante', 'Chicha, Tequeño, Pastelito', NULL, 'delivery propio', NULL, NULL, 'Desde las 19:00 ', 'Desde las 19:00 ', 'Desde las 19:00 ', 'Desde las 19:00 ', 'Desde las 19:00 ', 'Desde las 17:00 ', NULL, '542996235353', 'https://www.instagram.com/elpunto_d_encuentro', NULL, NULL, 'home.encuentro@gmail.com', NULL, '-68.059605', '-38.977418'),
(91, 'ARG00091', 'Venezuela Market', 'Argentina', 'Buenos Aires', 'Paternal', 'Av. San Martín', '2485', NULL, 'Productos venezolanos', 'local', 'Harina, Queso, Onoto', NULL, 'delivery propio', NULL, '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 22:00', NULL, '5491166171733', NULL, 'https://www.instagram.com/venezuelamarket.isa', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Galer%C3%ADa+Libertador,+Av.+San+Mart%C3%ADn+2485,+C1416CRM+CABA/@-34.605487,-58.4601634,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca01ced00123:0x566ec7e29012bae3!2m2!1d-58.4620939!2d-34.6034034', '-58.462066', '-34.603382'),
(92, 'ARG00092', 'Cacao’s Market', 'Argentina', 'Buenos Aires', 'Palermo', 'Bonpland', '1708', NULL, 'Antojitos venezolanos ', 'local', 'Harina, Platano, Adobo', NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 21:00', NULL, '5491126454693', NULL, 'https://www.instagram.com/marketcacaos', NULL, NULL, 'cacaosmarket.ar@gmail.com', 'https://www.google.com/maps/dir//Bonpland+1708,+C1414CMV+CABA/@-34.5880907,-58.4420151,14.21z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb5927dbfb3e9:0x784773b616c9c48a!2m2!1d-58.437215!2d-34.583151', '-58.437266', '-34.583148'),
(93, 'ARG00093', 'Maracaymarket', 'Argentina', 'Buenos Aires', 'Caballito', 'Av. Gaona ', '1565', NULL, 'Productos venezolanos', 'local', 'Harina, Queso', 'Harina, Hoja para Hallaca, Onoto, Aceitunas, Alcaparras, Pabilo', NULL, NULL, '10:00 - 14:00 / 15:00 - 20:30', '10:00 - 14:00 / 15:00 - 20:30', '10:00 - 14:00 / 15:00 - 20:30', '10:00 - 14:00 / 15:00 - 20:30', '10:00 - 14:00 / 15:00 - 20:30', '10:00 - 16:00', NULL, '5491130675675', NULL, 'https://www.instagram.com/maracaymarket_', NULL, NULL, 'maracaymarket_@hotmail.com', 'https://www.google.com/maps/dir//Av.+Gaona+1565,+C1416DRD+CABA/@-34.6034524,-58.4637146,14.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca106195e465:0xbc98388f0157ea1f!2m2!1d-58.4507652!2d-34.6096328', '-58.450774', '-34.609692'),
(94, 'ARG00094', 'Ponchitos', 'Argentina', 'Buenos Aires', 'Retiro', 'Cerrito', '1060', '39', 'Productos venezolanos', 'local', 'Ponche crema', 'Ponche Crema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491156136407', NULL, 'https://www.instagram.com/ponchitos.ve/', NULL, NULL, 'ponchitos.ve@gmail.com', 'https://www.google.com/maps/dir//Cerrito+1060,+C1010AAV+CABA/@-34.5960333,-58.3873435,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccab786fa895b:0xa4d7686c9716fad6!2m2!1d-58.3829661!2d-34.5960334', '-58.382839', '-34.595867'),
(95, 'ARG00095', 'El Kioskito Repostería', 'Argentina', 'Buenos Aires', 'Belgrano', 'Vuelta de Obligado', '2613', NULL, 'Repostería', 'local', 'Tortas, Postres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491147856608', NULL, 'https://www.instagram.com/elkioskitoreposteria', NULL, NULL, 'elkioskitoreposteria@gmail.com', 'https://www.google.com/maps/dir//Vuelta+de+Obligado+2613,+Buenos+Aires/@-34.5565675,-58.464164,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb42bb69d7b75:0xac7e42f5177c9aa!2m2!1d-58.4597866!2d-34.5565676', ' -58.459674', '-34.556605'),
(96, 'ARG00096', 'Kanache ', 'Argentina', 'Buenos Aires', 'Recoleta', 'Av. Santa Fe ', '2450', '50', 'Resto Bar', 'restaurante', 'Arepa, Empanada, Tequeño', 'Pan de Jamon', 'glovo', NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', NULL, '549111568362122', NULL, 'https://www.instagram.com/kanacherestaurant/', NULL, NULL, 'elsabortricolorba@gmail.com', 'https://www.google.com/maps/dir//Av.+Santa+Fe+2450,+C1122AAT+CABA/@-34.5953349,-58.4065753,15.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca90eb5ab12f:0x7e3ef2b234b76286!2m2!1d-58.4018701!2d-34.5947232', '-58.401861', '-34.594714'),
(97, 'ARG00097', 'Globo Decoraciones', 'Argentina', 'Buenos Aires', 'San Nicolas', 'Florida', '670', '21', 'Decoraciones personalizadas de globos para cualquier ocasión', 'local', 'Globos, Decoración', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '549111526062458', '5491126062458', 'https://www.instagram.com/globodecoraciones/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Florida+670,+C1005+AAN,+Buenos+Aires/@-34.6004972,-58.4305697,13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccacb8e631323:0x7c191833daf189d1!2m2!1d-58.37556!2d-34.6002329', '-58.375608', '-34.600247'),
(98, 'ARG00098', 'Los Chamos SB', 'Argentina', 'Buenos Aires', 'La Plata', 'Calle 63', '1403', NULL, 'Productos venezolanos', 'local', 'Harina, Queso, Cerveza', 'Hoja para Hallaca', NULL, NULL, '09:00 - 13:00 / 16:30 - 20:00', '09:00 - 13:00 / 16:30 - 20:00', '09:00 - 13:00 / 16:30 - 20:00', '09:00 - 13:00 / 16:30 - 20:00', '09:00 - 13:00 / 16:30 - 20:00', '09:00 - 13:00 / 16:30 - 20:00', '09:00 - 14:00', '542216740197', '542216740197', 'https://www.instagram.com/kiosko_loschamossb/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Calle+63+1403,+B1904ALI+La+Plata,+Buenos+Aires/@-34.9281628,-57.9670171,13.79z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95a2e885c7aad7ef:0xeee7f69a357d741d!2m2!1d-57.9547852!2d-34.9384491', '-57.954748', '-34.93842'),
(99, 'ARG00099', 'Bistro Caribe', 'Argentina', 'Buenos Aires', 'Balvanera', 'Av Córdoba', '2808', NULL, 'Arepas, Cachapas, Crepes, Cafe y más', 'restaurante', 'Arepa, Cachapa', NULL, NULL, NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', '12:00 - 00:00', '+5491127005546', '5491127005546', 'https://www.instagram.com/bistrocaribe/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Bistro+Caribe,+Av.+C%C3%B3rdoba+2808,+1187+CABA/@-34.5982102,-58.4069224,18z/data=!4m16!1m6!3m5!1s0x95bccb7b572c7ce1:0x1a5f0874afa1e0b6!2sBistro+Caribe!8m2!3d-34.5982433!4d-58.406846!4m8!1m0!1m5!1m1!1s0x95bccb7b572c7c', '-58.406787', '-34.598199'),
(100, 'ARG00100', 'RICO\'S', 'Argentina', 'Buenos Aires', 'La Plata', 'Calle 43', '479', NULL, 'Productos y comida venezolana', 'local', 'Tequeño, Pastelito', NULL, NULL, NULL, '18:00 - 22:30', '18:00 - 22:30', '18:00 - 22:30', '18:00 - 22:30', '18:00 - 22:30', '09:00 - 14:00  / 18:00 - 22:30', '09:00 - 14:00  / 18:00 - 22:30', NULL, '542216758544', 'https://www.instagram.com/ricos.lp', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Calle+43+479,+B1902ADS+La+Plata,+Buenos+Aires/@-34.9311736,-57.9887247,12.54z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95a2e64908ca6935:0x272c7c5eb30ee1ac!2m2!1d-57.9539928!2d-34.9074541', '-57.953986', '-34.90744'),
(101, 'ARG00101', 'Pa\' Maracaibo', 'Argentina', 'Buenos Aires', 'Pilar', 'Hipolito Yrigoyen ', '253', NULL, 'Productos venezolanos', 'local', 'Harina, Malta, Queso, ', 'Hojas para Hallaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491121934717', NULL, 'https://www.instagram.com/pa.maracaibo/', NULL, NULL, 'pamaracaiboarg@gmail.com', 'https://www.google.com/maps/dir//Hip%C3%B3lito+Yrigoyen+253,+Pilar+Centro,+Buenos+Aires/@-34.5088739,-58.8373965,11z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bc9cc552ee541b:0x3d840e529bfd756c!2m2!1d-58.9085726!2d-34.4577716', '-58.908589', '-34.457774'),
(102, 'ARG00102', 'Chevre', 'Argentina', 'Buenos Aires', 'San Nicolas', 'Carlos Calvo ', '1780', NULL, 'Productos venezolanos', 'local', 'Harina, Adobo, Onoto', 'Hoja para Hallaca, Harina, Hallaca', NULL, NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '10:00 - 18:00', NULL, NULL, 'https://www.instagram.com/chevre.arg/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Carlos+Calvo+1784,+C1102ABJ+CABA/@-34.6153931,-58.422718,14z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccadf7e6aac57:0x404d0e1c8370e3ff!2m2!1d-58.391248!2d-34.6203173', '-58.391299', '-34.620332'),
(103, 'ARG00103', 'La Chevere.ar', 'Argentina', 'Buenos Aires', 'Palermo', 'Av. Dorrego', '1551', NULL, 'Comida venezolana', 'restaurante', 'Arepas, Hamburguesas', 'Pan de Jamon, Ponche Crema', NULL, NULL, NULL, '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '16:00 - 23:00', '0111521854432', '5491123437135', 'https://www.instagram.com/lachevere.ar/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Av.+Dorrego+1551,+C1414+CKK,+Buenos+Aires/@-34.5869135,-58.4518894,14.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb5edb89c87fd:0x355ccf5d6d997189!2m2!1d-58.444427!2d-34.583954', '-58.444422', '-34.583846'),
(104, 'ARG00104', 'Insla Margarita', 'Argentina', 'Buenos Aires', 'Pilar', 'Rivadavia ', '460', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Tequeño, Patacon', NULL, NULL, NULL, NULL, '09:00 - 15:00 / 18:00 - 20:30', '09:00 - 15:00 / 18:00 - 20:30', '09:00 - 15:00 / 18:00 - 20:30', '09:00 - 15:00 / 18:00 - 20:30', '11:00 -  21:30', NULL, '01122530996', NULL, 'https://www.instagram.com/islamargaritav/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Rivadavia+460,+B1625GMJ+Bel%C3%A9n+de+Escobar,+Buenos+Aires/@-34.3611263,-58.8184207,12.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bb61ba1d3837f1:0xccdff9bd5f97c38c!2m2!1d-58.7953694!2d-34.3505401', '-58.795502', '-34.350438'),
(105, 'ARG00105', 'Marauchos Son', 'Argentina', 'Buenos Aires', 'Quilmes', 'Av. Mitre ', '747', NULL, 'Comida Venezolana', '', 'Pastelitos, Empanadas, Tequeños', NULL, NULL, NULL, '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 00:00', '10:00 - 00:00', NULL, '5491128720501', NULL, 'https://www.instagram.com/maracuchos_son/', NULL, NULL, 'danielaoli840@gmail.com', 'https://www.google.com/maps/dir//Avenida+Mitre+747,+Quilmes,+Buenos+Aires+Province/@-34.7260165,-58.2607718,14.33z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95a32e413cbd3f7f:0x6c933d9b69ebc1f2!2m2!1d-58.2530757!2d-34.7228184', '-58.253074', '-34.722938'),
(106, 'ARG00106', 'Budare Food-Bar', 'Argentina', 'Buenos Aires', 'Balvanera', 'Alberti ', '48', NULL, 'Comida Maracucha', 'restaurante', 'Mandocas, Arepas, Tequeños', NULL, NULL, NULL, NULL, '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', NULL, '5491133545567', 'https://www.instagram.com/budarefood.bar/', NULL, NULL, 'budarefood.bar@gmail.com', 'https://www.google.com/maps/dir//Alberti+48,+C1082AAB+CABA/@-34.6110967,-58.4106212,14.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccaeee0aa02d3:0x3df67816523c8b2a!2m2!1d-58.4016457!2d-34.6104182', ' -58.401631', '-34.610473'),
(107, 'ARG00107', 'Carpacciando ', 'Argentina', 'Buenos Aires', 'Palermo ', 'Gascón ', '1209', NULL, 'Productos venezolanos', 'local', 'Harina, Queso, Papelon', 'Hallaca, ', 'delivery propio', NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', NULL, NULL, '5491141995734', 'https://www.instagram.com/carpacciando.ar/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Gasc%C3%B3n+1209,+C1181ACW+CABA/@-34.6005588,-58.4381034,13.46z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcca7b883481b7:0x413aa7679cd2e5e8!2m2!1d-58.4230371!2d-34.5961677', '-58.422933', '-34.596132'),
(108, 'ARG00108', 'Menteanierta Tattoo ', 'Argentina', 'Buenos Aires', 'Palermo', 'Uriarte', ' 2323', NULL, 'Estudio privado de Tattoo, piercings, henna', '', 'Tattoo', NULL, NULL, NULL, NULL, '14:00 - 21:00', '14:00 - 21:00', '14:00 - 21:00', '14:00 - 21:00', '14:00 - 21:00', '14:00 - 21:00', NULL, '5491123818933', 'https://www.instagram.com/menteabierta.tattoo.arg/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Uriarte+2323,+C1425+FNG,+Buenos+Aires/@-34.5866438,-58.4284365,14.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb5848bf4bd23:0x77b51f77496cd447!2m2!1d-58.4245001!2d-34.5821945', ' -58.42436', '-34.582124'),
(109, 'ARG00109', 'Caracas Food & Burguer', 'Argentina', 'Buenos Aires', 'Caseros', 'Av. Bartolomá Mitre', '4865', NULL, 'Comida rápida', 'restaurante', 'Hamburguesa, Pepito', NULL, NULL, NULL, '11:30 - 21:30', '11:30 - 21:30', '11:30 - 21:30', '11:30 - 21:30', '11:30 - 01:30', '11:30 - 01:30', '13:00 - 21:00', '+549115896237', '5491158962379', 'https://www.instagram.com/caracasfoodburguer/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Av.+Bartolom%C3%A9+Mitre+4865,+B1678AVG+Caseros,+Buenos+Aires/@-34.5961379,-58.5679929,12.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb822aee06b15:0x5f7ed2e068297499!2m2!1d-58.5652803!2d-34.60986', '-58.565176', '-34.609838'),
(110, 'ARG00110', 'Cerecitas Cakes', 'Argentina', 'Buenos Aires', 'Pilar', 'Pedro Lagrave', ' 711', NULL, 'Tortas y Postres', 'panaderia', 'Tortas, Postres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491121625523', 'https://www.instagram.com/cerecitascakes/', NULL, NULL, 'cerecitascakes@gmail.com', 'https://www.google.com.ar/maps/dir//Pedro+Lagrave+711,+B1629HGO+Pilar+Centro,+Buenos+Aires/@-34.4577611,-58.917888,15.96z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bc9cd3d545d1ef:0xf7c7032241df0819!2m2!1d-58.9149627!2d-34.4569087', ' -58.915021', '-34.456836'),
(111, 'ARG00111', 'Gian Cakes', 'Argentina', 'Buenos Aires', 'San Nicolas', 'Bartolome Mitro ', '1444', NULL, 'Tortas y Postres', 'local', 'Tortas', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491123828011', 'https://www.instagram.com/gian_cakes/', NULL, NULL, 'giancake1@gmail.com', 'https://www.google.com.ar/maps/dir//Bartolom%C3%A9+Mitre+1444,+C1015+CABA/@-34.6071586,-58.4060855,14.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccac4c3df1fb7:0xf25d5109d3a15463!2m2!1d-58.3869776!2d-34.6079316', '-58.386916', '-34.607965'),
(112, 'ARG00112', 'Zulia Pa\' Llevar', 'Argentina', 'Buenos Aires', 'Recoleta', 'Peña', '2611', NULL, 'Productos con sabor zuliano en Buenos Aires', 'local', 'Harina, Tequeño, Queso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491170459429', '5491170459429', 'https://www.instagram.com/zuliapallevar/', 'https://www.facebook.com/zuliapallevar/', NULL, NULL, 'https://www.google.com/maps/dir//Zulia+Pa\'+Llevar,+Pe%C3%B1a+2611,+Buenos+Aires/@-34.5887844,-58.4046148,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bccbc906eac1a1:0x1bdb5c4018f9bc31!2m2!1d-58.400967!2d-34.5882766', '-58.400956', '-34.588299'),
(114, 'ARG00113', 'Miss Fritas', 'Argentina', 'Buenos Aires', 'Villa Ballester', 'Córdoba', '4571', NULL, 'Papas fritas y arepas venezolanas', 'restaurante', 'Papas Fritas, Arepas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/missfritas/', 'https://www.facebook.com/missfritas-100968491335513/', NULL, NULL, 'https://www.google.com/maps/dir//Miss+Fritas,+C%C3%B3rdoba+4571,+B1653+Villa+Ballester,+Buenos+Aires/@-34.550819,-58.5547863,17z/data=!4m16!1m6!3m5!1s0x95bcb7c93eb841d5:0x76ef2797ebf692ca!2sMiss+Fritas!8m2!3d-34.550819!4d-58.5525976!4m8!1m0!1m5!1m1!1', '-58.552560', '-34.550782'),
(115, 'ARG00114', 'Idania Vivas Studio', 'Argentina', 'Buenos Aires', 'Belgrano', 'Av. Cabildo', '2040', NULL, 'Peluquería UNISEX', 'servicio', 'Peluqueria, Barberia', NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', NULL, '+5491140306538', '5491140306538', 'https://www.instagram.com/idania_vivas_studio/', 'https://www.facebook.com/idaniavivasstudio/', NULL, 'idaniavivas.ar@gmail.com', 'https://www.google.com/maps/dir//Av.+Cabildo+2040,+C1426BJO+CABA/@-34.5627405,-58.4570038,19z/data=!4m17!1m7!3m6!1s0x95bcb5d3937931f7:0x6f0754e7b07ca4a2!2sAv.+Cabildo+2040,+C1426BJO+CABA!3b1!8m2!3d-34.5627416!4d-58.4564553!4m8!1m0!1m5!1m1!1s0x95bcb5d', '-58.456498', '-34.562764'),
(116, 'ARG00115', 'Ché-vere Store', 'Argentina', 'Buenos Aires', 'Palermo', 'Av. Santa Fe', '3535', '73', 'Productos venezolanos', 'local', 'Harina, Adobo, Pirulin', NULL, NULL, NULL, '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', NULL, NULL, NULL, 'https://www.instagram.com/che_vere.store/', 'https://www.facebook.com/che.vere.store1/', NULL, 'chevere.store@gmail.com', 'https://www.google.com/maps/dir//Av.+Santa+Fe+3535,+C1425BGX+CABA/@-34.5860443,-58.4148942,19z/data=!4m17!1m7!3m6!1s0x95bcb57e337ac48f:0x805965ffbc747bc0!2sAv.+Santa+Fe+3535,+C1425BGX+CABA!3b1!8m2!3d-34.5860443!4d-58.4143457!4m8!1m0!1m5!1m1!1s0x95bcb', '-58.414359', '-34.586054'),
(117, 'ARG00116', 'Fanatic Barber ', 'Argentina', 'Buenos Aires', NULL, NULL, NULL, NULL, 'Barbería', 'local', 'Corte, Secado, Pintado', NULL, NULL, NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '5491138613741', NULL, 'https://www.instagram.com/fanaticbarber/', 'https://www.facebook.com/Fanatic-Barber-714981218961912/', NULL, 'fanaticbarber@gmail.com', 'https://www.google.com/maps/dir//Av.+Pueyrred%C3%B3n+873,+C1032ABI+CABA/@-34.5991595,-58.4058579,16.29z/data=!4m9!4m8!1m0!1m5!1m1!1s0x95bcca923f5e5a2d:0x82021b30356b5bb8!2m2!1d-58.404219!2d-34.6002257!3e3', '-58.404201', '-34.600211'),
(118, 'ARG00117', 'Joropo Fast Food', 'Argentina', 'Buenos Aires', 'Retiro', 'Uruguay', '945', NULL, 'Comida venezolanas', 'restaurante', 'Arepa, Hamburguesa, Empanada', NULL, NULL, NULL, '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', NULL, '9541127843056', NULL, 'https://www.instagram.com/joropofastfood/', 'https://www.facebook.com/Joropo-Fast-Food-104284937704678/', '', 'joropofastfood@gmail.com', 'https://www.google.com/maps/dir//Uruguay+945,+C1015ABS+CABA/@-34.6010395,-58.3860586,16z/data=!4m17!1m7!3m6!1s0x95bccab8934a2361:0x6c9b443fd50a4b31!2sUruguay+945,+C1015ABS+CABA!3b1!8m2!3d-34.597778!4d-58.38694!4m8!1m0!1m5!1m1!1s0x95bccab8934a2361:0x6', '-58.386939', '-34.597773'),
(119, 'ARG00118', 'Suship', 'Argentina', 'Buenos Aires', 'Almagro', 'Rio de Janeiro', '931', NULL, 'Local de sushi al estilo venezolano', 'restaurante', 'Sushi,', NULL, NULL, NULL, 'Cerrado', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '18:30 - 23:30', '18:30 - 23:30', '18:30 - 23:30', '+5491133425447', '5491133425447', 'https://www.instagram.com/suship.bsas/', 'https://www.facebook.com/Suship-108460839864100/', NULL, NULL, 'https://www.google.com/maps/dir//SUSHIP,+R%C3%ADo+de+Janeiro+931,+C1405CCO,+C1405+CCO,+Buenos+Aires/@-34.6046248,-58.4338651,17z/data=!4m16!1m6!3m5!1s0x95bccb1fb2990d67:0x890fe07e1676365!2sSUSHIP!8m2!3d-34.6046292!4d-58.4316711!4m8!1m0!1m5!1m1!1s0x95', '-58.431663', '-34.604639'),
(120, 'ARG00119', 'Degusta Express', 'Argentina', 'Buenos Aires', 'Villa Crespo ', 'Juan R Velasco ', '974', NULL, 'Productos Venezolanos', 'local', 'Harina, Queso, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491156478024', NULL, 'https://www.instagram.com/dgusta.express/', NULL, '', 'dgustaexpress@gmail.com', 'https://www.google.com/maps/dir//Degusta+Express,+Juan+Ramirez+de+Velasco+974,+C1414+CABA/@-34.5925668,-58.4405544,17.21z/data=!4m16!1m6!3m5!1s0x95bcb5d9703014a1:0xab373dcf9c7ba2f3!2sDegusta+Express!8m2!3d-34.5942866!4d-58.4407673!4m8!1m0!1m5!1m1!1s0', '-58.440735', '-34.594256'),
(121, 'ARG00120', 'Optimus Vision', 'Argentina', 'Buenos Aires', 'Palermo', 'Av. Sante Fé ', '2270', NULL, 'Óptica', 'servicio', 'Lente, Vista', NULL, NULL, NULL, '09:30 - 20:00', '09:30 - 20:00', '09:30 - 20:00', '09:30 - 20:00', '09:30 - 20:00', '10:00 - 20:00', NULL, '5491149162173', NULL, 'https://www.instagram.com/jornadaoptica/', NULL, '', 'info@optimusvision.com', 'https://www.google.com/maps/dir//Av.+Santa+Fe+2270,+C1123+AAR,+Buenos+Aires/@-34.5949478,-58.3982462,16.25z/data=!4m17!1m7!3m6!1s0x95bcca96d9829373:0x851915c2eb258c49!2sAv.+Santa+Fe+2270,+C1123+AAR,+Buenos+Aires!3b1!8m2!3d-34.595374!4d-58.39933!4m8!1', '-58.399320', '-34.595354'),
(122, 'ARG00121', 'Harmonie Spa & Belleza', 'Argentina', 'Buenos Aires', 'Recoleta', 'Av. Santa Fe ', '2653', NULL, 'Spa & Belleza', 'servicio', 'Manicura, Extinciones, Lifting  ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491165143998?', NULL, 'https://www.instagram.com/spa.harmonie/', 'https://www.facebook.com/harmoniespaybelleza/?ref=py_c', '', 'infoharmoniespa@gmail.com', 'https://www.google.com/maps/dir//Av.+Santa+Fe+2653,+C1425+BGB,+Buenos+Aires/@-34.5917693,-58.4043061,16.71z/data=!4m17!1m7!3m6!1s0x95bcca9a9923c691:0x7762f6540b46ae56!2sAv.+Santa+Fe+2653,+C1425+BGB,+Buenos+Aires!3b1!8m2!3d-34.5936266!4d-58.404266!4m8', '-58.404272', '-34.593637'),
(123, 'ARG00122', 'La Vaina', 'Argentina', 'Cordoba', 'Jardín', 'Bv. De la industria', '879', NULL, 'Comida venezolana ', 'restaurante', 'Arepa, Empanada, Tequeño', NULL, NULL, NULL, '11:00 - 16:00 / 19:00 - 00:00', '11:00 - 16:00 / 19:00 - 00:00', '11:00 - 16:00 / 19:00 - 00:00', '11:00 - 16:00 / 19:00 - 00:00', '11:00 - 16:00 / 19:00 - 00:00', '11:00 - 16:00 / 19:00 - 00:00', '11:00 - 16:00 / 19:00 - 00:00', '54903515593662', NULL, 'https://www.instagram.com/lavainacba/', 'https://www.facebook.com/lavainacba', '', 'lavainacba@gmail.com', 'https://www.google.com/maps/place/La+Vainacba/@-31.4433537,-64.1815344,16z/data=!4m5!3m4!1s0x9432a3a9526182b9:0x9cbdd50e5c86150b!8m2!3d-31.4426329!4d-64.1830965', '-64.183108', '-31.442658'),
(124, 'ARG00123', 'Allegro Gelato Boutique ', 'Argentina', 'Buenos Aires', 'Parque Chas', 'Av. De Los Incas', '4595', NULL, 'Helados Artesanales', 'restaurante', 'Helado, Chucheria', NULL, NULL, NULL, '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 01:00', '12:00 - 01:00', '12:00 - 01:00', NULL, '5491127115915', 'https://www.instagram.com/allegrohelado/', NULL, NULL, 'allegrohelado@gmail.com', 'https://www.google.com/maps/place/Allegro+Gelato+Boutique/@-34.5759305,-58.4835302,14.96z/data=!4m5!3m4!1s0x95bcb66d9e6c4067:0x1daa7cfbaa3f5215!8m2!3d-34.5819878!4d-58.4755502', '-58.475730', '-34.581840'),
(125, 'ARG00124', 'Pancho Chas', 'Argentina', 'Buenos Aires', 'Parque Chas', 'Av. De Los Incas', '4595', NULL, 'Perro caliente venezolano', 'restaurante', 'Perro Caliente, Chucheria, Producto', NULL, NULL, NULL, '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 01:00', '12:00 - 01:00', '12:00 - 01:00', NULL, '5491127115915', 'https://www.instagram.com/pancho.chas/', NULL, NULL, 'panchoschas@gmail.com', 'https://www.google.com/maps/dir//Av.+de+los+Incas+4599,+C1427DNK+CABA/@-34.5813897,-58.475594,18.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x95bcb66d9e6c4067:0x79ba95b215a7aa87!2m2!1d-58.4755499!2d-34.5819879', '-58.475495', '-34.582031'),
(126, 'ARG00125', 'The Urban Deli', 'Argentina', 'Buenos Aires', 'Palermo', 'Niceto Vega', '4984', NULL, 'Comida venezolana', 'restaurante', 'Hamburguesa, Tequeño, Pepito ', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491140906898', NULL, 'https://www.instagram.com/theurbandeli19/', NULL, NULL, 'theurbandeli19@gmail.com', 'https://www.google.com/maps/dir//Av.+Cnel.+Niceto+Vega+4984,+C1414+BEH,+Buenos+Aires/@-34.5882388,-58.4342794,16.04z/data=!4m17!1m7!3m6!1s0x95bcb58994bac10d:0x248f9249e98c1a6f!2sAv.+Cnel.+Niceto+Vega+4984,+C1414+BEH,+Buenos+Aires!3b1!8m2!3d-34.591096', '-58.433280', '-34.591063'),
(127, 'ARG00126', 'Tequeboss', 'Argentina', 'Buenos Aires', 'Palermo', 'Humbolt ', '2474', NULL, 'Venta de tequeños', 'restaurante', 'Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5901162000790', NULL, 'https://www.instagram.com/tequeboss.ar/', NULL, NULL, 'tequeboss@gmail.com', 'https://www.google.com/maps/dir//Humboldt+2474,+C1425+FUH,+Buenos+Aires/@-34.5772217,-58.4298281,16.38z/data=!4m17!1m7!3m6!1s0x95bcb59a62f911c9:0xaf3df321e09a0a16!2sHumboldt+2474,+C1425+FUH,+Buenos+Aires!3b1!8m2!3d-34.5782641!4d-58.4279662!4m8!1m0!1m', '-58.427898', '-34.578244'),
(128, 'ARG00127', 'Pasapalo ', 'Argentina', 'Buenos Aires', 'Palermo', 'Mario Bravo ', '1298', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', NULL, NULL, NULL, '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '10:00 - 14:00', NULL, '5491123221730', NULL, 'https://www.instagram.com/pasapalopalermo/', NULL, NULL, 'pasapalopalermo@gmail.com', 'https://www.google.com/maps/dir//Pasapalo,+Mario+Bravo+1298,+C1175+ABX,+Buenos+Aires/@-34.5934106,-58.415221,17.25z/data=!4m16!1m6!3m5!1s0x95bccb0754028e8f:0x17bc1876136314e3!2sPasapalo!8m2!3d-34.5946012!4d-58.414605!4m8!1m0!1m5!1m1!1s0x95bccb0754028', '-58.414595', '-34.594598'),
(129, 'ARG00128', 'Dulces & Tintos (Villa Urquiza)', 'Argentina', 'Buenos Aires', 'Villa Urquiza', 'La Pampa ', '4856', NULL, 'Productos Venezolanos', 'local', NULL, NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', NULL, '5491123860980', 'https://www.instagram.com/dulcesytintos/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Dulces+y+tintos,+La+Pampa+4856,+C1431+CQH,+Buenos+Aires/@-34.5781703,-58.4782815,17.5z/data=!4m16!1m6!3m5!1s0x95bcb723e1ae5331:0xc541672502047173!2sDulces+y+tintos!8m2!3d-34.5783976!4d-58.477531!4m8!1m0!1m5!1m1!1s0x95', '-58.477522', '-34.578390');



CREATE TABLE `BUSCATUAREPA_CHL` (
  `ID` int(11) NOT NULL,
  `COD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'Chile',
  `CIUDAD` enum('Santiago','Valparaiso','Llanquihue') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CALLE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ALTURA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LOCAL` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('restaurante','local','discoteca','servicio','panaderia') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('delivery propio','glovo','masdelivery','pedidos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RUTA_GOOGLE` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `X` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Y` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `BUSCATUAREPA_CHL` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `CALLE`, `ALTURA`, `LOCAL`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`, `RUTA_GOOGLE`, `X`, `Y`) VALUES
(1, 'CHL00001', 'Bienmesabe', 'Chile', 'Santiago', 'Centro', 'San Francisco', '363', NULL, 'Comida Venezolana', 'restaurante', 'Cachito, Golfeado, Pan', 'Pan de Jamon', NULL, NULL, '07:30 - 21:30', '07:30 - 21:30', '07:30 - 21:30', '07:30 - 21:30', '07:30 - 21:30', '09:00 - 20:30', '09:00 - 20:30', '56227950606', '56227950606', 'https://www.instagram.com/bienmesabe.cl/', 'http://bienmesabe.cl/bmswp/', 'https://bienmesabe.cl/bmswp/', NULL, 'https://www.google.com/maps/dir//Bienmesabe+-+San+Francisco+363,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.449023,-70.6473337,18.75z/data=!4m16!1m6!3m5!1s0x9662c50b6a979cd3:0x2b515ed3ce7b541e!2sBienmesabe!8m2!3d-33.4494515!4d-70.6471712!4m8!1m0', '-70.6471', '-33.449504'),
(2, 'CHL00002', 'Cachapas Don 70', 'Chile', 'Santiago', 'Centro', 'San Isidro', '401', NULL, 'Comida Venezolana', 'restaurante', 'Cachapa, Arepa, Patacon', 'Hallaca, Plata Navideño', '', NULL, '10:00 - 22:30', '10:00 - 22:30', '10:00 - 22:30', '10:00 - 22:30', '12:00 - 00:00', '13:00 - 00:00', '13:00 - 00:30', '56986886217', '56986886217', 'https://www.instagram.com/cachapasdon70/', 'https://www.facebook.com/Cachapas-Don-70-1440668392644611/', 'https://cachapasdon70.cl/', 'cachapasdon70@gmail.com', 'https://www.google.com/maps/dir//Bellavista+22,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4347958,-70.6359154,18.25z/data=!4m17!1m7!3m6!1s0x9662c59ae65b4e09:0x59320394f5f5f112!2sBellavista+22,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile!3b', '-70.643511', '-33.449011'),
(3, 'CHL00003', 'Canaima Burger', 'Chile', 'Santiago', 'San Isidro', 'Tarapacá', '880', NULL, 'Comida rápida', 'restaurante', 'Arepas, Hamburguesas', NULL, '', NULL, '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 23:00', '5622681014', NULL, 'https://www.instagram.com/canaimaburger/', 'https://www.facebook.com/Canaimaburger/', NULL, 'canaimaburger@gmail.com', 'https://www.google.com/maps/dir//Tarapac%C3%A1+880,+Santiago,+Chile/@-33.4475181,-70.6555908,15.5z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c50a5f6198e9:0x2668e43166b3ad9b!2m2!1d-70.6484569!2d-33.4471156!3e3', ' -70.648436', '-33.447087'),
(4, 'CHL00004', 'Canaima Gourmet', 'Chile', 'Santiago', 'Providencia', 'Av Italia', '1308', NULL, 'Comida Venezolana', 'restaurante', 'Arepas, Tequeños, Hamburguesa', NULL, NULL, NULL, 'Cerrado', '10:30 - 21:00', '10:30 - 21:00', '10:30 - 21:00', '10:30 - 21:00', '10:30 - 21:30', '10:30 - 21:30', '56232802793', '56232802793', 'https://www.instagram.com/canaimagourmetcl/', 'https://www.facebook.com/canaimagourmetcl/', NULL, NULL, 'https://www.google.com/maps/dir//Av.+Italia+1308,+Providencia,+Chile/@-33.444295,-70.6261653,17.04z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c57e86f6980f:0xf7ca474ed8a54ad4!2m2!1d-70.6249066!2d-33.4466275!3e3', ' -70.624768', '-33.447122'),
(5, 'CHL00005', 'Canton House', 'Chile', 'Santiago', 'Centro', 'San Antonio', '431', NULL, 'Comida China Venezolana', 'restaurante', 'Arroz Chino, Lumpia, Costillita', NULL, NULL, NULL, '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', NULL, NULL, 'https://www.instagram.com/cantonhouse.cl/', 'https://www.facebook.com/Canton-House-329998214300841/', NULL, NULL, 'https://www.google.com/maps/dir//San+Antonio+431,+Santiago,+Chile/@-33.4365222,-70.6505292,16z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c5a253469ff1:0x6f737005d64af7ef!2m2!1d-70.6483834!2d-33.4378294!3e3', '-70.648296', '-33.437839'),
(6, 'CHL00006', 'Chicha Los Guaros (Calle San Diego)', 'Chile', 'Santiago', 'Centro', 'San Diego', '291', NULL, 'Postre', 'restaurante', 'Chicha Venezolana', NULL, NULL, NULL, '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '56940582848', '56940582848', 'https://www.instagram.com/chichavenezolanalosguaros/', 'https://www.facebook.com/chichavenezolanalosguaros/', NULL, NULL, 'https://www.google.com/maps/dir//San+Diego+291,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4491077,-70.6530591,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c50bd100ebb9:0xa814c38c86e1e7ee!2m2!1d-70.6508704!2d-33.4491077', '-70.6508741', '-33.4492991'),
(7, 'CHL00007', 'Chicha Los Guaros (Calle San Isidro)', 'Chile', 'Santiago', 'Centro', 'San Isidro', '263', NULL, 'Postre', 'restaurante', 'Chicha Venezolana', NULL, NULL, NULL, '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '56940582848', '56940582848', 'https://www.instagram.com/chichavenezolanalosguaros/', 'https://www.facebook.com/chichavenezolanalosguaros/', NULL, NULL, 'https://www.google.com/maps/dir//San+Isidro+263,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4475119,-70.6445787,18z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c57522736efb:0xc39b4c4512357ee8!2m2!1d-70.6438934!2d-33.4470475', '-70.643917', '-33.447222'),
(8, 'CHL00008', 'De Pana', 'Chile', 'Santiago', 'Ñuñoa', 'Salvador', '2203', NULL, 'Comida Venezolana', 'restaurante', 'Arepa, Cachapa, Empanada', NULL, NULL, NULL, '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 18:00', '56962111756', NULL, 'https://www.instagram.com/depana_cl/', 'https://www.facebook.com/depana.cl/', 'http://depana.cl/', 'depana.chile@gmail.com', 'https://www.google.com/maps/dir//Avenida+Salvador+2203,+%C3%91u%C3%B1oa,+Chile/@-33.4567619,-70.626936,15.46z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662cf883d11a6b1:0x4311b5d18972ba2b!2m2!1d-70.6208067!2d-33.4533066!3e3', '-70.620809', '-33.453196'),
(9, 'CHL00009', 'Don Pan Chile (Zenteno)', 'Chile', 'Santiago', 'Centro', 'Zenteno', '1202', NULL, 'Comida Venezolana', 'panaderia', 'Pan, Golfeado, Cachito', 'Pan de Jamon', NULL, NULL, '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 18:00', '56227101556', '56962636022', 'https://www.instagram.com/donpanchile/', 'https://www.facebook.com/donpanchile/', NULL, NULL, 'https://www.google.com/maps/dir//Zenteno+1202,+Santiago,+Chile/@-33.462187,-70.6506281,16.38z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c513ee25bb9d:0x7a3af97c7ca9d957!2m2!1d-70.6504378!2d-33.4613264!3e3', '-70.650351', '-33.46144'),
(10, 'CHL00010', 'El Fogón Zuliano', 'Chile', 'Santiago', 'Centro', 'Arturo Pratt', '1349', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Patacon, Perro Caliente', 'Plato Navideño', '', NULL, '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', '09:00 - 00:00', 'Cerrado', '09:00 - 00:00', '09:00 - 00:00', '56932868396', '56932868396', 'https://www.instagram.com/elfogonzuliano.cl/', 'https://www.facebook.com/elfogonzuliano.cl', NULL, NULL, 'https://www.google.com/maps/dir//Arturo+Prat+1349,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4719728,-70.6515856,13.25z/data=!4m17!1m7!3m6!1s0x9662c514eb237e3f:0x19dfa9747157bfc4!2sArturo+Prat+1349,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile!3b', '-70.647252', '-33.462493'),
(11, 'CHL00011', 'El Merendero Venezolano', 'Chile', 'Santiago', 'Italia', 'Tagualda ', '1566', NULL, 'Comida Venezolana', 'restaurante', 'Cachapa, Parrilla, Empanada', 'Plato Navideño, Hallaca, Pan de Jamon ', NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 00:00', '12:00 - 00:00', '09:00 - 00:00', '09:00 - 22:00', '56963539012', '56963539012', 'https://www.instagram.com/elmerenderovenezolano/', 'https://www.facebook.com/elmerenderovenezolano/', NULL, 'elmerenderovenezolano@gmail.com', 'https://www.google.com.ar/maps/dir//Tegualda+1566,+%C3%91u%C3%B1oa,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4547754,-70.6225249,14.79z/data=!4m17!1m7!3m6!1s0x9662c57dbd68dbc7:0x2e40d65ca694ac04!2sTegualda+1566,+%C3%91u%C3%B1oa,+Regi%C3%B3n+Metropolitan', ' -70.622612', '-33.448608'),
(12, 'CHL00012', 'Empanadas El Maracucho (Ñuñoa)', 'Chile', 'Santiago', 'Ñuñoa', 'Av Sucre', '1429', NULL, 'Comida Venezolana', 'restaurante', 'Empanada, Tequeño, Mandioca', 'Plato Navideño, Hallaca, Pan de Jamon ', '', NULL, 'Cerrado', '08:00 -23:00', '08:00 -23:00', '08:00 -23:00', '08:00 -23:00', '08:00 -23:00', '08:00 -23:00', '56972578425', '56972578425', 'https://www.instagram.com/empanadaselmaracucho/', 'https://www.facebook.com/Empanadas-El-Maracucho-280403072448733/', NULL, NULL, 'https://www.google.com/maps/dir//Av.+Sucre+1429,+%C3%91u%C3%B1oa,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4476976,-70.6190257,15.71z/data=!4m17!1m7!3m6!1s0x9662cf866dc7548f:0x632b469298874800!2sAv.+Sucre+1429,+%C3%91u%C3%B1oa,+Regi%C3%B3n+Metropolitana', '-70.616485', '-33.449495'),
(13, 'CHL00013', 'Entre Panas Food Truck', 'Chile', 'Santiago', 'Centro', 'Santa Rosa', '440', NULL, 'Comida Rápida', 'restaurante', 'Hamburguesa, Perro Caliente, Tequeño', NULL, '', NULL, '18:00 - 01:30', '18:00 - 01:30', '18:00 - 01:30', '18:00 - 01:30', '18:00 - 03:00', '18:00 - 03:00', '18:00 - 03:00', '56946619864', NULL, 'https://www.instagram.com/entrepanasfoodtruck/', 'https://www.facebook.com/pg/entrepanasfoodtruck', NULL, 'entrepanasclfoodtruck@gmail.com', 'https://www.google.com/maps/dir//Entre+Panas+Food+Truck+-+Av.+Sta.+Rosa+440,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.449149,-70.646989,17.04z/data=!4m16!1m6!3m5!1s0x9662c574a691b8f5:0xcc32a51c7bbddeb2!2sEntre+Panas+Food+Truck!8m2!3d-33.450002', '-70.644343', '-33.450009'),
(14, 'CHL00014', 'Frito Mania (Bellavista)', 'Chile', 'Santiago', 'Bellavista', 'Dardignac', '68', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Patacon, Cachapa', NULL, '', NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 12:00', '09:00 - 12:00', '09:00 - 21:00', '56930385942', '56930385942', 'https://www.instagram.com/lafritomaniadecasa/', 'https://www.facebook.com/La-Fritomania-de-Casa-Vieja-1891629094437298/', NULL, NULL, '', ' -70.637852', '-33.433559'),
(15, 'CHL00015', 'Frito Mania (Centro)', 'Chile', 'Santiago', 'Centro', 'Santa Rosa', '83', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Patacon, Cachapa', 'Plato Navideño', '', NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 09:00', '56995647094', '56995647094', 'https://www.instagram.com/lafritomaniadecasa/', 'https://www.facebook.com/La-Fritomania-de-Casa-Vieja-1891629094437298/', NULL, NULL, 'https://www.google.com/maps/dir//Fritomania+-+Av.+Sta.+Rosa+83,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4461985,-70.6471006,17.21z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c5a006b938a3:0xdbbcfc184f708d00!2m2!1d-70.646151!2d-33.4449347', '-70.645909', '-33.44496'),
(16, 'CHL00016', 'Frito Mania (Estación Central)', 'Chile', 'Santiago', 'Estación Central', 'Ecuador', '3472', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Patacon, Cachapa', NULL, '', NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 18:00', 'Cerrado', '56937551510', '56937551510', 'https://www.instagram.com/lafritomaniadecasa/', 'https://www.facebook.com/La-Fritomania-de-Casa-Vieja-1891629094437298/', NULL, NULL, 'https://www.google.com/maps/dir//Avenida+Ecuador+3472,+Santiago,+Estaci%C3%B3n+Central,+Chile/@-33.4500774,-70.6837724,17.46z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c4587585e001:0x90b50ab52ade9972!2m2!1d-70.6828748!2d-33.4510634!3e3', '-70.682849', '-33.451052'),
(17, 'CHL00017', 'Frito Mania (La Florida)', 'Chile', 'Santiago', 'La Florida', 'Vicuña Mackenna', '6491', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Patacon, Cachapa', NULL, '', NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 14:00', '56986245705', '56986245705', 'https://www.instagram.com/lafritomaniadecasa/', 'https://www.facebook.com/La-Fritomania-de-Casa-Vieja-1891629094437298/', NULL, NULL, 'https://www.google.com/maps/dir//Avenida+Vicu%C3%B1a+Mackenna+6491,+La+Florida,+Chile/@-33.5164984,-70.6096307,16.46z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662d06571434c79:0xfab877e56f4d0dfe!2m2!1d-70.6071818!2d-33.5152571!3e3', '-70.607371', '-33.515216'),
(18, 'CHL00018', 'Frito Mania (Los Condes)', 'Chile', 'Santiago', 'Las Condes', 'Santa Zita', '9115', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Patacon, Cachapa', NULL, '', NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '9:00 - 22:00', '9:00 - 14:00', '56945924076', '56945924076', 'https://www.instagram.com/lafritomaniadecasa/', 'https://www.facebook.com/La-Fritomania-de-Casa-Vieja-1891629094437298/', NULL, NULL, 'https://www.google.com/maps/place/Fritomania+Las+Condes/@-33.4263354,-70.5340591,18.25z/data=!4m5!3m4!1s0x9662cffacf490eb9:0x48db8aa2d55cb7cf!8m2!3d-33.4254147!4d-70.5341041', '-70.534029', '-33.42529'),
(19, 'CHL00019', 'Frito Mania (Ñuñoa)', 'Chile', 'Santiago', 'Ñuñoa', 'Jose Pedro Alessandri', '821', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Patacon, Cachapa', NULL, '', NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '9:00 - 22:00', '9:00 - 14:00', '56930288172', '56930288172', 'https://www.instagram.com/lafritomaniadecasa/', 'https://www.facebook.com/La-Fritomania-de-Casa-Vieja-1891629094437298/', NULL, NULL, 'https://www.google.com/maps/place/Av.+Jos%C3%A9+Pedro+Alessandri+821,+%C3%91u%C3%B1oa,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4649424,-70.6005702,15.67z/data=!4m5!3m4!1s0x9662cfea7a5a82e5:0xfe5e03bf47faab4d!8m2!3d-33.4622471!4d-70.5984049', '-70.598456', '-33.462219'),
(20, 'CHL00020', 'Full Empanadas', 'Chile', 'Santiago', 'Centro', 'Moneda', '1617', '5', 'Empanadas', 'restaurante', 'Empanada', NULL, NULL, NULL, 'Cerrado', '08:30 - 22:00', '08:30 - 22:00', '08:30 - 22:00', '08:30 - 22:00', '08:30 - 22:00', '08:30 - 16:00', NULL, NULL, 'https://www.instagram.com/fullempanadas.cl/', 'https://www.facebook.com/Full-Empanadas-489872761495551/', NULL, 'fullempanadas.cl@gmail.com', 'https://www.google.com/maps/dir//Full+Empanadas+-+Moneda+1698-1648,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4431196,-70.6594176,19.25z/data=!4m16!1m6!3m5!1s0x9662c5821fa78b6f:0x56f5aa2d7e09ebe6!2sFull+Empanadas!8m2!3d-33.4427917!4d-70.659773!', '-70.659766', '-33.442754'),
(21, 'CHL00021', 'Mas Q\' Arepas', 'Chile', 'Santiago', 'Ñuñoa', 'Duble Almeyda', '2900', NULL, 'Comida Venezolana', 'restaurante', 'Arepa, Empanada', 'Hallaca', '', NULL, '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 00:00', '10:00 - 00:00', '10:00 - 19:00', '56229053977', NULL, 'https://www.instagram.com/masqarepas.cl/', 'https://www.facebook.com/masqarepas.cl', 'http://masquearepas.cl/', 'contacto@masquearepas.cl', 'https://www.google.com/maps/dir//M%C3%A1s+que+Arepas+-+Dubl%C3%A9+Almeyda+2900,+%C3%91u%C3%B1oa,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4564702,-70.6009346,18.71z/data=!4m16!1m6!3m5!1s0x9662cf944e129559:0x3b0323b2c99f19e9!2sM%C3%A1s+que+Arepas!8m2!3d-', '-70.601395', '-33.455899'),
(22, 'CHL00022', 'Mr Mostaza', 'Chile', 'Santiago', 'Centro', 'Santa Rosa', '440', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Cachapa, Pepito', NULL, NULL, NULL, '18:00 - 02:00', '18:00 - 02:00', '18:00 - 02:00', '18:00 - 02:00', '18:00 - 02:00', '18:00 - 02:00', '18:00 - 02:00', NULL, NULL, 'https://www.instagram.com/mrmostaza/', '', '', '', 'https://www.google.com/maps/dir//La+calle+de+hambre+vzla,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4507873,-70.6431201,18.08z/data=!4m16!1m6!3m5!1s0x9662c59e2155d259:0xe6624d8729e6a6c6!2sLa+calle+de+hambre+vzla!8m2!3d-33.4499204!4d-70.6438112!', '-70.643967', '-33.450238'),
(23, 'CHL00023', 'Paladares Bistro', 'Chile', 'Santiago', 'Centro', 'Av Portugal', '523', NULL, 'Comida Venezolana y Producto s', 'restaurante', 'Harina, Queso, Empanada', NULL, NULL, NULL, '08:30 - 21:00', '08:30 - 21:00', '08:30 - 21:00', '08:30 - 21:00', '08:30 - 21:00', '10:00 - 20:00', '10:00 - 20:00', '56232663497', NULL, 'https://www.instagram.com/paladaresbistro/', 'https://www.facebook.com/paladaresbistro/', NULL, 'paladaresbistro@gmail.com', 'https://www.google.com/maps/place/PALADAR+Teque%C3%B1os/@-33.4482784,-70.6359379,18z/data=!4m5!3m4!1s0x9662c57759fba84d:0x9da6ff2b5b6b3a71!8m2!3d-33.4488696!4d-70.635267', '-70.635256', '-33.448872'),
(24, 'CHL00024', 'Pana Food (Centro)', 'Chile', 'Santiago', 'Centro', 'Merced', '641', '0', 'Comida Venezolana', 'restaurante', 'Hamburguesa, Empanada, Patacon', 'Plato Navideño', '', NULL, '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '56946755061', NULL, 'https://www.instagram.com/panafood.cl/', 'https://www.facebook.com/Pana-Food-2045921559064131/', NULL, NULL, 'https://www.google.com/maps/dir//Panafood+-+Merced+641,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4375094,-70.6469357,17.08z/data=!4m16!1m6!3m5!1s0x9662c55c2b246479:0x6d3eee4a079dac62!2sPanafood!8m2!3d-33.4378665!4d-70.6462862!4m8!1m0!1m5!1m1!1', ' -70.646532', '-33.437941'),
(25, 'CHL00025', 'Pana Food (Providencia)', 'Chile', 'Santiago', 'Providencia', 'General Holley', '2340', NULL, 'Comida Venezolana', 'restaurante', 'Hamburguesa, Empanada, Patacon', 'Plato Navideño', '', NULL, '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '56946755061', NULL, 'https://www.instagram.com/panafood.cl/', 'https://www.facebook.com/Pana-Food-2045921559064131/', NULL, NULL, 'https://www.google.com/maps/dir//Gral.+Holley+2340,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.420191,-70.607393,18.13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662cf685be34711:0x3ed4260db1bf3b0b!2m2!1d-70.6078728!2d-33.4197396!3e3', '-70.607779', '-33.419765'),
(26, 'CHL00026', 'Papelón Resto Bar', 'Chile', 'Santiago', 'Centro', 'Principe de Gales', '89', NULL, 'Comida Venezolana', 'restaurante', 'Tequeño, Cachapa, Roll ', 'Plato Navideño', NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', 'Cerrado', '56922623498', NULL, 'https://www.instagram.com/papelonrestobar/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Pr%C3%ADncipe+de+Gales+89,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4385964,-70.654766,15.63z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c5a617a535ed:0x7d352a63fa039e85!2m2!1d-70.6564925!2d-33.4426559!3e3', ' -70.656558', '-33.443103'),
(27, 'CHL00027', 'Papelón Sabroso', 'Chile', 'Santiago', 'Providencia', 'Av Providencia', '1669', NULL, 'Comida Venezolana', 'restaurante', 'Golfeado, Patacones, Cachapas,', 'Plato Navideño, Hallaca, Pan de Jamon', '', NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 23:00', '10:00 - 23:00', '10:00 - 17:00', '56991691222', '56991691222', 'https://www.instagram.com/papelonsabroso/', 'https://www.facebook.com/papelonsabroso', 'https://papelon-sabroso.negocio.site/', 'papelonsabroso@gmail.com', 'https://www.google.com/maps/dir//Papel%C3%B3n+Sabroso+Middleton+-+Dr+Luis+Middleton+1682,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4274054,-70.6153921,19.79z/data=!4m16!1m6!3m5!1s0x9662cfed51b8c9bf:0x52c0d09e6f96cdf3!2sPapel%C3%B3n+Sabroso+', ' -70.615273', '-33.427255'),
(28, 'CHL00028', 'Pasapalos Resto Bar', 'Chile', 'Santiago', 'Providencia', 'Av. Manuel Montt', '2072', NULL, 'Comida Venezolana', 'restaurante', 'Arepas, Cachapas, Empanadas, Hamburguesas, Patacones, Tequeños,', NULL, '', NULL, '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '09:00 - 20:00', '19:00 - 19:00', '56232764233', '56232764233', 'https://www.instagram.com/pasapalos.restobar/', 'https://www.facebook.com/Pasapalos-Resto-Bar-353360358679240', NULL, NULL, 'https://www.google.com/maps/dir//Av.+Manuel+Montt+2072,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4454281,-70.6151002,17.75z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662cf844218f8af:0x1c72414af7cf213a!2m2!1d-70.6138371!2d-33.4467498!3e3', '-70.613798', '-33.446634'),
(29, 'CHL00029', 'Rey Tequeño Chile', 'Chile', 'Santiago', 'Centro', 'Victoria', '1002', NULL, 'Comida Venezolana', 'restaurante', 'Empanadas, Pastelitos, Tequeños.', NULL, '', NULL, '09:00 - 21:00', 'Cerrado', '09:00 - 21:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:30', '09:00 - 23:30', '56961104896', '56961104896', 'https://www.instagram.com/reytequenochile/', 'https://www.facebook.com/Rey-Teque%C3%B1o-Chile-314696709330143/', NULL, NULL, 'https://www.google.com.ar/maps/dir//Victoria+1002,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4618809,-70.6508605,16.04z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c514e631d109:0x16ab2ae44ad50a9e!2m2!1d-70.6471936!2d-33.4636737', '-70.647193', '-33.463665'),
(30, 'CHL00030', 'Sentir Zuliano (Centro)', 'Chile', 'Santiago', 'Centro', 'San Francisco', '30', NULL, 'Comida Venezolana', 'restaurante', 'Empanadas, Pabellon, Patacones, Pastelitos,', 'Plato Navideño', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56935551481', '56935551481', 'https://www.instagram.com/sentirzulianoenchile/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Sentir+Zuliano+-+San+Francisco+30,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4455484,-70.6725075,13.58z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c57b48909a3b:0xffacda06d8756b1f!2m2!1d-70.6469864!2d-33.4439471', '-70.647052', '-33.443895'),
(31, 'CHL00031', 'Sentir Zuliano (Independencia)', 'Chile', 'Santiago', 'Independencia', 'Sergio Livingstone', '976', NULL, 'Comida Venezolana', 'restaurante', 'Empanadas, Pabellon, Patacones, Pastelitos,', 'Plato Navideño', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '58987965561', '58987965561', 'https://www.instagram.com/sentirzulianoenchile/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Sentir+Zuliano+-+Olivos+976,+Independencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4232658,-70.6870661,13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c5969394e1b9:0xfeb7122cee44c23f!2m2!1d-70.6519609!2d-33.4232707', '-70.652658', '-33.423051'),
(32, 'CHL00032', 'Sentir Zuliano (San Miguel)', 'Chile', 'Santiago', 'San Miguel', 'Gran Avenida', '4940', NULL, 'Comida Venezolana', 'restaurante', 'Empanadas, Pabellon, Patacones, Pastelitos,', 'Plato Navideño', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/sentirzulianoenchile/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Gran+Avenida+Jose+Miguel+Carrera+4940,+San+Miguel,+Regi%C3%B3n+Metropolitana,+Chile/@-33.5006992,-70.6707299,15.13z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662dacf6c5bdf4f:0xa453bb648ae734c8!2m2!1d-70.6534034!2d-33.4990887', '-70.653216', '-33.498989'),
(33, 'CHL00033', 'Tepuy Resto Bar', 'Chile', 'Santiago', 'Providencia', 'Av. Manuel Montt', '191', NULL, 'Comida Venezolana', 'restaurante', 'Arepas, Cachapas, Hamburguesas, Pabellon', NULL, NULL, NULL, '13:00 - 00:00', '13:00 - 00:00', '13:00 - 00:00', '13:00 - 00:00', '13:00 - 00:00', '18:00 - 00:00', NULL, '56934140770', NULL, 'https://www.instagram.com/tepuyrestobar/', 'https://www.facebook.com/tepuyrestobar/', 'https://tepuy-restobar.negocio.site/', NULL, 'https://www.google.com/maps/dir//Av.+Manuel+Montt+191,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4317387,-70.621025,16.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662cf7d2e38769d:0x6f853e276d33a345!2m2!1d-70.6193567!2d-33.4304979', ' -70.619323', '-33.430528'),
(34, 'CHL00034', 'Don Pan Chile (San Isidro)', 'Chile', 'Santiago', 'Centro', 'San Isidro', '526', NULL, 'Panaderia', 'panaderia', 'Pan', 'Pan de Jamon', '', NULL, '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '09:00 - 21:00', 'Cerrado', '56962636022', '56962636022', 'https://www.instagram.com/donpanchile/', 'https://www.facebook.com/donpanchile/', NULL, NULL, 'https://www.google.com/maps/dir//San+Isidro+526,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4507058,-70.6451029,17z/data=!4m16!1m7!3m6!1s0x9662c57370a83997:0x47385a27927d80db!2sSan+Isidro+526,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile!3b1!8m2!3', ' -70.643002', '-33.450802'),
(35, 'CHL00035', 'Empanadas El Maracucho (Centro)', 'Chile', 'Santiago', 'Centro', 'San Diego ', '1385', NULL, 'Local de venta de empanadas', 'restaurante', 'empanadas, arepa, tequeños, cachapas', 'Patlo Navideño, Pan de Jamon, Hallaca', '', NULL, NULL, '08:00 - 23:00', '08:00 - 23:00', '08:00 - 23:00', '08:00 - 23:00', '08:00 - 23:00', '08:00 - 23:00', '56972578425', NULL, 'https://www.instagram.com/empanadaselmaracucho/', 'https://www.facebook.com/Empanadas-El-Maracucho-280403072448733/?__tn__=kC-R&eid=ARC0NUJ_kVnROZGyXa-lCEAsVQjLSb3ROXKfn3uYQyYfDkfAzlCrrnr6gsjmj5ALE8xLIVckSesVtOpo&hc_ref=ARRnBfHHBgUHIxH2y_c8ZZ1LjXGtGaqYK3kPqw8hA-38Ga2eCHgIbpI-YygggydIzTQ&fref=nf&__xts', NULL, NULL, 'https://www.google.com/maps/dir//San+Diego+1385,+Santiago,+Chile/@-33.4611037,-70.653318,14.88z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c5145b7661e1:0x52f16aaedc0a5a4b!2m2!1d-70.6490164!2d-33.4635431!3e3', '-70.649031', '-33.463485'),
(36, 'CHL00036', 'Don Pan Chile (Estación Central)', 'Chile', 'Santiago', 'Estación Central', 'Toro Mazotte', '100', NULL, 'Panadería venezolana', 'panaderia', 'Pan', 'Pan de Jamon', NULL, NULL, '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '08:00 - 22:00', '09:00 - 21:00', NULL, '56962636022', 'https://www.instagram.com/donpanchile/', 'https://www.facebook.com/donpanchile/', NULL, NULL, 'https://www.google.com/maps/dir//Toro+Mazotte+100,+Santiago,+Estaci%C3%B3n+Central,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4551453,-70.6932008,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c4f4e83d7335:0x46af38022d0e7f5!2m2!1d-70.6915137!2d-33.4559375', '-70.691482', '-33.455928'),
(38, 'CHL00038', 'Caracas Club', 'Chile', 'Santiago', 'Bellavista', 'Antonia López de Bel', '23', NULL, 'Las Mejores Rumbas con sello Venezolano', 'discoteca', NULL, NULL, NULL, NULL, 'Cerrado', 'Cerrado', 'Cerrado', 'Abierto', 'Abierto', 'Abierto', 'Abierto', NULL, NULL, 'https://www.instagram.com/caracasclub/', 'https://www.facebook.com/CaracasClub1/', NULL, NULL, 'https://www.google.com/maps/dir//Caracas+club+-+Antonia+L%C3%B3pez+de+Bello+23,+Recoleta,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4320823,-70.6370742,19z/data=!4m16!1m6!3m5!1s0x9662c5f4b8a70ca7:0x18ebd9e4c62b58d1!2sCaracas+club!8m2!3d-33.4320834!4d-70.', '-70.636528', '-33.432051'),
(39, 'CHL00039', 'Italia Barber Shop', 'Chile', 'Santiago', 'Providencia', 'Santa Isabel', '295', NULL, 'Barbería Old School y Nuevas Tendencias', 'servicio', NULL, NULL, NULL, NULL, '11:00 - 20:30', '11:00 - 20:30', '11:00 - 20:30', '11:00 - 20:30', '11:00 - 20:30', '11:00 - 20:30', '11:00 - 18:30', '56978551590 ', NULL, 'https://www.instagram.com/italiabarbershop13/', 'https://www.facebook.com/ItaliaBarberShop/', 'http://italiabarbershop.cl/', ' italiabarbershop13@gmail.com', 'https://www.google.com/maps/dir//Sta+Isabel+295,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4466735,-70.6279059,19z/data=!4m17!1m7!3m6!1s0x9662c5794dd14c87:0xf6c5fc8257d87e02!2sSta+Isabel+295,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile!3b1', '-33.446626', '-70.627569'),
(40, 'CHL00040', 'La Barbería', 'Chile', 'Santiago', 'Macul', 'Monseñor Carlos Casa', '2966', NULL, 'La Barbería Venezolana', 'servicio', NULL, NULL, NULL, NULL, '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', 'Cerrado', NULL, '56965742348', 'https://www.instagram.com/labarberiavenezolana/', 'https://www.facebook.com/labarberiavenezolana/', NULL, 'labarberiasantiago@gmail.com', 'https://www.google.com/maps/dir//Barberia+Venezolana+-+Monse%C3%B1or+Carlos+Casanueva+2966,+Macul,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4970533,-70.6039287,16z/data=!4m16!1m6!3m5!1s0x9662d016ddb183dd:0x9682975ade5440e4!2sBarberia+Venezolana!8m2!3d-3', '-70.602849', '-33.495214'),
(41, 'CHL00041', 'Salexa', 'Chile', 'Santiago', 'Providencia', 'Av Providencia', '2550', '17', 'Estética Venezolana', 'servicio', NULL, NULL, NULL, NULL, '10:30 - 20:00', '10:30 - 20:00', '10:30 - 20:00', '10:30 - 20:00', '10:30 - 20:00', '10:30 - 16:00', 'Cerrado', NULL, '56945228784', 'https://www.instagram.com/salexave/', 'https://www.facebook.com/esteticavenezolana/', 'https://peluqueriavenezolana.cl/', 'contactosalexa@gmail.com', 'https://www.google.com/maps/dir//Peluquer%C3%ADa+Salexa+-+Av.+Providencia+2550,+Local+17,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4189754,-70.6040009,19z/data=!4m16!1m6!3m5!1s0x9662cf6a28874f9b:0xa7696427a7b15d38!2sPeluquer%C3%ADa+Salexa!8', '-70.603661', '-33.418809'),
(42, 'CHL00042', 'Pipo (San Isidro)', 'Chile', 'Santiago', 'San Isidro', 'Blas Cañas', '477', NULL, 'Local restaurant de comida tradicional venezolana', 'restaurante', 'Pastelito, Empanada, Tequeño, Hamburguesa, Patacon, Sopa', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56954885724', '56954885724', 'https://www.instagram.com/pipocl/', 'https://www.facebook.com/Pastelitospipocl/', NULL, 'pipomarketingcl@gmail.com', 'https://www.google.com/maps/dir//Blas+Ca%C3%B1as+477,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.443733,-70.6481067,15.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c57578c95bef:0x99c7c7774beea08a!2m2!1d-70.6426151!2d-33.4449452', '-70.642578', '-33.444925'),
(43, 'CHL00043', 'Pipo (Providencia)', 'Chile', 'Santiago', 'Providencia', 'Mardoqueo Fernández ', '109', NULL, 'Local restaurant de comida tradicional venezolana', 'restaurante', 'Pastelitos, Empanadas, Tequeños, Hamburguesas, Patacones, Hervidos', 'Plato Navideño', 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56930929864', '56954885724', 'https://www.instagram.com/pipocl/', 'https://www.facebook.com/Pastelitospipocl/', NULL, 'pipomarketingcl@gmail.com', 'https://www.google.com/maps/dir//Mardoqueo+Fern%C3%A1ndez+109,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4433268,-70.6352108,12.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662cf69203c1247:0xb219bfbbd806773!2m2!1d-70.606695!2d-33.4213096', '-70.606615', '-33.421328'),
(44, 'CHL00044', 'Pa\' Que Luis', 'Chile', 'Santiago', 'Recoleta', 'Ernesto Pinto Lagarrigue', '257', NULL, 'La Casita de los zulianos en Chile', 'discoteca', 'Discoteca, Bailable', NULL, NULL, NULL, '00:00 - 04:00', '00:00 - 04:00', '00:00 - 04:00', '00:00 - 04:00', '00:00 - 04:00', '00:00 - 04:00', '00:00 - 04:00', '56986017216', NULL, 'https://www.instagram.com/paqueluiscl/', 'https://www.facebook.com/paqueluiscl/', NULL, 'paqueluischile@gmail.com', 'https://www.google.com/maps/dir//Ernesto+Pinto+Lagarrigue+257,+Recoleta,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4311125,-70.639245,17z/data=!4m17!1m7!3m6!1s0x9662c590f1122c51:0x46bb75f0d5340fdf!2sErnesto+Pinto+Lagarrigue+257,+Recoleta,+Regi%C3%B3n+Met', '-70.637150', '-33.431030'),
(45, 'CHL00045', 'Panevita Tachira', 'Chile', 'Santiago', 'San Diego', 'Av Sta. Rosa', '827', NULL, 'Panaderia Venezolana con mas de 30 años de experiencia', 'panaderia', 'Panaderia, Cachito,', 'Pan de Jamon ', NULL, NULL, '9:00 - 00:00', '9:00 - 00:00', '9:00 - 00:00', '9:00 - 00:00', '9:00 - 00:00', '9:00 - 00:00', '9:00 - 00:00', '+56949584608', '56949584608', 'https://www.instagram.com/panevitatachira/', 'https://www.facebook.com/Panevita-Tachira-1651450191576109/', NULL, NULL, 'https://www.google.com/maps/dir//PaneVita+Tachira+-+local,+Av.+Sta.+Rosa+827,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4549302,-70.6462129,17z/data=!4m16!1m6!3m5!1s0x9662c50f114183ad:0x4344989807eb7abe!2sPaneVita+Tachira!8m2!3d-33.4549302!4d-7', '-70.643973', '-33.454875'),
(46, 'CHL00046', 'Chichos (Calle Arturo Prat)', 'Chile', 'Santiago', 'Centro', 'Arturo Prat', '1365', '5', 'Comida rápida venezolana Maracucha', 'restaurante', 'Hamburguesas, Empanadas,', NULL, NULL, NULL, '09:00 - 13:00 / 18:00 - 00:00', '09:00 - 13:00 / 18:00 - 00:00', '09:00 - 13:00 / 18:00 - 00:00', '09:00 - 13:00 / 18:00 - 00:00', '09:00 - 13:00 / 18:00 - 00:00', '08:00 - 01:00', '08:00 - 00:30', '+56 9 8593 4711', '56985934711', 'https://www.instagram.com/chichos.cl/', 'https://www.facebook.com/chichos.cl/', NULL, 'chichosqualityfood@gmail.com', 'https://www.google.com/maps/dir//Chicho\'s+-+Arturo+Prat+1365,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4631123,-70.6477267,19z/data=!4m16!1m6!3m5!1s0x9662c5ff294c4f39:0x40c47735714caf59!2sChicho\'s!8m2!3d-33.4630955!4d-70.6472907!4m8!1m0!1m5!1m', '-70.647236', '-33.462739'),
(47, 'CHL00047', 'Chichos (Calle Victoria)', 'Chile', 'Santiago', 'Centro', 'Victoria', '875', '', 'Comida rápida venezolana Maracucha', 'restaurante', 'Hamburguesas, Empanadas,', NULL, NULL, NULL, '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '24 horas', '24 horas', '+56 9 8593 4711', '56985934711', 'https://www.instagram.com/chichos.cl/', 'https://www.facebook.com/chichos.cl/', NULL, 'chichosqualityfood@gmail.com', 'https://www.google.com/maps/dir//Chicho\'s+-+Victoria+875,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4633736,-70.6461391,19z/data=!4m16!1m6!3m5!1s0x9662c51293dd1275:0x3467a1f2183546b7!2sChicho\'s!8m2!3d-33.4633266!4d-70.6455101!4m8!1m0!1m5!1m1!1s', '-70.645701', '-33.463352'),
(48, 'CHL00048', 'Chichos (Quinta Normal)', 'Chile', 'Santiago', 'Quinta Normal', 'San Pablo', '4163', '', 'Comida rápida venezolana Maracucha', 'restaurante', 'Hamburguesas, Empanadas,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56 9 8593 4711', '56985934711', 'https://www.instagram.com/chichos.cl/', 'https://www.facebook.com/chichos.cl/', NULL, 'chichosqualityfood@gmail.com', 'https://www.google.com/maps/dir//Food+trucks+San+Pablo+-+San+Pablo+4197,+Quinta+Normal,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4378643,-70.6922834,19z/data=!4m16!1m6!3m5!1s0x9662c594642c1423:0xff5fef898297becd!2sFood+trucks+San+Pablo!8m2!3d-33.4379342', '-70.691743', '-33.437827'),
(50, 'CHL00050', 'En Venezuela  (Arturo Prat)', 'Chile', 'Santiago', NULL, 'Arturo Prat', '1365', '10', 'Cachapas, agüitas de sapo, Almuerzos.', 'restaurante', 'Cachapas, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56936956687', '56936956687', 'https://www.instagram.com/envenezuela.cl/', 'https://www.facebook.com/EnVenezuelacl-844003902649969/', NULL, NULL, 'https://www.google.com/maps/dir//ENVENEZUELA.CL+-+Arturo+Prat+1365,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4638831,-70.6547473,16z/data=!4m16!1m6!3m5!1s0x9662c50dd47d5501:0x63baf4189cfdd04!2sENVENEZUELA.CL!8m2!3d-33.4630976!4d-70.6472863!4m8', '-70.647257', '-33.463195'),
(51, 'CHL00051', 'Estación 72', 'Chile', 'Santiago', NULL, 'Argomedo', '450', NULL, 'Hamburguesas, Patacones, Arepas, Maíz, Tequeños, Pastelitos', 'restaurante', 'Patacones, Hamburguesas, Arepas, Tequeños,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56936329007', '56936329007', 'https://www.instagram.com/estacion.72/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Argomedo+450,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4506184,-70.6412254,18z/data=!4m17!1m7!3m6!1s0x9662c573e20386a5:0xa7d2b440de756b6d!2sArgomedo+450,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile!3b1!8m2!3d-33', '-70.640009', '-33.450592'),
(52, 'CHL00052', 'Amanda\'s', 'Chile', 'Santiago', NULL, 'Compañía de Jesús', '1509', NULL, 'Arepas y Shawarmas', 'restaurante', 'Arepas, Shawarmas', NULL, NULL, NULL, '11:00 - 23:00', '11:00 - 23:00', '11:00 - 23:00', '11:00 - 23:00', '11:00 - 23:00', '13:00 - 23:00', '13:00 - 20:00', '+56226711709', '56226711709', 'https://www.instagram.com/amandasarepas/', 'https://www.facebook.com/ArepasAmandas/', NULL, 'arepasyshawarmas@gmail.com', 'https://www.google.com/maps/dir//Amanda\'s+Comida+Internacional+-+Compa%C3%B1%C3%ADa+de+Jes%C3%BAs+1509,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4391808,-70.6593251,18z/data=!4m16!1m6!3m5!1s0x9662c5af77a0b38b:0xca6b3090ab06b434!2sAmanda\'s+Comi', '-70.658248', '-33.439124'),
(53, 'CHL00053', 'Palato Gourmet', 'Chile', 'Santiago', 'Bella Vista', 'Ernesto Pinto Lagarrigue', '214', NULL, 'Arepas, empanadas, empanadas andinas, cachapas, pabellón, mondongo y lasaña', 'restaurante', 'Pabellon, Mondongo, Cachapas', 'Hallaca, Pan de Jamon', NULL, NULL, '10:00 - 22:45', '10:00 - 22:45', '10:00 - 22:45', '24 horas', '24 horas', '24 horas', 'Cerrado', '+56951207084', '56951207084', 'https://www.instagram.com/palato.gourmet/', 'https://www.facebook.com/palatolatam/', NULL, 'comercializadorapalato@gmail.com', 'https://www.google.com/maps/dir//Arepera+Palato+-+Ernesto+Pinto+Lagarrigue+214-A,+Santiago,+Recoleta,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4315653,-70.6376878,18z/data=!4m16!1m6!3m5!1s0x9662c5908de3c1dd:0xa2e621777cfcbd4f!2sArepera+Palato!8m2!3d-33.', '-70.637322', '-33.431962'),
(54, 'CHL00054', 'Naif Café', 'Chile', 'Santiago', 'Providencia', 'Pocuro', '2580', NULL, 'Gastronomía venezolana y pastelería.', 'restaurante', 'Cafeteria, Pasteleria, Panaderia', 'Pan de Jamon, Plato Navideño', NULL, NULL, 'Cerrado', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '56232290432', NULL, 'https://www.instagram.com/naifcafe_cl/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Naif+Caf%C3%A9+-+Av.+Pocuro+2580,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.433504,-70.6001837,17z/data=!4m16!1m6!3m5!1s0x9662cf267fb2bd01:0x382d956fc0f7ee12!2sNaif+Caf%C3%A9!8m2!3d-33.433504!4d-70.597995!4m8', '-70.598140', '-33.433390'),
(55, 'CHL00055', 'En tu Salsa', 'Chile', 'Santiago', 'Providencia', 'Paseo Las Palmas', '2223', '20', 'Arepas venezolanas rellenas de diferentes sabores, acompañadas de jugos y papelón con limón.', 'restaurante', 'Arepas, Papelon con Limon,', NULL, NULL, NULL, '11:00 - 20:30', '11:00 - 20:30', '11:00 - 20:30', '11:00 - 20:30', '11:00 - 20:30', '12:15 - 16:30', 'Cerrado', '+56961708740', '56961708740', 'https://www.instagram.com/entusalsa/', 'https://www.facebook.com/entusalsaarepas/', 'https://www.entusalsa.cl/', 'contacto@entusalsa.cl', 'https://www.google.com/maps/dir//EN+TU+SALSA+-+Paseo+Las+Palmas+2223,+local+20,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4219876,-70.6109342,17z/data=!4m16!1m6!3m5!1s0x9662cf68a385c483:0xcd999a2bd1a5d5f7!2sEN+TU+SALSA!8m2!3d-33.4219306!4d-7', '-70.609047', '-33.421925'),
(57, 'CHL00057', 'Guangzhou (Santa Rosa)', 'Chile', 'Santiago', 'Providencia', 'Santa Rosa', '83', NULL, 'Autentica Comida China Venezolana', 'restaurante', 'Arroz Chino, ', NULL, NULL, NULL, '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 21:00', '958511402', '56224000157', 'https://www.instagram.com/guangzhouchile/', 'https://www.facebook.com/saloncantonchile/', NULL, NULL, 'https://www.google.com/maps/place/Sal%C3%B3n+canton/@-33.4449847,-70.6462344,20z/data=!4m5!3m4!1s0x9662c56167833cad:0x6c19c4eadce12744!8m2!3d-33.4448888!4d-70.6459884', '-70.645867', '-33.444810'),
(58, 'CHL00058', 'Guangzhou (Plaza Armas)', 'Chile', 'Santiago', 'Plaza Armas', 'Phillips', '24', NULL, 'Autentica Comida China Venezolana', 'restaurante', 'Arroz Chino, ', NULL, NULL, NULL, '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 20:00', '226325785 / 226395325', '56224000157', 'https://www.instagram.com/guangzhouchile/', 'https://www.facebook.com/saloncantonchile/', NULL, NULL, 'https://www.google.com/maps/dir//Salon+Canton+-+Phillips+6-40,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4373338,-70.6516344,17z/data=!4m16!1m6!3m5!1s0x9662c5a3093db7d7:0x50aee83cac992595!2sSalon+Canton!8m2!3d-33.4373383!4d-70.6494404!4m8!1m0!1', '-70.649386', '-33.437356'),
(59, 'CHL00059', 'Agüita de Sapo', 'Chile', 'Santiago', 'Centro', 'Av. Victoria ', '1022', '39', 'Restaurante de comida típica venezolana', 'restaurante', 'Agüita de Sapo, Arepas, Patacones', NULL, 'delivery propio', NULL, NULL, '16:00 - 23:00', '16:00 - 23:00', '16:00 - 23:00', '16:00 - 23:00', '16:00 - 23:00', '16:00 - 23:00', NULL, '56952385659', 'https://www.instagram.com/aguitadesapo/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Victoria+1022,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4589313,-70.6539605,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c514e5715fb7:0x6aacc4a98f880c1a!2m2!1d-70.6475464!2d-33.4636464', '-70.649364', '-33.463852'),
(61, 'CHL00061', 'Lara Bistró', 'Chile', 'Santiago', 'Centro', 'Av Santa Rosa', '827', NULL, 'Pepitos y Hamburguesas Gourmet', 'restaurante', 'Hamburguesas, Pepitos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56933003790', '56933003790', 'https://www.instagram.com/larabistro.cl/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Lara+Bistr%C3%B3+-+Av.+Sta.+Rosa+827,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4553531,-70.6448933,18z/data=!4m16!1m6!3m5!1s0x9662c56b5081cc81:0xb1b1b87693dd6fbf!2sLara+Bistr%C3%B3!8m2!3d-33.4549302!4d-70.64401', '-70.644441', '-33.455104'),
(63, 'CHL00062', 'Overtime Resto-Bar', 'Chile', 'Santiago', 'San Isidro', 'Av Santa Isabel ', '321 ', 'Piso 2', 'RestoBar', 'discoteca', 'Comida, Kareoke, Rumba', NULL, NULL, NULL, NULL, 'Abierto ', 'Abierto ', 'Abierto ', 'Abierto ', 'Abierto ', 'Abierto ', '56989024245', NULL, 'https://www.instagram.com/overtime.cl/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Sta+Isabel+321,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4596974,-70.6285269,13.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c5773ab53683:0x1ddbe2ebf427e4dc!2m2!1d-70.6358767!2d-33.448238', ' -70.63576', '-33.448219'),
(64, 'CHL00063', 'Entre Panas', 'Chile', 'Valparaiso', 'El Quisco', 'Av. Isidoro Dubournais', '0830', '9', 'Comida rápida con sabor venezolano', '', 'Arepa, Empanada, Hamburguesa, Cachapa', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56962332960', NULL, 'https://www.instagram.com/entrepanas.elquisco/', 'https://www.facebook.com/Entre-Panas-El-Quisco-198484987696812/', NULL, 'dodanin@gmail.com', 'https://www.google.com/maps/dir//Entre+Panas+El+Quisco+-+Av.+Isidoro+Dubournais+0830,+local+9,+El+Quisco,+Valpara%C3%ADso,+Chile/@-33.400242,-71.6402219,10.92z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662110ed7ec62d7:0xac9c6bd04b0346cb!2m2!1d-71.686713!2d-33.3', '-71.686429', '-33.380578'),
(65, 'CHL00064', 'Fénix Kickingball Club', 'Chile', 'Santiago', 'Recoleta', 'Sócrates ', '2641', NULL, 'Club de Kickingball', '', 'Deporte, Kickingball, Chichas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/fenixkickingball/', NULL, NULL, NULL, 'https://www.google.cl/maps/place/S%C3%B3crates+2641,+Recoleta,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4022759,-70.6428312,16.83z/data=!4m5!3m4!1s0x9662c5e1eeb837d3:0xbb66fdca2ae40ae!8m2!3d-33.4020418!4d-70.6405879', ' -70.640872', '-33.402189'),
(66, 'CHL00065', 'Jaguares Club Deportivo', 'Chile', 'Santiago', NULL, NULL, NULL, NULL, 'Club de Kickingball', '', 'Kickingball, Deporte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/jaguares.kickingball/', NULL, NULL, NULL, NULL, '', ''),
(67, 'CHL00066', 'Club Deportivo Girasoles', 'Chile', 'Santiago', NULL, NULL, NULL, NULL, 'Club de kickingball', '', 'kickingball, Deporte, Chicas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/club.deportivo.girasoles/', NULL, NULL, NULL, NULL, '', ''),
(68, 'CHL00067', 'Atlético Vinotinto', 'Chile', 'Santiago', NULL, NULL, NULL, NULL, 'Club de kickingball', '', 'kickingball, Deporte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/atleticovinotinto/', NULL, NULL, NULL, NULL, '', ''),
(69, 'CHL00068', 'Los Roques Club', 'Chile', 'Santiago', 'Recoleta', 'Santa Filomena ', '132', NULL, 'Club nocturno de rumba venezolana', 'discoteca', 'Discoteca, Club, Rumba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/losroquesclub.cl/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Sta+Filomena+132,+Recoleta,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4339034,-70.6446907,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c5912a622787:0xaeeb1cbbecf3c718!2m2!1d-70.6393156!2d-33.4304652', '-70.639338', '-33.430488'),
(70, 'CHL00069', 'Naguará', 'Chile', 'Santiago', 'La Florida', ' Avenida Vicuña Mackenna Ponie', '7067', NULL, 'Restaurante de comida típica venezolana', 'restaurante', 'Pizzas, Hamburguesas, Arepas, Empanadas, ', 'Plato Navideño', 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56232900277', NULL, 'https://www.instagram.com/naguararestaurante_/', NULL, NULL, 'naguararestaurante2019@gmail.com', 'https://www.google.com/maps/dir//Naguara+Restaurante/@-33.5187635,-70.6047032,17.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662d1cdf20c1b73:0xd493afc75b80ca12!2m2!1d-70.6036952!2d-33.5190535', '-70.603729', '-33.519166'),
(71, 'CHL00070', 'Pollozolano', 'Chile', 'Santiago', 'San Isidro', 'Santa Rosa', '440', NULL, 'Pollo chileno con sabor venezolano', 'restaurante', 'Comida venezolana, pollo', NULL, 'delivery propio', NULL, '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', NULL, '56941253012', 'https://www.instagram.com/pollozolano/', 'https://www.facebook.com/Pollozolano-405542453360582/', NULL, NULL, 'https://www.google.com/maps/dir//Av.+Sta.+Rosa+440,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4501042,-70.6471215,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c574a6bc67c7:0xc98f412d18b3ece0!2m2!1d-70.643949!2d-33.4498332', '-70.643903', '-33.449938'),
(72, 'CHL00071', 'The Food Factory', 'Chile', 'Santiago', 'Ñuñoa', 'Av. Italia ', '1624', NULL, 'Comida rápida venezolana', 'restaurante', 'Pollo a la Broaster, Comida china, postres', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56956173609', 'https://www.instagram.com/thefoodfactory.cl/', NULL, NULL, 'thefoodfactory.cl@gmail.com', 'https://www.google.com/maps/dir//Av.+Italia+1624,+%C3%91u%C3%B1oa,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4479915,-70.6271208,15.62z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c57da8cb55db:0x797ec48d1520bbd6!2m2!1d-70.6240258!2d-33.4493353', '-70.62399', '-33.449495'),
(73, 'CHL00072', 'Er Maracucho', 'Chile', 'Santiago', NULL, 'Nataniel Cox', '1286', NULL, 'El sabor de Maracaibo en Santiago. Arepas-Patacón-Hamburguesas ¡y más!', 'restaurante', 'Hamburguesa, Patacon, Arepa ', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56934863885', '56934863885', 'https://www.instagram.com/ermaracucho.cl/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//City+sabor+-+Nataniel+Cox+1286,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.462336,-70.651401,20z/data=!4m16!1m6!3m5!1s0x9662c52a28a7372f:0xdb800cb4038685df!2sCity+sabor!8m2!3d-33.4623697!4d-70.6512637!4m8!1m0!1m5', '-70.651425', '-33.462381'),
(74, 'CHL00073', 'Conchale Vale Cafe', 'Chile', 'Santiago', 'República', 'Sazié', '2379', NULL, 'Comida tradicional venezolana en el barrio Universitario', 'restaurante', 'Arepa, Cachapa, Tequeño, Empanada, Patacon, Pepito, Pabellon', NULL, NULL, NULL, '10:00 - 22:30', '10:00 - 22:30', '10:00 - 22:30', '10:00 - 22:30', '10:00 - 22:30', '10:00 - 17:00', 'Cerrado', ' +56223163925', NULL, 'https://www.instagram.com/conchalevalecafe/', 'https://www.facebook.com/Conchale-Vale-Cafe-1076569085844356/', NULL, 'conchalevalecafe@gmail.com', 'https://www.google.com/maps/dir//Conchale+Vale+Caf%C3%A9,+Coffee+%26+Brunch+-+Sazi%C3%A9+2379,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4514114,-70.6703797,17z/data=!4m16!1m6!3m5!1s0x9662c599c61bbb99:0x611ce2b94837d9a6!2sConchale+Vale+Caf%C3%A', '-70.669320', '-33.451380'),
(75, 'CHL00074', 'Tequeñisimo', 'Chile', 'Santiago', 'San Diego', 'Aconcagua', '1181', '7', 'Tequeños y Pastelitos y Empanadas', 'restaurante', 'Tequeño, Pastelito, Empanada', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56988411473', '56988411473', 'https://www.instagram.com/tequenisimo_/', NULL, NULL, 'tequenisimochile@gmail.com', 'https://www.google.com/maps/dir//Teque%C3%B1isimo+-+Aconcagua+1181,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4587329,-70.6534303,17z/data=!4m16!1m6!3m5!1s0x9662c56252f8669b:0x406947ef39e52118!2sTeque%C3%B1isimo!8m2!3d-33.4586434!4d-70.6505174!', '-70.650454', '-33.458613'),
(76, 'CHL00075', 'Chocolate Cafe', 'Chile', NULL, 'Villa del Mar', 'Ecuador ', '115', NULL, 'Atención y gastronomía  ', 'restaurante', 'Tequeños, Empanadas, Perros', NULL, NULL, NULL, '8:00 - 21:00 ', '8:00 - 21:00 ', '8:00 - 21:00 ', '8:00 - 21:00 ', '8:00 - 21:00 ', '09:00 - 21:00', '09:00 - 17:00', '323353509', '56946260791', 'https://www.instagram.com/chocafe.cl/', NULL, NULL, 'chocolatecafevina@gmail.com', 'https://www.google.com/maps/dir//Ecuador+115,+Vi%C3%B1a+del+Mar,+Valpara%C3%ADso,+Chile/@-33.0228865,-71.5628772,15.92z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9689dde2da18528d:0x206e7c3e0693659a!2m2!1d-71.5597024!2d-33.0230957', '-71.559647', '-33.023103'),
(77, 'CHL00076', 'Minimarket Victoria Spa', 'Chile', 'Santiago', 'Centro', 'Cienfuegos', '80', NULL, 'Productos venezolanos', 'local', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.google.com/maps/dir//Cienfuegos+80,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4427238,-70.6611172,15.08z/data=!4m8!4m7!1m0!1m5!1m1!1s0x9662c5a95f148137:0xdf881894b3447822!2m2!1d-70.6632673!2d-33.4438215', '-70.663338', '-33.443797');
INSERT INTO `BUSCATUAREPA_CHL` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `CALLE`, `ALTURA`, `LOCAL`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`, `RUTA_GOOGLE`, `X`, `Y`) VALUES
(78, 'CHL00077', 'Fast Food Sherman\'s', 'Chile', 'Santiago', 'Centro', 'San Pablo', '1429', NULL, 'Hamburguesas,hot dog, patacones ,arepas, con el mejor sabor latino', 'restaurante', 'Hamburguesa, Perro Caliente, Patacon', NULL, NULL, NULL, '12:00 - 02:00', '12:00 - 02:00', '12:00 - 02:00', '12:00 - 02:00', '12:00 - 02:00', '12:00 - 02:00', '12:00 - 02:00', '+56948135749', '56948135749', 'https://www.instagram.com/shermanschile/', 'https://www.facebook.com/ShermansCL/', 'https://www.shermans.cl/', 'shermanspa@gmail.com', 'https://www.google.com/maps/dir//Los+Famosos+Sherman\'s+-+San+Pablo+1429,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4369064,-70.6619557,16z/data=!4m16!1m6!3m5!1s0x9662c5b0712f40bd:0x750c64b905aa0e10!2sLos+Famosos+Sherman\'s!8m2!3d-33.434389!4d-70', '-70.657894', '-33.434428'),
(79, 'CHL00078', 'Que Chévere Pizzería', 'Chile', 'Llanquihue', 'Puerto Montt', 'Vicente Pérez Rosales', '374', NULL, 'Pizzería', 'restaurante', 'Pizza,', NULL, NULL, NULL, '13:00 - 23:30', '13:00 - 23:30', 'Cerrado', '13:00 - 23:30', '13:00 - 02:00', '13:00 - 02:00', '13:00 - 23:30', '+56933418647', '56933418647', 'https://www.instagram.com/qcheverepizzeria/', 'https://www.facebook.com/Que-Chevere-Pizzeria-2321689334559157/', NULL, 'quecheverepizzeria4@gmail.com', 'https://www.google.com/maps/dir//Que+Chevere+Pizzeria+-+Vicente+P%C3%A9rez+Rosales+374,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4726353,-72.9568906,18z/data=!4m16!1m6!3m5!1s0x96183b8a5c0bb84b:0xb2e767edec9977ed!2sQue+Chevere+Pizzeria!8m2!3d-41.4722876!4d', '-72.956413', '-41.472319'),
(80, 'CHL00079', 'Sushi Funsion', 'Chile', 'Llanquihue', 'Alerce', 'Av. Gabriela Mistral', '957', NULL, 'Local de sushi', 'restaurante', 'Sushi, ', NULL, 'delivery propio', NULL, '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 23:00', '13:00 - 00:00', '13:00 - 00:00', '+56951970504', '56951970504', 'https://www.instagram.com/sushifusionpuertomontt/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Sushi+Fusion+-+Av.+Gabriela+Mistral,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4047377,-72.9188028,17z/data=!4m16!1m6!3m5!1s0x96182578d678cfd1:0x4d7bc10ae0f2f855!2sSushi+Fusion!8m2!3d-41.4047417!4d-72.9166088!4m8!1m0!1m5!1m', '-72.916547', '-41.404758'),
(81, 'CHL00080', 'Sabores Araguaney', 'Chile', 'Llanquihue', 'Puerto Montt', 'Diego Portales', '1001', NULL, 'Comida venezolana llena de sabor y buena atención', 'restaurante', 'Pabellon, Cachapa, Arepa, Patacon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56953182106', '56953182106', 'https://www.instagram.com/saboresaraguaney/', 'https://www.facebook.com/saboresaraguaney-1368425516644216/', NULL, 'saboresaraguaney@gmail.com', 'https://www.google.com/maps/dir//Sabores+araguaney+-+Diego+Portales+1001,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4770786,-72.9514429,17z/data=!4m16!1m6!3m5!1s0x96183b100e357877:0x59ea0d58a9746f8c!2sSabores+araguaney!8m2!3d-41.4770786!4d-72.9492489!4m8!1', '-72.949265', '-41.477098'),
(82, 'CHL00081', 'Barber Alonso Pelaez', 'Chile', 'Llanquihue', 'Puerto Montt', 'Urmeneta', '749', NULL, 'Barbero venezolano', 'servicio', 'Barberia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56966367945', '56966367945', 'https://www.instagram.com/alonso.pelaez/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Peluquer%C3%ADa+Milano+-+Urmeneta+749,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4724368,-72.9461122,20z/data=!4m16!1m6!3m5!1s0x96183b23c0a98dc3:0x4a75f34135b04300!2sPeluquer%C3%ADa+Milano!8m2!3d-41.472592!4d-72.9458606!4m8', '-72.945882', '-41.472581'),
(83, 'CHL00082', 'Waraira Food', 'Chile', 'Llanquihue', 'Puerto Montt', 'Presidente Ibáñez', '173', NULL, 'La mejor comida venezolana en Chile', 'restaurante', 'Cachapa, Hamburguesa, Patacon, Pescado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56936540559', '56936540559', 'https://www.instagram.com/somoswarairafood/', 'https://www.facebook.com/somoswarairafood', NULL, NULL, 'https://www.google.com/maps/dir//WARAIRA+FOOD+-+Calle+de+Servicio+110-248,+Puerto+Montt,+Los+Lagos,+Chile/@-41.461556,-72.9465593,17z/data=!4m16!1m6!3m5!1s0x96183bd56e73a2a9:0x15a132e2ca88c686!2sWARAIRA+FOOD!8m2!3d-41.46156!4d-72.9443653!4m8!1m0!1m5!', '-72.944396', '-41.461549'),
(84, 'CHL00083', 'Arepa Poh', 'Chile', 'Llanquihue', 'Puerto Montt', 'Guillermo Gallardo', '489', NULL, 'Primera Arepera de la Patagonia\r\n', 'restaurante', 'Arepa, ', NULL, NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '14:00 - 22:00', '+56958901224', '56958901224', 'https://www.instagram.com/arepapoh/', 'https://www.facebook.com/arepapoh', 'https://arepa-poh.negocio.site/', 'arepapoh@gmail.com', 'https://www.google.com/maps/dir//%C2%A1Arepa+Poh!+-+Guillermo+Gallardo+489,+Puerto+Montt,+Los+Lagos,+Chile/@-41.46765,-72.9451779,17z/data=!4m16!1m6!3m5!1s0x96183b6a8d016845:0x3c722eca902991dd!2s%C2%A1Arepa+Poh*21!8m2!3d-41.46765!4d-72.9429839!4m8!1m', '-72.942905', '-41.467660'),
(85, 'CHL00084', 'Distribuidora Cambur Pinton', 'Chile', 'Llanquihue', 'Puerto Montt', 'Antonio Varas', '723', NULL, 'Local y distribuidor de productos venezolanos', 'local', NULL, NULL, NULL, NULL, '13:00 - 20:00', '13:00 - 20:00', '13:00 - 20:00', '13:00 - 20:00', '13:00 - 20:00', '11:00 - 20:00', 'cerrado', '+56930063048', '56930063048', 'https://www.instagram.com/dcamburpinton/', 'https://www.facebook.com/dcamburpinton/', 'https://dcamburpinton.negocio.site/', 'dcamburpinton@gmail.com', 'https://www.google.com/maps/dir//Distribuidora+Cambur+Pinton+-+Antonio+Varas+723,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4733406,-72.9472858,17z/data=!4m16!1m6!3m5!1s0x96183afe9437d7ef:0xca9ffef0ccf46fb6!2sDistribuidora+Cambur+Pinton!8m2!3d-41.4732327!4', '-72.945037', '-41.473223'),
(86, 'CHL00085', 'Salto Angel', 'Chile', '', 'Puerto Montt', 'Guillermo Gallardo', '548', NULL, 'Comida venezolana', '', 'Empanada, Tequeño, Pastelito', NULL, NULL, NULL, '10:30 - 22:30', '10:30 - 22:30', '10:30 - 22:30', '10:30 - 22:30', '10:30 - 23:00', '10:30 - 23:00', '11:00 - 18:00', '+56933059639', '56933059639', 'https://www.instagram.com/saltoangelpmtt/', 'https://www.facebook.com/saltoangelpmtt-100573968023592/', 'https://saltoangel.negocio.site/', NULL, 'https://www.google.com/maps/dir//Salto+Angel+-+Guillermo+Gallardo+548,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4668126,-72.9427248,21z/data=!4m16!1m6!3m5!1s0x96183bfedd0bab71:0x456139d5b5cd9515!2sSalto+Angel!8m2!3d-41.4668211!4d-72.9426356!4m8!1m0!1m5!1m', '-72.942624', '-41.466820'),
(87, 'CHL00086', 'Ricoson', 'Chile', 'Llanquihue', 'Puerto Montt', 'Chillan', '138', NULL, 'Empanadas, Tequeños y Perros calientes', 'restaurante', 'Empanada, Tequeño y Perro caliente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5678179429', '5678179429', 'https://www.instagram.com/ricoson_vzla/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Chill%C3%A1n+138,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4726924,-72.9451378,20z/data=!4m17!1m7!3m6!1s0x96183a52dcf48647:0xa0afdf1ca2c8423e!2sChill%C3%A1n+138,+Puerto+Montt,+Los+Lagos,+Chile!3b1!8m2!3d-41.4727236!4d-72.9', '-72.944853', '-41.472719'),
(88, 'CHL00087', 'Burger\'s House', 'Chile', 'Llanquihue', 'Puerto Varas', 'Colón', '290', NULL, 'Hamburguesas, Arepas y más', 'restaurante', 'Hamburguesa, ', NULL, NULL, NULL, 'Cerrado', '11:30 - 22:30', '11:30 - 22:30', '11:30 - 22:30', '11:30 - 23:30', '11:30 - 23:30', '11:30 - 22:30', ' +56944798121', '56957937163', 'https://www.instagram.com/burgers_housepv/', 'https://www.facebook.com/Burgers-House-477536915977125/', 'https://burger-s-house-restaurant.negocio.site/', NULL, 'https://www.google.com/maps/place/Burger%C2%B4s+House/@-41.3238035,-72.9860252,17z/data=!4m13!1m7!3m6!1s0x961826d0370f2f95:0xe0c6ccf2a249974d!2sColon+290,+Puerto+Varas,+Los+Lagos,+Chile!3b1!8m2!3d-41.3238075!4d-72.9838312!3m4!1s0x961826d0370f2f99:0xd', '-72.983827', '-41.323833'),
(89, 'CHL00088', 'Rueda & sabor Fast food', 'Chile', 'Llanquihue', 'Puerto Montt', 'Palena', '365', NULL, 'Hamburguesas, Perros calientes, Pepitos', 'restaurante', 'Hamburguesa, Perro caliente, Pepito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56975771834', '56975771834', 'https://www.instagram.com/rueda.sabor/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Palena+365,+Puerto+Montt,+Los+Lagos,+Chile/@-41.4676919,-72.9250546,19z/data=!4m17!1m7!3m6!1s0x96183a5dc399eaa3:0xb5831e1b6763a41!2sPalena+365,+Puerto+Montt,+Los+Lagos,+Chile!3b1!8m2!3d-41.4676929!4d-72.9245061!4m8!1m', '-72.924484', '-41.467690'),
(90, 'CHL00089', 'The Grill Truck', 'Chile', 'Santiago', 'San Isidro', 'Eleuterio Ramírez ', '835', NULL, 'Comida rápida venezolana', 'restaurante', 'Hamburguesa, Perro Caliente, Pepito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/thegrilltruck/', NULL, NULL, 'pizzasspeedy2@gmail.com', 'https://www.google.com/maps/dir//Eleuterio+Ram%C3%ADrez+835,+Santiago,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4487714,-70.6476861,19z/data=!4m9!4m8!1m0!1m5!1m1!1s0x9662c50b05074b09:0xdd4993d69d470ff2!2m2!1d-70.6475125!2d-33.4484824!3e3', '-70.647519', '-33.448494'),
(91, 'CHL00090', 'Chur Chil ', 'Chile', NULL, 'Concepción', 'Av. Los Carrera ', '945', NULL, 'Comida venezolana', '', 'Tequeño, Milkshake', NULL, NULL, NULL, '11:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '11:00 - 18:00', '56948199387', NULL, 'https://www.instagram.com/churchil.cl/', NULL, '', 'macerogomezspa@gmail.com', 'https://www.google.com/maps/dir//Chur+Chil+-+Av.+Los+Carrera+945,+Concepci%C3%B3n,+B%C3%ADo+B%C3%ADo,+Chile/@-36.8108376,-73.0559877,13.46z/data=!4m16!1m6!3m5!1s0x9669b5ec27dfd8b7:0x46bad5a1b6c2164b!2sChur+Chil!8m2!3d-36.8218415!4d-73.0488373!4m8!1m0', '-73.048836', '-36.821850'),
(92, 'CHL00091', 'Maderos Bar & Resto ', 'Chile', 'Santiago', 'Providencia', 'Av. Nueva Providencia ', '2020', NULL, 'Comida venezolana', 'restaurante', 'Cachapa, Tequeño, Arepa', NULL, NULL, NULL, '12:30 - 22:00', '12:30 - 22:00', '12:30 - 22:00', '12:30 - 23:00', '12:30 - 23:00', '13:00 - 23:00', 'Cerrado', '56932287321', NULL, 'https://www.instagram.com/maderos_bar_resto/', NULL, ' ', 'maderosrest@gmail.com', 'https://www.google.com/maps/dir//Av.+Nueva+Providencia+2020,+Providencia,+Regi%C3%B3n+Metropolitana,+Chile/@-33.4242111,-70.6118086,20.25z/data=!4m17!1m7!3m6!1s0x9662cf65c3850f91:0x9c30f218cae5c1ee!2sAv.+Nueva+Providencia+2020,+Providencia,+Regi%C3%B', '-70.611624', '-33.424186'),
(93, 'CHL00092', 'Ricón Zuliano', 'Chile', 'Llanquihue', 'Puerto Varas', 'Colón ', '300', NULL, 'Comida venezolana', 'restaurante', 'Patacon, Empanada, Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56936604267', 'https://www.instagram.com/pastelitosrinconzuliano/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Colon+300,+Puerto+Varas,+Los+Lagos,+Chile/@-41.3160108,-72.9885984,15.04z/data=!4m17!1m7!3m6!1s0x961826d1ca44cab5:0xfc0de51d1f7e4cd0!2sColon+300,+Puerto+Varas,+Los+Lagos,+Chile!3b1!8m2!3d-41.3238835!4d-72.9841021!4m8!', '-72.984208', '-41.323848'),
(94, 'CHL00093', 'La Korito', 'Chile', 'Llanquihue', 'Los Lagos', 'Ecuador', '1350', NULL, 'Comida venezolana', 'restaurante', 'Hamburguesa, Perro Caliente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56964947529', 'https://www.instagram.com/comidalakorito/?hl=en', NULL, NULL, NULL, 'https://www.google.com/maps/place/comida+la+korito/@-41.4771253,-72.9559427,21z/data=!4m5!3m4!1s0x96183bae2d61c0e3:0xbdac20b0d18691!8m2!3d-41.4770594!4d-72.9558223', '-72.955820', '-41.477060');



CREATE TABLE `BUSCATUAREPA_IRL` (
  `ID` int(11) NOT NULL COMMENT 'AUTO',
  `COD` varchar(10) NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `PAIS` varchar(30) DEFAULT NULL,
  `CIUDAD` enum('Dublin') DEFAULT NULL,
  `BARRIO` varchar(30) DEFAULT NULL,
  `CALLE` varchar(30) DEFAULT NULL,
  `ALTURA` varchar(10) DEFAULT NULL,
  `LOCAL` varchar(10) DEFAULT NULL,
  `DESCRIPCION` varchar(250) DEFAULT NULL,
  `CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio') NOT NULL,
  `ETIQUETAS` varchar(100) DEFAULT NULL,
  `NAVIDAD` varchar(100) DEFAULT NULL,
  `DELIVERY` enum('delivery propio') DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) DEFAULT NULL,
  `LUNES` varchar(30) DEFAULT NULL,
  `MARTES` varchar(30) DEFAULT NULL,
  `MIERCOLES` varchar(30) DEFAULT NULL,
  `JUEVES` varchar(30) DEFAULT NULL,
  `VIERNES` varchar(30) DEFAULT NULL,
  `SABADO` varchar(30) DEFAULT NULL,
  `DOMINGO` varchar(30) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  `WHATSAPP` varchar(30) DEFAULT NULL,
  `INSTAGRAM` varchar(250) DEFAULT NULL,
  `FACEBOOK` varchar(250) DEFAULT NULL,
  `WEB` varchar(100) DEFAULT NULL,
  `CORREO` varchar(50) DEFAULT NULL,
  `RUTA_GOOGLE` varchar(250) DEFAULT NULL,
  `X` varchar(11) NOT NULL,
  `Y` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `BUSCATUAREPA_MEX` (
  `ID` int(11) NOT NULL,
  `COD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Ciudad de Mexico','Monterrey','Ciudad del Carmen') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CALLE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ALTURA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LOCAL` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('restaurante','local','discoteca','servicio','panaderia') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('delivery propio','glovo','masdelivery','pedidos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RUTA_GOOGLE` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `X` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Y` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `BUSCATUAREPA_MEX` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `CALLE`, `ALTURA`, `LOCAL`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`, `RUTA_GOOGLE`, `X`, `Y`) VALUES
(1, 'MEX00001', 'Orale Arepa (Polanco)', 'México', 'Ciudad de Mexico', 'Polanco V Secc', 'Schiller', '330', NULL, 'Gastronomía Venezolana', 'restaurante', 'Arepa. Patacon, Empanada, Pastelito', NULL, NULL, NULL, '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 20:00', '09:00 - 18:00', '525591556133', NULL, 'https://www.instagram.com/oralearepa/', 'https://www.facebook.com/OraleArepa/', 'http://oralearepa.com/', 'info@oralearepa.com', 'https://www.google.com/maps/dir//Orale+Arepa,+Schiller+330,+Polanco,+Polanco+V+Secc,+Miguel+Hidalgo,+11560+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4305129,-99.1931691,15z/data=!4m16!1m6!3m5!1s0x85d1f8ab10372023:0x4e4bd7a1b8d94f99!2sOrale+Arepa!8m2!3d', '-99.186283', '19.432215'),
(2, 'MEX00002', 'El Araguaney ', 'México ', 'Ciudad de Mexico', 'Juárez', 'Atenas ', '56', NULL, 'Gastronomía venezolana', 'restaurante', 'Arepa, Patacones, Sopa, Empanadas', NULL, NULL, NULL, NULL, '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', '10:00 - 18:00', '5215521767951', NULL, 'https://www.instagram.com/restelaraguaney/', NULL, NULL, 'elaraguaney1@hotmail.com', 'https://www.google.com.mx/maps/dir//El+Araguaney,+Atenas+56,+Ju%C3%A1rez,+Cuauht%C3%A9moc,+01600+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.4351861,-99.1968927,12.88z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff2d5ae8d969:0x561b67b80127ce4d!2m2!1d-99.15565', '-99.155629', '19.431553'),
(3, 'MEX00003', 'Arepa Somos', 'México', 'Ciudad de Mexico', 'Juárez', 'Av. Chapultepec', '98', 'L-119', 'Restaurante venezolano ', 'restaurante', 'Arepas, Sopa', NULL, NULL, NULL, '10:00–17:00', '10:00–17:00', '10:00–17:00', '10:00–17:00', '10:00–17:00', '10:00–17:00', '10:00–17:00', '525534855046', NULL, NULL, 'https://www.facebook.com/Tu-Arepa-Somos-779257875776388/', 'https://arepa-somos.negocio.site/', NULL, 'https://www.google.com.mx/maps/dir//Mercado+Juarez,+Av+Chapultepec+98,+Roma+Nte.,+Cuauht%C3%A9moc,+06600+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.4299243,-99.1567001,15.46z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff2e7a0006b3:0x45f12dbc62f64726!2m2!1d-', '-99.154224', '19.426252'),
(4, 'MEX00004', '835 (Roma Norte)', 'México', 'Ciudad de Mexico', 'Roma Norte', 'Durango ', '16', NULL, 'Comida venezolana ', 'restaurante', 'Empanadas, Tequeños, Patacones, Arepa', NULL, NULL, NULL, NULL, '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '10:00 - 22:00', '10:00 - 19:00', '525527870733', NULL, 'https://www.instagram.com/ochotrescinco/', NULL, NULL, 'ochotrescinco835@gmail.com', 'https://www.google.com.mx/maps/dir//Ocho+Tres+Cinco,+Calle+de+Durango+16,+La+Romita,+Roma+Nte.,+Cuauht%C3%A9moc,+03700+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.422335,-99.1623779,15.79z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ffbe981c3feb:0xf98b0941320', '-99.155436', '19.422371'),
(5, 'MEX00005', '835 (Mixcoac)', 'México', 'Ciudad de Mexico', 'Nonoalco', 'Av. Revolución ', '835', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño, Patacon', NULL, NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 16:00', '10:00 - 16:00', '525527870733', NULL, 'https://www.instagram.com/ochotrescinco/', NULL, NULL, 'ochotrescinco835@gmail.com', 'https://www.google.com.mx/maps/dir//Ocho+Tres+Cinco,+Av.+Revoluci%C3%B3n+835+Local+A+Nonoalco,+Mixcoac,+03700+Ciudad+de+M%C3%A9xico,+M%C3%A9xico/@19.3772643,-99.1898738,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff872c53ea91:0xb2120a6ac15b59b7!2m2!1d-99.1', '-99.187692', '19.377258'),
(6, 'MEX00006', 'La  Nueva Taguarita', 'México', 'Ciudad de Mexico', 'Colonia Roma Norte', 'Calle Córdoba', '136', NULL, 'Comida venezolana', 'restaurante', NULL, NULL, NULL, NULL, '10:30 - 21:00', NULL, '10:30 - 21:00', '10:30 - 21:00', '10:30 - 21:00', '10:30 - 21:00', '10:30 - 20:00', '5523373382', NULL, 'https://www.instagram.com/lanueva_taguarita/', NULL, NULL, 'nybh94@gmail.com', 'https://www.google.com/maps/dir//La+Nueva+Taguarita,+06700,+C%C3%B3rdoba+136,+Roma+Nte.,+Cuauht%C3%A9moc,+06700+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4152005,-99.1545851,13.71z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff3b18b3fdeb:0x1181376171a190ed!2m2!1', '-99.158022', '19.416912'),
(7, 'MEX00007', 'El Point Vene', 'México', 'Ciudad de Mexico', 'Benito Juárez', 'Av. Patriotismo ', '322', NULL, 'Comida venezolana', 'restaurante', 'Arepas, Tequeños', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '525577071908', NULL, 'https://www.instagram.com/elpointvene/', NULL, NULL, 'elpointve@gmail.com', 'https://www.google.com.mx/maps/dir//Avenida+Patriotismo+322,+San+Pedro+de+los+Pinos,+Benito+Ju%C3%A1rez,+03800+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.3898067,-99.1873934,15.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff7b064ae2bd:0xa246553d61cbba8!2m2', '-99.182168', '19.392852'),
(8, 'MEX00008', 'La Carajita CDLM', 'México', 'Ciudad de Mexico', 'Cuauhtémoc', 'Medellín ', '221', NULL, 'Comida venezolana', 'restaurante', 'Arepas, Empanadas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/lacarajitacdlm/', 'https://www.facebook.com/La-Carajita-CDLM-159526227944161/', NULL, NULL, 'https://www.google.com.mx/maps/dir//Medell%C3%ADn+221,+Roma+Sur,+Cuauht%C3%A9moc,+06760+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.4085937,-99.1664262,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff3e4f171979:0xc082f2ae1370681b!2m2!1d-99.164416!2d19.41017', '-99.164362', '19.410147'),
(9, 'MEX00009', 'Los Panas', 'México', 'Ciudad de Mexico', 'Azcapotzalco', 'Calle Frambuesa', '61', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Hamburguesa, Pepito', NULL, NULL, NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '525513769192', NULL, 'https://www.instagram.com/lospanasrestaurant/', 'https://www.facebook.com/Lospanasrestaurantmx/', NULL, 'lospanasrestaurant@gmail.com', 'https://www.google.com.mx/maps/dir//Calle+Frambuesa+61,+Nueva+Santa+Mar%C3%ADa,+Azcapotzalco,+02800+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.4595832,-99.1691269,16.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1f894b32fec07:0xc717feece17c1c7c!2m2!1d-99.167', ' -99.167705', '19.460247'),
(10, 'MEX00010', 'Palito E\' Romero', 'México', 'Ciudad de Mexico', 'Miguel Hidalgo', 'Av. Revolución ', '74', NULL, 'Comida venezolana', 'restaurante', 'Arepas', NULL, '', NULL, '10:00 - 19:00', '10:00 - 19:00', '10:00 - 19:00', '10:00 - 19:00', '10:00 - 19:00', '10:00 - 19:00', NULL, '525586610025', NULL, 'https://www.instagram.com/palitoeromeromx/', 'https://www.facebook.com/palitoeromeromx/', NULL, 'palitoeromerorestaurante@gmail.com', 'https://www.google.com.mx/maps/dir//Palito+E\'+Romero,+Av.+Revoluci%C3%B3n+74,+Escand%C3%B3n+I+Secc,+Miguel+Hidalgo,+11800+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.4043943,-99.1844354,17.38z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff925ed28211:0xff535b6', ' -99.184280', '19.404953'),
(11, 'MEX00011', 'La Trattoria de la arepa', 'México', 'Ciudad de Mexico', 'Tlalcoligia', 'Calle yaquis', ' 69', NULL, 'Comida venezolana', 'restaurante', 'Arepa', NULL, NULL, NULL, '09:30 - 22:30', '09:30 - 22:30', '09:30 - 22:30', '09:30 - 22:30', '09:30 - 22:30', '09:30 - 22:30', NULL, '525555735287', NULL, 'https://www.instagram.com/trattoriarepa_/', 'https://www.facebook.com/trattoriadelarepa/', '', 'trattoriadelaarepa@hotmail.com', 'https://www.google.com/maps/dir//El+Papagayo,+Yaquis+69,+Tlalcoligia,+Tlalpan,+14430+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.2759131,-99.173263,16.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85ce0092466823db:0x39f8526446c15455!2m2!1d-99.1717148!2d19.276243', '-99.171701', '19.276247'),
(12, 'MEX00012', 'La Hallaca', 'México', 'Ciudad de Mexico', 'Polanco', 'Av Ejército Nacional', '646', NULL, 'Comida venezolana', 'restaurante', 'Arepa', NULL, NULL, NULL, '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '525552031597', NULL, 'https://www.instagram.com/la_hallaca_restaurante/', 'https://www.facebook.com/restaurante.lahallaca', '', 'restaurantelahallaca@gmail.com', 'https://www.google.com/maps/dir//La+Hallaca,+Av+Ej%C3%A9rcito+Nacional+646,+Polanco,+Col.+Irrigaci%C3%B3n,+Miguel+Hidalgo,+11550+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4291609,-99.2009898,14.29z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d20204217aa3cf:0x64afa', '-99.195827', '19.437932'),
(13, 'MEX00013', 'Arepas Hot', 'México', 'Ciudad de Mexico', 'Polanco', 'Lago Hielmar', '108', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', NULL, 'delivery propio', NULL, '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', '09:00 - 18:00', NULL, '525529313747', NULL, 'https://www.instagram.com/arepashot/', 'https://www.facebook.com/ArepasHot/', '', 'arepashot.gmb@gmail.com', 'https://www.google.com/maps/dir//AREPAS+HOT,+Lago+Hielmar+108,+Dos+Lagos,+Miguel+Hidalgo,+11320+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4415264,-99.1917968,16.96z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d202086fc40075:0xd9c2406686a14255!2m2!1d-99.191874!2d19', '-99.191858', '19.443039'),
(14, 'MEX00014', 'El Sazón venezolano', 'México', 'Ciudad de Mexico', 'Jesus del Monte', 'Jesús del Monte', '35', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Cachapa, Pabellón', NULL, NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 23:00', '10:00 - 20:00', '10:00 - 18:00', '525568420948', '525568420948', 'https://www.instagram.com/elsazonvenezolano.hq/', 'https://www.facebook.com/elsazonvenezolano/', 'https://www.elsazonvenezolano.com/', 'administracion@elsazonvenezolano.com', 'https://www.google.com/maps/place/El+Sazon+Venezolano/@19.3944481,-99.2902006,19.54z/data=!4m5!3m4!1s0x85d206c58cf5fabb:0xdcd7fb576c73cb61!8m2!3d19.3945568!4d-99.2901273', '-99.290112', '19.394549'),
(15, 'MEX00015', 'Kosinapia Venezolana', 'México', 'Ciudad de Mexico', 'Miguel Hidalgo', ' Lago Gascasónica ', '46', '91', 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño', NULL, NULL, NULL, '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '09:00 - 17:00', '525584160980', NULL, 'https://www.instagram.com/kosinapiavenezolana/', 'https://www.facebook.com/kosinapiavenezolana/', 'https://kosinapia-venezolana.ueniweb.com/', 'kosinapiavenezolano@gmail.com', 'https://www.google.com/maps/dir//Kosinapia+Venezolana,+Lago+Gascas%C3%B3nica+46,+San+Diego+Ocoyoacac,+Miguel+Hidalgo,+11290+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4578985,-99.1926228,15.75z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d203a5ed26ac4f:0x58ab0c59ce', '-99.191814', '19.461572'),
(16, 'MEX00016', 'Catira Obscura', 'México', 'Ciudad de Mexico', 'Benito Juárez', 'Av. Coyoacán', '124', NULL, 'Comida venezolana', 'restaurante', 'Empanada, Arepa, Patacon', NULL, NULL, NULL, NULL, '12:00 - 20:00', '12:00 - 20:00', '12:00 - 22:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 17:00', '525511076254', NULL, 'https://www.instagram.com/catiraobscura/', 'https://www.facebook.com/CatiraObscuraRestBar/', '', 'catiraobscura@hotmail.com', 'https://www.google.com/maps/dir//Catira+Obscura,+Av.+Coyoac%C3%A1n+124,+c%C3%B3digo+2,+Col+del+Valle+Nte,+Benito+Ju%C3%A1rez,+03100+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.3969389,-99.1671015,17.08z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff12a67fcfa3:0x26', '-99.166886', '19.396696'),
(17, 'MEX00017', 'La Areperia', 'México', 'Ciudad de Mexico', 'Cuauhtémoc', 'Calle Salamanca', '32', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Patacon', NULL, NULL, NULL, '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '09:00 - 23:00', '525580956617', NULL, 'https://www.instagram.com/areperia_mx/', 'https://www.facebook.com/areperiamx/', 'https://www.laareperiamx.com/', 'mxsazon@gmail.com', 'https://www.google.com/maps/dir//Calle+Salamanca+32,+Roma+Nte.,+Cuauht%C3%A9moc,+06700+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4205949,-99.1700524,18.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff486f046b2d:0x14dab542d2a639d4!2m2!1d-99.1696819!2d19.4207825', '-99.169704', '19.420776'),
(18, 'MEX00018', 'Arepas Mi Reyna', 'México', 'Ciudad de Mexico', 'Insurgentes Mixcoac', 'Augusto Rodin', '410', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Tequeño, Hallaca', NULL, NULL, NULL, '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 20:00', '12:00 - 18:00', 'CERRADO', '525570947276', NULL, 'https://www.instagram.com/arepasmireyna/', 'https://www.facebook.com/arepasmireyna/', NULL, 'arepasmireyna@gmail.com', 'https://www.google.com/maps/dir//AREPAS+mi+reyna,+Augusto+Rodin+410,+Insurgentes+Mixcoac,+Benito+Ju%C3%A1rez,+03920+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.372779,-99.1804048,15.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff844b1aaaab:0x328bda39f209ee66!2m', '-99.182784', '19.375079'),
(19, 'MEX00019', 'Ají Picante Bistro', 'México', 'Ciudad de Mexico', 'Benito Juárez', 'Miguel Laurent', '509', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Tequeño, Patacon', NULL, NULL, NULL, '11:30 - 08:30', '11:30 - 08:30', '11:30 - 08:30', '11:30 - 08:30', '11:30 - 08:30', '10:00 - 17:00', 'CERRADO', '525568359680', NULL, 'https://www.instagram.com/ajipicantebistro/', NULL, NULL, 'ajipicantebistro@yahoo.com', 'https://www.google.com/maps/dir//Aj%C3%AD+Picante+Bistro,+Miguel+Laurent+509,+Col+del+Valle+Centro,+Benito+Ju%C3%A1rez,+03100+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.375374,-99.1678296,16.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ffa28b7c26cf:0xf64a290747', '-99.166467', '19.375412'),
(20, 'MEX00020', 'Grill 58', 'México', 'Ciudad de Mexico', 'Miguel Hidalgo', 'Lago Alberto ', '320', NULL, 'Comida rápida venezolana', 'restaurante', 'Pepito, Shawarma, Patacon', NULL, NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '11:00 - 21:00', '525573453744', NULL, 'https://www.instagram.com/grill58mx/', NULL, ' ', 'grill58mx@gmail.com', 'https://www.google.com/maps/dir//GRILL+58,+Lago+Alberto+320,+Granada,+Miguel+Hidalgo,+11520+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4421907,-99.1860766,16z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1f968c97e06db:0xf278d4608368aa2c!2m2!1d-99.1844401!2d19.44014', '-99.184433', '19.440153'),
(21, 'MEX00021', 'Pardago', 'México', 'Ciudad de Mexico', 'Huizachito', 'Av. Noche de Paz ', '14', NULL, 'Comida venezolana', 'restaurante', 'Cachito, Empanada, Arepa', NULL, NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '09:00 - 17:00', '09:00 - 15:00', '5215518717822', NULL, 'https://www.instagram.com/pardago_/', NULL, '', 'pana@pardago.com', 'https://www.google.com/maps/dir//KASABE+GOURMET+(Antiguo+Pardago),+Av+Noche+de+Paz+14,+Huizachito,+Cuajimalpa+de+Morelos,+05249+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.3721342,-99.2746184,14.92z/data=!4m16!1m6!3m5!1s0x85d200d357268011:0x71c8050fa31d9', '-99.278023', '19.372735'),
(22, 'MEX00022', 'Estación Caracas', 'México', 'Ciudad de Mexico', 'Condesa', 'Nuevo Leon', '73', NULL, 'Discoteca', 'discoteca', 'Rumba, Merengue, Salsa, Bachata', NULL, NULL, NULL, '-', '-', '-', '-', '-', '-', 'Disponible', '5548276101 / 5523464579', NULL, 'https://www.instagram.com/estacioncaracascdmx/', 'https://l.instagram.com/?u=https%3A%2F%2Fm.facebook.com%2FEstacionCaracasMX%2F&e=ATOHc9hAcUNhaww6ToqZ4dvAOwxMmHiya4DZmJb-fY_FNWimEOIrVb0e7AMjuDJZAR1OOr1Ct9da_Zbt&s=1', NULL, NULL, 'https://www.google.com.ar/maps/dir//Av+Nuevo+Le%C3%B3n+73,+Hip%C3%B3dromo,+Cuauht%C3%A9moc,+06100+Ciudad+de+M%C3%A9xico,+CDMX,+M%C3%A9xico/@19.4152972,-99.1726328,15.5z/data=!4m8!4m7!1m0!1m5!1m1!1s0x85d1ff4147458db1:0x4eaae8c9834e1a5b!2m2!1d-99.17199', '-99.171997', '19.412699'),
(23, 'MEX00023', 'Mis dos Tierras', 'México', 'Ciudad de Mexico', 'San Rafael', 'Ignacio Manuel Altamirano', '7', '7', 'Restaurante Venezolano', 'restaurante', 'Empanada, Arepa, Tequeño, Sopa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5270423378', NULL, 'https://www.instagram.com/misdostierrascdmx/', NULL, NULL, 'misdostierrascdmx@gmail.com', 'https://www.google.com.ar/maps/dir//Mis+Dos+Tierras,+Ignacio+Manuel+Altamirano+7,+San+Rafael,+Cuauht%C3%A9moc,+06470+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4442332,-99.1686105,14.29z/data=!4m16!1m6!3m5!1s0x0:0xef317c3b1da968d2!2sMis+Dos+Tierras!8m2!', '-99.161824', '19.441529'),
(24, 'MEX00024', 'Sabana Grande Food', 'Argentina', 'Ciudad de Mexico', 'Juárez', 'Versalles', '88B', NULL, 'Gastronomía venezolana', 'restaurante', 'Cachapa, Tequeño, Pastelito, Arepa', NULL, NULL, NULL, NULL, '10:30 - 23:00', '10:30 - 23:00', '10:30 - 23:00', '10:30 - 01:00', '10:30 - 01:00', '10:30 - 20:00', '525510997428', NULL, 'https://www.instagram.com/sabanagrandefood/', NULL, NULL, 'sabanagrandefood@gmail.com', 'https://www.google.com.ar/maps/dir//Sabana+Grande+Food,+Calle+Versalles+88B,+Ju%C3%A1rez,+Cuauht%C3%A9moc,+06600+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4384837,-99.1685898,13.67z/data=!4m16!1m6!3m5!1s0x0:0xc46f3fced7463a35!2sSabana+Grande+Food!8m2!3', '-99.155637', '19.427589'),
(25, 'MEX00025', 'Los Chamos Restaurante', 'México', 'Ciudad de Mexico', 'Narvarte Oriente', 'Diagonal San Antonio ', '1689', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Cachapa', NULL, NULL, NULL, '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', '11:00 - 22:00', '09:00 - 06:00', '525555193759', NULL, 'https://www.instagram.com/los_chamos/', NULL, NULL, 'loschamosrest@gmail.com', 'https://www.google.com.ar/maps/dir//Los+Chamos,+Diagonal+San+Antonio+1689,+Narvarte+Oriente,+Benito+Ju%C3%A1rez,+03020+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4288718,-99.1671351,12.96z/data=!4m16!1m6!3m5!1s0x0:0x7a0ad8fce6146bf4!2sLos+Chamos!8m2!3d1', '-99.151313', '19.398552'),
(26, 'MEX00026', 'Sabor Andino', 'México', 'Ciudad de Mexico', NULL, 'Campeche', '101', '33', 'Productos venezolanos', 'restaurante', 'Empanada, Tequeño, Cachito', NULL, NULL, NULL, '09:00 - 17:30', '09:00 - 17:30', '09:00 - 17:30', '09:00 - 17:30', '09:00 - 17:30', '09:00 - 17:30', '09:00 - 17:30', '525540731207', NULL, 'https://www.instagram.com/sabor_andino_mx/', 'https://l.instagram.com/?u=https%3A%2F%2Fwww.facebook.com%2Fpg%2FSaborAndinomx%2Fabout%2F&e=ATM_EfWDE62xNqtgxziNnTkVbGB0xC1qOVOWr0FHifrUgmJw0Tpd8PJpkFOkrovq4X6a-aeYmuHeWOo8pewdMGbRK6uUH8eE&s=1', NULL, 'localandino20@gmail.com', 'https://www.google.com/maps/dir//Mercado+Medell%C3%ADn,+Campeche+101,+Roma+Sur,+Cuauht%C3%A9moc,+06760+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.410247,-99.1656688,17z/data=!4m16!1m6!3m5!1s0x85d1ff3e68afc2e3:0x2c6d8bbc0a993987!2sMercado+Medell%C3%ADn!8', '-99.163489', '19.410225'),
(27, 'MEX00027', 'Venezuelan Food Truck', 'México', 'Ciudad de Mexico', 'Col del Valle Centro', 'Pilares', '94', NULL, 'Food Truck de comida venezolana', 'restaurante', 'Tequeño, Cachapa, Pepito', NULL, NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', NULL, '525534625096', NULL, 'https://www.instagram.com/vzla.fusionmx/', NULL, NULL, 'venezuelafoodtruckmx@gmail.com', 'https://www.google.com/maps/dir//Vzla,+Adolfo+Prieto+1355,+Col+del+Valle+Centro,+Benito+Ju%C3%A1rez,+03100+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.3817532,-99.1672727,15z/data=!4m16!1m6!3m5!1s0x85d1ffba48428a5b:0xc02da6d86f502ce8!2sVzla!8m2!3d19.3791', '-99.171200', '19.379122'),
(28, 'MEX00028', 'Wasakaka’s House', 'México', 'Ciudad del Carmen', 'Playa Nte', 'Avenida Heroes', '21', NULL, 'Comida con sazón venezolana', 'restaurante', 'Empanada, Arepa, Sopa, Cachapa', NULL, NULL, NULL, '08:00 - 16:00', '08:00 - 16:00', '08:00 - 16:00', '08:00 - 16:00', '08:00 - 16:00', NULL, '10:00 - 16:00', '529841118751', NULL, 'https://www.instagram.com/wasakaka_house/', NULL, NULL, 'carlitza@gmail.com', 'https://www.google.com/maps/dir//Wasakaka%C2%B4s+House+antigua+Casa+Venezuela,+Avenida+Heroes+21+de+Abril+5,+Playa+Nte.,+24115+Cd+del+Carmen,+Camp.,+Mexico/@18.655093,-91.8318476,14.5z/data=!4m16!1m6!3m5!1s0x85f1a95178cbdb53:0x1ea5715641f9c943!2sWasa', '-91.835270', '18.660511'),
(29, 'MEX00029', 'El Arepazo', 'México', 'Ciudad del Carmen', '', 'Av. Central ', 'L-6', NULL, 'Restaurante venezolano', 'restaurante', 'Hamburguesa, Patacon, Tequeño', NULL, NULL, NULL, '07:00 - 23:00', '07:00 - 23:00', '07:00 - 23:00', '07:00 - 23:00', '07:00 - 23:00', '07:00 - 23:00', '07:00 - 23:00', '529381068102', NULL, 'https://www.instagram.com/elarepazo_carmen/', 'https://www.facebook.com/El-Arepazo-236343133569842/', NULL, '', 'https://www.google.com/maps/dir//EL+AREPAZO,+Av+Central+7,+Santa+Isabel+(Renovaci%C3%B3n+VI),+Solidaridad+Urbana,+24155+Cd+del+Carmen,+Camp.,+Mexico/@18.6574642,-91.7942963,13.46z/data=!4m9!4m8!1m0!1m5!1m1!1s0x85f1065adaaaaaab:0x77e7e318da7ab660!2m2!', '-91.781039', '18.645206'),
(30, 'MEX00030', 'Pura Vida Gourmet', 'México', 'Ciudad del Carmen', 'Playa Norte', 'Av Juárez ', '2', NULL, 'Comida venezolana ', 'restaurante', 'Arepa, Tequeño, Almuerzo', NULL, NULL, NULL, '08:00 - 15:00', '08:00 - 15:00', '18:00 - 03:00', '08:00 - 15:00', '08:00 - 15:00', '08:00 - 15:00', NULL, '529383892774', NULL, 'https://www.instagram.com/puravidagourmet/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Pura+Vida+Gourmet,+Av+Ju%C3%A1rez+2,+Playa+Nte.,+24115+Cd+del+Carmen,+Camp.,+Mexico/@18.6589245,-91.8346987,14.87z/data=!4m16!1m6!3m5!1s0x0:0x442e08258bae0502!2sPura+Vida+Gourmet!8m2!3d18.6619212!4d-91.8332952!4m8!1m0', '-91.833266', '18.661927'),
(31, 'MEX00031', 'Budare Andino', 'México', 'Ciudad de Mexico', 'Roma Norte', 'Coahuila ', '105', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Tequeño ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '525588057251', NULL, 'https://www.instagram.com/budareandinomx/', NULL, NULL, 'budareandinomx@gmail.com', 'https://www.google.com/maps/dir//Coahuila+105,+Roma+Nte.,+Cuauht%C3%A9moc,+06700+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.412233,-99.1637577,15.79z/data=!4m17!1m7!3m6!1s0x85d1ff3c4e05243f:0x7695c8c12a5205ed!2sCoahuila+105,+Roma+Nte.,+Cuauht%C3%A9moc,+', '-99.160347', '19.411854'),
(32, 'MEX00032', 'Fogon Venezolano', 'México', NULL, 'La Florida ', 'Blvd. Manuel Ávila Camacho ', '1495', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Tequeño, Cachapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '525570952782', NULL, 'https://www.instagram.com/fogon_venezolano/', NULL, NULL, 'fogonvenezolano_mex@hotmail.com', 'https://www.google.com/maps/dir//Perif.+Blvd.+Manuel+%C3%81vila+Camacho+1495,+La+Florida,+53160+Naucalpan+de+Ju%C3%A1rez,+M%C3%A9x.,+Mexico/@19.5043971,-99.237233,13.75z/data=!4m17!1m7!3m6!1s0x85d2031fb2c547a9:0x66e930fa6783be5b!2sPerif.+Blvd.+Manuel', '-99.236159', '19.495989'),
(33, 'MEX00033', 'Las Gochas de la esquina', 'México', 'Ciudad de Mexico', 'Miguel Hidalgo', 'Av. Revolución ', '74', NULL, 'Restaurante de comida venezolana', 'restaurante', 'Empanada, Pastelito, Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '525586610025', NULL, 'https://www.instagram.com/lasgochascdmx/', NULL, NULL, 'palitoeromerorestaurante@gmail.com', 'https://www.google.com/maps/dir//Av.+Revoluci%C3%B3n+74,+Escand%C3%B3n+I+Secc,+Miguel+Hidalgo,+11800+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4242357,-99.2004239,13.75z/data=!4m17!1m7!3m6!1s0x85d1ff60d2b41973:0x9a0c60dfe4540ec9!2sAv.+Revoluci%C3%B3n+7', '-99.184346', '19.404940'),
(34, 'MEX00034', 'Panas y Güeyes', 'México', 'Ciudad de Mexico', 'Santa Cruz ', 'Avenida Popocatepeti ', '415', NULL, 'Restaurante Fusión ', 'restaurante', 'Arepa, Cachapa, Pastelito ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5215545575726', NULL, 'https://www.instagram.com/panasygueyes_/', NULL, 'http://panasygueyes.com/', 'panasygueyesfusionbar@gmail.com', 'https://www.google.com/maps/dir//Av.+Popocat%C3%A9petl+415,+Sta+Cruz+Atoyac,+Benito+Ju%C3%A1rez,+03310+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.3646217,-99.1624677,16.25z/data=!4m17!1m7!3m6!1s0x85d1ffb8df49c021:0x6e820ecc3fe6b78a!2sAv.+Popocat%C3%A9pe', '-99.161372', '19.364824'),
(35, 'MEX00035', 'Maiquetia restaurante', 'México', 'Ciudad de Mexico', 'Benito Juárez', 'Zempoala ', '56', NULL, 'Comida venezolana', 'restaurante', 'Arepa, Empanada, Patacon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '525554763799', NULL, 'https://www.instagram.com/maiquetia_restaurant/', NULL, NULL, 'karlajosedelvalle@gmail.com', 'https://www.google.com/maps/dir//Zempoala+56,+Narvarte+Poniente,+Benito+Ju%C3%A1rez,+03020+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.3989271,-99.1507436,16z/data=!4m17!1m7!3m6!1s0x85d1ff1d1ad3ca45:0x85ab9bb47c31b77c!2sZempoala+56,+Narvarte+Poniente,+Be', '-99.147786', '19.399569'),
(36, 'MEX00036', 'Chicken Gourmet', 'México', 'Ciudad de Mexico', 'Roma Norte', 'Chihuahua', '115', NULL, 'Pollo Frito', 'restaurante', 'Pollo Frito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/chickengourmet.cdmx/?hl=en', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Chihuahua+115,+Roma+Nte.,+Cuauht%C3%A9moc,+06700+Ciudad+de+M%C3%A9xico,+CDMX,+Mexico/@19.4197281,-99.1623485,16.25z/data=!4m17!1m7!3m6!1s0x85d1ff3a54f3eb5f:0x142d9918c12fc53b!2sChihuahua+115,+Roma+Nte.,+Cuauht%C3%A9mo', '-99.159666', '19.417518');



CREATE TABLE `BUSCATUAREPA_PRT` (
  `ID` int(11) NOT NULL COMMENT 'AUTO',
  `COD` varchar(10) NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `PAIS` varchar(30) DEFAULT NULL,
  `CIUDAD` enum('Oporto') DEFAULT NULL,
  `BARRIO` varchar(30) DEFAULT NULL,
  `CALLE` varchar(30) DEFAULT NULL,
  `ALTURA` varchar(10) DEFAULT NULL,
  `LOCAL` varchar(10) DEFAULT NULL,
  `DESCRIPCION` varchar(250) DEFAULT NULL,
  `CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio') NOT NULL,
  `ETIQUETAS` varchar(100) DEFAULT NULL,
  `NAVIDAD` varchar(100) DEFAULT NULL,
  `DELIVERY` enum('delivery propio','glovo','masdelivery','pedidos ya','rappi','uber eats') DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) DEFAULT NULL,
  `LUNES` varchar(30) DEFAULT NULL,
  `MARTES` varchar(30) DEFAULT NULL,
  `MIERCOLES` varchar(30) DEFAULT NULL,
  `JUEVES` varchar(30) DEFAULT NULL,
  `VIERNES` varchar(30) DEFAULT NULL,
  `SABADO` varchar(30) DEFAULT NULL,
  `DOMINGO` varchar(30) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  `WHATSAPP` varchar(30) DEFAULT NULL,
  `INSTAGRAM` varchar(250) DEFAULT NULL,
  `FACEBOOK` varchar(250) DEFAULT NULL,
  `WEB` varchar(100) DEFAULT NULL,
  `CORREO` varchar(50) DEFAULT NULL,
  `RUTA_GOOGLE` varchar(250) DEFAULT NULL,
  `X` varchar(11) NOT NULL,
  `Y` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `BUSCATUAREPA_URY` (
  `ID` int(11) NOT NULL,
  `COD` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Montevideo','Punta del Este') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CALLE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ALTURA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LOCAL` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('delivery propio','glovo','pedidos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RUTA_GOOGLE` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `X` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Y` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `BUSCATUAREPA_URY` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `CALLE`, `ALTURA`, `LOCAL`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`, `RUTA_GOOGLE`, `X`, `Y`) VALUES
(1, 'URY00001', 'Arepera Paladar', 'Uruguay', 'Montevideo', 'Cordón', 'Magallanes', '1566', NULL, 'Comida Venezolana', 'restaurante', 'Arepa, Empanada, Cachapa, Tequeño', 'Hallaca', '', NULL, '10:00 - 15:00 / 19:00 - 00:00', '10:00 - 15:00 / 19:00 - 00:00', '10:00 - 15:00 / 19:00 - 00:00', '10:00 - 15:00 / 19:00 - 00:00', '10:00 - 15:00 / 19:00 - 00:00', '10:00 - 15:00 / 19:00 - 00:00', NULL, '24072872', NULL, 'https://www.instagram.com/areperapaladar/', NULL, NULL, 'areperapaladar@hotmail.com', 'https://www.google.com/maps/dir//Magallanes+1566,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.8876199,-56.1713685,14.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f804a82e25b1f:0x2700659301758811!2m2!1d-56.1810352!2d-34.9005853', ' -56.181035', '-34.90046'),
(2, 'URY00002', 'Brados Burger', 'Uruguay', 'Montevideo', 'Pocitos', '26 de Marzo', '1303', NULL, 'Hamburquesas', '', 'hamburguesas, tequeños ', NULL, '', NULL, 'Cerrado', '20:00 - 00:00', '20:00 - 00:00', '20:00 - 00:00', '12:00 - 14:45 / 20:00 - 00:30', '12:00 - 14:45 / 20:00 - 00:30', '12:00 - 14:45 / 20:00 - 00:30', '27088980 ', ' 598099907745', 'https://www.instagram.com/bradosburguer/', 'https://www.facebook.com/bradosburguer/', NULL, 'bradosmontevideo@gmail.com', 'https://www.google.com/maps/dir//26+de+Marzo+1306,+Montevideo+Montevideo+Department,+Uruguay/@-34.9000485,-56.2004174,12.79z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f811243cd52d1:0x2bf5aa55a930932!2m2!1d-56.1470704!2d-34.9085816', '-56.146982', '-34.908625'),
(6, 'URY00006', 'Expresion Gourmet', 'Uruguay', 'Montevideo', 'Centro', 'San José', '1150', NULL, 'Comida Venezolana', 'restaurante', 'Arepa, Tequeño, Empanada', 'Hallaca', NULL, NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '11:30 - 16:30', NULL, NULL, NULL, 'https://www.instagram.com/expresiongourmet/', NULL, 'https://expresion-gourmet.negocio.site/', 'expresiongourmet.uy@gmail.com', 'https://www.google.com/maps/dir//San+Jos%C3%A9+1150,+Montevideo+Montevideo+Department,+Uruguay/@-34.9111471,-56.1943586,15.71z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f81cd6a012be1:0x77a404621609edb4!2m2!1d-56.1913023!2d-34.9069809', '-56.191345', '-34.907076'),
(7, 'URY00007', 'Icons RestoPub & Music!', 'Uruguay', 'Montevideo', 'Cordón', 'Av. Gral. Rivera ', '2049', NULL, '', '', 'música', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24004930', '59894200281', 'https://www.instagram.com/iconsrestopub/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Av.+Gral.+Rivera+2049,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.8999367,-56.1750437,16.08z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f81b258e842b7:0x127ef8a709abdead!2m2!1d-56.1720265!2d-34.9021775', '-56.1720173', '-34.902127'),
(8, 'URY00008', 'La Gran Arepa', 'Uruguay', 'Montevideo', 'Cordón', ' Dr Tristán Narvaja', '1545', NULL, 'Comida Venezolana. Delivery, catering, fiestas, reuniones.', 'restaurante', 'Arepa, Cachapa, Tequeño', 'Hoja para Hallaca, Harina, Alcaparra, Hallaca', NULL, NULL, NULL, NULL, NULL, 'Solo delivery', 'Solo delivery', 'Solo delivery', '09:00 - 16:00', '093303625', NULL, 'https://www.instagram.com/lagranarepa/', 'https://www.facebook.com/', NULL, 'lisethmorillo.lm@gmail.com', 'https://www.google.com/maps/dir//Dr+Trist%C3%A1n+Narvaja+1545,+Montevideo+Montevideo+Department,+Uruguay/@-34.9015174,-56.177894,16.71z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f81b4d375386b:0x9f165076ff7e1bda!2m2!1d-56.177989!2d-34.9017212', '-56.177865', '-34.901731'),
(9, 'URY00009', 'Rumba Caracas de Noche', 'Uruguay', 'Montevideo', 'Punta Carretas', 'Agraciada', '2842', NULL, 'rumbas ', '', 'Discoteca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59892100640', NULL, 'https://www.instagram.com/rumbacaracasdenoche/', 'https://www.facebook.com/RumbaCaracasDeNoche', NULL, 'rumbacaracasdenoche@gmail.com', 'https://www.google.com/maps/dir//Centro+Cultural+Armenio,+Agraciada,+11800+Joaqu%C3%ADn+Su%C3%A1rez,+Departamento+de+Canelones,+Uruguay/@-34.8781964,-56.1961077,19z/data=!4m16!1m6!3m5!1s0x959f8004b5503719:0x64f625e08075a804!2sCentro+Cultural+Armenio!', '-56.196352', '-34.878319'),
(12, 'URY00012', 'Paladar Uruguay', 'Uruguay', 'Montevideo', 'Palermo', 'Gonzalo Ramírez ', '1451', NULL, 'comida tradicional venezolana', 'restaurante', 'Arepa, Tequeño, Empanada', 'Hoja para Hallaca, Hallaca, Plato Navideño', NULL, NULL, '11:00 - 15:30 / 19:00 - 00:30', '11:00 - 15:30 / 19:00 - 00:30', '11:00 - 15:30 / 19:00 - 00:30', '11:00 - 15:30 / 19:00 - 00:30', '11:00 - 15:30 / 19:00 - 00:30', '11:00 - 15:30 / 19:00 - 00:30', '11:00 - 15:30 / 19:00 - 00:30', '24108381', '59893650150', 'https://www.instagram.com/paladaruruguay/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Paladar/@-34.9106977,-56.183675,17.25z/data=!4m8!4m7!1m0!1m5!1m1!1s0x0:0xada489e7f60aeca4!2m2!1d-56.1838007!2d-34.9125471', '-56.183717', '-34.91242'),
(13, 'URY00013', 'POI DEPÜ', 'Uruguay', 'Montevideo', 'Parque Rodó', 'Maldonado ', '1994', NULL, 'comida tradicional venezolana', 'restaurante', 'Tequeño, Empanada, Golfeado', 'Hallaca', '', NULL, '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', NULL, '59824105682 ', NULL, 'https://www.instagram.com/poidepu_uy/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Maldonado+1994,+Montevideo+Montevideo+Department,+Uruguay/@-34.9056308,-56.1724626,16.42z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f81b06629e2c3:0x98b6eda7b84ed9c9!2m2!1d-56.1721301!2d-34.9084491', '-56.17213', '-34.908401'),
(14, 'URY00014', 'Tepuy Coffee Bar', 'Uruguay', 'Montevideo', 'Trouville', 'Roque Graseras', '829', NULL, 'coffee bar, postres y comida tradicional venezolana', 'restaurante', 'Arepa, Cachito, Golfeado', 'Pan de Jamon', NULL, NULL, NULL, '08:30 - 20:00', '08:30 - 20:00', '08:30 - 20:00', '08:30 - 20:00', '11:00 - 19:00', '11:00 - 19:00', '27142220', NULL, 'https://www.instagram.com/tepuycoffeebar/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Roque+Graseras+829,+11300+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9189056,-56.1599112,15.08z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f8173b7692537:0xe1e0d7d38a6a5790!2m2!1d-56.151079!2d-34.9160916', '-56.15108', '-34.91605'),
(16, 'URY00016', 'Papa-Rike', 'Uruguay', 'Montevideo', 'Pocitos', 'Juan Benito Blanco', '1019', NULL, 'Espacio dedicado a mostrar en Montevideo el sabor venezolano', 'restaurante', 'Arepa, Tequeño, Empanada', 'Plato Navideño, Pan de Jamon', 'delivery propio', NULL, NULL, '13:00 - 00:00', '13:00 - 00:00', '13:00 - 00:00', '13:00 - 00:00', '13:00 - 00:00', '12:00 - 22:00', '27051997', '59891828646', 'https://www.instagram.com/paparike_uy/', 'https://www.facebook.com/PaparikeUY/', NULL, 'paparike.srl@gmail.com', 'https://www.google.com/maps/dir//Paparike+Restaurante+Venezolano,+Juan+Benito+Blanco+1019,+11300+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9129084,-56.1502515,18z/data=!4m16!1m6!3m5!1s0x959f816d5a1f0b77:0xb66979205c566366!2sPaparike+Restau', '-56.148222', '-34.912871'),
(17, 'URY00017', 'Qué Vaina', 'Uruguay', 'Montevideo', 'Montevideo', 'Av General Rivera', '2984', NULL, 'Bar de tapas y tragos de productos venezolanos adaptados,', 'restaurante', 'Arepa, Empanada, Tequeño', 'Hallaca', NULL, NULL, '20:00 - 23:30', '20:00 - 23:30', '20:00 - 23:30', '20:00 - 23:30', '20:00 - 01:00', '20:00 - 01:00', 'Cerrada', '59827096018', NULL, 'https://www.instagram.com/quevainabar/', 'https://www.facebook.com/qvainabar/', NULL, 'quevainabar@gmail.com', 'https://www.google.com/maps/dir//Que+Vaina!,+Av.+Gral.+Rivera+2984,+11600+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9030673,-56.1532444,17z/data=!4m16!1m6!3m5!1s0x959f810f7cf1ab85:0xcb2ed5ce2a791d39!2sQue+Vaina*21!8m2!3d-34.9031756!4d-56.1', '-56.151382', '-34.903154'),
(18, 'URY00018', 'Stereo Pizza', 'Uruguay', 'Montevideo', 'Centro', 'Yaguarón', '1422', NULL, 'Pizzas - Burgers - Café - Menú - Arepas - Tequeños - Meriendas - Desayunos', 'restaurante', 'Hamburguesa, Arepa, Tequeño', NULL, NULL, NULL, '11:00 - 00:00', '11:00 - 00:00', '11:00 - 00:00', '11:00 - 00:00', '11:00 - 00:00', '19:00 - 00:00', 'Cerrado', '59829049272', NULL, 'https://www.instagram.com/stereopizza/', 'https://www.facebook.com/stereopizzauy/', 'https://stereo-pizza.business.site/', 'hola@stereopizza.com.uy', 'https://www.google.com/maps/dir//Stereo+Pizza,+Yaguar%C3%B3n+1422,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9043148,-56.1902072,17z/data=!4m16!1m6!3m5!1s0x959f81eb60d18153:0x16be8ee0fc139de!2sStereo+Pizza!8m2!3d-34.904315!4d-56.1880', '-56.188053', '-34.904148'),
(20, 'URY00020', 'Kiosko \"La Casita Express\"', 'Uruguay', 'Montevideo', 'Cordón', 'Dr Tristán Narvaja', '1551', NULL, 'Productos venezolanos', 'local', 'Harina, Queso, Dulces', 'Hoja para Hallaca, Hallaca', NULL, NULL, '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', '09:00 - 19:00', 'Cerrado', '08:30 - 15:00', '59824075855', NULL, 'https://www.instagram.com/kioskolacasita/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Kiosko+La+Casita,+Dr+Trist%C3%A1n+Narvaja+1551,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9026699,-56.1791667,17z/data=!4m16!1m6!3m5!1s0x959f81ec5bbacfcd:0x7f00017550fdb149!2sKiosko+La+Casita!8m2!3d-3', '-56.178054', '-34.901327'),
(22, 'URY00022', 'Chicha Maracucha', 'Uruguay', 'Montevideo', 'Cordón', 'Dr Tristán Narvaja', '1545', NULL, 'Chicha venezolana', 'restaurante', 'Chicha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:00 - 15:00', NULL, NULL, 'https://www.instagram.com/chichamaracuchamontevideo/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Feria+de+Tristan+Narvaja,+Dr+Trist%C3%A1n+Narvaja+1545,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9022741,-56.1795449,17z/data=!4m16!1m6!3m5!1s0x959f804b2d33107b:0x96c7b9f5e31dc82!2sFeria+de+Tristan+N', '-56.177721', '-34.901429'),
(23, 'URY00023', 'Panda Food', 'Uruguay', 'Montevideo', 'Cordón', 'Dr Tristán Narvaja', '1545', NULL, 'Comida china', 'restaurante', 'Arroz, Chino, Lumpia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:00 - 15:00', NULL, NULL, 'https://www.instagram.com/pandafood.uy/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Feria+de+Tristan+Narvaja,+Dr+Trist%C3%A1n+Narvaja+1545,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9022741,-56.1795449,17z/data=!4m16!1m6!3m5!1s0x959f804b2d33107b:0x96c7b9f5e31dc82!2sFeria+de+Tristan+N', '-56.177967', '-34.901499'),
(24, 'URY00024', 'Rincón Venezolano', 'Uruguay', 'Montevideo', 'Cordón', 'Dr Tristán Narvaja', '1545', NULL, 'Comida y sabores Venezolano', 'restaurante', 'Arepa, Empanada', 'Hallaca, Pan de Jamon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:00 - 15:00', NULL, NULL, 'https://www.instagram.com/rinconveneuy/', 'https://www.facebook.com/Ricon.uy/', NULL, 'rvenezolanouy@gmail.com', 'https://www.google.com/maps/dir//Feria+de+Tristan+Narvaja,+Dr+Trist%C3%A1n+Narvaja+1545,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9022741,-56.1795449,17z/data=!4m16!1m6!3m5!1s0x959f804b2d33107b:0x96c7b9f5e31dc82!2sFeria+de+Tristan+N', '-56.177748', '-34.901578'),
(25, 'URY00025', 'Q\' Pasó Pana', 'Uruguay', 'Montevideo', 'Centro', 'Soriano', '899', NULL, 'Restaurante & Pub moderno con un concepto de gastronomía exótica variada y comida saludable', 'restaurante', 'Arepa, Hamburguesa, Tequeño', NULL, NULL, NULL, '17:00 - 00:00', 'Cerrado', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 01:00', '17:00 - 01:00', '17:00 - 01:00', '59829045606', NULL, 'https://www.instagram.com/qpasopana/', 'https://www.facebook.com/qpasopana', 'qpasopana@gmail.com', NULL, 'https://www.google.com/maps/dir//Q\'+Pas%C3%B3+Pana!!,+Soriano+899,+11100+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9080218,-56.1974974,19z/data=!4m16!1m6!3m5!1s0x959f81d346424b5f:0x11f964ff6f7d49f3!2sQ\'+Pas%C3%B3+Pana*21*21!8m2!3d-34.90816', '-56.197107', '-34.908120'),
(26, 'URY00026', 'Mil Pizzas', 'Uruguay', 'Montevideo', NULL, 'Luis de la Torre', '964', NULL, 'Mil sabores, un solo lugar', 'restaurante', 'Hamburguesa, Pizza, Tequeño', NULL, NULL, NULL, '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', 'Cerrado', '27099794', NULL, 'https://www.instagram.com/milpizzasuy/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Mil+Pizzas,+Luis+de+la+Torre+964,+11300+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9129162,-56.1559158,18z/data=!4m16!1m6!3m5!1s0x959f81b9f8d14afd:0x5a02ed2fbb56b3cb!2sMil+Pizzas!8m2!3d-34.9127601!4d-56.1560', '-56.156102', '-34.912726'),
(27, 'URY00027', 'Caracas de Noche', 'Uruguay', 'Montevideo', 'Cordón', 'Tacuarembó', '1566', NULL, 'Hamburguesas. Chivipan. Pepitos. Pizzas. minutas', 'restaurante', 'Pepito, Hamburguesa, Pizza', NULL, NULL, NULL, 'Cerrado', '11:30 - 15:00 / 18:00 - 00:00', '11:30 - 15:00 / 18:00 - 00:00', '11:30 - 15:00 / 18:00 - 00:00', '11:30 - 15:00 / 18:00 - 00:00', '11:30 - 15:00 / 18:00 - 00:00', '11:30 - 15:00 / 18:00 - 00:00', '24085749', NULL, 'https://www.instagram.com/caracasdenoche_mvd/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Caracas+De+Noche,+Calle+Tacuaremb%C3%B3+1566,+11200+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.9030024,-56.183261,17z/data=!4m16!1m6!3m5!1s0x959f81796622f9cb:0xa915709468ec8be7!2sCaracas+De+Noche!8m2!3d-34.9', '-56.183455', '-34.902317'),
(28, 'URY00028', 'Kiosko Kundalini', 'Uruguay', 'Montevideo', 'Jacinto Vera', 'Porongos', '3037', NULL, 'Variedad de productos venezolanos', 'local', 'Harina, Platano, Queso', 'Hoja para Hallaca, Pabilo, Onoto, Alcaparra', NULL, NULL, '09:30 - 19:00', '09:30 - 19:00', '09:30 - 19:00', '09:30 - 19:00', '09:30 - 19:00', '10:00 - 16:00', 'Cerrado', NULL, NULL, 'https://www.instagram.com/kioskokundalini.ve.uy/', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Kundalini,+Porongos+3037,+11800+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.8745274,-56.1769835,18z/data=!4m16!1m6!3m5!1s0x959f806dcd4f879b:0x16a5176f93a857e0!2sKundalini!8m2!3d-34.8741291!4d-56.1763693!4m8!1', '-56.176380', '-34.874068'),
(29, 'URY00029', 'Paladar Lagomar', 'Uruguay', 'Montevideo', 'Ciudad de la Costa', 'Av. Giannattasio', 'KM 21,800 ', NULL, 'Restaurante de gastronomía venezolana', 'restaurante', 'Arepa, Tequeño, Patacon', NULL, 'pedidos ya', NULL, 'Cerrado', ' 11:00 - 01:00 ', ' 11:00 - 01:00 ', ' 11:00 - 01:00 ', '11:00 - 02:00 ', '11:00 - 02:00 ', '11:00 - 01:00 ', NULL, NULL, 'https://www.instagram.com/paladar_lagomar/?hl=en', NULL, NULL, NULL, 'https://www.google.com/maps/dir//Columbia+Market,+Av.+Giannattasio+KM+21,800,+15000+Ciudad+de+la+Costa,+Departamento+de+Canelones,+Uruguay/@-34.8417801,-56.0118491,13.37z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f8b10efb3226f:0xc5662f12c671220f!2m2!1d-55.981', '-55.981184', '-34.834897'),
(30, 'URY00030', 'Aderezos AB', 'Uruguay', 'Montevideo', 'Cordón', 'Tristán Narvaja', '1545', NULL, 'Aderezos y Salsas venezolanas', 'local', 'Guasacaca, Salsa Picante', NULL, 'delivery propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09:00 -  16:00', '598097965680', NULL, 'https://www.instagram.com/aderezos_ab/', NULL, NULL, NULL, 'https://www.google.com/maps/place/Feria+de+Tristan+Narvaja/@-34.9033398,-56.1797973,16z/data=!4m5!3m4!1s0x959f804b2d33107b:0x96c7b9f5e31dc82!8m2!3d-34.9022785!4d-56.1773509', '-56.179351', '-34.899043'),
(31, 'URY00031', 'Deli Express', 'Uruguay', 'Montevideo', 'Villa Muñoz ', 'Justicia', '2294', NULL, 'Arepas', 'local', 'Arepa, Pastelito', NULL, 'delivery propio', NULL, '07:30 - 19:30', '07:30 - 19:30', '07:30 - 19:30', '07:30 - 19:30', '07:30 - 19:30', '07:30 - 14:00', NULL, '59894671590', NULL, 'https://www.instagram.com/deliexpressmvd/', NULL, NULL, 'deliexpressmvd@gmail.com', 'https://www.google.com/maps/dir//Justicia+2294,+11800+Montevideo,+Departamento+de+Montevideo,+Uruguay/@-34.8876337,-56.1800244,15.71z/data=!4m8!4m7!1m0!1m5!1m1!1s0x959f804732eff85f:0x317e97d88ee4f6c7!2m2!1d-56.1792389!2d-34.8874044', '-56.179174', '-34.887445');



CREATE TABLE `CHL_LLANQUIHUE` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','discoteca','servicio','panaderia')
,`ETIQUETAS` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `CHL_LLANQUIHUE_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



CREATE TABLE `CHL_SANTIAGO` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','discoteca','servicio','panaderia')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `CHL_SANTIAGO_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



CREATE TABLE `DELIVERIES_IRL` (
  `ID` int(11) NOT NULL,
  `COD` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Dublin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('propio') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `DELIVERYS_ARG` (
  `ID` int(11) NOT NULL,
  `COD` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Buenos Aires','Cordoba','Neuquen') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('propio','glovo','pididos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `DELIVERYS_ARG` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`) VALUES
(1, 'ARG00001D', 'Boyaca Bistro', 'Argentina', 'Buenos Aires', 'CABA', 'Empanadas Venezolanas ', 'criolla', 'Empanada,', 'Ensalada de Gallina, Pan de Jamon, Hallaca', 'glovo', NULL, NULL, '09:30 - 14:00 / 18:00 - 23:00', '09:30 - 14:00 / 18:00 - 23:00', '09:30 - 14:00 / 18:00 - 23:00', '09:30 - 14:00 / 18:00 - 23:00', '09:30 - 14:00 / 18:00 - 22:00', '09:30 - 20:00', NULL, '5491150185862', 'https://www.instagram.com/boyaca.bistro/', 'https://www.facebook.com/Boyac%C3%A1-Bistro-566052860488536/', NULL, NULL),
(2, 'ARG00002D', 'Chevere Fast Food', 'Argentina', 'Buenos Aires', 'CABA', 'Comida Rápida', 'rapida', 'Pepito,', NULL, 'propio', NULL, 'Sin Servicio ', 'Sin Servicio ', 'Sin Servicio ', '19:00 - 00:00', '19:00 - 00:00', '19:00 - 00:00', '19:00 - 00:00', '1134974938', '5491127308868', 'https://www.instagram.com/chevere.arg/', 'https://www.facebook.com/Chevere-Fast-Food-454227588345462/', NULL, 'chevere.arg@gmail.com'),
(3, 'ARG00003D', 'Conchale Vale', 'Argentina', 'Buenos Aires', 'CABA', 'Comida Rápida ', 'rapida', 'Hamburguesa, Pepito', NULL, 'propio', NULL, '18:00 - 00:30', '18:00 - 00:30', '18:00 - 00:30', '18:00 - 00:30', '18:00 - 00:30', '18:00 - 00:30', '18:00 - 00:30', '1138006509', NULL, 'https://www.instagram.com/conchalevale.arg/', 'https://www.facebook.com/Conchalevalearg-620031581708635/', NULL, NULL),
(4, 'ARG00004D', 'Epa chamo', 'Argentina', 'Buenos Aires', 'CABA', 'Comida China Venezolana', 'asiatica', 'Arroz Chino,', NULL, 'propio', NULL, 'Cerrado', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '13:00 - 22:00', '1126336175', '5491126336175', 'https://www.instagram.com/epachamo.ar/', 'https://www.facebook.com/epachamo.ar/', NULL, NULL),
(6, 'ARG00006D', 'Tequepops', 'Argentina', 'Buenos Aires', 'CABA', 'Tequeños', 'criolla', 'Tequeños Pastelitos Tequeyoyos Papitas y Mandocas', NULL, 'glovo', 'https://glovoapp.com/en/bue/store/tequepops-buenos-aires/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1132379456', '5491132379455', 'https://www.instagram.com/tequepops.ar/', 'https://www.facebook.com/tequepops', NULL, NULL),
(7, 'ARG00007D', 'TequeTito', 'Argentina', 'Buenos Aires', 'CABA', 'Tequeños ', 'criolla', 'Tequeños ', NULL, 'propio', NULL, 'Cerrado', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 22:00', '10:00 - 23:00', '10:00 - 23:00', '10:00 - 23:00', '1136165444', '5491136165444', 'https://www.instagram.com/tequetito.ar/', NULL, NULL, NULL),
(8, 'ARG00008D', 'La Cachapería', 'Argentina', 'Buenos Aires', 'CABA', 'Distribuidores de Cachapas ', 'criolla', 'Cachapas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1125956481', '5491125956481', 'https://www.instagram.com/lacachaperia.ar/', NULL, NULL, NULL),
(9, 'ARG00009D', 'Chevere BS', 'Argentina', 'Buenos Aires', 'CABA', 'Comida venezolana', 'criolla', 'Arepa Empanada Tequeño Cachito Chicha', NULL, 'propio', NULL, 'Sin datos ', 'Sin datos ', 'Sin datos ', 'Sin datos ', 'Sin datos ', 'Sin datos ', 'Sin datos ', '1159968838', '5491159968838', 'https://www.instagram.com/chevere.bs/', NULL, NULL, NULL),
(10, 'ARG00010D', 'Choco Sabores Fruit´s', 'Argentina', 'Buenos Aires', 'CABA', 'Arreglos de Frutillas  ', 'arte', 'Fresas con Chocolate ', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1128233338', '5491128233338', 'https://www.instagram.com/saboresbuenosaires/', NULL, NULL, NULL),
(11, 'ARG00011D', 'VenFoods.ar', 'Argentina', 'Buenos Aires', 'CABA', 'Productos venezolanos', 'productores', 'Harina Pan ', 'Harina, Onoto, Pabilo, Alcaparra', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1126503617', '5491126503617', 'https://www.instagram.com/venfoods.ar/', 'https://www.facebook.com/VenFoodsAr-382402542172689/', NULL, NULL),
(12, 'ARG00012D', 'Tequezuelar', 'Argentina', 'Buenos Aires', 'CABA', 'Fabrica de Tequeños', 'criolla', 'Tequeños', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1161744618', '5491161744618', 'https://www.instagram.com/tequezuelar/', 'https://www.facebook.com/tequezuelar.oficial/', NULL, NULL),
(13, 'ARG00013D', 'Caracas Bread', 'Argentina', 'Buenos Aires', 'CABA', 'Comida venezolana', 'criolla', 'Arepas Empanadas Tequeños Sopas ', NULL, 'propio', NULL, NULL, NULL, '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '1164096495', '5491164096495', 'https://www.instagram.com/caracasbread/', NULL, NULL, NULL),
(14, 'ARG00014D', 'Punto Zuliano', 'Argentina', 'Buenos Aires', 'CABA', 'Comida tradicional venezolana con sabor zuliano', 'criolla', 'Tequeños Pastelitos Tequeyoyos Papitas y Mandocas', NULL, NULL, NULL, 'Sin Servicio ', '18:00 - 22:00', '09:00 - 14:30 / 18:00 - 22:00', '18:00 - 22:00', '18:00 - 22:00', '09:00 - 14:30 / 18:00 - 22:00', '09:00 - 14:30 / 18:00 - 22:00', NULL, '5491150460478', 'https://www.instagram.com/puntozuliano_/', NULL, NULL, 'puntozuliano@hotmail.com'),
(15, 'ARG00015D', 'Waraoba', 'Argentina', 'Buenos Aires', 'CABA', 'Comida china Venezolana', 'asiatica', 'Arroz Frito Chino ', NULL, 'propio', NULL, 'Sin Servicio ', 'Sin Servicio ', NULL, '20:00 - 23:00', '20:00 - 23:00', '13:00 - 16:00', '13:00 - 16:00', '1167511083', '5491167511083', 'https://www.instagram.com/waraoba/', 'https://www.facebook.com/wba168/', NULL, 'waraoba@gmail.com'),
(16, 'ARG00016D', 'Carola\'s Cakes', 'Argentina', 'Buenos Aires', 'CABA', 'Tortas ', 'postre', 'Tortas Arreglos Galletas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1128187126', '5491128187126', 'https://www.instagram.com/carolascakes.arg/', 'https://www.facebook.com/profile.php?id=100007398165735', NULL, 'ventas.carolascake@gmail.com'),
(17, 'ARG00017D', 'La Patilla', 'Argentina', 'Buenos Aires', 'CABA', 'Comida venezolana', 'criolla', 'Arepas Empanadas', NULL, NULL, NULL, '17:00 - 24:00', '17:00 - 24:00', '17:00 - 24:00', '17:00 - 24:00', '17:00 - 24:00', '17:00 - 24:00', '17:00 - 24:00', '1123870097', '5491123870097', 'https://www.instagram.com/lapatillaba/', NULL, NULL, 'lapatillaba@gmail.com'),
(18, 'ARG00018D', 'La Chicheria Ok', 'Argentina', 'Buenos Aires', NULL, 'Chicha venezolana', 'criolla', 'chicha', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/lachicheriaok/', NULL, NULL, NULL),
(19, 'ARG00019D', 'Pinchos Grill', 'Argentina', 'Buenos Aires', 'Almagro', 'Pinchos/Brochetas', 'rapida', 'pinchos, brochetas, ensaladas, bollitos', 'Hallaca', 'propio', NULL, NULL, NULL, NULL, '19:30 - 00:00', '19:30 - 00:00', '19:30 - 00:00', '19:30 - 00:00', '1175610631', '5491175610631', 'https://www.instagram.com/pinchosgrill.ar/', NULL, NULL, NULL),
(20, 'ARG00020D', 'TequeMax (Tigre)', 'Argentina', 'Buenos Aires', 'San fernando', 'Tequeños (dedos), Pastelitos A', 'criolla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491131221607', 'https://www.instagram.com/tequemax_/', 'https://www.facebook.com/tequemaxarg/', NULL, NULL),
(21, 'ARG00021D', 'Mariela Rodríguez', 'Argentina', 'Buenos Aires', NULL, 'Para el día, la tarde o la noc', 'postre', NULL, 'Hallaca, Ensalada de Gallina, Pan de Jamon, Torta Negra, Plato Navideño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491124877933', 'https://www.instagram.com/marielaryc/', NULL, NULL, NULL),
(22, 'ARG00022D', 'Dulce Tentación', 'Argentina', 'Buenos Aires', NULL, 'Comida Venezolana, Picada, Ent', 'criolla', NULL, 'Hallaca, Pan de Jamon, Plato Navideño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/dulcetentacion.mp/', NULL, NULL, NULL),
(23, 'ARG00023D', 'La Cocina del Ramón', 'Argentina', 'Buenos Aires', 'Microcentro', 'Golfeados, Roles y Tequeños', 'postre', NULL, NULL, NULL, NULL, '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 00:00', NULL, '5491132116332', 'https://www.instagram.com/lacocinadelramon/', NULL, NULL, NULL),
(24, 'ARG00024D', 'Sakura Sushi', 'Argentina', 'Buenos Aires', 'Belgrano', 'Japoneses cuisine', 'asiatica', 'Sushi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '00541123863226', 'https://www.instagram.com/sakura_sushi_ccs/', NULL, NULL, NULL),
(25, 'ARG00025D', 'Tres Dragones', 'Argentina', 'Buenos Aires', NULL, 'Arroz chino con la mejor sazón venezolana', 'asiatica', 'Arroz chino, Comida china', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '005491135829481', 'https://www.instagram.com/arrozchinocaba/', NULL, NULL, NULL),
(27, 'ARG00026D', 'Canta Grillo', 'Argentina', 'Buenos Aires', NULL, 'Distribuidores de pan artesanal', 'productores', 'Pan, Masa, Pan Vegano, Tequeños', 'Pan de Jamon, Plato Navideño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/panaderiacantagrillo/', NULL, NULL, NULL),
(28, 'ARG00027D', 'Dulcestorticas', 'Argentina', 'Buenos Aires', 'Balvanera', 'Tortas', 'postre', 'Tortas, Ramos de Frutas, ', 'Pan de jamon', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491123887008', 'https://www.instagram.com/dulcestorticas/', NULL, NULL, NULL),
(29, 'ARG00028D', 'Skäl Anís', 'Argentina', 'Buenos Aires', NULL, 'Skäl Anís', 'productores', 'Anís, Licor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11393181720', NULL, 'https://www.instagram.com/skal_anis/', NULL, NULL, 'skalspiritshouse@gmail.com'),
(30, 'ARG00029D', 'Manuchis Repostería', 'Argentina', 'Buenos Aires', 'Recoleta', 'Repostería Saludable', 'postre', 'Budines, Granola', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1527499576', NULL, 'https://www.instagram.com/manuchisreposteria/', NULL, NULL, NULL),
(31, 'ARG00030D', 'Q’totas', 'Argentina', 'Buenos Aires', 'Almagro', 'Tortas y Talleres', 'postre', 'Tortas', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491121714675', 'https://www.instagram.com/qtotas/', NULL, NULL, NULL),
(32, 'ARG00031D', 'Maracaibo Food', 'Argentina', 'Neuquen', 'Capital', 'Comida', 'criolla', 'Empanada,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492996340388', '5492996340388', 'https://www.instagram.com/food.maracaibo/', NULL, NULL, NULL),
(34, 'ARG00033D', 'Tequeñisimos', 'Argentina', 'Buenos Aires', NULL, 'Venta de tequeños', 'criolla', 'Tequeños', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '541122520929', 'https://www.instagram.com/tequenisimos_baires', NULL, NULL, NULL),
(35, 'ARG00034D', 'VeNestea', 'Argentina', 'Buenos Aires', NULL, 'Distribuidores de Nestea', 'productores', 'Nestea', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1127628179', 'https://www.instagram.com/venestea.arg/?igshid=h55kvinzj95h', 'https://www.facebook.com/venesteaarg-671314383292895/', NULL, NULL),
(36, 'ARG00035D', 'Los Sabores de mi Tierra', 'Argentina', 'Buenos Aires', NULL, 'Comida navideña y postres', 'criolla', 'Pan de jamón, Hallacas, Tortas', 'Hallaca, Pan de Jamon, Torta Negra', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491157416851', NULL, 'https://www.instagram.com/saboresdemitierra.ar', NULL, NULL, NULL),
(37, 'ARG00036D', 'Arequipe', 'Argentina', 'Neuquen', 'Capital', 'Repostería Artesanal', 'postre', 'Tortas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/arequipenqn/', NULL, NULL, NULL),
(38, 'ARG00037D', 'Antojitos con Sabor Venezolano', 'Argentina', 'Neuquen', 'Capital', 'Distribuidor de Productos venezolanos', 'criolla', 'Harina pan, Queso, Tequeño', 'Harina, Ponche Crema, Hoja para Hallaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492996123911', '5492996123911', 'https://www.instagram.com/antojitos_con_sabor_venezolano/', NULL, NULL, NULL),
(39, 'ARG00038D', 'Venearepa', 'Argentina', 'Neuquen', 'Capital', 'Comida y productos venezolanos', 'criolla', 'Arepas,Tequeños, Cachapas y productos venezolanos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492995822380', NULL, 'https://www.instagram.com/venearepa.nqn/', NULL, NULL, NULL),
(40, 'ARG00039D', 'Hergonz Creative', 'Argentina', 'Neuquen', 'Capital', 'Manualidades y Diseños digitales', 'arte', 'Banderin, centros de mesa, mini Toppers, letras 3D, bolsitas golosineras, piñata, cuadro de Selfie,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492996297754', 'https://www.instagram.com/HergonzCreative/', NULL, NULL, NULL),
(41, 'ARG00040D', 'Sabor Zuliano Neuquén', 'Argentina', 'Neuquen', 'Capital', 'Empanadas venezolanas', 'criolla', 'Empanadas, Arepas, ', 'Hallaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492995956085', 'https://www.instagram.com/saborzulianoneuquen/', NULL, NULL, NULL),
(42, 'ARG00041D', 'Antojitos Venezolanos', 'Argentina', 'Neuquen', 'Capital', 'Comida venezolana', 'criolla', 'Empanadas, Pabellón, Mandocas Arepas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492995116643', 'https://www.instagram.com/antojitosvenezolanosnqn/?igshid=t58ydjzohowk', NULL, NULL, NULL),
(43, 'ARG00042D', 'TequePom', 'Argentina', 'Neuquen', 'Islas Malvinas', 'Tequeños al mayor y detal', 'criolla', 'Tequeños', NULL, NULL, NULL, '19:00 -  21:00', '19:00 -  21:00', '19:00 -  21:00', '19:00 -  21:00', '19:00 -  21:00', '19:00 -  21:00', '19:00 -  21:00', NULL, '542996749428 ', 'https://www.instagram.com/tequepom/', NULL, NULL, NULL),
(44, 'ARG00043D', 'Tostón Zuliano ', 'Argentina', 'Neuquen', 'Capital', 'Comida venezolana', 'criolla', 'Patacon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492996067956 ', '5492996054833', 'https://www.instagram.com/tostonzuliano/', NULL, NULL, NULL),
(45, 'ARG00044D', 'Salsa Tartara Fast Food', 'Argentina', 'Buenos Aires', NULL, 'Comida con sabor zuliano', 'rapida', 'Hamburguesas, Patacones, Arepas, Tequeños', NULL, 'propio', NULL, NULL, '20:30 - 22:00', '20:30 - 22:00', '20:30 - 22:00', '20:30 - 00:00', '20:30 - 00:00', '20:30 - 22:00', NULL, '541134991673 ', 'https://www.instagram.com/lasalsatartara/', NULL, NULL, NULL),
(47, 'ARG00045D', 'Merey Detalles', 'Argentina', 'Neuquen', 'Capital', 'Elaboración de Piñatas y Artículos para decoración de fiestas', 'arte', 'Fiesta, Piñata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+542995778269', '542995778269', 'https://www.instagram.com/mereydetalles/', 'https://www.facebook.com/mereydetalles/', NULL, 'mereydetalles@gmail.com'),
(48, 'ARG00046D', 'Tosti snacks', 'Argentina', 'Buenos Aires', NULL, 'Snacks', 'criolla', 'Tostones, Chicharrones, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491159773233', 'https://www.instagram.com/tosti_snacks', NULL, NULL, 'ventasbairesml@gmail.com'),
(49, 'ARG00047D', 'La Guasacaca', 'Argentina', 'Buenos Aires', NULL, 'Salsa autóctona venezolana', 'productores', 'Guasacaca', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/la_guasacaca', 'Salsa autóctona venezolana', NULL, NULL),
(50, 'ARG00048D', 'Azúcar&Canela', 'Argentina', 'Buenos Aires', NULL, 'Tortas y Postres', 'postre', 'Tortas', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491126674484', 'https://www.instagram.com/azucarycanelacake', NULL, NULL, NULL),
(51, 'ARG00049D', 'Delkarín', 'Argentina', 'Buenos Aires', NULL, 'Tortas y Postres, Mesa de dulces para eventos personalizados', 'postre', 'Tortas', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491169408199', '5491149282549', 'https://www.instagram.com/delkarin.argentina', NULL, NULL, NULL),
(52, 'ARG00050D', 'Orinoco’s Fast Food', 'Argentina', NULL, NULL, 'Comida Rápida venezolana', 'rapida', 'Pepitos, sándwiches, papas fritas ', NULL, NULL, NULL, '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '12:00 - 23:00', '12:00 - 00:00', '12:00 - 00:00', '12:00 - 22:30', NULL, '5492213144942', 'https://www.instagram.com/orinocosfastfood/', NULL, NULL, NULL),
(53, 'ARG00051D', 'Vene-Shop', 'Argentina', NULL, NULL, 'Productos venezolanos', 'productores', NULL, NULL, NULL, NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '5492216245275', NULL, 'https://www.instagram.com/veneshoplp/', NULL, NULL, NULL),
(54, 'ARG00052D', 'Con Swing y Tradición', 'Argentina', 'Buenos Aires', 'Bulnes 887', 'Clases y Talleres de Salsa Casino, Rumba,Bachata y Mambo Ny', 'cultura', 'Salsa Casino, Bachata', NULL, NULL, NULL, NULL, '19:00 - 21:00', '19:00 - 21:00', '', '19:00 - 21:00', '15:00 - 20:00', NULL, '+5491158758402', '5491158758402', 'https://www.instagram.com/yobailodetodo/', NULL, NULL, NULL),
(55, 'ARG00053D', 'Kickingball.ar', 'Argentina', 'Buenos Aires', 'Palermo', 'Grupo de Kickingball en Buenos Aires', 'cultura', 'Kickingball, Deporte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/kickingball.ar/', NULL, NULL, NULL),
(56, 'ARG00054D', 'Venefletesarg', 'Argentina', 'Buenos Aires', NULL, 'Traslados y mudanzas', 'traslados', 'Traslados, Mudanzas, Fletes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491128700895', '5491128700895', 'https://www.instagram.com/venefletesarg/', NULL, NULL, NULL),
(57, 'ARG00055D', 'Fletes y Viajes BA', 'Argentina', 'Buenos Aires', NULL, 'Fletes, Mudanzas, Traslados y Envios', 'traslados', 'Fletes, Mudanzas, Traslados, Envios', NULL, NULL, NULL, 'Abierto', 'Abierto', 'Abierto', 'Abierto', 'Abierto', 'Abierto', 'Abierto', '+5491153861675', '5491153861675', 'https://www.instagram.com/minifletes_buenosaires/', NULL, NULL, NULL),
(58, 'ARG00056D', 'Tulipani Accesorios', 'Argentina', 'Buenos Aires', NULL, 'Accesorios personalizados', 'arte', 'Accesorios, Joyeria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491125412303', '5491125412303', 'https://www.instagram.com/tulipaniar/', 'https://www.facebook.com/TulipaniAR/', NULL, NULL),
(59, 'ARG00057D', 'Quintero Anyura', 'Argentina', 'Buenos Aires', NULL, 'Makeup Artist, Citas y Cursos de Maquillaje', 'estetica', 'Maquillaje, Cursos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/anyuramakeup/', NULL, NULL, NULL),
(60, 'ARG00058D', 'by Sofía Lucena', 'Argentina', 'Buenos Aires', NULL, 'Accesorios Exclusivos Hechos a Mano', 'arte', 'Accesorios, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/bysofialucena/', 'https://www.facebook.com/bySofiaLucena/', 'https://www.sofialucena.com/', 'hola@sofialucena.com'),
(61, 'ARG00059D', 'Odette Ribeiro', 'Argentina', 'Buenos Aires', NULL, 'Madera e hilo. El Ávila, donde estés', 'arte', 'Artesania, Regalo, Cuadro, Arte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/odetteribeiro/', 'https://www.facebook.com/OdetteValentinaRibeiro/', NULL, NULL),
(62, 'ARG00060D', 'Tambor Palenke', 'Argentina', 'Buenos Aires', NULL, 'Bando de tambor', 'cultura', 'Tambor, Evento, Danza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491123894608', 'https://www.instagram.com/tamborpalenke/', NULL, NULL, 'tamborpalenke@gmail.com'),
(63, 'ARG00061D', 'Pernil Caba', 'Argentina', 'Buenos Aires', 'CABA', 'Amantes del arte culinario', 'criolla', 'Pernil, Hallacas, ', 'Pernil, Hallaca', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491127654104', 'https://www.instagram.com/pernilcaba/', NULL, NULL, NULL),
(64, 'ARG00062D', 'Tan Toche ', 'Argentina', 'Buenos Aires', NULL, 'Comida Venezolana', 'criolla', 'Empanadas, Pastelitos', NULL, 'propio', NULL, 'Desde las 16:00', 'Desde las 16:00', 'Desde las 16:00', 'Desde las 16:00', 'Desde las 16:00', NULL, 'Desde las 08:00', NULL, NULL, 'https://www.instagram.com/tantoche.arg/', NULL, NULL, NULL),
(65, 'ARG00063D', 'Cachito Sweet', 'Argentina', 'Buenos Aires', 'Parque Patricios', 'Panadería y Pastelería', 'criolla', 'Cachitos, Pan de Jamon', 'Pan de Jamon', 'propio', NULL, NULL, '07:00 - 17:00', '07:00 - 17:00', '07:00 - 17:00', '07:00 - 17:00', '07:00 - 17:00', '07:00 - 13:00', '5491133419779', NULL, 'https://www.instagram.com/cachitosweet/', NULL, NULL, 'cachitossweet@gmail.com'),
(66, 'ARG00064D', 'Sabama', 'Argentina', 'Buenos Aires', 'Constitución', 'Delivery de empanadas y arepas', 'criolla', 'Empanadas, Arepas', NULL, 'propio', NULL, NULL, '08:00 - 20:00', '08:00 - 20:00', '08:00 - 20:00', '08:00 - 14:00 / 18:00 - 23:00', '08:00 - 14:00 / 18:00 - 23:00', '08:00 - 14:00 / 18:00 - 23:00', NULL, '541140558401', 'https://www.instagram.com/sabama.ar/', NULL, NULL, 'sabarmas@hotmail.com'),
(67, 'ARG00065D', 'Mini Antojo Venezolano', 'Argentina', 'Buenos Aires', 'San Telmo', 'Gastronomía venezolana', 'criolla', 'Tequeño de Jojoto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491160371175', 'https://www.instagram.com/miniantojosvenezolano/', NULL, NULL, 'miniANTOJOVenezolano@gmail.com'),
(68, 'ARG00066D', 'Sweet Ponch', 'Argentina', 'Buenos Aires', NULL, '𝖯𝗈𝖼𝗁𝖾 𝖼𝗋𝖾𝗆𝖺 𝖺𝗋𝗍𝖾𝗌𝖺𝗇𝖺𝗅', 'criolla', 'Ponche Crema', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491173643989', NULL, 'https://www.instagram.com/sweet.ponch/', NULL, NULL, NULL),
(69, 'ARG00067D', 'Between Food Plates', 'Argentina', 'Buenos Aires', NULL, 'Los platos del mundo en tu casa', 'criolla', NULL, 'Hallaca, Pan de Jamon,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+541127198070', '541127198070', 'https://www.instagram.com/Betweenfoodplates/', 'https://www.facebook.com/Betweenfoodplates/', NULL, NULL),
(71, 'ARG00068D', 'Creaciones Mi Natha', 'Argentina', 'Buenos Aires', NULL, 'Todo bien hecho a mano con la inspiración de nuestra Nathalia Paola ', 'postre', 'Torta,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+54911345️27897', '5491134577753', 'https://www.instagram.com/creaciones_mi_natha/', 'https://www.facebook.com/Creaciones_Mi_Natha-515964051899522/', NULL, NULL),
(72, 'ARG00069D', 'Un cachito +', 'Argentina', 'Buenos Aires', NULL, 'Ponche Crema Tradicional', 'productores', 'Ponche crema', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491159475884', '5491159475884', 'https://www.instagram.com/uncachitomas/', 'https://www.facebook.com/Uncachitomas-AR-103878661103065/', NULL, 'uncachitomas.ar@gmail.com'),
(73, 'ARG00070D', 'Guarapita Cuyagua', 'Argentina', 'Buenos Aires', NULL, 'Licor de frutas 100% naturales', 'productores', 'Guarapita, Licor, ', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/guarapitacuyagua/', 'https://www.facebook.com/Guarapitacuyagua-2357636087847705/', NULL, NULL),
(74, 'ARG00071D', 'Gian Cakes', 'Argentina', 'Buenos Aires', NULL, 'Tortas y Postres. Contribuimos a tu felicidad con nuestras delicias', 'postre', 'Torta, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491123828011', '5491123828011', 'https://www.instagram.com/gian_cakes/', 'https://www.facebook.com/gian.cakes/', NULL, 'giancake1@gmail.com'),
(75, 'ARG00072D', 'OM Lily', 'Argentina', 'Buenos Aires', NULL, 'Lindos accesorios diseñados para ti', 'arte', 'Accesorios, Pulcera, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491173660768', '5491173660768', 'https://www.instagram.com/om_lily_/', NULL, NULL, NULL),
(76, 'ARG00073D', 'Ice Tea', 'Argentina', 'Buenos Aires', NULL, 'El verdadero sabor del Te', 'productores', 'Bebida, Te', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/iceteaoficial/', NULL, NULL, NULL),
(77, 'ARG00074D', 'Ají Dulce Venezolano', 'Argentina', 'Buenos Aires', NULL, 'Venta de semillas de Ají Dulce', 'productores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/ajidulceenbuenosaires/', NULL, NULL, NULL),
(78, 'ARG00075D', 'Tequeboss', 'Argentina', 'Buenos Aires', NULL, 'Venta de tequeños venezolanos', 'criolla', 'Tequeño,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491162000790', '5491162000790', 'https://www.instagram.com/tequeboss.ar/', NULL, NULL, NULL),
(79, 'ARG00076D', 'Robert Guerra Hair Design', 'Argentina', 'Buenos Aires', NULL, 'Estilista', 'estetica', 'Estilista, Peluqueria,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ' +5491166374712', '5491166374712', 'https://www.instagram.com/robertg.hd/', 'https://www.facebook.com/robertghd-113205036771915/', NULL, NULL),
(80, 'ARG00077D', 'Panda\'s Urban Food', 'Argentina', 'Buenos Aires', 'Caseros', 'Come de verdad, come en Panda\'s', 'rapida', 'Hamburguesa, Perro Caliente, Pepito', NULL, NULL, NULL, '12:00 - 15:00 / 18:00 - 23:00', '12:00 - 15:00 / 18:00 - 23:00', '12:00 - 15:00 / 18:00 - 23:00', '12:00 - 15:00 / 18:00 - 23:00', '12:00 - 15:00 / 18:00 - 23:00', '12:00 - 15:00 / 18:00 - 23:00', '12:00 - 15:00 / 18:00 - 23:00', '+5491138219489', '5491138219489', 'https://www.instagram.com/pandasurbanfood/', NULL, NULL, NULL),
(81, 'ARG00078D', 'Hola, Soy Judith', 'Argentina', 'Buenos Aires', NULL, 'Pasteleria Artesanal', 'postre', 'Torta, Pasteleria,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+541154149576', '541154149576', 'https://www.instagram.com/angelespasteleria/', 'https://www.facebook.com/Angeles-Pasteleria-981471205353618/', NULL, NULL),
(82, 'ARG00079D', 'Con sabor a mi hogar', 'Argentina', 'Buenos Aires', NULL, 'Comida China al Estilo Venezolano', 'asiatica', 'Arroz chino, ', NULL, NULL, NULL, NULL, '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '10:00 - 20:00', '+5491132694067', '5491132694067', 'https://www.instagram.com/consaboramihogar/', 'https://www.facebook.com/consaboramihogar/', NULL, 'consaboramihogar01@gmail.com'),
(83, 'ARG00080D', 'Rutas & Pacheco', 'Argentina', 'Buenos Aires', NULL, 'Traslados ejecutivos', 'traslados', 'Traslado, Remis, Flete', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/rutaspacheco/', NULL, NULL, NULL),
(84, 'ARG00081D', 'Terruño', 'Argentina', 'Buenos Aires', NULL, 'Papelón con limón y Te Negro', 'productores', 'Papelon con limon,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491134109925', '5491134109925', 'https://www.instagram.com/terruno_ba/', 'https://www.facebook.com/terruno_ba-124145078982114/', NULL, NULL),
(85, 'ARG00082D', 'Los panas del queso', 'Argentina', 'Buenos Aires', NULL, 'Venta de queso al mayor', 'productores', 'Queso, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+5491165650329', '5491165650329', 'https://www.instagram.com/lospanasdelqueso/', 'https://www.facebook.com/lospanasdelqueso-383869568920144/', NULL, NULL),
(86, 'ARG00083D', 'Kaisō Sushi', 'Argentina', 'Buenos Aires', NULL, 'Comida Asiática', 'asiatica', NULL, NULL, NULL, NULL, '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '12:00 - 22:00', '5491133649374', '5491133649374', 'https://www.instagram.com/kaisu.arg/', NULL, NULL, 'kaisu.arg@gmail.com'),
(87, 'ARG00084D', 'Venearepa', 'Argentina', 'Neuquen', 'Capital', 'Delivery de comida venezolana', 'criolla', 'Arepa, Tequeño, Cachapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5492995822380', NULL, 'https://www.instagram.com/venearepa.nqn/', NULL, NULL, 'venearepa.nqn@gmail.com'),
(88, 'ARG00085D', 'Tu Momento Venezolano', 'Argentina', 'Buenos Aires', NULL, 'Tequeños\r\n', 'criolla', 'Tequeño', NULL, 'pididos ya', NULL, '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', '09:00 - 22:00', NULL, '5491123877719', 'https://www.instagram.com/momento_venezolano_/', NULL, NULL, 'mataastrid76@gmail.com'),
(89, 'ARG00086D', 'Kathi Cakes', 'Argentina', 'Buenos Aires', NULL, 'Repostera Profesional Venezolana en Argentina', 'postre', 'Torta', NULL, NULL, NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', '09:00 - 21:00', NULL, '5491150058416', 'https://www.instagram.com/kathi.cakes/', NULL, NULL, 'kathiusca_01@hotmail.com'),
(90, 'ARG00087D', 'La Paleta Criolla', 'Argentina', 'Buenos Aires', NULL, 'Gastronomía venezolana', 'criolla', 'Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/lapaletacriolla/', NULL, NULL, 'lapaletacriolla@gmail.com'),
(91, 'ARG00088D', 'Pisti-pastelerīa', 'Argentina', 'Buenos Aires', 'Palermo', 'Pastelería ', 'postre', 'Torta, Pan, Tres Leche', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491159460657', 'https://www.instagram.com/pistipasteleria/', NULL, NULL, 'rey264@hotmail.com'),
(92, 'ARG00089D', 'TIPICOS', 'Argentina', 'Buenos Aires', NULL, 'Comida venezolana', 'criolla', 'Arepa, Empanada, Pasticho, Sopa', NULL, 'propio', NULL, '09:00 - 01:00', '09:00 - 01:00', '09:00 - 01:00', '09:00 - 01:00', '09:00 - 01:00', '09:00 - 01:00', '09:00 - 01:00', '549111136621027', '', 'https://www.instagram.com/tipicosve/', NULL, NULL, 'tipicosve65@gmail.com'),
(93, 'ARG00090D', 'TequeÑO PorteÑO', 'Argentina', 'Buenos Aires', 'CABA', 'Tequeño con masa artesanal', 'criolla', 'Tequeño', NULL, 'propio', NULL, NULL, NULL, NULL, '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', '17:00 - 00:00', NULL, '541137625664', 'https://www.instagram.com/tequeno.porteno/', NULL, NULL, 'tequeño.porteno@gmail.com'),
(94, 'ARG00091D', 'Fiambres Express', 'Argentina', 'Buenos Aires', 'San Nicolas ', 'Delivery de fiambres ', 'productores', 'Queso, Fiambre \r\n', NULL, NULL, NULL, '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '11:00 - 20:00', '5491137989310/5492215426059', NULL, 'https://www.instagram.com/fiambres.express/', NULL, NULL, 'fiambres.express@gmail.com'),
(95, 'ARG00092D', 'TuVeneChicha', 'Argentina', 'Buenos Aires', 'Almagro', 'Chicha', 'criolla', 'Chicha ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/tuvenechicha/', NULL, NULL, NULL),
(96, 'ARG00093D', 'Pana Pan BA', 'Argentina', 'Buenos Aires', 'CABA', 'Pan Artesanal ', 'productores', 'Pan, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/panapan.ba/', NULL, NULL, 'panapanba@gmail.com'),
(97, 'ARG00094D', 'Nails & Estética ', 'Argentina', 'Buenos Aires', 'Monserrat', 'Manicura, Pedicura ', 'estetica', 'Uñas, Esmaltado, Alisado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/nailyestetica/', NULL, NULL, NULL),
(98, 'ARG00095D', 'Avila Pan ', 'Argentina', 'Buenos Aires', NULL, 'Pan Artesanal', 'productores', 'Pan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/avilapan.ar/', NULL, NULL, NULL),
(99, 'ARG00096D', 'Vinotinto Food ', 'Argentina', 'Buenos Aires', 'CABA', 'Tequeños venezolanos ', 'productores', 'Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5901134931734', NULL, 'https://www.instagram.com/vinotintofood/', NULL, NULL, 'vinotintoyr@gmail.com'),
(100, 'ARG00097D', 'Caserita\'s By Géne', 'Argentina', 'Buenos Aires', 'Monserrat', 'Pastelería', 'postre', 'Torta, Cupcake', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/caseritasbygene/', NULL, NULL, 'caseritas.horneadasconamor@gmail.com'),
(101, 'ARG00098D', 'Sami Cachitos', 'Argentina', 'Buenos Aires', NULL, 'Panaderia', 'productores', 'Cachito', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5491160471773', NULL, 'https://www.instagram.com/samicachitos/', NULL, NULL, 'migmor1904@gmail.com'),
(102, 'ARG00099D', 'Patiché', 'Argentina', 'Buenos Aires', 'Palermo', 'Pasticho / Lasaña ', 'criolla', 'Pasticho', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1123900811', '541123900811', 'https://www.instagram.com/unpatiche/?hl=en', NULL, NULL, NULL);



CREATE TABLE `DELIVERYS_CHL` (
  `ID` int(11) NOT NULL,
  `COD` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Santiago','Valparaiso','Llanquihue') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('propio','glovo','pididos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `DELIVERYS_CHL` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`) VALUES
(1, 'CHL00001D', 'TequeYoyo26', 'Chile', 'Santiago', NULL, 'Tequeños y algo más', 'criolla', 'tequeños', 'Hallaca', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56951202938', 'https://www.instagram.com/tequeyoyo26/', 'https://www.facebook.com/tequeyoyo26/?__xts__[0]=68.ARCyMXLmIPK01B7EWzz0CWT6ZHffWxNrKTMJKVCxfMQ83B3Hkt6X4RMOTsu0gI3e_v1HvQ9iYczifHLfjoDXcUTL4zJ2XRnjNTa5lPoDlCuqlwb3wJqcwBo1iIJVFeCTfLM2CVyTvnnyLf7phPbWWV6c_IcGxfmMpVvU5YTMXhKNkWekm5NqtgZgWN4gnFzAwzDccE', NULL, 'tequeyoyo2@gmail.com'),
(2, 'CHL00002D', 'Delicateses Criollas Venezuela', 'Chile', 'Santiago', NULL, 'comida tradicional venezolana', 'criolla', NULL, 'Hallaca', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/delicatesescriollas.cl/', NULL, NULL, NULL),
(3, 'CHL00003D', 'Sabor  Crepuscular', 'Chile', 'Santiago', NULL, 'Desayunos, colocaciones, pasap', 'criolla', 'arepa, empanadas, tequeños', 'Plato Navideño, Ponche Crema, Hallaca', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0056945413544', 'https://www.instagram.com/saborcrepuscular/', NULL, NULL, NULL),
(4, 'CHL00004D', 'Fritanga Express', 'Chile', 'Santiago', NULL, 'delivery de tequeños y pasteli', 'criolla', 'tequeños, pastelitos ', NULL, 'propio', NULL, 'Sin servicio', '09:00 - 20:00', '09:00 - 20:00', '09:00 - 20:00', '09:00 - 20:00', '09:00 - 20:00', '12:00 - 17:00', NULL, '56988103105', 'https://www.instagram.com/fritangaexpress/', NULL, NULL, NULL),
(5, 'CHL00005D', 'Saladillos', 'Chile', 'Santiago', 'San Diego', 'delivery de comida típica vene', 'criolla', 'tequeños, empanadas, mandocas', NULL, 'propio', NULL, '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', '08:00 - 21:00', NULL, '56999750194', 'https://www.instagram.com/saladillos/', NULL, NULL, NULL),
(6, 'CHL00006D', 'Pastichos Elella', 'Chile', 'Santiago', NULL, 'pastichos con sabor venezolano', 'criolla', 'pastillo, empanadas', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56988804195', '56988856604', 'https://www.instagram.com/pastichoselella/', NULL, NULL, NULL),
(7, 'CHL00007D', 'Sara Detalles', 'Chile', 'Santiago', NULL, 'Todo tipo de detalles y decoracion.', 'arte', 'Regalos, Globos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56936745150', '56936745150', 'https://www.instagram.com/saradetalles_/', 'https://www.facebook.com/Saradetalles_-941124196054138/', NULL, 'shara.isa_03@hotmail.com'),
(8, 'CHL00008D', 'Merakkis', 'Chile', 'Santiago', NULL, 'Repostería ', 'postre', 'Tortas, Quesillo, Tartaletas', 'Ponche Crema, Torta Negra', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56937248804', NULL, 'https://www.instagram.com/merakkis7/', NULL, NULL, NULL),
(9, 'CHL00009D', 'Fritikos Gourmet', 'Chile', 'Santiago', NULL, 'Exquisitos Tequeños, con el mejor sabor nuestro. Para tus reuniones, fiestas o delivery', 'criolla', 'Tequeños,', 'Hallaca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56971253447', '56971253447', 'https://www.instagram.com/fritikosgourmet.cl/', NULL, NULL, NULL),
(10, 'CHL00010D', 'R y Q Cocina Venezolana', 'Chile', 'Santiago', NULL, 'Hallacas, Pan de Jamón y Tequeños y mas', 'criolla', NULL, 'Hallaca, Pan de Jamon ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56940559239', '56940559239', 'https://www.instagram.com/ryqcocinavzlana/', NULL, NULL, NULL),
(11, 'CHL00011D', 'Dulces Delicias', 'Chile', 'Santiago', NULL, 'Dulces y Catering', 'postre', 'Tortas, Galletas, Cupcakes', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/dulce.delicias.cl/', NULL, NULL, NULL),
(12, 'CHL00012D', 'Club Deportivo Turpiales', 'Chile', 'Santiago', NULL, 'Equipo de kickingball', 'cultura', 'Kickingball, Deporte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/turpiales.kickingball/', NULL, 'https://www.youtube.com/channel/UC-DdAa8_wN7eJKRNkAoGI-A', NULL),
(13, 'CHL00013D', 'Vial Inmortal Kickingball', 'Chile', 'Santiago', NULL, 'Club de Kickingball en Santiago', 'cultura', 'Kickingball, Deporte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/vialinmortalkickingball/', NULL, NULL, NULL),
(14, 'CHL00014D', 'Club Deportivo Catatumbo', 'Chile', 'Santiago', NULL, 'Club de Kickingball en Santiago', 'cultura', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/catatumbo_kclub/', NULL, NULL, 'catatumbo.club@gmail.com'),
(15, 'CHL00015D', 'Atlético Vinotinto', 'Chile', 'Santiago', NULL, 'Club de kickingball en Santiago', 'cultura', 'kickingball,  Deporte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/atleticovinotinto/', NULL, NULL, NULL),
(16, 'CHL00016D', 'Kickingball Venechile', 'Chile', 'Santiago', NULL, 'Club de Kickingball en Santiago', 'cultura', 'Kickingball, Deporte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/venechile.kickingball/', NULL, NULL, NULL),
(17, 'CHL00017D', 'Transportes Virgen del Carmen', 'Chile', 'Santiago', NULL, 'Fletes, Mudanzas, Traslado hacia/desde el Aeropuerto', 'traslados', 'Flete, Mudanza, Traslado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56941073627', '56941073627', 'https://www.instagram.com/fletesvdc/', NULL, NULL, NULL),
(18, 'CHL00018D', 'Fletes-Chile', 'Chile', 'Santiago', NULL, 'Fletes y mudanzas dentro y fuera de la ciudad de Santiago!', 'traslados', 'Flete, Mudanza, Traslado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56968041993', '56968761735', 'https://www.instagram.com/fleteschilejz/', NULL, NULL, NULL),
(19, 'CHL00019D', 'Fletes Santiago', 'Chile', 'Santiago', NULL, 'Servicios de transporte y mudanza dentro y fuera de Santiago', 'traslados', 'Flete, Traslado, Mudanza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56987936621', '56987936621', 'https://www.instagram.com/fletessantiago.cl/', NULL, NULL, NULL),
(20, 'CHL00020D', 'A1express', 'Chile', 'Santiago', NULL, 'Servicios de fletes, mudanzas, encomiendas y embalaje', 'traslados', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '952517484', '56932631587', 'https://www.instagram.com/a1fletes.express/', NULL, NULL, NULL),
(21, 'CHL00021D', 'La Pastichería', 'Chile', 'Santiago', NULL, 'Pastichos (Lasaña)', 'criolla', 'Pasticho, Lasaña', NULL, NULL, NULL, 'Cerrado', '11:30 - 18:00', '11:30 - 18:00', '11:30 - 18:00', '11:30 - 18:00', '11:30 - 18:00', '11:30 - 18:00', '+56958781280', '56958781280', 'https://www.instagram.com/lapasticheria.cl/', NULL, NULL, NULL),
(22, 'CHL00022D', 'Lácteos Doña Barbara', 'Chile', 'Santiago', NULL, 'Fabricación y exportación de nata fresca y queso llanero', 'productores', 'Queso, Nata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/lacteos.donabarbara/', 'https://www.facebook.com/lacteos.donabarbara.9', NULL, NULL),
(23, 'CHL00023D', 'Horneando con Amor', 'Chile', 'Llanquihue', 'Puerto Montt', 'Tortas y postres', 'postre', 'Torta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/horneandoconamorchile/', 'https://www.facebook.com/horneandoconamorchile-104396344383406/', NULL, NULL),
(24, 'CHL00024D', '¡Hola Chicha!', 'Chile', 'Llanquihue', 'Puerto Montt', 'Chicha venezolana con tus topping favoritos', 'postre', 'Chicha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56949867260', '56949867260', 'https://www.instagram.com/chichapuertomontt/', 'https://www.facebook.com/chichapuertomontt-108978577221914/', NULL, NULL),
(25, 'CHL00025D', 'A lo Venezolano', 'Chile', 'Llanquihue', 'Puerto Montt', 'Empanadas venezolanas, quesillo y sancocho', 'criolla', 'Empanadas, Sopa, Sancocho, Quesillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+56934803791', '56934803791', 'https://www.instagram.com/a_lo_vzlano/', NULL, NULL, NULL),
(26, 'CHL00026D', 'La Arepa Social ', 'Chile', 'Santiago', NULL, 'Comida venezolana', 'rapida', 'Arepa, Hamburguesa, Perro Caliente ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19:00 - 01:00', '17:00 - 01:00', '13:00 - 19:00', '56954044449', '56954044449', 'https://www.instagram.com/laarepasocial/', NULL, NULL, 'laarepasocial@gmail.com'),
(27, 'CHL00027D', 'Golfeado Mania', 'Chile', 'Santiago', 'San Miguel', 'Golfeados', 'criolla', 'Golfeado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56978325232 / 56978308563', NULL, 'https://www.instagram.com/golfeadomania2014/', NULL, NULL, NULL);



CREATE TABLE `DELIVERYS_MEX` (
  `ID` int(11) NOT NULL,
  `COD` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Ciudad de Mexico','Monterrey') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('propio','glovo','pididos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `DELIVERYS_MEX` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`) VALUES
(1, 'MEX00001D', 'Budare Andino', 'México', 'Ciudad de Mexico', NULL, 'Comida venezolana', 'criolla', 'Tequeño, Arepa, Empanada', NULL, NULL, NULL, '09:00 - 21:00', NULL, '09:00 - 21:00', '09:00 - 21:00', '09:00 - 22:00', '09:00 - 22:00', NULL, '558807251', NULL, 'https://www.instagram.com/budareandinomx/', NULL, NULL, 'budareandinomx@gmail.com'),
(2, 'MEX00002D', 'Dulce Avila', 'México', 'Ciudad de Mexico', 'Doctor Erazo 94 ', 'Postres y Pasapalos', 'postre', 'Torta, Tequeño, Pasapalo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5584026275 ', NULL, 'https://www.instagram.com/dulcegolfeadoavila/', NULL, NULL, 'dulceavilamx@gmail.com');



CREATE TABLE `DELIVERYS_PRT` (
  `ID` int(11) NOT NULL,
  `COD` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Buenos Aires','Cordoba','Neuquen') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('propio','glovo','pididos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `DELIVERYS_URY` (
  `ID` int(11) NOT NULL,
  `COD` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Montevideo','Punta del Este') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DELIVERY` enum('propio','glovo','pididos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_DELIVERY` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `DELIVERYS_URY` (`ID`, `COD`, `NOMBRE`, `PAIS`, `CIUDAD`, `BARRIO`, `DESCRIPCION`, `CATEGORIA`, `ETIQUETAS`, `NAVIDAD`, `DELIVERY`, `LINK_DELIVERY`, `LUNES`, `MARTES`, `MIERCOLES`, `JUEVES`, `VIERNES`, `SABADO`, `DOMINGO`, `TELEFONO`, `WHATSAPP`, `INSTAGRAM`, `FACEBOOK`, `WEB`, `CORREO`) VALUES
(1, 'URY00001D', 'Tequeños La ramba', 'Uruguay', 'Montevideo', 'La Ramba', 'Variedad de sabores para cada ', 'criolla', NULL, NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59892210598', 'https://www.instagram.com/tequelarambla/', 'https://www.facebook.com/tequelarambla/', 'https://tequelarambla.wixsite.com/tequelarambla', 'tequelarambla@gmail.com'),
(2, 'URY00002D', 'Guaro burger', 'Uruguay', 'Montevideo', 'Centro', 'Comida rápida al mejor estilo ', 'rapida', NULL, NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '092234983', 'https://www.instagram.com/guaro_burger_/', NULL, NULL, NULL),
(3, 'URY00003D', 'Fusión con Sazón', 'Uruguay', 'Montevideo', 'Centro', 'Emprendimiento dónde pondrás encontrar tortas para toda ocasión, picadas y servicio de catering', 'criolla', NULL, 'Torta Negra, Pan de Jamon, Hallaca', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '091842491', NULL, 'https://www.instagram.com/fusionconsazon/', 'https://www.facebook.com/fusionconsazon/', 'http://fusionconsazon.uy/', 'fusionconsazon@gmail.com'),
(4, 'URY00004D', 'La Vida Rosa', 'Uruguay', 'Montevideo', 'Centro', 'Cᴀkᴇs & Fᴏᴏᴅ', 'postre', NULL, 'Pan de Jamon', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/laviecakes_/', NULL, NULL, NULL),
(5, 'URY00005D', 'Finascake', 'Uruguay', 'Montevideo', NULL, 'Exquisitos Postres Venezolanos', 'postre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '092157573', '584147648986', 'https://www.instagram.com/finascake/', 'https://www.facebook.com/finascake/', NULL, 'finitacami@gmail.com'),
(6, 'URY00006D', 'La Cocina de Alba', 'Uruguay', 'Montevideo', NULL, 'Comida tradicional venezolana', 'criolla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59897016793', 'https://www.instagram.com/la.cocinadealba/', NULL, NULL, NULL),
(7, 'URY00007D', 'Emeri Ortiz', 'Uruguay', 'Montevideo', NULL, 'Cejas y depilación facial', 'estetica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '598096411495', 'https://www.instagram.com/emeri_ortiz/', NULL, NULL, NULL),
(8, 'URY00008D', 'Adri Nails', 'Uruguay', 'Montevideo', NULL, 'Especialistas en uñas esculpidas', 'estetica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '893330423', '59893330423', 'https://www.instagram.com/adrinailsuy/', NULL, NULL, NULL),
(9, 'URY00009D', 'Tequehappy', 'Uruguay', 'Montevideo', NULL, 'Tequeños, pasteles con papa, mini pizza, brownnies, trufas y más', 'criolla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/tequehappy.uy/', NULL, NULL, NULL),
(10, 'URY00010D', 'Guaratepuy', 'Uruguay', 'Montevideo', NULL, 'Cóctel Artesanal Venezolano, a base de licor y exquisitas frutas tropicales', 'productores', 'Guarapita, Licor', NULL, NULL, NULL, 'Envíos desde las 18:00 h', 'Envíos desde las 18:00 h', 'Envíos desde las 18:00 h', 'Envíos desde las 18:00 h', 'Envíos desde las 18:00 h', 'Envíos desde las 14:00 h', 'Envíos desde las 14:00 h', NULL, '59897414688', 'https://www.instagram.com/guaratepuy/', NULL, NULL, NULL),
(11, 'URY00011D', 'Casabe Orinoco', 'Uruguay', 'Montevideo', NULL, 'Casabe hecho en Uruguay', 'criolla', 'Casabe, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '897221701', '0059897221701', 'https://www.instagram.com/casabeorinoco/', NULL, NULL, NULL),
(12, 'URY00012D', 'Los Apamates', 'Uruguay', 'Montevideo', NULL, 'Elaboramos Dulcería Criolla Venezolana ,Dulces Típicos y Golosinas Artesanales', 'postre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/los.apamates/', 'https://www.facebook.com/Los-Apamates-Dulces-tipicos-107015940669350/', NULL, NULL),
(13, 'URY00013D', 'Cachitos Bakery', 'Uruguay', 'Montevideo', NULL, 'Delivery de Cachitos y Tequeños', 'criolla', 'Cachito, Tequeño', 'Pan de jamon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '099358314', '0097265263', 'https://www.instagram.com/cachitosbakery1/', NULL, NULL, NULL),
(14, 'URY00014D', 'Transporte R&E', 'Uruguay', 'Montevideo', NULL, 'Se realiza todo tipo de fletes y mudanzas', 'traslados', 'Flete, Mudanza, Traslado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '097995584', NULL, 'https://www.instagram.com/fletesymudanzasmontevideo/', NULL, NULL, NULL),
(15, 'URY00015D', 'Caracas Food Station', 'Uruguay', 'Montevideo', NULL, 'Comida venezolana', 'criolla', 'Cinnamon Rolls, Pastelitos', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59891653707', NULL, 'https://www.instagram.com/caracas.foodstation/', NULL, NULL, 'caracasfoodstation@gmail.com'),
(16, 'URY00016D', 'Garza Mora', 'Uruguay', 'Montevideo', NULL, 'Comida venezolana', 'criolla', 'Tequeños, Cachitos, Arepas', 'Pan de Jamon, Hallaca, ', 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '598092070787', NULL, 'https://www.instagram.com/garza.mora/', NULL, NULL, 'garzamorave@gmail.com'),
(17, 'URY00017D', 'Hisoka Sushi ', 'Uruguay', 'Montevideo', NULL, 'Comida Asiática', 'asiatica', 'Sushi', NULL, 'propio', NULL, NULL, NULL, '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', '19:00 - 23:30', NULL, '589096583660', 'https://www.instagram.com/hisokasushi/', NULL, NULL, NULL),
(18, 'URY00018D', 'Titi´s Cake Shop', 'Uruguay', 'Montevideo', NULL, 'Pasteleria', 'postre', 'Tortas, Postres, Cupcakes', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '589097378144', NULL, 'https://www.instagram.com/titiscakeshop/', 'https://www.facebook.com/titiscakeshop/', NULL, 'titiscakeshop@gmail.com'),
(19, 'URY00019D', 'Chicha Caribeña', 'Uruguay', 'Montevideo', 'Reus al Norte', 'Chicha Venezolana, el sabor de tus recuerdos ', 'postre', 'Chicha,', NULL, NULL, NULL, '15:00 - 00:00', '15:00 - 00:00', '15:00 - 00:00', '15:00 - 00:00', '15:00 - 00:00', '15:00 - 00:00', 'Feria de Tristan Narvaja', '+59895266761', '59895266761', 'https://www.instagram.com/chicha_caribevz/', 'https://www.facebook.com/chichacaribevz/', NULL, NULL),
(20, 'URY00020D', 'Tunjita Artisan Bakery', 'Uruguay', 'Montevideo', NULL, 'Creando,estudiando y promoviendo la panadería artesanal dulce en Montevideo', 'postre', 'Chicha,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Feria de Tristan Narvaja', '+59892079537', '59892079537', 'https://www.instagram.com/latunjita/', 'https://www.facebook.com/LaTunjita/', 'latunjita@gmail.com', NULL),
(21, 'URY00021D', 'Antojo Maracucho', 'Uruguay', 'Montevideo', NULL, 'Comida venezolana', 'criolla', 'Tequeños, Pastelitos', NULL, 'propio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '589096212703', 'https://www.instagram.com/antojomaracucho/', NULL, NULL, NULL),
(22, 'URY00022D', 'Junior Yogurt', 'Uruguay', 'Montevideo', NULL, 'Yogurt venezolano Natural ', 'postre', 'Yogurt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.instagram.com/junioryogurt/', 'https://www.facebook.com/profile.php?id=100045550803037', NULL, NULL),
(23, 'URY00023D', 'Tequezolanos', 'Uruguay', 'Montevideo', NULL, 'Tequeños venezolanos', 'criolla', 'Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '598097208169', NULL, 'https://www.instagram.com/tequezolanos22/', NULL, NULL, NULL),
(24, 'URY00024D', 'La Mocrocha ', 'Uruguay', 'Montevideo', NULL, 'Comida venezolana', 'criolla', 'Arepa, Empanada, Cachapa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24846915', '59893550619', 'https://www.instagram.com/lamorocha.uy/', NULL, NULL, 'lamorocha.uy@gmail.com'),
(25, 'URY00025D', 'Bocado a Bocado', 'Uruguay', 'Montevideo', '', 'Pan ', 'productores', 'Pan, Cachito, Tequeño', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59897987921', NULL, 'https://www.instagram.com/bocadoabocados/', NULL, NULL, 'bocadoabocados@gmail.com'),
(26, 'URY00026D', 'Lacteos Roraima', 'Uruguay', 'Montevideo', NULL, 'Productores de queso', 'productores', 'Queso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59897313097', '59897129018', 'https://www.instagram.com/lacteosroraima/', NULL, NULL, 'lacteosroraima@gmail.com');



CREATE TABLE `EMPR_ARG` (
  `ID` int(11) NOT NULL,
  `COD` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PAIS` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CIUDAD` enum('Buenos Aires','Cordoba','Neuquen') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BARRIO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CALLE` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ALTURA` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LOCAL` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DESCRIPCION` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CATEGORIA` enum('Arte, Moda y Diseño','Cultura y Deporte','Estetica y Salud','Mudanza y Traslados','Produstores y Distribuidores') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ETIQUETAS` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NAVIDAD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ENVIOS` enum('propio','glovo','pididos ya','rappi','uber eats') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LINK_ENVIOS` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LUNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MARTES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIERCOLES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JUEVES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VIERNES` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SABADO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOMINGO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TELEFONO` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHATSAPP` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INSTAGRAM` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FACEBOOK` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WEB` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CORREO` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `IRL_DUBLIN` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `IRL_DUBLIN_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



CREATE TABLE `MEX_CIUDAD` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','discoteca','servicio','panaderia')
,`ETIQUETAS` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `MEX_CIUDAD_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



CREATE TABLE `PRT_OPORTO` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `PRT_OPORTO_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



CREATE TABLE `URY_MONTEVIDEO` (
`COD` varchar(10)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(30)
,`CALLE` varchar(30)
,`ALTURA` varchar(10)
,`LOCAL` varchar(10)
,`DESCRIPCION` varchar(250)
,`CATEGORIA` enum('restaurante','local','panaderia','discoteca','servicio')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
,`RUTA_GOOGLE` varchar(250)
,`X` varchar(11)
,`Y` varchar(11)
);



CREATE TABLE `URY_MONTEVIDEO_DEL` (
`COD` varchar(9)
,`NOMBRE` varchar(50)
,`BARRIO` varchar(20)
,`DESCRIPCION` varchar(100)
,`CATEGORIA` enum('criolla','rapida','asiatica','postre','arte','cultura','estetica','traslados','productores')
,`ETIQUETAS` varchar(100)
,`NAVIDAD` varchar(100)
,`LUNES` varchar(30)
,`MARTES` varchar(30)
,`MIERCOLES` varchar(30)
,`JUEVES` varchar(30)
,`VIERNES` varchar(30)
,`SABADO` varchar(30)
,`DOMINGO` varchar(30)
,`TELEFONO` varchar(30)
,`WHATSAPP` varchar(30)
,`INSTAGRAM` varchar(250)
,`FACEBOOK` varchar(250)
,`WEB` varchar(100)
);



DROP TABLE IF EXISTS `ARG_BUENOSAIRES`;

CREATE  VIEW `ARG_BUENOSAIRES`  AS  select `BUSCATUAREPA_ARG`.`COD` AS `COD`,`BUSCATUAREPA_ARG`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_ARG`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_ARG`.`CALLE` AS `CALLE`,`BUSCATUAREPA_ARG`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_ARG`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_ARG`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_ARG`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_ARG`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_ARG`.`NAVIDAD` AS `NAVIDAD`,`BUSCATUAREPA_ARG`.`LUNES` AS `LUNES`,`BUSCATUAREPA_ARG`.`MARTES` AS `MARTES`,`BUSCATUAREPA_ARG`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_ARG`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_ARG`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_ARG`.`SABADO` AS `SABADO`,`BUSCATUAREPA_ARG`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_ARG`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_ARG`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_ARG`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_ARG`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_ARG`.`WEB` AS `WEB`,`BUSCATUAREPA_ARG`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_ARG`.`X` AS `X`,`BUSCATUAREPA_ARG`.`Y` AS `Y` from `BUSCATUAREPA_ARG` where `BUSCATUAREPA_ARG`.`CIUDAD` = 'Buenos Aires' and `BUSCATUAREPA_ARG`.`CATEGORIA` <> '' ;

-- 

DROP TABLE IF EXISTS `ARG_BUENOSAIRES_DEL`;

CREATE  VIEW `ARG_BUENOSAIRES_DEL`  AS  select `DELIVERYS_ARG`.`COD` AS `COD`,`DELIVERYS_ARG`.`NOMBRE` AS `NOMBRE`,`DELIVERYS_ARG`.`BARRIO` AS `BARRIO`,`DELIVERYS_ARG`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERYS_ARG`.`CATEGORIA` AS `CATEGORIA`,`DELIVERYS_ARG`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERYS_ARG`.`NAVIDAD` AS `NAVIDAD`,`DELIVERYS_ARG`.`LUNES` AS `LUNES`,`DELIVERYS_ARG`.`MARTES` AS `MARTES`,`DELIVERYS_ARG`.`MIERCOLES` AS `MIERCOLES`,`DELIVERYS_ARG`.`JUEVES` AS `JUEVES`,`DELIVERYS_ARG`.`VIERNES` AS `VIERNES`,`DELIVERYS_ARG`.`SABADO` AS `SABADO`,`DELIVERYS_ARG`.`DOMINGO` AS `DOMINGO`,`DELIVERYS_ARG`.`TELEFONO` AS `TELEFONO`,`DELIVERYS_ARG`.`WHATSAPP` AS `WHATSAPP`,`DELIVERYS_ARG`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERYS_ARG`.`FACEBOOK` AS `FACEBOOK`,`DELIVERYS_ARG`.`WEB` AS `WEB` from `DELIVERYS_ARG` where `DELIVERYS_ARG`.`CIUDAD` = 'Buenos Aires' and `DELIVERYS_ARG`.`CATEGORIA` <> '' ;

-- 

DROP TABLE IF EXISTS `ARG_NEUQUEN`;

CREATE  VIEW `ARG_NEUQUEN`  AS  select `BUSCATUAREPA_ARG`.`COD` AS `COD`,`BUSCATUAREPA_ARG`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_ARG`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_ARG`.`CALLE` AS `CALLE`,`BUSCATUAREPA_ARG`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_ARG`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_ARG`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_ARG`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_ARG`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_ARG`.`LUNES` AS `LUNES`,`BUSCATUAREPA_ARG`.`MARTES` AS `MARTES`,`BUSCATUAREPA_ARG`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_ARG`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_ARG`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_ARG`.`SABADO` AS `SABADO`,`BUSCATUAREPA_ARG`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_ARG`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_ARG`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_ARG`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_ARG`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_ARG`.`WEB` AS `WEB`,`BUSCATUAREPA_ARG`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_ARG`.`X` AS `X`,`BUSCATUAREPA_ARG`.`Y` AS `Y` from `BUSCATUAREPA_ARG` where `BUSCATUAREPA_ARG`.`CIUDAD` = 'Neuquen' and `BUSCATUAREPA_ARG`.`CATEGORIA` <> '' ;

-- 

DROP TABLE IF EXISTS `ARG_NEUQUEN_DEL`;

CREATE  VIEW `ARG_NEUQUEN_DEL`  AS  select `DELIVERYS_ARG`.`COD` AS `COD`,`DELIVERYS_ARG`.`NOMBRE` AS `NOMBRE`,`DELIVERYS_ARG`.`BARRIO` AS `BARRIO`,`DELIVERYS_ARG`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERYS_ARG`.`CATEGORIA` AS `CATEGORIA`,`DELIVERYS_ARG`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERYS_ARG`.`LUNES` AS `LUNES`,`DELIVERYS_ARG`.`MARTES` AS `MARTES`,`DELIVERYS_ARG`.`MIERCOLES` AS `MIERCOLES`,`DELIVERYS_ARG`.`JUEVES` AS `JUEVES`,`DELIVERYS_ARG`.`VIERNES` AS `VIERNES`,`DELIVERYS_ARG`.`SABADO` AS `SABADO`,`DELIVERYS_ARG`.`DOMINGO` AS `DOMINGO`,`DELIVERYS_ARG`.`TELEFONO` AS `TELEFONO`,`DELIVERYS_ARG`.`WHATSAPP` AS `WHATSAPP`,`DELIVERYS_ARG`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERYS_ARG`.`FACEBOOK` AS `FACEBOOK`,`DELIVERYS_ARG`.`WEB` AS `WEB` from `DELIVERYS_ARG` where `DELIVERYS_ARG`.`CIUDAD` = 'Neuquen' and `DELIVERYS_ARG`.`CATEGORIA` <> '' ;

-- 

DROP TABLE IF EXISTS `CHL_LLANQUIHUE`;

CREATE  VIEW `CHL_LLANQUIHUE`  AS  select `BUSCATUAREPA_CHL`.`COD` AS `COD`,`BUSCATUAREPA_CHL`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_CHL`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_CHL`.`CALLE` AS `CALLE`,`BUSCATUAREPA_CHL`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_CHL`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_CHL`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_CHL`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_CHL`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_CHL`.`LUNES` AS `LUNES`,`BUSCATUAREPA_CHL`.`MARTES` AS `MARTES`,`BUSCATUAREPA_CHL`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_CHL`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_CHL`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_CHL`.`SABADO` AS `SABADO`,`BUSCATUAREPA_CHL`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_CHL`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_CHL`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_CHL`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_CHL`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_CHL`.`WEB` AS `WEB`,`BUSCATUAREPA_CHL`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_CHL`.`X` AS `X`,`BUSCATUAREPA_CHL`.`Y` AS `Y` from `BUSCATUAREPA_CHL` where `BUSCATUAREPA_CHL`.`CIUDAD` = 'Llanquihue' and `BUSCATUAREPA_CHL`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `CHL_LLANQUIHUE_DEL`;

CREATE  VIEW `CHL_LLANQUIHUE_DEL`  AS  select `DELIVERYS_CHL`.`COD` AS `COD`,`DELIVERYS_CHL`.`NOMBRE` AS `NOMBRE`,`DELIVERYS_CHL`.`BARRIO` AS `BARRIO`,`DELIVERYS_CHL`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERYS_CHL`.`CATEGORIA` AS `CATEGORIA`,`DELIVERYS_CHL`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERYS_CHL`.`LUNES` AS `LUNES`,`DELIVERYS_CHL`.`MARTES` AS `MARTES`,`DELIVERYS_CHL`.`MIERCOLES` AS `MIERCOLES`,`DELIVERYS_CHL`.`JUEVES` AS `JUEVES`,`DELIVERYS_CHL`.`VIERNES` AS `VIERNES`,`DELIVERYS_CHL`.`SABADO` AS `SABADO`,`DELIVERYS_CHL`.`DOMINGO` AS `DOMINGO`,`DELIVERYS_CHL`.`TELEFONO` AS `TELEFONO`,`DELIVERYS_CHL`.`WHATSAPP` AS `WHATSAPP`,`DELIVERYS_CHL`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERYS_CHL`.`FACEBOOK` AS `FACEBOOK`,`DELIVERYS_CHL`.`WEB` AS `WEB` from `DELIVERYS_CHL` where `DELIVERYS_CHL`.`CIUDAD` = 'Llanquihue' and `DELIVERYS_CHL`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `CHL_SANTIAGO`;

CREATE  VIEW `CHL_SANTIAGO`  AS  select `BUSCATUAREPA_CHL`.`COD` AS `COD`,`BUSCATUAREPA_CHL`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_CHL`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_CHL`.`CALLE` AS `CALLE`,`BUSCATUAREPA_CHL`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_CHL`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_CHL`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_CHL`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_CHL`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_CHL`.`NAVIDAD` AS `NAVIDAD`,`BUSCATUAREPA_CHL`.`LUNES` AS `LUNES`,`BUSCATUAREPA_CHL`.`MARTES` AS `MARTES`,`BUSCATUAREPA_CHL`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_CHL`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_CHL`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_CHL`.`SABADO` AS `SABADO`,`BUSCATUAREPA_CHL`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_CHL`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_CHL`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_CHL`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_CHL`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_CHL`.`WEB` AS `WEB`,`BUSCATUAREPA_CHL`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_CHL`.`X` AS `X`,`BUSCATUAREPA_CHL`.`Y` AS `Y` from `BUSCATUAREPA_CHL` where `BUSCATUAREPA_CHL`.`CIUDAD` = 'Santiago' and `BUSCATUAREPA_CHL`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `CHL_SANTIAGO_DEL`;

CREATE  VIEW `CHL_SANTIAGO_DEL`  AS  select `DELIVERYS_CHL`.`COD` AS `COD`,`DELIVERYS_CHL`.`NOMBRE` AS `NOMBRE`,`DELIVERYS_CHL`.`BARRIO` AS `BARRIO`,`DELIVERYS_CHL`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERYS_CHL`.`CATEGORIA` AS `CATEGORIA`,`DELIVERYS_CHL`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERYS_CHL`.`NAVIDAD` AS `NAVIDAD`,`DELIVERYS_CHL`.`LUNES` AS `LUNES`,`DELIVERYS_CHL`.`MARTES` AS `MARTES`,`DELIVERYS_CHL`.`MIERCOLES` AS `MIERCOLES`,`DELIVERYS_CHL`.`JUEVES` AS `JUEVES`,`DELIVERYS_CHL`.`VIERNES` AS `VIERNES`,`DELIVERYS_CHL`.`SABADO` AS `SABADO`,`DELIVERYS_CHL`.`DOMINGO` AS `DOMINGO`,`DELIVERYS_CHL`.`TELEFONO` AS `TELEFONO`,`DELIVERYS_CHL`.`WHATSAPP` AS `WHATSAPP`,`DELIVERYS_CHL`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERYS_CHL`.`FACEBOOK` AS `FACEBOOK`,`DELIVERYS_CHL`.`WEB` AS `WEB` from `DELIVERYS_CHL` where `DELIVERYS_CHL`.`CIUDAD` = 'Santiago' and `DELIVERYS_CHL`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `IRL_DUBLIN`;

CREATE  VIEW `IRL_DUBLIN`  AS  select `BUSCATUAREPA_IRL`.`COD` AS `COD`,`BUSCATUAREPA_IRL`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_IRL`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_IRL`.`CALLE` AS `CALLE`,`BUSCATUAREPA_IRL`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_IRL`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_IRL`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_IRL`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_IRL`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_IRL`.`NAVIDAD` AS `NAVIDAD`,`BUSCATUAREPA_IRL`.`LUNES` AS `LUNES`,`BUSCATUAREPA_IRL`.`MARTES` AS `MARTES`,`BUSCATUAREPA_IRL`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_IRL`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_IRL`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_IRL`.`SABADO` AS `SABADO`,`BUSCATUAREPA_IRL`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_IRL`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_IRL`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_IRL`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_IRL`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_IRL`.`WEB` AS `WEB`,`BUSCATUAREPA_IRL`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_IRL`.`X` AS `X`,`BUSCATUAREPA_IRL`.`Y` AS `Y` from `BUSCATUAREPA_IRL` where `BUSCATUAREPA_IRL`.`CIUDAD` = 'Dublin' and `BUSCATUAREPA_IRL`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `IRL_DUBLIN_DEL`;

CREATE  VIEW `IRL_DUBLIN_DEL`  AS  select `DELIVERIES_IRL`.`COD` AS `COD`,`DELIVERIES_IRL`.`NOMBRE` AS `NOMBRE`,`DELIVERIES_IRL`.`BARRIO` AS `BARRIO`,`DELIVERIES_IRL`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERIES_IRL`.`CATEGORIA` AS `CATEGORIA`,`DELIVERIES_IRL`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERIES_IRL`.`NAVIDAD` AS `NAVIDAD`,`DELIVERIES_IRL`.`LUNES` AS `LUNES`,`DELIVERIES_IRL`.`MARTES` AS `MARTES`,`DELIVERIES_IRL`.`MIERCOLES` AS `MIERCOLES`,`DELIVERIES_IRL`.`JUEVES` AS `JUEVES`,`DELIVERIES_IRL`.`VIERNES` AS `VIERNES`,`DELIVERIES_IRL`.`SABADO` AS `SABADO`,`DELIVERIES_IRL`.`DOMINGO` AS `DOMINGO`,`DELIVERIES_IRL`.`TELEFONO` AS `TELEFONO`,`DELIVERIES_IRL`.`WHATSAPP` AS `WHATSAPP`,`DELIVERIES_IRL`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERIES_IRL`.`FACEBOOK` AS `FACEBOOK`,`DELIVERIES_IRL`.`WEB` AS `WEB` from `DELIVERIES_IRL` where `DELIVERIES_IRL`.`CIUDAD` = 'Oporto' and `DELIVERIES_IRL`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `MEX_CIUDAD`;

CREATE  VIEW `MEX_CIUDAD`  AS  select `BUSCATUAREPA_MEX`.`COD` AS `COD`,`BUSCATUAREPA_MEX`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_MEX`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_MEX`.`CALLE` AS `CALLE`,`BUSCATUAREPA_MEX`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_MEX`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_MEX`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_MEX`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_MEX`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_MEX`.`LUNES` AS `LUNES`,`BUSCATUAREPA_MEX`.`MARTES` AS `MARTES`,`BUSCATUAREPA_MEX`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_MEX`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_MEX`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_MEX`.`SABADO` AS `SABADO`,`BUSCATUAREPA_MEX`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_MEX`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_MEX`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_MEX`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_MEX`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_MEX`.`WEB` AS `WEB`,`BUSCATUAREPA_MEX`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_MEX`.`X` AS `X`,`BUSCATUAREPA_MEX`.`Y` AS `Y` from `BUSCATUAREPA_MEX` where `BUSCATUAREPA_MEX`.`CIUDAD` = 'Ciudad de Mexico' and `BUSCATUAREPA_MEX`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `MEX_CIUDAD_DEL`;

CREATE  VIEW `MEX_CIUDAD_DEL`  AS  select `DELIVERYS_MEX`.`COD` AS `COD`,`DELIVERYS_MEX`.`NOMBRE` AS `NOMBRE`,`DELIVERYS_MEX`.`BARRIO` AS `BARRIO`,`DELIVERYS_MEX`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERYS_MEX`.`CATEGORIA` AS `CATEGORIA`,`DELIVERYS_MEX`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERYS_MEX`.`NAVIDAD` AS `NAVIDAD`,`DELIVERYS_MEX`.`LUNES` AS `LUNES`,`DELIVERYS_MEX`.`MARTES` AS `MARTES`,`DELIVERYS_MEX`.`MIERCOLES` AS `MIERCOLES`,`DELIVERYS_MEX`.`JUEVES` AS `JUEVES`,`DELIVERYS_MEX`.`VIERNES` AS `VIERNES`,`DELIVERYS_MEX`.`SABADO` AS `SABADO`,`DELIVERYS_MEX`.`DOMINGO` AS `DOMINGO`,`DELIVERYS_MEX`.`TELEFONO` AS `TELEFONO`,`DELIVERYS_MEX`.`WHATSAPP` AS `WHATSAPP`,`DELIVERYS_MEX`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERYS_MEX`.`FACEBOOK` AS `FACEBOOK`,`DELIVERYS_MEX`.`WEB` AS `WEB` from `DELIVERYS_MEX` where `DELIVERYS_MEX`.`CIUDAD` = 'Ciudad de Mexico' and `DELIVERYS_MEX`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `PRT_OPORTO`;

CREATE  VIEW `PRT_OPORTO`  AS  select `BUSCATUAREPA_PRT`.`COD` AS `COD`,`BUSCATUAREPA_PRT`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_PRT`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_PRT`.`CALLE` AS `CALLE`,`BUSCATUAREPA_PRT`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_PRT`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_PRT`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_PRT`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_PRT`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_PRT`.`NAVIDAD` AS `NAVIDAD`,`BUSCATUAREPA_PRT`.`LUNES` AS `LUNES`,`BUSCATUAREPA_PRT`.`MARTES` AS `MARTES`,`BUSCATUAREPA_PRT`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_PRT`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_PRT`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_PRT`.`SABADO` AS `SABADO`,`BUSCATUAREPA_PRT`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_PRT`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_PRT`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_PRT`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_PRT`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_PRT`.`WEB` AS `WEB`,`BUSCATUAREPA_PRT`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_PRT`.`X` AS `X`,`BUSCATUAREPA_PRT`.`Y` AS `Y` from `BUSCATUAREPA_PRT` where `BUSCATUAREPA_PRT`.`CIUDAD` = 'Oporto' and `BUSCATUAREPA_PRT`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `PRT_OPORTO_DEL`;

CREATE  VIEW `PRT_OPORTO_DEL`  AS  select `DELIVERYS_PRT`.`COD` AS `COD`,`DELIVERYS_PRT`.`NOMBRE` AS `NOMBRE`,`DELIVERYS_PRT`.`BARRIO` AS `BARRIO`,`DELIVERYS_PRT`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERYS_PRT`.`CATEGORIA` AS `CATEGORIA`,`DELIVERYS_PRT`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERYS_PRT`.`NAVIDAD` AS `NAVIDAD`,`DELIVERYS_PRT`.`LUNES` AS `LUNES`,`DELIVERYS_PRT`.`MARTES` AS `MARTES`,`DELIVERYS_PRT`.`MIERCOLES` AS `MIERCOLES`,`DELIVERYS_PRT`.`JUEVES` AS `JUEVES`,`DELIVERYS_PRT`.`VIERNES` AS `VIERNES`,`DELIVERYS_PRT`.`SABADO` AS `SABADO`,`DELIVERYS_PRT`.`DOMINGO` AS `DOMINGO`,`DELIVERYS_PRT`.`TELEFONO` AS `TELEFONO`,`DELIVERYS_PRT`.`WHATSAPP` AS `WHATSAPP`,`DELIVERYS_PRT`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERYS_PRT`.`FACEBOOK` AS `FACEBOOK`,`DELIVERYS_PRT`.`WEB` AS `WEB` from `DELIVERYS_PRT` where `DELIVERYS_PRT`.`CIUDAD` = 'Oporto' and `DELIVERYS_PRT`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `URY_MONTEVIDEO`;

CREATE  VIEW `URY_MONTEVIDEO`  AS  select `BUSCATUAREPA_URY`.`COD` AS `COD`,`BUSCATUAREPA_URY`.`NOMBRE` AS `NOMBRE`,`BUSCATUAREPA_URY`.`BARRIO` AS `BARRIO`,`BUSCATUAREPA_URY`.`CALLE` AS `CALLE`,`BUSCATUAREPA_URY`.`ALTURA` AS `ALTURA`,`BUSCATUAREPA_URY`.`LOCAL` AS `LOCAL`,`BUSCATUAREPA_URY`.`DESCRIPCION` AS `DESCRIPCION`,`BUSCATUAREPA_URY`.`CATEGORIA` AS `CATEGORIA`,`BUSCATUAREPA_URY`.`ETIQUETAS` AS `ETIQUETAS`,`BUSCATUAREPA_URY`.`NAVIDAD` AS `NAVIDAD`,`BUSCATUAREPA_URY`.`LUNES` AS `LUNES`,`BUSCATUAREPA_URY`.`MARTES` AS `MARTES`,`BUSCATUAREPA_URY`.`MIERCOLES` AS `MIERCOLES`,`BUSCATUAREPA_URY`.`JUEVES` AS `JUEVES`,`BUSCATUAREPA_URY`.`VIERNES` AS `VIERNES`,`BUSCATUAREPA_URY`.`SABADO` AS `SABADO`,`BUSCATUAREPA_URY`.`DOMINGO` AS `DOMINGO`,`BUSCATUAREPA_URY`.`TELEFONO` AS `TELEFONO`,`BUSCATUAREPA_URY`.`WHATSAPP` AS `WHATSAPP`,`BUSCATUAREPA_URY`.`INSTAGRAM` AS `INSTAGRAM`,`BUSCATUAREPA_URY`.`FACEBOOK` AS `FACEBOOK`,`BUSCATUAREPA_URY`.`WEB` AS `WEB`,`BUSCATUAREPA_URY`.`RUTA_GOOGLE` AS `RUTA_GOOGLE`,`BUSCATUAREPA_URY`.`X` AS `X`,`BUSCATUAREPA_URY`.`Y` AS `Y` from `BUSCATUAREPA_URY` where `BUSCATUAREPA_URY`.`CIUDAD` = 'Montevideo' and `BUSCATUAREPA_URY`.`CATEGORIA` <> '' ;

-- 


DROP TABLE IF EXISTS `URY_MONTEVIDEO_DEL`;

CREATE  VIEW `URY_MONTEVIDEO_DEL`  AS  select `DELIVERYS_URY`.`COD` AS `COD`,`DELIVERYS_URY`.`NOMBRE` AS `NOMBRE`,`DELIVERYS_URY`.`BARRIO` AS `BARRIO`,`DELIVERYS_URY`.`DESCRIPCION` AS `DESCRIPCION`,`DELIVERYS_URY`.`CATEGORIA` AS `CATEGORIA`,`DELIVERYS_URY`.`ETIQUETAS` AS `ETIQUETAS`,`DELIVERYS_URY`.`NAVIDAD` AS `NAVIDAD`,`DELIVERYS_URY`.`LUNES` AS `LUNES`,`DELIVERYS_URY`.`MARTES` AS `MARTES`,`DELIVERYS_URY`.`MIERCOLES` AS `MIERCOLES`,`DELIVERYS_URY`.`JUEVES` AS `JUEVES`,`DELIVERYS_URY`.`VIERNES` AS `VIERNES`,`DELIVERYS_URY`.`SABADO` AS `SABADO`,`DELIVERYS_URY`.`DOMINGO` AS `DOMINGO`,`DELIVERYS_URY`.`TELEFONO` AS `TELEFONO`,`DELIVERYS_URY`.`WHATSAPP` AS `WHATSAPP`,`DELIVERYS_URY`.`INSTAGRAM` AS `INSTAGRAM`,`DELIVERYS_URY`.`FACEBOOK` AS `FACEBOOK`,`DELIVERYS_URY`.`WEB` AS `WEB` from `DELIVERYS_URY` where `DELIVERYS_URY`.`CIUDAD` = 'Montevideo' and `DELIVERYS_URY`.`CATEGORIA` <> '' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BUSCATUAREPA_ARG`
--
ALTER TABLE `BUSCATUAREPA_ARG`
  ADD PRIMARY KEY (`COD`),
  ADD UNIQUE KEY `COD` (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `BUSCATUAREPA_CHL`
--
ALTER TABLE `BUSCATUAREPA_CHL`
  ADD PRIMARY KEY (`COD`),
  ADD UNIQUE KEY `COD` (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `BUSCATUAREPA_MEX`
--
ALTER TABLE `BUSCATUAREPA_MEX`
  ADD PRIMARY KEY (`COD`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `COD` (`COD`);

--
-- Indexes for table `BUSCATUAREPA_PRT`
--
ALTER TABLE `BUSCATUAREPA_PRT`
  ADD PRIMARY KEY (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `BUSCATUAREPA_URY`
--
ALTER TABLE `BUSCATUAREPA_URY`
  ADD PRIMARY KEY (`COD`),
  ADD UNIQUE KEY `COD` (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `DELIVERYS_ARG`
--
ALTER TABLE `DELIVERYS_ARG`
  ADD UNIQUE KEY `COD` (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `DELIVERYS_CHL`
--
ALTER TABLE `DELIVERYS_CHL`
  ADD UNIQUE KEY `COD` (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `DELIVERYS_MEX`
--
ALTER TABLE `DELIVERYS_MEX`
  ADD UNIQUE KEY `ID_2` (`ID`),
  ADD UNIQUE KEY `COD_2` (`COD`),
  ADD KEY `ID` (`ID`),
  ADD KEY `COD` (`COD`);

--
-- Indexes for table `DELIVERYS_PRT`
--
ALTER TABLE `DELIVERYS_PRT`
  ADD PRIMARY KEY (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `DELIVERYS_URY`
--
ALTER TABLE `DELIVERYS_URY`
  ADD UNIQUE KEY `COD` (`COD`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BUSCATUAREPA_ARG`
--
ALTER TABLE `BUSCATUAREPA_ARG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'AUTO', AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `BUSCATUAREPA_CHL`
--
ALTER TABLE `BUSCATUAREPA_CHL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `BUSCATUAREPA_MEX`
--
ALTER TABLE `BUSCATUAREPA_MEX`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `BUSCATUAREPA_URY`
--
ALTER TABLE `BUSCATUAREPA_URY`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `DELIVERYS_ARG`
--
ALTER TABLE `DELIVERYS_ARG`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `DELIVERYS_CHL`
--
ALTER TABLE `DELIVERYS_CHL`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `DELIVERYS_MEX`
--
ALTER TABLE `DELIVERYS_MEX`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `DELIVERYS_URY`
--
ALTER TABLE `DELIVERYS_URY`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;
