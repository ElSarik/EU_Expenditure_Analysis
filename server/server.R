source('server/data_processing.R')

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  dataset <<- fread("Data/estat_gov_10a_exp_filtered_en.csv")
  

  cleaned_dataset <<- clean_dataset(dataset)
    
}

