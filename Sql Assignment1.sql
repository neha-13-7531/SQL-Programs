create database Emp;
use Emp;
create table employee(emp_id int,emp_name varchar(20),city varchar(15), age int,salary int,emp_dept varchar(20),joining_date date,performance_score smallint,emp_statisfaction_score smallint,emp_warning smallint);
insert into employee values(101,'Neha Rikame','Pune',22,80000,'Data Analyst','2025-06-30',9,8,0),
(102,'Mohini Argade','Mumbai',23,75000,'Research Analyst','2024-05-18',7,7,1),
(103,'Khushi Chaursia','Nashik',21,85000,'web developer','2023-08-15',9,7,2),
(104,'Anu jadhav','Dehli',26,50000,'Dot net developer','2024-07-28',6,7,0),
(105,'Sneha Deore','Mumbai',27,45000,'Developer','2013-12-23',9,9,1),
(106,'Neel shah','Pune',28,50000,'Data Analyst','2021-07-21',5,7,3),
(107,'Rakshita wagh','Dhule',24,80000,'java developer','2024-09-24',8,6,1),
(108,'Meena jadhv','Nashik',29,30000,'Junior Analyst','2025-06-30',7,5,3),
(109,'Neha Nigde','Mumbai',24,80000,'senior Analyst','2025-06-30',9,8,0),
(110,'Akash chahvan','Dehli',27,450000,'C developer','2022-01-18',6,7,1),
(111,'Nilam shah','Pune',22,70000,'Data Analyst','2022-03-20',9,8,0),
(112,'Neha pawar','new dehli',24,85000,'Data Science','2025-05-30',7,6,1),
(113,'Anil phartale','Noida',20,90000,'Data structure','2015-06-30',9,9,0),
(114,'Sneha pawar','Pune',25,80000,'Data Analyst','2021-03-28',9,8,1),
(115,'Neha patil','Nashik',22,80655,'Data Science','2025-06-30',9,8,0),
(116,'Mohini singh','Dhule',23,70000,'Dot net developer','2020-08-22',9,6,1),
(117,'Nila Modi','Nashik',27,60000,'Data Analyst','2022-11-13',7,5,2),
(118,'Anu pawar','Mumbai',28,85000,'Junior Analyst','2025-06-30',9,8,0),
(119,'Nelm Sathe','Pune',20,45000,'Data structure','2024-05-10',8,7,2),
(120,'Neha Jadhav','Mumbai',22,80000,'Data Analyst','2022-08-01',7,6,1),
(121,'Seha patil','Dehli',28,70000,'web developer','2000-04-28',7,5,2),
(122,'Monika Bhuskute','MP',27,45000,'Dot net developer','2021-08-25',9,9,0),
(123,'Mohini wagh','Pune',28,55000,'Data Analyst','2025-06-30',5,6,3),
(124,'Neha khan','Mumbai',31,85000,'Data Science','2020-03-28',7,7,1),
(125,'Salman khan','Zuhu',58,1500000,'Acting','2001-01-12',8,8,0),
(126,'Depika padukon','Jalna',36,670000,'senior Analyst','2025-06-30',9,8,0),
(127,'Puja bapat','Pune',22,80000,'Data Analyst','2022-04-30',8,9,0),
(128,'Neha kakkar','Dehli',25,86000,'Research Analyst','2021-04-18',6,8,1),
(129,'Ranimukhrji','Mumbai',28,40000,'Java','2000-01-16',7,6,1),
(130,'Deepak jadhav','Nashik',54,70000,'CPP','2025-06-30',9,8,0),
(131,'Raju wagh','Pune',22,80000,'Data Analyst','2025-06-30',9,8,0),
(132,'Neeta patil','jalna',20,30000,'Data Science','2021-12-11',7,6,1),
(133,'Anuja pawar','Mumbai',29,45000,'Dot net developer','2023-06-30',6,8,1),
(134,'Sohel Patel','Pune',25,35000,'java developer','2021-07-15',9,9,0),
(135,'Neha shah','Nashik',28,90000,'Data Analyst','2023-08-20',8,8,1),
(136,'Jyostna wagh','Pune',20,35000,'Data Science','2025-06-30',7,6,1),
(137,'Sonali Bhide','Mumbai',27,56000,'Junior Developer','2003-12-13',5,6,2),
(138,'Aditya Narayan','Mumbai',40,80000,'Data Analyst','2023-07-19',7,7,1),
(139,'Neta pal','Jalna',56,78000,'Research Analyst','2021-05-17',7,8,0),
(140,'Suhana Khan','Dehli',29,57000,'Junior developer','2000-01-21',9,8,0),
(141,'Siddhart Manhotra','Mumbai',35,80000,'Data Analyst','2025-06-30',6,4,1),
(142,'Neha Patil','Pune',20,70000,'Research Analyst','2014-08-30',6,4,3),
(143,'Rani Shah','New Dehli',28,67000,'Senior Analyst','2013-06-17',6,7,1),
(144,'Nikita patil','Mumbai',24,75000,'Junior Analyst','2012-09-22',9,6,1),
(145,'Komal Shinde','Pune',22,65000,'CPP','2025-06-28',7,8,1),
(146,'Neha Patil','Jalna',28,80000,'Research Analyst','2015-07-20',8,9,0),
(147,'Ankita Patil','Pune',22,79000,'Junior Analyst','2019-03-21',6,4,3),
(148,'Priyanka Chopra','Mumbai',20,70000,'Research Analyst','2014-08-30',8,9,0),
(149,'Sneha Patil','Dhule',29,85000,'CPP','2020-02-20',8,6,1),
(150,'sonalika Patil','Pune',20,78000,'Senior Analyst','2014-08-30',6,4,3);
select * from employee;
SET SQL_SAFE_UPDATES=0;
delete from employee where emp_name = 'Neha';
select * from employee;

