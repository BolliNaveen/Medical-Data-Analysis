SELECT names.customer_id, names.name
FROM names
JOIN medical_examinations ON names.customer_id=medical_examinations.customer_id
WHERE medical_examinations.numberofmajorsurgeries >=1;
