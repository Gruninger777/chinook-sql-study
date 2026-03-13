-- Quantidade de clientes por funcionário de suporte
-- Relaciona funcionários e clientes atendidos

SELECT
    e.FirstName + ' ' + e.LastName AS Funcionario,
    COUNT(c.CustomerId) AS [Quantidade de Clientes]
FROM Employee e
LEFT JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId, e.FirstName, e.LastName
ORDER BY [Quantidade de Clientes] DESC;