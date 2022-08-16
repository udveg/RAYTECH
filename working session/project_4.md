#### Count()
Count is uded to calculate the number of records but in real time working it becomed very useful as we can use count in different scenarios for example finding out the percentage or average.
```
select Department_Name, count(*),
to_char((count(*)/No_of_Employees.cnt)*100, '90.99') Percentages
from Department,Employee, ( select count(*) cnt from Employee ) No_of_Employees
where Department.Department_Id = Employee.Department_Id
group by Department_Name, No_of_Employees.cnt

```
Here as we can see I have used count function to calculate the percentage of emplyees in each department.

#### Categorization 
Data Discovery & Classification adds capabilities for discovering, classifying, labeling & reporting the sensitive data in your databases. 
Grouping allows us to classify the data using certain category, for example in the below query I tried to categorize the employee data based on location.```
```
select location, count(location) as number_of_employees
from [dbo].[Employees]
group by location
order by location
```

#### WITH clause
When a query with a WITH clause is executed, first the query mentioned within the  clause is evaluated and the output of this evaluation is 
stored in a temporary relation. The clause is used for defining a temporary relation such that the output of this temporary relation is available and is used by the query that is associated with the WITH clause.
Example- The employee whose salary is more than the average salary of all employees. 

```
WITH temporaryTable(averageValue) as
    (SELECT avg(Salary)
    from Employee)
        SELECT EmployeeID,Name, Salary 
        FROM Employee, temporaryTable 
        WHERE Employee.Salary > temporaryTable.averageValue;
```

We can querry the above temporary table wherever we want without defining it multiple times. 
In above example all employees whose salary is more than the obtained average lies in the output relation. 

#### Duplicates

Using the GROUP BY and HAVING clauses we can neatly show the duplicates in our data. 
Once you have validated that the rows are the same, you may choose to remove the duplicate(s) using the DELETE statement.
While insering the data we often may lead to data anomalies. 

```
SELECT employee_id, COUNT(employee_id)
FROM Employee_details
GROUP BY employee_id
HAVING COUNT(employee_id) > 1
```
The above query will return the employee details who have more than one record in table, moreover in the table which I have refrenced 
in query the employee_id is the primary key so it has to be unique. 
