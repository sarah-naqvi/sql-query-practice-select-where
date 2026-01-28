create database whereing;
use whereing;

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
(8, 'Meera', 'Marketing', 35000, 'meera@company.com', '2021-12-05'),
(9, 'Aman', 'IT', 65000, 'aman@company.com', '2022-05-20'),
(10, 'Pooja', 'Finance', 55000, 'pooja@company.com', '2023-01-15');

#ques1 : Select employees whose salary is greater than 40,000.
select * 
from employees 
where salary > 40000;

#ques2 : Select employees whose department is 'IT'.
select *
from employees
where department = 'IT';

#ques3 : Select employees who joined after 1st January 2021.
select * 
from employees
where join_date > '2021-01-01';

#ques4 : Select employees whose salary is less than or equal to 35,000
select * 
from employees 
where salary <= 35000;

#ques5 : Select employees whose email is NOT NULL.
select * 
from employees
where email is not null;

#ques6 : Select employees whose salary is between 30,000 and 60,000
select * 
from employees
where salary between 30000 and 60000;

#ques7 : Select employees who do not belong to the 'HR' department.
select * 
from employees
where department <> 'HR';

#ques8 : Select employees whose name contains the letter 'e'.
select * 
from employees 
where name like '%e%';

#ques9 : Select employees who work in either 'IT', 'Finance', or 'Marketing'.
select * 
from employees 
where department in ( 'IT' ,'FINANCE' , 'MARKETING');

#ques10 : Select employees whose salary is greater than 50,000 AND department is 'IT'.
select * 
from employees
where salary > 50000 and department ='IT';

#ques11 : Select employees whose salary is above the average salary.
select *
from employees
where salary > (select avg(salary) from employees);

#ques12 : Select employees who joined in the year 2022.
select * 
from employees 
where join_date between '2022-01-01' and '2022-12-31';

#ques13 : Select employees whose email domain is '@company.com'.
select * 
from employees 
where email like '%@company.com';

#ques14 : Select employees whose salary is NOT between 40,000 and 80,000.
select * 
from employees 
where salary not  between 40000 and 80000;

#ques15 : Select employees whose name starts with 'A' AND salary is greater than 60,000.
select * 
from employees
where name like 'A%' and salary > 60000;