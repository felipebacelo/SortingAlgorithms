
selection.sort <- function(elements.vec, ascending = TRUE) {
  max <- length(elements.vec)
  if (ascending) {
    for (j in 1:(max - 1)) {
      m <- elements.vec[j]
      p <- j
      for(k in (j + 1):max) {
        if(elements.vec[k] < m) {
          m <- elements.vec[k]
          p <- k
        } 
      } 
        elements.vec[p] <- elements.vec[j]
        elements.vec[j] <- m
      } 
    } 
    else {
      for (j in 1:(max - 1)) {
        m <- elements.vec[j]
        p <- j
        for(k in (j + 1):max) {
          if(elements.vec[k] > m) {
            m <- elements.vec[k]
            p <- k
          } 
        } 
        elements.vec[p] <- elements.vec[j]
        elements.vec[j] <- m
      } 
    }
  return(elements.vec)
}
