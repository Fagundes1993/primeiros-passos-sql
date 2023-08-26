-- inserção de dados no bd company_constraint

use company_constraints;
show tables;

select * from employee;

insert into employee values ('John', 'B', 'Smith', '123456789', '1985-01-09', '1731-Fondren_Houston-TX', 'M', '30000', null, '5');

insert into employee values ('Barry', 'C', 'Rose', '123456781', '1987-08-07', '1732-Fondren_Houston-TX', 'M', '40000', null, '7'),
							('Wallace', 'D', 'Wellington', '123456782', '1990-05-09', '1734-Fondren_Houston-TX', 'M', '20000', null, '6'),
							('William', 'E', 'Cardinale', '123456783', '1982-12-08', '1733-Fondren_Houston-TX', 'M', '50000', null, '8');
                            
insert into dependent values ('123456783', 'Alice', 'E', '1997-04-05', 'Daugther'),
							('123456789', 'Sarah', 'B', '1997-04-05', 'Daugther'),
							('123456781', 'Mia', 'C', '1997-04-05', 'Daugther'),
							('123456782', 'Malkova', 'D', '1997-04-05', 'Daugther');

insert into department values	('Beach', 5, 123456781, '1991-08-01', '1988-05-05'),
								('Jungle', 4, 123456782, '1992-08-01', '1990-05-05'),
                                ('City', 3, 123456783, '1991-08-01', '1988-05-05');

insert into dept_locations values	(3, 'Chicago'),
									(4, 'Vanuatu'),
                                    (5, 'Omaha');

insert into project values ('PlayStation', 3, 'Vanuatu', 4),
						   ('Breitling', 10, 'Vanuatu', 4),
                           ('AMG', 20, 'Chicago', 3),
                           ('Pagani', 30, 'Omaha', 5);