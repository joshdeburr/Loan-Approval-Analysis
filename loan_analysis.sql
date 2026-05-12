-- =====================================
-- Overall Approval Rate
-- =====================================

SELECT 
    CASE 
        WHEN Loan_Approval_Status = 1 THEN 'Approved'
        ELSE 'Rejected'
    END AS loan_status,
    
    COUNT(*) AS total,
    
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 
        2
    ) AS percentage
FROM loan_dataset
GROUP BY loan_status;
-- =====================================
-- DATA OVERVIEW
-- =====================================


-- Preview dataset
SELECT *
FROM loan_dataset
LIMIT 5;


-- Check missing income values
SELECT 
    COUNT(*) AS missing_income
FROM loan_dataset
WHERE Annual_Income IS NULL OR Annual_Income = 0;

-- Credit score summary
SELECT 
    MIN(Credit_Score),
    MAX(Credit_Score),
    AVG(Credit_Score)
FROM loan_dataset;
-- =====================================
-- CREDIT SCORE ANALYSIS
-- =====================================
SELECT 
    CASE 
        WHEN Credit_Score < 600 THEN 'Poor'
        WHEN Credit_Score BETWEEN 600 AND 700 THEN 'Fair'
        ELSE 'Good'
    END AS credit_range,
    
    CASE 
        WHEN Loan_Approval_Status = 1 THEN 'Approved'
        ELSE 'Rejected'
    END AS loan_status,
    
    COUNT(*) AS total
FROM loan_dataset
GROUP BY credit_range, loan_status
ORDER BY credit_range;
-- =====================================
-- INCOME ANALYSIS
-- =====================================
SELECT 
    CASE 
        WHEN Annual_Income < 30000 THEN 'Low'
        WHEN Annual_Income BETWEEN 30000 AND 70000 THEN 'Medium'
        ELSE 'High'
    END AS income_range,
    
    CASE 
        WHEN Loan_Approval_Status = 1 THEN 'Approved'
        ELSE 'Rejected'
    END AS loan_status,
    
    COUNT(*) AS total
FROM loan_dataset
GROUP BY income_range, loan_status;
-- =====================================
-- DTI ANALYSIS
-- =====================================
SELECT 
    CASE 
        WHEN Outstanding_Debt / Annual_Income < 0.2 THEN 'Low DTI'
        WHEN Outstanding_Debt / Annual_Income BETWEEN 0.2 AND 0.4 THEN 'Medium DTI'
        ELSE 'High DTI'
    END AS dti_range,
    
    CASE 
        WHEN Loan_Approval_Status = 1 THEN 'Approved'
        ELSE 'Rejected'
    END AS loan_status,
    
    COUNT(*) AS total
FROM loan_dataset
WHERE Annual_Income > 0
GROUP BY dti_range, loan_status;

SELECT
Credit_Score,
Outstanding_Debt / Annual_Income AS debt_to_income,

CASE 
    WHEN Loan_Approval_Status = 1 THEN 'Approved'
    ELSE 'Rejected'
END AS loan_status

FROM loan_dataset
WHERE Annual_Income > 0;