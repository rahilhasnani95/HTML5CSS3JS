select t.trainername, c.coursename from rahilschema.feedback f, rahilschema.trainer t, rahilschema.course_details c where c.courseid = f.courseid and t.trainerid = f.trainerid order by f.trainerid;

select t.trainername from rahilschema.feedback f natural join rahilschema.trainer t group by f.trainerid having count(distinct f.courseid) > 1;

select t.trainerid, t.trainername, count(distinct f.courseid) as "No of courses" from rahilschema.trainer t natural join rahilschema.feedback f group by t.trainerid, t.trainername;

select t.trainerid, t.trainername, c.coursename, count(f.courseid) from rahilschema.trainer t, rahilschema.feedback f, rahilschema.course_details c where t.trainerid = f.trainerid and c.courseid = f.courseid group by t.trainerid, t.trainername, c.coursename;

select batchname, sum(end_date - start_date) as "duration" from rahilschema.batch_schedule group by batchname;

select t.trainerid, t.trainername, t.emailid, c.courseid, c.coursename, b.batchname, b.start_date from rahilschema.feedback f natural join rahilschema.batch_schedule b natural join rahilschema.trainer t natural join rahilschema.course_details c where b.start_date > '2007-02-20' group by b.batchname, t.trainerid, c.courseid;

select trainerid, count(courseid), batchname from rahilschema.feedback group by batchname, trainerid having count(courseid) > 1;

select f.trainerid 
from rahilschema.feedback f
where f.courseid in
		(select c.courseid from rahilschema.course_details c natural join rahilschema.feedback f);
        
select f.trainerid, count(distinct f.courseid) from rahilschema.feedback f group by f.trainerid
having count(distinct f.courseid) = (select count(c.courseid) from rahilschema.course_details c);         
        