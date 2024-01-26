-- DATA MANIPULATION LANGUAGE --
rename table petOwner to owners;
alter table owners change ownerLastName lastName varchar(25);
alter table owners add column dateOfBirth date;
alter table owners add column yearToBurn date;
alter table owners drop dateOfBirth;

-- instruction of insert
insert into owners (firstName, lastName, yearToBurn) values ('Jim', 'Jemsson', '1923-09-23');

-- insert with many row
insert into owners values ('John', 'Raul', '1928-08-28'), ('King', 'Martin', '1922-02-22');
-- insert without specify columns
insert into owners values ('Nick', 'Paul', '1955-05-05');


select * from owners;
desc owners;

-- --------- UPDATE ---

update owners set firstName = 'Janes';

-- ------- DELETE ---

delete from owners;
--   =======
-- truncare
truncate table owners;

-- difference beetwin delete and truncate :
-- 1. delete show number of items deleted
-- 2. delete can filter what to delete.