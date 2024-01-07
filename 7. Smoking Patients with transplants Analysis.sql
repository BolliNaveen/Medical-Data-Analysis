SELECT medical_examinations.customer_id, medical_examinations.BMI,hospitalization_details.charges
FROM medical_examinations
JOIN hospitalization_details ON medical_examinations.customer_id=hospitalization_details.customer_id
WHERE medical_examinations.smoker='yes' AND medical_examinations.any_transplant='yes';
