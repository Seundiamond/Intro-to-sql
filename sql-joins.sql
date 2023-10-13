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
FROM students s
LEFT JOIN projects p
ON p.student_id = s.student_id
WHERE p.project_id IS NULL;