-- Artista com maior faturamento
-- Soma o valor vendido das faixas de cada artista

SELECT TOP 10
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