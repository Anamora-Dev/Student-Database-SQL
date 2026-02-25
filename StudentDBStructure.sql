-- can comment out these four lines after first run
drop database if exists courseDatabase;
GO

create database courseDatabase;
GO

USE courseDatabase;
GO
-- GO is a batch separator in SQL Server, signals the end of a batch
-- always use GO after statements that create or modify the database, so changes are made before next statements are executed

-- reset the database to a clean slate for testing purposes
-- remember to drop table in backwards order of foreign key
drop table if exists enrollments;
drop table if exists courses;
drop table if exists teachers;
drop table if exists students;
GO

-- studentID, lastName, firstName are the columns/fields of the students table
create table dbo.students (
    StudentID INT PRIMARY KEY Check (StudentID >= 1000 AND StudentID <= 9999), 
    -- primary key means that this field will be unique for each record
    -- Check constraint ensures that the student ID is a four-digit number
    LastName varchar(255) NOT NULL, -- NOT NULL means that this field cannot be left empty
    FirstName varchar(255) NOT NULL
);

create table dbo.teachers (
    TeacherID INT PRIMARY KEY Check (TeacherID >= 100 AND TeacherID <= 999), 
    LastName varchar(255) NOT NULL, 
    FirstName varchar(255) NOT NULL
);

create table dbo.courses (
    CourseID INT PRIMARY KEY Check (CourseID >= 100 AND CourseID <= 999), 
    CourseName varchar(255) NOT NULL, 
    Credits INT NOT NULL Check (Credits >= 1 AND Credits <= 4),
    Location varchar(255) NOT NULL,
    Time varchar(255) NOT NULL,
    TeacherID INT NOT NULL, -- every course has a teacher, teacher can teach multiple courses, but each course has only one teacher
    FOREIGN KEY (TeacherID) REFERENCES teachers(TeacherID) 
    -- foreign key makes sure that the TeacherID exists in the teachers table
);

create table dbo.enrollments (
    StudentID INT NOT NULL, 
    CourseID INT NOT NULL, 
    Grade Decimal (5,2) CHECK (Grade >= 0.00 AND Grade <= 100.00), -- grade must be between 0 and 100
    -- Decimal (5,2) ensures that grade can have up to 5 digits with 2 being after the decimal point
    PRIMARY KEY (StudentID, CourseID), -- composite primary key ensures that a student can only enroll in a course once, the combination is unique
    FOREIGN KEY (StudentID) REFERENCES students(StudentID), 
    FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
);

