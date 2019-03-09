/*Code from Douglas - teacher at KEA*/

#view all databases
show databases;

#create a new database
create database MyDB;

#use a particular database
use MyDB;

#create a table
create table person(
id int(8),
name varchar(28),
address varchar(28),
phoneNo int(8)
);

#fill table with relevant data
insert into person
values(1, 'Douglas', 'My Home', 12345678);

#add a column (dob) to 'person' table
alter table person
add column dob varchar(12);

#add data to the new column
update person
set dob = '12.12.00'
where id = 1;

#view all data in 'person' table
select * from person;

#change the dob for id 1
update person
set dob = '2000-12-12'
where id = 1;

#change column (dob) type to date 'yyyy-mm-dd'
alter table person
modify dob date;

#set column (id) to be the primary key and auto increment
alter table person
modify id int auto_increment primary key;

#add data to 'person' table
insert into person (name, address, phoneNo, dob)
values ('Genni', 'Frederikssundsvej 33', 347464535, '1975-11-13');

#place column (dob) after column (phoneNo)
alter table person
modify dob date after phoneNo;

select * from person;