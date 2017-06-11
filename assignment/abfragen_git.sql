-- alle Geräte von Tom
SELECT bezeichnung FROM eigentuemer NATURAL JOIN geraet WHERE name = 'Tom';

-- alle Jobs, auf der das Mischpult "g" war
SELECT DISTINCT von, bis, kunde FROM geraet NATURAL JOIN geraet_auf NATURAL JOIN job
WHERE bezeichnung = 'g' ;

-- zeigt alle PA und Bass Geräte an
SELECT * FROM geraet WHERE typ IN ('PA', 'Bass');

-- Geräte, die noch nie auf einem Job waren
SELECT * FROM geraet g WHERE NOT EXISTS
(SELECT 1 FROM geraet_auf ga WHERE g.geraet_nr = ga.geraet_nr);

-- findet das teuerste Gerät, mit ALL Operator
SELECT * FROM geraet g WHERE preis >= ALL (SELECT preis FROM geraet);