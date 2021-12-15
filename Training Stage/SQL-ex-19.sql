-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана. 
SELECT prod.maker, AVG(l.screen) AS screen
FROM Product AS prod JOIN Laptop AS l ON prod.model = l.model
GROUP BY prod.maker


