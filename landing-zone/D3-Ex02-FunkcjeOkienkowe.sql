with cte (Nazwa,Kolor,Ilosc,Kwota,Cena,Rok) as (
SELECT
       prd.Name
      ,prd.Color
      ,sod.OrderQty
      ,sod.LineTotal
      ,prd.ListPrice
      ,YEAR(soh.OrderDate)
  FROM Sales.SalesOrderHeader soh
  JOIN Sales.SalesOrderDetail sod
    ON soh.SalesOrderID = sod.SalesOrderID
  JOIN Production.Product prd
    ON prd.ProductId = sod.ProductID
)
select
      MAX(Ilosc) OVER (PARTITION BY Rok)        MaxIloscWRoku
    , MAX(Ilosc) OVER (PARTITION BY Rok)-Ilosc  RoznicaIlosciMaxWRoku
    , SUM(Kwota) OVER (PARTITION BY Rok, Kolor) KwotaRazemWgKoloruWRoku
    , RANK() OVER (PARTITION BY Kolor ORDER BY CAST(Cena as int) DESC) PozycjaWRankingu
    , DENSE_RANK() OVER (PARTITION BY Kolor ORDER BY CAST(Cena as int) DESC) PozycjaWRankinguNaBogato
    , CAST(Cena as int) CenaZaokraglona
    , LAG(CAST(Cena as int), 1, 0) OVER(PARTITION BY Kolor ORDER BY CAST(Cena as int) DESC) WartoscZPoprzedniegoWiersza
    , LEAD(CAST(Cena as int), 1, 0) OVER(PARTITION BY Kolor ORDER BY CAST(Cena as int) DESC) WartoscZNastępnegoWiersza
    , * 
  from cte
 order by Kolor, 4
 --offset 1 rows fetch next 100 rows only