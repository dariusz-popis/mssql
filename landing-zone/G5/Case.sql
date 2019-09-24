select distinct
        year(soh.OrderDate) Rok
      , case nullif(year(soh.OrderDate),2011)
          when 2011 then 'Dwa tysiące jedenasty'
          when 2012 then 'Dwa tysiące dwunasty'
          when null then 'Tu jest nie wiemy co'
          else 'A kogo to teraz interesuje'
       end [Case z porównaniem do null - nie realizowany przypadek]
     , case 
          when year(soh.OrderDate) = 2011 then 'Dwa tysiące jedenasty'
          when year(soh.OrderDate) = 2012 then 'Dwa tysiące dwunasty'
          when nullif(year(soh.OrderDate),2014) is null then 'Tu jest nie wiemy co'
          else 'A kogo to teraz interesuje'
       end
  from Sales.SalesOrderHeader soh
