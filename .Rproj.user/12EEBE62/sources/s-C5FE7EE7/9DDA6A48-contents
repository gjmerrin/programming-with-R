# chapter 2
# load package "ggplot2"
library("ggplot2")
# c stands for "concatenate" but think of it as "collect" or "combine"
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
y <- x^3
y
# qplot returns a scatterplot when given two vectors
ggplot2::qplot(x = x, y = y)
x <- c(1, 2, 2, 2, 3, 3)
# qplot returns a histogram when given one vector
ggplot2::qplot(x = x, binwidth = 1)
x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
ggplot2::qplot(x = x2, binwidth = 1)
x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
ggplot2::qplot(x = x3, binwidth = 1)
#replicate function repeats R commands and stores the results in a vector
replicate(n = 3, 1+1)
replicate(n = 10, roll())
rolls <- replicate(n = 10000, roll())
ggplot2::qplot(x = rolls, binwidth = 1)
# access the help page using ? before the function
?sample
roll_weighted <- function() {
  die  <- 1:6
  dice <- sample(
    x = die
    ,size = 2
    ,replace = TRUE
    ,prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}

rolls <- replicate(n = 10000, roll_weighted())
ggplot2::qplot(x = rolls, binwidth = 1)



