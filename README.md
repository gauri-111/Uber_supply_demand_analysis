# 🚕 Uber Ride Request Data Analysis

This project explores Uber ride request data to identify patterns behind successful and failed trips, such as cancellations and "No Cars Available" issues. The analysis helps uncover operational gaps during peak hours and offers recommendations for improving ride completion rates and customer experience.

---

## 🧑‍💻 What I Did

✅ Cleaned the raw dataset in **Excel**  
✅ Built an interactive **Excel dashboard** using pivot tables and charts  
✅ Used **SQL** to write queries and extract key operational insights  
✅ Performed in-depth **Exploratory Data Analysis (EDA)** using **Pandas**, **Seaborn**, and **Matplotlib** in **Python**

---

## 🧰 Tools & Technologies Used

- **Excel**: Data cleaning, pivot tables, charts, dashboard creation
- **MySQL**: Data exploration using SQL queries
- **Python**: `pandas`, `seaborn`, `matplotlib` for visualization and pattern discovery
- **Jupyter Notebook**: For organizing the full EDA process

---

## 📊 Key Features

- Cleaned and transformed timestamps into `Hours`, `Day_of_Week`, and `Duration`
- Visualized:
  - Trip status distribution
  - Trip duration patterns
  - Driver assignment impact
  - Pickup point analysis
  - Daily and hourly ride demand
- Generated charts to compare trends by `Status`, `Pickup Point`, and `Driver Assigned`

---

## 🔍 Insights Found

- **Peak hours** (7–9 AM & 5–8 PM) had the highest failure rates due to **driver shortages**
- **Airport pickups** faced more "No Cars Available" problems than city pickups
- **Driver assignment** was the most important factor for trip completion
- **Duration** followed a predictable pattern for completed trips (mostly 25–75 minutes)

---

## 📈 Business Recommendations

- Incentivize driver availability during peak hours
- Improve allocation logic for airport pickup zones
- Enhance driver assignment systems for faster response
- Use historical demand data to forecast and pre-deploy drivers

---

## 🗂️ Project Structure

```bash
Uber_Ride_Analysis/
├── Uber Request Data.xlsm         # Cleaned Excel dataset + Dashboard
├── EDA_Uber_Ride_Analysis.ipynb   # Python notebook with all EDA charts & insights
├── uber.sql                       # SQL queries used for analysis
├── Uber_EDA_Insights_Report.pdf   # Final summary report with visuals & recommendations
└── README.md                      # Project overview (this file)
