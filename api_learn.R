install.packages(c("httr2", "jsonlite"))
library(httr2)
library(jsonlite)


req <- request("https://api.open-meteo.com/v1/forecast") |>
  req_url_query(
    latitude = 6.45,
    longitude = 3.39,
    current = "temperature_2m"
  )
