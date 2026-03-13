-- Faturamento por ano
-- Agrupa as vendas por ano da fatura

SELECT
    YEAR(i.InvoiceDate) AS Ano,
    SUM(i.Total) AS [Total Faturado]
FROM Invoice i
GROUP BY YEAR(i.InvoiceDate)
ORDER BY Ano;