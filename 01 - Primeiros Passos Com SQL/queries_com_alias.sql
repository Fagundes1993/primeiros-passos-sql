use company_constraints;

show tables;
-- Dnumber : department
desc department;
desc dept_locations;

select * from department;
select * from dept_locations;

-- Erro 1052 - Ambiguidade
select * from department, dept_locations where Dnumber = Dnumber;

-- Retira ambiguidade através do Alias (AS Statment)
select Dname, Dlocation as Department_name
	from department as d, dept_locations as l
    where d.Dnumber = l.Dnumber;

select concat(Fname, ' ', Lname) as Employee from employee;