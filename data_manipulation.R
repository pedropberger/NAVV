head(resultados)

library(tidyr)
library(dplyr)

pivotado <- resultados %>%
  pivot_wider(names_from = Mes, values_from = IdAuto)

head(pivotado)

