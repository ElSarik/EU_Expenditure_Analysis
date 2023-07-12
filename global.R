library(shiny)
library(readr)
library(data.table)
library(tidyverse)

source('server/data_processing.R')

dataset <<- fread("Data/estat_gov_10a_exp_filtered_en.csv")

cleaned_dataset <<- clean_dataset(dataset)