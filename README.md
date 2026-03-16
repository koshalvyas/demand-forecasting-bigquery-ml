# 📈 Demand Forecasting with BigQuery ML (ARIMA_PLUS)

![Google Cloud](https://img.shields.io/badge/Google_Cloud-BigQuery_ML-blue?logo=googlecloud)
![Model](https://img.shields.io/badge/Model-ARIMA__PLUS-orange)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

## 🔍 Project Overview
Built a multi-item **demand forecasting** solution using **Google BigQuery ML** on the 
NYC Citi Bike Trips public dataset. Trained an **ARIMA_PLUS** time series model to predict 
bike trip demand across multiple stations for the next **30 days**.

---

## 🛠️ Tech Stack
| Tool | Purpose |
|------|---------|
| Google BigQuery | Data warehouse & SQL execution |
| BigQuery ML (BQML) | In-database ML model training |
| ARIMA_PLUS | Time series forecasting algorithm |
| NYC Citi Bike Dataset | Public training data |
| SQL (ML.FORECAST, ML.EVALUATE) | Model evaluation & prediction |

---

## 📊 Key Steps
1. **Data Preparation** — Queried and cleaned the `bigquery-public-data.new_york.citibike_trips` dataset
2. **Model Training** — Created an ARIMA_PLUS model with `time_series_id_col` for multi-station forecasting
3. **Evaluation** — Used `ML.EVALUATE` to assess AIC score and model fit
4. **Forecasting** — Generated 30-day predictions using `ML.FORECAST` with confidence intervals

---

## 💻 Sample Query
```sql
CREATE OR REPLACE MODEL `project.dataset.citibike_forecast`
OPTIONS(
  model_type = 'ARIMA_PLUS',
  time_series_timestamp_col = 'date',
  time_series_data_col = 'num_trips',
  time_series_id_col = 'start_station_name',
  horizon = 30,
  auto_arima = TRUE
) AS
SELECT date, start_station_name, COUNT(*) AS num_trips
FROM `bigquery-public-data.new_york.citibike_trips`
GROUP BY 1, 2;
```

---

## 📁 Results
![Forecast Output](screenshots/forecast_output.png)

---

## 🏅 Certificate
Completed via **Google Cloud Skills Boost** — [View Course](https://www.cloudskillsboost.google/focuses/16547?parent=catalog)

---

## 🔗 Connect
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com/in/YOUR-PROFILE)
