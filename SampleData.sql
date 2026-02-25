insert into students
values (1000, 'Doe', 'John'), 
        (1001, 'Smith', 'Jane'), 
        (1002, 'Brown', 'Charlie');

insert into teachers
values (100, 'Johnson', 'Emily'), 
        (101, 'Davis', 'Michael'), 
        (102, 'Miller', 'Sarah');

insert into courses
values (100, 'Introduction to Psychology 110', 3, 'Room 101', 'M 9:00 AM - 9:50 AM', 100),
       (101, 'Statistics 280', 4, 'Room 102', 'MWF 11:00 AM - 11:50 AM', 101), -- MWF stands for Monday, Wednesday, and Friday
       (102, 'English 102', 2, 'Room 110', 'TT 9:00 AM - 9:50 AM', 100),
       (103, 'Anatomy 301', 3, 'Room 203', 'M 1:00 PM - 1:50 PM', 102);

insert into enrollments
values(1000, 100, 85.5), 
       (1000, 101, 92.0),
       (1000, 102, 78.0), 
       (1001, 100, 88.5),
       (1001, 101, 78.0), 
       (1001, 102, 88.5), 
       (1002, 101, 90.0), 
       (1002, 102, 85.0),
       (1002, 103, 95.0);