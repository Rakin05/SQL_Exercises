#################################################################################
#	AUTHOR: Felix Klotzsche													    #
#	DISCLAIMER: Alle Übungen sind aus dem Buch "Einstieg in SQL (4. Auflage )	#
#################################################################################

# Seite 59 Aufgabe 3.1
CREATE TABLE geburtstag
(
	gebnr 	   INT AUTO_INCREMENT NOT NULL,
	vorname	   VARCHAR(50) 	      NOT NULL,
	nachname   VARCHAR(50) 		  NOT NULL,
	geburtstag DATE 			  NOT NULL,
	PRIMARY KEY(gebnr)
);

# Seite 59 Aufgabe 3.2
CREATE TABLE urlaubmitarbeiter
(
	urlnr 	 INT AUTO_INCREMENT NOT NULL,
	vorname  VARCHAR(50) 		NOT NULL,
	nachname VARCHAR(50) 		NOT NULL,
	beginn   DATE 				NOT NULL,
	ende     DATE 				NOT NULL,
	PRIMARY KEY(urlnr)
);

# Seite 59 Aufgabe 3.3
CREATE TABLE telefonliste
(
	telnr 		  INT AUTO_INCREMENT NOT NULL,
	vorname 	  VARCHAR(50) 		 NOT NULL,
	nachname 	  VARCHAR(50) 		 NOT NULL,
	telefonnummer VARCHAR(25) 		 NOT NULL,
	bemerkung     CHAR(1)     		 NOT NULL 
				  CHECK ( bemerkung IN ('H', 'G') ), # H für Handy, G für geschäftlich
	CONSTRAINT ps_telefonliste 
	PRIMARY KEY (telnr)
);

# Seite 64 Aufgabe 3.6
CREATE TABLE ferien
(
	mitarbeiternr INT  NOT NULL,
	beginn 		  DATE NOT NULL,
	ende 		  DATE NOT NULL,

	FOREIGN KEY (mitarbeiternr) 
	REFERENCES mitarbeiter(MITARBEITERNR)
);

# Seite 64 Aufgabe 3.7
CREATE TABLE notfall
(
	mitarbeiternr INT 		  NOT NULL,
	notfallnummer VARCHAR(25) NOT NULL,

	FOREIGN KEY (mitarbeiternr)
	REFERENCES mitarbeiter(MITARBEITERNR)
);