-- Create database
CREATE DATABASE IF NOT EXISTS hotwheels_store;
USE hotwheels_store;

-- Customer table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    address TEXT,
    phone VARCHAR(20)
);

-- Product table
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    model_name VARCHAR(100) NOT NULL,
    color VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL CHECK (stock_quantity >= 0)
);

-- Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- OrderItem table
CREATE TABLE OrderItem (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price_at_purchase DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Supplier table
CREATE TABLE Supplier (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100),
    contact_phone VARCHAR(20)
);

-- RestockRequest table
CREATE TABLE RestockRequest (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    supplier_id INT NOT NULL,
    quantity_requested INT NOT NULL,
    request_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    fulfilled BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);
