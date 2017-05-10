----------- Con.Di.Class -----------
CREATE TABLE IF NOT EXISTS cdc(

  id_cdc int AUTO_INCREMENT,
  sezione char,
  classe int,
  anno_scolastico date,
  PRIMARY KEY (id_cdc)
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1; 
-------------------------------------
----------- Doc. Referente -----------
 CREATE TABLE IF NOT EXISTS docente_referente(

  id_dr int AUTO_INCREMENT,
  nome varchar(15),
  cognome varchar(15),
  id_cdc int,
  PRIMARY KEY (id_dr),
  FOREIGN KEY (id_cdc)
  REFERENCES cdc(id_cdc)
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1; 
------------------------------------------------

----------- Azienda -----------
CREATE TABLE IF NOT EXISTS azienda(

  id_a int AUTO_INCREMENT,
  nome varchar(15),
  citta varchar(15),
  PRIMARY KEY (id_dr),
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
---------------------------------------

----------- Tutor Azienda -----------
CREATE TABLE IF NOT EXISTS tutor_aziendale(

  id_ta int AUTO_INCREMENT,
  nome varchar(15),
  cognome varchar(15),
  id_a int,
  PRIMARY KEY (id_ta),
  FOREIGN KEY (id_a)
  REFERENCES azienda(id_a)
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1; 
---------------------------------------------

----------- Perieodo Formazione -----------
CREATE TABLE IF NOT EXISTS periodo_formazione(

  id_pf int AUTO_INCREMENT,
  descrizione text,
  data_inizio date,
  data_fine date,
  id_ta int,
  PRIMARY KEY (id_pf),
  FOREIGN KEY (id_ta)
  REFERENCES tutor_aziendale(id_ta)
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1; 
-------------------------------------------------------

----------- Studente -----------
CREATE TABLE IF NOT EXISTS studente(

  id_st int AUTO_INCREMENT,
  nome varchar(15),
  cognome varchar(15),
  id_cdc int,
  PRIMARY KEY (id_st),
  FOREIGN KEY (id_cdc)
  REFERENCES cdc(id_cdc)
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1; 
-----------------------------------------

----------- Argomento -----------
CREATE TABLE IF NOT EXISTS argomento( 
	
    id_ar int AUTO_INCREMENT,
    descrizione text,
    id_pf int,
    PRIMARY KEY (id_ar),
    FOREIGN KEY (id_pf)
    REFERENCES periodo_formazione(id_pf)
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
------------------------------------------
----------- STPF -----------
CREATE TABLE IF NOT EXISTS stpf( 
	
    id_stpf int AUTO_INCREMENT,
    voto int,
    id_pf int,
    id_st int,
    PRIMARY KEY (id_stpf),
    FOREIGN KEY (id_pf)
    REFERENCES periodo_formazione(id_pf),
    FOREIGN KEY (id_st)
    REFERENCES studente(id_st)    
)ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
-------------------------------------------------------
----------- END -----------