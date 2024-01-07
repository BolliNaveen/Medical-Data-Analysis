SELECT names.customer_id, names.name, hospitalization_details.city_tier
FROM names
JOIN medical_examinations ON names.customer_id = medical_examinations.customer_id
JOIN hospitalization_details ON names.customer_id=hospitalization_details.customer_id
WHERE medical_examinations.numberofmajorsurgeries >0;

