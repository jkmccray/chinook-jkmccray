-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.

SELECT TOP 1 WITH TIES t.TrackId, t.Name, COUNT (il.InvoiceLineId) AS [Number of Purchases]
FROM Track t
LEFT JOIN InvoiceLine il ON t.TrackId = il.TrackId
LEFT JOIN Invoice i on i.InvoiceId = il.InvoiceId
WHERE YEAR(i.InvoiceDate) = 2013
GROUP BY t.TrackId, t.Name
ORDER BY [Number of Purchases] DESC

