--set implicit_transactions off
go
--create schema RaportyCAAC
go
create function RaportyCAAC.fnZestawieniePrzychodow (@Rok int)
returns table
as return (

select 
       sum(soh.SubTotal)    Przychod
     , year(soh.OrderDate)  Rok
     , month(soh.OrderDate) Miesiac
  from Sales.SalesOrderHeader soh
  where YEAR(soh.OrderDate) = @Rok
 group by year(soh.OrderDate), month(soh.OrderDate)
)
go
select * from RaportyCAAC.fnZestawieniePrzychodow(2012)
