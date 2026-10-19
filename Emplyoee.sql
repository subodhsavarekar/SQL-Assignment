-------------EMPLOYEE AND INCENTIVE ---------------------------------

create table Employee
(
Emp_id NUMBER,
First_name varchar2 (20),
Last_name varchar2 (20),
salary number,
Joinig_date date,
Department VARCHAR2 (20),
PRIMARY KEY (Emp_id)
);

insert into Employee values (1,'John','Abraham',1000000,to_date('01/01/2013','DD-MM-YY'),'Banking');
insert into Employee values (2,'Michael','Clarke',800000,to_date('01/01/2013','DD-MM-YY'),'Insurance');
insert into Employee values (3,'Roy','Thomas',700000,to_date('01/02/2013','DD-MM-YY'),'Banking');
insert into Employee values (4,'Tom','Jose',600000,to_date('01/02/2013','DD-MM-YY'),'Insurance');
insert into Employee values (5,'Jerry','Pinto',650000,to_date('01/02/2013','DD-MM-YY'),'Insurance');
insert into Employee values (6,'Philip','Mathew',750000,to_date('01/01/2013','DD-MM-YY'),'Services');

drop table Employee;

SELECT * FROM Employee;


--------------------------

Create TABLE Incentives
(
Employee_ref_id NUMBER,
Incentive_date DATE,
Incentive_amount NUMBER
);

SELECT * FROM Incentives;

INSERT INTO Incentives VALUES (1, to_date ('01/02/2013','DD-MM-YY'),5000);
INSERT INTO Incentives VALUES (2, to_date ('01/02/2013','DD-MM-YY'),3000);
INSERT INTO Incentives VALUES (3, to_date ('01/02/2013','DD-MM-YY'),4000);
INSERT INTO Incentives VALUES (1, to_date ('01/01/2013','DD-MM-YY'),4500);
INSERT INTO Incentives VALUES (2, to_date ('01/01/2013','DD-MM-YY'),3500);

SELECT * FROM Incentives;


-------------------------------------------------------------------------------------

--1.Write create table syntax for employee table and Incentive table
       
  create table Employee
(
Emp_id NUMBER,
First_name varchar2 (20),
Last_name varchar2 (20),
salary number,
Joinig_date date,
Department VARCHAR2 (20),
PRIMARY KEY (Emp_id)
);   


Create TABLE Incentives
(
Employee_ref_id NUMBER,
Incentive_date DATE,
Incentive_amount NUMBER
);

--2.	Writesyntax forinsert data into table of employee table and Incentive table

insert into Employee values (1,'John','Abraham',1000000,to_date('01/01/2013','DD-MM-YY'),'Banking');
insert into Employee values (2,'Michael','Clarke',800000,to_date('01/01/2013','DD-MM-YY'),'Insurance');
insert into Employee values (3,'Roy','Thomas',700000,to_date('01/02/2013','DD-MM-YY'),'Banking');
insert into Employee values (4,'Tom','Jose',600000,to_date('01/02/2013','DD-MM-YY'),'Insurance');
insert into Employee values (5,'Jerry','Pinto',650000,to_date('01/02/2013','DD-MM-YY'),'Insurance');
insert into Employee values (6,'Philip','Mathew',750000,to_date('01/01/2013','DD-MM-YY'),'Services');


INSERT INTO Incentives VALUES (1, to_date ('01/02/2013','DD-MM-YY'),5000);
INSERT INTO Incentives VALUES (2, to_date ('01/02/2013','DD-MM-YY'),3000);
INSERT INTO Incentives VALUES (3, to_date ('01/02/2013','DD-MM-YY'),4000);
INSERT INTO Incentives VALUES (1, to_date ('01/01/2013','DD-MM-YY'),4500);
INSERT INTO Incentives VALUES (2, to_date ('01/01/2013','DD-MM-YY'),3500);

--3.Get all employee details from the employee table 

SELECT * FROM Employee;  

--4.	Get First_Name,Last_Name from employee table

select first_name ,last_name from employee;

--5.	Get First_Name from employee table using alias name “Employee Name”

select first_name as Employee_Name from employee;

--6.	Get First_Name from employee table in upper case

select upper(first_name) as first_name from employee;

--7.	Select first 3 characters of FIRST_NAME from EMPLOYEE

select substr (first_name ,1,3)AS FIRST_NAME from employee;

--8.	Get position of 'o' in name 'John' from employee table

select instr (first_name,'o') as position_of_o from employee
where First_name = 'John';

--9.	Get FIRST_NAME from employee table after removing white spaces from right side.

select FIRST_NAME , RTRIM(FIRST_NAME)AS TRIMED_FIRST_NAME FROM EMPLOYEE;

--10.	Get First_Name from employee table after replacing 'o' with '$'

SELECT REPLACE (FIRST_NAME,'o','$')AS FIRST_NAME FROM EMPLOYEE;

