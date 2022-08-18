### Database Table Structure:

<br>

#### Inserting Data

For inserting the data, firstly I just defined the schema so after inserting the data I had to alter the table to define the primary key. 
For example below is the code of step by step how data was inserted and table was altered. 
```
INSERT INTO `user` (`user_id`, `name`, `username`, `pass`, `type`) VALUES
(12, 'administrator', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');
```

#### Alter table 
```
ALTER TABLE `autonumber`
  ADD PRIMARY KEY (`id`);
```
### Inline views
An inline view is a query in the FROM clause of another query. 
In the following example, I tried to explain how I utilized inline query to calculate the employyes percentage in each department.
```
select Department_Name, count(*),
to_char((count(*)/No_of_Employees.cnt)*100, '90.99') Percentages
from Department,Employee, ( select count(*) cnt from Employee ) No_of_Employees
where Department.Department_Id = Employee.Department_Id
group by Department_Name, No_of_Employees.cnt
```

Here I have used count() with in from clause to select particular data for the outer query.

### Materialized view

Having working with real time data required more than just regular view, materialized view simplifies complex data by saving query information – you don’t have to create a new query every time you need to access the information. In my project for counting the degree of employee whenever it is updated I have created materialized view which allowed to acess the information whenver the data was changed in either columns related to degree of employees.

```
create materialized view Employee_View
	 build immediate
	 refresh on commit
	 as 
	 select Degree, count(Degree) 
	 from Salary 
	 group by Degree;
```

#### CURSOR
Whenver we want to perform or select certain record from table we use select e.g, SELECT statement returns a set of rows which is called a result set. However, sometimes, you may want to process a data set on a row by row basis. This is where cursors come into play. <br>
A database cursor is an object that enables traversal over the rows of a result set. It allows you to process individual row returned by a query.


```
DECLARE 
    cursor salaries(p_hourly in number)
    in SELECT *
    where HOURLY_PAY = P_HOURLY;
    
    1_SAL SALARY%ROWTYPE;
    BEGIN
       dbms_output.put_line('extracting hourly pay')
       open salaries(30);
       loop
       	  fetch salaries into 1_sal;
	exit when salaries%notfound
	dbms_output.put('for account' || 1_sal.account_id||'houlr pay is');
	end loop;
	close salries;
	 end;

```

Output:

```
For Account 40 hourly pay is 30
```

