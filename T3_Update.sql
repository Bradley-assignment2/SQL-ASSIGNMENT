#This command automatically selects the database for future commands to be executed
use student_access_database;


#To update FinalGrade's Null value,
#it needs to be converted from "int" to "varchar"

#The following command will change the datatype of the FinalGrade column
/*
alter table Enrollments
modify FinalGrade varchar(15);
*/


#This command will update the null values in FinalGrade to pending
/*
update enrollments
set FinalGrade = "Pending"
where FinalGrade is null;
*/


#EndDate currently has the "not null" constraint,
#the following command will alter the column to remove it
/*
alter table enrollments
modify column EndDate date;
*/


#As there currently are no null values in "EndDate,
#I need to update existing columns to create some

#This command will update the EndDate values for Bradley (1013),
#Luke (1014), and James (1015)
/*
update Enrollments
set EndDate = null
where EnrollmentID in (13, 14, 15);
*/

#To find the course end date,
#I will use a join to get the values of the CourseDuration(Courses) and StartDate(Enrollments),
#add these using the date_add function, and set this as the value for EndDate

update Enrollments e
join courses c on e.CourseID = c.CourseID
set e.EndDate = date_add(e.StartDate, interval c.CourseDuration month)
where e.EndDate is null
and e.FinalGrade is not null;