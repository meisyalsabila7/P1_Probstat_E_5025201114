# P1_Probstat_E_5025201114

* Nama  : Meisya Salsabila Indrijo Putri 
* NRP   : 5025201114
* Kelas : Probabilitas dan Statistika E

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
### 1.a
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
```
p = 0.20
n = 3
dgeom(x = n, prob = p)
```
![1_A](https://user-images.githubusercontent.com/94627623/162606358-589d288f-88af-46d8-8b6a-118a8ac63ebd.jpg)
### 1.b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```
mean(rgeom(n = 10000, prob = p) == 3)
```
![1_B](https://user-images.githubusercontent.com/94627623/162606359-0d7d2515-6d7b-47c4-a7e4-d7680007d090.jpg)
### 1.c
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
``` 
Perbedaannya adalah hasil distribusi geometrik pada poin a adalah 0.1024, sedangkan hasil rata-rata pada pon b adalah 0.107 
```
### 1.d
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
* Disini saya menggunakan referensi https://rpubs.com/mpfoley73/458721.
* Langkah pertama kita melakukan install library yang dibutuhkan
```
install.packages("ggplot2")
install.packages("dplyr")
```
* Lalu menjalankan code sesuai dengan referensi yang saya gunakan
```
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 Kegagalan Sebelum Sukses Pertama",
       subtitle = "Geometrik(.2)",
       x = "Kegagalan sebelum kesuksesan pertama (x)",
       y = "Probabilitas")
```
![1_D](https://user-images.githubusercontent.com/94627623/162606360-7d213927-b100-4b6c-a20c-facc2a43a657.jpg)
### 1.e
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
* Rataan (μ) 
```
miu = 1/p
```
* Varian (σ²)
```
varian = (1-p)/ p^2
```
![1_E](https://user-images.githubusercontent.com/94627623/162606362-bd2bb40d-60f4-451b-aabd-60792bdfaf65.jpg)

## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
### 2.a
Peluang terdapat 4 pasien yang sembuh.
```
n = 20
p = 0.2
x = 4
peluang = dbinom(x, n, p, FALSE)
```
### 2.b
Gambarkan grafik histogram berdasarkan kasus tersebut.
```
hist(rbinom(x, n, p), xlab = "x", ylab = "Frekuensi", main = "Histogram of Binomial")
```
![2_B](https://user-images.githubusercontent.com/94627623/162607451-ddde8fb2-eabd-406c-a884-e98fe720c066.jpg)
### 2.c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
* Rataan
```
rataan = n * (prob = p)
```
* Varian
```
varian = n * (prob = p) * (1-(prob = p))
```
![2_AC](https://user-images.githubusercontent.com/94627623/162607449-4ec69553-45bb-42af-a156-920f0f4203ff.jpg)

## Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
### 3.a
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```
lamda = 4.5
x = 6
Peluang = dpois(x, lamda)
```
![3_A](https://user-images.githubusercontent.com/94627623/162608958-65874746-ee71-45ea-a869-d14f6ba9ad2f.jpg)
### 3.b
Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
```
x = 6
n = 356
hist(rpois(n, lamda), main = "Histogram Poisson")
```
![3_B](https://user-images.githubusercontent.com/94627623/162608960-240e1dd5-c271-4de8-bbab-93791a86c0c5.jpg)
### 3.c
Bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
```
Perbandingan tidak terpaut jauh
```
### 3.d
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
```
mean = varian = lamda
```

## Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
### 4.a
Fungsi Probabilitas dari Distribusi Chi-Square.
```
x = 2
v = 10
Peluang = dchisq(x, 10)
```
### 4.b
Histogram dari Distribusi Chi-Square dengan 100 data random.
```
n = 100
hist(rchisq(n, v), xlab = "X", ylab = "V", main = "Grafik Histogram")
```
![4_B](https://user-images.githubusercontent.com/94627623/162609408-4f4ca89d-b365-4b4d-a2f3-8de84e10661b.jpg)
### 4.c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
* Rataan
```
rataan = v
```
* Varan
```
varian = 2 * v
```
![4_AC](https://user-images.githubusercontent.com/94627623/162609406-157fd9e0-4bcf-4e15-87eb-1942b0f76bb1.jpg)

## Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
### 5.a
Fungsi Probabilitas dari Distribusi Exponensial
```
Peluang = dexp(3)
```
### 5.b
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```
par(mfrow = c(2,2))
set.seed(1)
hist(rexp(10))
set.seed(1)
hist(rexp(100))
set.seed(1)
hist(rexp(1000))
set.seed(1)
hist(rexp(10000))
```
### 5.c
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```
lambda = 3
```
* Rataan
```
rataan = lambda
```
* Varian
```
varian = lambda * lambda
```
