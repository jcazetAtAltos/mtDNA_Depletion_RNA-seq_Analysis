### Script for getting mtcars dataset and saving it locally ###

# Load the readr library
library(tidyverse)

# Read in the mtcars dataset from the internet
mtcars <- read_csv(
    paste0(
        "https://raw.githubusercontent.com/vincentarelbundock",
        "/Rdatasets/master/csv/datasets/mtcars.csv"
    )
)

# Change the name of the first column to "model"
mtcars <- rename(mtcars, model = `...1`)

# Save to file
saveRDS(mtcars, "data/mtcars/mtcars.rds")
