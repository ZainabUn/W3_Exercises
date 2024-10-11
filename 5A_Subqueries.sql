
# 1. What is the product name(s) of the most expensive products? HINT: Find the max price 
#in a subquery and then use that value to find products whose price equals that value.
Select ProductName,UnitPrice from products
WHERE UnitPrice=(Select Max(UnitPrice) from Products);

-- 2. What is the product name(s) and categories of the most expensive products? HINT: 
-- Find the max price in a subquery and then use that in your more complex query that 
-- joins products with categories
Select ProductName,CategoryID,CategoryName,UnitPrice from products
JOIN categories using (CategoryID)
WHERE UnitPrice=(SELECT MAX(UnitPrice) from products);

-- 3. What is the order id, shipping name and shipping address of all orders shipped via 
-- "Federal Shipping"? HINT: Find the shipper id of "Federal Shipping" in a subquery and 
-- then use that value to find the orders that used that shipper.

Select OrderID, ShipName,ShipAddress from orders
Join shippers ON  orders.ShipVia=shippers.ShipperID;

-- 4. What are the order ids of the orders that ordered "Sasquatch Ale"? HINT: Find the 
-- product id of "Sasquatch Ale" in a subquery and then use that value to find the 
-- matching orders from the 'order details' table. Because the 'order details' table has a 
-- space in its name, you will need to surround it with back ticks in the FROM clause.
Select OrderID from `order details`
JOIN products Using (ProductID)
WHERE ProductID=(Select ProductID from products WHERE ProductName LIKE '%Sasquatch Ale%');


-- 5. What is the name of the employee that sold order 10266?
Select firstName,LastName,OrderID from employees
JOIN orders Using(EmployeeID)
WHERE OrderID= 10266;

-- 6. What is the name of the customer that bought order 10266
Select CompanyName from customers
JOIN orders Using(CustomerID)
WHERE OrderID= 10266;



