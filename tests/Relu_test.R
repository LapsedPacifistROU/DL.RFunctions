#' @importFrom testthat expect_that equals

library(testthat)

activation_Relu <- function(z_val){
  stopifnot(is.numeric(z_val))
  return((ifelse(z_val >= 0, z_val, 0)))

}

expect_that(activation_Relu(c(-5,-7,8,-3,0,5,19)),equals(c(0,0,8,0,0,5,19)))
