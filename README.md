![GitHub repo size](https://img.shields.io/github/repo-size/felipebacelo/SortingAlgorithms?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/felipebacelo/SortingAlgorithms?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/felipebacelo/SortingAlgorithms?style=for-the-badge)
![Bitbucket open pull requests](https://img.shields.io/bitbucket/pr-raw/felipebacelo/SortingAlgorithms?style=for-the-badge)
![Bitbucket open issues](https://img.shields.io/bitbucket/issues/felipebacelo/SortingAlgorithms?style=for-the-badge)

# SortingAlgorithms

Exemplos de Algoritmos de Ordenação em R.

* Bubble Sort
* Comb Sort
* Heap Sort
* Insertion Sort
* Merge Sort
* Quick Sort
* Radix Sort
* Selection Sort
* Stooge Sort

***

### Desenvolvimento

Desenvolvido em R através do RStudio.

***

* ### Bubble Sort

```
bubble.sort <- function(elements.vec) { 
  n <- length(elements.vec)
  for(i in 1:(n-1)) {
    for(j in 1:(n-i)) {
      if(elements.vec[j+1] < elements.vec[j]) { 
        temp <- elements.vec[j]
        elements.vec[j] <- elements.vec[j+1]
        elements.vec[j+1] <- temp
      }
    }
  }
  return(elements.vec)
}
```

* ### Comb Sort

```
comb.sort <- function(elements.vec) {
  gap <- length(elements.vec)
  swaps <- 1
  while (gap > 1 && swaps == 1) {
    gap = floor(gap / 1.3)
    if (gap < 1) {
      gap = 1
    }
    swaps = 0
    i = 1
    while (i + gap <= length(a)) {
      if (elements.vec[i] > elements.vec[i + gap]) {
        elements.vec[c(i, i + gap)] <- elements.vec[c(i + gap, i)]
        swaps = 1
      }
      i <- i + 1
    }
  }  
  return(elements.vec) 
}
```

* ### Heap Sort

```
build.heap <- function(elements.vec) {
  l = length(elements.vec)
  heap = elements.vec
  for (i in l:1) {
    heap = modify.heap(heap, i)
  }
  return(heap)
}

is.heap <- function(heap, rootIndex) {
  i = rootIndex
  res = T
  while(2 * i <= length(heap) & res) {
    child = c(heap[2 * i], heap[2 * i + 1])
    child = child[!is.na(child)]
    result.bool = all(heap[i] <= child)
    i = i + 1
  }
  return(result.bool)
}

modify.heap <- function(heap, rootIndex) {
  l = length(heap)
  flag = 1  
  while (rootIndex * 2 <= l && flag == 1) {
    leftIndex = rootIndex * 2
    rightIndex = rootIndex * 2 + 1
    flag = 0
    child = c(heap[leftIndex], heap[rightIndex])
    child = child[!is.na(child)]
    minIndex = which.min(child)
    if (heap[rootIndex] > child[minIndex]) {
      flag = 1
      heapIndex = c(leftIndex, rightIndex)[minIndex]
      temp = heap[heapIndex]
      heap[heapIndex] = heap[rootIndex]
      heap[rootIndex] = temp
      rootIndex = heapIndex
    }
  }
  return(heap)
}

heap.sort <- function(heap) {
  sorted.elements = NULL
  l = length(heap)
  while(l > 0)
  {
    sorted.elements = c(sorted.elements, heap[1])
    l = length(heap)
    heap[1] = heap[l]
    heap = heap[1:(l - 1)]
    heap = modify.heap(heap, rootIndex = 1)
    l = l - 1
  }
  return(sorted.elements)
}
```

* ### Insertion Sort

```
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
```

* ### Merge Sort

```
merge.func <-function(leftArray, rightArray) {
    l <- numeric(length(leftArray) + length(rightArray))
    leftIndex <- 1; rightIndex <- 1; i <- 1;
    for(i in 1:length(l)) {
        if((leftIndex <= length(leftArray) && leftArray[leftIndex] < rightArray[rightIndex]) || rightIndex > length(rightArray)) {
            l[i] <- leftArray[leftIndex]
            leftIndex <- leftIndex + 1
        } else {
            l[i] <- rightArray[rightIndex]
            rightIndex <- rightIndex + 1
        }
    }
    return(l)
}

merge.sort <- function(elements.vec) {
    if(length(elements.vec) > 1) { 
        m <- ceiling(length(elements.vec) / 2)
        leftArray <- merge.sort(elements.vec[1:m])
        rightArray <- merge.sort(elements.vec[(m + 1):length(elements.vec)])
        merge.func(leftArray, rightArray)
    } 
    else {
        return(elements.vec)
    }
}
```

* ### Quick Sort

```
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
```

* ### Radix Sort

```
radix.sort <- function(elements.vec) {
    x <- nchar(max(elements.vec))
    for (i in 1:x)
        elements.vec <- elements.vec[order(elements.vec %% (10 ^ i))]
    return(elements.vec)
}
```

* ### Selection Sort

```
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
```

***

### Licenças

_MIT License_
_Copyright   ©   2020 Felipe Bacelo Rodrigues_
