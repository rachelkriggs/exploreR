# exploreR

[![Travis build status](https://travis-ci.org/UBC-MDS/exploreR.svg?branch=master)](https://travis-ci.org/UBC-MDS/exploreR)

[![Coverage status](https://codecov.io/gh/UBC-MDS/exploreR/branch/master/graph/badge.svg)](https://codecov.io/github/UBC-MDS/exploreR?branch=master)

[![Build Status](https://travis-ci.org/UBC-MDS/exploreR.svg?branch=master)](https://travis-ci.org/UBC-MDS/exploreR)


### A Collaborative Software Development Project

February 2019

### Overview

exploreR is an R package loaded with methods to help explore and explain the contents of a dataframe.

### Installation

To install exploreR, follow these instructions:

1. Input the following into the console:

  `devtools::install_github("UBC-MDS/exploreR", build_opts = c("--no-resave-data", "--no-manual"))`

2. The package is now installed and ready for use.


### Functions and Example Usage

Load the package.

```
library(exploreR)
```

#### Function 1 | Variable summary
The function `variable_summary` will take a data frame as input and provide the total quantity of each type of variable present in the data frame. The output of the function will be a dataframe of size 5 x 2 and will have one row for each variable type with its corresponding quantity. The function will look to identify 5 different types of variables: numerical, character, boolean, date, and an other category.

example usage of `variable_summary`:

```
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = c(1, 4, 6, NA),
                       "booleans" = c(NA, FALSE, NA, TRUE),
                       "dates" = as.Date(c("2003-01-02", "2002-02-02", "2004-03-03", "2005-04-04")),
                       "integers" = c(2L, 3L, 4L, 5L),
                       stringsAsFactors = FALSE)

variable_summary(toy_data)
```

example output of `variable_summary`:

| variable_type | count |
| ------------- | ----- |
| numeric       | 1     |
| character     | 1     |
| boolean       | 1     |
| date          | 1     |
| other         | 1     |

#### Function 2 | Missing values per variable
For each column/variable in the dataframe, this function will count the number of missing values present and report back on that number per column. The function `missing_values` will accept a dataframe as input and output a corresponding dataframe with the above information detailing the counts of missing values per column/variable. If the input is of size n x d, the output size will be d x 3.

example usage of `missing_values`:

```
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = c(1, 4, 6, NA),
                       "booleans" = c(NA, FALSE, NA, TRUE),
                       "dates" = as.Date(c("2003-01-02", "2002-02-02", "2004-03-03", "2005-04-04")),
                       "integers" = c(2L, 3L, 4L, 5L),
                       stringsAsFactors = FALSE)

missing_values(toy_data)
```

example output of `missing_values`:

| variable      | missing_values | percent_missing |
| ------------- | ----- | ------ |
| letters       | 1     | 0.25   |
| numbers       | 1     | 0.25   |
| booleans      | 2     | 0.50   |
| dates         | 0     | 0.00   |
| integers      | 0     | 0.00   |

#### Function3 | Dataset Size/Info
The function `size` will take in a dataframe and print the shape and size of the dataframe. For the size, the function will print how much memory the dataframe consumes in Bytes or Megabytes. The output of the function will be a dataframe of size 1 x 3.

example usage of `size`:

```
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = c(1, 4, 6, NA),
                       "booleans" = c(NA, FALSE, NA, TRUE),
                       "dates" = as.Date(c("2003-01-02", "2002-02-02", "2004-03-03", "2005-04-04")),
                       "integers" = c(2L, 3L, 4L, 5L),
                       stringsAsFactors = FALSE)

size(toy_data)
```

example output of `size`:

| rows  | columns | size_in_memory |
| ----- | ------- | -------------- |
| 4     | 5       | 1760           |


### Comparable Functions Available in the R Ecosystem
The following are existing functions in R that are similar to those developed within our project.

 [dim()](https://www.rdocumentation.org/packages/base/versions/3.5.2/topics/dim): used to obtain the shape of a dataframe.   
[ncol()](https://www.rdocumentation.org/packages/base/versions/3.5.2/topics/nrow) and [nrow()](https://www.rdocumentation.org/packages/base/versions/3.5.2/topics/nrow): used to get the number of rows and columns in a dataframe.       
[str()](https://www.rdocumentation.org/packages/utils/versions/3.5.2/topics/str): provides summary information about the dataframe, including some of the same information as above (i.e. dim, ncol and nrow). str() provides descriptive information about variable and data types in the dataframe.   
[is.na()](https://www.statmethods.net/input/missingdata.html): provides the number of missing values in the columns of the data frame.

### Collaborators:

| name | github handle |
| ---- | ------ |
| Rachel K. Riggs | [@rachelkriggs](https://github.com/rachelkriggs) |
| Milos Milic     | [@milicmil](https://github.com/milicmil) |
| Arzan Irani     | [@nazra-inari](https://github.com/nazra-inari) |
| James Pushor    | [@jpush1773](https://github.com/jpush1773)
