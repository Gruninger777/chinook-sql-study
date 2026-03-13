-- Quantidade de clientes por país
-- Mostra onde estão concentrados os clientes

SELECT
    c.Country AS Pais,
    COUNT(*) AS [Quantidade de Clientes]
FROM Customer c
GROUP BY c.Country
ORDER BY [Quantidade de Clientes] DESC, Pais;