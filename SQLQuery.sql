USE AdventureWorksOBP
GO

SET STATISTICS IO ON
GO

CREATE NONCLUSTERED INDEX Index_Racun_DatumIzdavanja
ON racun (DatumIzdavanja) INCLUDE (Komentar);

SELECT IDRacun, DatumIzdavanja, Komentar
FROM racun
WHERE DatumIzdavanja BETWEEN '20010702' AND '20010702 23:59:59'

DROP INDEX Index_Racun_DatumIzdavanja ON racun
-- 202 logical reads prije dodavanja indexa
-- 2 logical reads nakon dodavanja indexa

