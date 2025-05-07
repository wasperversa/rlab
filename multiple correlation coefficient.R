install.packages("corrgram")
library(ggplot2)
# Remove species column to analyze numerical data only
iris.nospecies <- iris[, -5]
# Construct the Covariance Matrix
coi <- cov(iris.nospecies)
cat("Covariance Matrix:")
coi
# Compute Multiple Pearson's Correlation Coefficients
cci <- cor(iris.nospecies)
cat("Multiple Pearson's Correlation Coefficients:")
cci
# Compute Multiple Spearman Correlation Coefficients
ccs <- cor(iris.nospecies, method = "spearman")
cat("Multiple Spearman's Correlation Coefficients:")
ccs
#Analysis of Iris Data Using Box Plot  
qplot(Species, Petal.Length, data=iris, geom="boxplot", fill=Species)
#Analysis of Iris Data Using Normal Density  
qplot (Petal.Length, data=iris, geom="density", alpha=I(.7),fill=Species)
# Checking relationships based on correlation matrix
if (cci[4, 1] > 0) {  
  print("Relationship between Petal Width and Sepal Length is Positive")  
} else {  
  print("Relationship between Petal Width and Sepal Length is Negative")  
}

if (cci[2, 1] > 0) {  
  print("Relationship between Sepal Width and Sepal Length is Positive")  
} else {  
  print("Relationship between Sepal Width and Sepal Length is Negative")  
}
library(corrgram)
# Correlation Matrix Visualization
corrgram(iris, lower.panel = panel.conf, upper.panel = panel.pts)

# Overlapping Density Plot for Three Species
corrgram(iris, lower.panel = panel.pie, upper.panel = panel.pts,  
         diag.panel = panel.density, 
         main = "Corrgram of Petal and Sepal Measurements in Iris Dataset")