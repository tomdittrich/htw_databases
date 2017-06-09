DROP TABLE kabel_auf;
DROP TABLE geraet_auf;
DROP TABLE kabel;
DROP TABLE geraet;
DROP TABLE eigentuemer;
DROP TABLE regal;
DROP TABLE job;

CREATE TABLE eigentuemer
		(pers_nr		INTEGER PRIMARY KEY,
		name			VARCHAR(30) NOT NULL,
		tel_nr			BIGINT,
		kassen_nr		INTEGER,
		betrag			NUMERIC(19,2)
		);

CREATE TABLE regal
		(regal_nr		INTEGER PRIMARY KEY,
		faecher			INTEGER NOT NULL);

CREATE TABLE geraet
		(geraet_nr		INTEGER PRIMARY KEY,
		typ				VARCHAR(30) NOT NULL,
		bezeichnung		VARCHAR(40) NOT NULL,
		preis			NUMERIC(9,2) NOT NULL,
		pers_nr			INTEGER REFERENCES eigentuemer ON DELETE CASCADE,
		regal_nr		INTEGER REFERENCES regal ON DELETE CASCADE,
		fach_nr			INTEGER
		);

CREATE TABLE kabel
		(kabel_nr		INTEGER PRIMARY KEY,
		typ				VARCHAR(30)	NOT NULL,
		laenge			NUMERIC(5,1) NOT NULL,
		menge			INTEGER NOT NULL,
		regal_nr		INTEGER REFERENCES regal ON DELETE CASCADE,
		fach_nr			INTEGER
		);

CREATE TABLE job
		(job_nr			INTEGER PRIMARY KEY,
		von				DATE NOT NULL,
		bis				DATE NOT NULL,
		kunde			VARCHAR(30) NOT NULL
		);

CREATE TABLE geraet_auf
		(geraet_nr		INTEGER REFERENCES geraet ON DELETE CASCADE,
		job_nr			INTEGER REFERENCES job ON DELETE CASCADE,
		PRIMARY KEY		(geraet_nr, job_nr)
		);

CREATE TABLE kabel_auf
		(kabel_nr		INTEGER REFERENCES kabel ON DELETE CASCADE,
		job_nr			INTEGER REFERENCES job ON DELETE CASCADE,
		menge			INTEGER NOT NULL,
		PRIMARY KEY		(kabel_nr, job_nr)
		);