--USE courseDatabase;
--GO

-- Lists all students
 SELECT * FROM students; -- Syntax: SELECT column1, column2, ... FROM table_name;

-- lists all teachers 
 select * from teachers;

-- lists all courses
select * from courses;

--lists all enrollments
select * from enrollments;

-- lists all courses taught by teacher with ID 100
select * from courses
where TeacherID = 100;

-- lists all courses that student with ID 1000 is enrolled in
select * from enrollments
where StudentID = 1000;

-- returns the number of courses that student with ID 1001 is enrolled in
select count(CourseID) from enrollments where StudentID = 1001;

-- lists all courses in order of credits, from least to greatest
select * from courses order by credits asc;