-- � ������� Product ����� ������, ������� ������� ������ �� ���� ��� ������ �� ��������� ���� (A-Z, ��� ����� ��������).
-- �����: ����� ������, ��� ������.
SELECT model, type
FROM Product
WHERE model NOT like '%[^A-Za-z]%' OR model NOT LIKE '%[^0-9]%'