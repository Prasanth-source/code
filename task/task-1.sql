drop database bank;
create database bank;

show databases ;

create schema hdfc;

create table bank.hdfc.employee (id int,
                       first_name string ,
                       last_name string ,
                       email  string ,
                       location string,
                       department string
                       )
create schema axis;

create table bank.axis.employee (id int,
                       first_name string ,
                       last_name string ,
                       email  string ,
                       location string,
                       department string
                       )

desc table employee;

select * from bank.hdfc.employee;

insert into bank.hdfc.employee (id    ,first_name    ,last_name    ,email    ,location,    department) values (1,    'Nerita',    'Colby'    ,'ncolby0@blogger.com',    'Heyin',    'Sales')

insert into bank.hdfc.employee (id    ,first_name    ,last_name    ,email    ,location,    department) values (2,    'Odetta',    'Buckle'    ,'ncolby0@blogger.com',    'Heyin',    'Sales')


select * from bank.hdfc.employee;

select * from bank.hdfc.employee where id = 10;

select id,first_name from bank.hdfc.employee;


drop table bank.hdfc.employee;



undrop table bank.hdfc.employee;