REM   Script: Deposit
REM   Deposit

create table Deposit ( DepositID char(11)primary key not null,DepOwnerName varchar(30)not null,   
DateOfBirth date, Address varchar(30)not null, DepositAmount number(30,2)not null, Interest number(30,2), Commision number (30,2),   
Total number(30,2));

alter table Deposit drop column Address;

alter table Deposit add HouseNumber number(30,2)not null;

alter table Deposit add StreetName varchar(20)not null;

alter table Deposit add CityName varchar(20)not null;

alter table Deposit add ZIP number(30,2)not null;

insert into Deposit ( DepositID, DepOwnerName, DateOfBirth, CityName, ZIP, StreetName, HouseNumber, DepositAmount)   
values ('0103046441', 'Lamazi Simonashvili', '30-Dec-09', 'Batumi', 9459, 'Didube', 90, 2900);

insert into Deposit ( DepositID, DepOwnerName, DateOfBirth, CityName, ZIP, StreetName, HouseNumber, DepositAmount)   
values ('0103045641', 'Andrew Kolosovi', '06-Dec-09', 'Tbilisi', 9679, 'Sanzona', 67, 2555);

insert into Deposit ( DepositID, DepOwnerName, DateOfBirth, CityName, ZIP, StreetName, HouseNumber, DepositAmount)   
values ('0103099641', 'Simona Lamazishvili', '16-Dec-00', 'Khashuri', 0079, 'Marjanishvili', 76, 10000);

insert into Deposit ( DepositID, DepOwnerName, DateOfBirth, CityName, ZIP, StreetName, HouseNumber, DepositAmount)   
values ('0108845641', 'Sandrika Margvelashviki', '09-Oct-09', 'Batumi', 7654, 'Rustaveli', 56, 1000);

insert into Deposit ( DepositID, DepOwnerName, DateOfBirth, CityName, ZIP, StreetName, HouseNumber, DepositAmount)   
values ('0103045771', 'Polina Kolosovi', '06-Feb-10', 'Tbilisi', 9679, 'Sanzona', 67, 9000);

insert into Deposit ( DepositID, DepOwnerName, DateOfBirth, CityName, ZIP, StreetName, HouseNumber, DepositAmount)   
values ('0103045656', 'Gio Breqvadze', '01-Oct-00', 'Rustavi', 7454, 'Vake', 52, 3000);

select * from Deposit;

update Deposit set Interest = DepositAmount * 0.11 where DepositAmount > 5000;

update Deposit set Interest = DepositAmount * 0.08 where DepositAmount < 5000 and DepositAmount > 2000;

update Deposit set Interest = DepositAmount * 0.06 where DepositAmount < 2000 and DepositAmount > 500;

update Deposit set Interest = DepositAmount * 0.03 where DepositAmount < 500;

update Deposit set Commision =  25;

update Deposit set Total = DepositAmount + Interest - Commision;

select * from Deposit where  Interest > 500 or Interest <200 or CityName = 'Batumi';

delete from Deposit where DepositAmount <300 and DepOwnerName  like 'A%';

drop table Deposit;

