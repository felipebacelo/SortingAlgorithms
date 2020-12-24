
insertion.sort <- function(elements.vec) { 
  for (j in 2:length(elements.vec)) {
    key = elements.vec[j] 
    i = j - 1
    while (i > 0 && elements.vec[i] > key) {
      elements.vec[(i + 1)] = elements.vec[i]
      i = i - 1
    }
    elements.vec[(i + 1)] = key
  }
  return(elements.vec)
}
