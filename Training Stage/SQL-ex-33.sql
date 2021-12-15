-- Укажите корабли, потопленные в сражениях в Северной Атлантике (North Atlantic). 
-- Вывод: ship. 
SELECT Outcomes.ship
FROM Outcomes 
LEFT JOIN Ships ON Outcomes.ship = Ships.name
WHERE Outcomes.battle LIKE '%North Atlantic%' AND result = 'sunk'

