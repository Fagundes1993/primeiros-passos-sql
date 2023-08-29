-- funções e clausulas de agrupamento

select * from employee;

select count(*) from employee;

select count(*) from employee, department
	where Dno = Dnumber;

-- numero de empregados no departamento Soccer
select count(*) from employee, department
	where Dno = Dnumber and Dname = 'Soccer';

-- media salarial por departamento
select Dno, count(*) as numero_empregados, round(avg(Salary),2) as media_salario from employee
	group by Dno;

select Pnumber, Pname, count(*)
	from project, works_on
    where Pnumber = Pno
    group by Pnumber, Pname;

-- Saber quantos salarios diferentes existem na mase de dados
select count(distinct Salary) from employee;

-- informações sobre salarios
select sum(Salary) as total_salary, max(Salary) as maior_salary, min(Salary) as menor_salary, avg(Salary) as media_salary from employee;