with vProdukt as
 (
select p.ProductID, p.Name, p.Color
  from Production.Product p
 where Name like '___Road%') 

select * 
  from vProdukt pa
  join vProdukt pb
    on pa.Color = pb.Color
 where pa.Name < pb.Name
