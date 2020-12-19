--Write a query that retrieves suppliers that work in either Georgia or Califoria
SELECT *
FROM SUPPLIERS
WHERE STATE IN('Georgia','California');


--Write a query that retrieves suppliers with the characters "wo" and the character "I" or "i" in their name.
SELECT *
FROM SUPPLIERS
WHERE SUPPLIER_NAME LIKE '%wo%' 
AND (SUPPLIER_NAME LIKE '%i%'  OR SUPPLIER_NAME LIKE '%I%');


--Write a query that retrieves suppliers on which a minimum of 37,000 and a maximum of 80,000 was spent.
SELECT *
FROM SUPPLIERS
WHERE TOTAL_SPENT BETWEEN 37000 AND 80000;


--Write a query that returns the supplier names and the state in which they operate meeting the following conditions:
    --belong in the state Georgia or Alaska
    --the supplier id is 100 or greater than 600
    --the amount spent is less than 100,000 or the amount spent is 220,000
SELECT SUPPLIER_NAME, STATE
FROM SUPPLIERS
WHERE   (
        STATE IN('Georgia', 'Alaska')
            AND (SUPPLIER_ID = 100 OR SUPPLIER_ID > 600)
            AND (TOTAL_SPENT < 100000 OR TOTAL_SPENT = 220000) 
        );