rm(list=ls(all=TRUE)) #Clear the memory of variables from previous run. 
cat("\f") # clear console when working in RStudio
library(readr)
deck <- read_csv("data/deck.csv")
View(deck)
deck2 <- deck
vec <- c(0, 0, 0, 0, 0, 0)
# select first value of the vector named vec
vec
vec[1]
# change the value of the first value in vec from 0 to 1000
vec[1] <- 1000
vec
# change multiple values at once
vec[c(1, 3, 5)] <- c(1, 1, 1)
vec
vec[4:6] <- vec[4:6] + 1
vec
# you can expand the objct to accommodate new values
# there are six values of vec, we will add a seventh
vec[7] <- 0
vec
# add new variables to a data set
# add a new column with 1 to 52
deck2$new <- 1:52
head(deck2)
# remove coloumns from a data frame using NULL
deck2$new <- NULL
head(deck2)
View(deck2)
deck2[c(13, 26, 39, 52), ]
deck2[c(13, 26, 39, 52), 3]
deck2$value[c(13, 26, 39, 52)]
deck2$value[c(13, 26, 39, 52)] <- c(14, 14, 14, 14)
deck2$value[c(13, 26, 39, 52)] <-  14
View(deck2)
shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random, ]
}
deck3 <- shuffle(deck)
head(deck3)
1 > 2
1 > c(0, 1, 2)
c(1, 2, 3) == c(3, 2, 1)
# %in% tests whether the value(s) on the left side are in the vector on the right side
# %in% = "in the group"
1 %in% c(3, 4, 5)
c(1, 2) %in% c(3, 4, 5)
c(1, 2, 3) %in% c(3, 4, 5)
c(1, 2, 3, 4) %in% c(3, 4, 5)
# Exercise
# extract face column using $
deck2$face
# test whether each value is equal to "ace"
deck2$face == "ace"
# sum to count the number of TRUEs in the previous vector
sum(deck2$face == "ace")
# returns a logical vector
deck3$face == "ace"
deck3$value[deck3$face == "ace"]
# change value of ace from 1 to 14
# Logical subsetting is a powerful technique because it lets you quickly identify, extract,
# and modify individual values in your data set
deck3$value[deck3$face == "ace"] <- 14
head(deck3)
View(deck3)
deck4 <- deck
# makes all values in the value coloumn in deck 4 equal to 0
deck4$value <- 0
head(deck4, 13)
# test that identifies cards in the hearts suit
deck4$suit == "hearts"
# test to select the values of these cards
deck4$value[deck4$suit =="hearts"]
# assign a new number to these values
deck4$value[deck4$suit == "hearts"] <- 1
deck4$value[deck4$suit == "hearts"]
deck4[deck4$face == "queen", ]
deck4[deck4$suit == "spades", ]
# will use Boolean Operators to find queen of spades 
# "and" (&), "or" (|), is exactly one (xor), false (!), are any true (any), are all true (all)
# “Is x greater than two and is x less than nine?” x > 2 & x < 9
a <- c(1, 2, 3)
b <- c(1, 2, 3)
c <- c(1, 2, 4)
a == b
b == c
a == b & b == c
# how to find queen of spades
deck4$face == "queen" & deck4$suit == "spades"
queenofspades <-  deck4$face == "queen" & deck4$suit == "spades"
deck4[queenofspades, ]
deck4$value[queenofspades]
# now we can update the queen of spades value from 0 to 13
deck4$value[queenofspades] <- 13
deck4[queenofspades, ]
# Exercise
w <- c(-1, 0, 1)
x <- c(5, 15)
y <- "February"
z <- c("Monday", "Tuesday", "Friday")
w > 0
x > 10 & x < 20
y == "February"
all(z %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"))
# Blackjack
deck5 <- deck
head(deck5, 13)
facecard <- deck5$face %in% c("king", "queen", "jack")
deck5[facecard, ]
deck5$value[facecard] <- 10
head(deck5, 13)
# missing information
1 + NA
NA == 1
c(NA, 1:50)
mean(c(NA, 1:50))
mean(c(NA, 1:50), na.rm = TRUE)
is.na(NA)
vec <- c(1, 2, 3, NA)
is.na(vec)
deck5$value[deck5$face == "ace"] <- NA
head(deck5, 13)





















