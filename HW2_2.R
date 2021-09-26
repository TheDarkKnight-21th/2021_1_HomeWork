library(ggplot2)

#reading data
df <- read.csv('C:\\...\\train.csv')
View(df)

#delete the data except the data that i need 
df <- df[,-c(3,4,7,8,9,10,11,12)]
df <- df[!(df$Survived == 0 ), ]

#delete the data "NA" and divide the data by sex
library(dplyr)
df<-df %>% filter(!is.na(Age))
df_m <-df %>% filter(Sex == "male")
df_fm <-df %>% filter(Sex == "female")

#edit the data that i need 
df_m <- df_m[,-c(1,2)]
df_fm <- df_fm[,-c(1,2)]
names(df_m) =c("sex","age")
names(df_fm) =c("sex","age")

View(df_m)
View(df_fm)

#histogram of male survivor and female survivor
a1 <-hist(df_m[,2])
a2 <-hist(df_fm[,2])

plot(a1, col=rgb(0,1,1,1/4),xlim=c(0,120),ylim=c(0,50))
plot(a2, col=rgb(1,0,1,1/4),xlim=c(0,120),ylim=c(0,50),add=T)


#execute t-test
t.test(df_fm[,2],df_m[,2])

#combining male data and female data for do t-test in excel
df_sex_age <- rbind(x=df_fm,y=df_m )
View(df_sex_age)

#writing the data in excel file
library(writexl)
write_xlsx(df_sex_age,"C:\\...\\sample.xlsx")

rm(list=ls())
