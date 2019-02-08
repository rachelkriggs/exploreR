# This script tests the missing_values() function
# library(testthat)

context("testing missing values")

# input: a data frame
toy_data <- data.frame("letters" = c("a", "b", "c", "d"),
                       "numbers" = seq(1, 4),
                       "booleans" = c(TRUE, FALSE, FALSE, TRUE))

test_that("input to missing_values is a dataframe", {
  expect_is(toy_data, "data.frame")
})

test_that("in case the input is not a dataframe", {
  expect_error(missing_values(matrix(1:9, nrow = 4, ncol = 3)))
})

test_that("missing_values returns an object of type data.frame", {
  expect_is(missing_values(toy_data), "data.frame")
})

test_that("if the input size is n x d, missing_values returns a dataframe of size d x 3", {
  expect_equal(nrow(missing_values(toy_data)), ncol(toy_data))
  expect_equal(ncol(missing_values(toy_data)), 3)
})

test_that("outputs correct data types", {
  expect_is(missing_values(toy_data)$variable_type, "character")
  expect_is(missing_values(toy_data)$count, "integer")
})

