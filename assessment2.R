library(tidyverse)
url <- "http://mlr.cs.umass.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data"
read_lines(url, n_max = 3)

tmp_filename <- tempfile()
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename, col_names = FALSE)
file.remove(tmp_filename)

summarize(dat)
nrow(dat)
ncol(dat)

url <- "ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_annmean_mlo.txt"
tmp_filename <- "co2_mauna_loa"
download.file(url, tmp_filename)
dat <- read_table(tmp_filename, col_names = FALSE, skip = 56)
file.remove(tmp_filename)

head(dat, n = 70)
nrow(dat)

class(tmp_filename)