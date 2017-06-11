-- Eigentuemer
INSERT INTO eigentuemer(pers_nr, name, tel_nr, kassen_nr, betrag) 
VALUES (1001, 'Atlan', 004930123456, 2001, 1161);

INSERT INTO eigentuemer(pers_nr, name, tel_nr, kassen_nr, betrag) 
VALUES (1002, 'Icho', 0049170987654, 2002, 1805);

INSERT INTO eigentuemer(pers_nr, name, tel_nr, kassen_nr, betrag) 
VALUES (1003, 'Gucky', 00493350000, 2003, 386);

INSERT INTO eigentuemer(pers_nr, name, tel_nr, kassen_nr, betrag) 
VALUES (1004, 'Tom', 004930666, 2004, 556);

-- Regale
INSERT INTO regal(regal_nr, faecher) 
VALUES (001, 2);
 
INSERT INTO regal(regal_nr, faecher) 
VALUES (002, 3);

INSERT INTO regal(regal_nr, faecher) 
VALUES (003, 5);

INSERT INTO regal(regal_nr, faecher) 
VALUES (004, 5);

INSERT INTO regal(regal_nr, faecher) 
VALUES (005, 8);

INSERT INTO regal(regal_nr, faecher) 
VALUES (006, 8);
 
-- Because of naming rights, there are only placeholders here
-- Geraete
-- Mixers
INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (5001, 'Mixer', 'a', 50, 1004, 001, 2);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (5002, 'Mixer', 'b', 50, 1003, 001, 2);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (5003, 'Mixer', 'c', 80, 1001, 001, 2);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (5004, 'Mixer', 'd', 250, 1002, 001, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (5005, 'Mixer', 'e', 450, 1001, 001, 1);

-- AMPs
INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (6001, 'Amp', 'f', 62, 1004, 002, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (6002, 'Amp', 'g', 62, 1003, 002, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (6003, 'Amp', 'h', 30, 1002, 002, 2);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (6004, 'Amp', 'i', 30, 1002, 002, 2);

-- PA
INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (7001, 'PA', 'j', 200, 1002, 002, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (7002, 'PA', 'k', 200, 1002, 002, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (7003, 'PA', 'l', 40, 1003, 002, 2);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (7004, 'PA', 'm', 30, 1003, 002, 2);

-- BASS
INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (8001, 'Bass', 'm', 30, 1001, 003, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (8002, 'Bass', 'o', 25, 1004, 003, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (8003, 'Bass', 'p', 80, 1003, 003, 1);

-- 19"
INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (9001, '19"', 'q', 20, 1003, 004, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (9002, '19"', 'r', 15, 1003, 004, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (9003, '19"', 's', 80, 1001, 004, 1);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (9004, '19"', 't', 30, 1004, 004, 2);

-- Microphones
INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (11001, 'Mic', 'u', 11, 1001, 004, 4);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (11002, 'Mic', 'v', 15, 1002, 004, 4);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (11003, 'Mic', 'w', 20, 1004, 004, 4);

INSERT INTO geraet(geraet_nr, typ, bezeichnung, preis, pers_nr, regal_nr, fach_nr) 
VALUES (11004, 'Mic', 'x', 20, 1004, 004, 4);

-- Kabelse
-- XLR 3pin
INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50001, 'XLR', 0.5, 30, 005, 1);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50002, 'XLR', 1, 20, 005, 1);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50003, 'XLR', 3, 30, 005, 1);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50004, 'XLR', 5, 30, 005, 1);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50005, 'XLR', 10, 20, 005, 2);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50006, 'XLR', 20, 20, 005, 2);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50051, 'XLR Trommel', 100, 2, 005, 3);

-- Schuko
INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50101, 'Schuko', 5, 30, 005, 7);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50102, 'Schuko', 10, 20, 005, 7);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50103, 'Schuko', 20, 20, 005, 7);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50104, 'Schuko', 30, 10, 005, 8);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50151, 'Schuko 3er', 0.2, 30, 006, 1);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50152, 'Schuko 6er', 0.3, 20, 006, 1);

-- NL4
INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50201, 'NL4', 3, 30, 005, 5);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50202, 'NL4', 5, 30, 005, 5);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50203, 'NL4', 10, 20, 005, 6);

INSERT INTO kabel(kabel_nr, typ, laenge, menge, regal_nr, fach_nr) 
VALUES (50204, 'NL4', 20, 20, 005, 6);

-- Job
INSERT INTO job(job_nr, von, bis, kunde)
VALUES (160001, '2016-02-15', '2016-02-18', 'Plophos');

INSERT INTO job(job_nr, von, bis, kunde)
VALUES (160002, '2016-09-21', '2016-09-25', 'Andromeda');

INSERT INTO job(job_nr, von, bis, kunde)
VALUES (160003, '2016-12-21', '2016-12-22', 'Andromeda');

INSERT INTO job(job_nr, von, bis, kunde)
VALUES (160004, '2016-12-30', '2017-01-02', 'Europa');

INSERT INTO job(job_nr, von, bis, kunde)
VALUES (170001, '2017-03-13', '2017-03-13', 'Plophos');

INSERT INTO job(job_nr, von, bis, kunde)
VALUES (170002, '2017-05-23', '2017-05-25', 'Ganymed');

INSERT INTO job(job_nr, von, bis, kunde)
VALUES (170003, '2017-06-09', '2017-06-15', 'Hyperion');

INSERT INTO job(job_nr, von, bis, kunde)
VALUES (170004, '2017-12-30', '2018-01-01', 'Andromeda');

-- Geräte auf Job
-- 160001
INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (5002,160001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6001,160001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7001,160001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8002,160001);

-- 160002
INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (5005,160002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6002,160002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7001,160002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8001,160002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11003,160002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11004,160002);

-- 160003
INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (5001,160003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6003,160003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7004,160003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8002,160003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (9004,160003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11002,160003);

-- 160004
INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (5004,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6001,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6002,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7001,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7002,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8003,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8001,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (9003,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11001,160004);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11002,160004);

-- 170001
INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (5001,170001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6004,170001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7003,170001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8002,170001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (9004,170001);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11003,170001);

-- 170002
INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (5004,170002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6002,170002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7001,170002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8001,170002);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (9003,170002);

-- 170003
INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (5005,170003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (6001,170003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (7001,170003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (8002,170003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (9004,170003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11002,170003);

INSERT INTO geraet_auf(geraet_nr, job_nr)
VALUES (11004,170003);

-- Kabel auf Job
-- 160001
INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50003, 160001, 10);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50102, 160001, 5);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50151, 160001, 5);

-- 160002
INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50003, 160002, 10);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50051, 160002, 1);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50102, 160002, 5);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50151, 160002, 5);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50104, 160002, 1);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50204, 160002, 3);

-- 160003
INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50006, 160003, 2);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50001, 160003, 2);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50003, 160003, 10);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50102, 160003, 10);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50152, 160003, 3);

-- 160004
INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50002, 160004, 10);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50004, 160004, 20);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50051, 160004, 2);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50102, 160004, 11);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50103, 160004, 7);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50151, 160004, 15);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50201, 160004, 20);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50204, 160004, 16);

-- 170001
INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50003, 170001, 4);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50005, 170001, 10);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50152, 170001, 2);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50202, 170001, 8);

-- 170002
INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50004, 170002, 8);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50102, 170002, 4);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50151, 170002, 3);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50204, 170002, 4);

-- 170003
INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50002, 170003, 4);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50005, 170003, 5);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50102, 170003, 1);

INSERT INTO kabel_auf(kabel_nr, job_nr, anzahl)
VALUES (50104, 170003, 1);