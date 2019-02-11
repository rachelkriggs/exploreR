# Remove toy data frame before submitting
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = seq(1, 2),
                       "booleans" = c(TRUE, FALSE, FALSE, TRUE),
                       stringsAsFactors = FALSE)

# variable_summary function
variable_summary <- function(x){
  type <- vector("character", ncol(x))
  number <- vector("integer", ncol(x))
  for (i in seq_along(x)){
    type[[i]] <- typeof(x[[i]])
    number[[i]] <- sum(!is.na(x[i]))
  }
  data.frame("variable_type" = type,
             "count" = number)
}

# function call for dev purposes only
variable_summary(toy_data)

