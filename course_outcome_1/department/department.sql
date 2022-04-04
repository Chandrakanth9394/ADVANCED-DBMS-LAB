create database department;
use department;
create table dept(DEPTNO int(20) NOT NULL,DNAME varchar(25) NOT NULL,LOC varchar(20)  NOT NULL);
insert into dept value
(01,'akon','akonvilla'),
(02,'bkon','bkonvilla'),
(03,'ckon','ckonvilla'),
(04,'dkon','dkonvilla'),
(05,'ekon','ekonvilla');
alter table dept rename  department;
alter table department add column PINCODE int(20) NOT NULL;
#select * FROM department;
alter table department drop PINCODE;
alter table department change DNAME  DEPT_NAME varchar(20) ;
alter table department modify column LOC char(10);
drop table department;
select * from department;