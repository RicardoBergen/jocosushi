-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 02 jun 2020 om 11:41
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jocosushi`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `allergieen`
--

CREATE TABLE `allergieen` (
  `allergieID` int(4) NOT NULL,
  `naam` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `allergieen`
--

INSERT INTO `allergieen` (`allergieID`, `naam`) VALUES
(1, 'koemelk'),
(2, 'kippenei'),
(3, 'pinda'),
(4, 'noten'),
(5, 'vis, schaal en schelpdier'),
(6, 'roosfruir'),
(7, 'soja'),
(8, 'tarwe');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `allergieën lijst`
--

CREATE TABLE `allergieën lijst` (
  `allergielijstID` int(4) NOT NULL,
  `allergieID` int(4) NOT NULL,
  `productID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `allergieën lijst`
--

INSERT INTO `allergieën lijst` (`allergielijstID`, `allergieID`, `productID`) VALUES
(1, 5, 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingen`
--

CREATE TABLE `bestellingen` (
  `bestellingsID` int(4) NOT NULL,
  `datum` date NOT NULL,
  `klantenID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `bestellingen`
--

INSERT INTO `bestellingen` (`bestellingsID`, `datum`, `klantenID`) VALUES
(1, '2020-05-04', 3),
(2, '2020-05-04', 4),
(3, '2020-05-03', 3),
(4, '2020-05-05', 27),
(5, '2001-12-20', 18);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellingsregels`
--

CREATE TABLE `bestellingsregels` (
  `bestellingsID` int(4) NOT NULL,
  `productID` int(4) NOT NULL,
  `aantal` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `bestellingsregels`
--

INSERT INTO `bestellingsregels` (`bestellingsID`, `productID`, `aantal`) VALUES
(1, 5, 10),
(1, 10, 999),
(1, 8, 2),
(5, 9, 6),
(4, 8, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klanten`
--

CREATE TABLE `klanten` (
  `klantID` int(4) NOT NULL,
  `voornaam` varchar(25) NOT NULL,
  `tussenvoegsel` varchar(10) NOT NULL,
  `achternaam` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `straat` varchar(25) NOT NULL,
  `huisnummer` varchar(4) NOT NULL,
  `toevoeging` varchar(5) NOT NULL,
  `postcode` varchar(7) NOT NULL,
  `plaats` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `klanten`
--

INSERT INTO `klanten` (`klantID`, `voornaam`, `tussenvoegsel`, `achternaam`, `email`, `straat`, `huisnummer`, `toevoeging`, `postcode`, `plaats`, `password`, `rol`) VALUES
(0, 'Ricardo', '', 'Bergen', 'Rbergen2001@hotmail.com', 'Dorpsstraat', '466', '', '1722EK', 'Langedijk', 'Ricardo', 0),
(3, 'Anja', '', 'Adams', '0', 'Poelvoordestraat', '21', '', '4431 BP', '\'s-Gravenpolder', '', 0),
(4, 'Ramona', '', 'Altena', '0', 'Amperestraat ', '31', '', '1221 GG', 'Hilversum', '', 0),
(5, 'Mirjam', '', 'Alting', '0', 'Hyacinthstraat', '150', '', '9713 XK', 'Groningen', '', 0),
(6, 'Anita', 'van', 'Ammelrooij', '0', 'Van Grotenhuysstraat ', '10', '', '6981 KD', 'Doesburg', '', 0),
(7, 'Corda', 'van den', 'Assem', '0', 'Waterman ', '208', '', '3328 RK', 'Dordrecht', '', 0),
(8, 'Vannie', 'van', 'Baalen', '0', 'Orteliuspad ', '23', '', '3151 PS', 'Hoek van Holland', '', 0),
(9, 'Birgitt', '', 'Bakker', '0', 'Cattepoelseweg', '332', '', '6815 CL', 'Arnhem', '', 0),
(10, 'Sascha', '', 'Balk', '0', 'Tulpweg ', '26', '', '2241 VN', 'Wassenaar', '', 0),
(11, 'Anneloes', 'van', 'Balkom', '0', 'Postelein ', '4', '', '5063 EA', 'Oisterwijk', '', 0),
(12, 'Laura', '', 'Bergers', '0', 'Burmanlaan ', '46', '', '2241 JG', 'Wassenaar', '', 0),
(13, 'Annette', '', 'Bertels', '0', 'Karel V laan ', '7', '', '4205 HW', 'Gorinchem', '', 0),
(14, 'Anja', '', 'Betten', '0', 'De Blauwverver ', '12', '', '5283 XV', 'Boxtel', '', 0),
(15, 'Franca', 'van', 'Bezouw', '0', 'Haviksnest ', '2', '', '5126 XD', 'Gilze', '', 0),
(16, 'Johanna', '', 'Blaauw-Veneman', '0', 'Molenweg ', '1', '', '8081 BJ', 'Elburg', '', 0),
(17, 'Tamari', '', 'Bleeker', '0', 'Burg.D.Kooimanweg ', '369', '', '1444 BK', 'Purmerend', '', 0),
(18, 'Bas', '', 'Bloemberg', '0', 'Jacques Perkstraat ', '37', '', '3351 CP', 'Papendrecht', '', 0),
(19, 'Valentine', '', 'Boer', '0', 'Wipperspark ', '15', '', '3141 RA', 'Maassluis', '', 0),
(20, 'Saskia', '', 'Botermans', '0', 'Valeriaan ', '67', '', '4102 VH', 'Culemborg', '', 0),
(21, 'Babette', '', 'Bouman', '0', 'Wymeersterweg ', '1', '', '9695 XA', 'Bellingwolde', '', 0),
(22, 'Anita', 'van', 'Boxtel', '0', 'Leeuwstraat ', '3a', '', '5408 PJ', 'Volkel', '', 0),
(23, 'Inge', '', 'Broeckaert', '0', 'Von Weberstraat ', '41', '', '3533 EC', 'Utrecht', '', 0),
(24, 'Karin', '', 'Bron', '0', 'Koningstraat ', '20', '', '6644 KK', 'Ewijk', '', 0),
(25, 'Brigitta', '', 'Bruning-Heesen', '0', 'Jufferstraat ', '31', '', '6828 AE', 'Arnhem', '', 0),
(26, 'Simone', '', 'Buijs', '0', 'Berglaan ', '43', '', '4634 VG', 'Woensdrecht', '', 0),
(27, 'Bianca', '', 'Callaars', '0', 'Den Hoogenkant ', '8', '', '5391 GB', 'Nuland', '', 0),
(28, 'Harry', '', 'Coremans', '0', 'Onruststraat ', '13', '', '4493 EC', 'Kamperland', '', 0),
(29, 'Beanca', '', 'de Goede', '0', 'Molenweg', '14', '', '1871 CD', 'Schoorl', '', 0),
(30, 'Suzan ', '', 'de Vries', '0', 'Bevernel', '26', '', '8265 KN', 'Kampen', '', 0),
(31, 'Ariette', '', 'Dekker', '0', 'Westeinde ', '338', '', '7671 CM', 'Vriezenveen', '', 0),
(32, 'Laura', '', 'Delahaij', '0', 'C.Raaijmakerslaan ', '3', '', '4731 ET', 'Oudenbosch', '', 0),
(33, 'Lian', '', 'Delrue', '0', 'Groenplaats ', '14', '', '4613 GP', 'Bergen op Zoom', '', 0),
(34, 'Angelique', '', 'Dencker', '0', 'Heereweg ', '67', '', '2161 AE', 'Lisse', '', 0),
(35, 'Jam', '', 'Denekamp', '0', 'Braamkamp', '411', '', '7206 HV', 'Zutphen', '', 0),
(36, 'Anja', '', 'Dewald', '0', 'Dierdonklaan ', '83', '', '5709 MG', 'Helmond', '', 0),
(37, 'Ilona', '', 'Domhof', '0', 'Thoomsenweg ', '21', '', '7161 AZ', 'Neede', '', 0),
(38, 'Leslie', '', 'Doornik', '0', 'Koen van Oosterwijklaan ', '32', '', '1181 DT', 'Amstelveen', '', 0),
(39, 'Martine', '', 'Dortland', '0', 'Schiedamseweg ', '75', '', '3134 BD', 'Vlaardingen', '', 0),
(40, 'Anita', '', 'Dupuis', '0', 'Filips V Bourgondielaan', '204', '', '3703 XJ', 'Zeist', '', 0),
(41, 'Marcelle', '', 'Pieters', '0', 'Pinakel ', '36', '', '4336 JD', 'Middelburg', '', 0),
(42, 'Laura', '', 'Evans', '0', 'Mulderspad', '6', '', '4841 JP', 'Prinsenbeek', '', 0),
(43, 'Inge', '', 'Gerbrands', '0', 'Caspar Fagelstraat ', '7', '', '2613 GT', 'Delft', '', 0),
(45, 'Judith', 'de', 'Goede', '0', 'Gele Lis', '42', '', '3297 WC', 'Puttershoek', '', 0),
(46, 'Kamila', '', 'Gorska', '0', 'Roexhof ', '15', '', '6412 BV', 'Heerlen', '', 0),
(47, 'Selien', '', 'Graeff', '0', 'De Vleyen ', '30', '', '2134 ZD', 'Hoofddorp', '', 0),
(48, 'Marlies', 'de', 'Groot', '0', 'Bronmospad ', '12', '', '5247 HG', 'Rosmalen', '', 0),
(49, 'Ricardo', 'de', 'Groot', '0', 'Prof. Schrijnenstraat ', '13', '', '6524 PZ', 'Nijmegen', '', 0),
(50, 'Sally', 'de', 'Groot', '0', 'Eratolaan ', '21', '', '5631 KP', 'Eindhoven', '', 0),
(51, 'Irene', '', 'Haakma', '0', 'C.Benninghastraat ', '14', '', '8851 GS', 'Tzummarum', '', 0),
(52, 'Tanya', '', 'Hakkenberg', '0', 'Rijksstraatweg ', '8', '', '4311 JG', 'Bruinisse', '', 0),
(53, 'Josje', '', 'Hameeteman', '0', 'Spanbroekerweg ', '126', '', '1715 GT', 'Spanbroek', '', 0),
(54, 'Merel', '', 'Hamers', '0', 'Relweg', '57', '', '1949 EC', 'Wijk aan Zee', '', 0),
(55, 'Marja', '', 'Hannink', '0', 'Postweg ', '6', '', '7597 KD', 'Saasveld', '', 0),
(56, 'Norah ', '', 'Hanratty', '0', 'Kolk ', '1', '', '2611 KC', 'Delft', '', 0),
(57, 'Monique', '', 'Hartmans', '0', 'Kasteelgenbroekstraat ', '5', '', '6191 KT', 'Beek', '', 0),
(58, 'Nicole', 'ter', 'Hedde', '0', 'J. van Burenstraat ', '24', '', '7447 HD', 'Hellendoorn', '', 0),
(59, 'Corine', 'de', 'Heer', '0', 'Graafstroomstraat ', '21', '', '2971 AG', 'Bleskensgraaf', '', 0),
(60, 'Sharon', '', 'Heij', '0', 'Veranda ', '63', '', '1628 JX', 'Hoorn', '', 0),
(61, 'Petra', '', 'Heijnemans', '0', 'Lange Voren ', '45', '', '5541 RS', 'Reusel', '', 0),
(62, 'Cor', 'van', 'Helden', '0', 'Emmastraat ', '30', '', '3331 XB', 'Zwijndrecht', '', 0),
(63, 'Jose', '', 'Hoekstra', '0', 'Bornerbroeksestraat ', '42', 'c', '7621 AG', 'Borne', '', 0),
(64, 'Beatrijs', '', 'Hofland', '0', 'Nieuw Voordorpstraat ', '19', '', '2251 SZ', 'Voorschoten', '', 0),
(65, 'Wendy', '', 'Hofstede', '0', 'Molengang ', '8', '', '2636 JE', 'Schipluiden', '', 0),
(66, 'Margot', '', 'Hommel', '0', 'Zilvermeeuw ', '119', '', '4872 RP', 'Etten-Leur', '', 0),
(67, 'Jannie', 'van den', 'Hoorn', '0', 'Cremerstraat ', '10', '', '3842 XZ', 'Harderwijk', '', 0),
(68, 'Corina', '', 'Hospers ', '0', 'Dudokstraat ', '42', '', '7425 CS', 'Deventer', '', 0),
(69, 'Mindy', '', 'Hoste', '0', 'Kerkweg ', '34', '', '9351 AJ', 'Leek', '', 0),
(70, 'Ruth', 'van', 'Ieperen', '0', 'Rijnlaan ', '27', '', '2105 XH', 'Heemstede', '', 0),
(71, 'Sebastiaan', '', 'Jansen', '0', 'De Rookamer', '21', '', '1852 EB', 'Heiloo', '', 0),
(72, 'Marcella', '', 'Janssen', '0', 'Limmer Laen ', '3', '', '1851 WL', 'Heiloo', '', 0),
(73, 'Ellen', 'de', 'Jong', '0', 'Veeringstraat ', '13', '', '1502 NJ', 'Zaandam', '', 0),
(74, 'Rosinde', 'de', 'Jong', '0', 'Venuslaan ', '23', '', '2957 HK', 'Nieuw Lekkerland', '', 0),
(75, 'Ellen', '', 'Kagie', '0', 'Tuinenhof', '10', '', '1851 ZR', 'Heiloo', '', 0),
(76, 'Rianne', '', 'Kalisvaart', '0', 'Kopermolen ', '35', '', '3146 SG', 'Maassluis', '', 0),
(77, 'Andrea', '', 'Kamermans', '0', 'Sperwerlaan ', '45', '', '3435 GE', 'Nieuwegein', '', 0),
(78, 'Judith', 'van', 'Kempen', '0', 'Palestrinaweg ', '315', '', '2555 SR', 'Den Haag', '', 0),
(79, 'Rita', '', 'Kes', '0', 'Donatasteurhof ', '128', '', '1132 DN', 'Volendam', '', 0),
(80, 'Wilma', '', 'Knot', '0', 'Hysopveld ', '13', '', '5467 KG', 'Veghel', '', 0),
(81, 'Sacha', '', 'Koemans', '0', 'De Henich ', '5', '', '4014 NP', 'Wadenoijen', '', 0),
(82, 'Hetty', '', 'Koetsier', '0', 'Wethouder Steinmetzstraat', '78', '', '1107 CC', 'Amsterdam', '', 0),
(83, 'Cathy', '', 'Korremans', '0', 'Velhorstweide ', '4', '', '5709 MJ', 'Helmond', '', 0),
(84, 'Marieke', '', 'Kouwenhoven', '0', 'Hanengewei ', '68', '', '3851 LD', 'Ermelo', '', 0),
(85, 'Erica', 'van der', 'Kraan', '0', 'Waagstraat ', '2', 'a', '2871 CT', 'Schoonhoven', '', 0),
(86, 'Cor', '', 'Kuiper', '0', 'Kloosterkamp ', '30', '', '9251 BE', 'Burgum', '', 0),
(87, 'Yvette', '', 'Le Brun', '0', 'Aronskelkstraat ', '81', '', '3053 XB', 'Rotterdam', '', 0),
(88, 'Femke', 'Van', 'Lieshout', '0', 'Parallelweg', '54', '', '5664 AG', 'Geldrop', '', 0),
(89, 'Elvira', '', 'Lindelauf', '0', 'Steve Bikostraat', '45', '1', '6418 PL', 'Heerlen', '', 0),
(90, 'Madelief', 'van der', 'Loos', '0', 'Meestere Weechslaan ', '16', '', '5237 KP', 'Den Bosch', '', 0),
(91, 'Sandi', '', 'Mackowiak', '0', 'Kapellerhof ', '90', '', '6045 DE', 'Roermond', '', 0),
(92, 'Jolanda', '', 'Martens', '0', 'De Leemkoele ', '5', '', '7783 GA', 'Gramsbergen', '', 0),
(93, 'Fleur', '', 'Meeusen', '0', 'Waghenaerdreef ', '92', '', '2661 RB', 'Bergschenhoek', '', 0),
(94, 'Isabeau', '', 'Meijer', '0', 'Red van Holststraat ', '13', '', '2931 PL', 'Krimpen aan de Lek', '', 0),
(95, 'Ingrid', '', 'Meulendijks', '0', 'Sommerscamp ', '5', '', '5721 LV', 'Asten', '', 0),
(96, 'Marielle', '', 'Middelkoop', '0', 'Groen van Prinstererstraa', '4', '', '3354 BD', 'Papendrecht', '', 0),
(97, 'Ria', '', 'Molenaar', '0', 'Zwolsewegje', '58', '', '8071 RX', 'Nunspeet', '', 0),
(98, 'Sacha', '', 'Mols', '0', 'Snellinckstraat ', '84', '', '3021 WK', 'Rotterdam', '', 0),
(99, 'Karin', '', 'Moonen', '0', 'Lekstraat', '16', '', '3404 KH', 'IJsselstein', '', 0),
(100, 'Sasja', '', 'Mulder', '0', 'Vijfde Buitenpepers ', '59', '', '5231 GK', 'Den Bosch', '', 0),
(101, 'Franciska', '', 'Mulder', '0', 'Oranjelaan ', '14', '', '8071 LG', 'Nunspeet', '', 0),
(102, 'Maria', '', 'Mulder', '0', 'Valkenhof ', '53', '', '7051 XC', 'Varsseveld', '', 0),
(103, 'Elize', '', 'Nagtegaal', '0', 'Rottekade ', '232', '', '2661 JW', 'Bergschenhoek', '', 0),
(104, 'Biljana', '', 'Novkovic', '0', 'Boszegge ', '3', '', '7392 AG', 'Twello', '', 0),
(105, 'Linda', '', 'Nuij', '0', 'Rietakker ', '11', '', '1679 VB', 'Midwoud', '', 0),
(106, 'Lisenka', 'van', 'Oorschot', '0', 'Elandlaan ', '8', 'D', '5704 DG', 'Helmond', '', 0),
(107, 'Jolanda', '', 'Oosterdijk', '0', 'Wedersteinbroek ', '2219', '', '6546 RX', 'Nijmegen', '', 0),
(108, 'Vera', '', 'Oosting', '0', 'Mecklenburglaan ', '9', '', '7315 DS', 'Apeldoorn', '', 0),
(109, 'Cora', '', 'Paul', '0', 'Dr van Peltlaan', '62', '', '1861 kd', 'Bergen NH', '', 0),
(110, 'Monique', '', 'Penders', '0', 'Bredasweg ', '26', '', '4844 CL', 'Terheijden', '', 0),
(111, 'Heidy', '', 'Peters', '0', 'Statenlaan', '75', '', '5708 ZX', 'Helmond', '', 0),
(112, 'Monique', 'van de', 'Pol', '0', 'Ds.Jongeneelstraat ', '6', '', '6411 EV', 'Heerlen', '', 0),
(113, 'Patricia', '', 'Pomme', '0', 'Castor ', '6', '', '6121 NS', 'Born', '', 0),
(114, 'Anke', '', 'Postma', '0', 'Boendermakerpad ', '25', '', '4813 KJ', 'Breda', '', 0),
(115, 'Vivian', '', 'Pot', '0', 'G. Gershwinstraat ', '90', '', '1544 NH', 'Zaandijk', '', 0),
(116, 'Angelica', '', 'Pozon', '0', 'Nooit Gedacht ', '114', '', '1398 EG', 'Muiden', '', 0),
(117, 'Melle', '', 'Procee', '0', 'B.van Galenstraat ', '36', '', '8101 ES', 'Raalte', '', 0),
(118, 'Annechien', '', 'Quartel', '0', 'Plukmadeseweg ', '1', '', '4921 AW', 'Made', '', 0),
(119, 'Mariangela', '', 'Ricci', '0', 'Sint-Jobskade ', '870', '', '3024 EN', 'Rotterdam', '', 0),
(120, 'Geesje', 'van', 'Riel', '0', 'Tuinweg ', '11', '', '2132 DN', 'Hoofddorp', '', 0),
(121, 'Christine', 'de', 'Rijcke', '0', 'Poorterslaan ', '89', '', '4561 ZM', 'Hulst', '', 0),
(122, 'Florien', '', 'Ringburg', '0', 'Zilvergracht ', '45', '', '2652 HT', 'Berkel en Rodenrijs', '', 0),
(123, 'Tirza', '', 'Roskam', '0', 'Da Costakade ', '48', '', '2802 VR', 'Gouda', '', 0),
(124, 'Nadea', '', 'Rotaru', '0', 'Sonnevelt ', '280', '', '3741 XV', 'Baarn', '', 0),
(125, 'Ciska', '', 'Schaap', '0', 'Bachstraat ', '7', '', '1921 EW', 'Akersloot', '', 0),
(126, 'Ginny', '', 'Schenkels', '0', 'Frederik Hendriklaan ', '45', '', '2181 TE', 'Hillegom', '', 0),
(128, 'Maya', '', 'Schmucki', '0', 'L. Naarstigstraat ', '6', '', '1063 EN', 'Amsterdam', '', 0),
(129, 'Marjolein', '', 'Scholten', '0', 'Zuidwal ', '45', '', '2512 XT', 'Den Haag', '', 0),
(130, 'Annette', '', 'Schreuder', '0', 'Lierderstraat ', '13', '', '7364 BH', 'Lieren', '', 0),
(131, 'Fannie', '', 'Schule', '0', 'Ledastraat ', '33', '', '3054 WC', 'Rotterdam', '', 0),
(132, 'Antoinette', '', 'Sluijs-Verheul', '0', 'Maarschalklaan ', '62', '', '3417 SE', 'Montfoort', '', 0),
(133, 'Mirjam', '', 'Snel', '0', 'Klingelbeekseweg ', '15', '', '6812 DD', 'Arnhem', '', 0),
(134, 'Brandy', '', 'Snoeijer', '0', 'Karthuizerlaan', '6', '', '8271 XB', 'IJsselmuiden', '', 0),
(135, 'Judy', '', 'Spitzenberger', '0', 'Appelgaarde', '19', '', '3225 GK', 'Hellevoetsluis', '', 0),
(136, 'Jannie', '', 'Stevens', '0', 'Prunusstraat ', '34', '', '4043 NV', 'Opheusden', '', 0),
(137, 'Toos', '', 'Stoit', '0', 'Graaf Hunerikhof ', '7', '', '5302 XN', 'Zaltbommel', '', 0),
(138, 'Jeanine', '', 'Stouten', '0', 'Tuin ', '9', '', '4307 CH', 'Oosterland', '', 0),
(139, 'Annemarie', '', 'Swaak', '0', 'Wollefoppenweg ', '59', 'c', '3059 LG', 'Rotterdam', '', 0),
(140, 'Miriam', '', 'Swarts', '0', 'Ulohof', '27', '', '9401 HC', 'Assen', '', 0),
(141, 'Stephanie', '', 'Talbot', '0', 'Zetangel', '22', '', '3192 HN', 'Hoogvliet', '', 0),
(142, 'Danielle', '', 'Theunissen', '0', 'Havikskruid ', '4', '', '5831 PH', 'Boxmeer', '', 0),
(143, 'Brigitte', 'van', 'Arkel', '0', 'Sadeestraat', '16', '', '2596 XC', 'Den Haag', '', 0),
(144, 'Lotteke', 'van', 'Eijkel', '0', 'Brinkmanstraat', '15', 'rood', '3067 TA', 'Rotterdam', '', 0),
(145, 'Jelma', 'van', 'Oostenbrugge', '0', 'Diependorst', '139', '', '3253VC', 'Ouddorp', '', 0),
(146, 'Cor', '', 'Vangangelt', '0', 'Schoolstraat ', '2', '', '6343 CE', 'Klimmen', '', 0),
(147, 'Nioco', '', 'Veenema', '0', 'Eekhoornslag ', '15', '', '9403 ZA', 'Assen', '', 0),
(148, 'Sylvia ', '', 'Veerman', '0', 'Dukaton ', '58', '', '1132 RD', 'Volendam', '', 0),
(149, 'Margreet', '', 'Veerma', '0', 'Kaper ', '49', '', '1132 PC', 'Volendam', '', 0),
(150, 'Wendy', '', 'Veldheer', '0', 'Leeghwaterstraat', '19', '', '4251 LM', 'Werkendam', '', 0),
(151, 'Annelies', '', 'Venhuis', '0', 'De Sanstraat ', '74', '', '9744 HZ', 'Groningen', '', 0),
(152, 'Chantal', '', 'Vermeulen', '0', 'Soesterengweg ', '18a', '', '3761 AV', 'Soest', '', 0),
(153, 'Coba', '', 'Verploeg', '0', 'Bulckesteynstraat ', '2', '', '4158 CS', 'Deil', '', 0),
(154, 'Nienke', '', 'Versteeg', '0', 'Klein Hitland', '10', '66', '2911 BR', 'Nieuwerkerk a/d IJssel', '', 0),
(155, 'Diana', '', 'Vinke', '0', 'Jos Lussenburglaan ', '31', '', '8072 HV', 'Nunspeet', '', 0),
(156, 'Cobie', '', 'Vonk', '0', 'Bredenoord ', '50', '', '3079 JE', 'Rotterdam', '', 0),
(157, 'Rob', '', 'Vos', '0', 'Bastaardklaver ', '2', '', '3069 DM', 'Rotterdam', '', 0),
(158, 'Claudia', 'de', 'Vries', '0', 'Rozengaardstraat ', '14', '', '6441 TG', 'Brunssum', '', 0),
(159, 'Hans', '', 'Wagner', '0', 'Vanadiumweg ', '16', '', '3812 PZ', 'Amersfoort', '', 0),
(160, 'Hans ', '', 'Wagner bv', '0', ' Vanadiumweg ', '16', '', '3812 PA', 'Amersfoort ', '', 0),
(161, 'Simone', '', 'Warnaar', '0', 'Esdoornweg ', '51', '', '1871 SP', 'Schoorl', '', 0),
(162, 'Marieke', '', 'Weersink', '0', 'Jellissenkamp ', '28', '', '8014 EW', 'Zwolle', '', 0),
(163, 'Arianne', '', 'Weij', '0', 'Ribesplantsoen ', '8', '', '3284 XN', 'Zuid-Beijerland', '', 0),
(164, 'Mariska', '', 'Went', '0', 'Oosterhesselenstraat ', '331', '', '2545 SW', 'Den Haag', '', 0),
(165, 'Dinanda', '', 'Westdijk', '0', 'De Genestetlaan ', '13', '', '2741 AC', 'Waddinxveen', '', 0),
(166, 'Marjan', '', 'Wiegers', '0', 'Scheepvaartlaan ', '88', '', '9514 EH', 'Gasselternijveen', '', 0),
(167, 'Annelies', '', 'Wielink', '0', 'De Opera ', '12', '', '8265 TC', 'Kampen', '', 0),
(168, 'Josje', '', 'Wiggers', '0', 'President Kennedylaan', '38', '', '6883an', 'Velp', '', 0),
(169, 'Marijke', '', 'Wijbenga', '0', 'Richard Rodgersstraat ', '6', '', '3543 CN', 'Utrecht', '', 0),
(170, 'Maria', 'van', 'Wijk', '0', 'Burgemeester Baxlaan ', '37', '', '4281 KN', 'Andel', '', 0),
(171, 'Wendie', '', 'Wilders', '0', 'Doelstraat ', '66', '', '3155 AJ', 'Maasland', '', 0),
(172, 'Patricia', '', 'Willems', '0', 'Kerkpad ', '11', '', '5375 BP', 'Reek', '', 0),
(173, 'Amela', '', 'Willemse', '0', 'Paardebloem ', '29', '', '8265 MR', 'Kampen', '', 0),
(174, 'Dagmar', '', 'Zeegers', '0', 'Hobbelrade ', '44', '', '6176 CH', 'Spaubeek', '', 0),
(175, 'Paulien', '', 'Zomer', '0', 'Tromp Meesterstraat ', '5', '', '9636 EP', 'Zuidbroek', '', 0),
(176, 'Ellis', 'van', 'Zon', '0', 'Kersweg ', '72', '', '3958 BC', 'Amerongen', '', 0),
(177, 'Astrid', '', 'Zwaan', '0', 'Berkel ', '44', '', '8223 DZ', 'Lelystad', '', 0),
(178, 'Marielle', '', 'Zweers', '0', 'Bloemstraat ', '33', '', '7419 BT', 'Deventer', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nieuws`
--

CREATE TABLE `nieuws` (
  `nieuwsID` int(4) NOT NULL,
  `titel` varchar(50) NOT NULL,
  `schrijver` varchar(25) NOT NULL,
  `datum` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `inhoud` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `nieuws`
--

INSERT INTO `nieuws` (`nieuwsID`, `titel`, `schrijver`, `datum`, `foto`, `inhoud`) VALUES
(1, 'De heerlijke sushi van Alkmaar', 'Ricardo', '0000-00-00', '', 'Sushi in Alkmaar? Dat is genieten van de verse vis, kleurrijke sushimenu\'s en andere gerechten van SushiPoint. Het recept voor een gemakkelijke, gezonde én smakelijke maaltijd. Maak nu uw keuze uit ons aanbod van Nigiri, Gunkan, Uramaki, Maki, Sashimi, vegetarische sushi, warme gerechten en groepsmenu\'s. Ontdek de lekkerste smaken van Alkmaar. U kunt gemakkelijk online de sushi bestellen en laat het direct bezorgen of kom het zelf afhalen.'),
(2, 'Nieuwe website', 'Ricardo', '01-06-2020', '', 'De website wordt aan gemaakt');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `producten`
--

CREATE TABLE `producten` (
  `productID` int(4) NOT NULL,
  `naam` varchar(25) NOT NULL,
  `beschrijving` text NOT NULL,
  `aantal` int(3) NOT NULL,
  `foto` text NOT NULL,
  `prijs` float(4,2) NOT NULL,
  `soort` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `producten`
--

INSERT INTO `producten` (`productID`, `naam`, `beschrijving`, `aantal`, `foto`, `prijs`, `soort`) VALUES
(5, 'Maki komkommer', '', 6, '', 9.95, '0'),
(6, 'Maki avocado', '', 6, '', 9.95, '0'),
(7, 'Maki tonijn', '', 6, '', 9.95, '0'),
(8, 'Happy Chicken', 'New York yakitori, maki avocado, yakitori, 3 stuks, portie edamame (soy beans)', 18, '', 19.95, '0'),
(9, 'New York yakitori', 'yakitori chicken, crispy union, lente ui, yakitori saus\r\n', 8, '', 9.95, '0'),
(10, 'Crispy yakitori', 'yakitori, avocado, lente ui, sla', 8, '', 11.95, '0');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `allergieen`
--
ALTER TABLE `allergieen`
  ADD PRIMARY KEY (`allergieID`);

--
-- Indexen voor tabel `allergieën lijst`
--
ALTER TABLE `allergieën lijst`
  ADD PRIMARY KEY (`allergielijstID`);

--
-- Indexen voor tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  ADD PRIMARY KEY (`bestellingsID`);

--
-- Indexen voor tabel `klanten`
--
ALTER TABLE `klanten`
  ADD UNIQUE KEY `klantnummer` (`klantID`);

--
-- Indexen voor tabel `producten`
--
ALTER TABLE `producten`
  ADD UNIQUE KEY `productID` (`productID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `allergieen`
--
ALTER TABLE `allergieen`
  MODIFY `allergieID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `allergieën lijst`
--
ALTER TABLE `allergieën lijst`
  MODIFY `allergielijstID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `bestellingen`
--
ALTER TABLE `bestellingen`
  MODIFY `bestellingsID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
