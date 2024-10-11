#1. What is the price of the cheapest item that Northwind sells
Select Min(UnitPrice) FROM products;

#2. What is the average price of items that Northwind sells?
Select AVG(UnitPrice) FROM products;

-- 3. What is the price of the most expensive item that Northwind sells?
Select MAX(UnitPrice) FROM products;

-- 4. What is the sum of all the employee's salaries?
Select SUM(Salary) from employees;

-- 5. Which employee makes the highest salary, and which employee makes the lowest?
 Select Max(Salary) AS 'Highest Salary', Min(Salary) AS 'minimum salary' from employees;
 
 Select FirstName,LastName FROM employees
 WHERE MAX(salary) ;

-- Select FirstName,LastName , MAX(Salary),MIN(Salary) FROM employees
-- WHERE Salary= (Select max(salary)from employees) 
-- OR Salary=(Select min(Salary) from employees);  

-- Select FirstName,LastName , Salary FROM employees
-- WHERE Salary IN ( 'max(salary)', 'min(Salary)' ); 

-- Select max(Salary), min(Salary), FirstName,LastName FROM employees
-- HAVING Salary <> max(northwind.employees.Salary);
#select employe where max and min

-- Select Concat(FirstName,' ', LastName, ' ',Salary) from employees
-- WHERE Max(Salary)=3119;

-- GROUP BY EmployeeID
-- ORDER BY Salary DESC;


-- 6. What is the supplier ID of each supplier and the number of items they supply? (You can
-- answer this query by only looking at the products table.)
Select DISTINCT(SupplierID),ProductName, ProductID FROM products
ORDER BY SupplierID;

-- 7. What is the category ID of each category and the average price of each item in the
-- category? (You can answer this query by only looking at the products table.)
Select categoryID,AVG(UnitPrice) FROM products
GROUP BY categoryID;

-- 8. For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each
-- supplier and the number of items they supply? (Again, you can answer this query by
-- only looking at the products table.)

SELECT SupplierID, count(ProductName) FROM products
GROUP BY SupplierID
HAVING count(ProductName) >= '5';


-- 9. List the product id, product name, and inventory value (calculated by multiplying unit
-- price by the number of units on hand). Sort the results in descending order by value. If
-- two or more have the same value, order by product name.
Select ProductID, ProductName, (UnitPrice*UnitsInStock) AS 'inventory Value' FROM products
ORDER BY ProductName;
