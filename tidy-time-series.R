# Tidy time series analysis
# source: http://www.business-science.io/timeseries-analysis/2017/07/02/tidy-timeseries-analysis.html


## part 1

install.packages("rJava") # may need: 1. sudo apt-get install default-jre
                          #           2. sudo apt-get install default-jdk
                          #           3. sudo R CMD javareconf
install.packages("XLConnectJars") # does not work, leads to segmentation fault!!!
#install.packages("tidyquant")
install.packages("cranlogs")
library(cranlogs)   # For inspecting package downloads over time
#library(tidyquant)  # Loads tidyverse, tidquant, financial pkgs, xts/zoo
# install and load needed packages separately
install.packages("xts")
install.packages("zoo")
install.packages("TTR")
library(tidyverse)
library(xts)
library(zoo)
library(TTR)

# Various tidyverse packages corresponding to my stickers :)
pkgs <- c(
  "tidyr", "lubridate", "dplyr", 
  "broom", "tidyquant", "ggplot2", "purrr", 
  "stringr", "knitr"
)

tidyverse_downloads <- cran_downloads(
  packages = pkgs, 
  from     = "2017-01-01", 
  to       = "2017-09-30") %>%
  tibble::as_tibble() %>%
  group_by(package)

tidyverse_downloads

tidyverse_downloads %>%
  ggplot(aes(x = date, y = count, color = package)) +
  geom_point() +
  labs(title = "tidyverse packages: Daily downloads", x = "") +
  facet_wrap(~ package, ncol = 3, scale = "free_y") +
  #scale_color_tq() +
  #theme_tq() +
  theme(legend.position="none")

# "apply" functions from xts
tq_transmute_fun_options()$xts %>%
  stringr::str_subset("^apply")
