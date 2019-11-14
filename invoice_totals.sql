--invoice_totals.sql: Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT i.Total AS InvoiceTotal, c.FirstName + ' ' + c.LastName AS CustomerName, BillingCountry, e.FirstName + ' ' + e.LastName AS SalesAgent
FROM Invoice i
LEFT JOIN Customer c ON c.CustomerId = i.CustomerId
LEFT JOIN Employee e ON e.EmployeeId = c.SupportRepId