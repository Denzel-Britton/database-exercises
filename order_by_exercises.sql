USE employees;


SELECT first_name, last_name
FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name  asc ;

SELECT first_name, last_name
FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  last_name, first_name asc ;

SELECT *
FROM employees
where last_name like '%e%'
ORDER BY  emp_no;


SELECT first_name, last_name
FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name desc, last_name  desc ;

SELECT first_name, last_name
FROM employees
where first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY  last_name desc , first_name desc ;

SELECT *
FROM employees
where last_name like '%e%'
ORDER BY  emp_no desc ;