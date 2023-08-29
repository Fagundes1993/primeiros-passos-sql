-- group by

select * from project;

select * from employee;

select Pnumber, Pname, count(*), avg(Salary)
	from project, works_on, employee
    where Pnumber = Pno and Ssn = Essn
    group by Pnumber, Pname;