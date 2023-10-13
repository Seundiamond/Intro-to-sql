USE university;

SELECT s.name
FROM students AS s;

SELECT * FROM projects p
INNER JOIN students s 
WHERE p.student_id = s.student_id;

SELECT COUNT(*) AS num_students
FROM projects p
INNER JOIN students s 
WHERE p.student_id = s.student_id;

SELECT * 
FROM project p
LEFT JOIN students s 
ON s.student_id = p.student_id
WHERE s.student_id IS NULL;

SELECT * 
FROM students s
RIGHT JOIN projects p
ON p.student_id = s.student_id
WHERE s.student_id IS NULL;

SELECT * FROM projects;