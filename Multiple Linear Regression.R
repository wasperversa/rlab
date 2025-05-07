model2 <- lm(mpg ~ wt + hp, data = mtcars)
summary(model2)
# Predictions for (wt = 2.5, hp = 275)
predict(model2, newdata = data.frame(wt = 2.5, hp = 275))