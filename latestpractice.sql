use practice_myql

select * from registration;
insert into registration values(9,"jay","kashi",35000);
delete from registration where eid=1;
update registration set city ="kashi" where city="ramnagaar";
select EID,ENAME from registration;
select ename from registration where salary>=45000;
select EID from registration where ename in ("JAYESH","JAY");
select Eid from registration order by eid desc;
select EID from registration where Ename="kishan";
select ename from registration order by ename desc;
select max(salary) from registration;
select min(salary) from registration;
select avg(salary) from registration;
select sum(salary) from registration;
select count(EID) from registration;
select count(EID) from registration group by city order by count(EID) asc;
select count(city) from registration group by city having city="kashi";
select ucase(ename) from registration;
select * from registration order by eid desc limit 2;
select * from registration order by eid asc limit 1;
select count(city) from registration group by city order by count(City);
select distinct city from registration;
select now() as Timestamp;
select ename as Names from registration;
select ename from registration where ename like "%m";
select ename from registration where ename like "j%";
select ename from registration where ename like "%a%";
select ename from registration where ename like "____";
select ename from registration where ename like "_____";
select ename from registration where ename like "%m","___";
delete from registration where eid in (8,9);
drop table jay;
select distinct city from registration;
select concat(ename, salary) from registration;
select concat(ename,"_",salary) from registration;
select ltrim(ename) from registration;
select rtrim(ename) from registration;
select trim(ename) from registration;
select concat(trim(ename),"_",trim(salary)) as TableInfo from registration;
select concat(salary,ename) from registration order by concat(ename,salary) desc;
update registration set ename="jaggu" where ename="jayesh";
update registration set salary=salary-200;
select * from registration;
alter table registration add Email varchar(20);
update registration set email="a@camonk.com" where city="shrinagar";
alter table registration drop email;
alter table registration add Email varchar (20) after ename;
alter table registration add mail varchar (20) first;
alter table registration drop mail;
select length(ename) from registration;
select length("hi bogys how are you");
select max(salary) from registration where salary <(select max(salary) from registration);
create table incentive
select max(salary) from registration where salary < (select max(salary) from registration where salary <(select max(salary) from registration));
create table incentive
(
ID int(10),
Incentive_amount long(20),
Date_ date
)
insert into incentive values (9, 2000, '2025-06-03');
select * from incentive;
select * from status_;
select 
create table status_
(
ID int(10),
marital_status varchar(20),
Gender varchar(5)
)
insert into status_ values (9, "No", "M");
select ename from registration where eid in (select id from incentive);
select ename from registration where eid in (select id from status_ where marital_status="no")
select Ename,Salary from registration where EID in (select id from status_ where Gender = "F")
select ename from registration where eid in (select id from incentive where incentive_amount>=5000)
select ename from registration where eid in (select id from incentive where id in (select id from status_ where marital_status="Yes"))
select marital_status from status_ where id in (select eid from registration where salary >35000)
select ename from registration where eid not in(select id from incentive);
select date_ from incentive where id in (select eid from registration where ename like "%m");
select date_ from incentive where id in (select eid from registration where ename like "___");
select marital_status from status_ where id in (select eid from registration where city ="kashi")
select ename from registration where eid in (select id from status_ where marital_status="yes" and gender="m")