select soh.CustomerId 
     , soh.SalesOrderNumber
     , (select count(1) 
          from Sales.SalesOrderDetail sod
         where sod.SalesOrderId = soh.SalesOrderId) IlePozycji
     , soh.SubTotal
  from Sales.SalesOrderHeader soh
  