# Restaurant Sales Analysis — SQL Server

## Project Overview

A structured SQL analysis of restaurant sales data, focused on uncovering ordering behavior, menu performance, and revenue patterns. The project simulates a real-world business analysis workflow using two relational tables and a series of targeted business questions.

---

## Objectives

- Audit the menu: item count, price range, category distribution, and average pricing
- Analyze order volume: total orders placed and items sold within the recorded period
- Identify performance: most and least ordered items across the menu
- Pinpoint top revenue: highest-spending orders and their contents

---

## Tools

- SQL Server
- SQL Server Management Studio (SSMS)

---

## Dataset Structure

### `menu_items`
| Column         | Description              |
|----------------|--------------------------|
| `menu_item_id` | Unique item identifier   |
| `item_name`    | Name of the menu item    |
| `category`     | Food category            |
| `price`        | Item price               |

### `order_details`
| Column             | Description                        |
|--------------------|------------------------------------|
| `order_details_id` | Unique record identifier           |
| `order_id`         | Order reference                    |
| `order_date`       | Date the order was placed          |
| `order_time`       | Time the order was placed          |
| `item_id`          | Foreign key to `menu_items`        |

---

## SQL Concepts Applied

| Category           | Concepts                                  |
|--------------------|-------------------------------------------|
| Exploration        | `SELECT`, `COUNT`, `MIN`, `MAX`           |
| Aggregation        | `COUNT()`, `SUM()`, `AVG()`, `GROUP BY`   |
| Filtering          | `WHERE`, `HAVING`                         |
| Joins              | `INNER JOIN`                              |
| Advanced           | Subqueries, `TOP`, `ORDER BY`             |

---

## Key Insights

- Identified the highest and lowest priced items on the menu
- Mapped item distribution across all food categories
- Calculated total orders and units sold across the full dataset
- Ranked menu items by order frequency to surface top and bottom performers
- Isolated the top revenue-generating orders and analyzed their item composition

---

## Planned Improvements

- Power BI dashboard for visual reporting
- Time-based trend analysis (daily, weekly, monthly)
- KPI metrics tailored for restaurant management
- Advanced SQL techniques: CTEs and Window Functions

