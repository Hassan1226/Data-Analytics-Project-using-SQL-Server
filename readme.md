# 📊 Data Analytics Project using SQL Server

A comprehensive, end-to-end data analytics project implemented using **SQL Server**. This project demonstrates database initialization, Exploratory Data Analysis (EDA), advanced business analytics, and structured customer and product report generation to derive actionable business insights.

---

## 📝 Short Description (For GitHub About Section)
> A comprehensive Data Analytics project built using SQL Server, featuring Exploratory Data Analysis (EDA), Advanced Analytics (cumulative, performance, part-to-whole, segmentation), and detailed customer/product business reports.

---

## 📁 Repository Structure

```text
├── datasets/             # Database files and datasets
├── p01_scripts/         # Part 1: Database initialization and EDA scripts
│   └── 00_init_database.sql
├── p02_script/          # Part 2: Advanced analytics SQL scripts
├── reports/             # Part 3: Customer and Product business reports
├── docs/                # Project documentation and workflow diagrams
└── README.md            # Repository documentation
```

---

## 🚀 Project Phases & Analysis Details

The project is divided into three distinct operational phases:

### 1. Exploratory Data Analysis (EDA)
*Located in `p01_scripts/` & `dataset/`*
* **Database Setup:** Run `00_init_database.sql` to build and populate the database using the dataset files in `dataset/`.
* **Data Exploration:** Column-by-column inspection across all database tables.
* **Dimensions & Constraints:** Identifying key dimension tables, primary/foreign keys, and data constraints.
* **Measures & Initial Reporting:** Summarizing core numeric metrics and key performance indicators into a introductory baseline report.
* **Magnitude Analysis:** Analyzing sales and order volume scales across categories.
* **Ranking Analysis:** Implementing window ranking functions (`RANK`, `DENSE_RANK`, `ROW_NUMBER`) to observe performance hierarchies and top performers.

### 2. Advanced Analytics
*Located in `p02_script/`*
* **Change Over Time Analysis:** Tracking sales trends, order counts, and metric movements over chronological periods.
* **Cumulative Analysis:** Utilizing running totals and moving metrics to identify business trajectory (growth vs. decline).
* **Performance Analysis:** Benchmark metrics against defined targets to evaluate category and operational success.
* **Part-to-Whole Analysis:** Measuring proportional contributions of individual dimensions toward total business outcomes.
* **Data Segmentation:** Binning data into ranges to examine correlation patterns between key operational measures.

### 3. Business Reports
*Located in `reports/`*
* **Customer Report:** Comprehensive breakdown of customer behavior, purchase frequency, and value classification.
* **Product Report:** Deep-dive analysis on product profitability, volume performance, and demand trends.

---

## 🛠️ How to Get Started

1. **Prerequisites:** 
   * Microsoft SQL Server (or SQL Server Management Studio / Azure Data Studio).
2. **Database Initialization:**
   * Clone or download this repository.
   * Navigate to `p01_scripts/` and run `00_init_database.sql` to initialize the database with data from the `dataset/` folder.
3. **Execution:**
   * Run the SQL scripts in `p01_scripts/` for exploratory analysis.
   * Run the SQL scripts in `p02_script/` for advanced analytics metrics.
   * View final business insights in the `reports/` folder.

---

## 📐 Important Diagrams

The Roadmap diagrams for individual part 01 and part 02 is given below.
<img width="633" height="499" alt="image" src="https://github.com/user-attachments/assets/75eadc5b-3f4f-4124-b0df-0a0c34fbaebb" />
<img width="626" height="497" alt="image" src="https://github.com/user-attachments/assets/113599cd-1837-4736-9316-8f0fe483a9f8" />


