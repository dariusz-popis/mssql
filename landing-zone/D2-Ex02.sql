SELECT 
       soh.CustomerID  
      ,soh.OrderDate 
      ,soh.SubTotal
      ,cust.AccountNumber
  FROM Sales.SalesOrderHeader soh
  RIGHT JOIN Sales.Customer cust
    ON soh.CustomerID = cust.CustomerID
 WHERE soh.SalesOrderID IS NULL AND soh.CustomerID IS NULL AND soh.OrderDate IS NULL
 --ORDER BY cust.CustomerID, OrderDate DESC
 --         OFFSET 1 ROWS
 --         FETCH NEXT 100 ROWS ONLY

