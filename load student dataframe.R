sdata <- read.table(file.choose(), sep = " ", header = TRUE)
head(sdata); nrow(sdata); ncol(sdata)

# Calculate Total and Percentage
marks <- sdata[, paste0("m", 1:5)]
Total <- rowSums(marks)
ptge <- Total / 5

# Determine Pass/Fail (vectorized)
result <- ifelse(apply(marks > 50, 1, all), "Pass", "Fail")

# Add results to the original data
sdata <- cbind(sdata, result, Total, ptge)
sdata
