# Title: Shots script
# Description: 
# Input(s):
# Output(s):


iguodala <- read.csv("https://raw.githubusercontent.com/ucb-stat133/stat133-hws/master/data/andre-iguodala.csv", stringsAsFactors = FALSE)
green <- read.csv("https://raw.githubusercontent.com/ucb-stat133/stat133-hws/master/data/draymond-green.csv", stringsAsFactors = FALSE)
durant <- read.csv("https://raw.githubusercontent.com/ucb-stat133/stat133-hws/master/data/kevin-durant.csv", stringsAsFactors = FALSE)
thompson <- read.csv("https://raw.githubusercontent.com/ucb-stat133/stat133-hws/master/data/klay-thompson.csv", stringsAsFactors = FALSE)
curry <- read.csv("https://raw.githubusercontent.com/ucb-stat133/stat133-hws/master/data/stephen-curry.csv", stringsAsFactors = FALSE)

iguodala$name <- c("Andre Iguodala")
green$name <- c("Draymond Green")
durant$name <- c("Kevin Durant")
thompson$name <- c("Klay Thompson")
curry$name <- c("Stephen Curry")

iguodala[iguodala$shot_made_flag == 'y','shot_made_flag'] <- 'shot_yes'
iguodala[iguodala$shot_made_flag == 'n', 'shot_made_flag'] <- 'shot_no'
green[green$shot_made_flag == 'y','shot_made_flag'] <- 'shot_yes'
green[green$shot_made_flag == 'n', 'shot_made_flag'] <- 'shot_no'
durant[durant$shot_made_flag == 'y','shot_made_flag'] <- 'shot_yes'
durant[durant$shot_made_flag == 'n', 'shot_made_flag'] <- 'shot_no'
thompson[thompson$shot_made_flag == 'y','shot_made_flag'] <- 'shot_yes'
thompson[thompson$shot_made_flag == 'n', 'shot_made_flag'] <- 'shot_no'
curry[curry$shot_made_flag == 'y','shot_made_flag'] <- 'shot_yes'
curry[curry$shot_made_flag == 'n', 'shot_made_flag'] <- 'shot_no'

andre-iguodala-summary.txt <- 
draymond-green-summary.txt <-
kevin-durant-summary.txt <-
klay-thompson-summary.txt <-
stephen-curry-summary.txt <-
  
  







