#This command Selects the database for use 
use Student_Access_Database;

#This command creates a new procedure, 
#using a join to collect data from two tables,
#count to find amount of students enrolled in a specific course,
#group to group the columns,
#order to bring the most popular course to the top,
#and limit to only show the most popular course
delimiter //
create procedure if not exists MostPopularCourse()
begin

select U.UniversityName, P.UniversityCourse, Count(P.studentID) AS StudentAmount
from Universities U
inner join Progression P
on U.UniversityID = P.UniversityID
group by U.UniversityName, P.UniversityCourse
order by StudentAmount desc
limit 1;

end //
delimiter ; 

#This command executes the procedure
call MostPopularCourse();