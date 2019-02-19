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
random <- sample(1:52, size = 52)
random
deck4 <- deck[random, ]
head(deck4)
# Exercise
# card <- deck - # for testing and development
shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random, ]
}
deal(deck)
deck2 <- shuffle(deck)
deal(deck2)
# doallar signs and double brackets
deck$value
mean(deck$value)
median(deck$value)
lst <- list(numbers = c(1, 2), logical = TRUE, strings = c("a", "b", "c"))
lst
# reutns a smaller list
lst[1]
# returns selected values as they are, with no list structure
lst$numbers
sum(lst$numbers)
# double brackets for position if name is not specifed returns values
lst[[1]]
# single brackets keeps the list structure
lst[1]
lst["numbers"]
lst[["numbers"]]
# Figure 4-3. It can be helpful to think of your list as a train. Use single brackets to select
# train cars, double brackets to select the contents inside of a car.

# dont use attach() - it attaches the dataset so you can call variables without spelling it out like deck$value

















