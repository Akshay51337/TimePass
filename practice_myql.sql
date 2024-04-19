use practice_myql

create table registration
( 
EID int(3),
Ename varchar(15),
City varchar(25),
Salary int(10)
)
insert into registration values(6,"jayesh","nagpur",50000);
DELETE FROM registration WHERE EID = 1;
update registration set city = "kashi" where EID=5;
select EID from registration order by EID asc;
select count(EID) from registration;
