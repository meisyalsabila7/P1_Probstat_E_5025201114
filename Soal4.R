x = 2
v = 10

### 4.A
Peluang = dchisq(x, 10)

### 4.B
n = 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram")

### 4.C
#Rataan
rataan = v
#Varan
varian = 2 * v