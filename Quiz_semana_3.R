## Quiz semana 3

# 1. Take a look at the 'iris' dataset that comes with R.
#The data can be loaded with the code:

library(datasets)
data(iris)

#What is the mean of 'Sepal.lenght' for the species virginica?
# The answer to nearest whole number. 

library(data.table)
iris_dt <- as.data.table(iris)
iris_dt[Species == "virginica", round(mean(Sepal.Length))]

#2. What R code returns a vector of the means of the variables
#'Sepal.Length', 'Sepal.Width', 'Petal.Length' and ''Petal.Width'?

head(iris)

# 1. 
apply(iris, 2, mean) # Warning messages. NA. 

#2. 
apply(iris, 1, mean) # Warning messages. NA. 

#3. 
apply(iris[,1:4], 2, mean)
# This is the answer. 
#It takes the columns 1:4, the second dimension,
#and calculates the mean

#4. 
rowMeans(iris[, 1:4])
#This is the mean of the rows

#5. 
colMeans(iris)
#Error in colMeans(iris): 'x' must be numeric.

#6.
apply(iris[, 1:4], 1, mean)
#It takes the columns 1:4, the first dimension,
#and calculates the mean


#3. Load the 'mtcars' dataset in R with the following code

library(datasets)
data(mtcars)
mtcars_dt <- as.data.table(mtcars)
head(mtcars)

#How can one calculate the average mile per gallon (mpg) by number of 
#cylinders in the car (cyl)?. Select all that apply. 

#1. 
sapply(mtcars, cyl, mean)
#Error in match.fun(FUN): object 'cyl' not found

#2. 
apply(mtcars, 2, mean)
#This is the mean of each column

#3. 
with(mtcars, tapply(mpg, cyl, mean))
#This is the answer

#4. 
mean(mtcars$mpg, mtcars$cyl)
# Error in mean.default (mtcars$mpg, mtcars$cyl):
# 'trim' must be numeric of length one.

#5. 
tapply(mtcars$cyl, mtcars$mpg, mean)

#6. 
lapply(mtcars, mean)
#This apply the mean for each column

#7. 
sapply(split(mtcars$mpg, mtcars$cyl), mean)
#This is the answer

#8. 
split(mtcars, mtcars$cyl)

#9. 
tapply(mtcars$mpg, mtcars$cyl, mean)
#This is the answer

#4. Continuing with the 'mtcars' dataset from the previous Question, what is the 
#absolute difference between the average horsepower of 4-cylinder cars and the average
#horsepower of 8-cylinder cars?
#Please round your final answer to the nearest whole number

mtcars_dt <- as.data.table(mtcars)
mtcars_dt <- mtcars_dt[,  .(mean_cols = mean(hp)), by = cyl]
round(abs(mtcars_dt[cyl == 4, mean_cols] - mtcars_dt[cyl == 8, mean_cols]))

#5. If you run
debug(ls)
ls
