-- ������� ������, � ������� ������ ������ ���� ������� �� ���� ������ (������ ����� ������� � Outcomes). 
SELECT c.class
FROM Classes AS c LEFT JOIN (
    SELECT class, name
    FROM Ships
    UNION
    SELECT ship, ship
    FROM Outcomes
) AS s ON s.class = c.class
GROUP BY c.class
HAVING COUNT(s.name) = 1
