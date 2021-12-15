-- В предположении, что приход и расход денег на каждом пункте приема фиксируется не чаще одного раза в день [т.е. первичный ключ (пункт, дата)], 
-- написать запрос с выходными данными (пункт, дата, приход, расход). 
-- Использовать таблицы Income_o и Outcome_o. 
SELECT Income_o.point, Income_o.[date], inc, out
FROM Income_o LEFT JOIN Outcome_o ON Outcome_o.point = Income_o.point AND Outcome_o.[date] = Income_o.[date]
UNION
SELECT Outcome_o.point, Outcome_o.[date], inc, out
FROM Income_o RIGHT JOIN Outcome_o ON Outcome_o.point = Income_o.point AND Outcome_o.[date] = Income_o.[date]
