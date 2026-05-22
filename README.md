📊 Telecom Site Fault Monitoring & Analysis

This project analyzes telecom site faults across multiple operational zones, focusing specifically on Electricity Board (EB) systems and electrical infrastructure failures that impacted telecom site uptime and runtime continuity. The findings are visualized through an interactive Power BI dashboard to identify operational trends, SLA performance, repeat fault behavior, and zone-wise fault distribution.

---

## 📁 Dataset Summary

- **Total Records:** 4,785 rows  
- **Operational Zones:** 5  
- **Fault Categories:** 13  
- **Analysis Period:** 2019 – 2026  
- **Project Focus:** Telecom EB Fault Monitoring & Rectification Analysis  
- **Tools Used:** SQL, Excel, Power BI  

---

## 📄 Dashboard Overview

👉 **Interactive dashboard includes:**
- Zone-wise fault analysis  
- Repeat fault monitoring  
- SLA compliance tracking  
- TAT analysis  
- Seasonal fault trends  
- Rectification frequency insights  
- Vendor-supported operational tracking  

---

## 🔑 Key Operational Metrics

- **Unique Telecom Sites:** 1.94K+  
- **Total Rectifications:** 4.7K+  
- **Overall Repeat Fault Rate:** 45.02%  
- **Average TAT:** -3.26 Days  
- **SLA Compliance:** 97.81%  
- **Peak Fault Category:** Cable Faults & Rectifications  

---

## ⚡ Major Fault Categories

| Fault Category | Impact Level | Observation |
|----------------|-------------|-------------|
| Cable Faults / Rectifications | High | Most frequent fault category |
| Insulator / Jumper Faults | Medium | Second highest occurrence |
| TF Faults & Replacements | High | Major contributor to site shutdowns |

---

## 📍 Zone-wise Analysis

| Zone | Unique Sites | Total Rectifications | Key Observation |
|------|--------------|---------------------|----------------|
| LKO | 623 | 2.24K | Highest fault volume due to dense urban & 5G infrastructure |
| Banda | 457 | 1.1K | Large geographical coverage area |
| LKO-O | 481 | 763 | Rapid 5G expansion & developing outer zone |

---

## 🌦 Seasonal Fault Trends

### Peak Fault Seasons

| Period | Major Cause |
|--------|--------------|
| April – May | Equipment replacement & infrastructure upgrades |
| June – September | Monsoon rains, flooding, and weather-related electrical failures |

---

## ⏱ Turnaround Time (TAT) Analysis

Turnaround Time Formula:

```text
Approval Date - Rectification Date
```

### Average TAT

| Zone | Avg TAT (Days) |
|------|----------------|
| Overall | -3.26 |
| LKO | -3.18 |
| LKO-O | -2.36 |
| Banda | -4.79 |

### Key Observation

Negative TAT values indicate that rectification activities were operationally completed before approval closure. Banda zone recorded faster rectification activity, though approval delays were more common because of remote site accessibility and broader field coverage.

---

## 📈 SLA Performance

| SLA Status | Percentage |
|------------|------------|
| Within SLA | 97.81% |
| Slightly Delayed | 1.04% |
| Breached | 0.46% |
| Unknown / On Hold | 0.69% |

---

## 🔁 Repeat Fault Analysis

### Overall Repeat Fault Percentage
- **45.02%**

### Zone-wise Repeat Fault Percentage

| Zone | Repeat Fault % |
|------|----------------|
| LKO | 58.91% |
| Banda | 49.89% |
| LKO-O | 34.51% |
| RbRL | 33.43% |
| BCCH | Minimal Repeat Faults |

### Key Observation

BCCH recorded minimal repeat faults because the company was newly allocated to the vendor during the analysis period.

---

## 🚨 High Attention Sites

- Nine telecom sites crossed more than **20 rectifications** during the analysis period.
- These sites require:
  - Equipment replacement
  - Infrastructure upgrades
  - Preventive maintenance
  - Root-cause technical inspection

---

## 💡 Insights & Takeaways

- Cable faults are the dominant operational issue across telecom infrastructure.
- LKO zone recorded the highest operational fault load due to dense urban deployment and high 5G site concentration.
- Seasonal weather conditions significantly impact EB fault occurrence.
- Repeat fault rates highlight the need for preventive maintenance strategies and infrastructure modernization.
- Strong SLA compliance indicates effective vendor-supported rectification operations despite geographical and seasonal challenges.

---

## 📊 Dashboard Features

- KPI Cards for SLA, TAT, Repeat Fault %, and Total Rectifications  
- Zone-wise comparative analysis  
- Repeat fault tracking by site 
- Fault category distribution  
- Monthly & seasonal trend analysis  

---

## 🛠 Skills Demonstrated

- SQL Data Cleaning & Transformation  
- Power BI Dashboard Development  
- DAX Measures & KPI Calculations  
- Telecom Operations Analytics  
- SLA & TAT Performance Monitoring  
- Data Visualization & Reporting  

---

## 📅 Dashboard


<img width="1351" height="761" alt="Telecom Dashboard" src="https://raw.githubusercontent.com/Ashutoxsh/Telecom-EB-Fault-Analysis/refs/heads/main/Images/Dashboard_v001.png" />
