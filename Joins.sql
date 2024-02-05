-- ------ JOINS   -----

-- SQL JOIN statement is used to combine data or rows from two or more tables based on a common field between them.
-- "Joins" - a way to extract more information from more than one table.
-- There are 4 main types of joins:
-- CROSS JOIN - all the combinations between the records in the right and the left table will be brought
-- INNER JOIN - all the data that exists in both tables will be brought, the comparison being made on the column on which the join condition is made
-- LEFT JOIN - all the records from the table on the left are brought and compared with those on the right.
--              In this way, all the rows from the table on the left will be brought, and the columns related to the table on the right will be filled in only for the rows that have an equivalent.
--              (  those whose primary key exists in the table on the RIGHT )
-- RIGHT JOIN  - all the records from the table on the right are brought and compared with those on the left.
--              in this way, all the rows from the table on the right will be brought, and the columns related to the table on the left will be filled in only for the rows that have an equivalent.
--               ( those whose primary key exists in the table on the LEFT )
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



