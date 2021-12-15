-- Используя таблицу Product, определить количество производителей, выпускающих по одной модели. 
SELECT COUNT(maker) AS qty
FROM
(SELECT maker 
FROM Product
GROUP BY maker
HAVING COUNT(*) = 1) AS temp_table
