show databases;
CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees
(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);
DESCRIBE employees;
SHOW TABLES;
INSERT INTO employees
VALUES
(101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active'),
(102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active'),
(103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active'),
(104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active'),
(105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive'),
(106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');
SELECT * FROM employees;
SELECT employee_name FROM employees;
SELECT employee_name, salary FROM employees;
SELECT employee_name, department, city FROM employees;
SELECT * FROM employees WHERE city = 'Pune';
SELECT * FROM employees WHERE city = 'Mumbai';
SELECT * FROM employees WHERE department = 'Development';
SELECT * FROM employees WHERE department = 'Testing';
SELECT * FROM employees WHERE status = 'Active';
SELECT * FROM employees WHERE status = 'Inactive';
SELECT * FROM employees WHERE employee_id = 103;
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';
SELECT * FROM employees WHERE salary > 40000;
SELECT * FROM employees WHERE salary < 40000;
SELECT * FROM employees WHERE salary = 35000;
SELECT * FROM employees WHERE salary >= 42000;
SELECT * FROM employees WHERE city = 'Pune' AND status = 'Active';
SELECT * FROM employees WHERE department = 'Development' AND salary > 45000;
SELECT * FROM employees WHERE city = 'Pune' OR city = 'Mumbai';
UPDATE employees SET salary = 48000 WHERE employee_name = 'Rahul Patil';
UPDATE employees SET status = 'Active' WHERE employee_name = 'Rohan Deshmukh';
UPDATE employees SET city = 'Pune' WHERE employee_name = 'Sneha Kulkarni';
UPDATE employees SET department = 'Development' WHERE employee_name = 'Priya Sharma';
UPDATE employees SET salary = 45000 WHERE employee_id = 106;
UPDATE employees SET salary = salary + 3000 WHERE employee_id = 103;
UPDATE employees SET salary = salary + 2000 WHERE department = 'Testing';
UPDATE employees SET city = 'Mumbai Branch' WHERE city = 'Mumbai';
DELETE FROM employees WHERE employee_id = 105;
DELETE FROM employees WHERE employee_name = 'Rohan Deshmukh';
DELETE FROM employees WHERE status = 'Inactive';
DELETE FROM employees WHERE salary < 30000;
DELETE FROM employees WHERE employee_id = 104;
alter table employees add email varchar(100);
alter table employees add mobile varchar(15);
alter table employees modify city varchar(100);
alter table employees rename column employee_name to name;
alter table employees drop column mobile;
alter table employees add experience int;
update employees set experience = 3 where employee_id = 101;
create table departments (department_id int primary key, department_name varchar(100), location varchar(100));
insert into departments values (1, 'Development', 'Pune'), (2, 'Testing', 'Mumbai'), (3, 'HR', 'Nashik');
update departments set location = 'Solapur' where department_id = 1;
delete from departments where department_id = 3;
rename table departments to company_departments;
desc company_departments;
truncate table company_departments;
drop table company_departments;
show tables;