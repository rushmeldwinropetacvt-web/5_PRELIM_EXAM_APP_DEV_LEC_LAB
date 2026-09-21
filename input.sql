-- 1. Categories Table
CREATE TABLE Categories (
    id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- 2. Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    country VARCHAR(100)
);

-- 3. Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    item VARCHAR(100),
    amount DECIMAL(10,2),
    customer_id INT
);

-- 4. Shippings Table
CREATE TABLE Shippings (
    shipping_id INT PRIMARY KEY,
    status VARCHAR(50),
    customer_id INT
);

-- 5. Products Table (Added to meet the 5-table rule)
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

-- Insert sample French Fries data into Customers
INSERT INTO Customers VALUES (1, 'Ana', 'Reyes', 20, 'Philippines');
INSERT INTO Customers VALUES (2, 'Mark', 'Santos', 22, 'Philippines');
INSERT INTO Customers VALUES (3, 'Bea', 'Alonzo', 25, 'Philippines');
INSERT INTO Customers VALUES (4, 'John', 'Cruz', 21, 'Philippines');
INSERT INTO Customers VALUES (5, 'Liza', 'Soberano', 23, 'Philippines');

-- Insert sample French Fries data into Orders
INSERT INTO Orders VALUES (1, 'Mega Cheese Fries', 100.00, 1);
INSERT INTO Orders VALUES (2, 'Regular BBQ Fries', 75.00, 2);
INSERT INTO Orders VALUES (3, 'Sour Cream Fries', 85.00, 3);
INSERT INTO Orders VALUES (4, 'Blue Lemonade', 45.00, 4);
INSERT INTO Orders VALUES (5, 'Classic Fries', 60.00, 5);