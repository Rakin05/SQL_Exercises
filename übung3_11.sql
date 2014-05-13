###############################################################################
# DISCLAIMER: Übung 3.11 Seite 69 aus dem Buch "Einstieg in SQL (4. Auflage ) #
###############################################################################

CREATE TABLE rabatt
(
	KUNDENNR 	INT NOT NULL,
	RABATTSTUFE CHAR(1) 
				CHECK ( RABATTSTUFE IN ('B', 'S', 'G') ),

	FOREIGN KEY (KUNDENNR) 
	REFERENCES kunde(KUNDENNR)
);