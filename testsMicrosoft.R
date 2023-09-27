install.packages("Microsoft365R")

library("Microsoft365R")


get_business_outlook()

outlb <- get_business_outlook()

outlb$list_emails()
