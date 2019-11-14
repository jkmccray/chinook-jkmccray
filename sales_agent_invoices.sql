--sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT i.InvoiceId, e.EmployeeId, e.FirstName + ' ' + e.LastName AS SalesAgentName
FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e ON c.SupportRepId = e.EmployeeId