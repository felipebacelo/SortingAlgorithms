
quick.sort <- function(elements.vec) {
  if(length(elements.vec) <= 1) {
    return(elements.vec)
  }
  pivot <- elements.vec[1]
  non.pivot  <- elements.vec[-1]
  pivot_less    <- quick.sort(non.pivot[non.pivot < pivot])
  pivot_greater <- quick.sort(non.pivot[non.pivot >= pivot])
  return(c(pivot_less, pivot, pivot_greater))
}
