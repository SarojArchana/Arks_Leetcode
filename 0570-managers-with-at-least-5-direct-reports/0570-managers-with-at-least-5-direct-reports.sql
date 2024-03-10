# Write your MySQL query statement below
select name from employee where id in
(select eid from
(select count(id) as c, managerid as eid from Employee group by managerid ) as dump where 
dump.c>=5) 