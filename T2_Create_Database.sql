Create database if not exists Student_Access_Database;
use Student_Access_Database;

create table if not exists Students (
StudentID int primary key auto_increment,
FirstName varchar(50) not null,
LastName varchar(50) not null,
DOB date not null,
EmailAddress varchar(100) not null,
PhoneNumber varchar(20) not null
);

create table if not exists Courses (
CourseID varchar(30) primary key,
CourseName varchar(100) not null,
CourseDuration int not null,
CourseType varchar(50) not null
);

create table if not exists Enrollments (
EnrollmentID int primary key auto_increment,
StudentID int not null,
CourseID int not null,
EnrollmentDate date not null,
StartDate date not null,
EndDate date not null,
FinalGrade int,
CompletionDate date not null,
foreign key (StudentID) references Students(StudentID),
foreign key (CourseID) references Courses
);

create table if not exists Universities (
UniversityID int primary key auto_increment,
UniversityName varchar(100)
);

Create table if not exists Progression (
ProgressionID INT primary key auto_increment,
StudentID int not null,
UniversityID int not null,
UniversityCourse varchar(100),
StartDate date,
foreign key (StudentID) references Students(StudentID),
foreign key (UniversityID) references Universities(UniversityID)
);