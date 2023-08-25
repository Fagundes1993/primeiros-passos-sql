use company_constraints;

-- Gerente e seu departamento
select Ssn, Fname, Dname from employee e, department d where (e.Ssn = d.Mgr_ssn); 

-- Recuperando dependentes dos empregados
select Fname, Dependent_name, Relationship from employee, dependent where Essn = Ssn;

select Bdate, Address from employee
	where Fname = 'John' and Minit = 'B' and Lname = 'Smith';

-- Recuperando departamento específico    
select * from department where Dname = 'Jungle';

-- Recuperando colaboradores por departamento
select Fname, Lname, Address from employee, department
	where Dname = 'Beach' and Dnumber = Dno;
