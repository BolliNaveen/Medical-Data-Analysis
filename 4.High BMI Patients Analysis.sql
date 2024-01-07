SELECT names.name, hospitalization_details.year, hospitalization_details.charges
FROM names
JOIN  medical_examinations ON names.customer_id=medical_examinations.customer_id
JOIN hospitalization_details ON names.customer_id=hospitalization_details.customer_id
WHERE medical_examinations.BMI>35;