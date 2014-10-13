select concat(first_name, ' ', last_name), name, award_date
from employee e
join award a on e.id = a.employee_id
join (
 select employee_id, max(award_date) as maxdate
 from award
 group by employee_id) most_recent ON a.employee_id = most_recent.employee_id AND a.award_date = most_recent.maxdate
order by last_name asc;
