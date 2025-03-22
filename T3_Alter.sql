#This command automatically selects the database for future commands to be executed
use student_access_database;

#This command will rename the column "EmailAddress" to "StudentEmail"
/*
alter table Students
rename column EmailAddress to StudentEmail;
*/

#This command will create a new column in the enrollments table called "GradYear"
/*
alter table enrollments
add GradYear date;
*/