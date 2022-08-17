#### Data Wrangling

Data wrangling (or munging) is the process of programmatically transforming data into a format that makes it easier to work with. This might mean modifying all of the values in a given column in a certain way, or merging multiple columns together. 

#### LEFT, RIGHT, and LENGTH
Let's start with LEFT. We can use LEFT to pull a certain number of characters from the left side of a string and present them as a separate string. 
The syntax is LEFT(string, number of characters).<br>
While cleaning the data there were certain columns which had unecessary information for example date had 10-digit date, and include the timestamp to the right of it.

```
SELECT employee_id,
       date,
       LEFT(date, 10) AS cleaned_date
  FROM employee.details
```
The above query gave cleaned date by extracting only the first ten charecters of column. 
Using RIGHT does the same but from right side of string. In our case we can use right to extract time from time stamp.
The LENGTH function returns the length of a string. So LENGTH(date) will always return 28 in this dataset. Since we know that the first 10 characters will be the date, and they will be followed by a space (total 11 characters), 
we could represent the RIGHT function like this:

```
SELECT employee_id,
       date,
       LEFT(date, 10) AS cleaned_date,
       RIGHT(date, LENGTH(date) - 11) AS cleaned_time
  FROM employee.details
```

#### SUBSTRING
LEFT and RIGHT both create substrings of a specified length,
but they only do so starting from the sides of an existing string. But if we want to start in the middle of a string, you can use SUBSTR.
The syntax is SUBSTR(*string*, *starting character position*, *# of characters*)
```
SELECT employee_,
       date,
       SUBSTR(date, 4, 2) AS day
  FROM employee.details
```
#### CONCAT
You can combine strings from several columns together using CONCAT. Simply order the values you want to concatenate and separate them with commas.

```
SELECT employee_id,
       day_of_week,
       LEFT(date, 10) AS cleaned_date,
       day_of_week || ', ' || LEFT(date, 10) AS day_and_date
  FROM employee.employee_details
```
