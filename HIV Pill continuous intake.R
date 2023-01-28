#importing dataset in R Studio
df <- read.csv(file.choose())
str(df)


# Method 2
install.packages("RCurl")


library("RCurl")
iris3 <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/iris.csv") )


# Check to see if there are missing data?
sum(is.na(df))



#basic summary statistics of the data
summary(df)


# skimr() - expands on summary() by providing larger set of statistics
install.packages("skimr")


library(skimr)
skim(df) # Perform skim to display summary statistics




#data visualizations using Barplot
#visualizing patients that came back for 1st Refill.

t1=table(df$Refill1month)
barplot(t1)
barplot(t1, main="1st DP Refill")


#visualizing patients that came back for 2nd Refill.

t2=table(df$Refill2month)
barplot(t2, main="2nd DP Refill",col="blue" )

#visualizing patients that came back for 3rd Refill.

t3=table(df$Refill3month)
barplot(t3, main="3rd DP Refill",col="green" )


#visualizing patients that came back for 6TH DP Refill.

t4=table(df$Refill6month)
barplot(t4, main="6TH DP Refill",col="orange" )



  