--set transaction isolation level read uncommitted -- alternatywa dla nolock we wszystkich zrodlach

select soh.CustomerID
     , year(soh.OrderDate)   Rok
     , p.Name                Produkt
     , isnull(p.Color, 'NA') Kolor
     , count(1)              IleRazy
  from Sales.SalesOrderHeader soh with (nolock)
  join Sales.SalesOrderDetail sod with (nolock)
    on soh.SalesOrderID = soh.SalesOrderID
  join Production.Product p with (nolock)
    on p.ProductID = sod.ProductID
 group by soh.CustomerID
     , year(soh.OrderDate)
     , p.Color
     , p.Name
