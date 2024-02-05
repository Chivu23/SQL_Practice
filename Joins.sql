-- ------ JOINS   -----
-- SQL JOIN statement is used to combine data or rows from two or more tables based on a common field between them.
-- "Joins" - a way to extract more information from more than one table.
-- There are 4 main types of joins:
-- CROSS JOIN
-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN

-- CROSS JOIN


select * from owners;
select * from pets;

select * from owners cross join pets;
select * from owners inner join pets on owners.ownersId = pets.ownerId;
select * from owners right join pets on owners.ownersId = pets.ownerId;
select * from owners left join pets on owners.ownersId = pets.ownerId;
select * from owners left join pets on owners.ownersId = pets.ownerId where pets.ownerId is null;

-- equivalent instructions

select * from owners right join pets on owners.ownersId = pets.ownerId;
select * from pets left join owner on owners.ownerId = pets.ownerId;

select * from owners right join pets on owners.ownersId = pets.ownerId where owners.ownerId is null;
select * from owners right join pets on owners.ownersId = pets.ownerId where owners.ownerId is not null;



