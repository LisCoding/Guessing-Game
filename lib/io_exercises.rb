# I/O Exercises
#
# * Write a `guessing_game` method. The computer should choose a number between
#   1 and 100. Prompt the user to `guess a number`. Each time through a play loop,
#   get a guess from the user. Print the number guessed and whether it was `too
#   high` or `too low`. Track the number of guesses the player takes. When the
#   player guesses the number, print out what the number was and how many guesses
#   the player needed.
# * Write a program that prompts the user for a file name, reads that file,
#   shuffles the lines, and saves it to the file "{input_name}-shuffled.txt". You
#   could create a random number using the Random class, or you could use the
#   `shuffle` method in array.
def guessing_game
  puts "Guess a number between 1 and 100!"
  secret_number = rand(1..100)
  guesses = 0
  while true
    guess = gets.to_i
    guesses += 1
    if guess < secret_number
      puts "#{guess} is too low! Try again"
    elsif guess == secret_number
      puts "You found the number. The secret number was #{guess}!"
    break
    elsif guess > secret_number
      puts "#{guess} is too high! Try again"
    end
  end

  puts "It took you #{guesses} guesses"
end
