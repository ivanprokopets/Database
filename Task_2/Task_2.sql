SELECT imię_i_nazwisko FROM osoby as o
JOIN etaty as e ON o.id_osoby = e.id_osoby;

SELECT * FROM dbo.osoby 
WHERE imię LIKE 'M%';

SELECT * FROM osoby as o WHERE o.nazwisko LIKE '%s_i';

INSERT INTO osoby (id_miasta, imię, nazwisko) VALUES ('1','Ivanek', 'Prokop');

SELECT imię_i_nazwisko FROM osoby as o
LEFT JOIN etaty as e ON e.id_osoby not in (select id_osoby from etaty);

SELECT * FROM firmy;

SELECT imię_i_nazwisko, nazwa FROM osoby as o
JOIN woj as w on w.kod_woj = 'MAZ';

SELECT * FROM osoby 
UNION 
SELECT * FROM osoby

SELECT * FROM osoby 
UNION ALL 
SELECT * FROM osoby

SELECT imię_i_nazwisko FROM osoby as o
JOIN etaty as e ON o.id_osoby = e.id_osoby
WHERE e.od > '1994.01.01' AND e.do IS NULL
ORDER BY e.pensja;


SELECT imię_i_nazwisko FROM osoby AS o
INNER JOIN etaty AS e ON o.id_osoby = e.id_osoby 
WHERE e.pensja > (SELECT AVG(pensja) FROM etaty);
