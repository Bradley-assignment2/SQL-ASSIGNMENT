#This command Selects the database for use 
use Student_Access_Database;

#This command creates a new procedure, 
#using a join to collect data from two tables,
#count to find amount of students enrolled in a specific course,
#and group to order the columns 
delimiter //
create procedure if not exists University_Student_Count()
begin

Select U.UniversityName, P.UniversityCourse, Count(p.studentID) AS StudentAmount
from Universities U
inner join Progression P
on U.UniversityID = P.UniversityID
group by U.UniversityName, P.UniversityCourse;

end
//
delimiter ;

#This command executes the procedure
call University_Student_Count();