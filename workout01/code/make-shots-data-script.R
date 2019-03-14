# Title: Shots script
# Description: display a shot summary for 5 gsw players
# Input(s): shot data for each player
# Output(s): summary for each player


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

iguodala$minute <- 12*iguodala$period - iguodala$minutes_remaining
green$minute <- 12*green$period - green$minutes_remaining
durant$minute <- 12*durant$period - durant$minutes_remaining
thompson$minute <- 12*thompson$period - thompson$minutes_remaining
curry$minute <- 12*curry$period - curry$minutes_remaining

a <- summarise(as_tibble(iguodala))
b <- summarise(as_tibble(green))
c <- summarise(as_tibble(durant))
d <- summarise(as_tibble(thompson))
e <- summarise(as_tibble(curry))

capture.output(a, file = "andre-iguodala-summary.txt") 
capture.output(b, file = "draymond-green-summary.txt") 
capture.output(c, file = "kevin-durant-summary.txt") 
capture.output(d, file = "klay-thompson-summary.txt") 
capture.output(e, file = "stephen-curry-summary.txt") 

sink(file = "andre-iguodala-summary.txt")
sink(file = "draymond-green-summary.txt")
sink(file = "kevin-durant-summary.txt")
sink(file = "klay-thompson-summary.txt")
sink(file = "stephen-curry-summary.txt")






