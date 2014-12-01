# al;kjdsflkdsjafkjdsf

3 + 5

survey <- read.csv(file = "01-data/data/biology/surveys.csv")

# this is the same as above
survey <- read.csv("01-data/data/biology/surveys.csv")

head(survey)
tail(survey)

class(survey)
str(survey)

## Exercise
## Based on the output of `str(surveys)`, can you answer the following questions?
## * What is the class of the object `surveys`?
## * How many rows and how many columns are in this object?
## * How many species have been recorded during these surveys?
?str
?head
names(survey)
colnames(survey)

# converting levels into character
class(survey$sex)
# save the column as a character
survey$sex <- as.character(survey$sex)
class(survey$sex)

weights <- c(50 , 55, 60, 42)
weights
class(weights)
length(weights)
weights <- c(weights, 100, 110)
weights

# character
# numeric
# logical
# integer
# complex
# raw
# factor

exprmt <- factor(c("treat1", "treat2", "treat1", "treat3", "treat1", "control",
                   "treat1", "treat2", "treat3"))
table(exprmt)
barplot(table(exprmt))

