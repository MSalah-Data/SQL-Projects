--View the menu_items table and write a query to find the number of items on the menu

SELECT * 
FROM menu_items ;

SELECT COUNT(*) AS total_items
FROM menu_items ;

--What are the least and most expensive items on the menu?

SELECT TOP 1 * 
FROM menu_items 
ORDER BY price desc ; 

SELECT TOP 1 * 
FROM menu_items 
ORDER BY price  ; 

--How many Italian dishes are on the menu 

SELECT COUNT(item_name) AS italian_dishes 
FROM menu_items 
WHERE category = 'italian';

-- What are the least and most expensive Italian dishes on the menu?
SELECT item_name , price 
FROM menu_items 
WHERE category = 'italian' 
ORDER BY price desc;

--How many dishes are in each category

SELECT COUNT(item_name) AS dishes ,category 
FROM menu_items 
GROUP BY category ;

-- What is the average dish price within each category?

SELECT category , AVG(price) AS avg_price
FROM menu_items 
GROUP BY category ;

---View the order_details table. What is the date range of the table?

SELECT
    MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM order_details;

--How many orders were made within this date range?

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM order_details;

-- How many items were ordered within this date range?

SELECT COUNT(*) AS total_items
FROM order_details;

--Which orders had the most number of items?
SELECT TOP 1
    order_id,
    COUNT(item_id) AS total_items
FROM order_details
GROUP BY order_id
ORDER BY total_items DESC;

--How many orders had more than 12 items?

SELECT COUNT(*) AS total_orders
FROM (
    SELECT order_id
    FROM order_details
    GROUP BY order_id
    HAVING COUNT(*) > 12
) AS orders_with_12_items;

--Combine the menu_items and order_details tables into a single table

SELECT * 
FROM order_details o
JOIN menu_items m 
ON o.item_id = m.menu_item_id ;

--What were the least and most ordered items? What categories were they in?

SELECT TOP 1
    m.item_name,
    m.category,
    COUNT(*) AS times_ordered
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY m.item_name, m.category
ORDER BY times_ordered DESC;

SELECT TOP 1
    m.item_name,
    m.category,
    COUNT(*) AS times_ordered
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY m.item_name, m.category
ORDER BY times_ordered ;

--What were the top 5 orders that spent the most money?

SELECT TOP 5
    o.order_id,
    SUM(m.price) AS total_spent
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
GROUP BY o.order_id
ORDER BY total_spent DESC;

--View the details of the highest spend order. Which specific items were purchased?

SELECT
    m.item_name,
    m.category,
    m.price
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
WHERE o.order_id = (
    SELECT TOP 1
        o2.order_id
    FROM order_details o2
    JOIN menu_items m2
        ON o2.item_id = m2.menu_item_id
    GROUP BY o2.order_id
    ORDER BY SUM(m2.price) DESC
);

--View the details of the top 5 highest spend orders

SELECT
    o.order_id,
    m.item_name,
    m.category,
    m.price
FROM order_details o
JOIN menu_items m
    ON o.item_id = m.menu_item_id
WHERE o.order_id IN (
    SELECT TOP 5
        o2.order_id
    FROM order_details o2
    JOIN menu_items m2
        ON o2.item_id = m2.menu_item_id
    GROUP BY o2.order_id
    ORDER BY SUM(m2.price) DESC
)
ORDER BY o.order_id;

--How much was the most expensive order in the dataset?

SELECT MAX(total_spent) AS most_expensive_order
FROM (
    SELECT
        o.order_id,
        SUM(m.price) AS total_spent
    FROM order_details o
    JOIN menu_items m
        ON o.item_id = m.menu_item_id
    GROUP BY o.order_id
) AS order_totals;