set transaction isolation level repeatable read;

with cte as (
select 
       sum(soh.SubTotal)    Przychod
     , year(soh.OrderDate)  Rok
     , month(soh.OrderDate) Miesiac
  from Sales.SalesOrderHeader soh
 group by year(soh.OrderDate), month(soh.OrderDate)
)
select lag(Przychod,1,0) over (order by Rok, Miesiac) PrzychodWPoprzedzajacymOkresie
     , cte.Przychod
     , lead(Przychod,2,1000) over (order by Rok, Miesiac) PrzychodDwaOkresyNastepneJesliBrakPodstawTysiac
     , cte.Rok
     , cte.Miesiac
  from cte
