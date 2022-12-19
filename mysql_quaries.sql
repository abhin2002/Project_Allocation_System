use projectallocationsystem;
create table student(
	sid int(20) auto_increment primary key,
    course varchar(500) not null,
    semester int(20),
    BtechOrPlustwo varchar(500));
alter table student auto_increment = 1001;
alter table student add sname varchar(500);
alter table student modify semester char(50);
alter table student add  (topic1 varchar(500), topic2 varchar(500), topic3 varchar(500), topic4 varchar(500));



create table sudentInterestedTopic(
	topic1 varchar(500),
    topic2 varchar(500),
    topic3 varchar(500),
    topic4 varchar(500));
    
alter table sudentInterestedTopic add sid int(20) auto_increment;
alter table sudentInterestedTopic add foreign key(sid) references student(sid);
drop table sudentInterestedTopic;

create table professor(
	pid int auto_increment primary key,
    pname varchar(200),
    qualifications varchar(500));
alter table professor auto_increment = 101;

create table professorKD(
	pid int,
    area1 varchar(200),
    area2 varchar(200),
    area3 varchar(200),
    area4 varchar(200));
alter table professorKD add foreign key(pid) references professor(pid);
drop table professorKD;
alter table professor add  (area1 varchar(200),
    area2 varchar(200),
    area3 varchar(200),
    area4 varchar(200));
    
create table project(prid int auto_increment primary key,
	proname varchar(200),
    prereqeuisiteK varchar(500));
    
alter table project auto_increment = 1;
alter table project add(a1 varchar(200),
    a2 varchar(200),
    a3 varchar(200),
    a4 varchar(200));

create table projectArea(
	prid int,
	a1 varchar(200),
    a2 varchar(200),
    a3 varchar(200),
    a4 varchar(200));
alter table projectArea add foreign key(prid) references project(prid);

insert into student(sname,course,semester,BtechOrPlustwo) values('abhin','imsc',3,'plustwo');
delete from student where sid = 1002;
select * from student;
select * from professor;
delete from student;
delete from professor;
drop table projectArea;
select * from project;


    