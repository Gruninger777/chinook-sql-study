-- Artista com maior faturamento

SELECT TOP 1
    a.Name AS Artista,
    SUM(il.UnitPrice * il.Quantity) AS [Total Faturado]
FROM Artist a
JOIN Album al
    ON al.ArtistId = a.ArtistId
JOIN Track t
    ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
GROUP BY a.ArtistId, a.Name
ORDER BY [Total Faturado] DESC;