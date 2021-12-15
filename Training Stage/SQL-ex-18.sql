-- Найдите производителей самых дешевых цветных принтеров. 
-- Вывести: maker, price 
SELECT DISTINCT pc.maker, pr.price
FROM Product AS pc JOIN Printer AS pr ON pc.model = pr.model
WHERE pr.color = 'y' AND pr.price = (SELECT MIN(price) FROM Printer WHERE color = 'y')

