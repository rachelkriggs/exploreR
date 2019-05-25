#' Missing Values
#'
#' counts the number of missing values present in a data frame
#' and reports back number and percent missing for each variable
#'
#' @param x a dataframe
#'
#' @return a dataframe
#' @export
#'
#' @examples
#' data <- data.frame("names" = c("Rachel", "Jim", "Milos", NA),
#'                    "numbers" = c(2, NA, 6, 8),
#'                    "truths" = c(NA, TRUE, TRUE, FALSE))
#' missing_values(data)

missing_values <- function(x) {

  # check that input is a dataframe
  if (!(is.data.frame(x))) {
    stop("Please input a dataframe")
  }

  variable <- vector("character", ncol(x))
  missing_vals <- vector("integer", ncol(x))
  percent_missing <- vector("double", ncol(x))

  tryCatch(for (i in seq_along(x)){
    variable[[i]] <- colnames(x[i])
    missing_vals[[i]] <- sum(is.na(x[i]))
    percent_missing[[i]] <- sum(is.na(x[i]))/nrow(x[i])
  }, error=function(e) print("We encountered an error that was not related to x being a dataframe"))

  # return a dataframe of the results
  data.frame(variable, missing_vals, percent_missing, stringsAsFactors = FALSE)
}
