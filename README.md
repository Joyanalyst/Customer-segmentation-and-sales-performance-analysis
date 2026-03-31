# Customer-segmentation-and-sales-performance-analysis
Analysis of online transactional dataset

#### Role: Data Analyst | Tools: Power BI (KPI development, Dashboard design, Data storytelling), SQL (Data cleaning, Customer aggregation, RFM analysis), DAX | ChatGPT (Generative AI for analysis support) | Dataset: Global E-commerce Transactions (500k+ rows)
## Project Overview 
#### I designed a two-page interactive dashboard to analyze an online retail transactional dataset. The goal was to uncover actionable insights into sales performance, customer behavior, and business opportunities, enabling data-driven decisions for growth and retention.

## Business Problem
#### Businesses often struggle to identify their most valuable customers and understand what drives revenue growth.
#### This project focuses on answering key questions:
#### •	Who are the most valuable customers?
#### •	Are customers returning or churning?
#### •	What drives monthly revenue growth?

### The online retail transactional dataset contains the following columns
#### •	InvoiceNo: Invoice number of the transaction
#### •	StockCode: Unique code of the product
#### •	Description: Description of the product
#### •	Quantity: Quantity of the product in the transaction
#### •	InvoiceDate: Date and time of the transaction
#### •	UnitPrice: Unit price of the product
#### •	CustomerID: Unique identifier of the customer
#### •	Country: Country where the transaction occurred

## Generative AI integration and workflows
#### •	I shared my dataset’s column names with ChatGPT to help me generate 10 targeted analytical questions that uncovered high-impact variables in the dataset.
#### •	 I used AI to help me decide which KPIs (Key Performance Indicators) are most relevant to a retail business, such as average order value and customer purchase frequency.
#### •	 I used AI to help me write the formulas (Excel/DAX/SQL) needed to find errors in the data, like missing and negative prices or duplicate orders.
#### •	After I found the insights, I used AI to help me explain them, making sure my report was easy for a manager to read and act on.
#### •	I fed my final numbers into the AI to help me draft a quick executive summary that highlights the most important things the business needs to do next.

## Executive Summary
#### The analysis of the online transactional dataset shows that high-value customers contribute 52.7% of total revenue, with a repeat-purchase rate of 65.2%. The business recorded September and December as peak months, with Tuesdays and Thursdays as the highest purchase days between 10 am and 3 pm.

<img width="1113" height="603" alt="Screenshot 2026-03-19 111015" src="https://github.com/user-attachments/assets/4ecb852c-2048-4497-94f9-c2ca5be00dab" />

## Insights
### 1. Seasonality
#### Monthly sales figures vary significantly, ranging from lower levels in early months to peak performance in September and December. This pattern is mirrored in the number of orders, as shown (September and December recorded the highest revenue of ~$500,000 to $600,000, with the number of orders ranging from 1,600 to 2,500), indicating that revenue growth is largely driven by increased transaction volume rather than just higher order value. The strong alignment between revenue and order count suggests that customer activity (frequency of purchases) is the primary driver of sales performance, with peak periods likely influenced by seasonal demand, promotions, or holiday shopping behavior.

### 2. Peak Performance Windows
#### The analysis shows that peak transaction volume occurs between 10:00 AM and 3:00 PM, particularly on Tuesdays and Thursdays. Marketing emails sent at 10:00 AM are most likely to convert while users are in their buying window.

<img width="1093" height="621" alt="Screenshot 2026-03-19 111034" src="https://github.com/user-attachments/assets/5436aaad-7fd2-4c9f-af26-124db801f45d" />

### 3. Customer Segmentation
#### Customer segmentation reveals that a small group of high-value and loyal customers contributes a significant portion of total revenue, while a larger share of customers falls into the at-risk category. This indicates an uneven revenue distribution where business performance depends heavily on a limited number of customers.






