# Analyze weight-MPG correlation in mtcars

This is an analysis of the correlation between the weight of the car and the miles per gallon (mpg) of the car, using the `mtcars` dataset (see `data/mtcars`). The analysis is performed using two approaches:

1. Using an R script (`analyze_mtcars.R`).
    - For this approach, the results are saved in a figure provided in this folder, `mtcars_correlation.png`.
    - The *advantage* of this approach is that it can be slightly quicker to write an R script. The *disadvantage* is that it is not as reproducible as the next approach because it doesn't combine the code, description, and the results in a single document.
2. Using an R Markdown document (`analyze_mtcars.Rmd`) (**preferred**).
    - For this approach, the R Markdown document is converted to an HTML document to enable viewing and sharing. The HTML file contains the results of the analysis, including the scatterplot and the correlation coefficient. **You can view the complete HTML report [here](https://rpubs.com/hmiller/mtcars-example)**.
    - The *advantage* of using an R Markdown document is that it is easy to share and view the results, code, and description of an analysis in one HTML report which can be viewed in the web browser.
