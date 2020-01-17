-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name, a.Title, mt.Name, g.Name
FROM Track t
LEFT JOIN Album a on a.AlbumId = t.AlbumId
LEFT JOIN MediaType mt on mt.MediaTypeId = t.MediaTypeId
LEFT JOIN Genre g on g.GenreId = t.GenreId