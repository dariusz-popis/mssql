select distinct
       CONCAT(YEAR(soh.OrderDate),'-',
              CASE 
                 WHEN MONTH(soh.OrderDate) BETWEEN 6 AND 8 THEN 'Wysoki'
                 WHEN MONTH(soh.OrderDate) IN(11,12,1,2,3) THEN 'Martwy'
                 --WHEN USER_NAME() = 'dbo' THEN 'Chodźmy na kawę' 
                 --WHEN DATEPART(dw,GETDATE()) = 5 THEN 'Nie interuje mnie to w czwartki'
                 ELSE 'Niski'
              END
              ) Okres
  from Sales.SalesOrderHeader soh
 --group by YEAR(soh.OrderDate), MONTH(soh.OrderDate)
 

