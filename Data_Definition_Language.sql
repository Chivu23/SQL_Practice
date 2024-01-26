-- DATA DEFINITION LANGUAGE --

/* create new table */
create table owners
(
firstName varchar(25) not null,
lastName varchar(25) not null
);

/* add column to table */
alter table owners
add column age int;

/* delete column from table */
alter table owners
drop age;

desc owners;  -- shwo structure of table

/* modify column - mandatory to specif all prop !!!!! */
alter table owners modify firstName char(25) not null;

/* "change" change name of a column*/
alter table owners change lastName ownerLastName char (25) not null;

/* "rename" change the name of a table*/
alter table owners rename to petOwner;

/* drop table delete table and all info */
drop table petOwner;  --  !!!! delete table and all info an not recovery