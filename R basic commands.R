# Basic Arithmetic Operations
1 + 1            # Addition
10 - 2           # Subtraction
2 * 2            # Multiplication
100 / 10         # Division
10^2             # Exponentiation
abs(-10)         # Absolute value
ceiling(4.5)     # Ceiling Function
floor(4.5)       # Floor Function
sqrt(10)         # Square Root Function
exp(2)           # Exponential Function
pi               # Value of pi
log(100)         # Natural log (base e)
log(100, base = 10)  # Log base 10

# Expressions
(2 + 2) * 2
1 + (2 * 2)

# Relational Operators
2 == 2
5 <= 6
5 >= 6

# Vectors
x <- c(2, 5, 7, 8, 9)
x > 5

# Mean
mean(c(1, 2, 3, 4))

# String Vector
x <- c("apple", "banana")
Y <- 10 + 10
Z <- -10 + 10
Y; Z

# Random Normal Distribution
x <- c(1, 2, 3)
y <- rnorm(4, 5)
x; y

# Working Directory and Environment
getwd()
search()
x <- 1:10         # Creating a vector from 1 to 10
x
ls()              # List all variables

# Saving and Loading Data
save(x, y, file = "xy.RData")
save.image()
load("xy.RData")
unlink("xy.RData")

# Logical, Character, and Numeric Vectors
lsx <- c(TRUE, FALSE)    # Logical vector
y <- c("a", "b", "c")    # Character vector
z <- c(1, 2.3, 4)        # Numeric vector (integer)
m <- c(1.2, 1.5, 1.7)    # Numeric vector (double)
lsx; y; z; m

# Data Types
class(lsx)
typeof(x)
mode(x)
is.numeric(c("a", "b"))
is.numeric(c(5, 6))
as.character(c(1, 2, 3))
as.numeric(c("c", "4", "b"))

# Logical Operations and Sequences
sum(c(FALSE, TRUE, TRUE))
c(1, 2, 3, 4, 5, 6, 7, 8)
1:10
seq(1, 8, by = 2)
rep(1, 5)
rep(c(1, 2, 3), 5)

# Named Vectors
x <- c(1, 2, 3, 4, 5)
names(x) <- c("a", "b", "c", "d", "e")
x
x[c(1, 2, 3)]        # By numeric position
x[x < 3]             # By logical vector
d <- x[x < 3]        # Assign by logical vector
x[c("b", "c")]       # By name
f <- x[c("b", "c")]
f

# Matrices
y <- matrix(c(1, 2, 3, 4, 5, 6), byrow = TRUE, ncol = 2)
y
class(y)
dim(y)
nrow(y)
ncol(y)
rownames(y) <- c("a", "b", "c")
colnames(y) <- c("col1", "col2")
y
y["a", ]
y[c(1, 2), ]

# Lists
x <- list(name = "Arun Patel", nationality = "Indian", height = 5.5, grades = c(95, 45, 80))
x
class(x)
x$name
x$height

# Data Frames
z <- data.frame(var1 = 1:9, var2 = letters[1:9])
z
View(z)

# Read CSV File
data <- read.csv("d:\\sample.csv", header = TRUE, sep = ",")
data
nrow(data)
ncol(data)
head(data)

# Functions
hw.f1 <- function() {
  hw <- "Hello World"
  hw
}
hw.f1()

# Install and Load Packages
install.packages("Matrix", dependencies = TRUE)
d <- library(Matrix)
d

# Missing Values
x <- c(1, 2, NA, 4)
x
x <- c("a", "b", NA, "c")
x
is.na(x)
na.omit(x)

# Using MASS Package
library(MASS)
data(survey)
data()
mydata <- survey
names(mydata)
str(mydata)

# Range and Data Manipulation
x <- c(1, 2, 3, 4, 5)
range(x)

dat <- data.frame(x = c(1, 2, 3, 4, 5), y = c(1, 1, 0, 1, 1))
dat
dat$z <- dat$x + dat$y
dat
dat$z <- dat$x + 10

# Remove Variable
rm(x)
