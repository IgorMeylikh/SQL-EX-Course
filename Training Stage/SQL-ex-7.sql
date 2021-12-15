-- Ќайдите номера моделей и цены всех имеющихс€ в продаже продуктов (любого типа) производител€ B (латинска€ буква). 
SELECT PC.model, PC.price
FROM Product INNER JOIN PC ON Product.model = PC.model
WHERE Product.maker = 'B'
UNION
SELECT Laptop.model, Laptop.price
FROM Product INNER JOIN Laptop ON Product.model = Laptop.model
WHERE Product.maker = 'B'
UNION
SELECT Printer.model, Printer.price
FROM Product INNER JOIN Printer ON Product.model = Printer.model
WHERE Product.maker = 'B'


