/*
-- SQL extras

-- 1. ORDER BY  -  is used to sort the result-set in ascending or descending order
-- a. SELECT column1,column2,...FROM table_name ORDER BY column1[ASC][DESC];
--
-- 2. GROUP BY statement groups row that have the same values into summary rows,
--  like "fine the number of customers in each country "
--      * SELECT column1, column2, ... FROM table_name GROUP BY column 1;
--      * SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;
--
-- 3. HAVING clause was added to SQL because the WHERE keyword could not be used with
-- aggregate functions
--      * SELECT column1, column2, ... FROM table_name GROUP BY column 1 HAVING condition;
--      * SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING;
--      * COUNT(CustomerId)>5;
--
-- 4. ALIASES are used to give a table, or a column in a table, a temporary name
--      * SELECT column1 as newName, column2, ... FROM table_name;
--      * SELECT COUNT(CustomerID) as Nr Of Cust, Country FROM Customers GROUP BY Country;
-- 5. LIMIT is used to restrict the number of result retrieved from database
-- a. SELECT * FROM table_name LIMIT 5;

*/

select * from owners;
select * from owners order by dateOfBirth;
select * from owners order by dateOfBirth desc;
select * from owners order by age desc limit 1;
select max(age) from owners;

select o.ownerId.firsName, lastName, count(petId)
from owners o inner join pets p on o.ownerId = p.ownerId
group by o.ownerId, firsName, lastName;
having count(petId)>2;

--  normally filtering is done with the "where" clause, the only exception being the aggregate functions that can only be filtered with the "HAVING" clause

select * from owners;
select * from pets;