# pick a random price
price = rand(1..100)

# initialize the guess variable
guess = nil
# initialize the counter variable
counter = 0

# ask the player for quess
puts "Give me a number between 1-100"

while guess != price
  guess = gets.chomp.to_i

  # increment the counter
  counter += 1
  # compare guess to price
  if guess == price
    # if correct, congratulate
    # and inform about number of guesses
    puts "your guess is right! You guessed #{counter} times"
  # if guess wrong, give a hint and ask for another guess
  elsif guess > price
    puts "you're wrong, the price is lower"
  else
    puts "you're wrong, the price is higher"
  end
end
