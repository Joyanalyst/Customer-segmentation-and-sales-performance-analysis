CREATE DATABASE retail_analysis;
USE retail_analysis;

----- creating the table
CREATE TABLE online_retail (
InvoiceNo VARCHAR(20),
StockCode VARCHAR(20),
Description TEXT,
Quantity INT,
InvoiceDate DATETIME,
UnitPrice DECIMAL(10,2),
CustomerID VARCHAR(20),
Country VARCHAR(50),
Revenue DECIMAL(10,2)
);

------ data import from local file 
SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'local_infile';
LOAD DATA LOCAL INFILE 'C:/data/clean_online_dataset.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

------ identifying anomalies
SELECT * FROM online_retail 
LIMIT 105963, 5;
DELETE FROM online_retail WHERE UnitPrice < 0.01;
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

CREATE TABLE customer_summary AS
SELECT
CustomerID,
COUNT(DISTINCT InvoiceNo) AS TotalOrders,
SUM(Revenue) AS TotalRevenue,
SUM(Quantity) AS TotalItemsPurchased,
MIN(InvoiceDate) AS FirstPurchaseDate,
MAX(InvoiceDate) AS LastPurchaseDate
FROM online_retail
GROUP BY CustomerID;

------ RFM table
CREATE TABLE rfm_base AS
SELECT
CustomerID,
TotalOrders AS Frequency,
TotalRevenue AS Monetary,
DATEDIFF(
(SELECT MAX(InvoiceDate) FROM online_retail),
LastPurchaseDate
) AS Recency
FROM customer_summary;

------ RFM score
CREATE TABLE rfm_scores AS
SELECT
    CustomerID,
    Recency,
    Frequency,
    Monetary,
    NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
    NTILE(5) OVER (ORDER BY Frequency) AS F_Score,
    NTILE(5) OVER (ORDER BY Monetary) AS M_Score
FROM rfm_base;

------ customer segmentation 
CREATE TABLE customer_segments AS
SELECT
    CustomerID,
    Recency,
    Frequency,
    Monetary,
    R_Score,
    F_Score,
    M_Score,
    CASE
        WHEN R_Score >= 4 AND F_Score >= 4 AND M_Score >= 4 THEN 'High Value Customers'
        WHEN F_Score >= 4 AND M_Score >= 3 THEN 'Loyal Customers'
        WHEN R_Score >= 4 AND F_Score BETWEEN 2 AND 3 THEN 'Potential Loyalists'
        WHEN R_Score >= 4 AND F_Score = 1 THEN 'New Customers'
        WHEN R_Score <= 2 AND F_Score <= 2 THEN 'At Risk Customers'
        ELSE 'Others'
    END AS Customer_Segment
FROM rfm_scores;



