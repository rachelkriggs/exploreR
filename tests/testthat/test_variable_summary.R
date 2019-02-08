# This script tests the variable_summary() function
# library(testthat)

context("testing variable summary")

# input: a data frame
toy_data <- data.frame("letters" = c("a", "b", "c", "d"),
                       "numbers" = seq(1, 4),
                       "booleans" = c(TRUE, FALSE, FALSE, TRUE))

test_that("input to variable_summary is a dataframe", {
  expect_is(toy_data, "data.frame")
})

test_that("in case the input is not a dataframe", {
  expect_error(variable_summary(matrix(1:9, nrow = 4, ncol = 3)))
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
  expect_is(variable_summary(toy_data)$count, "integer")
})

