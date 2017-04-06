# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("red", "orange", "yellow", "green", "blue", "purple")

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  grabbed <- sample(marbles, 1)
  if (grepl(guess, grabbed)) {
    return (paste("You guessed correctly! Good job!", sep=" "))
  } else {
    return (paste("Sorry, wrong guess. Try again!", sep=" "))
  }
}

# Play the marble game!
MarbleGame("red")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
MarbleGameBonus <- function(guess, x) {
  grabbed <- sample(marbles, 1)
  while (grepl(guess, grabbed) != TRUE) {
    MarbleGameBonus(guess, x+1)
    return (paste(grabbed,"Sorry, wrong guess. Try again!", sep=" "))
  }
  if (grepl(guess, grabbed)) {
    return (paste(grabbed,"You guessed correctly! Good job!",x, "guesses", sep=" "))
  } 
}

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability