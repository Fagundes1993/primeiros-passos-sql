-- having

-- SELECT <attribute and function list>
-- having

-- Pesquisando grupos com mais de uma pessoa com media salarial maior que 30000
select Dno, count(*)
	from employee
    where Salary > 30000
    group by Dno
    having count(*)>=2;

-- Informando o número de empregados que possuem salario maior que 80000 por departameto
select Dno, count(*) from employee
	where Salary>80000
    and Dno in (select Dno from employee
			group by Dno
            having count(*)>=2);

-- FROM <table list>
-- [ WHERE <condition> AND <condition2> ]
-- [ GROUP BY <grouping attribute(s)> ]
-- [ HAVING <group condition> ]
-- [ ORDER BY <attribute list> ];
