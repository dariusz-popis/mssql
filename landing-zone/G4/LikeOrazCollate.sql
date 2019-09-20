use AdventureWorks2016

select p1.Color
     , p1.[Name]
  from Production.Product p1
 where p1.[Name] like 'c[a-z]%' collate Polish_CI_AS