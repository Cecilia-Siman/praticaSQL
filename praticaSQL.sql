-- questão 1
select count("endDate") as currentExperiences from experiences;

-- questão 2
select "userId" as id, count(id) as educations from educations group by "userId";

-- questão 3
select name as writer, count(testimonials.id) as "testimonailCount" from testimonials join users on testimonials."writerId" = users.id where "writerId" = 435 group by name;

--questão 4
select max(salary) as "maximumSalary", name as role from jobs join roles on jobs."roleId"=roles.id where jobs.active=true group by name order by "maximumSalary" asc;

--bônus
select schools.name as school, courses.name as course, count(educations.id) as "studentCount" from educations join courses on educations."courseId"=courses.id join schools on educations."schoolId"=schools.id where not status='time off' group by course,school order by "studentCount" desc limit 3;
