--How many transactions occurred?
SELECT COUNT(*) AS total_transactions
FROM sera.sales;


--What is the period covered in the analysis?
SELECT EXTRACT(YEAR FROM MIN(datetime)) AS start_date, EXTRACT(YEAR FROM MAX(datetime))AS end_date
FROM sera.sales;


--Show the transaction count by status and percentage of total for each status.
SELECT COUNT(*) AS total_transactions,
COUNT(CASE WHEN status='success' THEN 1 END) AS total_successful,
COUNT(CASE WHEN status='failed'THEN 1 END) AS total_failed,
COUNT(CASE WHEN status='abandoned' THEN 1 END) AS total_abandoned,
ROUND(COUNT(CASE WHEN status='success' THEN 1 END)*1.0 /  COUNT(*),1) AS percentage_successful,
ROUND(COUNT(CASE WHEN STATUS='failed' THEN 1 END)*1.0 / COUNT(*),1) AS percentage_failed,
ROUND(COUNT(CASE WHEN status='abandoned' THEN 1 END)*1.0/ COUNT(*),1) AS percentage_abandoned
FROM sera.sales;


--Show the monthly subscription revenue in NGN split by channel
--The Month-year with the highest revenue is 2023-08
SELECT DATE_TRUNC('month', datetime)AS month,channel,ROUND(SUM(CASE WHEN currency='USD' THEN amount* 950 ELSE amount END),2) AS sub_revenue
FROM sera.sales
WHERE status ='success'
GROUP BY month,channel
ORDER BY sub_revenue DESC;


--Which channel has the highest rate of success? BANK TRANSFER
--Which has the highest rate of failure? BANK

SELECT channel, COUNT(*) AS total_transaction,
COUNT(CASE WHEN status='success' THEN 1 END) AS total_success,
COUNT(CASE WHEN status='failed' THEN 1 END) AS total_failed,
COUNT(CASE WHEN status='abandoned' THEN 1 END) AS total_abandoned,
ROUND(COUNT(CASE WHEN statuS='success' THEN 1 END)*100.0/COUNT(*),2)AS percentage_success,
ROUND(COUNT(CASE WHEN status='failed' THEN 1 END)*100.0/COUNT(*),2) AS percentage_failed,
ROUND(COUNT(CASE WHEN status='abandoned' THEN 1 END)*100.0/COUNT(*),2) AS percentage_abandoned
FROM sera.sales
GROUP BY channel;


--How many subscribers are there in total? A subscriber is a user with a successful payment
SELECT COUNT(*) AS total_subscribers
FROM sera.sales
WHERE status='success';


--Generate a list of users showing their number of active months, total successful, abandoned, and failed transactions. Using (CTE)
WITH user_activity AS(
SELECT user_id,
DATE_TRUNC('month', datetime)AS month
FROM sera.sales
GROUP BY user_id,month
),

activity AS(
SELECT 
user_id,
COUNT(DISTINCT DATE_TRUNC('month',datetime)) AS months_active,
COUNT(CASE WHEN status='success' THEN 1 END) AS total_success,
COUNT(CASE WHEN status='failed' THEN 1 END) AS total_failed,
COUNT(CASE WHEN status='abandoned' THEN 1 END) AS total_abandoned
FROM sera.sales
GROUP BY user_id
)

SELECT activity.user_id,activity.months_active,total_success,total_failed,total_abandoned
FROM activity;

--Identify the users with more than 1 active month without a successful transaction.(23)
--highlight CTE and below 
SELECT activity.user_id 
FROM activity
WHERE activity.months_active >1 AND total_success = 0




