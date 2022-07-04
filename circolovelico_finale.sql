-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 04, 2022 alle 16:00
-- Versione del server: 10.4.21-MariaDB
-- Versione PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `circolovelico`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `barca`
--

CREATE TABLE `barca` (
  `id_barca` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `lunghezza` varchar(255) NOT NULL,
  `fk_socio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `barca`
--

INSERT INTO `barca` (`id_barca`, `nome`, `lunghezza`, `fk_socio`) VALUES
('1212', 'gioschio', '15', 'p'),
('25', 'silviA', '22', 'p'),
('ciao', 'barchetta', '8', 'AA00BB'),
('Kekkak256', 'kekka', '15', 'p'),
('P', 'P', '7', 'AA00BB'),
('salsa11', 'pare', '15', 'salsa22');

-- --------------------------------------------------------

--
-- Struttura della tabella `gara`
--

CREATE TABLE `gara` (
  `id_gara` varchar(255) NOT NULL,
  `quota` varchar(12) NOT NULL,
  `data` varchar(255) NOT NULL,
  `luogo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `gara`
--

INSERT INTO `gara` (`id_gara`, `quota`, `data`, `luogo`) VALUES
('Gara1', '100', '25/08/2022', 'Melfi'),
('Gara2', '125', '25/09/2022', 'Riccione'),
('Gara3', '260', '18/08/2023', 'Oslo'),
('Gara4', '34', '01/01/2023', 'TERNI');

-- --------------------------------------------------------

--
-- Struttura della tabella `pagamento`
--

CREATE TABLE `pagamento` (
  `id_pagamento` int(12) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `importo` varchar(255) NOT NULL,
  `fk_soci` varchar(255) NOT NULL,
  `data_pagamento` date NOT NULL,
  `metodo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `pagamento`
--

INSERT INTO `pagamento` (`id_pagamento`, `tipo`, `importo`, `fk_soci`, `data_pagamento`, `metodo`) VALUES
(1, 'associazione', '100', 'AA00BB', '2022-02-16', 'iban'),
(13, 'gara', '555', 'p', '2022-03-25', 'carta'),
(14, 'associazione', '456', 'p', '2022-03-25', 'iban'),
(15, 'gara', '5000', 'p', '2022-03-25', 'carta'),
(16, 'associazione', '5000', 'p', '2022-03-25', 'carta'),
(17, 'rimessaggio', '5000', 'p', '2022-03-25', 'carta'),
(18, 'rimessaggio', '500', 'p', '2022-03-28', 'carta'),
(19, 'rimessaggio', '100', 'p', '2022-06-17', 'carta'),
(20, 'gara', '1250', 'p', '2022-06-28', 'carta');

-- --------------------------------------------------------

--
-- Struttura della tabella `partecipanti`
--

CREATE TABLE `partecipanti` (
  `fk_partecipante` varchar(255) NOT NULL,
  `fk_gara` varchar(255) NOT NULL,
  `pagato` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `partecipanti`
--

INSERT INTO `partecipanti` (`fk_partecipante`, `fk_gara`, `pagato`) VALUES
('p', 'Gara4', 0),
('salsa22', 'Gara1', 0),
('p', 'Gara3', 0),
('p', 'Gara1', 0),
('p', 'Gara1', 0),
('p', 'Gara2', 0),
('p', 'Gara2', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `personale`
--

CREATE TABLE `personale` (
  `id_personale` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `personale`
--

INSERT INTO `personale` (`id_personale`, `user`, `password`) VALUES
('PR01ML', 'personale1', 'per1'),
('PR02ML', 'personale2', 'per2'),
('y', 'y', 'y');

-- --------------------------------------------------------

--
-- Struttura della tabella `socio`
--

CREATE TABLE `socio` (
  `CF` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `indirizzo` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `carta_credito` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `socio`
--

INSERT INTO `socio` (`CF`, `nome`, `cognome`, `indirizzo`, `username`, `pwd`, `carta_credito`) VALUES
('AA00BB', 'Antonio', 'Signorelli', 'Via Firenze ', 'therealantony', 'Antonio', ' VISA'),
('DRNNDR96P27G337H', 'Andrea', 'Adorni', 'Via corso corsi', 'Ado96.exe', 'cubi', '0110 5697 2308 5701'),
('FR0202', 'Francesca ', 'Stefano', 'via roma', 'kekkastef', 'kekka', '025894456fgh'),
('FR025VHT', 'Francesca', 'Stefano', 'Via roma 5', 'Kekka00', 'KK', 'ER0258OI'),
('gt', 'gt', 'g', 'tg', 'tg', 'tg', 'gt'),
('p', 'p', 'p', 'p', 'p', 'p', 'p'),
('Pippo', 'pluto', 'pkjhgf', 'phgfd', 'pgfds', 'pijhgfds', 'hbvcxz'),
('salsa22', 'ferdy', 'insaccato', 'via ospedale', 'salsaalsugo', 'massimovisconti69', '123456789');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `barca`
--
ALTER TABLE `barca`
  ADD PRIMARY KEY (`id_barca`),
  ADD KEY `fk_socio` (`fk_socio`);

--
-- Indici per le tabelle `gara`
--
ALTER TABLE `gara`
  ADD PRIMARY KEY (`id_gara`);

--
-- Indici per le tabelle `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id_pagamento`),
  ADD KEY `fk_soci` (`fk_soci`);

--
-- Indici per le tabelle `partecipanti`
--
ALTER TABLE `partecipanti`
  ADD KEY `fk_gara` (`fk_gara`),
  ADD KEY `fk_partecipante` (`fk_partecipante`);

--
-- Indici per le tabelle `personale`
--
ALTER TABLE `personale`
  ADD PRIMARY KEY (`id_personale`);

--
-- Indici per le tabelle `socio`
--
ALTER TABLE `socio`
  ADD PRIMARY KEY (`CF`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id_pagamento` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `barca`
--
ALTER TABLE `barca`
  ADD CONSTRAINT `fk_socio` FOREIGN KEY (`fk_socio`) REFERENCES `socio` (`CF`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `fk_soci` FOREIGN KEY (`fk_soci`) REFERENCES `socio` (`CF`) ON DELETE CASCADE;

--
-- Limiti per la tabella `partecipanti`
--
ALTER TABLE `partecipanti`
  ADD CONSTRAINT `fk_gara` FOREIGN KEY (`fk_gara`) REFERENCES `gara` (`id_gara`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_partecipante` FOREIGN KEY (`fk_partecipante`) REFERENCES `socio` (`CF`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
