# Analysis of the Negative Relationship Between Weight of Cars and Mileage Using Correlation coefficients
# Load the mtcars dataset (built-in in R)
data(mtcars)

# Display the dataset (first 32 rows)
head(mtcars,3)
# Finding Covariance between Car Weight (wt) and Mileage (mpg)
co <- cov(mtcars$wt, mtcars$mpg)
cat("Covariance:",co)
# Finding the Pearson Correlation Coefficient
cc <- cor(mtcars$wt, mtcars$mpg)
cat("Pearson's Correlation Coefficient:",cc)
# Finding the Spearman Correlation Coefficient
ccs <- cor(mtcars$wt, mtcars$mpg, method = "spearman")
cat("Spearman's Correlation Coefficient:",ccs)
# Scatter Plot
library(ggplot2)
scatter.smooth(mtcars$wt, mtcars$mpg, 
               main = "Scatter Plot: Car Weight vs. Mileage", 
               xlab = "Car Weight (wt)", 
               ylab = "Mileage (mpg)")
# Determine Relationship Type
if (cc > 0) {   
  print("The relationship between Car Weight and Mileage is Positive")  
} else {  
  print("The relationship between Car Weight and Mileage is Negative")  
}