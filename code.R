getwd()
path <-system.file("extdata", package="dslabs")
list.files(path)
filename <- "murders.csv"
fullpath <- file.path(path, filename)
fullpath
file.copy(fullpath, getwd())
file.exists(filename)

library(tidyverse)
read_lines("murders.csv", n_max = 3)
dat <- read_csv(fullpath)
class(dat)


filename <- "murders.csv"
dat2 <- read.csv(filename)
class(dat2)

# read.csv converts strings to factors
class(dat2$abb)
class(dat2$region)

dat3 <- read.csv(filename, stringsAsFactors = FALSE)
class(dat3$abb)


## From lesson plan
library(dslabs)
library(tidyverse)    # includes readr
library(readxl)
# inspect the first 3 lines
read_lines("murders.csv", n_max = 3)
# read file in CSV format
dat <- read_csv(filename)
#read using full path
dat <- read_csv(fullpath)
head(dat)
#Ex：
path <- system.file("extdata", package = "dslabs")
files <- list.files(path)
files
filename <- "murders.csv"
filename1 <- "life-expectancy-and-fertility-two-countries-example.csv"
filename2 <- "fertility-two-countries-example.csv"
dat=read.csv(file.path(path, filename))
dat1=read.csv(file.path(path, filename1))
dat2=read.csv(file.path(path, filename2))


