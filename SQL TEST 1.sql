CREATE DATABASE Company;
DROP DATABASE Company;
USE Company;
-- create table employee
 CREATE TABLE employees(id INT primary key, name VARCHAR(50) , salary DECIMAL(10,2),department_id INT,foreign key (department_id) references DepartmentS(ID));
 
 -- create table department
 CREATE TABLE DepartmentS(ID INT PRIMARY KEY,department_name VARCHAR(50));
 
 -- insert value into employee
 INSERT INTO employees VALUES(201,'Neha Rikame',45000,1),
                             (202,'Mohini Agrde',30000,2),
                             (203,'Khushi Patil',50000,3),
                             (204,'Sneha Deore',75000,4),
                             (205,'Rakshita Harde',80000,5),
                             (206,'Khushi Pawar',55000,6),
                             (207,'Ankita patil',45000,7),
                             (208,'Monika jadhav',30000,3),
                             (209,'komal shinde',50000,3),
                             (210,'Anu pawar',98000,1);
SELECT * FROM employees;
                             
-- inser value into department
INSERT INTO DepartmentS VALUES(1,'Computer Science'),
                              (2,'Electronic'),
                              (3,'Data Science'),
                              (4,'Mathematics'),
                              (5,'Computer Science'),
                              (6,'Biology'),
                              (7,'Statistics'),
                              (8,'Mathematics'),
                              (9,'Computer Science'),
                              (10,'Data Analyst');
 
 SELECT * FROM DepartmentS;
-- create table project
CREATE TABLE Project(project_id INT PRIMARY KEY,project_name VARCHAR(100),start_date DATE,end_date DATE);
 
 -- insert values into project
 INSERT INTO Project VALUES(301,'SQL Project','2023-01-12','2023-06-24'),
                            (302,'Java Project','2022-05-11','2022-10-20'),
                            (303,'Hotel managment','2023-01-12','2023-06-24'),
                            (304,'Student manegment','2021-04-12','2022-01-01'),
                            (305,'SQL Project','2023-01-12','2023-06-24'),
                            (306,'Java Project','2025-05-11','2025-10-20'),
                            (307,'Hospital managment','2023-01-12','2023-06-24'),
                            (308,'Student manegment','2021-04-12','2022-01-01'),
                            (309,'Hotel managment','2023-01-12','2023-06-24'),
                            (310,'Collage manegment','2021-04-12','2022-01-01');
                            
SELECT * FROM Project;

-- Alter the Employees table to add a new column email of type VARCHAR(100).
ALTER TABLE employees ADD COLUMN email VARCHAR(100); 
UPDATE employees SET email = 'neha@1234' WHERE ID=201;
UPDATE employees SET email = 'moniar@12' WHERE ID=202;
UPDATE employees SET email = 'sky@1234' WHERE ID=203;
UPDATE employees SET email = 'snehu@14' WHERE ID=204;
UPDATE employees SET email = 'rakshitar@1276' WHERE ID=205;
UPDATE employees SET email = 'khushi@282004' WHERE ID=206;
UPDATE employees SET email = 'anku@134' WHERE ID=207;
UPDATE employees SET email = 'monika@14' WHERE ID=208;
UPDATE employees SET email = 'komal@1276' WHERE ID=209;
UPDATE employees SET email = 'anu@2006' WHERE ID=210;

SELECT * FROM employees;

-- Drop the Projects table if it exists.
DROP TABLE Project;

-- Rename the column name in Employees table to full_name.
ALTER TABLE employees rename COLUMN name to full_name;
SELECT * FROM employees;

-- Insert a new employee into the Employees table:
-- id: 201, full_name: 'Alice Smith', salary: 62000, department_id: 2
SET SQL_SAFE_UPDATES=0;
INSERT INTO employees VALUES(401,'Alice Smit',62000,2,'alice@1234');

-- Update the salary of the employee with id 201 to 70000.
UPDATE employees SET salary=70000 WHERE id=201;
SELECT * FROM employees;

-- Delete all employees with a salary less than 30,000.
UPDATE employees SET salary=20000 WHERE id=204;
UPDATE employees SET salary=15000 WHERE id=202;
SELECT * FROM employees;
DELETE FROM employees WHERE salary<30000; 

-- Insert multiple employees in a single SQL statement (add 2 records of your choice).
-- Grant SELECT and INSERT privileges on the Employees table to a user named analyst_user.
-- Revoke INSERT privilege on the Employees table from user analyst_user.
INSERT INTO employees VALUES(215,'Neha Jadhv',45000,6,'nehu@7531'),
                           (216,'Prachi Patil',50000,5,'prachi@123');
CREATE USER analyst_users identified by 'analyst12345';
GRANT SELECT,INSERT ON employees to analyst_users;
REVOKE INSERT ON employees FROM analyst_users;

-- Write SQL statements to:
         					-- Start a transaction
             				-- Insert a new employee
            				-- Update another employee’s salary
            				-- Commit the transaction
START TRANSACTION;
INSERT INTO employees VALUES(217,'Seeta Rao',45000,5,'setu@6543');
UPDATE employees set salary=35000 where id=216;
commit;

-- Write SQL statements to:
          	   -- Start a transaction
              -- Delete an employee
			-- Rollback the transaction
            
START TRANSACTION;
DELETE employees FROM employees WHERE id =217; 
ROLLBACK;

-- Select the full names and salaries of employees who earn more than 50,000.
select full_name, salary from employees where salary>50000;

-- Select all columns for employees who do not belong to any department.
select * from employees where department_id is null;

-- List all employees with names starting with 'J' and salary between 40,000 and 80,000.
SELECT * FROM employees WHERE salary between 40000 and 80000;


-- Write a query to display each employee's full name along with their department name.
select e.full_name, d.department_name
from employees e
inner join DepartmentS d
on e.department_id = d.ID;


-- Find the average salary for each department.
select d.department_name, avg(e.salary)
from employees e
inner join departments d
on e.department_id = d.id
group by department_name;

-- Select the top 5 highest-paid employees (assume a DBMS that supports LIMIT or equivalent).
select full_name, salary from employees order by salary desc limit 5;

-- Count the number of employees in each department. Only show departments with more than 3 employees.
SELECT department_id, COUNT(e.id) AS emp_count
FROM employees e
inner join DepartmentS  d ON e.department_id=d.ID
GROUP BY department_id
HAVING COUNT(e.id) > 3;

-- Write a query to list all departments and the names of employees in them, including departments with no employees.
SELECT d.department_name, e.full_name
FROM DepartmentS d
LEFT JOIN employees e ON d.id = e.department_id; 

