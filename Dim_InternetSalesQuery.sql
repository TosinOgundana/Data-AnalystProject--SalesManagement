--Cleansed Internet Sales
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [PromotionKey], 
  [CurrencyKey], 
  -- ,[SalesTerritoryKey]
  , 
  [SalesOrderNumber],
  -- ,[SalesOrderLineNumber]
  -- ,[RevisionNumber] 
  [OrderQuantity],
  -- ,[UnitPrice]
  -- ,[ExtendedAmount]
  -- ,[UnitPriceDiscountPct]
  -- ,[DiscountAmount]
  -- ,[ProductStandardCost]
  -- ,[TotalProductCost] 
  [SalesAmount],
  --  ,[TaxAmt]
  --  ,[Freight]
  --  ,[CarrierTrackingNumber]
  --  ,[CustomerPONumber]
  --  ,[OrderDate]
  --  ,[DueDate]
  --  ,[ShipDate]
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT(OrderDateKey, 4) >= YEAR( GETDATE()) - 3 --Ensures 3 years of date from extraction
ORDER BY 
  OrderDateKey
 