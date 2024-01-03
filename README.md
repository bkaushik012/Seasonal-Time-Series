# Seasonal Time Series Analysis - Readme

## Executive Summary

### Problem:
In this project, we focus on analyzing seasonal time series data related to the price of apples in Moscow, Russia. The goal is to develop a theoretical model, fit the data, simulate the fitted model, and forecast future values.

### Plan:
1. Check for seasonality in the model.
2. Visualize the dataset to determine if the model is deterministic or stochastic.
3. Seasonality Analysis:
   - If the model is deterministic, examine yearly trends in apple prices.
   - If the model is stochastic, utilize the multiplicative seasonal ARMA model.
4. Use the model to predict apple prices in Moscow for the next 2 years.

## Key Findings

- Time series and ACF plots suggest non-stationarity; however, May consistently shows maximum sales.
- Differencing the data results in stationarity.
- After model comparison, ARIMA(1,1,3) is chosen as the best-fitted model.
- Residual analysis indicates a good fit with normally distributed residuals.
- Forecasting using ARIMA(1,1,3) predicts apple prices in Moscow for the next 24 months.

## Data Description

The dataset contains monthly apple prices in Moscow from January 2013 to March 2020. The goal is to focus on Moscow's apple prices and find a well-fitted model for predictions.

## Goal

The primary goal is to find the best-fitted model for the dataset and use it for future price predictions in Moscow.

## Stationarity

- Time series plot shows a seasonal trend around May each year.
- ACF plot indicates non-stationarity.
- ADF test confirms non-stationarity, necessitating differencing.

## Differencing

- First-order differencing achieves stationarity.
- ACF and PACF plots suggest an ARIMA(1,1,3) model.

## Model Comparison

- ARIMA(1,1,3) is selected based on the lowest AIC among compared models.

### Check Residuals

- Residual histogram and Q-Q plot suggest nearly normal distribution.
- ACF plot of residuals shows a significant spike at lag 15, considered acceptable.

## Estimation

- ARIMA(1,1,3) is used to predict apple prices in Moscow for the next 24 months.
- Prediction includes a graphical representation and a 95% confidence interval.

## Conclusion

After thorough analysis, the ARIMA(1,1,3) model is chosen as the best-fitted model for predicting apple prices in Moscow. The forecast for the next 24 months seems reliable, provided no significant events occur.

## Appendix

The appendix includes additional details such as stationary and differencing plots, various ARIMA models, and residual analysis.

## Citations

- [GeeksforGeeks - Augmented Dickey-Fuller Test in R](https://www.geeksforgeeks.org/how-to-perform-an-augmented-dickey-fuller-test-in-r/)
- [The Moscow Times - Weak Ruble Sees Fruit Prices Soar in Russia](https://www.themoscowtimes.com/2015/10/14/weak-ruble-sees-fruit-prices-soar-in-russia-a50252)

## Kaggle Dataset Source

- [Apple Prices in Russian Regions](https://www.kaggle.com/datasets/kapatsa/apple-prices-in-russian-regions?select=apples_ts.csv)


