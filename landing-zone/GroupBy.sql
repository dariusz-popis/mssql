select * from
(
SELECT 
	   CONCAT(
	     YEAR(soh.OrderDate),
	     '-',
	     RIGHT(
		   CONCAT('0', 
		     MONTH(soh.OrderDate)
		    )
		,2)
	   ) Okres
      ,SUM(soh.SubTotal) KwotaRazem
	  ,YEAR(GETDATE()) - YEAR(soh.OrderDate) JakDawno
	  ,'' Uwagi -- To nie jest dobra praktyka, jedynie demonstracja
      ,COUNT(1) IleRekordow

  FROM Sales.SalesOrderHeader soh
 GROUP BY YEAR(soh.OrderDate), MONTH(soh.OrderDate)
) Grupowanie
 where JakDawno <=5

 ORDER BY Okres

 offset 1 rows fetch next 3 rows only