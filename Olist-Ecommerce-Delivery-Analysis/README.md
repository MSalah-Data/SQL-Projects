# Olist E-Commerce: Logistics & Customer Retention Analytics

**Tools:** Power BI · SQL · DAX · Star Schema Data Modeling  
**Domain:** E-Commerce · Supply Chain · Customer Analytics  
**Dataset:** 100K+ real orders from Olist, Brazil's largest marketplace

> **The business question this project answers:**  
> *Where exactly are logistics failures destroying customer ratings — and what's the smartest fix?*

---

## 📊 Dashboard Previews

### Executive Overview
![Executive Dashboard](Visualization/Screenshots/Screenshot%202026-05-25%20193943.png)

### Geographic Shipping Performance
![Map View](Visualization/Screenshots/Screenshot%202026-05-25%20194042.png)

### Data Model (Star Schema)
![Data Model](Visualization/Screenshots/Screenshot%202026-05-25%20194118.png)

---

## 🔍 What I Built

An end-to-end analytics solution — from raw relational data to a boardroom-ready executive dashboard — tracking 5 core KPIs across 3 analytical views.

| KPI | Value |
|---|---|
| Total Revenue | $13.59M |
| Total Orders | 99K |
| Average Order Value | $137.75 |
| Avg. Shipping Delay | 8.87 Days |
| Avg. Customer Rating | 4.09 / 5 |

---

## 💡 Key Business Insights

### 1. The Cancellation Cliff
Customers tolerate delays of 1–4 weeks with ratings staying above **4.0/5**. But when an order hits cancellation, ratings collapse to **1.8/5** — a near-total loss of customer trust.

**Actionable conclusion:** Don't chase marginal delay improvements. Eliminate cancellations. That's where retention actually dies.

### 2. Logistics Problems Are Localized, Not Systemic
High-revenue states like São Paulo (SP) and Rio de Janeiro (RJ) maintain healthy delivery windows. Delay concentrations are isolated to specific northern remote regions.

**Actionable conclusion:** The fix isn't a company-wide overhaul — it's renegotiating or replacing specific 3PL carriers in 3–4 underperforming states.

### 3. Revenue at Risk by Category
`Health & Beauty` ($1.26M) and `Watches & Gifts` ($1.21M) are the top revenue drivers and the most vulnerable to shipping failures.

**Actionable conclusion:** Premium shipping lanes should be allocated to these categories first — protecting the majority of revenue with minimal operational change.

---

## 🏗️ Technical Architecture

```
Raw CSV Files (8 tables)
        ↓
  Data Cleaning & Modeling (SQL)
        ↓
  Star Schema (Fact + Dimension tables)
        ↓
  Power BI (DAX Measures + Interactive Dashboard)
        ↓
  Executive-Ready Reports (3 views)
```

**Why Star Schema?** Optimized for fast aggregation queries in Power BI, clean separation of facts from dimensions, and scalable for future data additions.


---

## 🧠 Skills Demonstrated

- Translating a raw dataset into a business-first analytical narrative
- Building a production-grade star schema from scratch
- Writing DAX measures for time-intelligence and conditional KPIs
- Designing executive dashboards with drill-through and filter capabilities
- Identifying high-impact, low-cost business recommendations from data

---

## 👤 About


📎 [LinkedIn](https://www.linkedin.com/in/mohamed-salah-abd-elbasset) ·  [Other Projects](https://github.com/MSalah-Data)
