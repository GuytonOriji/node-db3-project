-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select CategoryId, ProductName, CategoryName  from Product
join Category on CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select OrderDate, ShipVia, CompanyName from Orders
join Shipper on ShipVia = Shipper.id
where OrderDate < '2012-08-09'
;
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select ProductName , QuantityPerUnit from Product
join OrderDetail on OrderDetail.ProductId = Product.Id
where OrderDetail.OrderId = '10521'
order by Product.ProductName
;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select CompanyName,LastName from Orders
join Customer on Orders.CustomerId = Customer.Id
join Employee on Orders.EmployeeId = Employee.Id
;



