#### ROW_NUMBER()
<p>The ROW_NUMBER() is a window function that assigns a sequential integer to each row within the partition of a result set. The row number starts with 1 for the first row in each partition.</p>

#### Partition By
The PARTITION BY clause divides the result set into partitions (another term for groups of rows). The ROW_NUMBER() function is applied to each partition separately and reinitialized the row number for each partition.

The PARTITION BY clause is optional. If you skip it, the ROW_NUMBER() function will treat the whole result set as a single partition.

#### Oder By
The ORDER BY clause defines the logical order of the rows within each partition of the result set. The ORDER BY clause is mandatory because the ROW_NUMBER() function is order sensitive.

<br>

#### Example-

```
SELECT 
   ROW_NUMBER() OVER (
	ORDER BY first_name
   ) row_num,
   first_name, 
   last_name, 
   city
FROM 
   employes.salaries;

```
In this example, we skipped the PARTITION BY clause, therefore, the ROW_NUMBER() treated the whole result set as a single partition.

<br>

#### Example by using PARTITION BY()

```
SELECT 
   first_name, 
   last_name, 
   department,
   ROW_NUMBER() OVER (
      PARTITION BY department
      ORDER BY salary
   ) row_num
FROM 
   employee.departments
ORDER BY 
   salary;
```

In the above example I have partitioned the employee table based on departments and given them count, this will give output as employees in each deoartment ranked based on salary.

