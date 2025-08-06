-- Create Database
CREATE DATABASE ecommerce;
USE ecommerce;

 ### SECTION A : DDL (DATA DEFINATION LANGUAGE)
-- Create table for customer,product and order
-- 1.create customer table
CREATE TABLE Customer(customer_id int primary key,name varchar(20),email varchar(30),city varchar(20),registration_date date);

-- 2.Create product table
CREATE TABLE Product(product_id int primary key,product_name varchar(20),category varchar(20),price decimal (10,2),stock int);

-- 3.Create orders table
-- primary key : A Primary Key is used to uniquely identify each record in a table.
-- foreign key : A foreign key is a column in one table that links to the primary key in another table.

CREATE TABLE Orders(order_id INT PRIMARY KEY,
    customer_id int,
    product_id int,
    quantity int,
    order_date date,
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- 2.Change the datatype of the 'price' column in Products to support 3 decimal places.
ALTER TABLE Product MODIFY COLUMN price DECIMAL(10,3);

-- 3.Drop the 'registration_date' column from Customers.
ALTER TABLE Customer DROP COLUMN registration_date;

### SECTION B : DML (DATA MANIPULATION LANGUAGE)
-- 1.Insert 5 sample records into each table.
-- customer
INSERT INTO Customer VALUES (1, 'Neha Rikame', 'neha@gmail.com', 'Pune');
INSERT INTO Customer VALUES (2, 'Mohini Argade', 'mohini12@gmail.com', 'Mumbai');
INSERT INTO Customer VALUES (3, 'Khushi Chaursia', 'khushi@gmail.com', 'Thane');
INSERT INTO Customer VALUES (4, 'Anu Patil', 'anu28@gmail.com', 'Dehli');
INSERT INTO Customer VALUES (5, 'Ankita jadhv', 'ankita56@gmail.com', 'Nashik');
SET SQL_SAFE_UPDATES=0;
UPDATE Customer SET name = 'Ravi Sharma' WHERE name = 'Ankita Jadhav';
-- Product
INSERT INTO Product VALUES (1, 'Speaker', 'Electronics', 499.990, 50);
INSERT INTO Product VALUES (2, 'T-Shirt', 'Apparel', 299.000, 100);
INSERT INTO Product VALUES (3, 'Laptop', 'Electronics', 54999.990, 30);
INSERT INTO Product VALUES (4, 'Notebook', 'Stationery', 59.990, 200);
INSERT INTO Product VALUES (5, 'Headphones', 'Electronics', 1199.990, 75);

-- Order
INSERT INTO Orders VALUES (101, 1, 1, 2, '2024-01-10', 'Delivered');
INSERT INTO Orders VALUES (102, 2, 3, 1, '2024-01-15', 'Pending');
INSERT INTO Orders VALUES (103, 3, 2, 3, '2024-02-10', 'Shipped');
INSERT INTO Orders VALUES (104, 1, 5, 1, '2024-03-01', 'Delivered');
INSERT INTO Orders VALUES (105, 4, 4, 5, '2024-03-20', 'Cancelled');

-- 2.Update the stock of a specific product after a sale.
UPDATE Product
SET stock = stock - 3
WHERE product_id = 2; 

-- 3. Delete a customer who hasn't placed any order.

-- 4.Change the email of a customer named 'Ravi Sharma'.
UPDATE Customer SET email = 'ravi.sharma@newmail.com' WHERE name = 'Ravi Sharma';

-- 5. Increase the price of products in the 'Apparel' category by 15%.
UPDATE Product SET price = price * 1.15 WHERE category = 'Apparel';

## SECTION C: DCL(DATA CONTROL LANGUAGE)
-- create user
create user product_manager identified by 'Neha@7531';

-- . Grant SELECT and UPDATE privileges on the Products table to a user called 'product_manager'.
GRANT SELECT,UPDATE,DELETE ON Product TO product_manager;

-- Revoke DELETE privilege from 'product_manager'.
REVOKE DELETE ON Product FROM product_manager; 

-- create admin_user
create user admin_user identified by 'admin1234';
-- Grant all privileges on Orders table to 'admin_user'.
grant insert,update,delete on Orders to admin_user;


## SECTION E : WHERE CLAUSE
-- . Use WHERE to list all products in the 'Books' category.
SELECT * FROM Product WHERE category = 'Books';

--  Find products with price BETWEEN 200 AND 800.
SELECT * FROM Product WHERE price >=200 and price <=800;

-- Find customers who registered BETWEEN '2023-01-01' AND '2023-12-31'.
ALTER TABLE Customer ADD registration_date date;
update Customer set registration_Date = '2023-10-11' where customer_id = 1;
update Customer set registration_Date = '2023-01-01' where customer_id = 3;
update Customer set registration_Date = '2023-12-31' where customer_id = 2;
update Customer set registration_Date = '2024-10-23' where customer_id = 4;
update Customer set registration_Date = '2023-01-01' where customer_id = 5;
SELECT * FROM Customer WHERE registration_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Use LIMIT to display any 3 products from the Electronics category.
SELECT * FROM Product WHERE category = 'Electronics' LIMIT 3;

## DTL(DATA TRANSACTION LANGUAGE)
-- Create a transaction where a customer places an order and product stock is updated accordingly.Rollback if the stock is insufficient.


-- Use COMMIT after multiple inserts in the Orders table.
start transaction;
insert into Orders values(106, 3, 3, 6, '2025-02-17', 'Cancelled');
insert into Orders values(107,4,4,5,'2023-03-15','pending');
commit;

-- Use SAVEPOINT and ROLLBACK to revert a partial change within a transaction.
start transaction;
INSERT INTO Product VALUES (7, 'Headphones', 'Electronics', 15499.00, 77);
savepoint s1;
INSERT INTO Orders VALUES (7, 3,4,3,'2025-10-11','Pending');
rollback to s1;
commit;

-- Find products with price BETWEEN 200 AND 800.
SELECT * FROM  Product WHERE price BETWEEN 200 and 800;

-- Use ORDER BY to list products by ascending stock value.
SELECT * FROM Product ORDER BY stock ASC;


