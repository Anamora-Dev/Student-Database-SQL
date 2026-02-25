# Student-Database-SQL
Relational course registration database built in SQL Server demonstrating primary keys, foreign keys, many-to-many relationships, and data integrity constraints.

---

## 📌 Project Overview

This database models a university-style course registration system.

It includes:

- Students
- Teachers
- Courses
- Enrollments (junction table)
- Grade tracking

The design enforces data integrity using:

- Primary Keys
- Foreign Keys
- CHECK constraints
- Composite Primary Keys
- NOT NULL constraints

---

## 🧱 Database Design

### Relationships

- One Teacher → Many Courses
- One Student → Many Enrollments
- One Course → Many Enrollments
- Students and Courses form a Many-to-Many relationship through the `Enrollments` table

Grades are stored in the `Enrollments` table because they belong to a student's participation in a specific course.

---

## 🚀 How to Run

1. Open VS Code with MSSQL extension
2. Connect to local server
3. Run `StudentDBStructure.sql`
   - creates the database and all the tables
4. Run `SampleData.sql`
   - inserts in sample data for testing
6. Run `TestQueries.sql`
   - runs a test of queries to indicate how to retrieve certain data, read comments for details

---

## 🛠 Technologies Used

- Microsoft SQL Server 2025 Development Edition
- Microsoft SQL Server Management Studio
- VS Code (MSSQL Extension)
