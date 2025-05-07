sdata <- data.frame(
  sname = c("Raja", "somu", "Roja"),
  srollno = c(101, 103, 102),
  sage = c(19, 20, 18),
  ssex = c("male", "male", "female"),
  sbranch = c("CSE", "MECH", "EEE"),
  m1 = c(90, 79, 88), m2 = c(95, 85, 90),
  m3 = c(85, 25, 85), m4 = c(70, 40, 60),
  m5 = c(67, 67, 89)
)

# View structure
head(sdata); nrow(sdata); ncol(sdata)

# Compute Total and Percentage
marks <- sdata[, paste0("m", 1:5)]
Total <- rowSums(marks)
ptge <- Total / 5

# Determine Pass/Fail
result <- ifelse(apply(marks > 50, 1, all), "Pass", "Fail")

# Combine all into final data
tdata <- cbind(sdata, Total, ptge, result)
head(tdata)