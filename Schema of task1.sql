-- Create Database
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Customer Table
CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

-- Product Table
CREATE TABLE Product (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT DEFAULT 0
);

-- Orders Table
CREATE TABLE Orders (
    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- Order_Item Table
CREATE TABLE Order_Item (
    OrderItem_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

-- Payment Table
CREATE TABLE Payment (
    Payment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Order_ID INT,
    Payment_Method VARCHAR(50),
    Payment_Date DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

-- Insert Customers
INSERT INTO Customer (Name, Email, Phone, Address) VALUES
('Amit Kumar', 'amit@example.com', '9876543210', 'Delhi'),
('Priya Sharma', 'priya@example.com', '9123456789', 'Mumbai'),
('Rahul Mehta', 'rahul@example.com', '9988776655', 'Bangalore');

-- Insert Products
INSERT INTO Product (Name, Price, Stock) VALUES
('Laptop', 55000.00, 20),
('Headphones', 2500.00, 50),
('Keyboard', 1200.00, 30);

-- Insert Orders
INSERT INTO Orders (Customer_ID, Order_Date, Total_Amount) VALUES
(1, '2025-10-18', 57500.00),
(2, '2025-10-19', 2500.00);

-- Insert Order Items
INSERT INTO Order_Item (Order_ID, Product_ID, Quantity, Price) VALUES
(1, 1, 1, 55000.00),
(1, 2, 1, 2500.00),
(2, 2, 1, 2500.00);

-- Insert Payments
INSERT INTO Payment (Order_ID, Payment_Method, Payment_Date, Amount) VALUES
(1, 'Credit Card', '2025-10-18', 57500.00),
(2, 'UPI', '2025-10-19', 2500.00);

Select * from Customer;
select * from Product;
select * from Orders;
select * from Order_Item;
select * from Payment;

