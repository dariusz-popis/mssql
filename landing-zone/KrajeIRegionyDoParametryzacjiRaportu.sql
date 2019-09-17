use AdventureWorksDW

select distinct g.EnglishCountryRegionName, g.CountryRegionCode
  from DimGeography g

select distinct g.StateProvinceName, g.CountryRegionCode
  from DimGeography g