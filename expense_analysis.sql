-- Expense Analysis by Category
SELECT category, SUM(amount) AS total_spent, COUNT(*) AS transaction_count
FROM expenses
GROUP BY category
ORDER BY total_spent DESC;

-- Top Clients by Transaction Volume
SELECT client_name, COUNT(*) AS total_transactions, SUM(amount) AS total_amount
FROM client_transactions
GROUP BY client_name
ORDER BY total_amount DESC
LIMIT 10;

-- Monthly Revenue Trend
SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month, SUM(amount) AS revenue
FROM transactions
GROUP BY month
ORDER BY month;
