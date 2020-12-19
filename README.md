# oracle-sql-basics-assignment-1
This is the first assignment from Imtiaz Ahmed's course

Write a query that retrieves suppliers that work in either Georgia or California.



Write a query that retrieves suppliers with the characters "wo" and the character "I" or "i" in their name.



Write a query that retrieves suppliers on which a minimum of 37,000 and a maximum of 80,000 was spent.



Write a query that returns the supplier names and the state in which they operate meeting the following conditions:

belong in the state Georgia or Alaska
the supplier id is 100 or greater than 600
the amount spent is less than 100,000 or the amount spent is 220,000


TRUE or FALSE Question:

The keywords such as SELECT and WHERE must always be capital in the SQL Query.



TRUE or FALSE Question:

The database works on first processing the filtering conditions and then processes the FROM condition.



TRUE or FALSE Question:

Having just the filter condition shown below in a SQL query will return all of the records from the table.

WHERE 1 = 1



TRUE or FALSE question:

NULL can not be compared using an equal sign.



TRUE or FALSE question:

The ORDER BY clause is processed before the FROM clause in a SQL statement and it's used to sort the columns in an ascending or descending fashion.



*Do not scroll past here without trying out the assignment yourself*

Write a query that retrieves suppliers that work in either Georgia or California.

SELECT *

FROM suppliers 

WHERE state = 'Georgia'

OR state = 'California';



Write a query that retrieves suppliers with the characters "wo" and the character "I" or "i" in their name.

SELECT * 

FROM suppliers

WHERE supplier_name like '%wo%'

AND (supplier_name like '%i%' OR supplier_name like '%I%');



Write a query that retrieves suppliers on which a minimum of 37,000 and a maximum of 80,000 was spent.

SELECT * 

FROM suppliers

WHERE total_spent >= 37000

AND total_spent <= 80000;

You may also use the BETWEEN operator to solve this problem.



Write a query that returns the supplier names and the state in which they operate meeting the following conditions:

belong in the state Georgia or Alaska
the supplier id is 100 or greater than 600
the amount spent is less than 100,000 or the amount spent is 220,000
SELECT supplier_name, state

FROM suppliers

WHERE state IN ('Georgia', 'Alaska')

AND (supplier_id = 100 OR supplier_id > 600)

AND (total_spent < 100000 OR total_spent = 220000);



TRUE or FALSE Question:

The keywords such as SELECT and WHERE must always be capital in the SQL Query.

FALSE



TRUE or FALSE Question:

The database works on first processing the filtering conditions and then processes the FROM condition.

FALSE



TRUE or FALSE Question:

Having just the filter condition shown below in a SQL query will return all of the records from the table.

WHERE 1 = 1

TRUE

Explanation: A 1=1 in a filter condition will always evaluate to true. If there are no other filter conditions in a SQL query, all records will be returned. 1=1 will always evaluate to true.



TRUE or FALSE question:

NULL can not be compared using an equal sign.

TRUE



TRUE or FALSE question:

The ORDER BY clause is processed before the FROM clause in a SQL statement and it's used to sort the columns in an ascending or descending fashion.

FALSE

Explanation: The ORDER BY Clause is not processed before the FROM clause. In-fact it's one of the last clauses processed by the database query engine.

