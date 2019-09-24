select year(soh.OrderDate)  Rok
     , month(soh.OrderDate) Miesiac
     , soh.CustomerID    
     , cast(sum(soh.SubTotal) as decimal (20,2)) Wartosc
     , count(soh.Comment) IloscComments
     , count(1) IloscZlecen
  from Sales.SalesOrderHeader soh
 group by year(soh.OrderDate), month(soh.OrderDate), soh.CustomerId
 having count(1) > 1
 order by Rok