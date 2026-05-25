-- Customer Lifetime value 

SELECT 
	c.customer_unique_id, 
	COUNT(DISTINCT o.order_id) AS total_orders,
	ROUND(SUM(oi.price),2) AS total_spent,
	MAX(o.order_purchase_timestamp) AS last_purchase_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o. order_status = 'delivered' 
GROUP BY c.customer_unique_id 
ORDER BY total_spent DESC 
LIMIT 10 ; -- TOP 10 

-- Category Rank 

SELECT 
	t.product_category_name_english AS category_name,
	COUNT(oi.order_item_id) AS units_sold,
	ROUND(SUM(oi.price), 2) AS total_revenue,
	DENSE_RANK() OVER(ORDER BY SUM(oi.price) DESC) AS category_rank 
FROM order_items oi 
JOIN products p ON oi.product_id = p.product_id 
JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
GROUP BY t.product_category_name_english 
ORDER BY total_revenue DESC;

-- Delivery Performance Analysis 

SELECT 
	o.order_id,
	ROUND(julianday(o.order_delivered_customer_date) - julianday(o.order_estimated_delivery_date), 1) AS days_difference,
	r.review_score 
FROM orders o
JOIN order_reviews r ON o.order_id = r.order_id 
WHERE o.order_status = 'delivered'
	AND o.order_delivered_customer_date IS NOT NULL 
ORDER BY days_difference DESC 
LIMIT 20 ; 

SELECT 
	COUNT(order_id) AS total_delayed_orders,
	ROUND(AVG(julianday(order_delivered_customer_date) - julianday(order_estimated_delivery_date)), 1 ) AS  avg_delay_days,
	MIN(julianday(order_delivered_customer_date) - julianday(order_estimated_delivery_date)) AS min_delay,
	MAX(julianday(order_delivered_customer_date) - julianday(order_estimated_delivery_date)) AS max_delay
FROM orders	
WHERE  order_status = 'delivered' 
	AND order_delivered_customer_date > order_estimated_delivery_date;
	
-- Averege Review Score

SELECT 
	CASE
		WHEN (julianday(o.order_delivered_customer_date) - julianday(o.order_estimated_delivery_date)) <= 7 THEN '1. Low Delay'
		WHEN (julianday(o.order_delivered_customer_date) - julianday(o.order_estimated_delivery_date)) BETWEEN 7.01 AND 30 THEN '2. Medium Delay' 
		ELSE '3. High Delay'
	END AS delay_severity,
	COUNT(o.order_id) AS total_orders,
	ROUND(AVG(r.review_score), 2) AS avg_customer_rating
FROM orders o 
JOIN order_reviews r ON o.order_id = r.order_id 
WHERE o.order_status = 'delivered' 
	AND o.order_delivered_customer_date > o.order_estimated_delivery_date 
GROUP BY delay_severity
ORDER BY delay_severity;