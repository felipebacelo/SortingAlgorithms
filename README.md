![GitHub repo size](https://img.shields.io/github/repo-size/felipebacelo/SortingAlgorithms?style=for-the-badge)
![GitHub](https://img.shields.io/github/license/felipebacelo/SortingAlgorithms?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/felipebacelo/SortingAlgorithms?style=for-the-badge)
![GitHub All Releases](https://img.shields.io/github/downloads/felipebacelo/SortingAlgorithms/total?style=for-the-badge)
![GitHub followers](https://img.shields.io/github/followers/felipebacelo?style=for-the-badge)

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

***

### Licenças

_MIT License_
_Copyright   ©   2020 Felipe Bacelo Rodrigues_
