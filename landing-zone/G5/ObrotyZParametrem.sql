declare @RokPoczatkowy int = 2012
declare @RokKoncowy int = 2013

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
 where year(soh.OrderDate) 
       between
       case 
        when @RokPoczatkowy > @RokKoncowy then @RokKoncowy
        else @RokPoczatkowy
       end
       and
       case
         when @RokKoncowy < @RokPoczatkowy then @RokPoczatkowy
         else @RokKoncowy
       end
 group by year(soh.OrderDate),
       case
         when month(soh.OrderDate) between 6 and 8 
              then 'Sezon wysoki'
         when month(soh.OrderDate) in(5,9) 
           or month(soh.OrderDate) = 4 and day(soh.OrderDate) >= 14
              then 'Sezon niski'
         else      'Sezon martwy'
       end
order by Rok desc