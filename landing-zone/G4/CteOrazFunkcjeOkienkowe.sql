with cte as (
select p.FirstName
     , p.LastName
     , p.ModifiedDate
     , case p.PersonType
          when 'EM' then 'Etatowy'
          else 'Stażysta'
       end RodzajPracownika
  from Person.Person p
)
select ROW_NUMBER() OVER (PARTITION BY RodzajPracownika ORDER BY LastName DESC) NrWgNazwiska
     , COUNT(1) OVER () IloscRazem
     , COUNT(1) OVER (PARTITION BY RodzajPracownika ORDER BY LastName DESC) IloscWGrupieRodzajPracownika
     , * 
  from cte