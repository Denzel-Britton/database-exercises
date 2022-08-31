

# SELECT now(), date_add(now(), interval  -1 week) as one_week_ago;
#
# select substring('hello', 1,3);

USE employees;
Select CONCAT ( first_name, ' ', last_name) as Full_Names
from employees
where last_name like 'e%'  and  last_name like '%e';


SELECT *
FROM employees
WHERE year(birth_date)
AND month(birth_date) = 12
AND day(birth_date) = 25;


SELECT *
FROM employees as e
WHERE year(birth_date)
AND month(birth_date) = 12
AND day(birth_date) = 25
AND year(e.hire_date) between 1990 and 1999;


# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.

SELECT *
FROM employees as e
WHERE year(birth_date)
AND month(birth_date) = 12
AND day(birth_date) = 25
AND year(e.hire_date) between 1990 and 1999
ORDER BY e.hire_date desc;


# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT DATEDIFF(now(), e.hire_date)
FROM employees as e
WHERE year(birth_date)
AND month(birth_date) = 12
AND day(birth_date) = 25
AND year(e.hire_date) between 1990 and 1999;

# with concat ws
select concat_ws(' ', first_name, last_name, ' Hired on:', hire_date, 'Worked: ', datediff(curdate(), hire_date), ' days') as Employees_days_worked_since_90s
FROM employees as e
WHERE year(e.birth_date)
AND month(e.birth_date) = 12
AND day(e.birth_date) = 25
AND year(e.hire_date) between 1990 and 1999 ;




