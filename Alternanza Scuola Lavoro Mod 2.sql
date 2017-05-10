------ Dm Database ------
CREATE TABLE IF NOT EXISTS   argomento   (
    id_ar   int(11) NOT NULL AUTO_INCREMENT,
    descrizione   text,
    id_pf   int(11) DEFAULT NULL,
  PRIMARY KEY (  id_ar  ),
  KEY   id_pf   (  id_pf  )
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--- Struttura della tabella azienda ---

CREATE TABLE IF NOT EXISTS azienda (
  id_ int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(15) DEFAULT NULL,
  citta varchar(15) DEFAULT NULL,
  PRIMARY KEY (id_a)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

------- Dati per la tabella azienda ---------

INSERT INTO   azienda   (   nome  ,   citta  ) VALUES
(  Calligaris ,  Udine ),
(  Accenture ,  Napoli ),
(  Alenia ,  Napoli ),
(  Cam ,  Bergamo ),
(  BCSoft ,  Napoli );

------------- Struttura della tabella cdc --------------

CREATE TABLE IF NOT EXISTS   cdc   (
    id_cdc   int(11) NOT NULL AUTO_INCREMENT,
    sezione   char(1) DEFAULT NULL,
    classe   int(11) DEFAULT NULL,
    anno_scolastico   year(4) DEFAULT NULL,
  PRIMARY KEY (  id_cdc  )
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


------- Dati per la tabella azienda ---------

INSERT INTO   cdc   (  sezione  ,   classe , anno_scolastico  ) VALUES
(  o ,  4 , 2017 ),
(  p ,  4 , 2017 ),
(  g ,  4 , 2017 ),
(  x ,  3 , 2017 ),
(  l ,  3 , 2017 );

------------- Struttura della tabella   docente_referente  -------------

CREATE TABLE IF NOT EXISTS   docente_referente   (
    id_dr   int(11) NOT NULL AUTO_INCREMENT,
    nome   varchar(15) DEFAULT NULL,
    cognome   varchar(15) DEFAULT NULL,
    id_cdc   int(11) DEFAULT NULL,
  PRIMARY KEY (  id_dr  ),
  KEY   id_cdc   (  id_cdc  )
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

------------- Struttura della tabella   periodo_formazione ------------- 

CREATE TABLE IF NOT EXISTS   periodo_formazione   (
    id_pf   int(11) NOT NULL AUTO_INCREMENT,
    descrizione   text,
    data_inizio   date DEFAULT NULL,
    data_fine   date DEFAULT NULL,
    id_ta   int(11) DEFAULT NULL,
  PRIMARY KEY (  id_pf  ),
  KEY   id_ta   (  id_ta  )
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-------------- Struttura della tabella   stpf ---------------- 

CREATE TABLE IF NOT EXISTS   stpf   (
    id_stpf   int(11) NOT NULL AUTO_INCREMENT,
    voto   int(11) DEFAULT NULL,
    id_pf   int(11) DEFAULT NULL,
    id_st   int(11) DEFAULT NULL,
  PRIMARY KEY (  id_stpf  ),
  KEY   id_pf   (  id_pf  ),
  KEY   id_st   (  id_st  )
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

----------- Struttura della tabella studente --------------------  

CREATE TABLE IF NOT EXISTS   studente   (
    id_st   int(11) NOT NULL AUTO_INCREMENT,
    nome   varchar(15) DEFAULT NULL,
    cognome   varchar(15) DEFAULT NULL,
    id_cdc   int(11) DEFAULT NULL,
  PRIMARY KEY (  id_st  ),
  KEY   id_cdc   (  id_cdc  )
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

------- Struttura della tabella   tutor_aziendale ---------- 

CREATE TABLE IF NOT EXISTS   tutor_aziendale   (
    id_ta   int(11) NOT NULL AUTO_INCREMENT,
    nome   varchar(15) DEFAULT NULL,
    cognome   varchar(15) DEFAULT NULL,
    id_a   int(11) DEFAULT NULL,
  PRIMARY KEY (  id_ta  ),
  KEY   id_a   (  id_a  )
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
