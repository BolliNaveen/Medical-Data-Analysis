SELECT
  n.name,
  SUM(hd.charges) AS total_charges,
  RANK() OVER (ORDER BY SUM(hd.charges) DESC) AS charges_rank
FROM names n
JOIN hospitalization_details hd ON n.customer_id = hd.customer_id
GROUP BY n.name
ORDER BY charges_rank DESC;
