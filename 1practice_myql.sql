use practice_myql

create table registration
( 
EID int(3),
Ename varchar(15),
City varchar(25),
Salary int(10)
)
insert into registration values(7,"khush","nagpur",70000);
DELETE FROM registration WHERE EID = 1;
update registration set city = "kashi" where EID=5;
select EID from registration order by EID asc;
select count(EID) from registration;
select * FROM registration having EID = 2;
select * FROM registration;
select count(City) from registration;
select count(EID) from registration group by city order by count(EID) asc;
select count(City) from registration group by city order by count(City) asc;
select count(Salary) from registration group by Salary;
select Salary from registration group by Salary;
select count(City) from registration group by city having city="nagpur";
select ucase(ename) from registration;
select lcase(ename) from registration;
