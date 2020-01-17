-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

SELECT e.EmployeeId, e.FirstName, e.LastName, COUNT(i.InvoiceId)
FROM Employee e 
LEFT JOIN Customer c on c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i on c.CustomerId = i.InvoiceId
GROUP BY e.EmployeeId, e.FirstName, e.LastName