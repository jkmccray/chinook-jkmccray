-- sales_per_country.sql: Provide a query that shows the total sales per country.

SELECT i.BillingCountry, SUM(i.Total) AS [Total Sales per Country]
FROM Invoice i
GROUP BY i.BillingCountry