CREATE DATABASE Bookstore;
USE Bookstore;

-- create table books
CREATE TABLE Book(book_id int primary key,title varchar(25),price decimal(10,2),publication_date date,author_id int,author_name varchar(20));

-- create table author
CREATE TABLE Authors(author_id int primary key,author_name varchar(20),book_id int,book_name varchar(20));

-- craete table orders
CREATE TABLE Orderss(order_id int primary key,book_id int,order_date date,quantity int,author_id int);

-- insert values into the books 
INSERT INTO Book VALUES(1,'The Silent Forest',60.35,'2019-01-10','101','Arjun Mehta'),
                        (2,'Whispering Shadows',120.20,'2015-05-17','102','Aisha Khan'),
                        (3,'Beyond the Horizon',90.00,'2011-02-11','103','Kabir Das'),
                        (4,'The Last Ember',150.20,'2020-10-18','104','Aisha Khan'),
                        (5,'The Silent Forest',50.35,'2009-01-10','105','Nandini Rao'),
                        (6,'Rivers of Time',200.20,'2014-06-20','106','Vikram Patel'),
                        (7,'Beyond the Horizon',90.00,'2011-02-11','107','Kabir Das'),
                        (8,'Echoes in the Rain',150.20,'2020-10-18','108','Meera Joshi'),
                        (9,'The Forgotten Path',190.00,'2010-10-10','109','Ankit Sharma'),
                        (10,'The Silent Forest',90.35,'2016-12-19','110','Ankit Sharma'),
                        (11,'When Stars Collide',250.00,'2015-08-29','111','Priya Nair'),
                        (12,'The Crimson Diary',190.00,'2012-03-12','112','Raghav Varma'),
                        (13,'A Journey Within',98.80,'2010-10-18','113','Tara Iyer'),
                        (14,'Rivers of Time',220.20,'2018-05-19','114','Vikram Patel'),
                        (15,'The Glass Mirror',290.00,'2013-01-11','115','Rohit Sen'),
                        (16,'Echoes in the Rain',180.20,'2021-11-28','116','Meera Joshi'),
                        (17,'The Forgotten Path',290.80,'2019-11-16','117','Tara Iyer'),
                        (18,'A house',490.35,'2022-10-19','118','Sneha Kulkarni'),
                        (19,'When Stars Collide',200.00,'2018-12-29','119','Ankit Sharma'),
                        (20,'A House of Stories',300.00,'2016-08-16','120','Shruti Desai');
SELECT * FROM Book;

-- insert values in author
INSERT INTO Authors VALUES(101,'Arjun Mehta',1,'The Silent Forest'),
                           (102,'Aisha Khan',2,'Whispering Shadows'),
                           (103,'Kabir Das',3,'Beyond the Horizon'),
                           (104,'Aisha Khan',4,'The Last Ember'),
                           (105,'Nandini Rao',5,'The Silent Forest'),
                           (106,'Vikram Patel',6,'Rivers of Time'),
                           (107,'Kabir Das',7,'Beyond the Horizon'),
                           (108,'Meera Joshi',8,'Enchoes in the Rain'),
                           (109,'Ankit Sharma',9,'The Forgotten Path'),
                           (110,'Ankit Sharma',10,'The Silent Forest'),
                           (111,'Priya Nair',11,'When Stars Collide'),
                           (112,'Raghav Varma',12,'The Crimson Diary'),
                           (113,'Tara Iyer',13,'A Journey Within'),
                           (114,'Vikram Patel',14,'Rivers of Time'),
                           (115,'Rohit Sen',15,'The Glass Mirror'),
                           (116,'Meera Joshi',16,'Enchoes in the Rain'),
                           (117,'Tara Iyer',17,'The Forgotten Path'),
                           (118,'Sneha Kulkarni',18,'A house'),
                           (119,'Ankit Sharma',19,'When Stars Collide'),
                           (120,'Shruti Desai',20,'A House of Stories');
                           
SELECT * FROM Authors;

