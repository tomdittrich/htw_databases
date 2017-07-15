-- c) Tom
select mitarbeiterid, name, vorname from mitarbeiter m 
	JOIN bestellungen b ON m.mitarbeiterid = b.bearbeiter
	JOIN bestellt be ON b.bestellid = be.bestellung
	JOIN speisekarte s ON s.gerichtid=be.artikel
WHERE gericht='Pizza Diavolo';

-- c) Muster
select mitarbeiterid, name, vorname from mitarbeiter, bestellungen, bestellt, speisekarte
where mitarbeiterid=bearbeiter AND bestellid=bestellung AND artikel=gerichtid and
gericht='Pizza Diavolo';

-- d) Tom
SELECT * FROM mitarbeiter NATURAL JOIN (SELECT bearbeiter as mitarbeiterid, count(*) FROM bestellungen GROUP BY bearbeiter) t1

-- d) Muster
select mitarbeiterid, name, vorname, count(*) as Anzahl from mitarbeiter, bestellungen where
mitarbeiterid=bearbeiter group by mitarbeiterid, name, vorname;

-- e) Tom
SELECT * FROM mitarbeiter NATURAL JOIN (
	(SELECT bearbeiter as mitarbeiterid FROM bestellungen WHERE tag='2017-07-01')
	EXCEPT
	(SELECT bearbeiter as mitarbeiterid FROM bestellungen WHERE tag='2017-08-01')
	) t1
	
-- e) Muster
select * from Mitarbeiter where not exists 
	(select * from bestellungen where mitarbeiterid=bearbeiter and tag='2017-08-01') 
	and exists
	(select * from bestellungen where mitarbeiterid=bearbeiter and tag='2017-07-01');

-- f) Tom
SELECT max(anzahl) FROM
  (SELECT bearbeiter, tag, count(*) AS anzahl FROM bestellungen GROUP BY bearbeiter, tag) t1;

-- f) Muster
select max(tmp.anz) from 
 (select count(*) as anz from mitarbeiter m, Bestellungen b where b.bearbeiter=m.mitarbeiterid group by b.tag, m.Name) tmp

 -- zu e) ICH habe die Frage so verstanden, dass nicht die Gesamtsumme der Bestellungen betrachtet wird
 -- sondern die enthaltenen Gerichte und deren Einzelpreis
 -- also alle Bestellungen, in denen teure (bei mir über 2€) Gerichte vorkommen
 --
 -- DAS WAR LAUT MUSTERLÖSUNG FALSCH
 --
 -- Es sollten tatsächlich die Bestellungen angezeigt werden, deren Gesamtbestellpreis über 20 Ocken liegt
 -- trotzdem hier die Anfrage für meine erste Vermutung
SELECT * FROM bestellungen b NATURAL JOIN 
  (SELECT bestellung as bestellid FROM bestellt JOIN speisekarte ON bestellt.artikel = speisekarte.gerichtid
  GROUP BY bestellung HAVING max(preis)>2) t1;

-- e) Tom (jetzt die richtige Aufgabe)
SELECT bestellung, sum(preis*anzahl) as Gesamtpreis FROM bestellt b JOIN speisekarte s ON b.artikel = s.gerichtid 
  GROUP BY bestellung HAVING sum(preis*anzahl) > 20;

-- e) Muster
select bestellung, count(*) as artikel, sum(anzahl*preis) as summe from bestellt b,
speisekarte s where gerichtid=artikel group by bestellung having sum(anzahl*preis)>20

-- f) Tom
SELECT count(*) Anzahl FROM
  (SELECT kunde FROM bestellungen b1 JOIN bestellt b2 ON b1.bestellid = b2.bestellung GROUP BY kunde HAVING max(anzahl)>2) t1;

-- f) Muster
-- wahrscheinlich falsch! sieht auch etwas creepy aus
-- spuck bei mit 0 aus, kann nicht sein, habe es händisch in den Tabellen nachgeprüft
select count(distinct kunde) from bestellungen, (select bestellung from bestellt, speisekarte
where artikel=gerichtID group by bestellung having count(*)>2) tmp where
bestellung=bestellid