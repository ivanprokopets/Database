CREATE PROCEDURE dbo.zadania1
AS
BEGIN
SELECT imie AS imię,
nazwisko AS nazwisko,
u.nazwa AS nazwa_uczelni,
przedmiot.nazwa AS nazwa_przedmiotu
FROM student AS s INNER JOIN uczelnia AS u
ON s.uczelnia_id = u.ID INNER JOIN student_przedmiot AS sp
ON s.nr_albumu = sp.student_id INNER JOIN przedmiot
ON sp.przedmiot_id = przedmiot.ID
WHERE u.ID = sp.przedmiot_id
END
CREATE TRIGGER losowy_przedmiot_triiger ON student
AFTER INSERT AS
BEGIN
INSERT INTO student_przedmiot ( student_id, przedmiot_id )
VALUES ( (SELECT nr_albumu FROM INSERTED) ,
(SELECT 1 + CONVERT(INT,((select count(*) FROM przedmiot)) * RAND()))
)
END
CREATE TRIGGER uczelnia_trigger ON uczelnia
AFTER UPDATE AS
BEGIN
print 'Uwaga, nazwa uczelni została zaktualizowana';
END