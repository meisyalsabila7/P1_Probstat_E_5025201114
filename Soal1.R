### 1.A
p = 0.20
n = 3
dgeom(x = n, prob = p)

### 1.B
mean(rgeom(n = 10000, prob = p) == 3)

### 1.C
#Perbedaannya adalah hasil distribusi geometrik pada poin a adalah 0.1024, 
#sedangkan hasil rata-rata pada pon b adalah 0.107

### 1.D
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

### 1.E
#Rataan
miu = 1/p
#Varian
varian = (1-p)/ p^2