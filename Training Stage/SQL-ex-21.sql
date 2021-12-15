-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.   
SELECT prod.maker, MAX(pc.price)
FROM Product AS prod JOIN PC AS pc ON prod.model = pc.model
WHERE pc.model IN (SELECT model FROM Product)
GROUP BY prod.maker
