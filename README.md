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

***

### Licenças

_MIT License_
_Copyright   ©   2020 Felipe Bacelo Rodrigues_
