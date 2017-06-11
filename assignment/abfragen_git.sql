-- Aufgabe B
-- alle Geräte von Tom
SELECT bezeichnung FROM eigentuemer NATURAL JOIN geraet WHERE name = 'Tom';

-- alle Jobs, auf der das Mischpult "Soundcraft Vi4" war
SELECT DISTINCT von, bis, kunde FROM geraet NATURAL JOIN geraet_auf NATURAL JOIN job
WHERE bezeichnung = 'g' ;

-- Aufgabe C
-- zeigt alle PA und Bass Geräte an
SELECT * FROM geraet WHERE typ IN ('PA', 'Bass');

-- Geräte, die noch nie auf einem Job waren
SELECT * FROM geraet g WHERE NOT EXISTS
(SELECT 1 FROM geraet_auf ga WHERE g.geraet_nr = ga.geraet_nr);

-- findet das teuerste Gerät, mit ALL Operator
SELECT * FROM geraet g WHERE preis >= ALL (SELECT preis FROM geraet);

-- Aufgabe D
-- wieviel jeder Kunde an Umsatz gebracht hat
SELECT kunde, sum (preis) Gesamtumsatz FROM geraet g NATURAL JOIN geraet_auf NATURAL JOIN job
GROUP BY kunde

-- wieviel hat jeder bisher eingenommen (parallel zur Kasse)
SELECT name, sum (preis) Gesamtumsatz FROM geraet g NATURAL JOIN geraet_auf NATURAL JOIN eigentuemer
GROUP BY name

-- wie oft wurde welches Gerät bereits vermietet? 
-- nach BEZEICHNUNG, nicht nach GeräteNummer, damit gleiche Geräte zusammen gefasst werden
-- noch ohne Geräte, welche nie vermietet worden sind
SELECT bezeichnung, count (*) anzahl FROM geraet g NATURAL JOIN geraet_auf
GROUP BY bezeichnung ORDER BY anzahl DESC;

-- wieviel hat welches Gerät bisher an Umsatz generiert?
-- nach BEZEICHNUNG, nicht nach GeräteNummer, damit gleiche Geräte zusammen gefasst werden
-- noch ohne Geräte, welche nie vermietet worden sind
SELECT bezeichnung, sum (preis) anzahl FROM geraet g NATURAL JOIN geraet_auf
GROUP BY bezeichnung ORDER BY anzahl DESC;

-- Aufgabe E
-- wie oft wurden welche Kabel vermietet, welche über 10m lang sind
-- noch ohne Kabel, welche nie vermietet worden sind
SELECT laenge, kabel_nr, typ, count(*) wieoft FROM kabel k NATURAL JOIN kabel_auf ka
GROUP BY kabel_nr HAVING min(laenge) >= 10.0 ORDER BY wieoft DESC;
