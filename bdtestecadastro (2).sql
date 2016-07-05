-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05-Jul-2016 às 00:39
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bdtestecadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `assistencia`
--

CREATE TABLE IF NOT EXISTS `assistencia` (
  `JogadorID` int(11) NOT NULL,
  `PartidaID` int(11) NOT NULL,
  `ReportID` int(11) NOT NULL,
  `Qtd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `campeonato`
--

CREATE TABLE IF NOT EXISTS `campeonato` (
  `CampeonatoID` int(11) NOT NULL AUTO_INCREMENT,
  `NomeCampeonato` varchar(250) NOT NULL,
  PRIMARY KEY (`CampeonatoID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `campeonato`
--

INSERT INTO `campeonato` (`CampeonatoID`, `NomeCampeonato`) VALUES
(1, 'Liga Galaticos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacao`
--

CREATE TABLE IF NOT EXISTS `classificacao` (
  `Grupo` int(11) NOT NULL,
  `EquipeID` int(11) NOT NULL,
  `PontosGanhos` int(11) NOT NULL DEFAULT '0',
  `Jogos` int(11) NOT NULL DEFAULT '0',
  `Vitorias` int(11) NOT NULL DEFAULT '0',
  `Empates` int(11) NOT NULL DEFAULT '0',
  `Derrotas` int(11) NOT NULL DEFAULT '0',
  `GolsMarcados` int(11) NOT NULL DEFAULT '0',
  `GolsSofridos` int(11) NOT NULL DEFAULT '0',
  `SaldoGols` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `classificacao`
--

INSERT INTO `classificacao` (`Grupo`, `EquipeID`, `PontosGanhos`, `Jogos`, `Vitorias`, `Empates`, `Derrotas`, `GolsMarcados`, `GolsSofridos`, `SaldoGols`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe`
--

CREATE TABLE IF NOT EXISTS `equipe` (
  `EquipeID` int(11) NOT NULL AUTO_INCREMENT,
  `NomeEquipe` varchar(250) NOT NULL,
  `Escudo` varchar(500) DEFAULT NULL,
  `UsuarioID` int(11) NOT NULL,
  PRIMARY KEY (`EquipeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `equipe`
--

INSERT INTO `equipe` (`EquipeID`, `NomeEquipe`, `Escudo`, `UsuarioID`) VALUES
(1, 'CR Flamengo', 'http://images.terra.com/2015/05/21/flamengo.png', 1),
(2, 'Alo Fc', 'http://www.clker.com/cliparts/t/m/N/L/J/Q/escudo.svg', 2),
(3, 'Nao Aprovado FC', 'http://www.clker.com/cliparts/t/m/N/L/J/Q/escudo.svg', 3),
(4, 'Real Madrid', NULL, 4),
(5, 'Campo Grande FC', NULL, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gol`
--

CREATE TABLE IF NOT EXISTS `gol` (
  `JogadorID` int(11) NOT NULL,
  `PartidaID` int(11) NOT NULL,
  `ReportID` int(11) NOT NULL,
  `Qtd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `gol`
--

INSERT INTO `gol` (`JogadorID`, `PartidaID`, `ReportID`, `Qtd`) VALUES
(1, 1, 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
  `Grupo` int(11) NOT NULL AUTO_INCREMENT,
  `NomeGrupo` varchar(200) NOT NULL,
  PRIMARY KEY (`Grupo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogador`
--

CREATE TABLE IF NOT EXISTS `jogador` (
  `JogadorID` int(11) NOT NULL AUTO_INCREMENT,
  `NomeJogador` varchar(250) NOT NULL,
  `Posicao` varchar(5) NOT NULL,
  `EquipeOriginal` varchar(250) DEFAULT NULL,
  `Preco` decimal(12,2) DEFAULT NULL,
  `Overall` int(11) NOT NULL,
  `EquipeID` int(11) DEFAULT NULL,
  `Imagem` varchar(500) DEFAULT NULL,
  `Escala` int(11) NOT NULL,
  PRIMARY KEY (`JogadorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=270 ;

--
-- Extraindo dados da tabela `jogador`
--

INSERT INTO `jogador` (`JogadorID`, `NomeJogador`, `Posicao`, `EquipeOriginal`, `Preco`, `Overall`, `EquipeID`, `Imagem`, `Escala`) VALUES
(1, 'Neuer', 'GOL', 'Bayern Munich', '67500.00', 90, 1, 'http://media-titanium.cursecdn.com/attachments/68/186/neuer-16.JPG', 0),
(2, 'De Gea', 'GOL', 'ManUtd', '65250.00', 87, 1, 'http://media-titanium.cursecdn.com/attachments/68/64/degea-16.JPG', 0),
(3, 'Courtois', 'GOL', 'Chelsea', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(4, 'Cech', 'GOL', 'Arsenal', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(5, 'Lloris', 'GOL', 'Tottenham', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(6, 'Handanovic', 'GOL', 'InterMilan', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(7, 'Hart', 'GOL', 'ManCity', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(8, 'Buffon', 'GOL', 'Juventus', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(9, 'Leno', 'GOL', 'BayerLeverkusen', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(10, 'Fahrmann', 'GOL', 'Schalke04', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(11, 'Bravo', 'GOL', 'Barcelona', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(12, 'Ruffier', 'GOL', 'SaintEtienne', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(13, 'Mandanda', 'GOL', 'Marseille', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(14, 'Oblak', 'GOL', 'AtlMadrid', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(15, 'A.Lopes', 'GOL', 'Lyon', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(16, 'K.Navas', 'GOL', 'RealMadrid', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(17, 'Ter Stegen', 'GOL', 'Barcelona', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(18, 'K.Trapp', 'GOL', 'PSG', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(19, 'Muslera', 'GOL', 'Galatasaray', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(20, 'Sommer', 'GOL', 'BorussiaMonchengladbach', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(21, 'Begovic', 'GOL', 'Chelsea', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(22, 'Sirigu', 'GOL', 'PSG', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(23, 'Diego Alves', 'GOL', 'Valencia', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(24, 'Julio Cesar', 'GOL', 'Benfica', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(25, 'Lahm', 'LD', 'BayernMunich', '65250.00', 87, NULL, 'http://media-titanium.cursecdn.com/attachments/68/152/lahm-16.JPG', 0),
(26, 'Dani Alves', 'LD', 'Barcelona', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(27, 'Carvajal', 'LD', 'RealMadrid', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(28, 'Zabaleta', 'LD', 'ManCity', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(29, 'Lichtsteiner', 'LD', 'Juventus', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(30, 'Aurier', 'LD', 'PSG', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(31, 'Darmian', 'LD', 'ManUtd', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(32, 'Coleman', 'LD', 'Everton', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(33, 'JuanFran', 'LD', 'AtlMadrid', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(34, 'Danilo', 'LD', 'RealMadrid', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(35, 'Mario Gaspar', 'LD', 'Villareal', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(36, 'Clyne', 'LD', 'Liverpool', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(37, 'De Marcos', 'LD', 'AtlBilbao', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(38, 'Smolnikov', 'LD', 'Zenit', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(39, 'Ivanovic', 'LD', 'Chelsea', '60000.00', 80, 2, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(40, 'Piszczek', 'LD', 'BorDortmund', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(41, 'Coke', 'LD', 'Sevilla', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(42, 'Sagna', 'LD', 'ManCity', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(43, 'Thiago Silva', 'ZAG', 'PSG', '66000.00', 88, 1, 'http://media-titanium.cursecdn.com/attachments/68/192/tsilva-16.JPG', 0),
(44, 'Boateng', 'ZAG', 'BayernMunich', '65250.00', 87, 1, 'http://media-titanium.cursecdn.com/attachments/68/145/boateng-16.JPG', 0),
(45, 'Sergio Ramos', 'ZAG', 'RealMadrid', '65250.00', 87, 1, 'http://media-titanium.cursecdn.com/attachments/68/150/ramos-16.JPG', 0),
(46, 'Godin', 'ZAG', 'AtlMadrid', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(47, 'Hummels', 'ZAG', 'BorDortmund', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(48, 'Chiellini', 'ZAG', 'Juventus', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(49, 'Miranda', 'ZAG', 'InterMilan', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(50, 'Pique', 'ZAG', 'Barcelona', '63750.00', 85, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(51, 'Kompany', 'ZAG', 'ManCity', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(52, 'Barzagli', 'ZAG', 'Juventus', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(53, 'Otamendi', 'ZAG', 'ManCity', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(54, 'Javi Martinez', 'ZAG', 'BayernMunich', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(55, 'Naldo', 'ZAG', 'Wolfsburg', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(56, 'Koscielny', 'ZAG', 'Arsenal', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(57, 'Pepe', 'ZAG', 'RealMadrid', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(58, 'Terry', 'ZAG', 'Chelsea', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(59, 'Laporte', 'ZAG', 'AtlBilbao', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(60, 'Manolas', 'ZAG', 'Roma', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(61, 'Smalling', 'ZAG', 'ManUtd', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(62, 'Bonucci', 'ZAG', 'Juventus', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(63, 'David Luiz', 'ZAG', 'PSG', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(64, 'Howedes', 'ZAG', 'Schallke04', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(65, 'Benatia', 'ZAG', 'BayernMunich', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(66, 'Sokratis', 'ZAG', 'BorDortmund', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(67, 'Garay', 'ZAG', 'Zenit', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(68, 'Mascherano', 'ZAG', 'Barcelona', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(69, 'Mertesacker', 'ZAG', 'Arsenal', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(70, 'Varane', 'ZAG', 'RealMadrid', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(71, 'Mustafi', 'ZAG', 'Valencia', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(72, 'Glik', 'ZAG', 'Torino', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(73, 'Alderweireld', 'ZAG', 'Tottenham', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(74, 'Bender', 'ZAG', 'BorDortmund', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(75, 'Vertonghen', 'ZAG', 'Tottenham', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(76, 'Cahill', 'ZAG', 'Chelsea', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(77, 'Perrin', 'ZAG', 'SaintEtienne', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(78, 'Mathieu', 'ZAG', 'Barcelona', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(79, 'Gimenez', 'ZAG', 'AtlMadrid', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(80, 'Marquinhos', 'ZAG', 'PSG', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(81, 'Savic', 'ZAG', 'AtlMadrid', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(82, 'De Vrij', 'ZAG', 'Lazio', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(83, 'Abdennour', 'ZAG', 'Valencia', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(84, 'Matip', 'ZAG', 'Schallke04', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(85, 'Musacchio', 'ZAG', 'Villareal', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(86, 'Toprak', 'ZAG', 'BayerLeverkusen', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(87, 'Jose Fonte', 'ZAG', 'Southampton', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(88, 'Skrtel', 'ZAG', 'Liverpool', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(89, 'Williams', 'ZAG', 'Swansea', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(90, 'Raul Albiol', 'ZAG', 'Napoli', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(91, 'Alaba', 'LE', 'BayernMunich', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(92, 'Jordi Alba', 'LE', 'Barcelona', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(93, 'Marcelo', 'LE', 'RealMadrid', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(94, 'R.Rodriguez', 'LE', 'Wolfsburg', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(95, 'Alex Sandro', 'LE', 'Juventus', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(96, 'Azpilicueta', 'LE', 'Chelsea', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(97, 'Filipe Luis', 'LE', 'AtlMadrid', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(98, 'Baines', 'LE', 'Everton', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(99, 'Tremoulinas', 'LE', 'Sevilla', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(100, 'Evra', 'LE', 'Juventus', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(101, 'Gaya', 'LE', 'Valencia', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(102, 'Kurzawa', 'LE', 'PSG', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(103, 'Nacho Monreal', 'LE', 'Arsenal', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(104, 'Fabio Coentrao', 'LE', 'Monaco', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(105, 'Bernat', 'LE', 'BayernMunich', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(106, 'Balenziaga', 'LE', 'AtlBilbao', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(107, 'Jefferson', 'LE', 'Sporting', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(108, 'Gibbs', 'LE', 'Arsenal', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(109, 'Iniesta', 'VOL', 'Barcelona', '66000.00', 88, NULL, 'http://media-titanium.cursecdn.com/attachments/68/142/iniesta-16.JPG', 0),
(110, 'Kroos', 'VOL', 'RealMadrid', '65250.00', 87, 1, 'http://media-titanium.cursecdn.com/attachments/68/146/kroos-16.JPG', 0),
(111, 'Modric', 'VOL', 'RealMadrid', '65250.00', 87, 1, 'http://media-titanium.cursecdn.com/attachments/68/147/modric-16.JPG', 0),
(112, 'Pogba', 'VOL', 'Juventus', '64500.00', 86, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(113, 'Busquets', 'VOL', 'Barcelona', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(114, 'Fabregas', 'VOL', 'Chelsea', '64500.00', 86, 2, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(115, 'Vidal', 'VOL', 'BayernMunich', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(116, 'Rakitic', 'VOL', 'Barcelona', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(117, 'Schweinsteiger', 'VOL', 'ManUtd', '63750.00', 85, NULL, 'http://media-titanium.cursecdn.com/attachments/68/14/basti-16.JPG', 0),
(118, 'Yaya Toure', 'VOL', 'ManCity', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(119, 'Verratti', 'VOL', 'PSG', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(120, 'Pastore', 'VOL', 'PSG', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(121, 'Gundogan', 'VOL', 'BorDortmund', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(122, 'Pjanic', 'VOL', 'Roma', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(123, 'Marchisio', 'VOL', 'Juventus', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(124, 'Matuidi', 'VOL', 'PSG', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(125, 'Xabi Alonso', 'VOL', 'BayernMunich', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(126, 'Matic', 'VOL', 'Chelsea', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(127, 'Thiago', 'VOL', 'BayernMunich', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(128, 'Luiz Gustavo', 'VOL', 'Wolfsburg', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(129, 'Nainggolan', 'VOL', 'Roma', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(130, 'Xhaka', 'VOL', 'BorMochengladbach', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(131, 'Krychowiak', 'VOL', 'Sevilla', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(132, 'Parejo', 'VOL', 'Valencia', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(133, 'Ramsey', 'VOL', 'Arsenal', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(134, 'Bender', 'VOL', 'BorDortmund', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(135, 'Schneiderlin', 'VOL', 'ManUtd', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(136, 'Hamsik', 'VOL', 'Napoli', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(137, 'Diarra', 'VOL', 'Marseille', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(138, 'Toulalan', 'VOL', 'Monaco', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(139, 'De Rossi', 'VOL', 'Roma', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(140, 'T.Motta', 'VOL', 'PSG', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(141, 'Pirlo', 'VOL', 'NewYorkCityFootball', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(142, 'William Carvalho', 'VOL', 'Sporting', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(143, 'Medel', 'VOL', 'InterMilan', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(144, 'Ander Herrera', 'VOL', 'ManUtd', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(145, 'Iturraspe', 'VOL', 'AtlBilbao', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(146, 'Iborra', 'VOL', 'Sevilla', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(147, 'Wilshere', 'VOL', 'Arsenal', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(148, 'Bruno', 'VOL', 'Villareal', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(149, 'Khedira', 'VOL', 'Juventus', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(150, 'Witsel', 'VOL', 'Zenit', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(151, 'Guardado', 'VOL', 'PSV', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(152, 'Sahin', 'VOL', 'BorDortmund', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(153, 'G.Castro', 'VOL', 'BorDortmund', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(154, 'Biglia', 'VOL', 'Lazio', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(155, 'Robben', 'MEIA', 'BayernMunich', '66750.00', 89, 1, 'http://media-titanium.cursecdn.com/attachments/68/187/robben-16.JPG', 0),
(156, 'Hazard', 'MEIA', 'Chelsea', '66000.00', 88, NULL, 'http://media-titanium.cursecdn.com/attachments/68/188/hazard-16.JPG', 0),
(157, 'Ozil', 'MEIA', 'Arsenal', '66000.00', 88, 1, 'http://media-titanium.cursecdn.com/attachments/68/148/ozil-16.JPG', 0),
(158, 'James Rodriguez', 'MEIA', 'RealMadrid', '65250.00', 87, NULL, 'http://media-titanium.cursecdn.com/attachments/68/143/james-16.JPG', 0),
(159, 'De Bruyne', 'MEIA', 'ManCity', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(160, 'Reus', 'MEIA', 'BorDortmund', '64500.00', 86, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(161, 'David Silva', 'MEIA', 'ManCity', '64500.00', 86, 2, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(162, 'Ribery', 'MEIA', 'BayernMunich', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(163, 'Mkhitaryan', 'MEIA', 'BorDortmund', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(164, 'Cazorla', 'MEIA', 'Arsenal', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(165, 'Isco', 'MEIA', 'RealMadrid', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(166, 'Gotze', 'MEIA', 'BayernMunich', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(167, 'Hulk', 'MEIA', 'Zenit', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(168, 'Coutinho', 'MEIA', 'Liverpool', '63000.00', 84, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(169, 'Koke', 'MEIA', 'AtlMadrid', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(170, 'Douglas Costa', 'MEIA', 'BayernMunich', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(171, 'Eriksen', 'MEIA', 'Tottenham', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(172, 'Pedro', 'MEIA', 'Chelsea', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(173, 'Gaitan', 'MEIA', 'Benfica', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(174, 'Willian', 'MEIA', 'Chelsea', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(175, 'Mata', 'MEIA', 'ManUtd', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(176, 'Payet', 'MEIA', 'WestHam', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(177, 'João Moutinho', 'MEIA', 'Monaco', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(178, 'Turan', 'MEIA', 'Barcelona', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(179, 'Bellarabi', 'MEIA', 'BayerLeverkusen', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(180, 'Draxler', 'MEIA', 'Wolfsburg', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(181, 'Konoplyanka', 'MEIA', 'Sevilla', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(182, 'Kagawa', 'MEIA', 'BorDortmund', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(183, 'Oscar', 'MEIA', 'Chelsea', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(184, 'Nasri', 'MEIA', 'ManCity', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(185, 'Borja Valero', 'MEIA', 'Fiorentina', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(186, 'BenArfa', 'MEIA', 'OGCNice', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(187, 'Sneijder', 'MEIA', 'Galatasaray', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(188, 'Danny', 'MEIA', 'Zenit', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(189, 'Mahrez', 'MEIA', 'Leicester', '60750.00', 81, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(190, 'Sterling', 'MEIA', 'ManCity', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(191, 'Vitolo', 'MEIA', 'Sevilla', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(192, 'Hermann', 'MEIA', 'BorMochengladbach', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(193, 'Cuadrado', 'MEIA', 'Juventus', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(194, 'Perisic', 'MEIA', 'InterMilan', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(195, 'Banega', 'MEIA', 'Sevilla', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(196, 'Mertens', 'MEIA', 'Napoli', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(197, 'Raul Garcia', 'MEIA', 'AtlBilbao', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(198, 'Walcott', 'MEIA', 'Arsenal', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(199, 'Kaka', 'MEIA', 'OrlandoCity', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(200, 'Joao Mario', 'MEIA', 'Sporting', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(201, 'LucasLima', 'MEIA', 'Santos', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(202, 'Carrasco', 'MEIA', 'AtlMadrid', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(203, 'Messi', 'PNT', 'Barcelona', '70500.00', 94, 1, 'https://pbs.twimg.com/media/CNrxOQrVAAAetgf.png', 0),
(204, 'Cristiano Ronaldo', 'PNT', 'RealMadrid', '69750.00', 93, 1, 'http://media-titanium.cursecdn.com/attachments/68/184/ronaldo-16.JPG', 0),
(205, 'Neymar', 'PNT', 'Barcelona', '67500.00', 90, 2, 'http://media-titanium.cursecdn.com/attachments/68/190/neymar-16.JPG', 0),
(206, 'Bale', 'PNT', 'RealMadrid', '65250.00', 87, NULL, 'http://media-titanium.cursecdn.com/attachments/68/57/bale-16.JPG', 0),
(207, 'DiMaria', 'PNT', 'PSG', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(208, 'Sanchez', 'PNT', 'Arsenal', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(209, 'Nani', 'PNT', 'Fenerbahce', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(210, 'Brahimi', 'PNT', 'Porto', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(211, 'Insigne', 'PNT', 'Napoli', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(212, 'Nolito', 'PNT', 'CeltaVigo', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(213, 'Vela', 'PNT', 'RealSociedad', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(214, 'Candreva', 'PNT', 'Lazio', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(215, 'Feghouli', 'PNT', 'Valencia', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(216, 'Callejon', 'PNT', 'Napoli', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(217, 'Lucas', 'PNT', 'PSG', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(218, 'Berardi', 'PNT', 'Sassuolo', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(219, 'Muniain', 'PNT', 'AtlBilbao', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(220, 'Orellana', 'PNT', 'CeltaVigo', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(221, 'Jese', 'PNT', 'RealMadrid', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(222, 'Salah', 'PNT', 'Roma', '60000.00', 80, 2, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(223, 'Suarez', 'ATA', 'Barcelona', '67500.00', 90, NULL, 'http://media-titanium.cursecdn.com/attachments/68/185/suarez-16.JPG', 0),
(224, 'Ibrahimovic', 'ATA', 'PSG', '66750.00', 89, NULL, 'http://media-titanium.cursecdn.com/attachments/68/189/zlatan-16.JPG', 0),
(225, 'Lewandowski', 'ATA', 'BayernMunich', '66000.00', 88, 2, 'http://media-titanium.cursecdn.com/attachments/68/56/robert-16.JPG', 0),
(226, 'Aguero', 'ATA', 'ManCity', '66000.00', 88, 1, 'http://media-titanium.cursecdn.com/attachments/68/151/agueri-16.JPG', 0),
(227, 'Higuain', 'ATA', 'Napoli', '64500.00', 86, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(228, 'Benzema', 'ATA', 'RealMadrid', '64500.00', 86, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(229, 'DiegoCosta', 'ATA', 'Chelsea', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(230, 'Cavani', 'ATA', 'PSG', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(231, 'Tevez', 'ATA', 'BocaJuniors', '63750.00', 85, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(232, 'Rooney', 'ATA', 'ManUtd', '63750.00', 85, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(233, 'Griezzmann', 'ATA', 'AtlMadrid', '63000.00', 84, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(234, 'Aubameyang', 'ATA', 'BorDortmund', '63000.00', 84, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(235, 'Lacazette', 'ATA', 'Lyon', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(236, 'Jonas', 'ATA', 'Benfica', '62250.00', 83, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(237, 'Sturridge', 'ATA', 'Liverpool', '62250.00', 83, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(238, 'Bacca', 'ATA', 'Milan', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(239, 'Kane', 'ATA', 'Tottenham', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(240, 'Lukaku', 'ATA', 'Everton', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(241, 'Mandzukic', 'ATA', 'Juventus', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(242, 'Giroud', 'ATA', 'Arsenal', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(243, 'Hernandez', 'ATA', 'BayerLeverkusen', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(244, 'Falcao', 'ATA', 'Chelsea', '61500.00', 82, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(245, 'Aduriz', 'ATA', 'AtlBilbao', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(246, 'Dybala', 'ATA', 'Juventus', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(247, 'Van Persie', 'ATA', 'Fenerbahce', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(248, 'Mario Gomez', 'ATA', 'Besiktas', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(249, 'Huntelaar', 'ATA', 'Schalke04', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(250, 'Negredo', 'ATA', 'Valencia', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(251, 'David Villa', 'ATA', 'NewYorkCity', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(252, 'Drogba', 'ATA', 'MontrealImpact', '60750.00', 81, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(253, 'Slimani', 'ATA', 'Sporting Lisboa', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(254, 'Icardi', 'ATA', 'Inter de Milão', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(255, 'Morata', 'ATA', 'Juventus', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(256, 'Immobile', 'ATA', 'Torino', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(257, 'Balotelli', 'ATA', 'Milan', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(258, 'Bony', 'ATA', 'Man City', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(259, 'Llorente', 'ATA', 'Sevilla', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(260, 'Benteke', 'ATA', 'Liverpool', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(261, 'Jovetic', 'ATA', 'Inter de Milão', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(262, 'Dzeko', 'ATA', 'Roma', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(263, 'Pato', 'ATA', 'Chelsea', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(264, 'Remy', 'ATA', 'Chelsea', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(265, 'Dempsey', 'ATA', 'Seattle Sounders', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(266, 'Berbatov', 'ATA', 'PAOK', '60000.00', 80, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(267, 'Vardy', 'ATA', 'Leicester City', '59250.00', 79, 1, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(268, 'Ricardo Oliveira', 'ATA', 'Santos', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0),
(269, 'Fernando Torres', 'ATA', 'Atl Madrid', '59250.00', 79, NULL, 'http://i.imgur.com/UGm0Av8.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `partida`
--

CREATE TABLE IF NOT EXISTS `partida` (
  `PartidaID` int(11) NOT NULL AUTO_INCREMENT,
  `CampeonatoID` int(11) NOT NULL,
  `EquipeCasa` int(11) NOT NULL,
  `GolsCasa` int(11) DEFAULT NULL,
  `EquipeFora` int(11) NOT NULL,
  `GolsFora` int(11) DEFAULT NULL,
  `DataAbertura` datetime NOT NULL,
  `DataReport` datetime DEFAULT NULL,
  `Rodada` int(11) DEFAULT NULL,
  PRIMARY KEY (`PartidaID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `partida`
--

INSERT INTO `partida` (`PartidaID`, `CampeonatoID`, `EquipeCasa`, `GolsCasa`, `EquipeFora`, `GolsFora`, `DataAbertura`, `DataReport`, `Rodada`) VALUES
(1, 1, 1, NULL, 2, NULL, '2016-06-27 00:00:00', NULL, 1),
(2, 1, 3, NULL, 1, NULL, '2016-07-01 00:00:00', NULL, 2),
(3, 1, 1, NULL, 4, NULL, '2016-07-06 00:00:00', NULL, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `ReportID` int(11) NOT NULL AUTO_INCREMENT,
  `PartidaID` int(11) NOT NULL,
  `EquipeReportID` int(11) NOT NULL,
  `GolsCasa` int(11) DEFAULT NULL,
  `GolsFora` int(11) DEFAULT NULL,
  `DataReport` datetime NOT NULL,
  PRIMARY KEY (`ReportID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transferencia`
--

CREATE TABLE IF NOT EXISTS `transferencia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EquipeSaida` int(11) DEFAULT NULL,
  `EquipeEntrada` int(11) DEFAULT NULL,
  `DataInicio` datetime NOT NULL,
  `DataFim` datetime DEFAULT NULL,
  `Valor` decimal(12,2) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `JogadorID` int(11) NOT NULL,
  `JogadorTrocaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Extraindo dados da tabela `transferencia`
--

INSERT INTO `transferencia` (`ID`, `EquipeSaida`, `EquipeEntrada`, `DataInicio`, `DataFim`, `Valor`, `Status`, `JogadorID`, `JogadorTrocaID`) VALUES
(1, 2, 1, '2016-06-05 13:27:53', '2016-06-18 23:17:59', '20000.00', 'Cancelado', 205, NULL),
(6, 1, 2, '2016-06-05 16:22:34', '2016-06-18 18:38:16', '1000.00', 'Concluido', 155, 161),
(5, 1, 2, '2016-06-05 16:22:00', '2016-06-18 18:38:10', '20000.00', 'Rejeitado', 226, NULL),
(4, 2, 1, '2016-06-05 14:29:45', '2016-06-18 23:18:10', '200.00', 'Cancelado', 225, 228),
(11, 1, 2, '2016-06-18 20:31:39', '2016-06-18 20:33:32', '70000.00', 'Concluido', 207, NULL),
(8, NULL, 1, '2016-06-18 19:09:56', '2016-06-18 19:09:56', '15000.00', 'Concluido', 253, NULL),
(9, NULL, 1, '2016-06-18 19:41:06', '2016-06-18 19:41:06', '41000.00', 'Concluido', 75, NULL),
(10, NULL, 1, '2016-06-18 19:43:29', '2016-06-18 19:43:29', '40000.00', 'Concluido', 202, NULL),
(12, 1, 2, '2016-06-18 20:32:44', '2016-06-18 20:33:37', '18000.00', 'Concluido', 193, NULL),
(13, NULL, 2, '2016-06-18 20:55:36', '2016-06-18 20:55:36', '42500.00', 'Concluido', 117, NULL),
(14, NULL, 5, '2016-06-18 21:07:56', '2016-06-18 21:07:56', '42000.00', 'Concluido', 26, NULL),
(15, NULL, 5, '2016-06-18 21:08:19', '2016-06-18 21:08:19', '42000.00', 'Concluido', 8, NULL),
(16, NULL, 5, '2016-06-18 21:08:31', '2016-06-18 21:08:31', '44000.00', 'Concluido', 226, NULL),
(17, NULL, 5, '2016-06-18 21:08:59', '2016-06-18 21:08:59', '42000.00', 'Concluido', 120, NULL),
(18, NULL, 4, '2016-06-18 22:04:21', '2016-06-18 22:04:21', '41000.00', 'Concluido', 17, NULL),
(19, NULL, 4, '2016-06-18 22:05:46', '2016-06-18 22:05:46', '45000.00', 'Concluido', 223, NULL),
(20, NULL, 4, '2016-06-18 22:07:51', '2016-06-18 22:07:51', '40500.00', 'Concluido', 31, NULL),
(21, NULL, 1, '2016-06-19 00:17:52', '2016-06-19 00:17:52', '41500.00', 'Concluido', 93, NULL),
(22, 2, 1, '2016-06-19 00:21:39', '2016-06-19 00:25:03', '40000.00', 'Concluido', 117, 231),
(23, NULL, 1, '2016-06-19 15:33:35', '2016-06-19 15:33:35', '41500.00', 'Concluido', 176, NULL),
(24, 1, NULL, '2016-06-19 16:24:31', '2016-06-19 16:24:31', '6150.00', 'Concluido', 182, NULL),
(25, 1, NULL, '2016-06-19 16:30:59', '2016-06-19 16:30:59', '6450.00', 'Concluido', 161, NULL),
(26, 1, NULL, '2016-06-19 16:36:57', '2016-06-19 16:36:57', '6225.00', 'Concluido', 175, NULL),
(27, 2, NULL, '2016-06-19 17:31:58', '2016-06-19 17:31:58', '6075.00', 'Concluido', 189, NULL),
(28, 2, NULL, '2016-06-19 17:35:14', '2016-06-19 17:35:14', '6300.00', 'Concluido', 166, NULL),
(29, 1, 2, '2016-06-19 17:43:15', NULL, '32000.00', 'Cancelado', 228, NULL),
(30, 1, 4, '2016-06-19 17:44:51', '2016-06-19 17:49:52', '38000.00', 'Concluido', 228, NULL),
(31, 1, 4, '2016-06-19 18:08:04', '2016-06-19 18:10:43', '80000.00', 'Cancelado', 160, NULL),
(32, 1, 2, '2016-06-19 18:08:38', '2016-06-19 18:10:43', '86000.00', 'Concluido', 160, NULL),
(33, 1, 5, '2016-06-19 18:09:21', '2016-06-19 18:10:43', '79000.00', 'Cancelado', 160, NULL),
(34, 2, 1, '2016-06-19 18:14:00', '2016-06-19 18:31:43', '30000.00', 'Concluido', 225, 233),
(35, NULL, 4, '2016-06-19 19:29:27', '2016-06-19 19:29:27', '40000.00', 'Concluido', 201, NULL),
(36, NULL, 1, '2016-06-19 19:33:19', '2016-06-19 19:33:19', '41000.00', 'Concluido', 21, NULL),
(37, NULL, 1, '2016-06-22 20:49:06', '2016-06-22 20:49:06', '59250.00', 'Concluido', 267, NULL),
(38, 1, NULL, '2016-06-22 20:56:59', '2016-06-22 20:56:59', '43050.00', 'Concluido', 185, NULL),
(39, 1, NULL, '2016-06-22 20:59:21', '2016-06-22 20:59:21', '42525.00', 'Concluido', 193, NULL),
(40, 2, 1, '2016-06-22 21:00:24', '2016-07-01 14:57:54', '70000.00', 'Concluido', 2, NULL),
(41, 2, NULL, '2016-07-01 14:58:13', '2016-07-01 14:58:13', '42000.00', 'Concluido', 200, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(250) NOT NULL,
  `PSN` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Senha` varchar(250) NOT NULL,
  `Orcamento` decimal(12,2) NOT NULL DEFAULT '250000.00',
  `Ativo` tinyint(1) NOT NULL DEFAULT '0',
  `Admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID`, `Nome`, `PSN`, `Email`, `Senha`, `Orcamento`, `Ativo`, `Admin`) VALUES
(1, 'Thiago Oliva', 'thiag6', 'thiagosfoliva@gmail.com', 'testes', '44350.00', 1, 1),
(2, 'Lucas Domingues', 'luped720', 'luped@galaticos', 'testes', '202125.00', 1, 0),
(3, 'Teste NÃ£o Aprovado', 'naoAtivo', 'teste', 'testes', '250000.00', 0, 0),
(4, 'Marreiros', 'marreiros10', 'marreiros', 'testes', '45500.00', 1, 0),
(5, 'Rangel', 'HBRangel', 'hbrangel@es', 'testes', '80000.00', 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;