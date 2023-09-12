SELECT * FROM don.new_1;
#1)Display all information in the tables EMP and DEPT.
select EMPLOYEE_ID,FIRST_NAME,JOB_ID,DEPARTMENT_ID
FROM NEW_1;
#2)Display only the hire date and employee name for each employee.
SELECT FIRST_NAME, HIRE_DATE
FROM NEW_1;
#3)Display the hire date, name and department number for all clerks.
SELECT FIRST_NAME AS "EMP NAME",HIRE_DATE ,DEPARTMENT_ID,JOB_ID
FROM NEW_1
WHERE JOB_ID ='PU_CLERK';
#4)Display the names and salaries of all employees with a salary greater than 2000.
SELECT FIRST_NAME AS "EMP NAME" , SALARY
FROM NEW_1
WHERE SALARY > 2000;
#5) Display the names and hire dates of all employees in the order they were hired.
SELECT FIRST_NAME AS "EMP NAME" , HIRE_DATE
FROM NEW_1
ORDER BY HIRE_DATE;
#6)Display the names and salaries of all employees in reverse salary order.
SELECT FIRST_NAME AS "EMP NAME" , HIRE_DATE,SALARY
FROM NEW_1
ORDER BY SALARY DESC;
#7)Display the hire date, name and department number for all clerks.
SELECT FIRST_NAME AS "E_NAME" , DEPARTMENT_ID AS "DEPT_NO" ,JOB_ID,HIRE_DATE
FROM NEW_1
WHERE JOB_ID = 'PU_CLERK';
#8)Display the last name and job title of all employees who do not have a manager.
SELECT LAST_NAME, JOB_ID
FROM NEW_1
WHERE NOT JOB_ID = 'ST_MAN';
#9)Display the department number, total salary payout and total commission payout for
#each department 
SELECT DEPARTMENT_ID,
    SUM(salary) AS total_salary_payout,
    SUM(COMMISSION_PCT) AS total_commission_payout
FROM NEW_1
GROUP BY DEPARTMENT_ID;
#10)Display the maximum, minimum and average salary and commission earned.
SELECT
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary,
    AVG(salary) AS avg_salary
FROM NEW_1;
SELECT
    MAX(COMMISSION_PCT) AS max_commission,
    MIN(COMMISSION_PCT) AS min_commission,
    AVG(COMMISSION_PCT) AS avg_commission
FROM NEW_1;
#11)Display the department number and number of employees in each department.
SELECT DEPARTMENT_ID,
COUNT(*) AS num_employees
FROM NEW_1
GROUP BY DEPARTMENT_ID;
#12)Display the department number and total salary of employees in each department.
SELECT DEPARTMENT_ID,
SUM(SALARY) AS "TOTAL SALARY OF EMP"
FROM NEW_1
GROUP BY DEPARTMENT_ID;
SELECT*FROM DON.NEW_2;
#13) Display the employee's name who doesn't earn a commission. Order the result set
#without using the column name.
SELECT NEW_2.*
FROM NEW_2
WHERE COMMISSION_PCT = 0
ORDER BY 1;
#14)Display the employees name, department id and commission. If an Employee doesn't
#earn the commission, then display as 'No commission'. Name the columns appropriately
SELECT FIRST_NAME AS "EMP_NAME",DEPARTMENT_ID,COMMISSION_PCT,
CASE WHEN COMMISSION_PCT = 0 THEN 'No commission'
ELSE COMMISSION_PCT
END AS "Commission"
FROM NEW_2;
#15)Display the employee's name, salary and commission multiplied by 2. If an Employee
#doesn't earn the commission, then display as 'No commission. Name the columns
#appropriately
SELECT FIRST_NAME AS "Employee Name", SALARY AS "Salary",
    CASE 
        WHEN COMMISSION_PCT = 0 THEN 'No commission'
        ELSE COMMISSION_PCT * 2
    END AS "Commission Multiplied by 2"
FROM NEW_2;
#16)Display the employee's name, department id who have the first name same as another
#employee in the same department.
SELECT 
    e1.FIRST_NAME AS "Employee Name",
    e1.department_id AS "Department ID"
FROM NEW_2 e1
WHERE EXISTS (
    SELECT 1
    FROM NEW_2 e2
    WHERE e1.FIRST_NAME <> e2.FIRST_NAME
      AND e1.DEPARTMENT_ID = e2.DEPARTMENT_ID
      AND SUBSTRING_INDEX(e1.FIRST_NAME, ' ', 1) = SUBSTRING_INDEX(e2.FIRST_NAME, ' ', 1)
);
select*from don.new_2;
#17)Display the sum of salaries of the employees working under each Manager.
SELECT SUM(SALARY) AS SUM_OF_SALAORIES , MANAGER_ID
FROM NEW_2
GROUP BY MANAGER_ID;
#18)Write a query that displays the employee's last names only from the string's 2-5th
#position with the first letter capitalized and all other letters lowercase, Give each column an
#appropriate label.
SELECT 
    CONCAT(UPPER(SUBSTRING(FIRST_NAME, 2, 1)), LOWER(SUBSTRING(FIRST_NAME, 3, 1)),
           LOWER(SUBSTRING(FIRST_NAME, 4, 1)), LOWER(SUBSTRING(FIRST_NAME, 5))) AS Processed_LastName
FROM NEW_2;
#19)Write a query that displays the employee's first name and last name along with a " in
#between for e.g.: first name : Ram; last name : Kumar then Ram-Kumar. Also displays the
#month on which the employee has joined.
SELECT
    CONCAT(UPPER(SUBSTRING(first_name, 1, 1)), LOWER(SUBSTRING(first_name, 2))) AS Processed_FirstName,
    CONCAT(UPPER(SUBSTRING(last_name, 1, 1)), LOWER(SUBSTRING(last_name, 2))) AS Processed_LastName,
    CONCAT(first_name, '-', last_name) AS Formatted_Name,
    MONTH(HIRE_DATE) AS Join_Month
FROM NEW_2;
select*from don.new_2;
select*from don.employees;
#20)Display the employee's name if it is a palindrome.
SELECT FIRST_NAME
FROM NEW_2
WHERE LOWER(REPLACE(FIRST_NAME, ' ', '')) = LOWER(REVERSE(REPLACE(FIRST_NAME, ' ', '')));
#21)Display the name of the employee whose salary is the lowest.
SELECT FIRST_NAME , SALARY
FROM NEW_2
ORDER BY SALARY ASC
LIMIT 1; 
#22)Display the names of all employees except the lowest paid.
SELECT FIRST_NAME , SALARY
FROM NEW_2
WHERE salary > (SELECT MIN(salary) FROM NEW_2);
SELECT*FROM DON.NEW_2
#23)Write a query to display the employee last name,department name,location id and city of
#all employees who earn commission.








































