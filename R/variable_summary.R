#' Variable Summary
#'
#' takes a data frame as input and provides the total quantity
#' of each type of variable present in the data frame
#'
#' @param x a dataframe
#'
#' @return a dataframe
#' @export
#'
#' @examples
#' data <- data.frame("names" = c("Rachel", "Jim", "Milos", "Arzan"),
#'                    "numbers" = c(2, 4, 6, 8),
#'                    "truths" = c(TRUE, TRUE, TRUE, FALSE))
#' variable_summary(data)

variable_summary <- function(x){

  # check that input is a dataframe
  if (!(is.data.frame(x))) {
    stop("Please input a dataframe")
  }

  # initialize counters for each variable type
  num_count = 0
  char_count = 0
  bool_count = 0
  date_count = 0
  other_count = 0

  # get the type of all variables
  var_types <- sapply(x, class)

  # count the types
  tryCatch ( for (i in 1:length(var_types)) {
    if (var_types[[i]] == "numeric") {
      num_count = num_count + 1
    } else if (var_types[[i]] == "character") {
      char_count = char_count + 1
    } else if (var_types[[i]] == "logical") {
      bool_count = bool_count + 1
    } else if (var_types[[i]] == "Date") {
      date_count = date_count + 1
    } else {
      other_count = other_count + 1
    }
  }, error=function(e) print("We encountered an error that was not related to x being a dataframe or counts"))

  # return a data frame of the summary results
  data.frame("variable_type" = c("numeric", "character", "boolean", "date", "other"),
             "count" = c(num_count, char_count, bool_count, date_count, other_count),
             stringsAsFactors = FALSE)
}
