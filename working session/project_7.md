
#### Correcting some strings

<br>

#### Phone Number 

I have table in the database with a phone number column. The numbers look like this:

```
123456789
```

To change the format I used substring:

```
UPDATE TheTable
SET PhoneNumber = SUBSTRING(PhoneNumber, 1, 3) + '-' + 
                  SUBSTRING(PhoneNumber, 4, 3) + '-' + 
                  SUBSTRING(PhoneNumber, 7, 4)
```

The format was changed to something like:

```
123-456-789
```

#### Blob 
It stands for Binary Large Object. It is a kind of data type in MySQL that can store files or images in the database in binary format. utf8 is the way of encoding Unicode characters.

In the given data the employee address was in BLOB format, to convert the data into text I have used the following code:

```
SELECT convert(address using utf8)
from employee.details;

```

#### Summary

1. Employee Information <br>
Employee data is very essential in order to maintain a proper record of the employees and there personal
information for various purposes like contacting them for inviting for certain summit, feedback of the
company from the employee data
2. Maintaining Salary <br>
Very important to keep this data which will help not only the managers and the HR to keep a track of the
employee salaries but also help the company or its board to analyze what amount they are spending on a
particular employee of a particular company
3. Work Location <br>
It is very much important for an organization small or big to have a record of all the work locations they
operate from to see how they can develop in that particular region and also increase the hiring in that region
so that the organization can increase there Market Outreach that area.
4. Projects <br>
In order to be successful company should be involved in various projects, so they also need to maintain the
record of the salaries each employee is being paid for a particular type of project he/she is working on.

<br>

#### SQL features ud=sed in project

1. Created Explicit Cursors which shows the hourly pay of the employees associated with there Accounts and
Ref cursor showing the employees who are a part of a particular department
2. Create a CDB and a PDB with users to manage the data according to the area of interest
3. Implement pre-defined exception cursor_already_open to demonstrate the understanding of the
exceptional handling concept which shows what error will populate when we try to open a cursor which is
already open
4. Also, created Relational, Inline and Materialized Views satisfying various business requirements
5. Created Index on AccountDetails table
6. Built an E-R Diagram to know how the entities are related in the payroll management system for any
company
