CREATE DATABASE firstExample;

CREATE TABLE periodicos(
id int auto_increment primary key,
nome_periodico varchar(20),
issn int,
id_editora int
);

create table editora(
id integer auto_increment,
nome_editora varchar(120) unique,
pais varchar(5),
primary key (id)
);

alter table periodicos add constraint fk_editora_periodico foreign key (id_editora) references editora(id);

insert into editora (nome_editora, pais) values ('IEEE', 'EUA'), ('DataScienceMagazine', 'EUA');

select * from editora;

insert into editora (nome_editora, pais) values ('IEEE_EU', 'EU');

insert into periodicos(nome_periodico, issn, id_editora) values ('Special Issue', '12345678', '1');

insert into periodicos(nome_periodico, issn, id_editora) values ('Special Issue', '12345678', '1');

insert into periodicos(nome_periodico, issn, id_editora) values ('Special Issue', '22345678', '3');

show tables;

select * from periodicos;