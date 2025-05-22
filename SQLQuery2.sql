USE AdventureWorksOBP
GO

BEGIN TRAN
    INSERT INTO Osoba(Ime) VALUES ('Marko');
    SAVE TRAN SavePoint1

    INSERT INTO Osoba (Ime) VALUES ('Jelena');
	SAVE TRAN SavePoint2
ROLLBACK TRAN

BEGIN TRAN
    INSERT INTO Osoba (Ime) VALUES ('Ivana');
    SAVE TRAN SavePoint1

    INSERT INTO Osoba (Ime) VALUES ('Nikola');
    SAVE TRAN SavePoint2
COMMIT TRAN

BEGIN TRAN
    INSERT INTO Osoba (Ime) VALUES ('Petar');
    SAVE TRAN SavePoint1

    INSERT INTO Osoba (Ime) VALUES ('Josip');
    ROLLBACK TRAN SavePoint1
ROLLBACK TRAN

BEGIN TRAN
    INSERT INTO Osoba (Ime) VALUES ('Maja');
    SAVE TRAN SavePoint1

    INSERT INTO Osoba (Ime) VALUES ('Stjepan');
    ROLLBACK TRAN SavePoint1
COMMIT TRAN



