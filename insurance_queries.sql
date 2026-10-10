
-- 1. DEMOGRAPHIC COST SUMMARY (Showcases Math & Statistical foundation)
SELECT 
    region,
    sex,
    COUNT(*) AS total_patients,
    ROUND(AVG(charges), 2) AS average_medical_charges,
    ROUND(STDDEV(charges), 2) AS standard_deviation_charges
FROM 
    `healthcare_data.insurance_claims`
GROUP BY 
    region, sex
ORDER BY 
    average_medical_charges DESC;


-- 2. HIGH-VALUE INSURANCE INSIGHT (Isolating the massive impact of smoking)
SELECT 
    smoker,
    COUNT(*) AS total_patients,
    ROUND(AVG(charges), 2) AS avg_charges,
    ROUND(MAX(charges) - MIN(charges), 2) AS charge_range
FROM 
    `healthcare_data.insurance_claims`
GROUP BY 
    smoker;

