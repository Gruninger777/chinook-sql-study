-- Faixas mais vendidas
-- Ranking das músicas com maior faturamento

SELECT TOP 10
    t.Name AS Musica,
    SUM(il.UnitPrice * il.Quantity) AS [Total Faturado],
    SUM(il.Quantity) AS [Quantidade Vendida]
FROM Track t
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
GROUP BY t.TrackId, t.Name
ORDER BY [Total Faturado] DESC;