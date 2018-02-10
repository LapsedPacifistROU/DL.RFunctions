initializeParameters <- function(layerIndex,Nx)
{
  stopifnot(layerIndex==floor(layerIndex),Nx==floor(Nx)) #Check to see if elements of layerIndex and Nx are integers
  stopifnot(is.numeric(Nx))

  W1 <<- matrix(rnorm(layerIndex[1]*Nx),layerIndex[1],Nx) *(2/layerIndex[1])
  b1<<-matrix(0,1,layerIndex[1])

  for (i in 2:length(layerIndex))
    {
    assign(paste0('W',i), matrix(rnorm(layerIndex[i]*layerIndex[i-1]),layerIndex[i],layerIndex[i-1]) *(2/layerIndex[i]),envir = .GlobalEnv)
    assign(paste0('b',i),matrix(0,1,layerIndex[i]),envir = .GlobalEnv)

  }

}
