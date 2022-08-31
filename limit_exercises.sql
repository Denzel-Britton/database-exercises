USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT  last_name
FROM employees
ORDER BY   last_name   desc
LIMIT 10;


SELECT  emp_no
from salaries
order by  salary
desc limit 5;

# (desired_page * limit_amount- limit_amout)
SELECT  emp_no
from salaries
order by salary desc
limit 5
offset 45;