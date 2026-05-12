# Loan Approval Analysis Dashboard

## Project Overview

This project analyzes loan application data to identify the key factors that influence loan approval decisions.

Using SQL and Tableau, the analysis explores relationships between:
- Credit Score
- Income Level
- Debt-to-Income Ratio (DTI)
- Loan Approval Status

The project combines data querying, exploratory analysis, and dashboard visualization to uncover approval trends and high-risk applicant patterns.

---

## Tools Used

- SQL (MySQL)
- Tableau
- CSV Dataset from Kaggle

---

## Key Questions Answered

1. How does credit score impact loan approval rates?
2. How does income level affect approval outcomes?
3. Are applicants with high debt-to-income ratios rejected more frequently?
4. What borrower profiles represent the highest risk?
5. How do multiple risk factors interact together?

---

## SQL Analysis

The SQL portion of the project was used to:
- Clean and structure the dataset
- Group applicants into income, credit, and DTI categories
- Calculate approval/rejection percentages
- Identify high-risk borrower segments
- Prepare aggregated data for Tableau visualization

---

## Tableau Dashboard

The interactive Tableau dashboard visualizes:
- Overall approval vs rejection rates
- Approval rates by income level
- Approval rates by credit category
- Risk relationships between credit score and DTI
- High-risk borrower zones

### Dashboard Preview

![Dashboard](Loan_Approval_Dashboard.png)

---

## Key Findings

- Higher credit scores strongly correlate with loan approval
- Applicants with high debt-to-income ratios are rejected more frequently
- Low credit score + high DTI represents the highest-risk applicant segment
- Income level also significantly impacts approval likelihood

---

## Dataset

Dataset source:
[Loan Approval Dataset on Kaggle](https://www.kaggle.com/datasets/arbaaztamboli/loan-approval-dataset)

---

## Project Files

- `loan_analysis_queries.sql` → SQL queries used for analysis
- `Loan_Approval_Dashboard.png` → Final Tableau dashboard screenshot

---

## Future Improvements

Potential future enhancements include:
- Predictive modeling using Python
- Logistic regression for approval prediction
- Additional borrower risk metrics
- More advanced Tableau interactivity
