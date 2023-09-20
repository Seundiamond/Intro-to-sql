CREATE DATABASE university; 

-- Creating a table for uni students.
CREATE TABLE students (
		students_id INTEGER,
        name 	VARCHAR(55),
        year INTEGER
        );
        
        SELECT * FROM students;
        
        INSERT INTO students (students_id, name, year)
        values (1, "Seun Dada", 3);
        
        SELECT * FROM students; 
        
        INSERT INTO students (students_id, name, year)
        values (2, " Miriam Abubakar", 2);
        
        SELECT * FROM students;
        
        INSERT INTO students (students_id, name, year)
        values (3, "Daniel Madu", 4);
        
  SELECT * FROM students;
  
  
	
 ALTER TABLE students
 ADD COLUMN (age INTEGER,
			grade INTEGER,
            admitted_at DATE); 
            
alter table students 
DROP COLUMN year; 

-- set sql safe updates to 0
SET sql_safe_updates = 0;
SET GLOBAL sql_mode = 'NO_ENGINE_SUBSTITUTION';
SET SESSION sql_mode = 'NO_ENGINE_SUBSTITUTION';

DELETE FROM students WHERE students_id = 1; 

select * from students; 


ALTER TABLE students
MODIFY COLUMN grade DECIMAL(2,1);

TRUNCATE students; 

SELECT * FROM students;

DROP TABLE students;