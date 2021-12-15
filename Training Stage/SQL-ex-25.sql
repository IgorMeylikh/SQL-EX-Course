-- ������� �������������� ���������, ������� ���������� �� � ���������� ������� RAM � � ����� ������� ����������� ����� ���� ��, 
-- ������� ���������� ����� RAM. 
-- �������: Maker 
SELECT DISTINCT maker FROM PC JOIN Product ON Product.model = PC.model
WHERE maker IN (
    (SELECT DISTINCT maker FROM Product WHERE type = 'printer')
)
AND speed = (SELECT MAX(speed) FROM PC WHERE ram = (SELECT MIN(ram) FROM PC)) AND ram = (SELECT MIN(ram) FROM PC)
