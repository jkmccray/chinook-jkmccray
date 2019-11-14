--total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

SELECT Count(InvoiceId) [Invoice Count] 
FROM Invoice
WHERE YEAR(InvoiceDate) = 2009 OR YEAR(InvoiceDate) = 2011