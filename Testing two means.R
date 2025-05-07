# Analyzing the mtcars dataset
# Compute mean mpg for automatic and manual transmissions
mean(mtcars$mpg[mtcars$am == 0])  # Automatic
mean(mtcars$mpg[mtcars$am == 1])  # Manual
# Create a copy of mtcars and add a factor variable for transmission
mtcars.copy <- mtcars
mtcars.copy$transmission <- factor(ifelse(mtcars$am == 0, "Automatic", "Manual"))
qplot(transmission, mpg, data=mtcars.copy,geom="boxplot", fill=transmission)
# Alternative way to perform t-test directly on the dataset
t.test(mpg ~ am, data = mtcars, alternative = "less")