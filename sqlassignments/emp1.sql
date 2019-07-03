SELECT * FROM rahilschema.emp;

select empname from rahilschema.emp where job = 'Analyst' or job= 'Salesman';

select * from rahilschema.emp where hiredate < '1981-08-30';

select empname from rahilschema.emp where job!= 'Manager';

select * from rahilschema.emp where empno in (7369,7521,7839,7934,7788);

select * from rahilschema.emp where deptno not in (10,30,40);

select * from rahilschema.emp where hiredate between '1981-06-30' and '1981-12-31';

select distinct job from rahilschema.emp;

select empname from rahilschema.emp where comm is Null;

select empname, mgr from rahilschema.emp where mgr is null;

select * from rahilschema.emp where deptno is null;

select * from rahilschema.emp where comm is not null;

select * from rahilschema.emp where empname like 'S%' or empname like '%s';

select * from rahilschema.emp where empname like '_i%';

select count(empno) as "No of employees" from rahilschema.emp;

select count(distinct job) as "No of designation" from rahilschema.emp;

select sum(sal) as "Total salary" from rahilschema.emp;

select max(sal), min(sal), avg(sal) from rahilschema.emp;

select max(sal) from rahilschema.emp where job = 'Salesman';

select empname from rahilschema.emp where deptno not in (30,40,10);

select job, avg(sal), min(sal), max(sal), avg(sal) from rahilschema.emp where deptno = 20 group by deptno having avg(sal) > 1000;

select count(empno), avg(sal) from rahilschema.emp where deptno = 20;

select empname, sal, sal*0.1 as "PF" from rahilschema.emp;

select curdate(), timestampdiff(YEAR,hiredate,CURDATE()) as "No of years in company" from rahilschema.emp where timestampdiff(YEAR,hiredate,CURDATE()) > 25;

select * from rahilschema.emp order by sal;

select * from rahilschema.emp order by hiredate desc;

select empname, sal, sal*0.1 as "PF", sal*0.5 as "HRA", sal*0.3 as "DA", sal+(sal*0.75) as "Gross" from rahilschema.emp order by Gross;

select d.deptno, count(e.empno) from rahilschema.emp e right outer join rahilschema.dept d on d.deptno = e.deptno  group by d.deptno;

select deptno, sum(sal) from rahilschema.emp group by deptno;

select job, count(empno) as "Noofemp" from rahilschema.emp group by job order by Noofemp desc; 

select job, sum(sal), max(sal), min(sal), avg(sal) from rahilschema.emp group by job;

select sum(sal), max(sal), min(sal), avg(sal) from rahilschema.emp where deptno = 20;

select avg(sal) from rahilschema.emp where deptno = 20 group by job having avg(sal) > 1000;
