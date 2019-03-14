#Title:
#Description:
#Inputs:
#Outputs:

#scatterplot
library(tidyverse)
library(ggplot2)
library(jpeg)
library(grid)
as_tibble(iguodala)
iguodala_scatterplot <- ggplot(data = iguodala) + geom_point(aes(x = x, y = y, color = shot_made_flag))
iguodala_scatterplot

as_tibble(green)
green_scatterplot <- ggplot(data = green) + geom_point(aes(x = x, y = y, color = shot_made_flag))
green_scatterplot

as_tibble(durant) 
durant_scatterplot <- ggplot(data = durant) + geom_point(aes(x = x, y = y, color = shot_made_flag))
durant_scatterplot

as_tibble(thompson)
thompson_scatterplot <- ggplot(data = thompson) + geom_point(aes(x = x, y = y, color = shot_made_flag))
thompson_scatterplot

as_tibble(curry)
curry_scatterplot <- ggplot(data = curry) + geom_point(aes(x = x, y = y, color = shot_made_flag))
curry_scatterplot

court_file <- "https://raw.githubusercontent.com/ucb-stat133/stat133-hws/master/images/nba-court.jpg"
court_image <- rasterGrob(readJPEG(court_file), width = unit(1, "npc"), height = unit(1, "npc"))

iguodala_shot_chart <- ggplot(data = iguodala) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Andre Iguodala (2016 season)') + theme_minimal()
green_shot_chart <- ggplot(data = green) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Draymond Green (2016 season)') + theme_minimal()
durant_shot_chart <- ggplot(data = durant) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Kevin Durant (2016 season)') + theme_minimal()
thompson_shot_chart <- ggplot(data = thompson) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Klay Thompson (2016 season)') + theme_minimal()
curry_shot_chart <- ggplot(data = curry) + annotation_custom(court_image, -250, 250, -50, 420) + geom_point(aes(x = x, y = y, color = shot_made_flag)) + ylim(-50, 420) + ggtitle('Shot Chart: Stephen Curry (2016 season)') + theme_minimal()

