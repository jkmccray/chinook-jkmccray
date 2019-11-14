--total_sales_{year}.sql: What are the respective total sales for each of those years?

SELECT Sum(Total) [Total Sales for 2009 and 2011] 
FROM Invoice
WHERE YEAR(InvoiceDate) = 2009 OR YEAR(InvoiceDate) = 2011