-- Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
-- Вывести: type, model, speed 
SELECT DISTINCT p.type, l.model, l.speed
FROM Product AS p, Laptop AS l, PC
WHERE p.type = 'Laptop' AND l.speed < ANY (SELECT MIN(speed) FROM PC)
