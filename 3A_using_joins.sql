#question 1
SELECT productID, productName, 	UnitPrice,CategoryName from products
JOIN  categories USING (CategoryID)
ORDER BY CategoryName,ProductName;

#question 2
SELECT productID, productName, 	UnitPrice, CompanyName from products
JOIN  suppliers USING (SupplierID)
WHERE UnitPrice >=75
ORDER BY ProductName;

#question 3
SELECT productID, productName, 	UnitPrice,CategoryName,CompanyName from products
JOIN  categories USING (CategoryID)
JOIN  suppliers USING (SupplierID)
ORDER BY ProductName;

#question 4
SELECT OrderID,ShipName,ShipAddress FROM northwind.orders
WHERE ShipCountry ='Germany';

#question 5: List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"
#OrderID,ShipName,ShipAddress,OrderDate

#want to get back to this code to understand how to make multiple joins work
-- SELECT OrderID,Shipname, ShipAddress, OrderDate FROM northwind.orders
-- JOIN customers using (customerID)
-- JOIN suppliers using (CompanyName)
-- JOIN products ON suppliers.SupplierID= products.SupplierID
-- Where ProductID= 34;

Select OrderID,ShipName,ShipAddress,OrderDate FROM orders
JOIN `order details` Using(OrderID)
WHERE ProductID=34;



