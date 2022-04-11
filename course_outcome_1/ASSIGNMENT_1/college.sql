create database college;
use college;
create table department(dno varchar(20) not null,dname varchar(20) not null,primary
key(dno));
create table student( sid varchar(20) not null,sname varchar(20) not null,sex
varchar(10) not null,dob date not null,dno varchar(20) not null,primary
key(sid),foreign key(dno) references department(dno) on delete cascade);
create table faculty(fid varchar(20) not null,fname varchar(30) not null,designation
varchar(20) not null,salary integer(10) check (salary>5000 and salary
<=150000),dno varchar(20) not null,primary key(fid),foreign key(dno) references
department(dno) on delete cascade);
create table course(cid varchar(20) not null,cname varchar(20) not null,credits
integer(10) not null,dno varchar(20) not null,primary key(cid),foreign key(dno)
references department(dno) on delete cascade);
create table register(sid varchar(20) not null,cid varchar(20) not null,sem varchar(10)
not null,foreign key(sid) references student(sid) on delete cascade,foreign key(cid)
references course(cid) on delete cascade);
create table teaching(fid varchar(20) not null,cid varchar(20) not null,sem varchar(10)
not null,foreign key(fid) references faculty(fid) on delete cascade,foreign key(cid)
references course(cid) on delete cascade);
create table hostel(hid varchar(20) not null,hname varchar(20) not null default
"modern hostel",seats integer(20) not null,unique(hid));
insert into department values("d001","computer");
insert into department values("d002","maths");
insert into department values("d003","english");
insert into department values("d004","science");
insert into department values("d005","humanities");
insert into student values("s001","sharanya","f","1998-12-26","d001");
insert into student values("s002","sham","m","1997-01-16","d002");
insert into student values("s003","jacob","m","1998-12-06","d001");
insert into student values("s004","cathy","f","1998-11-23","d003");
insert into student values("s005","ajay","m","1998-03-03","d004");
insert into faculty values("f001","manav","associate professor",50000,"d001");
insert into faculty values("f002","asha","associate professor",40000,"d002");
insert into faculty values("f003","sree","asisstant professor",100000,"d003");
insert into faculty values("f004","akash","associate professor",50000,"d004");
insert into faculty values("f005","lena","associate professor",50000,"d005");
insert into course values("c001","differenciation",10,"d002");
insert into course values("c002","java",10,"d001");
insert into course values("c003","anatomy",10,"d004");
insert into course values("c004","grammar",5,"d003");
insert into course values("c005","networks",10,"d001");
insert into course values("c006","basics humanities",10,"d005");
insert into register values("s001","c002","1");
insert into register values("s001","c005","1");
insert into register values("s002","c001","2");
insert into register values("s005","c003","1");
insert into register values("s004","c004","2");
insert into register values("s003","c002","1");
insert into register values("s006","c006","1");
insert into teaching values("f001","c002","1");
insert into teaching values("f002","c001","2");
insert into teaching values("f003","c004","2");
insert into teaching values("f004","c003","1");
insert into teaching values("f005","c006","1");
insert into hostel values("h001","rose hostel",20);
insert into hostel values("h002","general hostel",20);
insert into hostel values("h003","boys hostel",20);
insert into hostel values("h004","working hostel",20);
insert into hostel values("h005","mixed hostel",25);
select * from department;
select * from student;
select * from faculty;
select * from course;
select * from teaching;
select * from register;
alter table student add grade varchar(5) not null;
insert into student values("s006","lalitha","f","1998-04-08","d005","A");
update student set grade="A" where sid="s001";
update student set grade="A" where sid="s002";
update student set grade="B" where sid="s003";
update student set grade="B+" where sid="s004";
update student set grade="A+" where sid="s005";
select * from student order by dob;
select * from student where dno="d001";
select * from faculty order by salary desc;
select count(sid) as "no of student",dno from student group by dno;
select count(fid) as "no of faculty",dno from faculty group by dno having
salary>=25000; 
