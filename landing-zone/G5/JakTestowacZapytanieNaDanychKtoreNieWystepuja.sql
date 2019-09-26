select distinct _soh.OrderDate,
       concat(year(_soh.OrderDate),'-',
       case
         when month(_soh.OrderDate) between 6 and 8 
              then 'Sezon wysoki'
         when month(_soh.OrderDate) in(5,9) 
           or month(_soh.OrderDate) = 4 and day(_soh.OrderDate) >= 14
              then 'Sezon niski'
         else      'Sezon martwy'
       end) Okres
  from (
    select cast('20110413' as datetime) OrderDate
    union all
    select cast('20110414' as datetime)
  ) _soh
  order by 1