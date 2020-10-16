use dbms;
create table student(
stu_id int primary key,
stu_name varchar(40),
stu_address varchar(50),
stu_gen varchar(10),
stu_age int not null,
stu_phone char(10));

insert into student values (1,"Mohan","MP","M",21,8956475862);
insert into student values (2,"Ram","Rajasthan","M",40,7865428795);
insert into student values (3,"Priti","UP","F",19,8956475862);
insert into student values (4,"Rohan","Karnataka","M",22,8956475862);
insert into student values (5,"Priyanka","Mumbai","F",16,8956475862);

select * from student;

create table library(
  issue_id int primary key,
    stu_id int not null,
    book_name varchar(50),
    stu_gender varchar(10),
    issue_date date
);

insert into library values(0124,4,"Data structure","M",'2020-03-05');
insert into library values(0125,1,"Python for Data science","M",'2020-04-15');
insert into library values(0126,1,"DBMS Basics","M",'2020-04-21');
insert into library values(0127,3,"C++ Basics","F",'2020-05-03');
insert into library values(0128,5,"Machine Learning","F",'2020-05-10');





select student.stu_name,library.book_name from student 
left join library on student.stu_id=library.stu_id;


insert into library values(0129,2,"Machine Learning","M","2020-05-03");

-- insert into library values(0130,2,"C++ Basics","M",'2020-05-21');

-- drop from library where issue_id=0130 ;



select * from student 
left join library on student.stu_id=library.stu_id where student.stu_name="Priti";
 
 
select * from student 
left join library on student.stu_id=library.stu_id where student.stu_gen="M";


-- right join

select * from student
right join library on student.stu_id=library.stu_id;





 select * from student  
 right join library on student.stu_id=library.stu_id where student.stu_name="Ram"; 





select * from student 
right join library on student.stu_id=library.stu_id where student.stu_gen="F";









 

