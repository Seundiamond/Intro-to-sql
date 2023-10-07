USE university;

UPDATE students 
SET grade = 3.0
WHERE student_id = 12;

UPDATE students
SET age = 25, grade = 3.9
WHERE name = 'Caroline Obi';

SELECT * FROM students;

ROLLBACK;

DELETE FROM students
WHERE name = 'Seun Dada';

SET AUTOCOMMIT = 0;

UPDATE students
SET grade = grade + 0.2
WHERE grade = 3.1;



CREATE TABLE stud(
student_id INTEGER,
name VARCHAR(55),
age INTEGER,
PRIMARY KEY (student_id)
);

CREATE TABLE proj(
project_id INTEGER,
title VARCHAR(65),
student_id INTEGER NOT NULL,
PRIMARY KEY (project_id),
FOREIGN KEY (student_id) REFERENCES stud(student_id) 
);