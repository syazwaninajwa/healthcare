SELECT * FROM health;

SELECT name, billing_amount
FROM health
WHERE name ILIKE '%adam%'
GROUP BY name, billing_amount
ORDER BY billing_amount;

SELECT medical_condition, insurance_provider, SUM(billing_amount) as total_bill
FROM health
WHERE insurance_provider = 'Blue Cross' AND medical_condition = 'Cancer'
GROUP BY insurance_provider, medical_condition
ORDER BY total_bill;