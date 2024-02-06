-- 1) Selezione di tutti i prodotti (tutti i campi)
GO
SELECT * FROM Products
-- fine
-- 2) Selezione di tutti i prodotti con uno quantità disponibile (UnitsInStock) di almeno 40 pezzi
GO
SELECT * FROM Products WHERE UnitsInStock >= 40
-- fine
--3) Selezione di tutti i clienti (Employees) che abitano a Londra
GO
SELECT * FROM Employees WHERE City = 'London'
-- fine
-- 4) Selezione di tutti gli ordini, ordinati in ordine decrescente per spese di trasporto (Freight)
GO
SELECT * FROM Orders ORDER BY Freight desc
-- fine
-- 5) Selezione degli ordini il cui importo del trasporto è superiore a 90 e inferiore i 200
GO
SELECT * FROM Orders WHERE Freight > 90 and Freight < 200 ORDER BY Freight ASC
-- fine
-- 6) Selezione di tutti i prodotti la cui categoria è "1"
GO
SELECT * FROM Products WHERE CategoryID = 1  ORDER BY ProductName asc
-- fine
-- 7) Selezione di tutte le righe dei dettagli degli ordini che hanno applicato uno sconto
GO
SELECT * FROM [Order Details] WHERE Discount > 0 ORDER BY UnitPrice asc
-- fine
-- 8) Selezione di tutti gli ordini del cliente con ID "BOTTM" le cui spese di trasporto superano l'importo di 50
GO
SELECT * FROM Orders WHERE CustomerID = 'BOTTM' and Freight > 50 ORDER BY Freight asc