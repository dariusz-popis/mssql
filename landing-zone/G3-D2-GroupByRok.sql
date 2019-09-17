--set language english
select
       soh.CustomerID
      ,sum(soh.SubTotal)  Razem
      ,max(soh.OrderDate) DataOstatniegoZlecenia
      ,year(soh.OrderDate) Rok
  from Sales.SalesOrderHeader soh
 group by CustomerID, year(soh.OrderDate)