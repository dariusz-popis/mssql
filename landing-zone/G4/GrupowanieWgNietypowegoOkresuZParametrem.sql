--declare @Rok smallint = 2012
--declare @Sezon varchar(6) = '*'

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
--where CAST(LEFT(Okres,4) as smallint) = @Rok
--  and SUBSTRING(Okres,6,6) = case when @Sezon = '*' then SUBSTRING(Okres,6,6)
--                                  else @Sezon
--                              end
 order by Okres
