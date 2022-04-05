create database Movie1;
use Movie1;
create table ACTOR (Act_id varchar(20) primary key, Act_Name varchar(30) not null, Act_Gender varchar(46) not null);
insert into ACTOR value ('01','akon','M'),
('02','bkon','M'),
('03','ckoni','F'),
('04','dkon','M'),
('05','ekon','M');
create table DIRECTOR (Dir_id varchar(45) primary key, Dir_Name varchar(45) not null, Dir_Phone varchar(23) not null);
insert into DIRECTOR value ('01','john','9645950436'),
('02','Hitchcock','9876543212'),
('03','ckoni','9446446176'),
('04','Steven Spielberg','1236547898'),
('05','james','8956458715');
create table MOVIES (Mov_id varchar(9) primary key, 
Mov_Title varchar(46) not null, Mov_Year varchar(46) not null, 
Mov_Lang varchar(46) not null, Dir_id varchar(46) not null,
FOREIGN KEY(Dir_id) REFERENCES DIRECTOR (Dir_id) on delete cascade );
insert into MOVIES value('01','cowgoat','1999','english','02'),
('02','cowgoa','1998','english','04'),
('03','cowgo','2014','english','02'),
('04','cowg','2045','english','05'),
('05','goat','1997','english','03');
create table MOVIE_CAST (Act_id varchar(20) not null, Mov_id varchar(9) not null, Role varchar(45) not null,
FOREIGN KEY(Act_id) REFERENCES ACTOR (Act_id) on delete cascade,
FOREIGN KEY(Mov_id) REFERENCES MOVIES (Mov_id) on delete cascade); 
insert into  MOVIE_CAST value('01','01','hero'),('02','01','joker'),('03','01','heroine'),('04','01','villain'),('05','01','father of villain'),
('05','02','hero'),('03','02','heroine'),('03','03','heroine'),('03','04','heroine'),('03','05','heroine'),
('01','03','hero'),('04','04','hero'),('05','05','hero');
create table RATING (Mov_id varchar(9), Rev_Stars varchar(66) not null,
FOREIGN KEY(Mov_id) REFERENCES MOVIES (Mov_id) on delete cascade) ;
insert into RATING value('01','3'),('02','3'),('03','2'),('04','4'),('05','5');
select Mov_Title from MOVIES where Dir_id in (select Dir_id from DIRECTOR where  Dir_Name='Hitchcock');
