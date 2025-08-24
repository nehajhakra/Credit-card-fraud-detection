💳 Credit Card Fraud Detection | SQL + Python + Power BI

🚀 End-to-end fraud detection project analyzing financial transactions using SQL, Python (EDA + ML), and Power BI dashboards. The system identifies suspicious patterns, fraud-prone categories, and risk factors, providing actionable insights for banks & fintechs.

🛑 Problem Statement

Fraudulent credit card transactions are a serious financial threat that leads to:
💸 Monetary losses for banks & customers
🕵️ Difficulty in identifying suspicious patterns in massive transaction data
📉 Decline in customer trust and retention
Goal: Detect fraud early, minimize false positives, and generate business-friendly dashboards to support decision-making.

✅ Solution Approach

We built a three-layered system:

1️⃣ SQL (Data Cleaning & Exploration)

Imported transaction dataset into MySQL

Performed data cleaning: handling nulls, formatting dates, and removing duplicates

Designed analytical SQL queries for fraud insights:

🔎 High-risk states & merchants

📊 Fraud distribution by card type & category

📅 Time-based fraud patterns

🏦 Bank-wise fraud trends

2️⃣ Python (EDA + Machine Learning)

EDA with Pandas & Matplotlib → Distribution of fraud vs. non-fraud transactions

Feature Engineering → Derived Fraud Score categories, Transaction Hour, etc.

ML Models Tested:

Logistic Regression

Random Forest Classifier

Evaluation Metrics: Accuracy, Precision, Recall, ROC-AUC

3️⃣ Power BI (Visualization Layer)

Interactive Dashboard for business stakeholders:

🚩 Fraud vs. Non-Fraud trend over time

📍 Heatmap of Fraud Transactions by State & Merchant Location

🏦 Bank-wise Fraud Risk Levels

🔄 Transaction Category Risk Distribution

📂 Dataset Overview
Column Name	Description
Transaction ID	Unique transaction identifier
Customer Name	Customer performing transaction
Merchant Name	Merchant where transaction occurred
Transaction Date	Date of transaction
Transaction Amount (INR)	Transaction value
Fraud Risk	Low / Medium / High
Fraud Type	Type of fraud detected
State	Transaction state
Card Type	Debit / Credit
Bank	Issuing bank
IsFraud	Binary flag (1 = Fraud, 0 = Genuine)
Fraud Score	Numeric fraud probability
Transaction Category	Retail / Online / Travel / etc.
Merchant Location	Merchant’s location
📊 Workflow

A[Data Source: Transactions CSV] --> B[SQL: Data Cleaning & Queries]
B --> C[Python: EDA + ML Modeling]
C --> D[Power BI Dashboard]
D --> E[Insights & Business Decisions]

📸 Sample Dashboard

📍 [Insert screenshot of your Power BI dashboard here]

🔑 Key Insights

✔️ High fraud risk detected in online transactions and travel category
✔️ Certain merchants & states showed disproportionate fraud rates
✔️ Fraud peaks during weekends & late-night hours
✔️ Random Forest Model outperformed Logistic Regression with higher Recall

🛠️ Tech Stack

SQL → MySQL (Data Cleaning, Querying, Risk Segmentation)

Python → Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn

Power BI → Dashboard for business insights

📈 Future Enhancements

⚡ Implement Deep Learning (LSTM) for fraud sequence detection

🔔 Real-time fraud alert system via APIs

🌍 Deploy dashboard with auto-refresh capabilities
