SELECT ua.id, ua.first_name, ua.last_name, c.id, c.customer_name, COUNT(*)
FROM contact con
INNER JOIN customer c ON c.id=con.customer_id
INNER JOIN user_account ua ON ua.id=con.user_account_id
GROUP BY ua.id, ua.first_name, ua.last_name, c.id, c.customer_name
HAVING COUNT(*)>1
ORDER BY ua.id