-- top_agent.sql: Which sales agent made the most in sales over all?

SELECT TOP 1 e.EmployeeId, e.FirstName, e.LastName, COUNT(i.InvoiceId) AS [Number of Sales]
FROM Employee e 
LEFT JOIN Customer c on c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i on c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY [Number of Sales] DESC