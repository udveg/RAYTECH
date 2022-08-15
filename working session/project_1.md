###  Employee Database and Payroll Management System 

<br>
 <p>“Employee Database And Payroll Management System” is designed to make the existing
manual system automatic with the help of computerised equipment and full-edged computer
software, fulfilling their requirements, so that their valuable data and information can be stored
for a longer period with easy access and manipulation of the same. The required software is
easily available and easy to work with. This web application can maintain and view
computerised records without getting redundant entries. The project describes how to manage
user data for good performance and provide better services for the client. </p>

<br>

#### Agenda

<p>The purpose of this document is to describe the functionality and specifications of the design
of a web application for Managing Employees and their payroll. The expected audiences of this
document are the developers and the admin of the web application. Now with the help of this
system the admin has the information on his finger tips and can easily prepare a good record
based on their requirements.
Finally, we can say that this system will not only automate the process but save the valuable
time of the manager or the admin, which can be well utilized buy his institute. This will be an
additional advantage and management of power based on their free time from his normal duty. </p>

### Analysis

<p>The project required different tables, so for each use case we had to find a relation between tables.
This was done using commands such as SELECT, UPDATE, DELETE, INSERT, WHERE, JOINS, SUB QUERY. The analysis required a proper relation across the tables where RDBMS was utilized. Once the tables were created and data was inserted it required proper acess for this and as this was for small firm it did not require any cloud storage instead it was stored in local machine and the acess was limited to admin.  It is built for use in small scale organization where the number of employees is
limited. According to the requested requirement the admin can add, manipulate, update
and delete all employee data in his organization. The admin can add new departments
and delete them. The Admin can also add predefined pay grades for the employees.
The required records can be easily viewed by the admin anytime time he wants in an
instant. </p>

### Tables

<b>Company</b> - This table contained information about the company name which for now was limited to only one, but this was done intentionally to include lowest granularity for future use. 

``` 
CREATE TABLE `COMPANY` (
  `company_id` int(11) NOT NULL,
  `comp_name` varchar(30) NOT NULL,
  `comp_address` varchar(101) NOT NULL,
  `contact_no` int(11) NOT NULL
) ;
```
Similarly other tables which were involved are Department, Pay Grade, Employee, Payroll.

### Use Case 

- The entire project helped admin to mantain a database of the employees and their pay rolls within different departments.

- It also included paygrade,grade_bonus, employee details, payment due , employee history which allowed easy acess to information. 
- DML allowed to perform any updates which had acess limited to admin. 
- Reports are generated to visualize the data in a better manner
