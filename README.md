Cafe Europa Management System

Project Description:

Cafe Europa is a desktop application designed to streamline the ordering process for a small cafe. Built with Python and the Tkinter library for its graphical user interface, this system provides a secure and intuitive platform for customers to log in, browse the menu, and place orders. The application seamlessly integrates with a MySQL database to manage user accounts, menu items, and order history, demonstrating a solid understanding of database management and secure user authentication.

Key Features:

1. Secure User Authentication: Implements a robust signup and login system using password hashing and salting to protect user credentials.

2. Dynamic Menu Display: Fetches menu items and their prices directly from a MySQL database, ensuring the menu is always up-to-date.

3. Real-time Cart Management: Allows users to add and remove items from their order, with a live summary of the total cost.

4. Order Processing: Finalizes orders and saves the details to both the database and a local text file for record-keeping.

5. Modular Architecture: The code is structured into logical classes for a clean and maintainable codebase, including a dedicated DatabaseManager class to handle all database interactions efficiently.


Prerequisites:

Before running the application, ensure you have the following installed:

Python 3.x

MySQL Server

Python libraries:

mysql-connector-python

Pillow (for image handling)

Tkinter (included with standard Python installation)


You can install the necessary Python libraries using pip:

pip install mysql-connector-python Pillow



Database Setup:
1. Start your MySQL server.

2. Connect to your MySQL instance using a client of your choice (e.g., MySQL Workbench, command-line).

3. Execute the following SQL commands to create the database and tables for the application:

   

CREATE DATABASE cafe_coffee_day;

USE cafe_coffee_day;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    salt VARCHAR(255) NOT NULL,
    mobile VARCHAR(20)
);

CREATE TABLE menu_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: Insert initial menu items
INSERT INTO menu_items (item_name, price) VALUES
('Espresso', 150.00),
('Cappuccino', 180.00),
('Latte', 200.00),
('Mocha', 220.00),
('Americano', 160.00),
('Iced Coffee', 250.00),
('Hot Chocolate', 210.00),
('Croissant', 100.00),
('Chocolate Cake', 300.00);



Update the DB_CONFIG dictionary in the cafe_app.py file with your MySQL server credentials.


How to Run?

Navigate to the project directory in your terminal.



Run the main application script:

python cafe_app.py

Author:

SABARI. R

Ph:No: 7695894003
