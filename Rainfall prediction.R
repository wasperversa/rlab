# Load necessary library
library(ggplot2)
# Check precip data
head(precip)
is.vector(precip)
mean(precip)
# Function to compute t-statistic
t.statistic <- function(thesample, thepopulation) {
  numerator <- mean(thesample) - thepopulation
  denominator <- sd(thesample) / sqrt(length(thesample))
  t.stat <- numerator / denominator
  return(t.stat)
}
# Initialize vector for t-statistics
t.stats <- numeric(10000)
# Create histogram of t-statistics
tmpdata <- data.frame(vals = t.stats)
# Perform t-tests on actual precip data
t.test(precip, mu = 38)  # Perform one-sample t-test
qt(.025, df=69)
t.test(precip, mu = 38, alternative = "less")  # One-tailed t-test (left-tailed)
t.statistic(precip, population.precipitation)