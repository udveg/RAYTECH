
### Utilizing Joins

As the project involved many tables, using joins became essential. In this document I will go through some of the examples where I used joins.

#### Self Join 
We use self join when there is some kind of data we have to extract based on certain condition but within one table. For example in the employer salary table it had employer details and employer salary, so to extract the employee details based on salary condition so that grade can be decided for each employee I have used self join. 

```
SELECT E.first_name, E.last_name, E.salary 
  FROM employees E 
   JOIN employees S
     ON E.salary < S.salary 
      AND S.employee_id = 182;
```
In the above example the employee id with 182 was graded as one category so whoever earns more than him can be categorized as another grade.

#### Left Join
The SQL LEFT JOIN returns all rows from the left table, even if there are no matches in the right table. This means that if the ON clause matches 0 (zero) records in the right table; the join will still return a row in the result, but with NULL in each column from the right table.

```
SELECT empl_salary_month, emp_bonus 
FROM employee_Sal_details 
LEFT JOIN employee_poayroll 
ON employee_Sal_details.emp_id = employee_poayroll.emp_id;
 ```
 Here I have tried to retrive all the infromation about the salary of employee hich includes bonus in the other table using left join the bonus table.
 
 #### Inner Join
 The INNER JOIN keyword selects records that have matching values in both tables.
 
 ```
 select e.First_Name, s.Hourly_Pay
		from Employee e
		inner join AccountDetails a
		on e.Employee_Id = a.Employee_Id
		inner join Salary s
		on a.Account_Id = s.Account_Id
		where e.Employee_Id = p_empno and rownum = 1
		order by s.Hourly_Pay DESC;
 ```
 Here I have tried to extract the pay rate of employees who are common in both tables, or employees who have records in accountdetails table. This also shows how multiple tables are joined for the required output.
 
 #### Left Outer Join 
 This extracts the information only from the left table even though there are common records in both tables it will ignore it. The use case can be when we have to extract employess information working in multilple departments and the information has to be extracted for only one of the department. 
 
 Example- Particular employee maximum salary details
 
 ```
 SELECT sal1.* FROM salaries AS sal1 LEFT JOIN salaries 
 AS sal2 ON (sal1.emp_no = sal2.emp_no AND sal1.from_date < sal2.from_date) 
 WHERE sal2.from_date IS NULL and sal1.emp_no = 10001;
 ```
 

