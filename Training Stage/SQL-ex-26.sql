-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). 
-- Вывести: одна общая средняя цена. 
WITH Inc_t (price) AS (
SELECT price
FROM PC JOIN Product ON PC.model = Product.model
WHERE PC.model IN (SELECT model FROM Product WHERE maker = 'A')
UNION ALL
SELECT price
FROM Laptop JOIN Product ON Laptop.model = Product.model
WHERE Laptop.model IN (SELECT model FROM Product WHERE maker = 'A')
)
SELECT AVG(price) AS AVG_price FROM Inc_t
