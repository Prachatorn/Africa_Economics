# https://www.kaggle.com/chirin/africa-economic-banking-and-systemic-crisis-data

library("dplyr")
library("ggplot2")

# Algeria

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

algeria <- africa %>%
  filter(country == "Algeria")

# Exchange Rate

algeria_exchange_rate <- ggplot(algeria, aes(x = year, y = exch_usd)) +
  geom_line() +   
  scale_y_discrete(limits = seq(from = 0, to = 100, by = 10))

algeria_exchange_rate

# Inflation Rate

algeria_inflation <- ggplot(algeria, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = 1870, to = 2014, by = 10)) +
  ggtitle("Algeria Annual Inflation From 1870 To 2014") 

algeria_inflation <- algeria_inflation +
  geom_line(aes(x = year, y = 0))

algeria_inflation

# Angola

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

angola <- africa %>%
  filter(country == "Angola")

# Exchange Rate

angola_exchange_rate <- ggplot(angola, aes(x = year, y = exch_usd)) +
  geom_line() +   
  scale_y_discrete(limits = seq(from = 0, to = 100, by = 10))

angola_exchange_rate

# Inflation Rate

angola_inflation <- ggplot(angola, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = 1870, to = 2014, by = 10)) +
  ggtitle("Angola Annual Inflation From 1870 To 2014") 

angola_inflation <- angola_inflation +
  geom_line(aes(x = year, y = 0))

angola_inflation

# Central African Republican

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

car <- africa %>%
  filter(country == "Central African Republic")

# Exchange Rate

car_exchange_rate <- ggplot(car, aes(x = year, y = exch_usd)) +
  geom_line() +   
  scale_x_discrete(limits = seq(from = 1870, to = 2014, by = 10))

car_exchange_rate

# Inflation Rate

car_inflation <- ggplot(car, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = 1870, to = 2014, by = 10)) +
  ggtitle("Central African Republic Annual Inflation From 1870 To 2014") 

car_inflation <- car_inflation +
  geom_line(aes(x = year, y = 0))

car_inflation

# Ivory Coast

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

ivory_coast <- africa %>%
  filter(country == "Ivory Coast")

# Exchange Rate

ivory_coast__exchange_rate <- ggplot(ivory_coast, aes(x = year, y = exch_usd)) +
  geom_line() +   
  scale_x_discrete(limits = seq(from = 1870, to = 2014, by = 10))

ivory_coast_exchange_rate

# Inflation Rate

ivory_coast_inflation <- ggplot(ivory_coast, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = 1870, to = 2014, by = 10)) +
  ggtitle("Central African Republic Annual Inflation From 1870 To 2014") 

ivory_coast_inflation <- ivory_coast_inflation +
  geom_line(aes(x = year, y = 0))

ivory_coast_inflation


