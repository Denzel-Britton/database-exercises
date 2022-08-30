USE employees;
Select CONCAT ( first_name, ' ', last_name) as Names
from employees
where last_name like 'e%'  and  last_name like '%e';


SELECT *
FROM employees
WHERE year(birth_date)
AND month(birth_date) = 12
AND day(birth_date) = 25;


SELECT *
FROM employees
WHERE year(birth_date)
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is the ol
#     dest employee who was hired last. It should be Khun Bernini.

