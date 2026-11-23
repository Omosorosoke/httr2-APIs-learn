install.packages(c("httr2", "jsonlite"))
library(httr2)
library(jsonlite)


req <- request("https://api.open-meteo.com/v1/forecast") |>
  req_url_query(
    latitude = 6.45,
    longitude = 3.39,
    current = "temperature_2m"
  )

req
req_dry_run(req)

req_2 <- request("https://api.open-meteo.com/v1/forecast") |>
  req_url_query(
    latitude = 6.45,
    longitude = 3.39,
    hourly = "temperature_2m"
  )

req_dry_run(req_2)

resp <- resp <- req_perform(req_2)

resp

str(resp_body_json(resp), max.level = 2)


req <- request('https://httpbin.org/get') |>
  req_url_query(
    city = 'Lagos',
    tags = c("data", "r"),
    .multi = "explode"
  )
req_dry_run(req)

resp_3 <- req_perform(req)

str(resp_body_json(resp_3), max.level = 5)
