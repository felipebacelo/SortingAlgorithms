
stooge.sort <- function(elements.vec) {
	i = 1
	j = length(elements.vec)
	if (elements.vec[j] < elements.vec[i]) elements.vec[c(j, i)] = elements.vec[c(i, j)]
	if (j - i > 1) {
		t = (j - i + 1) %/% 3
		elements.vec[i:(j - t)] = stooge.sort(elements.vec[i:(j - t)])
		elements.vec[(i + t):j] = stooge.sort(elements.vec[(i + t):j])
		elements.vec[i:(j - t)] = stooge.sort(elements.vec[i:(j - t)])
	}
	elements.vec
}
