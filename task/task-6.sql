select * from employees ;


select * from dependents ;


select A.*,'|',B.*  from employees A  inner join 
                         dependents B
                        on A.EMPLOYEE_ID = B.EMPLOYEE_ID




select A.employee_id
    ,A.first_name
    ,A.email
    ,A.salary
    ,B.FIRST_NAME
    ,B.RELATIONSHIP
    from employees A  ,
        dependents B
        where A.EMPLOYEE_ID = B.EMPLOYEE_ID

                        

select A.employee_id
    ,A.first_name
    ,A.email
    ,A.salary
    ,B.FIRST_NAME
    ,B.RELATIONSHIP
    from employees A  inner join 
                         dependents B
                        on A.EMPLOYEE_ID = B.EMPLOYEE_ID




select A.employee_id
    ,A.first_name
    ,A.email
    ,A.salary
    ,B.FIRST_NAME
    ,B.RELATIONSHIP
    from employees A  left join 
                         dependents B
                        on A.EMPLOYEE_ID = B.EMPLOYEE_ID



select A.employee_id
    ,A.first_name
    ,A.email
    ,A.salary
    ,B.FIRST_NAME
    ,B.RELATIONSHIP
    from employees A  right join 
                         dependents B
                        on A.EMPLOYEE_ID = B.EMPLOYEE_ID

select A.employee_id
    ,A.first_name
    ,A.email
    ,A.salary
    ,B.FIRST_NAME
    ,B.RELATIONSHIP
    from employees A  full join 
                         dependents B
                        on A.EMPLOYEE_ID = B.EMPLOYEE_ID