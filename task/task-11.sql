internal stages:
	-------------------
CREATE TABLE LOAN_PAYMENT_vitech (
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

//create stage 
CREATE OR REPLACE STAGE MY_INTER_STAGE;

//load data into stage 
put file://D:\files\data.csv @MY_INTER_STAGE;

//describe satges 
list @MY_INTER_STAGE

//copy data from stages 
copy into LOAN_PAYMENT_vitech 
      from @MY_INTER_STAGE
file_format = (type = csv 
                   field_delimiter = ',' 
                   skip_header=1);

select * from LOAN_PAYMENT_vitech;



drop table LOAN_PAYMENT_vitech



------------inernal stage client download setup----
download and install 
					
					Run --> %USERPROFILE%\.snowsql\ 
					      we need to change configuration file 
						  
						account --> fm30665.central-india.azure 
						  user ---  vitschool
						  password --  test2344
						  
						  
						  
						                 cmd --> snowsql -v 
						  
						to connect with snowflake -->  snowsql -c example 