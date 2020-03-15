drop table if exists student CASCADE;
drop table if exists course CASCADE;
drop table if exists enrolled;

create table student 
   (sid int primary key,
    name varchar(16), 
    login varchar(32), 
    age smallint, 
    gpa numeric(2, 1) check (gpa between 0.0 and 4.0)
   );

create table course 
   (cid varchar(32) primary key, 
    name varchar(32) not null
   );

create table enrolled 
   (sid int references student (sid) on delete cascade, 
    cid varchar(32) references course (cid) on delete cascade, 
    grade char(1) check (grade in ('A', 'B', 'C')),
    primary key (sid, cid)
   );


insert into student (sid, name, login, age, gpa) values (53666, 'Kanye', 'kanye@cs', 39, 4.0);
insert into student (sid, name, login, age, gpa) values (53688, 'Bieber', 'jbieber@cs', 22, 3.9);
insert into student (sid, name, login, age, gpa) values (53655, 'Tupac', 'shakur@cs', 26, 3.5);

insert into course (cid, name) values ('15-445', 'Database Systems');
insert into course (cid, name) values ('15-721', 'Advanced Database Systems');
insert into course (cid, name) values ('15-826', 'Data Mining');
insert into course (cid, name) values ('15-823', 'Advanced Topics in Databases');


insert into enrolled (sid, cid, grade) values (53666, '15-445', 'C');
insert into enrolled (sid, cid, grade) values (53688, '15-721', 'A');
insert into enrolled (sid, cid, grade) values (53666, '15-826', 'B');
insert into enrolled (sid, cid, grade) values (53655, '15-445', 'B');
insert into enrolled (sid, cid, grade) values (53666, '15-721', 'C');