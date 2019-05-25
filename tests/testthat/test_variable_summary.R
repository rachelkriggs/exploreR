# This script tests the variable_summary() function

context("testing variable summary")

# input: a data frame
toy_data <- data.frame("letters" = c("a", "b", NA, "d"),
                       "numbers" = c(1, 4, 6, NA),
                       "logical" = c(NA, FALSE, NA, TRUE),
                       "dates" = as.Date(c("2003-01-02", "2002-02-02", "2004-03-03", "2005-04-04")),
                       "integers" = c(2L, 3L, 4L, 5L),
                       stringsAsFactors = FALSE)

test_that("input to variable_summary is a dataframe", {
  expect_is(variable_summary(toy_data), "data.frame")
})

test_that("in case the input is not a dataframe", {
  expect_error(variable_summary(matrix(1:12, nrow = 4, ncol = 3)))
})

test_that("variable_summary returns an object of type data.frame", {
  expect_is(variable_summary(toy_data), "data.frame")
})

test_that("variable_summary returns a dataframe of size 5 x 2", {
  expect_equal(nrow(variable_summary(toy_data)), 5)
  expect_equal(ncol(variable_summary(toy_data)), 2)
})

test_that("outputs correct data types", {
  expect_is(variable_summary(toy_data)$variable_type, "character")
  expect_is(variable_summary(toy_data)$count, "numeric")
})
