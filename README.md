# Data Analysis Template for R

[![Use with R v4.2.1](https://img.shields.io/badge/Use%20with-R%20v4.2.1-blue.svg)](https://cloud.r-project.org/)

This is a template for R-based data analyses. It includes tools to help you kick-start your analysis while ensuring it is well-documented and reproducible. Click the green **"Use this template"** button to get started!

<!-- Include a table of contents for the md file -->

## Quickstart

1. Click the "Use this template" button to create a new repo from this template.
2. Clone the new repo to your computer.
3. Open the R project file `Analysis-in-R.Rproj` in RStudio.
4. Install the required packages by running `renv::restore()`.
5. Test that your setup is working by running `source("analyses/analyze_mtcars/analyze_mtcars.R")`.
6. Continue with your analysis like you would normally do in RStudio, following the [guidelines](#guidelines) below.

## Guidelines

### Analyses

Each analysis should be in its own subfolder in the `analyses` folder. The subfolder should contain a `README.md` file that describes the analysis and the results. This way, the analysis is self-contained, reproducible, and easy to share.

The example provided in this template is an analysis of the `mtcars` data set. The purpose is to find the correlation between the weight of the car and the miles per gallon (mpg) of the car. View these code and results here: `analyses/analyze_mtcars/`.

### Data

Generally, all data needed by the analyses in `analyses/` should be stored, processed, and analyzed in the `data/` directory. Each dataset should be processed and included in its own subfolder. The subfolder should contain a `README.md` file that describes the data and the processing steps. Processed data that is small (< 50MB) can be included in the repository. Larger data files should be stored in a separate repository and linked to in the scripts that process the data. 

The example provided in this template is the `mtcars` data set. The data is available in the `tibble` in `mtcars.rds`. View the code and results for processing this data here: `data/mtcars/`.

### Dependencies

This template uses the [renv package](https://rstudio.github.io/renv/articles/renv.html) to manage dependencies. This means that you can install the required packages by running `renv::restore()` in the R console. This will install the packages in a local library, and will ensure that the same versions of the packages are used by everyone working on the project. This is important to ensure reproducibility.

If you want to add a new package to the project, you can install it using `renv::install()` and then run `renv::snapshot()` to save the new package to the `renv.lock` file. This will ensure that the new package is installed when someone else clones the repo and runs `renv::restore()`.

**Note: renv expects R 4.2.1. Please ensure you are using this version of R with this template**. While the packages renv installs will *probably* still work with any R version > 4.0.0, it's best not to tempt fate.

## Getting help

If you find a bug or get confused, please don't hesitate to contact the template maintainer (Henry Miller, SDI) on the Altos Slack!

## Learning resources

If you feel uncomfortable or lost, check out some of these fantastic learning resources!

For a tutorial on how to use **git and GitHub**, check out these resources:

1. Written tutorials: [GitHub official tutorial](https://docs.github.com/en/get-started/quickstart), [freecodecamp.org](https://www.freecodecamp.org/news/git-and-github-for-beginners/), [analyticsvidhya](https://www.analyticsvidhya.com/blog/2021/09/git-and-github-tutorial-for-beginners/)
2. YouTube tutorials: [Tech with Tim](https://www.youtube.com/watch?v=DVRQoVRzMIY), [freecodecamp.org](https://www.youtube.com/watch?v=RGOj5yH7evk), [Amigoscode](https://www.youtube.com/watch?v=3fUbBnN_H2c)

For basic **R programming**, check out these resources:

1. Written tutorials: [Introduction to R (book)](https://intro2r.com/), [Hands-On Programming with R (book)](https://rstudio-education.github.io/hopr/), [W3 schools](https://www.w3schools.com/r/)
2. YouTube tutorials: [Simplilearn](https://www.youtube.com/watch?v=7NLPPFU0O3w), [Algovibes](https://www.youtube.com/watch?v=fpl_ny-jX5Y), [BIG Bioinformatics](https://www.bigbioinformatics.org/r-for-premat)
3. MOOCs: [EdX](https://www.edx.org/course/data-science-r-basics), [Coursera](https://www.coursera.org/learn/r-programming)
4. Online learning platforms: [DataCamp](https://www.datacamp.com/courses/free-introduction-to-r), [dataquest](https://app.dataquest.io/c/90/m/499/introduction-to-programming-in-r), [codecademy](https://www.codecademy.com/learn/learn-r)

For basic **R for data science** and **RMarkdown**, check out these resources:

1. Written tutorials: [R for Data Science (book)](https://r4ds.had.co.nz/), [ggplot2 (book)](https://ggplot2-book.org/), [RMarkdown cookbook (book)](https://bookdown.org/yihui/rmarkdown-cookbook/), [R Markdown: the definitive guide (book)](https://bookdown.org/yihui/rmarkdown/)
2. YouTube tutorials: [Simplilearn](https://www.youtube.com/watch?v=zWX5KjhzM-A), [R for ecology - RMarkdown tutorial](https://www.youtube.com/watch?v=K418swtFnik), [BIG Bioinformatics](https://www.bigbioinformatics.org/r-for-premat).
3. MOOCs: [EdX](https://www.edx.org/course/data-science-r-basics)
4. [DataCamp](https://www.datacamp.com/tracks/tidyverse-fundamentals), [dataquest](https://www.dataquest.io/course/r-data-viz/)

