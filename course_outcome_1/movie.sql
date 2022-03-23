create database movie;
use movie;
create table movies(title varchar(20) NOT NULL,director varchar(20) NOT NULL,myear int(20) NOT NULL,rating float(20) NOT NULL);
insert into movies value 
('fargo','coen',1996,8.2),
('raising arizona','coen',1987,7.6),
('spider man','raimi',2000,7.4),
('wonder boys','handson',2000,7.6);
create table actors(actor varchar(20) not null,ayear int(20) not null); 
insert into actors value
('cage',1964),
('hanks',1956),
('maguire',1975),
('mc dormand',1957);
create table acts(actor varchar(20) not null,title varchar(20) not null);
insert into acts value
('cage','raising arizona'),
('maguire','spider man'),
('maguire','wonder boys'),
('mc dormand','fargo'),
('mc dormand','raising arizona'),
('mc dormand','wonder boys');
create table directors(director varchar(20) not null,dyear int(20) not null);
insert into directors value
('coem',1954),
('handson',1945),
('raimi',1959);
select title from movies where myear>1997;
select title from movies where director='handson' and myear>1997;
select title,rating from movies;
select actor "actors and directors" from actors union select director from directors;
select distinct movies.director,acts.actor from movies inner join acts on movies.title=acts.title;
select movies.title from movies inner join acts on movies.title=acts.title where director="coen" and actor="mc dormand";

