# 📊 HR Analytics Dashboard

## 🎯 Project Overview
A complete HR analytics solution from raw database to interactive Power BI dashboard. This project extracts, transforms, and analyzes employee data to provide actionable insights for HR decision-making.

## 📁 Project Structure
HR-Analytics-Dashboard/
├── data/
│ ├── raw/ # Original SQL database files
│ ├── processed/ # Cleaned datasets
│ └── HR_Analysis.sql # Database schema
├── notebooks/
│ └── HR_analysis.ipynb # Python ETL pipeline
├── sql/
│ └── HR_mysql.sql # Database scripts
├── config/
│ └── .env.example # Environment template
└── README.md # This file

text

## 📊 Dashboard Features

### 🏠 **Home Page - Executive Summary**
- **Total Headcount**: 8,950 employees
- **Active Employees**: 7,984
- **Attrition Rate**: 10.79%
- **Average Tenure**: 6.36 years
- **Performance Distribution** (Good, Satisfactory, Needs Improvement)

### 💰 **Salary Overview Page**
- **Average Salary**: 70,964K
- **Total Salary Budget**: 635M
- **Department-wise Salary Analysis**
- **Gender Pay Analysis** (Male: 255K, Female: $311K)
- **Top Earning Job Titles**
- **Geographic Distribution** (8 states, multiple cities)

### 👥 **Jobs Overview Page**
- **Department Headcount Distribution**
- **Performance Analysis** (1,123 employees need improvement)
- **Education Level Breakdown**
- **Year-wise Hiring Trends**
- **Managerial Roles Analysis**

## 🛠️ Implementation Steps

### **Phase 1: Database Setup**
1. **MySQL Database Creation**
   ```sql
   CREATE DATABASE HR_Analysis;
   USE HR_Analysis;
Table Design: Employees, Departments, Performance, Salaries, etc.

Data Import: Load raw HR data from CSV files

Phase 2: Python ETL Pipeline
python
# Key steps in the Jupyter notebook
1. Database Connection & Data Extraction
2. Data Cleaning & Validation
3. Missing Value Treatment
4. Feature Engineering:
   - Tenure Calculation
   - Attrition Flag
   - Performance Categories
   - Salary Bands
5. Data Quality Checks
6. Export to CSV for Power BI
Phase 3: Power BI Development
Data Model Design

Star schema implementation

Date table creation

Relationship management

DAX Measures Created

🔧 Technology Stack

Database: MySQL 8.0+

ETL: Python 3.9+, Pandas, NumPy, mysql-connector

Visualization: Power BI Desktop, DAX

Version Control: Git, GitHub

📈 Key Insights & Business Impact
HR Metrics Tracked
Workforce Analytics

Employee distribution across 7 departments

8-state geographic presence

Education level diversity

Performance Management

1,123 employees identified for improvement plans

Performance rating distribution analysis

Department-wise performance trends

Compensation Analysis

IT department leads in average salary (81.93K)

10% gender pay variance analysis

Yearly salary progression trends

Retention Insights

10.79% attrition rate

Average tenure of 6.36 years

Historical hiring patterns (2015-2024)
