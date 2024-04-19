create database prac_new
use prac_new

create table registration
(
SID int(10) PRIMARY KEY,
EName varchar(25) NOT NULL,
DOB date NOT NULL,
PHONE_Number varchar(10) UNIQUE,
Location varchar(10) NOT NULL,
Certificate Set ('QTP','Salenium','J2EE')
)
DROP TABLE REGISTRATION
Insert into registration values (103,"Ram",'2024-02-20','45569878','Mumbai','QTP,Salenium,J2EE');
ALTER TABLE registration add Gender enum('M','F')
select * from employee

create table Employee
(
EID int(10) primary key,
Ename varchar(25) not null,
Dept varchar(10) not null,
location varchar(25) not null
)
create table Attendance
(
ID int(10),
Attendance Date,
Class varchar(10)
)
drop table Employee
insert into Employee values (105,"Pankaj","Hindi","Mumbai");
insert into attendance values (106,'2024-01-23',"II");

select EMPLOYEE.eid,EMPLOYEE.ename, Attendance.attendance from employee inner join attendance on EMPLOYEE.EID!=Attendance.ID;
select * from employee where eid not in (select id from Attendance)
create table student_attendance
(
EMPID int not null,
ENAME varchar (20),
Date_ date,
Foreign key(EMPID) references registration(SID)
)
insert into student_attendance values(100,"Akshay",'2024-02-20');
delete from registration where sid = 100;
select * from attendance
select Employee.EID,Employee.Ename,Employee.dept, attendance.attendance from Employee RIGHT join attendance on Employee.EID = Attendance.ID
select Employee.EID, Employee.Ename, Attendance.class from Employee,Attendance
SELECT EID,DEP FROM EMPLOYEE UNION SELECT ID, CLASS ATTENDANCE FROM ATTENDANCE;