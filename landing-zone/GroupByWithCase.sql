select 
       LAG(1,1) over (order by Rok desc),
       _raport.*
  from 
(
SELECT 
       YEAR(soh.OrderDate) Rok,
	     case 
		       when MONTH(OrderDate) in (5,10) then 'Niski'
           when MONTH(OrderDate) in (6,7,8,9) then 'Wysoki'
           else 'Martwy'
	     end Sezon

      ,SUM(soh.SubTotal) KwotaRazem
	    ,YEAR(GETDATE()) - YEAR(soh.OrderDate) JakDawno
	    ,'' Uwagi
      ,COUNT(1) IleRekordow

  FROM Sales.SalesOrderHeader soh

 GROUP BY YEAR(soh.OrderDate)
         ,case 
		        when MONTH(OrderDate) in (5,10) then 'Niski'
            when MONTH(OrderDate) in (6,7,8,9) then 'Wysoki'
            else 'Martwy'
	        end
 --HAVING count(1) < 1000
) _raport

--where Sezon = 'Wysoki'
order by Rok desc, Sezon