 -- cleansed DIM_DateTable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date,
  -- ,[DayNumberOfWeek]

  [EnglishDayNameOfWeek] AS Day,
  -- ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  [WeekNumberOfYear]  As WeekNr, 
  [EnglishMonthName] As month,
  LEFT([EnglishMonthName], 3) AS MonthShort, 
  -- ,[SpanishMonthName]
  -- ,[FrenchMonthName] 
  [MonthNumberOfYear] AS MonthNr, 
  [CalendarQuarter]  AS Quarter, 
  [CalendarYear] AS Year
  -- ,[CalendarSemester]
  -- ,[FiscalQuarter]
  -- ,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear >= 2019
