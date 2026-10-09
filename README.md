# ProgrammingAssignment2

Lösung zu "Programming Assignment 2: Lexical Scoping" (Coursera, R Programming).
Fork von [rdpeng/ProgrammingAssignment2](https://github.com/rdpeng/ProgrammingAssignment2).

`cachematrix.R` enthält zwei Funktionen, die die Inverse einer Matrix zwischenspeichern:

- `makeCacheMatrix(x)` erzeugt ein Objekt mit `set`, `get`, `setinv` und `getinv`. Mit `set()` wird der Cache geleert.
- `cacheSolve(x, ...)` liefert die Inverse aus dem Cache oder berechnet sie mit `solve()` und speichert sie.

```r
source("cachematrix.R")
m <- makeCacheMatrix(matrix(c(2, 0, 0, 2), 2, 2))
cacheSolve(m)   # berechnet die Inverse
cacheSolve(m)   # "getting cached data"
```
