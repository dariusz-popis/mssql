with cteObrotyZDataRaportu as
(
select CAST(LEFT(Okres,4) as smallint) Rok
     , CAST(SYSDATETIME() AS datetime2(0))  DataRaportu
     , *
  from 
(
select 
       CONCAT(YEAR(soh.OrderDate),'-',
              CASE 
                 WHEN MONTH(soh.OrderDate) BETWEEN 6 AND 8 THEN 'Wysoki'
                 WHEN MONTH(soh.OrderDate) IN(11,12,1,2,3)
                   OR (MONTH(soh.OrderDate) = 4 
                       AND DAY(soh.OrderDate) BETWEEN 1 AND 14)
                      THEN 'Martwy'
                 ELSE 'Niski'
              END
              ) Okres
     , SUM(soh.SubTotal)   Wartosc
     , AVG(soh.SubTotal)   SredniaWartosc
     , COUNT(1)            IloscPozycji
  from Sales.SalesOrderHeader soh
 group by CONCAT(YEAR(soh.OrderDate),'-',
              CASE 
                 WHEN MONTH(soh.OrderDate) BETWEEN 6 AND 8 THEN 'Wysoki'
                 WHEN MONTH(soh.OrderDate) IN(11,12,1,2,3)
                   OR MONTH(soh.OrderDate) = 4 
                  AND DAY(soh.OrderDate) BETWEEN 1 AND 14
                      THEN 'Martwy'
                 ELSE 'Niski'
              END) 
) _zlecenia
)
select ROW_NUMBER() OVER (ORDER BY Okres) Nr
     , NTILE(4) OVER (ORDER BY Okres) Strona
     , SUM(Wartosc) OVER (PARTITION BY Rok ORDER BY Okres) WartoscNarastajaco
     , SUM(Wartosc) OVER (PARTITION BY Rok) WartoscDlaRoku
     , cteObrotyZDataRaportu.Wartosc
     , LAG(Wartosc,1,0) OVER(PARTITION BY Rok ORDER BY Okres) WartoscZPoprzedniegoOkresu
     , LEAD(Wartosc,1,0) OVER(PARTITION BY Rok ORDER BY Okres) WartoscNastepnyOkresu
     , *
  from cteObrotyZDataRaportu

  order by Okres 