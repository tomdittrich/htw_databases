DROP TABLE bestellt;
DROP TABLE speisekarte;
DROP TABLE bestellungen;
DROP TABLE mitarbeiter;
DROP TABLE kunden;

create table kunden(
kundenid integer primary key,
name VARCHAR(30) not null,
vorname VARCHAR(20),
strasse VARCHAR(50) not null,
PLZ VARCHAR(5) not null,
Stadt VARCHAR(20));

create table mitarbeiter(
mitarbeiterID integer primary key,
Name VARCHAR(30),
Vorname VARCHAR(20));

create table bestellungen(
bestellid INTEGER primary key,
kunde INTEGER references kunden(kundenid) on delete cascade,
bearbeiter INTEGER references mitarbeiter(mitarbeiterid) on delete set null,
tag DATE,
km INTEGER);

create table speisekarte (
gerichtid integer primary key,
gericht VARCHAR(20) unique,
preis float);

create table bestellt(
bestellung INTEGER references bestellungen(bestellid) on delete cascade,
artikel INTEGER references speisekarte(gerichtid) on delete cascade,
anzahl int not null,
primary key (bestellung, artikel));