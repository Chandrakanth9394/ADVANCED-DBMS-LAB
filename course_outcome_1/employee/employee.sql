create database employee;
use employee;
create table employee(EMPNO varchar(20) not null,EMP_NAME varchar(20) not null,DEPT varchar(20) not null,
SALARY INT(20) not null,DOJ varchar(20) ,BRANCH varchar(20) not null);
INSERT INTO employee value 
('E101','Amit','oduction',45000,'12-mar2000','bangalore'),
('E102','Amit','HR',70000,'03-july-2002','bangalore'),
('E103','sunita','anagemer',120000,'11-jan-2001','mysore'),
('E105','sunita','IT',67000,'01-aug-2001','mysore'),
('E106','mahesh','civil',145000,'20-sept-2003','mumbai');
select * from employee;
select EMPNO,SALARY from employee;
select avg(SALARY) from employee;
select EMPNO from employee;
select count(distinct EMP_NAME) from employee;
select SALARY from employee where SALARY>120000;
select  EMP_NAME from employee order by EMP_NAME desc;
$select distinct EMP_NAME from employee order by EMP_NAME desc; for distinct
select * from employee where EMP_NAME='Amit' and SALARY> 50000;
select sum(salary),emp_name,count(*) as occurences from employee group by emp_name having(count(*)>1); 


