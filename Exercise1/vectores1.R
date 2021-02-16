# Ejercicios Vector

# Ejercicio 3:

x <- vector()
y <- c(4,2,3,5,6)
for (i in 1:length(y))
  x <- c(x, y[i])
print(x)

# Ejercicio 6

print(c("Sum: ",sum(x), "Sum: ", mean(x), "Product: ", prod(x)))

# Ejercicio 7

x <- c(10, 15, NaN, 13)
sum(x, na.rm = TRUE)
mean(x, na.rm = TRUE)
prod(x, na.rm = TRUE)

# Ejercicio 8

min(x)
max(x)

# Ejercicio 9 

sort(x)
sort(x, decreasing = TRUE)

# Ejercicio 10 

is.na(x)
is.element(15, x)

# Ejercicio 12

tail(x, 1)

# Ejercicio 13

sort(x, partial = length(x)-1)[-2:-1]

# Ejercicio 14

for (i in 1:length(x))
  y=sort(x)[i]
  print(y)

# Ejercicio 16 

cambia <- function(df) {
  v <- data.frame(df=1:length(df))
} 

# Ejercicio 20

revertir <- function(vec) {
  reversed <- rev(vec)
}

# Ejercicio 23

convertirdf <- function(columna) {
  convertido <- setNames(as.character(columna))
}

