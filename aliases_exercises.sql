USE employees;

# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.

SELECT  concat_ws(' ',e.emp_no,'-',e.first_name,', ',e.first_name ) as full_name, e.birth_date as DOB
from employees as e
GROUP BY full_name
limit 10;
