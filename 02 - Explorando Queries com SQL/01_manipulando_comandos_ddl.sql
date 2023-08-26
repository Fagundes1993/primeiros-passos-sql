-- explorando os comandos ddl

select now() as Timestamp;

create database if not exists manipulation;
use manipulation;
drop table bankAccounts;

create table bankAccounts (
	Id_account int auto_increment primary key,
    Ag_num int not null,
    AC_num int not null,
    Saldo float,
    constraint identification_account_constraint unique (Ag_num, Ac_num)
);

create table banckClient(
	Id_client int auto_increment,
    ClientAccount int,
    CPF char(11) not null,
    RG char(9) not null,
    Nome varchar(50) not null,
    Endereco varchar(100) not null,
    Renda_mensal float,
    primary key (Id_Client, ClientAccount),
    constraint fk_account_client foreign key (ClientAccount) references bankAccounts(Id_account)
    on update cascade
);

create table bankTransactions(
	Id_transaction int auto_increment primary key,
    Ocorrencia datetime,
    Status_transaction varchar(20),
    Valor_transferido float,
    Source_account int,
    Destination_account int,
    constraint fk_source_transaction foreign key (Source_account) references bankAccounts(id_Account),
    constraint fk_destination_transaction foreign key (destination_account) references bankAccounts(id_Account)
);

-- Tabelas criadas

-- Adicionando o campo LimiteCredito a tabela bankAccounts

alter table bankAccounts add LimiteCredito float not null default 500.00;

desc bankAccounts;

-- adição e exclusão do campo email na tabela banckAccounts

alter table bankAccounts add email varchar(60);

desc bankAccounts;

alter table bankAccounts drop email;

desc bankAccounts;
