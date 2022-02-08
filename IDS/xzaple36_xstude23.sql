DROP TABLE Pobocka CASCADE CONSTRAINTS;
DROP TABLE Rezervace CASCADE CONSTRAINTS;
DROP TABLE Lek CASCADE CONSTRAINTS;
DROP TABLE Na_predpis CASCADE CONSTRAINTS;
DROP TABLE Pojistovna CASCADE CONSTRAINTS;
DROP TABLE Dodavatel CASCADE CONSTRAINTS;
DROP TABLE Dodavka CASCADE CONSTRAINTS;
DROP TABLE Prispela CASCADE CONSTRAINTS;
DROP TABLE Ma_v_sortimentu CASCADE CONSTRAINTS;

--
----TVORBA TABULEK--
--
CREATE TABLE Pobocka(
	ID_pobocky 		integer not NULL,
	Mnozstvi_zbozi	integer,
	Prodane_zbozi	integer,
	Adresa			varchar(200) not NULL,

	CONSTRAINT pk_pobocka PRIMARY KEY (ID_pobocky)
);

CREATE TABLE Lek(
	Ciselny_kod		integer not NULL,
	Nazev			varchar(100) not NULL,
	Cena			numeric(10,2) not NULL,

	CONSTRAINT pk_lek PRIMARY KEY (Ciselny_kod)
);

