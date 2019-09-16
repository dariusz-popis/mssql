with vProdukt as
 (
select p.ProductID IdProduktu, p.Name, p.Color
  from Production.Product p
 where Name like '___Road%') 

select 
      ROW_NUMBER() OVER(ORDER BY pa.IdProduktu, pb.IdProduktu desc) Nr
     ,ROW_NUMBER() OVER(PARTITION BY pa.Color ORDER BY pa.IdProduktu, pb.IdProduktu desc) NrWgKoloru
     ,NTILE(4) OVER (PARTITION BY pa.Color ORDER BY pa.IdProduktu) IdStrony
     ,COUNT(*) OVER (PARTITION BY pa.Color) IleWKolorze
     ,MAX(pa.IdProduktu) OVER () MaxIdProduktuWCalosci
     ,MAX(pa.IdProduktu) OVER (PARTITION BY pa.Color) MaxIdProduktuWKolorze
     ,pa.*
     ,pb.*
     ,(select count(1) from vProdukt) IloscProduktowRazem 
  from vProdukt pa
  join vProdukt pb
    on pa.Color = pb.Color
 where pa.Name < pb.Name
