-- Cleansed Product_Dim Table 
SELECT
	p.[ProductKey],
    p.[ProductAlternateKey],
    p.[ProductSubcategoryKey],
	ps.[EnglishProductSubcategoryName] AS [Sub Category],
	pc.[EnglishProductCategoryName] AS [Category],
    --,[WeightUnitMeasureCode]
    --,[SizeUnitMeasureCode]
    p.[EnglishProductName] AS [Product Name],
    --,[SpanishProductName]
    --,[FrenchProductName]
    --,[StandardCost]
    --,[FinishedGoodsFlag]
    p.[Color] AS [Product Color],
    --,[SafetyStockLevel]
    --,[ReorderPoint]
    --,[ListPrice]
    p.[Size] AS [Product Size],
    --,[SizeRange]
    --,[Weight]
    --,[DaysToManufacture]
    p.[ProductLine] AS [Product Line],
    --,[DealerPrice]
    p.[Class] AS [Product Class],
    --,[Style]
    p.[ModelName] AS [Product Model Name],
    --,[LargePhoto]
    p.[EnglishDescription] AS [Product Description],
    --,[FrenchDescription]
    --,[ChineseDescription]
	--,[ArabicDescription]
	--,[HebrewDescription]
	--,[ThaiDescription]
    --,[GermanDescription]
	--,[JapaneseDescription]
	--,[TurkishDescription]
	--,[StartDate]
	--,[EndDate]
    ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM [dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey
  ORDER BY p.[ProductKey]
