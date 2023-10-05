USE university;

SELECT department, COUNT(amount_paid) AS Transact
FROM students
GROUP BY department;

SELECT department, SUM(amount_paid) AS Total_paid
FROM students
GROUP BY department;

SELECT department, admitted_at, SUM(amount_paid) AS Total_amount
FROM students
GROUP BY department, admitted_at;

SELECT admitted_at, SUM(amount_paid) AS amt_paid
FROM students
GROUP BY admitted_at
ORDER BY amt_paid; 

SELECT admitted_at, SUM(amount_paid) AS amt_paid
FROM students
WHERE admitted_at > '2014-09-01'
GROUP BY admitted_at
ORDER BY amt_paid;

SELECT department, COUNT(amount_paid) AS count
FROM students
GROUP BY department
HAVING count > 2;

SELECT department, SUM(amount_paid) AS total
FROM students
GROUP BY department
HAVING total > 60000;

SELECT department, SUM(amount_paid) AS total
FROM students
WHERE admitted_at > '2015-09-01'
GROUP BY department
HAVING total > 30000;

