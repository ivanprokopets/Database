SELECT TOP 1 id_firmy 
	FROM osoby AS o
JOIN etaty AS e 
	ON o.id_osoby = e.id_osoby
JOIN firmy AS f 
	ON f.nazwa_skr = e.id_firmy
GROUP BY e.id_firmy ORDER BY COUNT(e.id_firmy) DESC
UPDATE firmy SET id_miasta = 2 
WHERE nazwa_skr = (SELECT TOP 1 id_firmy FROM etaty 
GROUP BY id_firmy ORDER BY COUNT(id_firmy) DESC)

UPDATE etaty SET pensja = pensja + 1000 
WHERE id_firmy = (SELECT TOP 1 id_firmy FROM etaty 
GROUP BY id_firmy order by COUNT(id_firmy) DESC)

DELETE FROM etaty WHERE pensja > (SELECT AVG(pensja) FROM etaty)*1.1;

SELECT count(*) FROM osoby AS o
WHERE o.imię LIKE '%a' AND o.imię LIKE '%a'; 

SELECT count(*) FROM osoby AS o
WHERE o.nazwisko LIKE '%i' 
	OR o.nazwisko LIKE '%y' 
	OR o.nazwisko LIKE '%n'
	OR o.nazwisko LIKE '%p';

INSERT INTO osoby 
VALUES (1,'Tania','Stowoska');
INSERT INTO osoby 
VALUES (2,'Vsnia','Krowoska');
INSERT INTO osoby 
VALUES (1,'Annia','Worowoska');
INSERT INTO osoby 
VALUES (3,'Karinaa','Gotwoska');
INSERT INTO osoby 
VALUES (1,'Zuzia','Kujtawoska');
INSERT INTO osoby 
VALUES (2,'Inna','Bioesska');
INSERT INTO osoby 
VALUES (1,'Zina','Jowskska');

SELECT m.nazwa

SELECT m.nazwa, e.stanowisko, 
AVG(e.pensja) AS srednia, 
MIN(e.pensja) AS minimum, 
MAX(e.pensja) AS maksymum
FROM dbo.miasta AS m 
	INNER JOIN etaty AS e
		INNER JOIN osoby AS o 
		ON e.id_osoby = o.id_osoby
	ON m.id_miasta = o.id_miasta
GROUP BY m.nazwa, e.stanowisko;
