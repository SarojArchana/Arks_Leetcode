
# Write your MySQL query statement below
SELECT 
    s.user_id, 
    IFNULL(ROUND(SUM(IF(c.action = 'confirmed', 1, 0)) / COUNT(c.user_id), 2), 0) AS confirmation_rate
FROM 
    signups s
LEFT JOIN 
    confirmations c ON s.user_id = c.user_id
GROUP BY 
    s.user_id;