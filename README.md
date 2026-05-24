# SQL & Business Intelligence Portfolio

End-to-end data analytics projects focused on real business problems —
shipping performance, customer behavior, and operational efficiency.
Built with advanced SQL, and visualized in Power BI.

**Mohamed Salah** · [GitHub](https://github.com/MSalah-Data) · [LinkedIn](https://www.linkedin.com/in/mohamed-salah-abd-elbasset) · [Email](mailto:m.salah.abdelbasset@gmail.com)

---

## Projects

### 🛒 Olist E-Commerce: Shipping Performance & Customer Satisfaction
Analyzed 100,000+ orders from Brazil's largest e-commerce platform to quantify
how delivery delays erode customer satisfaction and retention.

**Key questions answered:**
- At what delay threshold does customer satisfaction collapse?
- Which shipping routes and sellers drive the most negative reviews?
- How do regional logistics differences affect overall NPS?

**Key findings:**
- Identified a **"Danger Zone" delay threshold** — the exact point where review
  scores drop sharply, giving operations teams a measurable target to defend
- Isolated **189-day shipping outliers** distorting aggregate performance metrics
- Linked specific seller clusters to disproportionate late delivery rates

**Technical highlights:**
- Migrated from MySQL to SQLite mid-project to handle large CSVs on local hardware —
  then rebuilt the schema for production-level query performance
- Used Window Functions (`DENSE_RANK`, `PARTITION BY`) to rank seller performance
  across regions
- CTEs to isolate delivery cohorts and track review score degradation over time

**Stack:** SQL (SQLite) · Power BI · DAX · Power Query



---

*More projects in progress — inventory analysis and sales performance pipeline coming soon.*

---

## SQL Concepts Demonstrated

| Concept | Used In |
|---|---|
| Multi-table JOINs & schema design | All projects |
| Window functions (`DENSE_RANK`, `ROW_NUMBER`, `PARTITION BY`) | Olist — seller ranking |
| CTEs & subqueries | Olist — cohort analysis |
| Date/time manipulation | Olist — delay calculation |
| Outlier detection & data cleaning | Olist — 189-day shipping anomalies |
| SQLite optimization for large datasets | Olist — infrastructure migration |

---

## Stack

![SQL](https://img.shields.io/badge/SQL-CC2927?style=flat-square&logo=postgresql&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-003B57?style=flat-square&logo=sqlite&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Excel](https://img.shields.io/badge/Excel-217346?style=flat-square&logo=microsoftexcel&logoColor=white)

---

## Connect

- 💼 [LinkedIn](https://www.linkedin.com/in/mohamed-salah-abd-elbasset)
- 📧 [m.salah.abdelbasset@gmail.com](mailto:m.salah.abdelbasset@gmail.com)
