activation_Relu <- function(z_val){
  stopifnot(is.numeric(z_val))
  return((ifelse(z_val >= 0, z_val, 0)))

}
