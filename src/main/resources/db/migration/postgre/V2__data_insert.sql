
Insert into estado (id,nome, uf) values (1,'Acre', 'AC');
Insert into estado (id,nome, uf) values (2,'Alagoas', 'AL');
Insert into estado (id,nome, uf) values (3,'Amap�', 'AP');
Insert into estado (id,nome, uf) values (4,'Amazonas', 'AM');
Insert into estado (id,nome, uf) values (5,'Bahia', 'BA');
Insert into estado (id,nome, uf) values (6,'Cear�', 'CE');
Insert into estado (id,nome, uf) values (7,'Distrito Federal', 'DF');
Insert into estado (id,nome, uf) values (8,'Esp�rito Santo', 'ES');
Insert into estado (id,nome, uf) values (9,'Goi�s', 'GO');
Insert into estado (id,nome, uf) values (10,'Maranh�o', 'MA');
Insert into estado (id,nome, uf) values (11,'Mato Grosso', 'MT');
Insert into estado (id,nome, uf) values (12,'Mato Grosso do Sul', 'MS');
Insert into estado (id,nome, uf) values (13,'Minas Gerais', 'MG');
Insert into estado (id,nome, uf) values (14,'Par�', 'PA');
Insert into estado (id,nome, uf) values (15,'Para�ba', 'PB');
Insert into estado (id,nome, uf) values (16,'Paran�', 'PR');
Insert into estado (id,nome, uf) values (17,'Pernambuco', 'PE');
Insert into estado (id,nome, uf) values (18,'Piau�', 'PI');
Insert into estado (id,nome, uf) values (19,'Rio de Janeiro', 'RJ');
Insert into estado (id,nome, uf) values (20,'Rio Grande do Norte', 'RN');
Insert into estado (id,nome, uf) values (21,'Rio Grande do Sul', 'RS');
Insert into estado (id,nome, uf) values (22,'Rond�nia', 'RO');
Insert into estado (id,nome, uf) values (23,'Roraima', 'RR');
Insert into estado (id,nome, uf) values (24,'Santa Catarina', 'SC');
Insert into estado (id,nome, uf) values (25,'S�o Paulo', 'SP');
Insert into estado (id,nome, uf) values (26,'Sergipe', 'SE');
Insert into estado (id,nome, uf) values (27,'Tocantins', 'TO');


