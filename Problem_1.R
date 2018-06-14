# entering the data

housework <- read.csv('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/houseWork.csv')

# a)

summary(housework)

# b)

str(housework)
muf <- mean(subset(housework$hours, housework$sex == 'f'))
mum <- mean(subset(housework$hours, housework$sex == 'm'))

# c)

housework$female <- ifelse(housework$sex == "f", 'TRUE', 'FALSE')
housework$male <- ifelse(housework$sex == "m", 'TRUE', 'FALSE')

# d)

model1 <- lm(hours ~ female, data = housework)

# e)

summary(model1)

# with this model we measure the linear connection between the hours spend in
# houseworking and the female representatives who do it
# the coefficients show that the houseworking hours per week will get down with
# aproximateley 14.46 units if more females accomplish housework 
# (both measured in coditional mean)
# if only the number of males who do housework remain constant
# looking at the P-value we can reject the null hypothesis
# so we can coclude that there is conection between the time female spend
# in houseworking and the mean  hours per week for keeping up the household clean
# the R square is very low

# f)

# g)

# h)

# i)

#j)

model2 <- lm(hours ~ female + male, data = housework)
summary(model2)

# there are no male recordings in the data we use
