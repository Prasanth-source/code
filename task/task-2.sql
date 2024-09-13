  create database   hr;

create schema vitech;

create schema vivision;

show databases ;
--char -- [a-z]
--varchar [a-z] [0-9] [%&$#]  (string)
--number [0-9]   (int)
--date dd-mm-yyy 

create table hr.vitech.employee (
employee_id varchar(20) ,
first_name varchar(20),
last_name  varchar(20), 
email string,
phone_number  varchar(20),   
hire_date date,   
job_id varchar(20),
salary int,
manger_id varchar(20),
department_id varchar(20)
)


--------------------
CREATE TABLE employees (
	employee_id INT ,
	first_name VARCHAR (20) DEFAULT NULL,
	last_name VARCHAR (25) NOT NULL,
	email VARCHAR (100) NOT NULL,
	phone_number VARCHAR (20) DEFAULT NULL,
	hire_date DATE NOT NULL,
	job_id INT NOT NULL,
	salary DECIMAL (8, 2) NOT NULL,
	manager_id INT DEFAULT NULL,
	department_id INT DEFAULT NULL
    )

delete from employees;


 select * from employees

  select count(*) from employees

describe table hr.vitech.employee

---Drop 
---Truncate 
---Delete 


delete from employees;

delete from employees  where employee_id = 100  or employee_id = 102 

truncate table employees 

drop table employees  
