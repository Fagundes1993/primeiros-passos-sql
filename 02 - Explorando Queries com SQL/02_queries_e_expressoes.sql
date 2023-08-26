-- Expressões e alias

-- Recolhendo o valor do INSS
select Fname, Lname, Salary, Salary*0.011 from employee;					/*Expressão sem alias*/
select Fname, Lname, Salary, Salary*0.011 as INSS from employee;			/*Expressão com alias*/
select Fname, Lname, Salary, round(Salary*0.011,2) as INSS from employee;	/*Expressão com alias e duas casas decimais pelo round*/

-- definir um aumento de salário para os gerentes que trabalham no projeto x
desc employee;
desc works_on;
desc project;

SELECT 
    *
FROM
    employee e,
    works_on AS w,
    project AS p
WHERE
    (e.Ssn = w.Essn and w.Pno = p.Pnumber and p.Pname = 'ProductX');
    
SELECT 
    CONCAT(Fname, '', Lname) AS Complete_name,
    Salary,
    ROUND(1.1 * Salary, 2) AS increased_salary
FROM
    employee e,
    works_on AS w,
    project AS p
WHERE
    (e.Ssn = w.Essn AND w.Pno = p.Pnumber
        AND p.Pname = 'ProductX');

-- definindo alias para legibilidade de consulta
SELECT 
    CONCAT(e.Fname, ' ', e.Lname) AS Employee_Name, e.Address
FROM
    employee e,
    department d
WHERE
    d.Dname = 'Research'
        AND d.Dnumber = e.Dno;