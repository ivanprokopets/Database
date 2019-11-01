CREATE TABLE zoo ( 
  ID INT IDENTITY(1,1) CONSTRAINT pk_zoo PRIMARY KEY,
  kraj NVARCHAR(20) NOT NULL,
  miasto NVARCHAR(20) NOT NULL,
  ulica NVARCHAR(20) NOT NULL,
  cena NCHAR(6) NOT NULL,
  id_zoo INT  FOREIGN KEY REFERENCES zoo(ID)
);

CREATE TABLE klatka(
  ID INT IDENTITY(1,1) CONSTRAINT pk_klatka PRIMARY KEY,
  dlugosc INT NOT NULL,
  szyrokosc INT NOT NULL,
  wygodnosc NVARCHAR(20) NOT NULL,
  dostepnosc NVARCHAR(20) NOT NULL,
  id_zoo INT FOREIGN KEY REFERENCES zoo(ID)
);

CREATE TABLE ptak(
  ID INT IDENTITY(1,1) CONSTRAINT pk_ptak PRIMARY KEY,
  nazwa NVARCHAR(20) NOT NULL,
  waga INT NOT NULL,
  wiek INT NOT NULL,
  gdzie_mieszka NVARCHAR(20) NOT NULL,
  id_klatka INT  FOREIGN KEY REFERENCES klatka(ID)
  ); 
CREATE TABLE ssak( 
  ID INT IDENTITY(1,1) CONSTRAINT pk_ssak PRIMARY KEY,
  nazwa NVARCHAR(20) NOT NULL,
  waga INT NOT NULL,
  wiek INT NOT NULL,
  gdzie_mieszka NVARCHAR(20) NOT NULL,
  id_klatka INT FOREIGN KEY REFERENCES klatka(ID)
);

INSERT INTO zoo 
VALUES ('Polska','Warszawa','Wejska',400,1);

INSERT INTO zoo 
VALUES ('Polska','Krakow','Narut',60,2);

INSERT INTO zoo 
VALUES ('Polska','Wroclaw','Gumburgowksa',300,3);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',1);

INSERT INTO klatka 
VALUES (600,500,'zla','normal',1);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',1);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',1);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',1);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',1);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',1);


INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',2);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',2);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',2);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',2);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',2);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',2);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',2);


INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',3);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',3);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',3);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',3);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',3);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',3);

INSERT INTO klatka 
VALUES (300,500,'dobra','wysoka',3);


INSERT INTO ptak 
VALUES ('yaskowka',35,2,'Europa',1);

INSERT INTO ptak 
VALUES ('yaskowka',35,2,'Europa',2);

INSERT INTO ptak 
VALUES ('yaskowka',35,2,'Europa',3);

INSERT INTO ptak 
VALUES ('yaskowka',35,2,'Europa',4);

INSERT INTO ptak 
VALUES ('yaskowka',35,2,'Europa',5);

INSERT INTO ssak
VALUES ('malpa', 40, 4, 'Afryka',8);

INSERT INTO ssak
VALUES ('malpa', 40, 4, 'Afryka',9);

INSERT INTO ssak
VALUES ('malpa', 40, 4, 'Afryka',10);

INSERT INTO ssak
VALUES ('malpa', 40, 4, 'Afryka',11);

INSERT INTO ssak
VALUES ('malpa', 40, 4, 'Afryka',12);

INSERT INTO ptak 
VALUES('snegowri',10,5,'Ameryka',15);

INSERT INTO ptak 
VALUES('snegowri',10,5,'Ameryka',16);

INSERT INTO ptak 
VALUES('snegowri',10,5,'Ameryka',17);

INSERT INTO ssak
VALUES ('ez', 40, 4, 'Afryka',18);

INSERT INTO ssak
VALUES ('niedzwiedz', 40, 4, 'Afryka',19);
GO 
select * from klatka k
JOIN ptak p
  on k.id=p.id_klatka
where k.id_zoo=1
GO
update ssak set id_zoo = '1',id_klatka = '11' where id_ssak = 1









