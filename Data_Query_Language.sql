-- DQL - Data Query Language

select * from owners;
insert into owners (firstName, lastName, yearToBurn, age)
values ("Sandu", "Sorin", "1999-05-05", 22),("Aurel", "Coco", "1989-04-04", 32);

alter table owners add column city varchar(50);
update owners set city = "Cluj" where firstName = "Sorin";

select firstName, lastName from owners;

select * from owners where yearToBurn < '1950-02-02';
select * from owners where firstName in ('Martin', 'John');
select * from owners where firstName not in ('Martin', 'John');

select * from owners where city is null;
select * from owners where city is not null;

select * from owners where firstName != 'Martin' "Paul";
select * from owners where age between 22 and 33;

select * from owners where firstName like 'o%';
select * from owners where firstName like '%o';
select * from owners where firstName like '%o%';

select * from owners where yearToBurn like '1999';
select * from owners where yearToBurn like '199%';
select * from owners where yearToBurn like '19%';
select * from owners where yearToBurn like '%04';
select * from owners where yearToBurn like '%-05-%';

select * from owners where firstName like '%in' AND yearToBorn like '19%';

select sum(age) from owner;  -- sum of ages
select avg(age) from owner; --