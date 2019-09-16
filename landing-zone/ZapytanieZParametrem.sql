DECLARE @CountryRegion nvarchar(3) = 'US'

SET @CountryRegion = 'US'
--SELECT @CountryRegion = 'FR'

SELECT CountryRegionCode, StateProvinceCode, StateProvinceName
  FROM dbo.DimGeography geo
 WHERE geo.CountryRegionCode = @CountryRegion
 GROUP BY CountryRegionCode, StateProvinceCode, StateProvinceName;