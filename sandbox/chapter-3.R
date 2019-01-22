# atomic vectors - simple vectors
die <- c(1, 2, 3, 4, 5, 6)
die
is.vector(die)
# atomic vector of 1 length
five <- 5
five
is.vector(five)
length(five)
length(die)
# there are six basic types of atomic vectors
# doubles, integers, characters, logicals, complex, and raw
# Capital "L" creates an integer and "quotes" creates charector vectors
int <- 1L
text <- "ace"
int <- c(1L, 5L)
text <- c("ace", "hearts")
sum(int)
sum(text)
# 1 # Doubles - double vector stores regular numbers - AKA “numerics”
die <- c(1, 2, 3, 4, 5, 6)
typeof(die)
# 2 # Integers - numbers that can be written without a decimal component
int <- c(-1L, 2L, 4L)
typeof(int)
# 3 # Characters - stores small pieces of text
text <- c("Hello", "World")
text
typeof(text)
typeof("Hello")
# 4 # Logicals - Logical vectors store TRUEs and FALSEs, R’s form of Boolean data. Logicals are very
    # helpful for doing things like comparisons
3 > 4 # = FALSE
logic <- c(TRUE, FALSE, TRUE)
typeof(logic)
typeof(F)
# 5 # Complex - store complex numbers. 
    # To create a complex vector, add an imaginary term to a number with i:
comp <- c(1 + 1i, 1 + 2i, 1 + 3i)
comp
typeof(comp)
# 6 # Raw - store raw bytes of data
raw(3)
typeof(raw(3))
# Exercise
hand <- c("ace", "king", "queen", "jack", "ten")
hand
typeof(hand)
# Attributes - like "metadata" attached to vectors and objects
# most common attributes to give an atomic vector are 
# names, dimensions (dim), and classes
attributes(die) # = NULL because no attributes are assinged
names(die)
names(die) <- c("one", "two", "three", "four", "five", "six")
names(die)
attributes(die)
die
die + 1 # names wont affect the acutal values
names(die) <- c("uno", "dos", "tres", "quatro", "cinco", "seis") # can change names
die
names(die) <-  NULL # remove names
die
# Dim - transform an atomic vector into an n-dimensional array e.g. 2X3
dim(die) <- c(2, 3)
die
# or 3X2
dim(die) <- c(3, 2)
die 
# or a 1 × 2 × 3 hypercube
dim(die) <- c(1, 2, 3)
die
# see matrix or array functions that perform like dim but with more options
# Matrices - store values in a two-dimensional array
m <- matrix(die, nrow = 2)
m
m <- matrix(die, nrow = 2, byrow = TRUE)
m
# More info
?matrix
# Arrays - creates an n-dimensional array
# provide an atomic vector as the first argument, and a vector
# of dimensions as the second argument
ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
ar
# Exercise "
hand1 <- c("ace",    "king",   "queen",  "jack",   "ten", 
           "spades", "spades", "spades", "spades", "spades")
hand1
# 3 ways to do the samething
matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <- c(5, 2)
hand1  
hand2 <- c("ace",    "spades", "king",   "spades", "queen",
           "spades", "jack",   "spades", "ten",    "spades")
matrix(hand2, nrow = 5, byrow = TRUE)
matrix(hand2, ncol = 2, byrow = TRUE)
# Class - changing the dimensions of your object will change the object’s class attribute
dim(die) <- c(2, 3)
typeof(die)
class(die)
attributes(die)
class("Hello")
class(5)
# Dates and Times
now <- Sys.time()
now
typeof(now)
class(now)
unclass(now)
mil <- 1000000
mil
class(mil) <- c("POSIXct", "POSIXt")
mil
# Factors - is a class and R’s way of storing categorical information
gender <- factor(c("male", "female", "female", "male"))
typeof(gender) # stores it as an interger
attributes(gender) # class is a factor
unclass(gender) # how R stores the information
gender
as.character(gender)
# Exercise
card <- c("ace", "hearts", 1) # R coerces all of your values to character strings
card
# Coercion - R always uses the same rules to coerce data to a single type. If character
#strings are present, everything will be coerced to a character string. Otherwise, logicals
#are coerced to numerics.
sum(c(TRUE, TRUE, FALSE, FALSE))
sum(c(1, 1, 0, 0))
as.character(1)
as.logical(1)
as.numeric(FALSE)
# Lists - lists group together R objects, such as atomic vectors and other lists
list1 <- list(100:130, "R", list(TRUE, FALSE))
list1
# Exercise
card <- list("ace", "hearts", 1)
card
# Dataframes - group vectors together into a two-dimensional table. Each vector becomes a column in the table.
df <- data.frame(face   = c("ace", "two", "six")
                 ,suit  = c("clubs", "clubs", "clubs")
                 ,value = c(1, 2, 3)
                 )

df
# NOTE: You can also give names to a list or vector when you create one of these objects.
ls1 <- list(face = "ace", suit = "hearts", value = 1)
c1 <- c(face = "ace", suit = "hearts", value = "one")
attributes(ls1)
attributes(c1)
typeof(df)
class(df)
str(df) # notice R saved character vectors as factors can prevent - see below
df <- data.frame(face   = c("ace", "two", "six")
                 ,suit  = c("clubs", "clubs", "clubs")
                 ,value = c(1, 2, 3)
                 ,stringsAsFactors = FALSE
                 )
str(df) # now "face" and "suit" are saved as character vectors
# Loading Data 
# Importing a data set with readr
library(readr)
deck <- read_csv("data/deck.csv")
View(deck)
# Can also use the import wizard 
head(deck)
head(deck, 10)
# Saving Data
write.csv(deck, file = "./data/derived-data/cards.csv", row.names = FALSE)
getwd() # to veiw working directory
?write.csv











