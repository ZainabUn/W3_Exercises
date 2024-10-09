#question 1
SELECT ProductID, ProductName, UnitPrice AS Price FROM products
ORDER BY Price ASC;

#question 2
Select * from products
WHERE UnitsInStock>=100
ORDER BY UnitPrice  DESC;

#question 3
/* all code that I tried want to get it to it later
-- Select * from products
-- WHERE UnitsInStock>=100 
-- ORDER BY ProductName DESC;
-- Select ProductName from products
-- GROUP BY 'UnitPrice'
-- ORDER BY ProductName ASC;
-- WHERE UnitPrice = Unit Price
-- Select DISTINCT(UnitPrice), ProductName from products
-- WHERE  UnitsInStock>=100
-- ORDER BY UnitPrice ASC
-- WHERE UnitPrice LIKE ;
*/
#inserted to make sure the product name will be alphabatized correctly
Insert INTO products (ProductName, UnitPrice,UnitsInstock)
Values ('APPles', 25,101);
 
Select ProductName, UnitPrice from products
 WHERE UnitsInStock>=100 
 ORDER BY UnitPrice DESC, ProductName ASC;
 
 #made sure the product name is working in ascending order for same price so will drop test row
 DELETE from products
 WHERE ProductName='APPles';
 

#try with count too afterwards as practice  maybe as in stackoverflow https://stackoverflow.com/questions/1786533/find-rows-that-have-the-same-value-on-a-column-in-mysql

#question 4
SELECT DISTINCT(CustomerID) FROM orders;


#Question to come back, if I wanted all columns but wanted the distinct too would I have to write all columns manually because I cannot use * since I have to do distinct column

#Question 5
Select DISTINCT(CustomerID), ShipCountry FROM orders
ORDER BY ShipCountry;

#Question 6
Select * from products
WHERE UnitsInStock=0 and UnitsOnOrder >=1
ORDER BY ProductName;

#question 7
Select Distinct(Title) from Employees;

#question 8
Select * from employees
Where Salary BETWEEN 2000 AND 2500
Order By Title;
