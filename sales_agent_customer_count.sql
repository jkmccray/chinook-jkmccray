-- sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.EmployeeId, e.FirstName, e.LastName, COUNT(c.CustomerId) AS [Customer Count]
FROM Employee e
LEFT JOIN Customer c on c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName