 SELECT DISTINCT
      CONCAT(YEAR(soh.OrderDate),'-',RIGHT(CONCAT('0',MONTH(soh.OrderDate)),2)) Okres
     ,MIN(CONCAT(YEAR(soh.OrderDate),'-',RIGHT(CONCAT('0',MONTH(soh.OrderDate)),2))) OVER () [Pierwszy Okres]
     ,MAX(CONCAT(YEAR(soh.OrderDate),'-',RIGHT(CONCAT('0',MONTH(soh.OrderDate)),2))) OVER () [Ostatni Okres]
  FROM Sales.SalesOrderHeader soh
  JOIN Sales.Customer cust
    ON soh.CustomerID = cust.CustomerID
 ORDER BY Okres desc