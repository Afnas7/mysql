-- A small company maintains two tables:

-- employees – which contains employee details like id and name.

-- departments – which contains emp_id and the department_name the employee works in.

-- Your tasks are:

-- Show a list of all employees along with their department name. If an employee doesn’t belong to any department, still show their name with “NULL” for the department.
SELECT employees.id,employees.name, departments.department_name FROM employees LEFT JOIN departments ON employees.id=departments.emp_id;


-- Show only those employees who have a department assigned.
SELECT employees.id,employees.name,departments.department_name FROM employees LEFT JOIN departments ON employees.id=departments.emp_id WHERE departments.department_name IS NOT NULL;
-- Show all department assignments, even if the employee doesn’t exist in the employee table-- employees table
SELECT employees.id,employees.name,departments.department_name FROM employees RIGHT JOIN departments ON employees.id=departments.emp_id;
-- id | name
-- ---|--------
-- 1  | Anjali
-- 2  | Rohan
-- 3  | Meena
INSERT INTO employees (id, name) VALUES
(1, 'Anjali'),
(2, 'Rohan'),
(3, 'Meena');

-- -- departments table
-- emp_id | department_name
-- --------   |-----------------
-- 1           | HR
-- 2           | IT
-- 4           | Finance
INSERT INTO departments (emp_id, department_name) VALUES
(1, 'HR'),
(2, 'IT'),
(4, 'Finance');


