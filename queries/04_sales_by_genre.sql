-- Faturamento por gênero musical
-- Mostra quais gêneros geraram mais receita

SELECT
    g.Name AS Genero,
    SUM(il.UnitPrice * il.Quantity) AS [Total Faturado]
FROM Genre g
JOIN Track t
    ON t.GenreId = g.GenreId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
GROUP BY g.GenreId, g.Name
ORDER BY [Total Faturado] DESC;