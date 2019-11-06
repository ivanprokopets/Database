CREATE PROCEDURE dbo.zadania1
AS
BEGIN
	SELECT o.imię AS imie,
		   o.nazwisko AS nazwisko, o.*,
		   e.pensja, e.id_firmy, m.id_miasta
	FROM osoby o
	JOIN miasta m ON (o.id_osoby = m.id_miasta)
	JOIN etaty e ON o.id_osoby = e.id_osoby
	JOIN
		(SELECT ew.id_firmy, MAX(ew.pensja) AS maksymalnapensja
			FROM etaty ew
			WHERE ew.do is null
		GROUP BY ew.id_firmy
		) 
	p ON (p.maksymalnapensja = e.pensja and p.id_firmy = e.id_firmy)
	WHERE e.do is null
END
CREATE PROCEDURE dbo.zadania2
AS
BEGIN
	SELECT o.id_osoby ,
		   o.imię AS imie,
		   o.nazwisko AS nazwisko 
	FROM osoby o
	WHERE NOT EXISTS 
				(SELECT 1
						FROM etaty ew
					JOIN firmy fw ON fw.nazwa_skr=ew.id_firmy
					JOIN miasta mw ON mw.id_miasta=fw.id_miasta
					WHERE ew.pensja =
							(SELECT AVG(ew.pensja) AS średnia_pensja 
								FROM etaty ew
							WHERE ew.do IS NULL
							)
				AND ew.do IS NULL
				AND o.id_osoby= ew.id_osoby 
				AND ew.do IS NOT NULL
				)
END
CREATE PROCEDURE dbo.zadanie3
AS 
BEGIN 
	SELECT e.stanowisko,
	AVG(e.pensja) AS srednia
	FROM dbo.etaty AS e
		INNER JOIN osoby AS o
		ON e.id_osoby = o.id_osoby
	WHERE e.pensja = 
					( SELECT ew.pensja
						FROM etaty ew 
				      WHERE ew.do IS NULL 
					)
					AND e.do IS NULL
	GROUP BY e.stanowisko

	UPDATE etaty SET pensja = pensja + 1000
	WHERE id_firmy = (SELECT TOP 1 id_firmy FROM etaty
	GROUP BY id_firmy order by COUNT(id_firmy) DESC)
END
