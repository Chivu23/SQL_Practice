--   ---------------
-- 1. A primary key is a column or a set of columns that uniquely identifies each row in a table.
-- 2. A primary key cannot have NOT NULL values.
-- 3. A table can have one and only one primary key.

--  --------------

alter table owners add column ownerId int primary key auto_increment;
alter table owners modify column ownerId int auto_increment first;

desc owners;  -- shortcut from describe

select * from owners;

insert into owners (firstname, lastname, dateOfBirth, age) values ("Anton", "Pan", 1923-10-10);
insert into owners (firstname, lastname, dateOfBirth, age) values ("Anton", "Pan", 1923-10-10);


create table pets (
petId int not null auto_increment,
race varchar(45) not null,
dateOfBirth date not null,
ownerId int not null,
primary key (petId),
constraint fk_pets_owners foreign key (ownerId) references owners(ownerId)
);


select * from owners;
select * from pets;
insert into pets (race, dateOfBirth, ownerId)
values ('european', 2020-10-05, 7);

delete from pets where ownerId = 7;
delete from owners where ownerId = 7;
