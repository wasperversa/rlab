# Load dataset
head(mtcars,n = 3)
# Simple Linear Regression
model1 <- lm(mpg ~ wt, data = mtcars)
plot(mtcars$wt, mtcars$mpg, main = "Mileage vs. Weight")
abline(model1, col = "red")

summary(model1)
# Prediction for weight = 6
pred_mpg <- predict(model1, newdata = data.frame(wt = 6))
cat("Predicted MPG:", pred_mpg, "\n")
# Model Coefficients
cat("Intercept:", coef(model1)[1], "\n")
cat("Slope:", coef(model1)[2], "\n")