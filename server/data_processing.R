# Cleaner function
clean_dataset <- function(dataset)
{
  clean_dataset <- dataset %>%
    separate(col = geo,
             into = c('Country_Code', 'Country_Name'), sep = ':') %>%
    separate(col = cofog99,
             into = c('COFOG_Code', 'COFOG_Description'), sep = ':')

  cofog_data <<- clean_dataset %>%
    select('COFOG_Code', 'COFOG_Description') %>%
    distinct(COFOG_Code, .keep_all = TRUE)
  
  return (clean_dataset)
}