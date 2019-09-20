use AdventureWorks2016

select 
       p1.Color
     , p1.ListPrice
     , p1.[Name]
     , p2.[Name]
  from Production.Product p1
  join Production.Product p2
    on p1.Color = p2.Color
   and p1.ListPrice = p2.ListPrice
   and p1.ProductID < p2.ProductID
 where p1.ListPrice > 0
 order by p1.ListPrice desc
