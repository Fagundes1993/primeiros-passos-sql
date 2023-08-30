-- case statement

show databases;

use company_constraints;

show tables;

select Fname, Salary, Dno from employee;
-- desabilitar o safe mode
update employee set Salary =
		case
			when Dno = 5 then Salary + 2000
            when Dno = 6 then Salary + 2000
            when Dno = 1 then Salary + 10000
            else Salary + 0
		end;