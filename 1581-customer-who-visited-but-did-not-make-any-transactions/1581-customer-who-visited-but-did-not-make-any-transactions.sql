# Write your MySQL query statement below
select customer_id, COUNT(Visit_id) as count_no_trans  from 
Visits where Visit_id Not IN (select Visit_id from transactions) 
group by
customer_id