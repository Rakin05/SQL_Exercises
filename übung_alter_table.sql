##############################################################################################################################
# DISCLAIMER: Diese Übung ist keine richtige Übung aus dem Buch "Einstieg in SQL (4.Auflage), stammt allerdings von Seite 83 #
##############################################################################################################################

CREATE TABLE mein_kunde
(
	kundennr  INTEGER     NOT NULL,
	name 	  VARCHAR(50) NOT NULL,
	vorname   VARCHAR(50) NOT NULL,
	anschrift VARCHAR(50) NOT NULL,
	ort 	  VARCHAR(50) NOT NULL,
	telefon   VARCHAR(50) NOT NULL,
	email     VARCHAR(50),
	
	CONSTRAINT pk_mein_kunde
	PRIMARY KEY (kundennr)
);

ALTER TABLE mein_kunde ADD plz CHAR(5);
ALTER TABLE mein_kunde ADD zahlungsart CHAR(1)
	  CHECK ( zahlungsart IN ('R','K','B') );
ALTER TABLE mein_kunde
	  MODIFY zahlungsart CHAR(1) DEFAULT 'R';

ALTER TABLE mein_kunde 
	  DROP PRIMARY KEY,
	  ADD anrede CHAR(4) CHECK ( anrede IN ('Herr', 'Frau', 'Fam.') );
	