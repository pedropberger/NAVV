###### Data manipulation and preparation

library(lubridate)

# Obtenha a data atual
data_atual <- Sys.Date()

# Subtraia um mês
mes_passado <- data_atual %m-% months(1)

# Formate o mês passado em português do Brasil
mes_passado_formatado <- format(mes_passado, format = "%B", locale = "pt_BR")
