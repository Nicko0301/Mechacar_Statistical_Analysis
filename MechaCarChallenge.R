library(dplyr)
### Deliverable 1 #####
# import csv file
MechaCar_mpg <- read.csv('Data/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
# Perform linear regression using ln() function
Mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD, data = MechaCar_mpg)
Mecha_lm
# view using summary
summary(Mecha_lm)
### Deliverable 2 ####
#import CSV File
Suspension_coil <- read.csv('Data/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)
# Create summary table for suspension coils
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
### Deliverable 3 ####
# t-test across all lots
t.test(Suspension_coil$PSI, mu=1500)
# t-test for Lot 1
t.test(subset(Suspension_coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
# t-test for Lot 2
t.test(subset(Suspension_coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
# t-test for Lot 3
t.test(subset(Suspension_coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)