# Remove toy data frame before submitting
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = seq(1, 2),
                       "booleans" = c(TRUE, FALSE, FALSE, TRUE),
                       stringsAsFactors = FALSE)

# variable_summary function
variable_summary <- function(x){

  # initialize counters for each variable type
  num_count = 0
  char_count = 0
  bool_count = 0
  date_count = 0
  other_count = 0

  # get the type of all variables
  var_types <- sapply(x, class)

  # count the types
  for (i in 1:length(var_types)) {
    if (test[[i]] == "numeric") {
      num_count = num_count + 1
    } else if (test[[i]] == "character") {
      char_count = char_count + 1
    } else if (test[[i]] == "logical") {
      bool_count = bool_count + 1
    } else if (test[[i]] == "Date") {
      date_count = date_count + 1
    } else {
      other_count = other_count + 1
    }
  }

  # return a data frame of the summary results
  data.frame("variable type" = c("numeric", "character", "boolean", "date", "other"),
             "count" = c(num_count, char_count, bool_count, date_count, other_count))
}

# function call for dev purposes only
variable_summary(toy_data)

