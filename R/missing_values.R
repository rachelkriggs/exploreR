# Remove toy data frame before submitting
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = c(1, 4, 6, NA),
                       "booleans" = c(NA, FALSE, NA, TRUE),
                       stringsAsFactors = FALSE)


# Missing Values Function
missing_values <- function(x) {
  variable <- vector("character", ncol(x))
  missing_vals <- vector("integer", ncol(x))
  percent_missing <- vector("double", ncol(x))
  for (i in seq_along(x)){
    variable[[i]] <- colnames(x[i])
    missing_vals[[i]] <- sum(is.na(x[i]))
    percent_missing[[i]] <- sum(is.na(x[i]))/nrow(x[i])
  }
  data.frame(variable, missing_vals, percent_missing)
}

# Function call with toy data set
missing_values(toy_data)
