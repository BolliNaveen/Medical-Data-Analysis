SELECT hospitalization_details.city_tier, AVG(medical_examinations.BMI) AS avg_bmi
FROM hospitalization_details
JOIN medical_examinations ON hospitalization_details.customer_id=medical_examinations.customer_id
WHERE hospitalization_details.year=1995
GROUP BY hospitalization_details.city_tier;
