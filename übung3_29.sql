##############################################################################
# DISCLAIMER: Übung 3.29 Seite 86 aus dem Buch "Einstieg in SQL (4. Auflage) #
##############################################################################

ALTER TABLE hersteller
	  ADD plz CHAR(5),
	  ADD ort VARCHAR(50);

ALTER TABLE kunde
	  MODIFY nachname VARCHAR(60);