--line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.InvoiceLineId AS [Invoice Line Item], t.Name AS [Purchased Track Name], ar.Name AS [Artist Name]
FROM Track t
INNER JOIN InvoiceLine il on il.TrackId = t.TrackId
LEFT JOIN Album al on al.AlbumId = t.AlbumId
LEFT JOIN Artist ar on ar.ArtistId = al.ArtistId