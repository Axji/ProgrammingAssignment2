## Funktionen zum Zwischenspeichern (Cachen) der Inversen einer Matrix.
## Die Berechnung der Inversen ist aufwendig; wiederholte Aufrufe mit
## derselben Matrix greifen deshalb auf das gespeicherte Ergebnis zu.

## makeCacheMatrix: erzeugt ein "Matrix-Objekt" (eine Liste von Funktionen),
## das die Matrix und deren gecachte Inverse speichert.
makeCacheMatrix <- function(x = matrix()) {
	invert <- NULL

	set <- function(y) {
		x <<- y
		## Matrix hat sich geaendert => alte Inverse verwerfen
		invert <<- NULL
	}
	get <- function() x

	setinv <- function(inverse) invert <<- inverse
	getinv <- function() invert

	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## cacheSolve: liefert die Inverse des mit makeCacheMatrix erzeugten Objekts.
## Ist sie bereits berechnet, kommt sie aus dem Cache, sonst wird sie mit
## solve() berechnet und gespeichert. Weitere Argumente gehen an solve().
cacheSolve <- function(x, ...) {
	invert <- x$getinv()
	if (!is.null(invert)) {
		message("getting cached data")
		return(invert)
	}
	mx <- x$get()
	invert <- solve(mx, ...)
	x$setinv(invert)
	invert
}
