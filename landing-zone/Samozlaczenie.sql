select
       prd1.Name
      ,prd1.Color
      ,prd1.ListPrice
      ,prd2.Name

  from Production.Product prd1
  join Production.Product prd2
    on isnull(prd1.Color,'Nieznany') = coalesce(prd2.Color,'Nieznany')
   and left(prd1.Name,4) <> left(prd2.Name, 4)
   and prd1.ListPrice = prd2.ListPrice

 where prd1.ProductID < prd2.ProductID
   and prd1.MakeFlag = 1
   and prd2.MakeFlag = 1
   and prd1.ListPrice > 0
