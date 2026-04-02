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
#### - Leveraged generative AI to formulate targeted business questions, improving the depth and direction of exploratory data analysis.
#### - Applied AI support to identify and validate key retail KPIs (e.g., customer purchase frequency, average order value) aligned with business objectives.
#### - Utilized AI to accelerate data cleaning by detecting anomalies such as missing values, duplicate records, and invalid pricing entries.
#### - Enhanced insight communication by refining analytical findings into clear, business-focused narratives for non-technical stakeholders.
#### - Streamlined reporting by generating executive summaries that highlight key trends, risks, and actionable recommendations.

## Executive Summary
#### The analysis of the online transactional dataset shows that high-value customers contribute 52.7% of total revenue, with a repeat-purchase rate of 65.2%. The business recorded September and December as peak months, with Tuesdays and Thursdays as the highest purchase days between 10 am and 3 pm.

<img width="1113" height="603" alt="Screenshot 2026-03-19 111015" src="https://github.com/user-attachments/assets/4ecb852c-2048-4497-94f9-c2ca5be00dab" />

## Insights
### 1. Sales are highly seasonal and driven by order volume
#### Revenue peaks in September–December (~$500K–$600K) with 1,600–2,500 orders, showing that sales growth is primarily driven by increased transaction volume rather than higher order value.
#### Business performance is highly dependent on seasonal demand, creating revenue volatility in off-peak months.

### 2. Midday hours and specific weekdays drive the highest conversions
#### Transactions peak between 10 AM and 3 PM, especially on Tuesdays and Thursdays, indicating strong customer purchase intent during these periods.
#### Marketing efforts (e.g., email campaigns at 10 AM) should be concentrated within this window to maximize conversion rates.

<img width="1093" height="621" alt="Screenshot 2026-03-19 111034" src="https://github.com/user-attachments/assets/5436aaad-7fd2-4c9f-af26-124db801f45d" />

### 3. Revenue is concentrated among a small group of high-value customers
#### A limited segment of loyal customers contributes a disproportionate share of revenue, while a large portion of customers are classified as at-risk.
#### The business faces customer concentration risk, making revenue vulnerable if top customers churn.

### 4. Returning customers are the primary revenue drivers
#### Returning customers contribute the majority of total revenue, confirming that repeat purchases are critical to business sustainability.
#### Retention strategies will have a higher ROI than acquisition alone.

### 5. High churn risk threatens future revenue stability
#### A significant number of customers fall into the at-risk category due to inactivity, indicating potential churn.
#### Without intervention, this could lead to progressive revenue decline, especially if previously active customers are lost.

## Recommendations
### 1. Replicate peak-period strategies to stabilize low-month sales
#### Sales spike significantly between September and December. Analyze campaign types, product categories, and pricing strategies used during this period and apply them to low-performing months (e.g., February–April) to reduce seasonal revenue dips.

### 2. Expand the high-value customer segment to reduce revenue concentration risk
#### Since 52.7% of revenue comes from a small group, introduce targeted upsell and onboarding campaigns for mid-tier customers to move them into high-value status, reducing dependency on a limited segment.

### 3. Increase repeat purchase rate through structured retention programs
#### With a 65.2% repeat rate, implement automated follow-ups (e.g., post-purchase emails, product recommendations within 7–14 days) to push this higher and maximize customer lifetime value.

### 4. Reduce churn by targeting inactivity patterns
#### Identify customers who haven’t purchased within a defined window (e.g., 30–60 days) and trigger win-back campaigns (discounts or reminders) to re-engage them before complete drop-off.

### Limitations
#### While this analysis provides a clear view of revenue and customer segments, it is limited by the lack of COGS data, preventing a true profitability assessment. In a real-world scenario, I would look to integrate shipping costs and marketing spend to calculate Customer Acquisition Cost (CAC) and Contribution Margin.











