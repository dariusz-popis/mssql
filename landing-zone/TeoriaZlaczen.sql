DECLARE @TA TABLE (
  Id INT IDENTITY(100,1),
  Wartosc VARCHAR(10)
)
INSERT @TA(Wartosc) VALUES('A'),('B')

DECLARE @TB TABLE (
  Id INT IDENTITY(200,1),
  Wartosc VARCHAR(10),
  Wartosc2 DECIMAL(10,4)
)
INSERT @TB(Wartosc,Wartosc2) VALUES('B',10),('C',0)

DECLARE @TC TABLE (
  Id INT IDENTITY(300,1),
  Wartosc VARCHAR(10)
)
INSERT @TC(Wartosc) VALUES('A'),('C')

SELECT SUM(Wartosc2), AVG(Wartosc2),  SUM(Wartosc2)/COUNT(*) FROM 
(
SELECT 'TA' Tablica, Id, Wartosc, 0 Wartosc2 FROM @TA
UNION ALL
SELECT 'TB', Id, Wartosc, Wartosc2 FROM @TB
UNION ALL
SELECT 'TC', Id, Wartosc, null FROM @TC
) Wynik
GROUP BY Tablica

--SELECT *
--  FROM @TA a
-- LEFT JOIN @TB b ON a.Wartosc = b.Wartosc
-- FULL JOIN @TC c ON b.Wartosc = c.Wartosc



