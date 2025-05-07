# Load the datasets package
packages <- "datasets"  

# Loading the MTCars Dataset
head(mtcars)

# Finding the unique values of carburetors
u1 <- unique(mtcars$carb) 
cat("Carburetors:", u1, "\n")

# Build a contingency table of the counts/frequencies at each value/level
t1 <- table(mtcars$carb)

# Frequency Distribution of MTCars Carburetors
barplot(t1, xlab = "Carburetors", ylab = "Frequencies", main = "Frequency Distribution of MTCars' Carburetors")

# Loading the Air Quality Dataset
head(airquality)

# Finding the unique values of Temperatures
u2 <- unique(airquality$Temp) 
cat("Air Quality's Temperatures:", u2, "\n")

# Build a contingency table of the counts/frequencies at each value/level
t2 <- table(airquality$Temp)

# Frequency Distribution of Temperatures
barplot(t2, xlab = "Air Temperatures", ylab = "Frequencies", main = "Frequency Distribution of Air Temperatures")

# Build a contingency table for the range of temperatures and their counts/frequencies
t3 <- table(cut(airquality$Temp, 9))

# Frequency Distribution of the range of Air Temperatures
barplot(t3, xlab = "Range of Air Temperatures", ylab = "Frequencies", main = "Frequency Distribution of Range of Air Temperatures")