Insert into municipio (id,nome, estado)values(1,'Abadia de Goi�s',(SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(2,'Abadi�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(3,'Acre�na',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(4,'Adel�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(5,'�gua Fria de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(6,'�gua Limpa',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(7,'�guas Lindas de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(8,'Alex�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(9,'Alo�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(10,'Alto Horizonte',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(11,'Alto Para�so de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(12,'Alvorada do Norte',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(13,'Amaralina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(14,'Americano do Brasil',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(15,'Amorin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(16,'An�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(17,'Anhanguera',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(18,'Anicuns',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(19,'Aparecida de Goi�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(20,'Aparecida do Rio Doce',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(21,'Apor�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(22,'Ara�u',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(23,'Aragar�as',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(24,'Aragoi�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(25,'Araguapaz',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(26,'Aren�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(27,'Aruan�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(28,'Auril�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(29,'Avelin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(30,'Baliza',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(31,'Barro Alto',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(32,'Bela Vista de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(33,'Bom Jardim de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(34,'Bom Jesus de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(35,'Bonfin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(36,'Bon�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(37,'Brazabrantes',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(38,'Brit�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(39,'Buriti Alegre',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(40,'Buriti de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(41,'Buritin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(42,'Cabeceiras',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(43,'Cachoeira Alta',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(44,'Cachoeira de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(45,'Cachoeira Dourada',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(46,'Ca�u',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(47,'Caiap�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(48,'Caldas Novas',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(49,'Caldazinha',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(50,'Campestre de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(51,'Campina�u',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(52,'Campinorte',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(53,'Campo Alegre de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(54,'Campo Limpo de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(55,'Campos Belos',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(56,'Campos Verdes',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(57,'Carmo do Rio Verde',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(58,'Castel�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(59,'Catal�o',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(60,'Catura�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(61,'Cavalcante',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(62,'Ceres',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(63,'Cezarina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(64,'Chapad�o do C�u',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(65,'Cidade Ocidental',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(66,'Cocalzinho de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(67,'Colinas do Sul',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(68,'C�rrego do Ouro',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(69,'Corumb� de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(70,'Corumba�ba',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(71,'Cristalina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(72,'Cristian�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(73,'Crix�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(74,'Crom�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(75,'Cumari',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(76,'Damian�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(77,'Damol�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(78,'Davin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(79,'Diorama',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(80,'Doverl�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(81,'Edealina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(82,'Ed�ia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(83,'Estrela do Norte',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(84,'Faina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(85,'Fazenda Nova',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(86,'Firmin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(87,'Flores de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(88,'Formosa',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(89,'Formoso',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(90,'Gameleira de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(91,'Divin�polis de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(92,'Goian�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(93,'Goiandira',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(94,'Goian�sia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(95,'Goi�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(96,'Goianira',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(97,'Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(98,'Goiatuba',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(99,'Gouvel�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(100,'Guap�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(101,'Guara�ta',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(102,'Guarani de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(103,'Guarinos',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(104,'Heitora�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(105,'Hidrol�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(106,'Hidrolina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(107,'Iaciara',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(108,'Inaciol�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(109,'Indiara',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(110,'Inhumas',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(111,'Ipameri',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(112,'Ipiranga de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(113,'Ipor�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(114,'Israel�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(115,'Itabera�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(116,'Itaguari',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(117,'Itaguaru',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(118,'Itaj�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(119,'Itapaci',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(120,'Itapirapu�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(121,'Itapuranga',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(122,'Itarum�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(123,'Itau�u',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(124,'Itumbiara',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(125,'Ivol�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(126,'Jandaia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(127,'Jaragu�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(128,'Jata�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(129,'Jaupaci',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(130,'Jes�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(131,'Jovi�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(132,'Jussara',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(133,'Lagoa Santa',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(134,'Leopoldo de Bulh�es',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(135,'Luzi�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(136,'Mairipotaba',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(137,'Mamba�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(138,'Mara Rosa',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(139,'Marzag�o',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(140,'Matrinch�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(141,'Mauril�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(142,'Mimoso de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(143,'Mina�u',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(144,'Mineiros',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(145,'Moipor�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(146,'Monte Alegre de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(147,'Montes Claros de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(148,'Montividiu',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(149,'Montividiu do Norte',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(150,'Morrinhos',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(151,'Morro Agudo de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(152,'Moss�medes',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(153,'Mozarl�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(154,'Mundo Novo',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(155,'Mutun�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(156,'Naz�rio',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(157,'Ner�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(158,'Niquel�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(159,'Nova Am�rica',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(160,'Nova Aurora',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(161,'Nova Crix�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(162,'Nova Gl�ria',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(163,'Nova Igua�u de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(164,'Nova Roma',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(165,'Nova Veneza',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(166,'Novo Brasil',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(167,'Novo Gama',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(168,'Novo Planalto',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(169,'Orizona',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(170,'Ouro Verde de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(171,'Ouvidor',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(172,'Padre Bernardo',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(173,'Palestina de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(174,'Palmeiras de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(175,'Palmelo',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(176,'Palmin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(177,'Panam�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(178,'Paranaiguara',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(179,'Para�na',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(180,'Perol�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(181,'Petrolina de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(182,'Pilar de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(183,'Piracanjuba',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(184,'Piranhas',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(185,'Piren�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(186,'Pires do Rio',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(187,'Planaltina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(188,'Pontalina',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(189,'Porangatu',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(190,'Porteir�o',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(191,'Portel�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(192,'Posse',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(193,'Professor Jamil',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(194,'Quirin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(195,'Rialma',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(196,'Rian�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(197,'Rio Quente',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(198,'Rio Verde',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(199,'Rubiataba',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(200,'Sanclerl�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(201,'Santa B�rbara de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(202,'Santa Cruz de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(203,'Santa F� de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(204,'Santa Helena de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(205,'Santa Isabel',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(206,'Santa Rita do Araguaia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(207,'Santa Rita do Novo Destino',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(208,'Santa Rosa de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(209,'Santa Tereza de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(210,'Santa Terezinha de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(211,'Santo Ant�nio da Barra',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(212,'Santo Ant�nio de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(213,'Santo Ant�nio do Descoberto',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(214,'S�o Domingos',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(215,'S�o Francisco de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(216,'S�o Jo�o D''Alian�a',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(217,'S�o Jo�o da Para�na',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(218,'S�o Lu�s de Montes Belos',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(219,'S�o Lu�z do Norte',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(220,'S�o Miguel do Araguaia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(221,'S�o Miguel do Passa Quatro',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(222,'S�o Patr�cio',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(223,'S�o Sim�o',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(224,'Senador Canedo',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(225,'Serran�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(226,'Silv�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(227,'Simol�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(228,'S�tio D''Abadia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(229,'Taquaral de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(230,'Teresina de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(231,'Terez�polis de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(232,'Tr�s Ranchos',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(233,'Trindade',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(234,'Trombas',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(235,'Turv�nia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(236,'Turvel�ndia',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(237,'Uirapuru',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(238,'Urua�u',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(239,'Uruana',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(240,'Uruta�',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(241,'Valpara�so de Goi�s',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(242,'Varj�o',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(243,'Vian�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(244,'Vicentin�polis',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(245,'Vila Boa',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(246,'Vila Prop�cio',( SELECT id FROM estado WHERE uf ='GO'));
Insert into municipio (id,nome, estado)values(247,'Bras�lia',( SELECT id FROM estado WHERE uf = 'DF'));

INSERT INTO public.entidade_comum(
            id)
    VALUES (1);
INSERT INTO public.instituicao(
            descricao, nome, id)
    VALUES ('Instituto Federal de Goi�s - Campus Luzi�nia', 'IFG - Campus Luzi�nia', 1);
INSERT INTO public.curso(
            id, flg_ativo, nome, instituicao)
    VALUES (1, true, 'TADS', 1);
INSERT INTO public.turma(
            id, data_inicial, data_limite, flg_ativo, nome, curso)
    VALUES (1, '2018-01-01', '2022-01-01', true, 'TADS2018/1', 1);
INSERT INTO public.cargo(
            id, descricao, nome)
    VALUES (1, 'Lecionar aulas de tecnologia', 'Professor de Inform�tica');
INSERT INTO public.instituicao_cargo(
            instituicao, cargo)
    VALUES (1,1);
INSERT INTO public.entidade_comum(id)
    VALUES (2);
INSERT INTO public.pessoa
(data_nasc, email, matricula, nome, perfil, senha, sexo, id)
VALUES('1990-01-01', 'admin_sistema@gmail.com', '20122080010047', 'Admin Sistema', 'ROLE_ADMIN', '$2a$10$gTn11stUFPXhLS1pC4DYhekdmbL3ngMTMrU58SyVgsjPO70bWnWxS', 'M', 2);   
INSERT INTO public.servidor
(id, cargo)
VALUES(2, 1);
