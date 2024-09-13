/s3 location ?
//need to create table 
//source --> S3
//Target --> snowflake 

//Creating the table / Meta data

create database OUR_FIRST_DB;

CREATE or replace TABLE OUR_FIRST_DB.PUBLIC.LOAN_PAYMENT (
  Loan_ID STRING,
  loan_status STRING,
  Principal STRING,
  terms STRING,
  effective_date STRING,
  due_date STRING,
  paid_off_time STRING,
  past_due_days STRING,
  age STRING,
  education STRING,
  Gender STRING);
  
  create database OUR_FIRST_DB;
 //Check that table is empy
 USE DATABASE OUR_FIRST_DB;

 SELECT * FROM LOAN_PAYMENT;

 
 //Loading the data from S3 bucket
  
 COPY INTO LOAN_PAYMENT
    FROM s3://bucketsnowflakes3/Loan_payments_data.csv
    file_format = (type = csv 
                   field_delimiter = ',' 
                   skip_header=1);
    

//Validate
 SELECT * FROM LOAN_PAYMENT;

desc table LOAN_PAYMENT;


select 
  LOAN_ID
,LOAN_STATUS
,PRINCIPAL
,TERMS
,EFFECTIVE_DATE
,DUE_DATE
,PAID_OFF_TIME
,PAST_DUE_DAYS
,EDUCATION
,GENDER
,AGE
,case when age > 21 then 'Major' else 'Minor' end  as "Status"
from LOAN_PAYMENT  order by age asc 




--------------------------------------------------

create or replace stage OUR_FIRST_DB.PUBLIC.ext_loan_stage 
    url= 's3://bucketsnowflakes3/Loan_payments_data.csv'

list @OUR_FIRST_DB.PUBLIC.ext_loan_stage ;



CREATE TABLE OUR_FIRST_DB.PUBLIC.LOAN_PAYMENT_V1 (
  Loan_ID STRING,
  loan_status STRING,
  Principal STRING,
  terms STRING,
  effective_date STRING,
  due_date STRING,
  paid_off_time STRING,
  past_due_days STRING,
  age STRING,
  education STRING,
  Gender STRING);



select * from LOAN_PAYMENT_V1;

 COPY INTO LOAN_PAYMENT_V1
    FROM @OUR_FIRST_DB.PUBLIC.ext_loan_stage
    file_format = (type = csv 
                   field_delimiter = ',' 
                   skip_header=1);


CREATE TABLE OUR_FIRST_DB.PUBLIC.LOAN_PAYMENT_V2 (
  Loan_ID STRING,
  loan_status STRING,
  age int);

  select * from loan_payment_v2 ;

COPY INTO OUR_FIRST_DB.PUBLIC.LOAN_PAYMENT_V2 (Loan_ID,loan_status,age)
    FROM (select 
            s.$1,
            s.$2,
            s.$9
            --case when s.$9 > 21 then 'Major' else 'Minor' end  as "Status"
          from @OUR_FIRST_DB.PUBLIC.ext_loan_stage s)
    file_format= (type = csv field_delimiter=',' skip_header=1) ;

CREATE or replace TABLE OUR_FIRST_DB.PUBLIC.LOAN_PAYMENT_V3 (
  Loan_ID STRING,
  loan_status STRING,
  age int,
  p_Status string);

  

    COPY INTO OUR_FIRST_DB.PUBLIC.LOAN_PAYMENT_V3 (Loan_ID,loan_status,age,p_Status)
    FROM (select 
            s.$1,
            s.$2,
            s.$9,
           ( case when s.$9 > 21 then 'Major' else 'Minor' end  )
          from @OUR_FIRST_DB.PUBLIC.ext_loan_stage s)
    file_format= (type = csv field_delimiter=',' skip_header=1) ;


 select * from LOAN_PAYMENT_V3;   