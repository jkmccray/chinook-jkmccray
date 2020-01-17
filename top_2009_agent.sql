-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?
-- Hint: Use the MAX function on a subquery.

SELECT TOP 1 e.EmployeeId, e.FirstName, e.LastName, COUNT(i.InvoiceId) AS [Sales in 2009]
FROM Employee e 
LEFT JOIN Customer c on c.SupportRepId = e.EmployeeId
LEFT JOIN Invoice i on c.CustomerId = i.CustomerId
WHERE YEAR(i.InvoiceDate) = 2009
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY [Sales in 2009] DESC
