USE university;

SELECT *
FROM students
WHERE admitted_at = '2017-09-01';

SELECT *
FROM students
WHERE admitted_at >= '2015-09-01';

SELECT *
FROM students
WHERE entry_date > '2017-09-01 00:00:00';

SELECT NOW();

SELECT CURDATE();

SELECT DATE(NOW());

SELECT YEAR(NOW());

SELECT MONTH( NOW( ) );

SELECT DAY(entry_date)
FROM students;

SELECT EXTRACT(HOUR FROM entry_date)
FROM students;

SELECT * FROM students;