CREATE DATABASE ORDER_ITEMS_DETAILS;
USE ORDER_ITEMS_DETAILS;
-- Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

/*Inserting VALUES TO THE Cusrtomers Tables   */

INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Ravi Kumar', 'Hyderabad'),
(2, 'Priya Sharma', 'Delhi'),
(3, 'Amit Verma', 'Mumbai'),
(4, 'Sneha Reddy', 'Chennai'),
(5, 'Karthik Iyer', 'Bangalore'),
(6, 'Neha Singh', 'Pune'),
(7, 'Vikram Das', 'Kolkata'),
(8, 'Anjali Mehta', 'Ahmedabad'),
(9, 'Suresh Patil', 'Nagpur'),
(10, 'Divya Nair', 'Kochi');

SELECT * FROM Customers;


-- Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

/*Inserting The Values To The Orders Table*/

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(101, 1, '2025-01-05', 3200.50),
(102, 2, '2025-01-12', 5800.00),
(103, 3, '2025-02-03', 1500.75),
(104, 4, '2025-02-10', 7200.00),
(105, 5, '2025-03-01', 2500.00),
(106, 6, '2025-03-15', 8900.00),
(107, 7, '2025-04-05', 4300.25),
(108, 8, '2025-04-18', 6700.00),
(109, 9, '2025-05-02', 1200.00),
(110, 10, '2025-05-20', 9999.99);
SELECT * FROM Orders ;

-- OrderItems table
CREATE TABLE OrderItems (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

/*Inserting the Values To The OrderItems Table*/

INSERT INTO OrderItems (item_id, order_id, product_name, quantity, price) VALUES
(1, 101, 'Wireless Mouse', 2, 800.25),
(2, 102, 'Laptop Bag', 1, 1500.00),
(3, 103, 'USB-C Cable', 3, 500.25),
(4, 104, 'Bluetooth Headphones', 2, 3600.00),
(5, 105, 'Gaming Keyboard', 1, 2500.00),
(6, 106, 'Smartphone', 1, 8900.00),
(7, 107, 'External Hard Drive', 1, 4300.25),
(8, 108, 'Tablet', 1, 6700.00),
(9, 109, 'Notebook', 4, 300.00),
(10, 110, '4K Monitor', 1, 9999.99);
SELECT * FROM  OrderItems

