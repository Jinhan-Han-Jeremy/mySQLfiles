-- HW#3
-- Section x
-- Student ID: xxxxxxxxx
-- Last Name, First Name
-- In order to run this sql script with the ^ as your line delimiter, use the follow command options
-- db2 -td"^" -f hw3_sample.sql

connect to cs157a^
drop TRIGGER hw3.classcheck^
drop table hw3.schedule^
drop table hw3.class_prereq^
drop table hw3.class^
drop table hw3.student^

--Creating student table
CREATE TABLE hw3.student ( student_id char (5) NOT NULL, first varchar (20) NOT NULL, last varchar (20) NOT NULL, 
gender char (1) NOT NULL, 
CONSTRAINT CHK_gender CHECK (gender='M' OR gender='F' OR gender='U'), 
CONSTRAINT the_student_id PRIMARY KEY(student_id))^

--Creating class table
CREATE TABLE hw3.class (
       class_id char (5) NOT NULL, 
       name varchar (10) NOT NULL,
       desc varchar (30) NOT NULL,
       CONSTRAINT the_class_id PRIMARY KEY(class_id)
)^

--Creating pre-req table
CREATE TABLE hw3.class_prereq (
       class_id char (5) ,
       prereq_id char (5) NOT NULL,
       CONSTRAINT fk_class_id FOREIGN KEY (class_id) REFERENCES hw3.class (class_id) ON DELETE CASCADE
)^

--Creating schedule table
CREATE TABLE hw3.schedule (
       student_id char (5),
       class_id char (5),
       semester int,
       year int,
       grade char (1) NOT NULL,
       CONSTRAINT CHK_semester CHECK (semester=1 OR semester=2 OR semester=3 ), 
       CONSTRAINT CHK_grade CHECK (grade='A' OR grade='B' OR grade='C' OR grade='D' OR grade='F'),
       CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES hw3.student (student_id) ON DELETE CASCADE,
       CONSTRAINT fk_class_id FOREIGN KEY (class_id) REFERENCES hw3.class (class_id) ON DELETE CASCADE 
)^

