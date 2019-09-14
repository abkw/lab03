value_one <- c(500,250,890,350,85060,78,65,4,23,456,78923,9562,31616,8456,8484,865262,5484526,84626,561846,651616)
value_two <- c(999,63,66,879,656,57,3626,59565,6595,894,65198,265,618,65146,65165,656,6516,985,98585,655)
length(value_one)
length(value_two)
random_values <- data.frame(value_one,value_two)
names(random_values) <- c("Value_One", "Value_Two" )

write.csv(random_values, "data-raw/random_values.csv", row.names = F)
usethis::use_data(random_values, overwrite = TRUE)
