with Sprzedaz (DataSprzedazy,Kategoria,Produkt,Wartość,Ilość) 
as (
   select cast('2015-01-05' AS date),'Accessories','Carrying Case',16996.60,68
   union all
   select cast('2015-01-06' AS date),'Accessories','Tripod',1350.00,18
   union all
   select cast('2015-01-11' AS date),'Accessories','Lens Adapter',1147.50,17
   union all
   select cast('2015-01-05' AS date),'Accessories','Mini Battery Charger',1056.00,44
   union all
   select cast('2015-01-06' AS date),'Accessories','Telephoto Conversion Lens',1380.00,18
   union all
   select cast('2015-01-06' AS date),'Accessories','USB Cable',780.00,26
   union all
   select cast('2015-01-08' AS date),'Accessories','Budget Movie-Maker',3798.00,9
   union all
   select cast('2015-01-09' AS date),'Camcorders','Business Videographer',10400.00,13
   union all
   select cast('2015-01-10' AS date),'Camcorders','Social Videographer',3000.00,60
   union all
   select cast('2015-01-11' AS date),'Digital','Advanced Digital',7234.50,39
   union all
   select cast('2015-01-07' AS date),'Digital','Compact Digital',10836.00,84
   union all
   select cast('2015-01-08' AS date),'Digital','Consumer Digital',2550.00,17
   union all
   select cast('2015-01-05' AS date),'Digital','Slim Digital',8357.80,44
   union all
   select cast('2015-01-09' AS date),'Digital SLR','SLR Camera 35mm',18530.00,34
   union all
   select cast('2015-01-07' AS date),'Digital SLR','SLR Camera',26576.00,88
)
select * from Sprzedaz