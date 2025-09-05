-- Use database (create if not exists)
CREATE DATABASE IF NOT EXISTS cafe_coffee_day;
USE cafe_coffee_day;

-- 🔹 Step 1: Drop tables in correct order
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS menu_items;
DROP TABLE IF EXISTS users;

-- 🔹 Step 2: Create users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert default user SABARI
INSERT INTO users (username, password, mobile)
VALUES ('SABARI', '1234', '7695894003');

-- 🔹 Step 3: Create menu_items table
CREATE TABLE menu_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Insert fresh menu items
INSERT INTO menu_items (item_name, price) VALUES
('Cappuccino', 149),
('Café Latte', 159),
('Espresso', 119),
('Chicken Tikka Sandwich', 199),
('Cheese Garlic Bread', 129),
('Classic Veg Burger', 169),
('Choco Lava Cake', 149),
('Muffins', 99),
('Brownie with Ice Cream', 179),
('Lemon Iced Tea', 119),
('Mango Smoothies', 149),
('Chocolate Milk Shake', 169);

-- 🔹 Step 4: Create orders table (linked to users)
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    item_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (username) REFERENCES users(username) ON DELETE CASCADE
);

-- 🔹 Step 5: Verify
SELECT * FROM users;
SELECT * FROM menu_items;
SELECT * FROM orders;
