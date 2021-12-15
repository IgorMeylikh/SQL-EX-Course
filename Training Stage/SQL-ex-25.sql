-- Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, 
-- имеющих наименьший объем RAM. 
-- Вывести: Maker 
SELECT DISTINCT maker FROM PC JOIN Product ON Product.model = PC.model
WHERE maker IN (
    (SELECT DISTINCT maker FROM Product WHERE type = 'printer')
)
AND speed = (SELECT MAX(speed) FROM PC WHERE ram = (SELECT MIN(ram) FROM PC)) AND ram = (SELECT MIN(ram) FROM PC)
