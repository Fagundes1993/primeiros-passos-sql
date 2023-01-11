show databases;
create database if not exists first_example;
use first_example;
CREATE TABLE person(
	person_id smallint unsigned,
	fname varchar(20),
	lname varchar(20),
	gender enum('M','F'),
	birth_date DATE,
	street varchar(30),
	city varchar(20),
	state varchar(20),
	country varchar(20),
	postal_code varchar(20),
    constraint pk_person primary key (person_id)
);

desc person;

create table favorite_food(
	person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id, food),
    constraint fk_favorite_food_person foreign key(person_id) references person(person_id)
);

desc favorite_food;
show databases;
desc information_schema.table_constraints;
select * from information_schema.table_constraints where constraint_schema = 'first_example';

desc person;

insert into person values ('67', 'Carol', 'Silva', 'F', '1979-08-21', 'Rua Tal', 'Cidade J', 'RJ', 'Brasil','2605400'),
						  ('3', 'Edson', 'Silva', 'F', '1979-08-21', 'Rua Tal', 'Cidade J', 'RJ', 'Brasil','2605401'),
						  ('4', 'Djalma', 'Silva', 'F', '1979-08-21', 'Rua Tal', 'Cidade J', 'RJ', 'Brasil','2605402'),
                          ('2', 'Roberta', 'Silva', 'F', '1979-08-21', 'Rua Tal', 'Cidade J', 'RJ', 'Brasil','2605403');
select * from person;

delete from person where person_id = 67;

desc favorite_food;

insert into favorite_food values (1, 'Lasanha'),
								 (2, 'Castanha'),
								 (3, 'Pizza'),
                                 (4, 'Blueberry');

select * from favorite_food;