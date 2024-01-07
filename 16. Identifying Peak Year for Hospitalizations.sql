WITH YearlyHospitalizations AS (
    SELECT year, COUNT(*) as hospitalizations
    FROM hospitalization_details
    GROUP BY year
)
SELECT year, hospitalizations
FROM YearlyHospitalizations
WHERE hospitalizations = (SELECT MAX(hospitalizations) FROM YearlyHospitalizations);
