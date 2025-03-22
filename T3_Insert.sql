#This command automatically selects the database for future commands to be executed
use student_access_database;

#This command will add 5 new students into the Students table
/*
insert into Students 
(FirstName, LastName, DOB, StudentEmail, PhoneNumber)
values
("Bradley","Mcmillan","2004-10-13","bmcmillan@yahoo.com","+446847009823"),
("Luke","Park","2003-07-04","lpark@gmail.com","+443859467432"),
("James","Watts","1995-09-20","jwatts@outlook.co.uk","+443820567843"),
("Joyce","Moses","1993-12-22","jmoses@yahoo.com","+443820098734"),
("David","Brock","1999-04-16","dbrock@gmail.com","+440930212936")
;
*/

#This command will add enrollment data for the new students,
#this is neccessary for T3_Update
/*
insert into enrollments
(StudentID, CourseID, EnrollmentDate, StartDate, EndDate, CompletionDate)
values
("1013", "CS101", "2024-09-01", "2024-09-01", "2025-06-25", "2025-06-30"),
("1014", "HEL106", "2024-09-01", "2024-09-01", "2025-06-20", "2025-06-30"),
("1015", "MAT100", "2024-09-01", "2024-09-01", "2025-06-19", "2025-06-30"),
("1016", "PSY108", "2024-09-01", "2024-09-01", "2025-06-28", "2025-06-30"),
("1017", "MAT109", "2024-09-01", "2024-09-01", "2025-06-21", "2025-06-30")
;
*/