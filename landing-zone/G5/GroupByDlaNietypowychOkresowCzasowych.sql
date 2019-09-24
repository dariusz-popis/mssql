--2010-Sezon wysoki
--2010-Sezon niski
--2010-Sezon martwy

--wysoki - 6, 7, 8
--niski - 5, 9 oraz od 14 kwietnia
--martwy  - pozastałe

select
       year(soh.OrderDate) Rok
     , concat(year(soh.OrderDate),'-',
       case
         when month(soh.OrderDate) between 6 and 8 
              then 'Sezon wysoki'
         when month(soh.OrderDate) in(5,9) 
           or month(soh.OrderDate) = 4 and day(soh.OrderDate) >= 14
              then 'Sezon niski'
         else      'Sezon martwy'
       end) Okres
     , sum(soh.SubTotal) Wartosc
     , count(1) IloscZlecen
     , count(distinct CustomerId) IloscRoznychOdbiorcow
  from Sales.SalesOrderHeader soh
 group by year(soh.OrderDate),
       case
         when month(soh.OrderDate) between 6 and 8 
              then 'Sezon wysoki'
         when month(soh.OrderDate) in(5,9) 
           or month(soh.OrderDate) = 4 and day(soh.OrderDate) >= 14
              then 'Sezon niski'
         else      'Sezon martwy'
       end
