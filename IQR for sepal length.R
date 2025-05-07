# Display the first 150 rows of the iris dataset
head(iris, 150)

# Loading the sepal length of Iris data 
xdata <- iris$Sepal.Length

# Compute Minimum, First Quartile, Median, Third Quartile, and Maximum Quartiles  
MinQ <- quantile(xdata, 0)
FQ <- quantile(xdata, 0.25)
SQ <- quantile(xdata, 0.5)
TQ <- quantile(xdata, 0.75)
MaxQ <- quantile(xdata, 1)

# Print the Quartiles One by One 
cat("Minimum =", MinQ, "\n")
cat("Lower Quartile =", FQ, "\n")
cat("Median =", SQ, "\n")
cat("Upper Quartile =", TQ, "\n")
cat("Maximum =", MaxQ, "\n")

# Compute All the Quartiles (Min, First, Second or Median, Third, and Max Quartiles) 
AQ <- quantile(xdata, prob = c(0, 0.25, 0.5, 0.75, 1))
cat("All the Quartiles:", AQ, "\n")

# Summary provides the Statistics Information of xdata  
summary(xdata)

# Draw a box plot for xdata
boxplot(xdata, main = "Interquartile Range for Sepal Length", ylab = "Centimetres")

# IQR is computed as the difference between the upper and lower quartiles of your data 
IQR_value <- as.numeric(quantile(xdata, 0.75) - quantile(xdata, 0.25))
cat("IQR (computed manually) =", IQR_value, "\n")

# Use IQR function to calculate Interquartile Range
cat("IQR (using IQR function) =", IQR(xdata), "\n")
