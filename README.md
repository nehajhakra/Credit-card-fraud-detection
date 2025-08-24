🚨 Credit Card Fraud Detection System

⚡ End-to-End Data Analytics + Machine Learning project integrating SQL, Python, and Power BI to detect fraudulent credit card transactions

📌 Problem Statement

Financial institutions lose billions every year due to fraudulent transactions. Traditional rule-based systems fail to adapt quickly to new fraud patterns.
👉 The challenge is to build a system that can analyze transactions, identify patterns, and classify suspicious activity in real time.

✅ Solution

This project demonstrates an end-to-end fraud detection pipeline:

🔹 SQL – Data ingestion, cleaning, feature extraction (joins, CTEs, window functions).

🔹 Python – Exploratory Data Analysis (EDA), Fraud Risk Modeling (Logistic Regression, Random Forest).

🔹 Power BI – Interactive dashboard to visualize fraud patterns, trends, and KPIs.

📂 Dataset

Features include:

🆔 Transaction ID, Customer Name

🏦 Bank, Card Type, State

🛍️ Merchant Name, Location, Transaction Category

💰 Transaction Amount, Fraud Score

⚠️ Fraud Risk, Fraud Type, IsFraud

(Dataset simulated for project purpose)

🛠️ Tech Stack

| Tool                                     | Usage                                                 |
| ---------------------------------------- | ----------------------------------------------------- |
| **SQL (MySQL)**                          | Data cleaning, anomaly detection, feature engineering |
| **Python (Pandas, NumPy, Scikit-learn)** | EDA, ML classification models                         |
| **Matplotlib & Seaborn**                 | Fraud trend visualizations                            |
| **Power BI**                             | KPI dashboards & fraud risk monitoring                |
| **GitHub**                               | Version control & portfolio presentation              |

🚀 Project Workflow

graph TD;
    A[📂 Dataset] --> B[🗂 SQL Cleaning & Feature Engineering];
    B --> C[🐍 Python EDA & Modeling];
    C --> D[🤖 Fraud Detection ML Models];
    D --> E[📊 Power BI Visualization];
    E --> F[✅ Business Insights];

📊 Key Insights

🔎 Fraud Risk: Most fraud transactions fall in E-commerce and Travel categories.

🌍 Regional Pattern: Higher fraud detection in specific states with dense populations.

💳 Card Types: Credit cards show higher fraud rates than debit cards.

📈 ML Performance: Random Forest outperformed Logistic Regression with ROC-AUC = 0.94.

🏆 Impact

✔️ Automated fraud detection system.
✔️ Real-time fraud trend visualization.
✔️ Enhanced resume portfolio project showcasing SQL + Python + Power BI + ML.

🔮 Future Improvements

🔧 Deploy as a real-time API for banks.

🧠 Integrate deep learning models (LSTM, Autoencoders).

📱 Mobile-friendly fraud alert system.

🚀 How to Run Locally

# Clone repo
git clone https://github.com/yourusername/credit-card-fraud-detection.git

# Install dependencies
pip install -r requirements.txt

# Run Python analysis
python fraud_detection.py

# For SQL analysis
Run SQL queries from /sql folder

# Open Power BI file
fraud_dashboard.pbix

