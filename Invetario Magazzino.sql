CREATE TABLE IF NOT EXISTS `articoli` (
  `art_cod` int(11) NOT NULL AUTO_INCREMENT,
  `cat_cod` int(11) NOT NULL,
  `art_descrizione` varchar(15) NOT NULL,
  `art_prezzo` int(11) NOT NULL,
  `art_ive` int(11) NOT NULL,
  `art_spese_trasp` int(11) NOT NULL,
  PRIMARY KEY (`art_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`art_cod`, `cat_cod`, `art_descrizione`, `art_prezzo`, `art_ive`, `art_spese_trasp`) VALUES
(1, 1, 'libreria', 55, 2, 12),
(2, 1, 'mobile', 32, 2, 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `cat_cod` int(11) NOT NULL AUTO_INCREMENT,
  `cat_descrizione` varchar(20) NOT NULL,
  PRIMARY KEY (`cat_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`cat_cod`, `cat_descrizione`) VALUES
(1, 'bello');

-- --------------------------------------------------------

--
-- Struttura della tabella `compart`
--

CREATE TABLE IF NOT EXISTS `compart` (
  `art_cod` int(11) NOT NULL AUTO_INCREMENT,
  `com_cod` int(11) NOT NULL,
  `compart_qta` int(11) NOT NULL,
  PRIMARY KEY (`art_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `componenti`
--

CREATE TABLE IF NOT EXISTS `componenti` (
  `com_cod` int(11) NOT NULL AUTO_INCREMENT,
  `com_descrizione` varchar(20) NOT NULL,
  `com_costo` int(11) NOT NULL,
  `lab_od` int(11) NOT NULL,
  PRIMARY KEY (`com_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `laboratori`
--

CREATE TABLE IF NOT EXISTS `laboratori` (
  `lab_cod` int(11) NOT NULL AUTO_INCREMENT,
  `lab_Indirizzo` varchar(30) NOT NULL,
  `lab_Citta` varchar(20) NOT NULL,
  `lab_Telefono` int(11) NOT NULL,
  PRIMARY KEY (`lab_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `negozi`
--

CREATE TABLE IF NOT EXISTS `negozi` (
  `neg_cod` int(11) NOT NULL AUTO_INCREMENT,
  `neg_nome` varchar(20) NOT NULL,
  `neg_indirizzo` varchar(20) NOT NULL,
  `neg_citta` varchar(20) NOT NULL,
  `neg_telefono` int(11) NOT NULL,
  PRIMARY KEY (`neg_cod`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `negozi`
--

INSERT INTO `negozi` (`neg_cod`, `neg_nome`, `neg_indirizzo`, `neg_citta`, `neg_telefono`) VALUES
(1, 'ZEUS', 'via ada dei', 'bergamo', 3334567);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordart`
--

CREATE TABLE IF NOT EXISTS `ordart` (
  `ord_cod` int(11) NOT NULL AUTO_INCREMENT,
  `art_cod` int(11) NOT NULL,
  `ordart_qta` int(11) NOT NULL,
  PRIMARY KEY (`ord_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE IF NOT EXISTS `ordini` (
  `ord_cod` int(11) NOT NULL AUTO_INCREMENT,
  `neg_Cod` int(11) NOT NULL,
  `ord_Data` date NOT NULL,
  PRIMARY KEY (`ord_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