-- 1.Insert 10 rows records into the employee table for 5 new depertment.
insert into employee values(151,'Shreya Ghoshal','Mumbai',40,95000,'Marketing','2021-07-13',9,9,0),
(152,'Neha Shah','Dhule',29,55000,'operation','2000-10-22',6,4,3),
(153,'Rani Shah','New Dehli',28,60000,'HR','2013-06-17',9,9,0),
(154,'Niki jain','Mumbai',25,78000,'Project Manager','2011-04-24',9,7,0),
(155,'Komal Shinde','Dhule',22,65000,'IT','2025-06-28',7,8,1),
(156,'Sneha Patil','Jalna',28,80000,'Operation','2016-07-28',8,9,0),
(157,'Ankita Patil','Mumbai',29,79000,'HR','2020-02-22',6,4,3),
(158,'Priyanka Wagh','Jalna',22,75000,'Project Manager','2015-09-30',9,9,0),
(159,'Sneha Patil','Dhule',27,85000,'IT','2020-02-20',8,7,1),
(160,'sonalika wagh','Mumbai',22,75000,'Operation','2021-05-15',8,8,0);
select * from employee;

-- 2.update the salary of all employees in department "IT" by 10%
 update employee  set salary = salary * 0.10 where emp_dept = 'IT';
select * from employee where emp_dept = 'IT';

-- 3.Add a new column 'lastAppraisalDate' of type Date to the 'employee' table

