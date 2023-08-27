-- subqueries
use company_constraints;

select distinct Pnumber from project
	where Pnumber in
		(
			select Pnumber
            from project, department, employee
            where (Mgr_ssn = Ssn and Lname = 'Smith' and Dnum = Dnumber)
		)
        or
        (select distinct Pno
			from works_on, employee
            where (Essn=Ssn and Lname='Smith')
		);

select distinct * from works_on
	where (Pno,Hours) in(select Pno, Hours
							from works_on
                            where Essn = 123456782);

select * from employee;