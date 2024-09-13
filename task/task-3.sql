desc table student;

select * from student;




insert into student (sid,sname) values (101,'Malathi')
insert into student (sid,sname) values (102,'Ravi')
insert into student (sid,sname) values (103,'Manoj')
insert into student (sid,sname) values (104,'Bhanu')


----------------------
insert into student (sid,sname) values (101,'Malathi')
                                       ,(102,'Ravi')
                                       ,(103,'Manoj')
                                        ,(104,'Bhanu')

update student 
    set phone = 56676777
where sid = 102
    
update student 
   set email = 'abc@gmail.com',
       phone = 12444555
    where sid = 102




select count(*)  from student ;//4

select count(sid)  from student ;//4

select count(email)  from student ; //1

select * from student 

select sid , EMAIL   from student 


select * from student  where sid = 102



select * from student  where sid = 102 or sid = 103 

select * from student  where sid = 103 and phone = 12345675 


select * from student where email is not null 



 select * from employees 

 select * from employees  where employee_id = 117


  select * from employees where department_id = 5


  
  select * from employees where department_id = 5 or 
                                department_id = 7 or 
                                department_id = 3

 select * from employees 
      where department_id in( 5,7,3)


       select * from employees 
      where department_id not in( 5,7,3)

   select * from employees       
             order by salary desc 


      select top 5 * from employees       
             order by salary desc 



      select top 5 * from employees       
             order by salary  




    
      select top 5 employee_id,first_name,salary from employees       
             order by salary  

select * from employees   where salary >= 10000


select * from employees   where salary >= 10000 and manager_id = 100

select distinct(salary)  from     employees ;   


select distinct(first_name)  from     employees ;   


select first_name  from     employees 
               where first_name like 'N%'




select first_name  from     employees 
               where first_name like '%a'



 select first_name  from     employees 
               where first_name like '%_a_%'

select * from employees   where salary  between 10000 and  20000


select * from employees   where salary  >= 10000 and  salary <= 20000
