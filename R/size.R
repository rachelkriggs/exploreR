# Remove toy data frame before submitting
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = c(1, 4, 6, NA),
                       "booleans" = c(NA, FALSE, NA, TRUE),
                       stringsAsFactors = FALSE)


# Missing Values Function
size <- function(x) {
  
  rows<- nrow(x)
  columns<- ncol(x)
  size_in_memory<- as.numeric(object.size(x))
  
  data.frame(rows, columns, size_in_memory)
}

# Function call with toy data set
size(toy_data)
