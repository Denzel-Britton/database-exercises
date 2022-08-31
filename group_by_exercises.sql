USE employees;

SELECT DISTINCT title
from titles;


# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
SELECT e.last_name
FROM employees as e
WHERE e.last_name like 'e%' and e.last_name like '%e'
GROUP BY e.last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT  e.first_name , e.last_name
FROM employees as e
WHERE e.last_name like 'e%' and e.last_name like '%e'
GROUP BY e.first_name, e.last_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
SELECT e.last_name
FROM employees as e
WHERE e.last_name like '%q%' and e.last_name NOT like '%qu%'
GROUP BY e.last_name;


# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT e.last_name, count(*)
FROM employees as e
WHERE e.last_name like '%q%' and e.last_name NOT like '%qu%'
GROUP BY  e.last_name;


# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:


SELECT e.gender , count(*)
FROM employees as e
where e.first_name like 'Irena' or e.first_name like  'vidya' or  e.first_name like 'maya'
GROUP BY  e.gender