sample_graphs <- data.frame()
for (i in 1:10) {
  data_vect <- floor(runif(18, min = 1, max = 100))
  for (j in 1:18) {
    sample_graphs[j,i] = data_vect[j]
  }
  # To generate integers WITH replacement: sample(1:100, 18, replace = TRUE)
}
write.csv(sample_graphs, "data-raw/sample_graphs.csv", row.names = F)
usethis::use_data(sample_graphs, overwrite = TRUE)
