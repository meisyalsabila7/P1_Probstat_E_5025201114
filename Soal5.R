### 5.A
Peluang = dexp(3)

### 5.B
par(mfrow = c(2,2))
set.seed(1)
hist(rexp(10))
set.seed(1)
hist(rexp(100))
set.seed(1)
hist(rexp(1000))
set.seed(1)
hist(rexp(10000))

### 5.C
lambda = 3
#Rataan
rataan = lambda
#Varian
varian = lambda*lambda