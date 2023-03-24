#Install dplyr
library(dplyr)

#Read CSV
mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(mecha_car)

#create linear model

Mecha_Car_lm <-
  + lm(mecha_car$mpg~mecha_car$vehicle_length+mecha_car$vehicle_weight+mecha_car$spoiler_angle+mecha_car$ground_clearance+mecha_car$AWD,data=mecha_car) 

#summary
summary(Mecha_Car_lm)


#Read suspension_coil CSV
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

View(suspension_coil)

#Create summary 
summary = summarize(suspension_coil, Mean=mean(suspension_coil$PSI), Median=median(suspension_coil$PSI), Variance = var(suspension_coil$PSI), SD = sd(suspension_coil$PSI));

View(summary)

#Create lot summary
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance= var(PSI), SD = sd(PSI))

View(lot_summary)

#Run a T-test to see if PSI across all mfg lots is statistically different from pop. mean of 1500
t.test(x=suspension_coil$PSI, mu=1500);

#Run a t-test on each different lot

t.test(x=subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=='Lot1'), mu=1500);
t.test(x=subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=='Lot2'), mu=1500);
t.test(x=subset(suspension_coil$PSI, suspension_coil$Manufacturing_Lot=='Lot3'), mu=1500);
