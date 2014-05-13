##############################################################################
# DISCLAIMER: Übung 3.8 Seite 64 aus dem Buch "Einstieg in SQL (4. Auflage ) #
##############################################################################

CREATE TABLE posten
(
	BESTELLNR 	 INT NOT     NULL,
	ARTIKELNR	 INT NOT     NULL,
	BESTELLMENGE INT DEFAULT NULL,
	LIEFERMENGE  INT DEFAULT NULL,

	FOREIGN KEY (BESTELLNR)
	REFERENCES bestellung(BESTELLNR),

	FOREIGN KEY (ARTIKELNR)
	REFERENCES artikel(ARTIKELNR)
);