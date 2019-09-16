SELECT *
FROM
(
SELECT DISTINCT
       CASE MONTH(OrderDate)
         WHEN  1 THEN 'Martwo'
         WHEN  2 THEN 'Martwo'
         WHEN  3 THEN 'Martwo'
         WHEN  4 THEN 'Pomalutku'
         WHEN  5 THEN 'Pomalutku'
         WHEN  6 THEN 'Sie zarabia zyje sie jak chrabia'
         WHEN  7 THEN 'Sie zarabia zyje sie jak chrabia'
         WHEN  8 THEN 'Sie zarabia zyje sie jak chrabia'
         WHEN  9 THEN 'Pomalutku'
         WHEN 10 THEN 'Pomalutku'
         ELSE 'Martwo'
       END  Sezon

      ,CASE 
         --WHEN  MONTH(OrderDate) BETWEEN 4 AND 5 THEN 'Pomalutku' -- Bardziej wydajne niż IN [IN = OR]
         WHEN  MONTH(OrderDate) IN (4,5) THEN 'Pomalutku'
         WHEN  MONTH(OrderDate) BETWEEN 6 AND 8 THEN 'Sie zarabia zyje sie jak chrabia'
         ELSE 'Martwo'
       END  Sezon_Bardziej_Elastycznie

      ,YEAR(OrderDate)  Rok
      ,MONTH(OrderDate) Miesiac
  FROM Sales.SalesOrderHeader 
) Podzapytanie
WHERE Sezon = 'Martwo'