-- specializace lÃ???Ã?â€šÃ‚Â©ku--
CREATE TABLE Na_predpis(
	ID_leku			integer not NULL,
	ID_predpisu		integer not NULL,
	RC_zakaznika	varchar(11) not NULL,
	ID_pojistovny	integer,

	CONSTRAINT pk_lek_predpis PRIMARY KEY (ID_leku),
	CONSTRAINT fk_lek_predpis FOREIGN KEY (ID_leku) REFERENCES Lek(Ciselny_kod),

	CONSTRAINT ck_tvar_rc CHECK (	
									(REGEXP_LIKE(RC_zakaznika, '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
									AND MOD(CAST(RC_zakaznika AS integer), 11) = 0) 

									OR (REGEXP_LIKE(RC_zakaznika,'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
									AND NOT REGEXP_LIKE(RC_zakaznika,'[0-9][0-9][0-9][0-9][0-9][0-9][0][0][0]')
									AND NOT REGEXP_LIKE(RC_zakaznika,'[0-9][0-9][2-9][1-9][4-9][1-9][0-9][0-9][0-9]'))
								)
);

CREATE TABLE Pojistovna(
	ICO_pojistovny	varchar(9) not NULL,
	Nazev			varchar(100) not NULL,

	CONSTRAINT pk_pojistovna PRIMARY KEY (ICO_pojistovny),
	CONSTRAINT ck_tvar_ico_pojistovna CHECK(	REGEXP_LIKE(ICO_pojistovny, '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
                    AND (
                      MOD(11-MOD(
                      (
                      CAST(SUBSTR(ICO_pojistovny, 1, 1) AS integer)*8 + 
                      CAST(SUBSTR(ICO_pojistovny, 2, 1) AS integer)*7 + 
                      CAST(SUBSTR(ICO_pojistovny, 3, 1) AS integer)*6 + 
                      CAST(SUBSTR(ICO_pojistovny, 4, 1) AS integer)*5 + 
                      CAST(SUBSTR(ICO_pojistovny, 5, 1) AS integer)*4 + 
                      CAST(SUBSTR(ICO_pojistovny, 6, 1) AS integer)*3 + 
                      CAST(SUBSTR(ICO_pojistovny, 7, 1) AS integer)*2
                      ), 11), 10) =  CAST(SUBSTR(ICO_pojistovny, 8, 1) AS integer)
                    )
								)
);

CREATE TABLE Dodavatel(
	ICO_dodavatele	varchar(9) not NULL,
	Nazev			varchar(100) not NULL,
	Dodavany_lek	integer not NULL,

	CONSTRAINT pk_dodavatel PRIMARY KEY (ICO_dodavatele),
	CONSTRAINT fk_dodavany_lek FOREIGN KEY (Dodavany_lek) REFERENCES Lek(Ciselny_kod),
	CONSTRAINT ck_tvar_ico_dodavatel CHECK(	REGEXP_LIKE(ICO_dodavatele, '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
                    AND (
                      MOD(11-MOD(
                      (
                      CAST(SUBSTR(ICO_dodavatele, 1, 1) AS integer)*8 + 
                      CAST(SUBSTR(ICO_dodavatele, 2, 1) AS integer)*7 + 
                      CAST(SUBSTR(ICO_dodavatele, 3, 1) AS integer)*6 + 
                      CAST(SUBSTR(ICO_dodavatele, 4, 1) AS integer)*5 + 
                      CAST(SUBSTR(ICO_dodavatele, 5, 1) AS integer)*4 + 
                      CAST(SUBSTR(ICO_dodavatele, 6, 1) AS integer)*3 + 
                      CAST(SUBSTR(ICO_dodavatele, 7, 1) AS integer)*2
                      ), 11), 10) =  CAST(SUBSTR(ICO_dodavatele, 8, 1) AS integer)
                    )
								)
);

CREATE TABLE Dodavka(
	ID_dodavky		integer not NULL,
	ID_leku 		integer not NULL,
	ID_pobocky		integer not NULL,
	ICO_dodavatele	varchar(9) not NULL,

	--CONSTRAINT pk_dodavka PRIMARY KEY (ID_leku, ID_pobocky, ICO_dodavatele),
	CONSTRAINT pk_dodavka PRIMARY KEY (ID_dodavky),
	CONSTRAINT fk_dodavka_lek FOREIGN KEY (ID_leku) REFERENCES Lek(Ciselny_kod), 
	CONSTRAINT fk_dodavka_pobocka FOREIGN KEY (ID_pobocky) REFERENCES Pobocka(ID_pobocky),
	CONSTRAINT fk_dodavka_dodavatel FOREIGN KEY (ICO_dodavatele) REFERENCES Dodavatel(ICO_dodavatele)
);

CREATE TABLE Prispela(
	Prispevek		numeric(10,2) not NULL,
	id_lek			integer not NULL,
	id_pojistovna	varchar(9) not NULL,

	CONSTRAINT pk_prispevek_pojistovna_lek PRIMARY KEY (Prispevek, id_lek, id_pojistovna),
	CONSTRAINT fk_prispevek_pojistovna FOREIGN KEY (id_pojistovna) REFERENCES Pojistovna(ICO_pojistovny), 
	CONSTRAINT fk_prispevek_lek FOREIGN KEY (id_lek) REFERENCES Lek(Ciselny_kod)
);

--odstraneni m:m vztahu
CREATE TABLE Ma_v_sortimentu(
	ID_leku			  integer not NULL,
	ID_pobocky		integer not NULL,

	CONSTRAINT pk_pobocka_lek_sortiment PRIMARY KEY (ID_leku, ID_pobocky),
	CONSTRAINT fk_sortiment_pobocka FOREIGN KEY (ID_pobocky) REFERENCES Pobocka(ID_pobocky), 
	CONSTRAINT fk_sortiment_lek FOREIGN KEY (ID_leku) REFERENCES Lek(Ciselny_kod)
);

CREATE TABLE Rezervace(
	ID_rezervace	integer,
	Jmeno_zakaznika	varchar(100) not NULL,
	Datum			DATE,
	ID_pobocky		integer not NULL,
	ID_leku			integer not NULL,

	CONSTRAINT pk_rezervace PRIMARY KEY (ID_rezervace),
	CONSTRAINT fk_rezervace_pobocka FOREIGN KEY (ID_pobocky) REFERENCES Pobocka(ID_pobocky),
	CONSTRAINT fk_rezervace_lek FOREIGN KEY (ID_leku) REFERENCES Lek(Ciselny_kod)		
);

--
----TRIGGERY
--
CREATE OR REPLACE TRIGGER dodat_zbozi
AFTER INSERT
   ON Dodavka
   FOR EACH ROW        
BEGIN 
    UPDATE Pobocka SET Mnozstvi_zbozi = Mnozstvi_zbozi + 1 
    WHERE Pobocka.ID_pobocky = :new.ID_pobocky;
END;

--Test triggeru
SELECT * FROM Pobocka;
INSERT INTO Dodavka VALUES(
NULL,0003,0001,'25201859');
SELECT * FROM Pobocka;s

--
----Procedura pro generovani unikatniho celociselneho identifikatoru tabulky rezervace pouzita triggerem
--
CREATE OR REPLACE PROCEDURE id_generator
(
  Identifikator IN OUT NUMBER
) AS 
BEGIN
    SELECT MAX(ID_rezervace) INTO Identifikator FROM Rezervace;
    IF Identifikator is NULL THEN Identifikator := 0;
    END IF;
    Identifikator := Identifikator +1;
END id_generator;
           
CREATE OR REPLACE TRIGGER auto_id_rezervace
BEFORE INSERT
   ON Rezervace
   FOR EACH ROW      
BEGIN 
    IF (:new.ID_rezervace IS NULL) THEN id_generator(:new.ID_rezervace);
    END IF;
END;

--Test triggeru
SELECT * FROM Rezervace;
INSERT INTO Rezervace VALUES(
NULL, 'testovaci osoba', DATE '2017-03-02', 0001, 001);
SELECT * FROM Rezervace;


--Testovaci tabulka pro proceduru
DROP TABLE Dodavka_zaloha;
CREATE TABLE Dodavka_zaloha(
	ID_dodavky		integer not NULL,
	ID_leku 		integer not NULL,
	ID_pobocky		integer not NULL,
	ICO_dodavatele	varchar(9) not NULL
  );
--
----ULOZENE PROCEDURY
--
--Procedura zalohuje vsechny zaznamy o dodavkach krome tech s ibalginem
CREATE OR REPLACE PROCEDURE zaloha_dodavek_bez_ibalginu AS 
ibalgin_ex EXCEPTION;
c_idlek Dodavka.ID_leku%type;
c_idpobocka Dodavka.ID_pobocky%type;
c_icododavatele Dodavka.ICO_dodavatele%type;
c_iddodavky Dodavka.ID_dodavky%type;
CURSOR c_dodavky is
  SELECT ID_leku, ID_pobocky, ICO_dodavatele, ID_dodavky FROM Dodavka;
  
BEGIN
  OPEN c_dodavky;
  LOOP
    BEGIN
      FETCH c_dodavky into c_idlek, c_idpobocka, c_icododavatele, c_iddodavky;
      EXIT WHEN c_dodavky%NOTFOUND;
      IF c_idlek = 0003 THEN 
        RAISE ibalgin_ex; 
      END IF;
      INSERT INTO Dodavka_zaloha VALUES (c_iddodavky, c_idlek, c_idpobocka, c_icododavatele);
    EXCEPTION
      WHEN ibalgin_ex THEN
        dbms_output.put_line('IBALGIN');
        CONTINUE;
    END;
  END LOOP;
  CLOSE c_dodavky;
END zaloha_dodavek_bez_ibalginu;

--Test procedury
EXECUTE zaloha_dodavek_bez_ibalginu;

--Globalni zmena ceny leku (cena vsech leku se zmeni dle vzorce cena = (cena/modifikator)*10
CREATE OR REPLACE PROCEDURE glob_zmena_cen 
(
  modifikator IN NUMBER
)AS 
c_idlek Lek.Ciselny_kod%type;
c_nazev Lek.Nazev%type;
c_cena Lek.Cena%type;
CURSOR c_leky is
  SELECT Ciselny_kod, Nazev, Cena FROM Lek;
  
BEGIN
  OPEN c_leky;
  LOOP
    BEGIN
      FETCH c_leky into c_idlek, c_nazev, c_cena;
      EXIT WHEN c_leky%NOTFOUND;
      c_cena := (c_cena/modifikator)*10;
      UPDATE Lek SET Lek.Cena = c_cena WHERE Lek.Ciselny_kod = c_idlek;
      EXCEPTION
        WHEN ZERO_DIVIDE THEN
          dbms_output.put_line('DIV_BY_ZERO');
          EXIT;
    END;
  END LOOP;
  CLOSE c_leky;
END glob_zmena_cen;

--Test procedury
EXECUTE glob_zmena_cen(10);
EXECUTE glob_zmena_cen(100);
EXECUTE glob_zmena_cen(0);

--
----INSERTY--
--
INSERT INTO Pobocka VALUES(
0001,1,3,'Brno');
INSERT INTO Pobocka VALUES(
0002,2,2,'Praha');
INSERT INTO Pobocka VALUES(
0003,3,1,'Ostrava');

INSERT INTO Lek VALUES(
0001,'varfarin',5.25);
INSERT INTO Lek VALUES(
0002,'paralen',6.25);
INSERT INTO Lek VALUES(
0003,'ibalgin',7.25);

INSERT INTO Na_predpis VALUES(
0001, 0001, '9604296064', 0001);
INSERT INTO Na_predpis VALUES(
0002, 0002, '9511164850', 0001);

INSERT INTO Pojistovna VALUES(
'26443341','VZP');
INSERT INTO Pojistovna VALUES(
'41197518','Vojenska');
INSERT INTO Pojistovna VALUES(
'00216305','pojistovnacislotri');

INSERT INTO Dodavatel VALUES(
'00216224','varfarindod',0001);
INSERT INTO Dodavatel VALUES(
'28822668','paralendod',0002);
INSERT INTO Dodavatel VALUES(
'25201859','ibalgindod',0003);

INSERT INTO Dodavka VALUES(
0001,0001,0002,'00216224');
INSERT INTO Dodavka VALUES(
0002,0003,0001,'25201859');
INSERT INTO Dodavka VALUES(
0003,0002,0003,'28822668');
INSERT INTO Dodavka VALUES(
0004,0002,0003,'28822668');

INSERT INTO Prispela VALUES(
1.05,0002,'26443341');
INSERT INTO Prispela VALUES(
0.05,0001,'26443341');
INSERT INTO Prispela VALUES(
2.01,0001,'41197518');
INSERT INTO Prispela VALUES(
0.01,0003,'00216305');

INSERT INTO Ma_v_sortimentu VALUES(
0001,0002);
INSERT INTO Ma_v_sortimentu VALUES(
0003,0001);
INSERT INTO Ma_v_sortimentu VALUES(
0002,0003);

INSERT INTO Rezervace VALUES(
0001, 'Jan Studeny', DATE '2017-01-02', 0001, 001);
INSERT INTO Rezervace VALUES(
0002, 'Jakub Zapletal', DATE '2017-03-02', 0003, 003);
INSERT INTO Rezervace VALUES(
0003, 'Martin MokrÃ?Â½', DATE '2017-01-11', 0001, 001);
INSERT INTO Rezervace VALUES(
0004, 'Radek Wildmann', DATE '2017-03-02', 0003, 003);
INSERT INTO Rezervace VALUES(
0005, 'Jan Ã…?Ã?Â­zek', DATE '2017-01-05', 0002, 002);
INSERT INTO Rezervace VALUES(
0006, 'Lucie ZÃ?Â¡drapovÃ?Â¡', DATE '2017-03-02', 0003, 002);
INSERT INTO Rezervace VALUES(
0007, 'Rick Sanchez', DATE '2017-03-02', 0001, 001);
INSERT INTO Rezervace VALUES(
0008, 'Morty Smiths', DATE '2017-06-12', 0003, 003);
INSERT INTO Rezervace VALUES(
0009, 'Beth Smiths', DATE '2017-01-02', 0002, 001);
INSERT INTO Rezervace VALUES(
0010, 'Snowball', DATE '2017-03-02', 0003, 003);
INSERT INTO Rezervace VALUES(
0011, 'Paul Newman', DATE '2017-03-02', 0001, 001);
INSERT INTO Rezervace VALUES(
0012, 'Neil Gaiman', DATE '2017-03-02', 0003, 002);



--
----  EXPLAIN PLAN BEZ INDEXU
--
DROP INDEX pobocka_adresa;
DROP INDEX lek_nazev;
-- Kolik rezervaci jakych leku je na pobocce s adresou Ostrava
EXPLAIN PLAN FOR 
  SELECT L.Nazev, Count(*) as "Pocet"
  FROM Pobocka P JOIN Rezervace R ON P.ID_pobocky = R.ID_pobocky JOIN Lek L on R.ID_leku = L.CISELNY_KOD
  --FROM Rezervace NATURAL JOIN Lek
  WHERE(P.Adresa = 'Ostrava')
  GROUP BY L.Nazev
  ORDER BY L.Nazev;
SELECT plan_table_output FROM TABLE(dbms_xplan.display());

--
----  EXPLAIN PLAN PO UPRAVE
--
-- Kolik rezervaci jakych leku je na pobocce s adresou Ostrava
EXPLAIN PLAN FOR 
  SELECT L.Nazev, Count(*) as "Pocet"
  FROM (Pobocka P WHERE(P.Adresa = 'Ostrava'))INNER JOIN Rezervace R ON P.ID_pobocky = R.ID_pobocky RIGHT JOIN Lek L on R.ID_leku = L.CISELNY_KOD
  --FROM Rezervace NATURAL JOIN Lek
  GROUP BY L.Nazev
  ORDER BY L.Nazev;
SELECT plan_table_output FROM TABLE(dbms_xplan.display());

--
----  EXPLAIN PLAN S INDEXY
--
CREATE INDEX lek_nazev ON Lek(Nazev);
CREATE INDEX pobocka_adresa ON Pobocka(Adresa);
-- Kolik rezervaci jakych leku je na pobocce s adresou Ostrava
EXPLAIN PLAN FOR 
  SELECT L.Nazev, Count(*) as "Pocet"
  FROM Pobocka P INNER JOIN Rezervace R ON P.ID_pobocky = R.ID_pobocky INNER JOIN Lek L on R.ID_leku = L.CISELNY_KOD
  --FROM Rezervace NATURAL JOIN Lek
  WHERE(P.Adresa = 'Ostrava')
  GROUP BY L.Nazev
  ORDER BY L.Nazev;
SELECT plan_table_output FROM TABLE(dbms_xplan.display());

  
--
----MATERIALIZOVANY POHLED
--
DROP MATERIALIZED VIEW rezervace_na_pobockach;

CREATE MATERIALIZED VIEW rezervace_na_pobockach
  NOLOGGING
  CACHE
  BUILD IMMEDIATE
  AS
    SELECT P.ID_pobocky, P.Adresa, R.ID_rezervace, R.Jmeno_zakaznika, R.Datum, R.ID_leku
    FROM Pobocka P JOIN Rezervace R ON P.ID_pobocky = R.ID_pobocky;
    
--
----UKAZKA EFEKTU POHLEDU
--
EXPLAIN PLAN FOR 
SELECT *
    FROM Pobocka P JOIN Rezervace R ON P.ID_pobocky = R.ID_pobocky;
SELECT plan_table_output FROM TABLE(dbms_xplan.display());
    
ALTER SESSION SET query_rewrite_enabled = true;
EXPLAIN PLAN FOR 
SELECT P.ID_pobocky, P.Adresa, R.ID_rezervace, R.Jmeno_zakaznika, R.Datum, R.ID_leku
    FROM Pobocka P JOIN Rezervace R ON P.ID_pobocky = R.ID_pobocky;
select plan_table_output from table(dbms_xplan.display());
  
--
----NASTAVENI PRAV
--
GRANT SELECT ON Dodavka TO
 xstude23 ;
GRANT SELECT ON Pobocka TO
 xstude23;
 GRANT SELECT ON Rezervace TO
 xstude23;
GRANT SELECT ON Ma_v_sortimentu TO
 xstude23;
GRANT SELECT ON Prispela TO
 xstude23;
GRANT SELECT ON Na_predpis TO
 xstude23;
 GRANT SELECT ON Pojistovna TO
 xstude23;
GRANT SELECT ON Lek TO
 xstude23;
--REVOKE SELECT ON Dodavatel FROM
-- xstude23;

--
----SELECTY--
--
-- 1. Kteri zakaznici maji na pobocce na adrese Ostrava rezervovany lek Ibalgin
-- SELECT R.Jmeno_zakaznika
-- FROM Pobocka P INNER JOIN Rezervace R ON P.ID_pobocky = R.ID_pobocky 
-- 	INNER JOIN Lek L ON R.ID_leku = L.Ciselny_kod
-- WHERE(P.Adresa = 'Ostrava' AND L.Nazev = 'ibalgin')
-- ORDER BY R.Jmeno_zakaznika;

-- -- 2. Kteri dodavatele dodavaji ibalgin
-- SELECT D.Nazev
-- FROM Dodavatel D INNER JOIN Lek L ON D.Dodavany_lek = L.Ciselny_kod
-- WHERE(L.Nazev = 'ibalgin')
-- ORDER BY D.Nazev;

-- -- 3. Mnozstvi zbozi na pobockach, ktere maji v sortimentu lek varfarin
-- SELECT P.Mnozstvi_zbozi
-- FROM Pobocka P INNER JOIN Ma_v_sortimentu MVS ON P.ID_pobocky = MVS.ID_pobocky 
-- 	INNER JOIN Lek L ON MVS.ID_leku = L.Ciselny_kod
-- WHERE(L.Nazev = 'varfarin');

-- --4. Kteri dodavatele dodali leky vice nez jednou a kolik tech dodavek provedli?
-- SELECT DO.Nazev, Count (*) AS "Pocet dodavek"
-- FROM Dodavka D INNER JOIN Dodavatel DO ON 
--   (D.ICO_dodavatele = DO.ICO_dodavatele AND D.ID_LEKU = DO.Dodavany_lek)
-- GROUP BY DO.Nazev
-- HAVING COUNT(DO.Nazev) > 1
-- ORDER BY DO.Nazev;

-- -- 5. Na kolik leku prispiva pojistovna VZP
-- SELECT P.Nazev, Count (*) AS "Pocet"
-- FROM Pojistovna P INNER JOIN Prispela PR ON P.ICO_pojistovny = PR.ID_POJISTOVNA
-- WHERE(P.Nazev = 'VZP')
-- GROUP BY P.Nazev
-- ORDER BY P.Nazev;


-- -- 6. ktery dodavatel dodava lek, na ktery prispiva VZP
-- SELECT D.Nazev
-- FROM Dodavatel D
-- WHERE EXISTS(SELECT L.Ciselny_kod FROM Lek L INNER JOIN Prispela P ON L.Ciselny_kod = P.id_lek 
-- 	INNER JOIN Pojistovna POJ ON P.id_pojistovna = POJ.ICO_pojistovny
--   WHERE POJ.Nazev = 'VZP');

-- -- 7. kteri dodavatele dodavaji leky na ktere prispiva pojistovna VZP
-- SELECT D.Nazev
-- FROM Dodavatel D
-- WHERE D.Dodavany_lek IN (SELECT LE.Ciselny_kod FROM Lek LE INNER JOIN Prispela PR 
-- 	ON LE.Ciselny_kod = PR.id_lek INNER JOIN Pojistovna P ON PR.id_pojistovna = P.ICO_pojistovny
-- 	WHERE(P.Nazev = 'VZP'));