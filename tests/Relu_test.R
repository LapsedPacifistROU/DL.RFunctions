#' @importFrom testthat expect_that equals

library(testthat)

expect_that(activation_Relu(c(-5,-7,8,-3,0,5,19)),equals(c(0,0,8,0,0,5,19)))
