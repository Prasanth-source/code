 show tables;

select * from employees



select * from employees
 order by department_id , salary desc 


update employees 
   set salary = 20000  
   where employee_id = 104 
 
select employee_id ,
       first_name ,
       salary ,
       case 
          when salary > 10000 then 'Sr Software' else 'Jr software' 
       end as designation
       from employees

select employee_id ,
       first_name ,
       salary   from employees 
       order by salary desc 


with cte_emp as (
select employee_id ,
       first_name ,
       salary  ,
       row_number() over(order by salary desc)  as rid
       from employees 
) select * from cte_emp  where rid = 10



with cte_emp as (
select employee_id ,
       first_name ,
       salary  ,
       rank() over(order by salary desc)  as rid
       from employees 
) select * from cte_emp  where rid = 10




with cte_emp as (
select employee_id ,
       first_name ,
       salary  ,
       dense_rank() over(order by salary desc)  as rid
       from employees 
) select * from cte_emp  where rid = 6
