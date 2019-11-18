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
  scale_y_discrete(limits = seq(from = min(algeria$exch_usd), to = max(algeria$exch_usd), by = 10)) +
  ggtitle(paste(algeria$country, "Exchange Rates From", min(algeria$year), " To ", max(algeria$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))


png("Exchange Rates/Algeria.png")
algeria_exchange_rate
dev.off()

# Inflation Rate

algeria_inflation <- ggplot(algeria, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = min(algeria$year), to = max(algeria$year), by = 10)) +
  ggtitle(paste(algeria$country, "Annual Inflation From", min(algeria$year), "To", max(algeria$year))) + 
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Inflation Rates/Algeria.png")
algeria_inflation
dev.off()

# Angola

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

angola <- africa %>%
  filter(country == "Angola")

# Exchange Rate

angola_exchange_rate <- ggplot(angola, aes(x = year, y = exch_usd)) +
  geom_line() +
  scale_y_discrete(limits = seq(from = min(angola$exch_usd), to = max(angola$exch_usd), by = 10)) +
  ggtitle(paste(angola$country, "Exchange Rates From", min(angola$year), "To", max(angola$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Exchange Rates/Angola.png")
angola_exchange_rate
dev.off()

# Inflation Rate

angola_inflation <- ggplot(angola, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = min(angola$year), to = max(angola$year), by = 10)) +
  ggtitle(paste(angola$country, "Annual Inflation From", min(angola$year), "To", max(angola$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Inflation Rates/Angola.png")
angola_inflation
dev.off()

# Central African Republican

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

car <- africa %>%
  filter(country == "Central African Republic")

# Exchange Rate

car_exchange_rate <- ggplot(car, aes(x = year, y = exch_usd)) +
  geom_line() +   
  scale_y_discrete(limits = seq(from = min(car$exch_usd), to = max(car$exch_usd), by = 100)) +
  ggtitle(paste(car$country, "Exchange Rates From", min(car$year), "To", max(car$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Exchange Rates/Central African Republic.png")
car_exchange_rate
dev.off()

# Inflation Rate

car_inflation <- ggplot(car, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = min(car$year), to = max(car$year), by = 10)) +
  ggtitle(paste(car$country, "Annual Inflation From", min(car$year), "To", max(car$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Inflation Rates/Central African Republic.png")
car_inflation
dev.off()

# Ivory Coast

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

ivory_coast <- africa %>%
  filter(country == "Ivory Coast")

# Exchange Rate

ivory_coast_exchange_rate <- ggplot(ivory_coast, aes(x = year, y = exch_usd)) +
  geom_line() +   
  scale_y_discrete(limits = seq(from = min(ivory_coast$exch_usd), to = max(ivory_coast$exch_usd), by = 100)) +
  ggtitle(paste(ivory_coast$country, "Exchange Rates From", min(ivory_coast$year), "To", max(ivory_coast$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Exchange Rates/Ivory Coast.png")
ivory_coast_exchange_rate

# Inflation Rate

ivory_coast_inflation <- ggplot(ivory_coast, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = min(ivory_coast$year), to = max(ivory_coast$year), by = 10)) +
  ggtitle(paste(ivory_coast$country, "Annual Inflation From", min(ivory_coast$year), "To", max(ivory_coast$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Inflation Rates/Ivory Coast.png")
ivory_coast_inflation
dev.off()

# Egypt

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

egypt <- africa %>%
  filter(country == "Egypt")

# Exchange Rate

egypt_exchange_rate <- ggplot(egypt, aes(x = year, y = exch_usd)) +
  geom_line() +   
  scale_y_discrete(limits = seq(from = min(egypt$exch_usd), to = max(egypt$exch_usd), by = 0.5)) +
  ggtitle(paste(egypt$country, "Exchange Rates From", min(egypt$year), "To", max(egypt$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Exchange Rates/Egypt.png")
egypt_exchange_rate
dev.off()

# Inflation Rate

egypt_inflation <- ggplot(egypt, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = min(egypt$year), to = max(egypt$year), by = 10)) +
  ggtitle(paste(egypt$country, "Annual Inflation From", min(egypt$year), "To", max(egypt$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Inflation Rates/Egypt.png")
egypt_inflation
dev.off()

# Kenya

rm(list=ls())
africa <- read.csv("africa-economic-banking-and-systemic-crisis-data/african_crises.csv")

kenya <- africa %>%
  filter(country == "Kenya")

# Exchange Rate

kenya_exchange_rate <- ggplot(kenya, aes(x = year, y = exch_usd)) +
  geom_line() +
  scale_y_discrete(limits = seq(from = min(kenya$exch_usd), to = max(kenya$exch_usd), by = 0.5)) +
  ggtitle(paste(kenya$country, "Exchange Rates From", min(kenya$year), "To", max(kenya$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Exchange Rates/Kenya.png")
kenya_exchange_rate
dev.off()

# Inflation Rate

kenya_inflation <- ggplot(kenya, aes(x = year, y = inflation_annual_cpi)) +
  geom_line() +
  scale_x_discrete(limits = seq(from = min(kenya$year), to = max(kenya$year), by = 10)) +
  ggtitle(paste(kenya$country, "Annual Inflation From", min(kenya$year), "To", max(kenya$year))) +
  theme(plot.title = element_text(hjust = 0.5)) +
  geom_line(aes(x = year, y = 0))

png("Inflation Rates/Kenya.png")
kenya_inflation
dev.off()


