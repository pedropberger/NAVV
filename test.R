library(dplyr)

# Criação do dataframe original
df <- data.frame(
  Orgao = c('Plantão', 'Plantão', 'Outro', 'Plantão'),
  Assuntos_Gampes = c('Assunto 1', 'Assunto 2', 'Assunto 3', 'Assunto 4'),
  Autos_movimentados = c(10, 15, 5, 20)
)

df <- NAVV

df

# Filtrando o dataframe para "Orgão" igual a 'Plantão' e selecionando apenas as colunas desejadas
df_filtrado <- df %>%
  filter(Orgao == 'Plantão') %>%
  select(Assunto_Gampes, Autos_Movimentados)

# Exibindo o dataframe filtrado
ft< flextable(df_filtrado)

#test


resultados <- read.csv('data/NAVV_pivot.csv')

resultados <- resultados[, -which(names(resultados) == "X")]

df <-resultados

categorias <- unique(df$Orgão)


# Lista para armazenar as tabelas flexíveis
ft_list <- list()


# Loop para cada categoria
for (categoria in categorias) {
  # Filtrando o dataframe para a categoria atual e selecionando apenas as colunas desejadas
  df_filtrado <- df %>%
    filter(Orgão == categoria) %>%
    select(Assunto.Gampes, Janeiro)
  
  # Classificando as linhas por "Assunto_Gampes" em ordem alfabética
  df_filtrado <- df_filtrado %>%
    arrange(desc(Assunto.Gampes))
  
  
  # Criando a tabela flexível
  ft <- flextable(df_filtrado) %>% 
    autofit()
  
  # Convertendo a tabela flexível para markdown usando kable
  table_markdown <- knitr::kable(df_filtrado, format = "markdown")
  
  # Imprimindo a tabela markdown
  cat("**",categoria,"**\n", sep="")
  
  print(table_markdown)
  cat("\n")  # Pula uma linha entre as tabelas
}


# Carregue o pacote lubridate

library(lubridate)

# Obtenha a data atual
data_atual <- Sys.Date()

# Subtraia um mês
mes_passado <- data_atual %m-% months(1)

# Formate o mês passado em português do Brasil
mes_passado_formatado <- format(mes_passado, format = "%B", locale = "pt_BR")

# Exiba o resultado
print(mes_passado_formatado)

