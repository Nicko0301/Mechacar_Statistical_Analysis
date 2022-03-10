library(dplyr)
# import csv file
MechaCar_mpg <- read.csv('Data/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
# Perform linear regression using ln() function
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD, data = MechaCar_mpg)
Mecha_lm
# view using summary
summary(Mecha_lm)
