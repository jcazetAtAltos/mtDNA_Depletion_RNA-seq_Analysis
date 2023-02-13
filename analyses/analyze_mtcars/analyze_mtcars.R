### Script to analyze the mtcars dataset ###
### Goals: ###
# 1. Load the mtcars dataset
# 2. Find the correlation between mpg and wt
# 3. Create a scatterplot of mpg vs wt and include a trendline and the correlation coefficient

# Load the tidyverse library
library(tidyverse)

# Load the mtcars dataset
mtcars <- readRDS("data/mtcars/mtcars.rds")

# Find the correlation between mpg and wt
corr <- cor(mtcars$mpg, mtcars$wt)

# Create a scatterplot of mpg vs wt and include a trendline and the correlation coefficient
plt <- ggplot(mtcars, aes(x = wt, y = mpg)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE) +
    geom_text(x = 5, y = 20, label = paste("r = ", round(corr, 2))) +
    labs(
        title = "Scatterplot of mpg vs wt",
        x = "Weight (1000 lbs)",
        y = "Miles per gallon"
    )

# Save the plot
ggsave("analyses/analyze_mtcars/mtcars_scatterplot.png", plt, width = 10, height = 10)
