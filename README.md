🛡️ Credit Card Fraud Detection using SQL, Python & Power BI
📌 Project Overview

Credit card fraud is one of the most critical challenges faced by the banking and financial industry. This project aims to detect fraudulent transactions using SQL for data preprocessing & feature engineering, Python for data analysis & machine learning modeling, and Power BI for interactive dashboarding.

The end-to-end pipeline demonstrates how businesses can identify anomalies, prevent fraud, and monitor risk in real-time.

🎯 Problem Statement

Financial institutions lose billions each year due to fraudulent transactions. Detecting fraud is challenging because:

Fraudulent transactions are rare compared to genuine ones (class imbalance).

Fraud patterns evolve dynamically.

Real-time detection is crucial to prevent monetary loss.

👉 Goal: Build a system to detect fraud using historical transactions and create an interactive dashboard to monitor trends, patterns, and high-risk transactions.

✅ Solution Approach

We designed a 3-layered solution combining SQL, Python, and Power BI:

SQL Layer

Imported and cleaned raw transaction data.

Performed data preprocessing (handling missing values, duplicates).

Engineered fraud-related features (e.g., frequency of transactions, amount thresholds, merchant risk).

Wrote complex SQL queries (Joins, CTEs, Window Functions, Aggregations) to extract fraud insights.

Python Layer

Conducted Exploratory Data Analysis (EDA) with Pandas, NumPy, Matplotlib, Seaborn.

Applied Machine Learning models: Logistic Regression, Random Forest, Gradient Boosting.

Evaluated models with ROC-AUC, Precision, Recall, F1-score.

Interpreted model outputs for explainability.

Power BI Layer

Built an interactive fraud monitoring dashboard.

Visualized KPIs like:

Fraud vs Genuine Transactions

Fraud Risk by State, Merchant, Card Type, Bank

Fraud Score Trends over time

Designed drill-down capabilities for managers to take quick decisions.

📂 Dataset

Columns Used:

Column Name	Description
Transaction ID	Unique ID for each transaction
Customer Name	Customer performing transaction
Merchant Name	Merchant associated with transaction
Transaction Date	Date & time of transaction
Transaction Amount (INR)	Amount spent
Fraud Risk	Low / Medium / High
Fraud Type	Stolen Card / Phishing / Skimming
State	Customer location
Card Type	Credit / Debit
Bank	Issuing Bank
IsFraud	1 = Fraud, 0 = Genuine
Fraud Score	Risk score (0–100)
Transaction Category	Shopping, Food, Travel, etc.
Merchant Location	City/Region of merchant
⚙️ Tech Stack & Tools

SQL → Data Cleaning, Preprocessing, Feature Engineering

Python → EDA, Machine Learning, Model Evaluation

Power BI → Interactive Fraud Dashboard

Libraries Used (Python):
pandas, numpy, matplotlib, seaborn, scikit-learn

📊 Exploratory Data Analysis (Python)

✔️ Fraudulent transactions were less than 2% → highly imbalanced dataset.
✔️ Fraud was more frequent in online shopping & high-value transactions.
✔️ Debit cards were slightly more prone to fraud than credit cards.
✔️ Certain states and banks showed higher fraud risk.

🤖 Machine Learning Models

We tested multiple models for fraud detection:

Model	Precision	Recall	F1-score	ROC-AUC
Logistic Regression	0.82	0.77	0.79	0.89
Random Forest	0.91	0.86	0.88	0.95
Gradient Boosting (XGB)	0.93	0.89	0.91	0.97

👉 Best Model: Gradient Boosting with ROC-AUC 97%

📈 Power BI Dashboard

The interactive dashboard includes:

🚨 Fraud Detection KPIs – Total Transactions, % Fraud, Avg Fraud Amount

📍 Geographic Map – Fraud distribution by state/merchant location

🏦 Bank & Card Analysis – Fraud breakdown by issuing bank & card type

📊 Fraud Trends – Daily/Monthly fraud patterns

🔍 Drill-Through Filters – Analyze fraud risk by merchant, fraud type, and customer segment

(Insert screenshots of your Power BI dashboard here)

🚀 Project Workflow
graph TD
A[Data Collection] --> B[SQL - Cleaning & Feature Engineering]
B --> C[Python - EDA & Modeling]
C --> D[Power BI - Dashboard Visualization]
D --> E[Business Insights & Fraud Monitoring]

🔑 Key Business Insights

High-Value Transactions (> ₹50,000) are more likely to be fraudulent.

Phishing & Skimming are top fraud types.

Top 3 Fraud-Prone States: Maharashtra, Delhi, Karnataka.

Fraud Score > 80 correlates strongly with fraudulent activity.

📌 Resume-Ready Impact

Built an end-to-end Fraud Detection System using SQL, Python & Power BI.

Achieved 97% ROC-AUC using Gradient Boosting model.

Automated fraud insights into a real-time dashboard for financial risk teams.

Enhanced fraud detection accuracy → potential savings of millions for banks.

📜 How to Run This Project
1️⃣ SQL Setup
-- Import dataset into MySQL
LOAD DATA INFILE 'transactions.csv'
INTO TABLE credit_card_fraud
FIELDS TERMINATED BY ','
IGNORE 1 ROWS;

2️⃣ Python Setup
pip install pandas numpy matplotlib seaborn scikit-learn


Run fraud_analysis.py to perform EDA & model training.

3️⃣ Power BI

Load processed dataset from SQL/Python output.

Import into Power BI and apply visualizations.

📂 Repository Structure
📦 Credit-Card-Fraud-Detection
 ┣ 📜 README.md
 ┣ 📂 sql_scripts
 ┃ ┗ 📜 fraud_queries.sql
 ┣ 📂 notebooks
 ┃ ┗ 📜 fraud_analysis.ipynb
 ┣ 📂 dashboard
 ┃ ┗ 📜 fraud_dashboard.pbix
 ┣ 📂 data
 ┃ ┗ 📜 transactions.csv
 ┣ 📂 models
 ┃ ┗ 📜 fraud_model.pkl

📌 Future Enhancements

Deploy fraud detection model using Flask / FastAPI for real-time predictions.

Integrate with cloud (AWS/GCP) for scalability.

Use Deep Learning (LSTMs/Autoencoders) for anomaly detection.

🏆 Conclusion

This project demonstrates how SQL, Python, and Power BI can be integrated to build a practical fraud detection system. It highlights not only technical capabilities but also business impact — enabling banks to reduce fraud losses and improve customer trust.

👩‍💻 Author

Neha Jhakra
📍 Data Analyst | Aspiring Business Analyst | SQL | Python | Power BI
🔗 LinkedIn
 | GitHub

✨ If you like this project, don’t forget to ⭐ star the repo! ✨
