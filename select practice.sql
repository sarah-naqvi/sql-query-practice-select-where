create database selection;
use selection;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    email VARCHAR(100),
    join_date DATE
);
INSERT INTO employees VALUES
(1, 'Aarav', 'IT', 60000, 'aarav@company.com', '2022-01-10'),
(2, 'Neha', 'HR', 45000, NULL, '2021-03-15'),
(3, 'Aditi', 'Finance', 75000, 'aditi@company.com', '2020-07-22'),
(4, 'Rahul', 'IT', 50000, 'rahul@company.com', '2023-02-01'),
(5, 'Ankit', 'Finance', 30000, NULL, '2022-11-12'),
(6, 'Sneha', 'HR', 40000, 'sneha@company.com', '2019-06-30'),
(7, 'Arjun', 'IT', 90000, 'arjun@company.com', '2018-09-18'),
(8, 'Meera', 'Marketing', 35000, 'meera@company.com', '2021-12-05');

# ques1 : Write a query to select all columns from a table named employees.
select * from employees;

#ques2 : Select only name, salary, and department from the employees table.
select name, salary,department from employees;

#ques3 : Select distinct departments from the employees table.
select distinct department from employees;

#ques4 : Rename the column salary as monthly_salary in the output.
select salary as monthly_salary from employees;

#ques5 : Select employees where salary is greater than 50,000.
select *
from employees
 where salary > 50000;
 
 #ques6 : Display employees where the department is NOT 'HR'.
 select *
 from employees 
 where department <> 'HR';
 
 #ques7 : Select employees whose salary is between 30,000 and 70,000.
 select * 
 from employees 
 where salary > 30000 and salary <70000;
 
 #ques8 : Fetch employees whose name starts with 'A'.
 select * 
 from employees 
 where name like 'A%';
 
 #ques9 : Display employees where department is either 'IT' or 'Finance'.
 select * 
 from employees 
 where department = 'IT' or department ='Finance';
 
 #ques10 : Select employees where email is NULL.
 select * 
 from employees 
 where email is null;
 
 #ques11 : Show the top 5 highest-paid employees.
 select *
 from employees 
 order by salary desc
 limit 5;
 
 #ques12 : Select employees and calculate annual salary assuming monthly salary is stored.
 select name, salary ,department, salary * 12 as annual_salary
 from employees; 
 
 #ques13 : Display employees ordered by salary descending, then name ascending
 select *
 from employees
 order by salary desc, name asc;
 
 #ques14 : Fetch employees where salary is above the average salary
 select * 
 from employees
 where salary> (select avg(salary) from employees );
 
 #ques15 : Select department-wise employee count using SELECT with aggregation.
 select department , count(*) as department_wise_count
 from employees
 group by department ;