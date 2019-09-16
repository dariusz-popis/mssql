select *
  from 
(
SELECT 
       YEAR(soh.OrderDate) Rok,  
	     case 
		       when DAY(OrderDate) in (5,10) then 'Niski'
           when DAY(OrderDate) in (6,7,8,9) then 'Wysoki'
           else 'Martwy'
	     end Sezon

      ,SUM(soh.SubTotal) KwotaRazem
	    ,YEAR(GETDATE()) - YEAR(soh.OrderDate) JakDawno
	    ,'' Uwagi
      ,COUNT(*) IleRekordow

  FROM Sales.SalesOrderHeader soh

 GROUP BY YEAR(soh.OrderDate)
         ,case 
		        when DAY(OrderDate) in (5,10) then 'Niski'
            when DAY(OrderDate) in (6,7,8,9) then 'Wysoki'
            else 'Martwy'
	        end
 HAVING count(*) < 500
) _raport

where Sezon = 'Wysoki'