-- insert values in orders
INSERT INTO Orderss VALUES(201,1,'2019-01-01',150,101),
                           (202,2,'2017-02-03',50,102),
                           (203,3,'2015-05-01',100,103),
                           (204,4,'2017-07-09',80,104),
                           (205,5,'2020-07-08',150,105),
                           (206,6,'2019-01-01',500,106),
                           (207,7,'2021-12-11',140,107),
                           (208,8,'2017-12-09',800,108),
                           (209,9,'2022-09-29',1000,109),
                           (210,10,'2018-03-04',650,110),
                           (211,11,'2015-05-01',1000,111),
                           (212,12,'2025-07-04',800,112),
                           (213,13,'2019-11-01',8000,113),
                           (214,14,'2022-09-29',900,114),
                           (215,15,'2018-09-02',600,115),
                           (216,16,'2018-04-01',1000,116),
                           (217,17,'2025-08-08',8000,117),
                           (218,18,'2020-10-02',500,118),
                           (219,19,'2018-04-01',2000,119),
                           (220,20,'2025-08-09',400,120);
SELECT * FROM Orderss;

-- Write a SELECT statement to retrieve books with a price greater than 20. 
SELECT * FROM Book where price > 20;

-- Write a SELECT statement to retrieve books with a publication date between '2020-01-01' and '2020-06-30'. 
SELECT * FROM Book where publication_date > '2020-01-01' and publication_date < '2020-06-30';
 update Book set publication_date = '2020-02-01' where book_id = 3;
 update Book set publication_date = '2020-05-29' where book_id = 5;   
 
-- Write a SELECT statement to retrieve orders with a quantity greater than or equal to 2. 
SELECT * FROM Orderss WHERE quantity >=2;

-- Write an UPDATE statement to update the price of a book with a book_id of 1. 
UPDATE Book set price=450.00 where book_id=1;

-- Write a DELETE statement to delete an order with an order_id of 5.
DELETE FROM Orderss WHERE order_id = 5;

-- Write a SELECT statement to retrieve books with a price less than 15. 
update Book set price=10.00 where book_id=6;
update Book set price=5.00 where book_id=8;
SELECT * FROM Book where price < 15;

-- Write a SELECT statement to retrieve orders with an order date greater than or equal to '2020-03-01'.
SELECT * FROM Orderss where order_date >= '2020-03-01';

-- Write a SELECT statement to retrieve books with a title not equal to 'Book 1'. 
update Book set title='Book 1' where book_id=10;
update Book set title = 'Book 1' where book_id=20;
SELECT * FROM Book WHERE title != 'Book 1';

-- Write a SELECT statement to retrieve authors with an author_id less than or equal to 2
SELECT * FROM Authors WHERE author_id <= 2;

-- Write a SELECT statement to retrieve books with a price between 10 and 20. 

update Book set  price=15 where book_id=11;
SELECT * FROM Book WHERE price > 10 AND  price < 20;

-- Write a SELECT statement to retrieve orders with a quantity in (1, 2, 3). 
update Orderss set quantity=2 where order_id=101;
SELECT * FROM Orderss WHERE quantity IN (1, 2, 3); 

-- . Write a SELECT statement to retrieve books with a publication date like '%2020%'. 


-- Write a SELECT statement to retrieve authors with an author_name starting with 'A


-- Write an INSERT statement to add a new book to the Books table
INSERT INTO Book values(21,'The Pet',65.35,'2019-01-10','110','Arjun Mehta');

-- Write an UPDATE statement to update the quantity of an order in the Orders table. 
UPDATE Orderss SET quantity = 4 WHERE order_id = 201;

-- Write a DELETE statement to delete a book from the Books table.
DELETE FROM Book WHERE book_id = 21;

-- Write a SQL query to retrieve the total number of books in the Books table.
SELECT COUNT(*) AS total_book FROM Book;

-- Write a SQL query to retrieve the average price of books in the Books table.
SELECT AVG(price)  FROM Book;

-- Write a SQL query to retrieve the maximum quantity of orders in the Orders table. 
SELECT MAX(quantity) FROM Orderss;

-- Write a SQL query to retrieve the minimum publication date of books in the Books table.
SELECT MIN(publication_date) FROM Book;

--  Write a GRANT statement to grant SELECT privilege to bookstore_user on the Orders table. 
CREATE user bookstore_user identified by 'book1234';
GRANT SELECT ON Orderss TO bookstore_user;

-- Write a REVOKE statement to revoke INSERT privilege from bookstore_user on the Books table. 
Create user book_user identified by 'book8976'; 
grant insert,update on Book to book_user;
revoke insert on Book from book_user;

-- Write a SELECT statement to retrieve books with a price between 10 and 20. 
SELECT * FROM Book WHERE price BETWEEN 10 AND 20;

