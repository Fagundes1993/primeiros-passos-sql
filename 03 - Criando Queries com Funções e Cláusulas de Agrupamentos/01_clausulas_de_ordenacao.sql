-- clausulas de ordenação

use company_constraints;

select * from employee;

select * from employee order by Dno;

select * from employee order by Fname;

select * from employee order by Fname, Lname;

-- Nome do departamento, nome do gerente e o endereço do departamento
select distinct d.Dname as Department, concat(e.Fname, ' ', e.Lname) as Manager, Address
	from department as d, employee as e, works_on as w, project as p
	where (d.Dnumber = e.Dno and e.Ssn = d.Mgr_ssn and w.Pno = p.Pnumber)
    order by d.Dname asc;

-- SELECT <attribute list>
-- FROM <table list>
-- [ WHERE <condition> ]
-- [ ORDER BY <attribute list> ];