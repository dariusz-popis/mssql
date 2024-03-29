with cte as (
        SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'Central' as Territory, 'Accessories' as Subcategory,'Carrying Case' as Product, CAST(16996.60 AS money) AS Sales, 68 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'North' as Territory, 'Accessories' as Subcategory, 'Carrying Case' as Product, CAST(13747.25 AS money) AS Sales, 55 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'South' as Territory, 'Accessories' as Subcategory,'Carrying Case' as Product, CAST(9248.15 AS money) As Sales, 37 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'Central' as Territory, 'Accessories' as Subcategory,'Tripod' as Product, CAST(1350.00 AS money) AS Sales, 18 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'North' as Territory, 'Accessories' as Subcategory,'Tripod' as Product, CAST(1800.00 AS money) AS Sales, 24 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'South' as Territory, 'Accessories' as Subcategory,'Tripod' as Product, CAST(1125.00 AS money) AS Sales, 15 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'Central' as Territory, 'Accessories' as Subcategory,'Lens Adapter' as Product, CAST(1147.50 AS money) AS Sales, 17 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'North' as Territory, 'Accessories' as Subcategory,  'Lens Adapter' as Product, CAST(742.50 AS money) AS Sales, 11 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'South' as Territory, 'Accessories' as Subcategory,'Lens Adapter' as Product, CAST(1417.50 AS money) AS Sales, 21 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'Central' as Territory, 'Accessories' as Subcategory, 'Carrying Case' as Product, CAST(13497.30 AS money) AS Sales, 54 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'North' as Territory, 'Accessories' as Subcategory, 'Carrying Case' as Product, CAST(11997.60 AS money) AS Sales, 48 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'South' as Territory, 'Accessories' as Subcategory, 'Carrying Case' as Product, CAST(10247.95 AS money) As Sales, 41 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'Central' as Territory, 'Accessories' as Subcategory, 'Tripod' as Product, CAST(1200.00 AS money) AS Sales, 16 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'North' as Territory, 'Accessories' as Subcategory,'Tripod' as Product, CAST(2025.00 AS money) AS Sales, 27 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'South' as Territory, 'Accessories' as Subcategory,'Tripod' as Product, CAST(1425.00 AS money) AS Sales, 19 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'Central' as Territory, 'Accessories' as Subcategory,'Lens Adapter' as Product, CAST(887.50 AS money) AS Sales, 13 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'North' as Territory, 'Accessories' as Subcategory, 'Lens Adapter' as Product, CAST(607.50 AS money) AS Sales, 9 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'South' as Territory, 'Accessories' as Subcategory,'Lens Adapter' as Product, CAST(1215.00 AS money) AS Sales, 18 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy,  'Central' as Territory, 'Digital' as Subcategory,'Compact Digital' as Product, CAST(10191.00 AS money) AS Sales, 79 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy,  'North' as Territory, 'Digital' as Subcategory, 'Compact Digital' as Product, CAST(8772.00 AS money) AS Sales, 68 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy,  'South' as Territory, 'Digital' as Subcategory, 'Compact Digital' as Product, CAST(10578.00 AS money) AS Sales, 82 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'Central' as Territory,'Digital' as Subcategory, 'Slim Digital' as Product, CAST(7218.10 AS money) AS Sales, 38 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'North' as Territory,'Digital' as Subcategory, 'Slim Digital' as Product, CAST(8357.80 AS money) AS Sales, 44 as Quantity  
  UNION SELECT CAST('2015-01-05' AS date) as DataSprzedazy, 'South' as Territory,'Digital' as Subcategory,'Slim Digital' as Product, CAST(9307.55 AS money) AS Sales, 49 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy,  'Central' as Territory, 'Digital' as Subcategory,'Compact Digital' as Product, CAST(3870.00 AS money) AS Sales, 30 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy,  'North' as Territory, 'Digital' as Subcategory,'Compact Digital' as Product, CAST(5805.00 AS money) AS Sales, 45 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy,  'South' as Territory, 'Digital' as Subcategory, 'Compact Digital' as Product, CAST(8643.00 AS money) AS Sales, 67 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'Central' as Territory, 'Digital' as Subcategory, 'Slim Digital' as Product, CAST(9877.40 AS money) AS Sales, 52 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'North' as Territory, 'Digital' as Subcategory, 'Slim Digital' as Product, CAST(12536.70 AS money) AS Sales, 66 as Quantity  
  UNION SELECT CAST('2015-01-06' AS date) as DataSprzedazy, 'South' as Territory, 'Digital' as Subcategory, 'Slim Digital' as Product, CAST(6648.25 AS money) AS Sales, 35 as Quantity
)
select c.Territory, c.Subcategory, sum(c.Quantity) Razem
  from cte c
 group by c.Territory, c.Subcategory
