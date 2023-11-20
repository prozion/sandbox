#!/usr/bin/env Rscript

library(dplyr)
library(lubridate)
library(nycflights13)

## 1
# nycflights13::flights |>
#   filter(
#     # arr_delay > 120,
#     # dest %in% c("IAH", "HOU"),
#     # carrier %in% c("DL", "AA", "UA"),
#     # month %in% c(7, 8, 9),
#     # arr_delay > 120 & dep_delay <= 0
#     dep_delay >= 60, air_time > 30) |>
#   print(width = Inf)

# nycflights13::flights |>
#   arrange(desc(dep_delay))

## 2 The klongest departure delays
# nycflights13::flights |>
#   arrange(dep_time, desc(dep_delay)) |>
#   select(year, month, day, dep_time, dep_delay, flight) |>
#   print(n = 20)

## 3 The fastest
# flights |>
#   arrange(desc(distance / air_time)) |>
#   select(flight, year, month, day, air_time, distance)

## 4 All the days in 2013?
days <- flights |>
  mutate(nday = yday(as.Date(sprintf("%s-%s-%s", day, month, year), format = "%d-%m-%y"))) |>
  distinct(nday)

print(count(days) == 365)

## 5 Which flights traveled the farthest distance? Which traveled the least distance?
# res <- flights |>
#   arrange(desc(distance)) |>
#   select(flight, origin, dest, distance) |>
#   distinct(distance, .keep_all = T)
#
# print(head(res))
# print(tail(res))
