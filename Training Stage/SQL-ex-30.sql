-- ¬ предположении, что приход и расход денег на каждом пункте приема фиксируетс€ произвольное число раз (первичным ключом в таблицах €вл€етс€ столбец code), 
-- требуетс€ получить таблицу, в которой каждому пункту за каждую дату выполнени€ операций будет соответствовать одна строка.
¬ывод: point, date, суммарный расход пункта за день (out), суммарный приход пункта за день (inc). ќтсутствующие значени€ считать неопределенными (NULL). 
SELECT point, [date], SUM(outs), SUM(incs) FROM (
SELECT point, [date], SUM(out) AS outs, null incs FROM Outcome GROUP BY point, [date] 
UNION
SELECT point, [date], null, SUM(inc) FROM Income GROUP BY point, [date]
) temp_table GROUP BY point, [date]

