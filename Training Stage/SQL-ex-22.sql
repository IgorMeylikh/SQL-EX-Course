-- ��� ������� �������� �������� ��, ������������ 600 ���, ���������� ������� ���� �� � ����� �� ���������. 
-- �������: speed, ������� ����.  
SELECT speed, AVG(price) AS Avg_price
FROM PC 
WHERE speed > 600
GROUP BY speed
