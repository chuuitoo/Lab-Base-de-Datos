CREATE TRIGGER trigger_update
ON Autobuses 
INSTEAD OF UPDATE
as
BEGIN
	UPDATE Autobuses
	SET Placas = 'ACC997'
	WHERE Id_Autobus = '45643';
END



CREATE TRIGGER trigger_delete
ON Asientos 
INSTEAD OF DELETE
as
BEGIN
	DELETE FROM Asientos
	WHERE Id_Autobus = '45643';
END



CREATE TRIGGER trigger_insert
ON Asientos 
INSTEAD OF INSERT
as
BEGIN
	INSERT INTO Asientos(Id_Autobus, Num_Asiento, Reservado)
	VALUES ('45643', 'A1', 'S'),
	('45643', 'A2', 'S'),
	('45643', 'A3', 'S'),
	('45643', 'G4', 'S')
END