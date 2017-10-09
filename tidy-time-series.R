# Tidy time series analysis
# source: http://www.business-science.io/timeseries-analysis/2017/07/02/tidy-timeseries-analysis.html


## part 1

install.packages("rJava") # may need: 1. sudo apt-get install default-jre
                          #           2. sudo apt-get install default-jdk
                          #           3. sudo R CMD javareconf
install.packages("XLConnectJars") # does not work, leads to segmentation fault!!!
install.packages("tidyquant")
library(tidyquant)  # Loads tidyverse, tidquant, financial pkgs, xts/zoo
library(cranlogs)   # For inspecting package downloads over time

pkgs <- c(
  "tidyr", "lubridate", "dplyr", 
  "broom", "tidyquant", "ggplot2", "purrr", 
  "stringr", "knitr"
)