SELECT h.year, n.name, h.city_tier, MAX(h.charges) AS max_charges
FROM hospitalization_details h
JOIN names n ON h.customer_id=n.customer_id
GROUP BY h.year, n.name, h.city_tier
HAVING MAX(h.charges)=(SELECT MAX (charges) FROM hospitalization_details WHERE year=h.year);
