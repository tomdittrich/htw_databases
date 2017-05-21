-- Welche Namen haben die einzelnen Studierenden: Welcher Operator dient hierzu? Wie lautet die Anfrage in SQL?
	SELECT name FROM studenten;

-- Welche Studierenden (MartNr) hören die Vorlesung mit der Nummer 5022: Wie lautet die Anfrage in der relationalen Algebra. Wie wie in SQL?
	SELECT matr_nr FROM hoeren WHERE vorl_nr = 5022;

-- Welche Studierenden (Name) hören die Vorlesung "Ethik"? Wie lautet die Anfrage in der relationalen Algebra. Wie wie in SQL?
	SELECT DISTINCT studenten.name from studenten, hoeren, vorlesungen 
	WHERE titel = 'Ethik' 
	AND vorlesungen.vorl_nr = hoeren.vorl_nr 
	AND studenten.matr_nr = hoeren.matr_nr;

-- DISTINCT verhindet Duplikate in der Anzeige

-- Welche möglichen SWS haben Vorlesungen? 
	SELECT DISTINCT sws FROM vorlesungen;

-- Welche Vorlesungen (Namen) haben als (direkte) Voraussetzung die Veranstaltung "Grundzüge".
	SELECT titel FROM voraussetzen NATURAL JOIN vorlesungen
	WHERE vorlesungen.vorl_nr = voraussetzen.nachfolger
	AND (SELECT vorl_nr FROM vorlesungen WHERE titel = 'Grundzuege')
 	= voraussetzen.vorgaenger;

-- Welche Vorlesungen(VorlNr, Titel, SWS) hören die Studierenden der höheren Semester (>5)?
	SELECT DISTINCT vorl_nr, vorlesungen.titel, vorlesungen.sws
	FROM vorlesungen NATURAL JOIN studenten WHERE studenten.semester <= 5;

-- Welche C4-Professoren halten eine Vorlesungen mit mehr als 2 SWS? Ergebnisrelation:{[Name, Titel]}
	SELECT p.name, v.titel FROM  professoren p NATURAL JOIN vorlesungen v
	WHERE v.sws > 2 AND v.gelesen_von = p.pers_nr;

-- Welche Professoren (Namen) haben einen Assistenten?
	SELECT DISTINCT p.name FROM professoren p, assistenten a 
	WHERE a.boss = p.pers_nr;

-- Alle Vorlesungstitel, die der Professor Sokrates hält?
	SELECT v.titel FROM professoren p NATURAL JOIN vorlesungen v
	WHERE p.name = 'Sokrates' AND v.gelesen_von = p.pers_nr;

-- Welche Studenten haben die Vorlesung Grundzuege oder Logik gehört?
SELECT DISTINCT s.name FROM studenten s NATURAL JOIN
vorlesungen v NATURAL JOIN hoeren h
	WHERE s.matr_nr = h.matr_nr
	AND h.vorl_nr = vorl_nr
	AND (v.titel = 'Grundzuege' OR v.titel = 'Logik');

-- Welcher Professor (nur die Namen) liest eine  Vorlesung mit mehr als 3 SWS?
	SELECT DISTINCT p.name FROM professoren p NATURAL JOIN vorlesungen v
		WHERE p.pers_nr = v.gelesen_von
		AND v.sws > 3;

-- Wie lauten die Personennummern der Professoren, die keine Vorlesung lesen?
	SELECT DISTINCT p.pers_nr FROM professoren p 
		WHERE (SELECT COUNT(*) FROM vorlesungen v 
		WHERE v.gelesen_von= p.pers_nr)=0;