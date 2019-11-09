CREATE PROCEDURE zadaine1 @imie nvarchar(20), @nazwisko nvarchar(20), @nazwa_uczelni nvarchar(20), @przedmiot nvarchar(40)
AS
BEGIN
	BEGIN TRY 
		INSERT INTO student_przedmiot ( student_id, przedmiot_id )
		VALUES ( (SELECT nr_albumu,imie,nazwisko FROM INSERTED) ,
		(SELECT 1 + CONVERT(INT,((SELECT COUNT(*) FROM przedmiot)) * (3 + przedmiot.ID))), 
		(SELECT 1 + CONVERT(INT,((SELECT COUNT(*) FROM uczelnia)) * (uczelnia.ID)))
		)
		print 'Student zostal zapisany do uczelni i do 3 przedmiotow';
	END TRY 
	BEGIN CATCH 
	IF @nazwa_uczelni IS NULL
		print 'Nie isntenie takiej uczelni';
	ELSE IF @przedmiot IS NULL 
		print 'Nie podano trzech przedmiotow';
	print ERROR_MESSAGE()
		RETURN 0
	END CATCH
END


ALTER TABLE student_przedmiot ADD uczelnia_id int NULL
CREATE TRIGGER zadanie2_trigger ON student_przedmiot FOR UPDATE
AS
UPDATE student_przedmiot SET uczelnia_id = 1
WHERE student_id IN (SELECT i.student_id FROM INSERTED i) 


CREATE PROCEDURE zadanie3 @nazwa_przedmiotu nvarchar(40)
AS
BEGIN
	SELECT u.nazwa
	FROM student s
	JOIN uczelnia u ON s.uczelnia_id = u.ID
	JOIN przedmiot p ON s.uczelnia_id = p.ID
	GROUP BY u.nazwa
	SELECT COUNT(*) FROM uczelnia
	SELECT COUNT(*) FROM przedmiot
	INSERT INTO przedmiot ( nazwa )
	VALUES ('matematyka');
END
