select * 
  from
(
select 
       CONCAT(YEAR(soh.OrderDate),'-',RIGHT(CONCAT('0',MONTH(soh.OrderDate)),2))
                           Okres
     , SUM(soh.SubTotal)   Wartosc
     , AVG(soh.SubTotal)   SredniaWartosc
     , COUNT(1)            IloscPozycji
  from Sales.SalesOrderHeader soh
 group by YEAR(soh.OrderDate), MONTH(soh.OrderDate)
having count(1) >= 200
) _obroty
where Okres not in ('2011-05','2012-06','2013-07')
order by Okres
 