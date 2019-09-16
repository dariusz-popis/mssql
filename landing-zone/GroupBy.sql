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
	  ,'' Uwagi
      ,COUNT(*) IleRekordow

  FROM Sales.SalesOrderHeader soh
 GROUP BY YEAR(soh.OrderDate),MONTH(soh.OrderDate)
 ORDER BY Okres