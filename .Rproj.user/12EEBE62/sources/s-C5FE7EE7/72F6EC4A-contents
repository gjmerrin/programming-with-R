deal <- function(deck){
  deck[1, ]
}

shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random, ]
}
deal(deck)
# returns the corresponding environment
as.environment("package:stats")
# thee environments in your tree
globalenv()
baseenv()
emptyenv()
# look up parent envirnment
parent.env(globalenv())
# view objects saved in an envrionment with ls or ls.str
ls(globalenv())
ls.str(globalenv())
# access an object in a specific environment
head(globalenv()$deck, 3)
# save an object into a particular environment
assign("new", "Hello Global", envir = globalenv())
globalenv()$new
# see the current active environment
environment()
# R runtime environemnts
show_env <- function(){
  list(ran.in = environment(),
       parent = parent.env(environment()),
       objects = ls.str(environment()))
}
show_env()
# look up a function's origin environment
environment(show_env)
environment(parent.env)

# exersise
deal <- function() {
  deck[1, ]
}

environment(deal)
deal()
DECK <- deck
deck <- deck[-1, ] 
head(deck, 3)

deal <- function() {
  card <- deck[1, ]
  deck <- deck[-1, ]
  card
}
deal()

deal <- function() {
  card <- deck[1, ]
  assign("deck", deck[-1, ], envir = globalenv())
  card
}
deal()
deal()
deal()

shuffle <- function(cards) {
  random <- sample(1:52, size = 52)
  cards[random, ]
}
shuffle(deck2)

a <- shuffle(deck2)
head(deck2, 3)
head(a, 3)

shuffle <- function(){
  random <- sample(1:52, size = 52)
  assign("deck", DECK[random, ], envir = globalenv())
}

shuffle()
deal()
deal()

setup <- function(deck) {
  DECK <- deck
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
}

setup <- function(deck) {
  DECK <- deck
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = globalenv())
    card
  }
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = globalenv())
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}

cards <- setup(deck)
deal <- cards$deal
shuffle <- cards$shuffle
deal
shuffle
environment(deal)
environment(shuffle)

setup <- function(deck) {
  DECK <- deck
  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = parent.env(environment()))
    card
  }
  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", DECK[random, ], envir = parent.env(environment()))
  }
  list(deal = DEAL, shuffle = SHUFFLE)
}

cards <- setup(deck)
deal <- cards$deal
shuffle <- cards$shuffle
rm(deck)
shuffle()
deal()
deal()