--11.	Get First_Name and Last_Name as single column from employee table separated by a '_'

SELECT (first_name || '_' || last_name)AS FULL_NAME FROM EMPLOYEE;

--12.	Get FIRST_NAME, Joiningyear, Joining Month and Joining Date from employee table

select first_name,
 extract (year from Joinig_date) as J_year,
 extract (month from Joinig_date) as J_month,
 extract (day from Joinig_date) as J_date
 from employee;
 
 select * from employee;
 
--13.	Get all employee details from the employee table order by First_Name Ascending

select * from employee
order by first_name; 

--14.	Get all employee details from the employee table order by First_Name Ascending and Salary Descending?

select * from employee order by first_name ASC;
select * from employee order by SALARY DESC;

--15.	Get employee details from employee table whose employee name is “John”

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME = 'John';

--16.	Get employee details from employee table whose employee name are “John” and “Roy”

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME IN ('John','Roy');

--17.	Get employee details from employee table whose employee name are not “John” and “Roy”.

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME NOT IN ('John','Roy');

--18.	Get employee details from employee table whose first name starts with 'J'

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME LIKE 'J%';

--19.	Get employee details from employee table whose first name contains 'o'.

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME LIKE '%o%';

--20.	Get employee details from employee table whose first name ends with 'n'.

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME LIKE '%n';

--21.	Get employee details from employee table whose first name ends with 'n' and name contains 4 letters.

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME LIKE '___n';

--22.	Get employee details from employee table whose first name starts with 'J' and name contains 4 letters.

SELECT * FROM EMPLOYEE
WHERE FIRST_NAME LIKE 'J___';

--23.	Get employee details from employee table who’s Salary greater than 600000.

SELECT * FROM EMPLOYEE
where salary>600000;

--24.	Get employee details from employee table whose joining year is “2013”.

SELECT * FROM EMPLOYEE
where to_char(joinig_date, 'yyyy')= 2013;

--25.	Get employee details from employee table whose joining month is “January”.

SELECT * FROM EMPLOYEE
where to_char(joinig_date, 'Mon')= 'Jan';

---26.	Get employee details from employee table who joined before January 1st 2013.

SELECT * FROM EMPLOYEE
where joinig_date < to_date('01/01/2013','DD/MM/YYYY');

--27.	Get employee details from employee table who joined after January 31st

SELECT * FROM EMPLOYEE
where joinig_date > to_date('31/01/2013','DD/MM/YYYY');

--28.	Get Joining Date and Time from employee table

SELECT FIRST_NAME,JOINIG_DATE FROM EMPLOYEE

-----29.	Get Joining Date, Time including milliseconds from employee table

----------------
select * from Incentives

--30.	Get difference between JOINING_DATE and INCENTIVE_DATE from employee and incentives table.

SELECT e.joinig_date ,i.incentive_date,
(i.incentive_date - e.joinig_date) AS DATE_DIFFERENCE
FROM EMPLOYEE e join Incentives i;

---------------


--31.	Get department, total salary with respect to a department from employee table.

select department ,sum(salary) AS TOTAL_SALARY from employee
group by department;

--32.	Get department, total salary with respect to a department from employee table order by total salary descending

select department ,sum(salary) AS TOTAL_SALARY from employee
group by department
order by TOTAL_SALARY desc;

--33.	Get department, no of employees in a department, total salary with respect to a department from employee table order by total salary descending.

select department , count(department)AS NO_OF_EMP ,sum (salary) as total_salary FROM EMPLOYEE
group by department;

--34.	Get department wise average salary from employee table order by salary ascending?

select department ,avg(salary) as avg_salary from employee
group by department
order by avg_salary asc;

--35.	Get department wise maximum salary from employee table order by salary ascending?

select department ,max(salary) as max_salary from employee
group by department
order by max_salary asc;

--36.	Get department wise minimum salary from employee table order by salary ascending?

select department ,min(salary) as min_salary from employee
group by department
order by min_salary asc;

----37. Select no of employees joined with respect to year and month from employee table.


--38. Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending
select department , sum(salary) total_sal from employee
having sum(salary) >800000
group by department 
order by sum(salary) desc;

--39. Select employee details from employee table if data in incentive table?
--

--40. Select 20 % of salary from John, 10% of Salary for Roy and for other 15 % of salary from employee table
select first_name,salary,case first_name when 'John' then salary *0.20
                       when 'Roy' then salary *0.10
                       else salary*0.15 end result
from employee;


--41. Select Banking as 'Bank Dept', Insurance as 'Insurance Dept' and Services as  'Services Dept' from employee table.
select department , case department when 'Banking' then 'Bank Dept'
                       when 'Insurance' then 'Insurance Dept'
                       when 'service' then 'Services Dept'
                       end
from employee;













