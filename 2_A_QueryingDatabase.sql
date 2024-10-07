#question 1
SELECT ProductID,ProductName,UnitPrice FROM northwind.products;

#question 2
SELECT ProductName,UnitPrice
FROM northwind.products
Where UnitPrice<=7.50;

#question3
SELECT ProductName AS 'Products not in Stock and on Reorder', UnitsInStock,UnitsOnOrder FROM northwind.products
WHERE UnitsInStock=0 AND UnitsOnOrder>=1;

#question 4
#the category table is used to catogorized. Number 8 is used for seafood
SELECT * FROM northwind.products
WHERE CategoryID=8;

#question 5
SELECT * FROM northwind.employees
WHERE Title LIKE '%Manager%';

#question 6 The supplier table has all suppliers with their id assigned
SELECT * FROM northwind.products
WHERE SupplierID=4;


