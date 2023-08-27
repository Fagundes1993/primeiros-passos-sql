-- Clausulas com exists e unique

select * from dependent;

-- Quais employees possuem dependentes
select  e.Fname, e.Lname from employee as e
	where exists(select * from dependent as d
					where e.Ssn = d.Essn);

-- Quais empregados naõ possuem dependentes
select  e.Fname, e.Lname from employee as e
	where not exists(select * from dependent as d
					where e.Ssn = d.Essn);

-- gerentes que possuem dependentes
select e.Fname, e.Lname from employee as e, department d
	where(e.Ssn = d.Mgr_ssn) and exists (select * from dependent as d where e.Ssn = d.Essn);

-- Consultando se existem empregados com mais de um filho
select Fname, Lname from employee
	where(select count(*) from dependent where Ssn=Essn)>=2;

select * from employee;