
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
