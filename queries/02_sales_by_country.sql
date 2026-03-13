-- Faturamento por país
-- Mostra quanto cada país gerou em vendas no banco Chinook

SELECT
    i.BillingCountry AS Pais,
    SUM(i.Total) AS [Total Faturado]
FROM Invoice i
GROUP BY i.BillingCountry
ORDER BY [Total Faturado] DESC;