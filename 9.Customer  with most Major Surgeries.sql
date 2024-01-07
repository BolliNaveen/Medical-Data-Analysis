SELECT names.name, names.customer_id
FROM names
JOIN medical_examinations ON names.customer_id=medical_examinations.customer_id
ORDER BY medical_examinations.numberofmajorsurgeries DESC;