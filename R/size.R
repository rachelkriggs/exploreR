#' Shape and Size Function
#'
#' Gives the shape and size of a dataframe
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
#' size(data)

size <- function(x) {

  # check that input is a dataframe
  # This if satement works better than having a try catch statement instead
  if (!(is.data.frame(x))) {
    stop("Please input a dataframe")
  }

  # get all needed info
  rows<- nrow(x)
  columns<- ncol(x)
  size_in_memory<- as.numeric(object.size(x))

  # return a dataframe of the results
  data.frame(rows, columns, size_in_memory, stringsAsFactors = FALSE)
}
