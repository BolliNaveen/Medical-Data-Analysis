	SELECT hospital_tier, AVG(charges) as average_cahrges
	FROM hospitalization_details
	WHERE year=2000
	GROUP BY hospital_tier;