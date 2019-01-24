library(readr)
deck <- read_csv("data/deck.csv")
View(deck)
# selecting values
deck[1, 1]
deck[1, c(1, 2, 3)]
deck[1, 1:3]
new <- deck[1, c(1, 2, 3)]
new
# select values from vectors as well
vec <- c(6, 1, 3, 6, 10, 5)
vec[1:3]
# returns a data frame
deck[1:2, 1:2]      
# returns a vector
deck[1:2, 1]
# returns a data frame
deck[1:2, 1, drop = FALSE]
# negatives returns all elements except the ements in a negative index
deck[-1, 1:3]
deck[-(2:52), 1:3]
deck[-1, 1]
# blank spaces return every value in a dimension
deck[1, ]
# logical values - will return each row that corresponds to a TRUE
deck[1, c(TRUE, TRUE, FALSE)]
rows <- c(TRUE, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F,
          F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F,
          F, F, F, F, F, F, F, F, F, F, F, F, F, F)
deck[rows, ]
# tell R exactly which values to extract
vec[c(F, T, F, T, F, T)]
# extract using names
deck[1, c("face", "suit", "value")]
deck[ , "value"]
# Exercise - function to deal - returns first row
deal <- function(deck){
  deck[1, ]
}
deal(deck)
# shuffle cards to get a different row 1 each time
deck2 <- deck[1:52, ]
head(deck2)
deck3 <- deck[c(2, 1, 3:52), ]
head(deck3)


































