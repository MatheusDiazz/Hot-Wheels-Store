- Insert customers
INSERT INTO Customer (Name, Email, Address, Phone) VALUES
('John Doe', 'john@example.com', '123 Elm Street', '555-1234'),
('Jane Smith', 'jane@example.com', '456 Oak Avenue', '555-5678'),
('Alice Johnson', 'alice@example.com', '789 Pine Road', '555-8765'),
('Bob Brown', 'bob@example.com', '101 Maple Drive', '555-4321'),
('Charlie Davis', 'charlie@example.com', '202 Birch Lane', '555-6789');

-- Insert products
INSERT INTO Product (ModelName, Color, Price) VALUES
('Hot Wheel 1', 'Red', 1.99),
('Hot Wheel 2', 'Blue', 2.49),
('Hot Wheel 3', 'Green', 3.29),
('Hot Wheel 4', 'Yellow', 2.79),
('Hot Wheel 5', 'Purple', 2.99),
('Hot Wheel 6', 'Black', 1.89),
('Hot Wheel 7', 'Orange', 2.19),
('Hot Wheel 8', 'Pink', 2.59),
('Hot Wheel 9', 'White', 3.49),
('Hot Wheel 10', 'Silver', 3.99);

-- Insert inventory (Stock levels)
INSERT INTO Inventory (ProductID, Quantity) VALUES
(1, 50),
(2, 30),
(3, 20),
(4, 40),
(5, 60),
(6, 100),
(7, 80),
(8, 70),
(9, 25),
(10, 15);

-- Insert suppliers
INSERT INTO Supplier (Name, ContactEmail, ContactPhone) VALUES
('ToyCo', 'contact@toyco.com', '555-1122'),
('SuperToys', 'contact@supert.com', '555-2233'),
('PlayWorld', 'contact@playworld.com', '555-3344');

-- Insert orders
INSERT INTO Orders (CustomerID, TotalAmount) VALUES
(1, 15.49),
(2, 12.99),
(3, 30.79),
(4, 22.59),
(5, 18.79);

-- Insert order items (each order with products)
INSERT INTO OrderItem (OrderID, ProductID, Quantity, PriceAtPurchase) VALUES
(1, 1, 3, 1.99),
(1, 2, 2, 2.49),
(2, 3, 1, 3.29),
(2, 4, 1, 2.79),
(3, 5, 2, 2.99),
(3, 6, 1, 1.89),
(4, 7, 1, 2.19),
(4, 8, 2, 2.59),
(5, 9, 3, 3.49),
(5, 10, 1, 3.99);

-- Insert restock requests
INSERT INTO RestockRequest (ProductID, SupplierID, QuantityRequested) VALUES
(1, 1, 100),
(2, 2, 50),
(3, 3, 75),
(4, 1, 60),
(5, 2, 40);
