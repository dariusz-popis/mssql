set transaction isolation level read uncommitted

--select
--       soh.SalesOrderNumber     NrDokumentu
--     , max(year(soh.OrderDate)) Rok
--     , max(soh.SubTotal)        Kwota
--     , count(1)                 IlscPozycji
--  from Sales.SalesOrderDetail sod
--  join Sales.SalesOrderHeader soh
--    on sod.SalesOrderID = soh.SalesOrderID
-- group by soh.SalesOrderNumber
declare @Rok int = 2011
select * from
(
 select
       soh.SalesOrderNumber     NrDokumentu
     , soh.SalesOrderId%10      Znacznik
     , year(soh.OrderDate)      Rok
     , soh.SubTotal             Kwota
     , (select count(1)
          from Sales.SalesOrderDetail sod
         where sod.SalesOrderID = soh.SalesOrderID)
                                [IlośćPozycji]
     , (select cast(max(sod.UnitPrice) as decimal(10,2))
     --, (select max(sod.UnitPrice)
          from Sales.SalesOrderDetail sod
         where sod.SalesOrderID = soh.SalesOrderID)
                                [MaksymalnaWartość]
     , NTILE(2) OVER(order by soh.SubTotal) Page
     , DENSE_RANK() OVER(partition by soh.SalesOrderId%10 order by soh.SubTotal, soh.SalesOrderId) Rank
     , ROW_NUMBER() OVER(partition by soh.SalesOrderId%10 order by soh.SubTotal) RowNumber
   from Sales.SalesOrderHeader soh
  where year(soh.OrderDate) = @Rok
  --order by Znacznik, Page, Rank


) wynik
where Znacznik in (0, 1)
order by Znacznik, Page, RowNumber