declare @Color varchar(50) = null

select p.Name, p.Color, p.ListPrice
  from Production.Product p
 where isnull(Color,'niewiadomoco') = isnull(@Color, 'niewiadomoco')
  
select distinct p.Color
  from Production.Product p