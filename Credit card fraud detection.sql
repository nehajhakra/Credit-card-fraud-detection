use credit;
CREATE TABLE transactions (
    TransactionID        BIGINT PRIMARY KEY,
    CustomerName         VARCHAR(100),
    MerchantName         VARCHAR(100),
    TransactionDate      DATETIME,
    TransactionAmountINR DECIMAL(12,2),
    FraudRisk            VARCHAR(20),
    FraudType            VARCHAR(50),
    State                VARCHAR(50),
    CardType             VARCHAR(20),
    Bank                 VARCHAR(50),
    IsFraud              TINYINT,  -- 0 = Genuine, 1 = Fraud
    FraudScore           INT,
    TransactionCategory  VARCHAR(50),
    MerchantLocation     VARCHAR(100)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Credit Card Fraud Risk Analysis.csv'
INTO TABLE transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- ==============================
-- Credit Card Fraud Analysis SQL
-- ==============================

-- 1. Basic Exploration
-- Total transactions, total frauds, average amount
SELECT COUNT(*) AS total_transactions,
       SUM(IsFraud) AS total_frauds,
       ROUND(AVG(TransactionAmountINR),2) AS avg_amount
FROM transactions;

-- Unique values in categorical columns
SELECT COUNT(DISTINCT MerchantName) AS unique_merchants,
       COUNT(DISTINCT TransactionCategory) AS unique_categories,
       COUNT(DISTINCT MerchantLocation) AS unique_locations,
       COUNT(DISTINCT State) AS unique_states,
       COUNT(DISTINCT Bank) AS unique_banks,
       COUNT(DISTINCT CardType) AS unique_cardtypes
FROM transactions;

-- Null value check
SELECT 
    SUM(CASE WHEN MerchantName IS NULL THEN 1 ELSE 0 END) AS null_merchants,
    SUM(CASE WHEN TransactionCategory IS NULL THEN 1 ELSE 0 END) AS null_categories,
    SUM(CASE WHEN TransactionAmountINR IS NULL THEN 1 ELSE 0 END) AS null_amounts,
    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS null_states,
    SUM(CASE WHEN MerchantLocation IS NULL THEN 1 ELSE 0 END) AS null_locations
FROM transactions;

-- 2. Aggregate Analysis
-- Fraud count by category
SELECT TransactionCategory, 
       COUNT(*) AS total_transactions,
       SUM(IsFraud) AS fraud_count,
       ROUND(SUM(IsFraud)/COUNT(*)*100, 2) AS fraud_percentage
FROM transactions
GROUP BY TransactionCategory
ORDER BY fraud_percentage DESC;

-- Top 10 merchants with most frauds
SELECT MerchantName,
       COUNT(*) AS total_transactions,
       SUM(IsFraud) AS fraud_count
FROM transactions
GROUP BY MerchantName
ORDER BY fraud_count DESC
LIMIT 10;

-- Fraud by state
SELECT State,
       COUNT(*) AS total_transactions,
       SUM(IsFraud) AS fraud_count,
       ROUND(SUM(IsFraud)/COUNT(*)*100, 2) AS fraud_percentage
FROM transactions
GROUP BY State
ORDER BY fraud_percentage DESC;

-- 3. Time-Based Analysis

-- Fraud by hour of the day
SELECT HOUR(TransactionDate) AS hour,
       COUNT(*) AS total_transactions,
       SUM(IsFraud) AS fraud_count
FROM transactions
GROUP BY hour
ORDER BY fraud_count DESC;

-- Fraud by day of week
SELECT DAYOFWEEK(TransactionDate) AS day_of_week,
       COUNT(*) AS total_transactions,
       SUM(IsFraud) AS fraud_count
FROM transactions
GROUP BY day_of_week
ORDER BY fraud_count DESC;

-- 4. Customer / Location Analysis
-- Top 10 merchant locations with highest fraud percentage
SELECT MerchantLocation,
       COUNT(*) AS total_transactions,
       SUM(IsFraud) AS fraud_count,
       ROUND(SUM(IsFraud)/COUNT(*)*100, 2) AS fraud_percentage
FROM transactions
GROUP BY MerchantLocation
ORDER BY fraud_percentage DESC
LIMIT 10;

-- Bank-wise fraud analysis
SELECT Bank,
       COUNT(*) AS total_transactions,
       SUM(IsFraud) AS fraud_count,
       ROUND(SUM(IsFraud)/COUNT(*)*100, 2) AS fraud_percentage
FROM transactions
GROUP BY Bank
ORDER BY fraud_percentage DESC;

-- 🔹 5. Advanced SQL

-- Rolling average transaction amount per state (window function)
SELECT TransactionID, State, TransactionAmountINR, 
       ROUND(AVG(TransactionAmountINR) OVER(PARTITION BY State ORDER BY TransactionDate 
       ROWS BETWEEN 4 PRECEDING AND CURRENT ROW),2) AS rolling_avg_amt
FROM transactions;

-- Flag transactions higher than 3x state average amount
SELECT TransactionID, State, TransactionAmountINR, IsFraud,
       CASE WHEN TransactionAmountINR > 3*AVG(TransactionAmountINR) OVER(PARTITION BY State) 
            THEN 1 ELSE 0 END AS high_amt_flag
FROM transactions
ORDER BY high_amt_flag DESC;



