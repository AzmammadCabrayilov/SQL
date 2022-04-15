create database World
use World

create table Countryes(
Id int primary key identity,
[Name] nvarchar (100) not null,
PresidentName nvarchar (100) not null,
)

--insert into Countryes values ('Azerbaijan','Ilham Eliyev' ),('Russia','Putin Vladimir' ),('Fransa','Makaron' )

create table Cities(
Id int primary key identity,
[Name] nvarchar (100) not null,
Population int,
CountryId int references Countryes(Id)
)

--insert into Cities values ('Baki',2000,46541,56453 ),('Mosvka',10000,423523,254224 ),('Paris',6500,464541,564453 )

create view CityInfo
as
select  Cities.[Name] 'City Name',Cities.Population 'City Papulation ',Countryes.[Name] 'Country Name' from Cities
join Countryes in Cities.CountryId = Countryes.Id

select * from CityInfo where [Name] = 'B'


create procedure GetCitiesOfCountry @CountryName nvarchar (100)
as
select Name from Cities where CountryId = (Select Id from Countryes)where Name = @CountryName