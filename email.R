library("devtools")
library(sendmailR)

#text email

email <- "pberger@mpes.mp.br"
#nome <- (as.character(df[linha, 5]))
texto <- paste("Prezadas(os) ", ", ","\n","\n", "Segue em anexo o Relatório automatizado para o Núcleo de Apoio às Vítimas de Violência. Os dados do presente relatório juntamente a seu histórico podem ser acessados em tempo real no painel de BI http://indicadores.mpes.mp.br/relatorios/powerbi/AGE/NAVV  ","\n","\n","Respeitosamente","\n","\n","Equipe da Assessoria de Gestão Estratégica (AGE)", sep="")

cat("processando email")

#### Envia o e-mail com authentication and SSL
sendmail(from="age@mpes.mp.br", 
         to=c(email), 
         subject="Relatório Mensal do Núcleo de Apoio às Vítimas de Violência (NAVV)", 
         msg=list(mime_part(texto), mime_part(filename_pdf)), 
         #msg=list(mime_part(texto), mime_part(filename_pdf), mime_part(filename_word)), 
         engine = "curl", 
         engineopts = list(username = username, password = password), 
         control=list(smtpServer="smtp://smtp.office365.com:587", verbose = TRUE) 
)



