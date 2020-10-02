create database University;
use University;
create table Students (
	sid int primary key,
    name varchar(50),
    branch varchar(50),
    state varchar(50)
);
alter table Students 
add cgpa float;
show tables;
select * from Students;
insert into Students values(101,"Ritishek","CSE","Uttar Pradesh");
insert into Students values(102,"Yogi","CSE","Madhya Pradesh");
insert into Students values(103,"Lalit","CSE","Rajasthan");
insert into Students values(104,"Vivek","CSE","Delhi");
insert into Students values(105,"Mahi","ECE","Uttar Pradesh");
insert into Students values(106,"Aryan","ECE","Bihar");
insert into Students values(107,"Rahul","CSE","Maharashtra");
update Students
set cgpa="9.8"
where sid=105;
update Students
set cgpa="9.6"
where sid=107;
update Students
set cgpa="9.2"
where sid=104;
update Students
set cgpa="9.4"
where sid=102;
update Students
set cgpa="9.5"
where sid=106;
update Students
set cgpa="9.0"
where sid=103;
update Students
set cgpa="8.6"
where sid=101;
select * from Students;
select * from Students order by name;
select * from Students order by name desc;
select * from Students where branch="CSE" order by name asc;
select * from Students order by name asc, state desc;

select * from Students group by name , state having branch="CSE";
select * from Students group by name , state having branch="CSE" order by name asc;

select count(*) from Students;
select count(*) from Students where branch="CSE";
select count(*) from Students where cgpa>=9.0;

select sum(cgpa) from Students;

select avg(cgpa) from Students;

select avg(cgpa) from Students where branch="CSE";

select avg(cgpa) from Students where branch="ECE";

select name,branch,state from Students where cgpa>=(
select avg(cgpa) from Students);

select max(cgpa) from Students;

select * from Students where cgpa=(
select max(cgpa) from Students);

select min(cgpa) from Students;

select * from Students where cgpa=(
select min(cgpa) from Students);

select * from Students where cgpa>=8.0 and cgpa<=9.0;

select * from Students where cgpa>=9.0 and branch="CSE";

select * from Students where state="Uttar Pradesh" or state="Madhya Pradesh";

select * from Students where not state="Uttar Pradesh";

select * from Students where name like "R%";

select * from Students where name like "R%l";

select * from Students where name not like "R%";


select * from Students where branch in 
(select branch from Students where cgpa = 
(select max(cgpa) from Students)
);

select * from Students where state in 
( select state from Students where cgpa=
( select max(cgpa) from Students));









