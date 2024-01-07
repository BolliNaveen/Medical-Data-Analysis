SELECT names.name
FROM names
JOIN medical_examinations ON names.customer_id=medical_examinations.customer_id
WHERE medical_examinations.numberofmajorsurgeries >=2 OR medical_examinations.cancer_history ='yes';

