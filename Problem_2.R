# entering the data

crime <- read.delim('https://s3.eu-central-1.amazonaws.com/econometrics2018/data/crime.csv', stringsAsFactors = FALSE)
str(crime)
summary(crime)

# a)

linearmodel1 <- lm(C ~ HS, data = crime)
summary(linearmodel1)

# When we look at the coefficients of t and p value we can tell that they are
# statistically significant but still the R square is low
# The model shows as us the connection between the people who have graduated
# high schooland the crime rate => If the graduated people become more the
# crime rate will rise approximately with 1.48 per unit (what is the unit?), this estimation are
# made for the average amount estimated considering the variable HS varies
# from the actual average value

# b)

pairs(~ C + U + I + HS, data = crime)

# c)

linearmodel2 <- lm(C ~ HS + U, data =  crime)
summary(linearmodel2)

# as we can see in the scatter plot there is no obvious correlation between
# it seems like the relation is seperated in two groups
# as we can see in the model, the urban estmator has effect on the coefficient
# of HS which is probably because not all of the people observed who has 
# graduated from high school are living in urban areas which affects the crime rate
# the results for HS in this model can be considered statistically unsignificant

# d)
## /score -0.5 (hard to read answer).
## The point is that education does not appear to be (linearly) associated
## with crime rates given the level of urbanisation.

# if we look just at the first model we cand make a conclusion that the HS 
# factor effects the crime rate in positive way but relatively small
# to be sure we should look once again at the scatter plot
# we can see that there are other factors which influence the crime rate
# which means that we have to add them in the model
# furthermore the scatterplot shows that HS actually has relatively negative
# effect on the estimation of the crime rate
# I would disagree with him and show the second linear model
# I would recommend ti widen the model with other predictors (explanatory variables)

# e)

linearmodel3 <- lm(C ~ HS + U + I, data = crime)
summary(linearmodel3)

## /score -2
