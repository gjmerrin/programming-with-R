
1:6
die <- 1:6
die
ls() # function to see what objects are in your environment
die * die
round(3.14)
factorial(3)
mean(die)
round(mean(die))
sample(x = die, size = 1)
sample(x = die, size = 1)
sample(size = 1, x = die) # specifiy arguments out of order by explicitly writing the argument 
args(sample) # function to look up arguments of a function
round(3.145, digits = 2)
sample(x = die, size = 2) # sample WITHOUT replacement
sample(x = die, size = 2, replace = TRUE) # sample WITH replacement
dice <- sample(x = die, size = 2, replace = TRUE)
dice
sum(dice)
# make sure your final line of code in your function RETURNS a value
roll <- function(){
  die  <- 1:6
  dice <- sample(x = die, size = 2, replace = TRUE)
  sum(dice)
}
roll()
# bones is now an argument in the function roll2 and needs to be provided 
roll2 <- function(bones) {
  dice <- sample(x = bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2(1:4)
roll2(1:6)
roll2(1:20)
# give bones argument at default value 
roll2 <- function(bones = 1:6) {
  dice <- sample(x = bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2()


