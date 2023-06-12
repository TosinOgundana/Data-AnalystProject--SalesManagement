-- Cleansed Customer_DIM Table
SELECT 
  c.CustomerKey, 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --[Title]
  c.FirstName AS [First Name], 
  --[MiddleName]
  c.LastName AS [Last Name], 
  c.FirstName + ' ' + LastName AS [Full Name], 
  --[NameStyle]
  --[BirthDate]
  --[MaritalStatus]
  --[Suffix]
  CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress]
  --[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  --  ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  --  ,[SpanishOccupation]
  --  ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  -- ,[NumberCarsOwned]
  --   ,[AddressLine1]
  -- ,[AddressLine2]
  --  ,[Phone]
  g.[City] AS [Customer City],
  c.DateFirstPurchase 
  --  ,[CommuteDistance]
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY c.CustomerKey

