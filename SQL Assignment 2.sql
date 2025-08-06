create database college;
use college;
-- create table student
create table Students(stud_id int,stud_name varchar(20),department varchar(20),admission_year year);
create table Course(course_id int,course_name varchar(20),department varchar(20),credit int);
create table Enrollments(enrollment_id int,student_id int,course_id int,semester smallint);
create table Faculty(faculty_id int,faculty_name varchar(20),department varchar(20),subject_handle varchar(20));

-- insert values in student table
insert into Students values(1,'Neha Rikame','Data Analyst','2021'),
                          (2,'Mohini Argde','Computer Science','2024'),
                          (3,'Khushi Chaursia','Electronic','2022'),
                          (4,'Sneha Patil','Maths','2025'),
                          (5,'Rakshita Patil','Physics','2020');
                          
-- insert values in Course table
insert into Course values(101,'Data Science','MSC',7),
                         (102,'Dot Net','BCA',8),
                         (103,'Software Developer','Btech',9),
                         (104,'Web development','BCS',6),
                         (105,'Python developer','BCA',9);
                         
-- insert values in faculty table
insert into Faculty values(201,'Neha Jadhv','Data Science','Machine learning'),
                          (202,'Pallavi joshi','Data Analyst','SQL'),
                          (203,'sakshi pawar','Computer Science','PHP'),
                          (204,'Ashwini more','Math','Statistics'),
                          (205,'Komal shinde','Java developer','java');
					
-- Update the department of a student.
SET SQL_SAFE_UPDATES = 0;
update Students set department = 'Computer Application' where stud_id = 3;   
                 
-- . Delete a course from the Courses table.
DELETE FROM course WHERE course_name = 'Data Science';

-- Update a subject handled by a faculty member.
update Faculty set subject_handle = 'SQL' where faculty_id = 202; 

-- create table enrollments.
insert into Enrollments values(1001,1,101,3),(1002,2,102,2),(1003,3,103,4),(1004,4,104,1),(1005,5,105,3);
                       
-- Insert a new enrollment record for a student in a course.
insert into Enrollments values(1006,3,103,2); 

-- Create a user college_user and grant them INSERT and UPDATE permissions on the Students and Enrollments tables.
create user college_user identified by 'sneha1234';  -- create user collage_user

-- grant them insert and update permission on the student and enrollments table.
grant insert , update on Students to college_user; -- grant permission on student
grant insert , update on Enrollments to college_user ;
select * from Students;

-- Revoke UPDATE permission from college_user for the Enrollments table.
revoke update on Enrollments from college_user;

## TCL(Transaction control language)
-- Begin a transaction to simulate this:
-- Insert a new student.
-- Insert a new enrollment for that student.
-- Commit the transaction.

start transaction;
insert into Students values(7,'Anuja','Data Science','2023');
insert into Enrollments values(7,7,5,2);
commit;

-- Begin a transaction 
-- Insert a course.
-- Delete a faculty member.
-- Rollback the transaction.


start transaction;
insert into Course values(6,'DA','Data Science',7);
delete from Faculty where faculty_name = 'sakshi pawar' and department='Computer Science';
rollback;

-- Use a SAVEPOINT:
-- Insert a student.
-- Create a SAVEPOINT after this step.
-- Insert a course.
-- Rollback to the savepoint.
-- Commit the transaction

start transaction;
insert into Students values(8,'Monika','Data Analyst','2022');
savepoint s1;
insert into Course values(8,'BTech','Data Science',3);
rollback to s1;
commit;

-- Test what happens if you ROLLBACK after a COMMIT. Write down the observation as a comment in your SQL file.
-- In commit is used to permantly save the changes. but rollback is used to rollback the last transaction. if we use rollback after the commit  the rollback has no effect the transaction was save permantly when used commit that point.