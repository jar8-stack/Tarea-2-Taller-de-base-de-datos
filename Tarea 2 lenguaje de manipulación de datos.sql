use tarea2
-- |9-16| --
--9
select * from emp order by ename;
--10
select empno from emp e
inner join dept d on e.deptno = d.deptno
order by loc;
--11
select ename,job from emp order by sal;
--12
select ename,job from emp order by job,sal; 
--13
select * from emp order by job,sal asc;
--14
select sal,comm from emp where deptno = 30;
--15
select empno from emp order by comm;
--16
--a
select comm from emp;

--17
SELECT DISTINCT ename, comm FROM emp;

--18
SELECT DISTINCT ename, sal FROM emp;

--19
SELECT DISTINCT ename, comm FROM EMP;

--20
SELECT ename as Nombre, sal as Viejo_Salario,(sal+1000) as Nuevo_Salario, deptno as Numero_de_departamento FROM EMP WHERE deptno=30;

--21
SELECT ename as Nombre, sal as Viejo_Salario,(sal+1000) as Nuevo_Salario, deptno as Numero_de_departamento FROM EMP WHERE deptno=30;

--22
SELECT ename AS Nombre, sal as Salario, (sal/2) as Mitad_Salario, comm FROM emp WHERE comm>(sal/2);

--23
SELECT comm FROM emp where comm is null or comm=0 or comm<= ((25*sal)/100);


--24
SELECT ename as Nombre, sal as Salario FROM emp;

--25 
SELECT empno as Codigo, sal as Salario, comm as comm FROM EMP WHERE empno>7500

--26
SELECT ename as Nombre, ASCII(ename) FROM emp WHERE ASCII(ename)>=74;



--b
-- select distinc comm from emp;

-- |45-62|--

--45
select ename  from emp where len(ename) <=5;
--46
select ename ,comm, sal as Actual , (sal+(sal*.6)) as Prox , (sal+(sal*.7)) as Sig from emp; 
--47
select ename,hiredate from emp where job != 'SALESMAN';
--48
select * from emp where empno = 7844 
or empno = 7900 or empno = 7521 or empno = 7782
or empno = 7934 or empno = 7678 or empno = 7369;
--49
select * from emp order by deptno,empno desc;
--50
select * from emp where mgr > empno and
(sal > 1000 and sal < 2000 or deptno = 30); 
--51
select max(sal) as MaxSalario,count(*) as Empleados, sum(comm) Comisiones  from emp;
--52
select * from emp where sal > (select sal from emp where empno = 7934) order by sal;
--53
select ename,job,sal from emp where sal > (select sal from emp where ename = 'ALLEN');
--54
select ename from emp order by ename desc;
--55
select max(sal) as MaxSal , min(sal) as MinSal , (max(sal) - min(sal))as Dif from emp;
--56
select * from emp where sal = (select max(sal) from emp) 
or sal = (select min(sal) from emp);
--57
select d.deptno,d.dname , avg(e.sal) as Med from dept d
inner join emp e on d.deptno = e.deptno
group by d.dname having sal < 5000 and sal >900;
--58
select * from emp e
inner join dept d on e.deptno = d.deptno
where len(d.loc) > 5 order by ename,loc desc;
--59
select * from emp  where sal >= (select avg(sal) from emp);
--60
select * from emp;
--61
select * from emp
--62
select * from emp where comm is not null;

--63 
SELECT COUNT(empno) as Numero_Empleados FROM EMP WHERE deptno=20;

--64
SELECT COUNT(empno) as Numero_Empleados, deptno FROM EMP GROUP BY deptno;

--65
SELECT job, deptno from emp WHERE deptno=10 or deptno=20;

--66
SELECT MGR, ename from emp WHERE  MGR IS NOT NULL ORDER BY  ename DESC;

--67
SELECT * FROM emp WHERE job IN(SELECT job FROM EMP WHERE deptno in (SELECT deptno FROM EMP WHERE deptno in(SELECT deptno FROM dept WHERE loc='CHICAGO')));

--68
SELECT job, COUNT(job) AS Numero_Empleados FROM EMP GROUP BY JOB

--69
SELECT SUM(e.sal) AS Suma_Salario,  d.dname
FROM emp e INNER JOIN dept d
ON e.deptno= d.deptno
GROUP BY d.dname;

--70
SELECT dname, deptno from dept WHERE deptno NOT IN(SELECT deptno FROM EMP);

--71
SELECT * FROM EMP WHERE empno NOT IN(SELECT mgr FROM EMP GROUP BY mgr);

--72
SELECT d.dname as Nombre_Departamento, COUNT(e.deptno) AS Numero_Empleados
FROM emp e INNER JOIN dept d
ON e.deptno= d.deptno
GROUP BY d.dname;

--73
SELECT * FROM EMP WHERE deptno in(SELECT deptno FROM dept WHERE loc='CHICAGO') ORDER BY comm DESC;

--74
SELECT * FROM EMP WHERE deptno IN(SELECT deptno FROM dept WHERE loc='DALLAS' OR loc='NEW YORK');

--75
SELECT ename AS Nombre_Empleado FROM EMP

SELECT ename as Nombre_Jefe FROM EMP WHERE empno IN(SELECT mgr FROM EMP GROUP BY mgr)

--76
SELECT MAX(e.sal), d.dname 
FROM emp e INNER JOIN dept d
ON e.deptno= d.deptno
GROUP BY d.dname;

--78

SELECT SUM(e.sal), d.dname 
FROM EMP e INNER JOIN dept d
ON e.deptno= d.deptno
GROUP BY d.dname;


--79
SELECT TOP 2
empno, MAX(sal) FROM EMP
GROUP BY empno
ORDER BY MAX(sal) DESC;

--80
SELECT COUNT(*) AS Cantidad_Empleados, deptno FROM emp 
GROUP BY deptno;

--Nombres:
--Jorge Said Serrano Soto
--Loreto Alberto Ávila Basto
--Carlos Ivan Aguero Perez