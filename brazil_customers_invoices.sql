--brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

SELECT FirstName + ' ' + LastName AS FullName, i.InvoiceId AS InvoiceId, InvoiceDate, BillingCountry
FROM Invoice i
LEFT JOIN Customer c on i.CustomerId = c.CustomerId
WHERE c.Country = 'Brazil'