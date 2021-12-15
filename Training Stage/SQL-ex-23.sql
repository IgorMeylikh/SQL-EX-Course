-- Найдите производителей, которые производили бы как ПК
-- со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
-- Вывести: Maker  
SELECT prod.maker
FROM Product AS prod JOIN PC AS pc ON prod.model = pc.model
WHERE pc.speed >= 750
GROUP BY prod.maker
INTERSECT
SELECT prod.maker
FROM Product AS prod JOIN Laptop AS l ON prod.model = l.model
WHERE l.speed >= 750
GROUP BY prod.maker

