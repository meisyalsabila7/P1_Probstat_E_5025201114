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
### 1.b
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```
mean(rgeom(n = 10000, prob = p) == 3)
```
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

## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
### 2.a
Peluang terdapat 4 pasien yang sembuh.

### 2.b
Gambarkan grafik histogram berdasarkan kasus tersebut.

### 2.c
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