alter table employee add LastAppraisalDate date;
update employee set LastAppraisalDate = '2020-01-13' where emp_dept = 'IT';
update employee set LastAppraisalDate = '2029-12-13' where emp_dept = 'Operation';
update employee set LastAppraisalDate = '2030-01-10' where emp_dept = 'Project manager';
update employee set LastAppraisalDate = '2035-12-30' where emp_dept = 'HR';
update employee set LastAppraisalDate = '2029-11-13' where emp_dept = 'Marketing';
update employee set LastAppraisalDate = '2029-05-20' where emp_dept = 'Research Analyst';
update employee set LastAppraisalDate = '2030-11-23' where emp_dept = 'Data Analyst';
update employee set LastAppraisalDate = '2020-01-13' where emp_dept = 'IT';
update employee set LastAppraisalDate = '2031-12-15' where emp_dept = 'Dot net developer';
update employee set LastAppraisalDate = '2030-05-25' where emp_dept = 'senior Analyst';
update employee set LastAppraisalDate = '2033-12-15' where emp_dept = 'Junior Analyst';
update employee set LastAppraisalDate = '2034-11-20' where emp_dept = 'web developer';
update employee set LastAppraisalDate = '2031-12-15' where emp_dept = 'Data Science';
update employee set LastAppraisalDate = '2037-12-16' where emp_dept = 'CPP';
update employee set LastAppraisalDate = '2032-12-15' where emp_dept = ' java developer';
update employee set LastAppraisalDate = '2027-05-19' where emp_dept = 'Java';
update employee set LastAppraisalDate = '2030-11-10' where emp_dept = 'C developer';
select * from employee;
update employee set LastAppraisalDate = '2031-12-15' where emp_dept = 'Developer';
update employee set LastAppraisalDate = '2031-12-15' where emp_dept = 'Data structure';
update employee set LastAppraisalDate = '2039-11-10' where emp_dept = 'Acting';
update employee set LastAppraisalDate = '2035-10-11' where emp_dept = 'Junior developer';
select * from employee;
update employee set LastAppraisalDate = '2035-10-11' where emp_dept = 'java developer';
select * from employee;

-- 4.delete all employees who were hired before 2010
SET SQL_SAFE_UPDATES = 0;
delete from employee where joining_date < '2010-01-01';

-- 5.Rename the 'Employees' table to 'Staff'.
rename table employee to Staff;

-- 6.Modify the data type of the 'Salary' column from INT to DECIMAL(10,2).
   alter table Staff modify column salary decimal(10,2);
   select * from Staff;
   
-- 7.Drop the 'LastAppraisalDate' column from the 'Employees' table.
  alter table Staff drop column LastAppraisalDate;
  select * from Staff;
  
  -- 8.Fetch the records of the employees whose performance rating is more than 7  
  select * from Staff where performance_score > 7;
  
  -- 9. Fetch the records of the employees whose salary is more than 50,000.
  select * from Staff  where salary >  50000;
  alter table Staff drop column Performance;
  
  -- Q1.retrive a data for employees where the performance score is below 5 
    select * from Staff where performance_score < 5;
    
-- performance score between 5 and 8.
select * from Staff where performance_score >=5 and  performance_score < 8;

-- performance score is greater than 8
select * from Staff where performance_score > 8;

-- Q2.retrive the data for employee where the statisfaction score is below 5.
select * from Staff where emp_statisfaction_score < 5;

-- statisfaction score is between 5 and 8
select * from Staff where emp_statisfaction_score >=5 and  emp_statisfaction_score < 8;

-- statisfaction score is greater than 8
select * from Staff where emp_statisfaction_score >= 8;

-- Q3.retrive data for employee where warning is zero
select * from Staff where emp_warning = 0;

-- employee warning is 1;
select * from Staff where emp_warning = 1;

-- employee warning is two or three
select * from Staff where emp_warning = 2 or emp_warning = 3;

-- employee warning is 3
select * from Staff where emp_warning = 3;
  
 -- create a group of department 
SELECT emp_dept from Staff group by emp_dept;

-- Order by 
SELECT emp_name FROM Staff ORDER BY emp_name ASC; -- it sort the name in ascending order

-- Having clause
SELECT emp_dept,avg(salary) from Staff GROUP BY emp_dept HAVING emp_dept = 'IT';

 SELECT emp_dept FROM Staff ORDER BY joining_date DESC;
 
 -- Distinct to get unique values 
 SELECT DISTINCT city FROM Staff;
 
 -- Between
 SELECT age FROM Staff WHERE age BETWEEN 23 and 29;
 
 