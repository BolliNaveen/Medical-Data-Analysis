WITH yearlycharges AS(
SELECT n.customer_id, n.name,
AVG(hd.charges) AS avg_yearly_charges
FROM names n
JOIN hospitalization_details hd ON n.customer_id=hd.customer_id
GROUP BY n.customer_id, n.name
)

SELECT name,
MAX(avg_yearly_charges) AS highest_avg_yearly_charges
FROM yearlycharges
GROUP BY name
ORDER BY highest_avg_yearly_charges DESC
LIMIT 3;