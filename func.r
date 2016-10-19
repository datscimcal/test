fun = function(i){Sys.sleep(1);i}

f11 = function(n){
  sqrt(seq_len(n))+sqrt(1)
}

f10 = function(n){
  sqrt1 = sqrt(1)
  vapply(seq_len(n), sqrt, numeric(1))+sqrt1
}

f9 = function(n){
  sqrt1 = sqrt(1)
  vapply(seq_len(n), function(i) sqrt(i), numeric(1))+sqrt1
}

f8 = function(n){
  sqrt1 = sqrt(1)
  vapply(seq_len(n), function(i) sqrt(i)+sqrt1, numeric(1))
}

f7 = function(n){
  sqrt1 = sqrt(1)
  sapply(seq_len(n), function(i) sqrt(i)+sqrt1)
}

f6 = function(n){
  x = numeric(n)
  sqrt1 = sqrt(1)
  for (i in seq_len(n))
    x[i]=sqrt(i)+sqrt1
  x
}

f5 = function(n){
  x = numeric(n)
  for (i in seq_len(n))
    x[i]=sqrt(i)+sqrt(1)
  x
}

f4= function(n) {
  x=numeric(0)
  for (i in seq_len(n))
    x = c(x,sqrt(i)+1)
  x
}

f3= function(n) {
  x=c()
  for (i in seq_len(n))
    x = c(x,sqrt(i)+1)
  x
}

f2= function(n) {
  stopifnot(n>0)
  x=c()
  for (i in 1:n)
    x = c(x,sqrt(i)+1)
  x
}

f1= function(n) {
 x=c()
 for (i in 1:n)
   x = c(x,sqrt(i)+1)
 x
}