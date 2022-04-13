



alter table Workers add constraint pinky unique(Id)


Create table Workers
(
	Id int,
	Name nvarchar(50) not null,
	Surname nvarchar(60) not null,
	Salary money not null
)

insert into Workers values (1,N'Əzi',N'Cəbrayılov',6500),(2,'Ilham','Eliyev',3200),(3,'Vusal','Nesirli',120),(4,'Emila','Ahmadova',30)

--Query 1
select * from Workers
where name='Ilham'

--Query 2

select*from Workers
order by Salary desc

--Query 3

select*from Workers
Where name like'%L_'

-----------------------------------------

CREATE TABLE SellSchehule(
Id INT UNIQUE,
IncomingPrice MONEY NOT NULL,
SellPrice MONEY NOT NULL,
SellTime DATETIME DEFAULT GETDATE(),
)

INSERT INTO SellSchehule(Id,IncomingPrice,SellPrice) VALUES (1,52,75),(2,25,42),(3,10,18)

SELECT*From SellSchehule
WHERE SellPrice>1

ALTER TABLE Sellers
ADD WorkerId INT REFERENCES Workers(Id)

Exec SP_RENAME 'SellSchehule','Sellers'


truncate table 