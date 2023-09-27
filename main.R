#### Iniciando aplicação

print("Let's go")

#### Read the user and password for the e-mail think

source("secrets.R")

#### Loading database

source("DB.R")

#### Data and variables preparation

source("dataprep.R")

#### Report build

library(rmarkdown)

report <-"NAVV.Rmd"

name_report <- paste("Relatório", mes_passado_formatado, sep=" ")

render(report, output_format = c("pdf_document", "word_document"), output_file = name_report, output_dir = "./output")

#### e-mail build

filename_pdf <- paste("output/", name_report, ".pdf", sep="")
filename_word <- paste("output/", name_report, ".docx", sep="")

Sys.sleep(10)

source("email.R")

Sys.sleep(10)

####

print("The end")