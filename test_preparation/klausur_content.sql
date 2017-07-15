INSERT INTO public.kunden (kundenid, name, vorname, strasse, plz, stadt) VALUES (1, 'Alles', 'Anna', 'Str1', '12345', 'Berlin');
INSERT INTO public.kunden (kundenid, name, vorname, strasse, plz, stadt) VALUES (2, 'Boll', 'Bruno', 'Str2', '12345', 'Berlin');
INSERT INTO public.kunden (kundenid, name, vorname, strasse, plz, stadt) VALUES (3, 'Cell', 'Carlo', 'Weg1', '15236', 'Frankfurt (Oder)');
INSERT INTO public.kunden (kundenid, name, vorname, strasse, plz, stadt) VALUES (4, 'Doll', 'Doro', 'Pfad99', '53489', 'Sinzig');
INSERT INTO public.kunden (kundenid, name, vorname, strasse, plz, stadt) VALUES (5, 'Einfall', 'Erik', 'Baum77', '15232', 'Frankfurt (Oder)');

INSERT INTO public.mitarbeiter (mitarbeiterid, name, vorname) VALUES (1, 'Mueller', 'Markus');
INSERT INTO public.mitarbeiter (mitarbeiterid, name, vorname) VALUES (2, 'Nichts', 'Nico');
INSERT INTO public.mitarbeiter (mitarbeiterid, name, vorname) VALUES (3, 'Oll', 'Olga');
INSERT INTO public.mitarbeiter (mitarbeiterid, name, vorname) VALUES (4, 'Pracht', 'Peter');

INSERT INTO public.speisekarte (gerichtid, gericht, preis) VALUES (1, 'Pizza 4', 4);
INSERT INTO public.speisekarte (gerichtid, gericht, preis) VALUES (2, 'Nudeln', 2);
INSERT INTO public.speisekarte (gerichtid, gericht, preis) VALUES (3, 'Linsen', 4);
INSERT INTO public.speisekarte (gerichtid, gericht, preis) VALUES (4, 'Suppe', 1);
INSERT INTO public.speisekarte (gerichtid, gericht, preis) VALUES (5, 'Pizza Diavolo', 10);

INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (1, 1, 1, '2017-07-01', 10);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (2, 1, 2, '2017-07-01', 10);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (3, 2, 1, '2017-07-01', 300);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (4, 4, 3, '2017-07-01', 20);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (5, 1, 1, '2017-08-01', 11);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (6, 4, 3, '2017-08-01', 15);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (7, 5, 3, '2017-08-02', 10);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (8, 5, 1, '2017-08-02', 10);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (9, 1, 2, '2017-08-02', 10);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (10, 1, 3, '2017-08-02', 10);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (11, 2, 3, '2017-08-02', 250);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (12, 1, 2, '2017-08-03', 10);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (13, 3, 2, '2017-08-03', 300);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (14, 3, 2, '2017-08-03', 15);
INSERT INTO public.bestellungen (bestellid, kunde, bearbeiter, tag, km) VALUES (15, 3, 2, '2017-08-03', 15);

INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (1, 1, 3);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (1, 5, 2);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (2, 1, 3);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (3, 2, 3);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (3, 4, 2);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (4, 3, 4);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (5, 4, 2);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (6, 5, 1);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (7, 3, 2);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (8, 4, 2);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (13, 1, 1);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (14, 2, 1);
INSERT INTO public.bestellt (bestellung, artikel, anzahl) VALUES (15, 3, 1);