-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT p.PlaylistId, p.Name, COUNT(pt.TrackId) AS [Track Count]
FROM Playlist p
LEFT JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId, p.Name

