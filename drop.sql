connect to cs157a;
delete from hw3.student;
delete from hw3.class;
delete from hw3.class_prereq;
delete from hw3.schedule;

drop TRIGGER hw3.classcheck ;
drop table hw3.schedule;
drop table hw3.class_prereq;
drop table hw3.class;
drop table hw3.student;