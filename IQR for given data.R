xdata <- c(5, 10, 12, 15, 20, 25, 27, 30, 35)

# Compute Minimum, First Quartile, Median, Third Quartile, and Maximum Quartiles
MinQ <- quantile(xdata, 0)
FQ <- quantile(xdata, 0.25)
SQ <- quantile(xdata, 0.5)
TQ <- quantile(xdata, 0.75)
MaxQ <- quantile(xdata, 1)

# Print each Quartile
cat("Minimum =", MinQ, "\n")
cat("Lower Quartile =", FQ, "\n")
cat("Median =", SQ, "\n")
cat("Upper Quartile =", TQ, "\n")
cat("Maximum =", MaxQ, "\n")

# Compute All the Quartiles (Min, First, Second or Median, Third, and Max)
AQ <- quantile(xdata, prob = c(0, 0.25, 0.5, 0.75, 1))

# Print All the Quartiles
cat("All the Quartiles:", AQ, "\n")

# Summary statistics of xdata
summary(xdata)

# Draw a box plot for xdata
boxplot(xdata, main = "Interquartile Range (IQR)", ylab = "xdata")

# IQR computation: Difference between the upper and lower quartiles
IQR_value <- as.numeric(quantile(xdata, 0.75) - quantile(xdata, 0.25))
cat("IQR (computed manually) =", IQR_value, "\n")

# Use IQR function to calculate Interquartile Range
cat("IQR (using IQR function) =", IQR(xdata), "\n")
