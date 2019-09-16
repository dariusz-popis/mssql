 declare @MaxKwotyOdrzucanej int = 3000
 declare @MinKwotaWOkresie   int = 2000000
 declare @MinIloscRoznychKlientow int = 200

 SELECT 
      CONCAT(YEAR(soh.OrderDate),'-',RIGHT(CONCAT('0',MONTH(soh.OrderDate)),2)) Okres
     ,MAX(soh.OrderDate) DataOstatniegoZlecenia
     ,CAST(SUM(soh.SubTotal) AS DECIMAL(10,2)) Kwota
     ,COUNT(1) IloscZlecen
     ,COUNT(DISTINCT soh.CustomerID) IloscRoznychKlientow
  FROM Sales.SalesOrderHeader soh
 WHERE soh.SubTotal >= @MaxKwotyOdrzucanej

 GROUP BY CONCAT(YEAR(soh.OrderDate),'-',RIGHT(CONCAT('0',MONTH(soh.OrderDate)),2))
HAVING SUM(soh.SubTotal) > @MinKwotaWOkresie AND COUNT(DISTINCT soh.CustomerID) > @MinIloscRoznychKlientow
 ORDER BY Okres desc
 

