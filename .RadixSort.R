
radix.sort <- function(elements.vec) {
    x <- nchar(max(elements.vec))
    for (i in 1:x)
        elements.vec <- elements.vec[order(elements.vec %% (10 ^ i))]
    return(elements.vec)
}
