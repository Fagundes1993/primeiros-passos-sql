-- like e between
select * from employee;

select concat(Fname, ' ', Lname) Complete_Name, Dname as Department_Name from employee, department
	where(Dno = Dnumber and Address like '%Houston%');

select Fname, Lname from employee where (Salary >= 20000 and Salary <= 40000);

select Fname, Lname from employee where (Salary between 20000 and 40000);



    