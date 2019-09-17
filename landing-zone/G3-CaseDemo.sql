select
               case 
                   when p.ListPrice < 100 then 'Tanie'
                   when datepart(dw,getdate())=3 then 'Dzisiaj wtorek'
                   when p.ListPrice < 1000 then 'Średnio drogie'
                   else 'Drogie'
                end  GrupaCenowa
              ,case isnull(Color,'XXX')
                    when 'XXX' then 'Blady (łososiowy)'
                    when 'Yellow' then 'Żółty'
                    when 'Red'    then 'Czerwony'
                    when 'Green'  then 'Zielony'
                    else 'Kogo to obchodzi'
                end Kolor
              ,p.ListPrice
              ,p.Name
  from Production.Product p
   where p.Color is null

