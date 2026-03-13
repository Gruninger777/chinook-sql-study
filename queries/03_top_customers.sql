-- Top clientes por valor gasto
-- Soma o total de compras de cada cliente

SELECT TOP 10
    c.FirstName + ' ' + c.LastName AS Cliente,
    c.Country AS Pais,
    SUM(i.Total) AS [Total Gasto]
FROM Customer c
JOIN Invoice i
    ON i.CustomerId = c.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName, c.Country
ORDER BY [Total Gasto] DESC;