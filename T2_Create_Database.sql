#This command creates the database, "if not exists" makes sure the db is only created once,
#without having to comment out the entire command.
 
#The use command automatically selects the database for future commands to be executed.
Create database if not exists Student_Access_Database;
use Student_Access_Database;

#This command creates the Students table and it's columns,
#assigning their datatypes and constraints.
create table if not exists Students (
StudentID int primary key auto_increment,
FirstName varchar(50) not null,
LastName varchar(50) not null,
DOB date not null,
EmailAddress varchar(100) not null unique,
PhoneNumber varchar(20) not null unique
);

#This command creates the Courses table and it's columns,
#assigning their datatypes and constraints.

#Unlike the rest of the tables, 
#this one uses the "varchar" datatype for it's primary key,
#and doesn't auto increment, as the sample uses letters and numbers for the CourseID (BOS102)
create table if not exists Courses (
CourseID varchar(30) primary key,
CourseName varchar(100) not null,
CourseDuration int not null,
CourseType varchar(50) not null
);

#This command creates the Enrollments table and it's columns,
#assigning their datatypes and constraints.

#This is the first table to use foreign keys, referencing primary keys from other tables.
create table if not exists Enrollments (
EnrollmentID int primary key auto_increment,
StudentID int not null,
CourseID varchar(30) not null,
EnrollmentDate date not null,
StartDate date not null,
EndDate date not null,
FinalGrade int,
CompletionDate date not null,
foreign key (StudentID) references Students(StudentID),
foreign key (CourseID) references Courses(CourseID)
);

#This command creates the Universities table and it's columns,
#assigning their datatypes and constraints.
create table if not exists Universities (
UniversityID int primary key auto_increment,
UniversityName varchar(100)
);

#This command creates the Progression table and it's columns,
#assigning their datatypes and constraints.
Create table if not exists Progression (
ProgressionID int primary key auto_increment,
StudentID int not null,
UniversityID int not null,
UniversityCourse varchar(100),
StartDate date,
foreign key (StudentID) references Students(StudentID),
foreign key (UniversityID) references Universities(UniversityID)
);