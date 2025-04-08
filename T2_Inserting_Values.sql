# The query below selects the database currently in use
use Student_Access_Database;

# This query starts the auto incrementing at 1001 for consistancy with the sample
alter table Students auto_increment=1001;

#This query will populate the students table, since the StudentID is set to auto increment, manually creating them is not neccesary
insert into Students 
(FirstName, LastName, DOB, EmailAddress, PhoneNumber)
values
('Kenneth','Green','2003-10-06','Kgreen@gmail.com','+447512345678'),
('Nicholas','Harris','2006-05-21','NichHarris1@outlook.com','+447923456789'),
('Lynn','Clark','2006-06-18','clynne@yahoo.com','+447834567890'),
('Marie','Hill','2004-05-16','MarieHill@gmail.com','+447645678901'),
('Alicia','Hicks','2001-07-21,','HicksA@hotmail.com','+447556789012'),
('Nicole','Miller','2001-08-25','nicmiller@gmail.com','+447967890123'),
('Kristin','Li','2001-10-13','kristinLi@yahoo.com','+447478901234'),
('Heather','Mccarthy','2005-03-03','heathermcc@gmail.com','+447889012345'),
('Corey','Ward','1999-07-03','wardcorey@outlook.com','+447390123456'),
('Brenda','Copeland','2001-08-06','brendacope@gmail.com','+447201234567'),
('Matthew','Huang','2000-04-13','mhuang@gmail.com','+447659876543'),
('Sarah','Wright','2005-05-31','sarahwrigh1@outlook.com','+447743210987')
; 

#This query will populate the Courses table, unlike StudentID, CourseID is a varchar, and will be added manually
#"MAT109" also had two different entities in the sample (PT, FT) so i made a new one called "MAT110"
insert into Courses
(CourseID, CourseName, CourseDuration, CourseType)
values
('BOS102','Biomedical Science','12','Full-Time'),
('CS101','Computing for the Economy','12','Full-Time'),
('CS102','Computing for the Economy','24','Part-Time'),
('SBS103','Social & Behavioural Studies','24','Part-Time'),
('HEL106','History & English Literature','12','Full-Time'),
('MAT100','Maths & Finance','12','Full-Time'),
('MAT109','Maths & Physics','12','Full-Time'),
('MAT110','Maths & Physics','24','Part-Time'),
('PSY108','Sociology & Physics','12','Full-Time')
; 

#This query will populate the Enrollments table
#The Enrollment ID auto increments but starts at the default value (1)
#The End date value in the sample is before the start date, it remains unchanged
insert into enrollments
(StudentID, CourseID, EnrollmentDate, StartDate, EndDate, FinalGrade, CompletionDate)
values
('1001','BOS102', '2024-09-01', '2024-09-01', '2023-06-30', '66', '2023-06-30'),
('1002','CS101', '2024-09-01', '2024-09-01', '2023-07-01', '78', '2023-06-30'),
('1003','SBS103', '2024-09-01', '2024-09-01', '2023-07-02', '44', '2023-06-30'),
('1004','HEL106', '2024-09-01', '2024-09-01', '2023-07-03', '32', '2023-06-30'),
('1005','MAT100', '2024-09-01', '2024-09-01', '2023-07-04', '58', '2023-06-30'),
('1006','MAT109', '2024-09-01', '2024-09-01', '2023-07-05', '63', '2023-06-30'),
('1007','PSY108', '2024-09-01', '2024-09-01', '2023-07-06', '91', '2023-06-30'),
('1008','MAT110', '2024-09-01', '2024-09-01', '2023-07-07', '84', '2023-06-30'),
('1009','CS101', '2024-09-01', '2024-09-01', '2023-07-08', '34', '2023-06-30'),
('1010','CS102', '2024-09-01', '2024-09-01', '2023-07-09', '40', '2023-06-30'),
('1011','SBS103', '2024-09-01', '2024-09-01', '2023-07-10', '87', '2023-06-30'),
('1012','BOS102', '2024-09-01', '2024-09-01', '2023-07-11', '68', '2023-06-30')
;

#This query populates the University table
#When putting the value "Queen's University" in quotations,
#i used double quotations to work around the apostrophe in Queen's
insert into Universities
(UniversityName)
values
("Queen's University Belfast"),
("Ulster University")
;

#This query populates the Progression table
#Only 5 students in the sample have picked a university course,
#so instead of adding all students with null values,
#i just added the students who are going to university
insert into Progression 
(StudentID, UniversityID, UniversityCourse, StartDate)
values
('1001', '1', 'Biomedical Engineering', '2024-09-15'),
('1002', '2', 'Software Engineering', '2024-09-15'),
('1005', '2', 'Accounting', '2024-09-15'),
('1007', '1', 'Sociology', '2024-09-15'),
('1011', '1', 'Psychology', '2024-09-15')
;