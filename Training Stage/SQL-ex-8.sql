-- Найдите производителя, выпускающего ПК, но не ПК-блокноты. 
SELECT maker
    FROM (SELECT DISTINCT maker, type 
     FROM Product 
     WHERE type IN ('PC', 'Laptop')
     ) AS a
    GROUP BY maker
    HAVING COUNT(*) = 1 AND 
      MAX(type) = 'PC'


