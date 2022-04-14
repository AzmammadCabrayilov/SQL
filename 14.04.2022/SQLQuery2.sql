CREATE DATABASE  Company
USE Company

-------------EMPLOYES

CREATE TABLE Employes(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar (100) not null,
Surname nvarchar (100) not null,
DutyId int references Dutys(Id),
Salary money
)
truncate table Employes

insert into Employes values ('Hesen','Musayev',1,900),('Rauf','Semedov',2,1800),('Terlan','Eliazde',3,2000),('Ulvi','Abdullazada',1,900),('Cumsud','Celebi',3,2000),(N'Əzi',N'Cəbrayılov',2,1800)

-------------DUTYS

create table Dutys(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar (100) not null,
)
insert into Dutys values ('Security'),('CEO'),('Director')
select * from dutys

truncate table Dutys

-------------FILIALS

create table Filials(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar (100) not null,
)

insert into Filials values ('Koroglu'),('Genclik')
select * from Filials

-------------PRODUCTS

create table Products(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar (100) not null,
BuyingPrice money not null,
OrderPrice money not null
)
insert into Products values ('Baltika9',2,3),('Lassa',143,180),('Apple Watch',780,949),('Badamli',10,15),('Pati',5,10)
select*from Products

-------------ORDERS

create table Orders (
Id int primary key identity,
ProductId int references Products(Id),
EmployeeId int references Employes(Id),
OrderTime datetime default getdate(),
FilialId int references Filials(Id)
)
truncate table Orders

insert into Orders(ProductId,EmployeeId,FililalId) values (1,2,2,),(3,1,1),(4,1,1),(2,2,2)