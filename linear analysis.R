# Analysis of the Positive Relationship between Height and Weight of Women Using Correlation Coefficients
# Load the Women's dataset (built-in in R)
data(women)

# Display the first 15 rows
head(women)
library(ggplot2)
scatter.smooth(women$height, women$weight, 
               main = "Scatter Plot", 
               xlab = "Height", 
               ylab = "Weight")
# Another way to get the full covariance matrix
cm2 <- cov(women)  
print("Full Covariance Matrix:")
print(cm2)
cm2[1,2]
# Compute the correlation matrix directly
cc2 <- cor(women)
print("Pearson's Correlation Matrix:")
print(cc2)
# Compute Spearman's rank correlation
cc3 <- cor(women, method = "spearman")
print("Spearman's Correlation Coefficients:")
print(cc3)
# Determine Relationship Type
if (cc2[1,2] > 0) {
  print("The relationship between Women's Height and Weight is Positive")
} else {
  print("The relationship between Women's Height and Weight is Negative")
}