USE university;

CREATE TABLE pupils (
student_id INT NOT NULL,
name VARCHAR(55) NOT NULL,
age INT DEFAULT 18
);

SELECT * FROM pupils;

INSERT INTO pupils
VALUES (3, 'Damini Ogulu', DEFAULT);

DELETE FROM pupils LIMIT 1;

SELECT * FROM students;

SELECT * 
FROM students
WHERE amount_paid = (SELECT MAX(amount_paid) FROM students);

SELECT * 
FROM students
WHERE age = (SELECT MAX(age) FROM students);

SELECT * 
FROM students
WHERE grade < (SELECT AVG(grade) FROM students);

SELECT MAX(student_count), MIN(student_count), AVG(student_count)
FROM (SELECT department, COUNT(*) AS student_count
      FROM students
      GROUP BY department) AS T;