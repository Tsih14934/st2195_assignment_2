#code to web scrape using rvest

install.packages("rvest")
library(rvest)
library(dplyr)

#read the website 
wiki_webpg = read_html ("https://en.wikipedia.org/wiki/Comma-separated_values")


wiki_table = wiki_webpg %>%
  html_nodes("table.wikitable") %>%
  html_table()%>% .[[1]]
wiki_table


write.table(wiki_table, file = "C:/Users/mogotsio1/Desktop/GitProjects/Assignments/st2195_assignment_2/R_csv/cars.csv")
read.csv(file = "cars.csv")

  
 

