ALTER TABLE exam
ADD CONSTRAINT fk_exam
FOREIGN KEY (employee_id) REFERENCES employee(id);

INSERT INTO employee (id, name, department, leave_days) VALUES
(1, 'raju', 'sales', 1),
(2, 'sangeetha', 'sales', 3),
(3, 'vinay', 'operations', 8),
(4, 'abey', 'packing', 2),
(5, 'thomas', 'packing', 1),
(6, 'muneer', 'operations', 7),
(7, 'aparna', 'sales', 3),
(8, 'abid', 'operations', 9),
(9, 'fathima', 'sales', 11),
(10, 'varghese', 'operations', 14);

INSERT INTO exam (id, employee_id, exam_status) VALUES
(1, 2, 'pass'),
(2, 5, 'fail'),
(3, 1, 'fail'),
(4, 8, 'pass'),
(5, 3, 'pass'),
(6, 1, 'pass'),
(7, 6, 'fail'),
(8, 9, 'pass'),
(9, 10, 'pass');

SELECT * FROM employee
WHERE department = 'sales' AND leave_days > 5;

SELECT COUNT(*)FROM employee WHERE department="operations";

SELECT department,COUNT(*)FROM employee GROUP BY department;

SELECT department, SUM(leave_days) AS su FROM employee GROUP BY department HAVING su>10;

SELECT e.name FROM employee e JOIN exam ex ON e.id =ex.employee_id WHERE ex.exam_status="pass";

SELECT e.name FROM employee e LEFT JOIN exam ex ON ex.employee_id = e.id WHERE ex.employee_id IS NULL;