-- top_country.sql: Which country's customers spent the most?

SELECT TOP 1 i.BillingCountry, SUM(i.Total) AS [Total Sales per Country]
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY [Total Sales per Country] DESC