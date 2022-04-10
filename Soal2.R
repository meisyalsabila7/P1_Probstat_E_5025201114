n = 20
p = 0.2

### 2.A
x = 4
peluang = dbinom(x, n, p, FALSE)

### 2.B
hist(rbinom(x, n, p), xlab = "x", ylab = "Frekuensi", main = "Histogram of Binomial")

### 2.C
#Rataan
rataan = n * (prob = p)
#Varian
varian = n * (prob = p) * (1-(prob = p))