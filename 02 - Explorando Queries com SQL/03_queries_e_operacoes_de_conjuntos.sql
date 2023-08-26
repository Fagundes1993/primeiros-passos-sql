-- Expressões e concatenação de strings

select * from dept_locations;

-- recuperando informações dos departamentos presentes em Vanuatu
select Dname as Department_Name, Mgr_ssn as Manager, Address from department d , dept_locations l, employee e
	where d.Dnumber = l.Dnumber and Dlocation = 'Vanuatu';

-- recuperando todos os gerentes que trabalham em Vanuatu
select Dname as Department_Name, concat(Fname, ' ', Lname) as Manager, Address from department d , dept_locations l, employee e
	where d.Dnumber = l.Dnumber and Dlocation = 'Vanuatu' and Mgr_ssn = e.Ssn;

-- recuperando todos os gerentes de departamentos e seus nomes
select Dname as Department_Name, concat(Fname, ' ', Lname) as Manager, Address from department d , dept_locations l, employee e
	where d.Dnumber = l.Dnumber and Mgr_ssn = e.Ssn;