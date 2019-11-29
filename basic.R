cnt<- round(runif(15, 1, 99));cnt
print(ts(data = cnt, start = c(2010, 3), frequency = 4))

#vector#
vec <- 1:5
mat <- matrix(1:9, ncol=3)
rand <- rbinom(20, 4, 0.5)
table(rand)

#data Frame#
mat<- matrix(1:4, nrow=2)
as.data.frame(mat)
fmat <- as.data.frame(mat, row.names = c("R1", "R2"))

#factor 

refr <- c("grape", "orage", "berry")
factor(refr)
factor(refr, labels=c("A", "B", "C"))
ordered(refr)

data <- sample(1:15, 10)
cut(data, breaks = 3)
write(data)

#refunction

ft.fac <- function(n)
{
  if (n == 1) return(1)
  else return (n* ft.fac(n-1))
}

#function operator

setClass("circle", representation(radius = "numeric", area="numeric"))

"circle" <- function(r) {
  value <- new("circle")
  value@radius <- r
  value@area <- pi * r^2
  value
}

#function director operator

"%dec%" <- function(x, n){
  return ( sort(x)[1:n])
}

tx <- round(runif(10, 1, 50))
"%dec%"(tx, 4)

#functio operator - apply

mat <- matrix(1:12, ncol=4)
apply(mat, 1, max)
apply(mat, 1, "+", 2)

# replicate

ft <- function(n) {
  round(runif(n, 1, 25))
}

dtr <- replicate(5, ft(3))
sweep(dtr, 1, c(10, 5, 100), "+")

