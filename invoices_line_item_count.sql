-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT i.InvoiceId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.Total, COUNT(il.InvoiceLineId) AS [Number of Invoice Line Items]
FROM Invoice i
LEFT JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId, i.InvoiceDate, i.BillingAddress, i.BillingCity, i.BillingState, i.BillingCountry, i.Total