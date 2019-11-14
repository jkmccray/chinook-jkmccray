--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.

SELECT t.Name AS [Purchased Track Name], il.InvoiceLineId AS [Invoice Line Item]
FROM Track t
INNER JOIN InvoiceLine il on t.TrackId = il.TrackId